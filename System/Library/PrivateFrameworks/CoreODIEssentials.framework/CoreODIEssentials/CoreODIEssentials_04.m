uint64_t sub_1DAF765AC()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF766A8, 0, 0);
}

uint64_t sub_1DAF766A8()
{
  v1 = v0[31];
  v0[10] = type metadata accessor for ODIDeviceInfo();
  v0[11] = &off_1F56C79C0;
  v0[7] = v1;
  if (qword_1EE300EF0 != -1)
  {
    swift_once();
  }

  v3 = v0[28];
  v2 = v0[29];
  v4 = qword_1EE300EF8;
  v0[33] = qword_1EE300EF8;
  v5 = (v2 + *(v3 + 24));
  v6 = type metadata accessor for ODIiCloudAccountManager();
  v0[34] = v6;
  v5[3] = v6;
  v5[4] = &protocol witness table for ODIiCloudAccountManager;
  *v5 = v4;

  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1DAF767EC;
  v8 = v0[29];

  return sub_1DAF7885C(v8, 0, 0xD00000000000001ELL, 0x80000001DB0C3430);
}

uint64_t sub_1DAF767EC()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF768E8, 0, 0);
}

uint64_t sub_1DAF768E8()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  sub_1DAF332B8((v0 + 16), v1 + v2[5]);
  sub_1DAF332B8((v0 + 56), v1 + v2[7]);
  v5 = (v1 + v2[8]);
  *v5 = v4;
  v5[1] = v3;

  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  *v6 = v0;
  v6[1] = sub_1DAF769CC;
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);

  return sub_1DB0231C0(v8, v9, v10);
}

uint64_t sub_1DAF769CC()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1DAF76DA8;
  }

  else
  {
    v3 = sub_1DAF76AE0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF76AE0()
{
  v1 = v0[33];
  v0[15] = v0[34];
  v0[16] = &off_1F56C4CF8;
  v0[12] = v1;

  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_1DAF76BA8;
  v3 = v0[30];
  v4 = v0[27];

  return sub_1DAF76EF4(v4, 1, (v0 + 12));
}

uint64_t sub_1DAF76BA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = (*v3)[38];
  v8 = *v3;
  (*v3)[39] = v2;

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 12);
    v9 = sub_1DAF76E28;
  }

  else
  {
    v6[40] = a2;
    v6[41] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 12);
    v9 = sub_1DAF76CEC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DAF76CEC()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  swift_setDeallocating();

  (*(v4 + 8))(v3, v5);
  sub_1DAF78324(v1);

  v6 = v0[1];
  v8 = v0[40];
  v7 = v0[41];

  return v6(v7, v8);
}

uint64_t sub_1DAF76DA8()
{
  v2 = v0[29];
  v1 = v0[30];

  sub_1DAF78324(v2);
  v3 = v0[37];
  v4 = v0[29];
  v5 = v0[27];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAF76E28()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];

  (*(v4 + 8))(v3, v5);
  sub_1DAF78324(v2);
  v6 = v0[39];
  v7 = v0[29];
  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DAF76EF4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 176) = a2;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = sub_1DB09CBF4();
  *(v4 + 48) = v6;
  v7 = *(v6 - 8);
  *(v4 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF7700C, 0, 0);
}

uint64_t sub_1DAF7700C()
{
  v60 = v0;
  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1DB09D4B4();
  v0[11] = __swift_project_value_buffer(v5, qword_1EE30A128);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1DB09D494();
  v8 = sub_1DB09DB54();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v57 = v6;
  if (v9)
  {
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59 = v56;
    *v12 = 136315138;
    sub_1DB09CBC4();
    v13 = sub_1DB09CF64();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_1DAF783EC(v0[5]);
      v15 = 0xE300000000000000;
      v16 = 7104878;
    }

    else
    {
      v19 = v0[5];
      v16 = sub_1DB09CEA4();
      v15 = v20;
      (*(v14 + 8))(v19, v13);
    }

    v58 = *(v0[7] + 8);
    v58(v0[10], v0[6]);
    v21 = sub_1DB015E84(v16, v15, &v59);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1DAF16000, v7, v8, "Requesting ravioli: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x1E1281810](v56, -1, -1);
    MEMORY[0x1E1281810](v12, -1, -1);

    v6 = v57;
  }

  else
  {
    v18 = v0[6];
    v17 = v0[7];

    v58 = *(v17 + 8);
    v58(v10, v18);
  }

  v6(v0[9], v0[2], v0[6]);
  v22 = sub_1DB09D494();
  v23 = sub_1DB09DB54();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[9];
  v27 = v0[6];
  v26 = v0[7];
  if (v24)
  {
    v28 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59 = v55;
    *v28 = 136315138;
    v29 = sub_1DB09CB74();
    v31 = v30;
    v32 = v25;
    v33 = v58;
    v58(v32, v27);
    v34 = sub_1DB015E84(v29, v31, &v59);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_1DAF16000, v22, v23, "Request: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x1E1281810](v55, -1, -1);
    v35 = v28;
    v6 = v57;
    MEMORY[0x1E1281810](v35, -1, -1);
  }

  else
  {

    v36 = v25;
    v33 = v58;
    v58(v36, v27);
  }

  v6(v0[8], v0[2], v0[6]);
  v37 = sub_1DB09D494();
  v38 = sub_1DB09DB54();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[8];
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59 = v42;
    *v41 = 136315138;
    if (sub_1DB09CB94())
    {
      v43 = sub_1DB09D644();
      v45 = v44;
      v33 = v58;
    }

    else
    {
      v45 = 0xEA00000000007372;
      v43 = 0x6564616568206F4ELL;
    }

    v48 = v0[7] + 8;
    v33(v0[8], v0[6]);
    v49 = sub_1DB015E84(v43, v45, &v59);

    *(v41 + 4) = v49;
    _os_log_impl(&dword_1DAF16000, v37, v38, "Request: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1E1281810](v42, -1, -1);
    MEMORY[0x1E1281810](v41, -1, -1);
  }

  else
  {
    v46 = v0[6];
    v47 = v0[7];

    v33(v40, v46);
  }

  v50 = *(v0[4] + 16);
  v51 = *(MEMORY[0x1E6969EC0] + 4);
  v52 = swift_task_alloc();
  v0[12] = v52;
  *v52 = v0;
  v52[1] = sub_1DAF775C0;
  v53 = v0[2];

  return MEMORY[0x1EEDC6260](v53, 0);
}

uint64_t sub_1DAF775C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 96);
  v6 = *v4;
  v6[13] = a1;
  v6[14] = a2;
  v6[15] = a3;

  if (v3)
  {
    v8 = v6[9];
    v7 = v6[10];
    v9 = v6[8];
    v10 = v6[5];

    v11 = v6[1];

    return v11();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF7772C, 0, 0);
  }
}

uint64_t sub_1DAF7772C()
{
  v74 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 120);
  v3 = sub_1DB09D494();
  v4 = sub_1DB09DB54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v72 = v7;
    *v6 = 136315138;
    v8 = [v5 debugDescription];
    v9 = sub_1DB09D6C4();
    v11 = v10;

    v12 = sub_1DB015E84(v9, v11, &v72);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1DAF16000, v3, v4, "Response: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E1281810](v7, -1, -1);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  v13 = *(v0 + 120);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  v15 = *(v0 + 120);
  if (!v14)
  {
    sub_1DAF78398();
    swift_allocError();
    *v29 = 5;
    *(v29 + 8) = 256;
    swift_willThrow();
    goto LABEL_12;
  }

  v16 = v14;
  v17 = v15;
  sub_1DAF8C94C([v16 statusCode], &v72);
  v18 = v72;
  v19 = v73;
  if (v73 != 1)
  {
    goto LABEL_7;
  }

  if (v72 > 0x10)
  {
    goto LABEL_26;
  }

  if (((1 << v72) & 0x1F3DE) != 0)
  {
LABEL_7:
    v20 = *(v0 + 88);
    v21 = sub_1DB09D494();
    v22 = sub_1DB09DB64();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v71 = v24;
      v72 = v18;
      *v23 = 136315138;
      v73 = v19;
      v25 = HTTPStatusCode.description.getter();
      v27 = sub_1DB015E84(v25, v26, &v71);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1DAF16000, v21, v22, "FetchRavioli Failed - Response: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E1281810](v24, -1, -1);
      MEMORY[0x1E1281810](v23, -1, -1);
    }

    v15 = *(v0 + 120);
    sub_1DAF78398();
    swift_allocError();
    *v28 = v18;
    *(v28 + 8) = v19;
    *(v28 + 9) = 0;
LABEL_10:
    swift_willThrow();

LABEL_12:
    sub_1DAF40780(*(v0 + 104), *(v0 + 112));
    v31 = *(v0 + 72);
    v30 = *(v0 + 80);
    v32 = *(v0 + 64);
    v33 = *(v0 + 40);

    v34 = *(v0 + 8);

    return v34();
  }

  if (((1 << v72) & 0xC00) != 0)
  {
    v36 = *(v0 + 120);
    v37 = *(v0 + 88);

    v38 = v36;
    v39 = sub_1DB09D494();
    v40 = sub_1DB09DB74();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 120);
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = [v16 statusCode];

      _os_log_impl(&dword_1DAF16000, v39, v40, "Expected %ld to be handled by the AKAppleIDSession", v43, 0xCu);
      v44 = v43;
LABEL_28:
      MEMORY[0x1E1281810](v44, -1, -1);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v72 != 5)
  {
LABEL_26:
    v53 = *(v0 + 88);

    v39 = sub_1DB09D494();
    v54 = sub_1DB09DB54();
    v55 = os_log_type_enabled(v39, v54);
    v42 = *(v0 + 120);
    if (v55)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1DAF16000, v39, v54, "Requesting ravioli - data received", v56, 2u);
      v44 = v56;
      goto LABEL_28;
    }

LABEL_29:

    v57 = *(v0 + 104);
    v58 = *(v0 + 112);
    v60 = *(v0 + 72);
    v59 = *(v0 + 80);
    v61 = *(v0 + 64);
    v62 = *(v0 + 40);

    v63 = *(v0 + 8);

    return v63(v57, v58);
  }

  v45 = *(v0 + 88);
  v46 = *(v0 + 176);
  v47 = sub_1DB09D494();
  if (v46 != 1)
  {
    v64 = sub_1DB09DB64();
    if (os_log_type_enabled(v47, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 136315138;
      v71 = v66;
      v72 = 5;
      v73 = 1;
      v67 = HTTPStatusCode.description.getter();
      v69 = sub_1DB015E84(v67, v68, &v71);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_1DAF16000, v47, v64, "Authorisation error not retrying or have already retried: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x1E1281810](v66, -1, -1);
      MEMORY[0x1E1281810](v65, -1, -1);
    }

    v15 = *(v0 + 120);
    sub_1DAF78398();
    swift_allocError();
    *v70 = 5;
    *(v70 + 8) = 1;
    goto LABEL_10;
  }

  v48 = sub_1DB09DB54();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1DAF16000, v47, v48, "Requesting ravioli - Authorisation error will renew and retry only one retry will be attempted", v49, 2u);
    MEMORY[0x1E1281810](v49, -1, -1);
  }

  v50 = *(v0 + 24);

  v51 = *__swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v52 = swift_task_alloc();
  *(v0 + 128) = v52;
  *v52 = v0;
  v52[1] = sub_1DAF77E40;

  return sub_1DAF68558();
}

uint64_t sub_1DAF77E40()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF780EC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[18] = v4;
    *v4 = v3;
    v4[1] = sub_1DAF77FB8;
    v5 = v3[3];
    v6 = v3[4];
    v7 = v3[2];

    return sub_1DAF76EF4(v7, 0, v5);
  }
}

uint64_t sub_1DAF77FB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v9 = sub_1DAF78248;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v9 = sub_1DAF7818C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DAF780EC()
{
  v1 = v0[15];

  v2 = v0[17];
  sub_1DAF40780(v0[13], v0[14]);
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DAF7818C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  sub_1DAF40780(v3, v1);
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];

  return v10(v5, v4);
}

uint64_t sub_1DAF78248()
{
  v1 = v0[15];

  v2 = v0[19];
  sub_1DAF40780(v0[13], v0[14]);
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DAF782EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAF78324(uint64_t a1)
{
  v2 = type metadata accessor for RavioliRequestFactory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAF78398()
{
  result = qword_1ECC0E788;
  if (!qword_1ECC0E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E788);
  }

  return result;
}

uint64_t sub_1DAF783EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RavioliFetcherImpl.FetchError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RavioliFetcherImpl.FetchError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1DAF784B8(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF784D4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_1DAF7850C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*(a1 + 9) != 1)
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      v14 = v2;
      v15 = v3;
      v12 = v4;
      v13 = v5 & 1;
      v10 = v6;
      v11 = v7 & 1;
      return _s17CoreODIEssentials14HTTPStatusCodeO2eeoiySbAC_ACtFZ_0(&v12, &v10);
    }

    return 0;
  }

  v8 = *(a1 + 8);
  if (v4 > 2)
  {
    if (v4 ^ 3 | v8)
    {
      if (v4 ^ 4 | v8)
      {
        if (*(a2 + 9) && v6 > 4)
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(v6 ^ 4 | v7))
      {
        return 1;
      }
    }

    else if (*(a2 + 9) && !(v6 ^ 3 | v7))
    {
      return 1;
    }

    return 0;
  }

  if (!(v4 | v8))
  {
    return *(a2 + 9) && !(v6 | v7);
  }

  if (v4 ^ 1 | v8)
  {
    return *(a2 + 9) && !(v6 ^ 2 | v7);
  }

  return *(a2 + 9) && !(v6 ^ 1 | v7);
}

uint64_t Data.uuid.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_22;
      }

      v9 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_28;
      }

      v10 = sub_1DB09CD44();
      if (!v10)
      {
        goto LABEL_33;
      }

      v11 = v10;
      v12 = sub_1DB09CD74();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_30;
      }

      v13 = (v9 - v12 + v11);
      a1 = sub_1DB09CD64();
      if (v13)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_27;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_1DB09CD44();
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = v16;
    v18 = sub_1DB09CD74();
    if (!__OFSUB__(v15, v18))
    {
      v13 = (v15 - v18 + v17);
      sub_1DB09CD64();
      if (!v13)
      {
        goto LABEL_32;
      }

LABEL_21:
      v19 = v13[7];
      v20 = v13[6];
      v21 = v13[5];
      v22 = v13[4];
      v23 = v13[3];
      v24 = v13[2];
      v25 = v13[1];
      v26 = *v13;
      v30 = *(v13 + 1);
LABEL_22:
      sub_1DB09D1A4();
      v14 = 0;
      goto LABEL_23;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_1DB09CD64();
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_1DB09CD64();
    __break(1u);
    return result;
  }

  if (v4 != 2)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 1;
LABEL_23:
  v27 = sub_1DB09D1D4();
  v28 = *(*(v27 - 8) + 56);

  return v28(a3, v14, 1, v27);
}

uint64_t sub_1DAF7885C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 472) = a3;
  *(v4 + 480) = a4;
  *(v4 + 512) = a2;
  *(v4 + 464) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530) - 8) + 64) + 15;
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF7890C, 0, 0);
}

uint64_t sub_1DAF7890C()
{
  v32 = v0;
  v1 = *(v0 + 512);
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1DB09DE44();

  v31[0] = 0x4F49444F65726F63;
  v31[1] = 0xEF65646972726576;
  v3 = sub_1DAF6F064(v1);
  MEMORY[0x1E127FE90](v3);

  MEMORY[0x1E127FE90](0x4C525565736142, 0xE700000000000000);
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1)
  {

    goto LABEL_16;
  }

  v4 = sub_1DB09D6B4();

  v5 = [v2 stringForKey_];

  if (!v5)
  {
LABEL_16:

    if (qword_1EE304008 != -1)
    {
      swift_once();
    }

    v28 = swift_task_alloc();
    *(v0 + 504) = v28;
    *v28 = v0;
    v28[1] = sub_1DAF78DA8;

    return sub_1DAFEFC24(v0 + 240);
  }

  sub_1DB09D6C4();

  v6 = (v0 + 496);
  v7 = *(v0 + 496);

  sub_1DB09CF24();

  v8 = sub_1DB09CF64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    sub_1DAF783EC(*v6);
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DB09D4B4();
    __swift_project_value_buffer(v11, qword_1EE30A128);
    v12 = sub_1DB09D494();
    v13 = sub_1DB09DB64();
    if (os_log_type_enabled(v12, v13))
    {
      v30 = v10;
      v14 = *(v0 + 512);
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v15 = 136315138;
      v16 = sub_1DAF6F064(v14);
      v18 = sub_1DB015E84(v16, v17, v31);
      v10 = v30;

      *(v15 + 4) = v18;
      _os_log_impl(&dword_1DAF16000, v12, v13, "No URL override or config found for %s URL", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E1281810](v29, -1, -1);
      MEMORY[0x1E1281810](v15, -1, -1);
    }

    v19 = *(v0 + 480);
    v20 = *(v0 + 488);
    v21 = *(v0 + 472);
    sub_1DB09CF24();
    result = v10(v20, 1, v8);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v6 = (v0 + 488);
  }

  v23 = *v6;
  v25 = *(v0 + 488);
  v24 = *(v0 + 496);
  v26 = *(v0 + 464);

  (*(v9 + 32))(v26, v23, v8);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1DAF78DA8()
{
  v1 = *(*v0 + 504);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF78EA4, 0, 0);
}

uint64_t sub_1DAF78EA4()
{
  v54 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 416);
  v50 = *(v0 + 400);
  v51 = v2;
  v3 = *(v0 + 448);
  v52 = *(v0 + 432);
  v53 = v3;
  v4 = *(v0 + 352);
  v46 = *(v0 + 336);
  v47 = v4;
  v5 = *(v0 + 384);
  v48 = *(v0 + 368);
  v49 = v5;
  v6 = *(v0 + 288);
  v42 = *(v0 + 272);
  v43 = v6;
  v7 = *(v0 + 320);
  v44 = *(v0 + 304);
  v45 = v7;
  v8 = *(v0 + 256);
  v40 = *(v0 + 240);
  v41 = v8;
  sub_1DAFEF854(v1);
  v10 = v9;
  v11 = v51;
  *(v0 + 176) = v50;
  *(v0 + 192) = v11;
  v12 = v53;
  *(v0 + 208) = v52;
  *(v0 + 224) = v12;
  v13 = v47;
  *(v0 + 112) = v46;
  *(v0 + 128) = v13;
  v14 = v49;
  *(v0 + 144) = v48;
  *(v0 + 160) = v14;
  v15 = v43;
  *(v0 + 48) = v42;
  *(v0 + 64) = v15;
  v16 = v45;
  *(v0 + 80) = v44;
  *(v0 + 96) = v16;
  v17 = v41;
  *(v0 + 16) = v40;
  *(v0 + 32) = v17;
  sub_1DAF791EC(v0 + 16);
  if (v10)
  {
    v18 = (v0 + 496);
    v19 = *(v0 + 496);
    sub_1DB09CF24();

    v20 = sub_1DB09CF64();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      goto LABEL_10;
    }

    sub_1DAF783EC(*v18);
  }

  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB09D4B4();
  __swift_project_value_buffer(v22, qword_1EE30A128);
  v23 = sub_1DB09D494();
  v24 = sub_1DB09DB64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 512);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v40 = v27;
    *v26 = 136315138;
    v28 = sub_1DAF6F064(v25);
    v30 = sub_1DB015E84(v28, v29, &v40);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DAF16000, v23, v24, "No URL override or config found for %s URL", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E1281810](v27, -1, -1);
    MEMORY[0x1E1281810](v26, -1, -1);
  }

  v31 = *(v0 + 480);
  v32 = *(v0 + 488);
  v33 = *(v0 + 472);
  sub_1DB09CF24();
  v20 = sub_1DB09CF64();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v32, 1, v20);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v18 = (v0 + 488);
LABEL_10:
  v35 = *v18;
  v37 = *(v0 + 488);
  v36 = *(v0 + 496);
  v38 = *(v0 + 464);

  (*(v21 + 32))(v38, v35, v20);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1DAF79240(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF79260, v1, 0);
}

uint64_t sub_1DAF79260()
{
  v17 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  sub_1DAF40A84(v1 + 344, v0 + 16, &qword_1ECC0E7A0, &unk_1DB0A5140);
  if (*(v0 + 40))
  {
    sub_1DAF332B8((v0 + 16), *(v0 + 80));
LABEL_5:
    v6 = *(v0 + 8);

    return v6();
  }

  v2 = *(v0 + 88);
  sub_1DAF40AEC(v0 + 16, &qword_1ECC0E7A0, &unk_1DB0A5140);
  v3 = *(v2 + 384);
  v4 = *(v0 + 88);
  if (v3 == 1)
  {
    v5 = *(v0 + 80);
    v14 = *(v4 + 168);
    v15 = *(v4 + 176);
    v16 = 0;

    CoreODILogger.fault(_:category:)(0xD00000000000001ALL, 0x80000001DB0C3DA0, &v16);

    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    goto LABEL_5;
  }

  v8 = sub_1DAF7A290();
  v9 = *(MEMORY[0x1E69E88D0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7A0, &unk_1DB0A5140);
  *v10 = v0;
  v10[1] = sub_1DAF6D1A4;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return MEMORY[0x1EEE6DDE0](v12, v4, v8, 0x616E614D64697567, 0xEB00000000726567, sub_1DAF8C590, v13, v11);
}

uint64_t sub_1DAF79450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E718, &qword_1DB0A51E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v9, a1, v4);
  v10 = *(a2 + 392);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 392) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1DAF733A0(0, v10[2] + 1, 1, v10);
    *(a2 + 392) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1DAF733A0(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v9, v4);
  *(a2 + 392) = v10;
  return result;
}

uint64_t sub_1DAF79600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 192) = a4;
  *(v5 + 216) = a5;
  v6 = swift_task_alloc();
  *(v5 + 200) = v6;
  *v6 = v5;
  v6[1] = sub_1DAF796A8;

  return DIPClientGUIDFactory.init(primaryDSIDBehavior:)(v5 + 16, (v5 + 216));
}

uint64_t sub_1DAF796A8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1DAF79884;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 192);
    v4 = sub_1DAF797C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DAF797C4()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 256);
  *(v0 + 120) = *(v1 + 272);
  *(v0 + 104) = v2;
  v3 = *(v1 + 288);
  v4 = *(v1 + 304);
  v5 = *(v1 + 320);
  *(v0 + 184) = *(v1 + 336);
  *(v0 + 168) = v5;
  *(v0 + 152) = v4;
  *(v0 + 136) = v3;
  v6 = *(v0 + 32);
  *(v1 + 256) = *(v0 + 16);
  v8 = *(v0 + 64);
  v7 = *(v0 + 80);
  v9 = *(v0 + 48);
  *(v1 + 336) = *(v0 + 96);
  *(v1 + 304) = v8;
  *(v1 + 320) = v7;
  *(v1 + 272) = v6;
  *(v1 + 288) = v9;
  sub_1DAF40AEC(v0 + 104, &qword_1ECC0E7E8, &qword_1DB0A51D8);
  sub_1DAF7998C();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAF798BC()
{
  v1 = *(v0 + 192);
  sub_1DAF79BDC(5, *(v0 + 208));

  return MEMORY[0x1EEE6DFA0](sub_1DAF7992C, 0, 0);
}

uint64_t sub_1DAF7992C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF7998C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E718, &qword_1DB0A51E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v26[-v6 - 8];
  v9 = *(v1 + 168);
  v8 = *(v1 + 176);
  v10 = *(v1 + 304);
  v28[2] = *(v1 + 288);
  v28[3] = v10;
  v28[4] = *(v1 + 320);
  v29 = *(v1 + 336);
  v11 = *(v1 + 272);
  v28[0] = *(v1 + 256);
  v28[1] = v11;
  v12 = type metadata accessor for ODNAssessmentGUIDManager();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v8;
  v14 = *(v1 + 304);
  *(v13 + 64) = *(v1 + 288);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(v1 + 320);
  *(v13 + 112) = *(v1 + 336);
  v15 = *(v1 + 272);
  *(v13 + 32) = *(v1 + 256);
  *(v13 + 48) = v15;
  v27[3] = v12;
  v27[4] = &off_1F56CDE48;
  v27[0] = v13;
  swift_beginAccess();

  sub_1DAF40A84(v28, v26, &qword_1ECC0E7E8, &qword_1DB0A51D8);
  sub_1DAF8C520(v27, v1 + 344);
  swift_endAccess();
  *(v1 + 384) = 1;
  v16 = *(v1 + 392);
  v17 = *(v16 + 16);
  if (v17)
  {
    v20 = *(v3 + 16);
    v18 = v3 + 16;
    v19 = v20;
    v21 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v22 = *(v18 + 56);
    v25 = *(v1 + 392);

    do
    {
      v19(v7, v21, v2);
      sub_1DAF40A84(v1 + 344, v26, &qword_1ECC0E7A0, &unk_1DB0A5140);
      sub_1DB09D9B4();
      (*(v18 - 8))(v7, v2);
      v21 += v22;
      --v17;
    }

    while (v17);

    v23 = *(v1 + 392);
  }

  *(v1 + 392) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DAF79BDC(uint64_t result, void *a2)
{
  if (result != 5)
  {
    return result;
  }

  v3 = v2;
  v5 = *(v2 + 304);
  v47[2] = *(v2 + 288);
  v47[3] = v5;
  v47[4] = *(v2 + 320);
  v48 = *(v2 + 336);
  v6 = *(v2 + 272);
  v47[0] = *(v2 + 256);
  v47[1] = v6;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0;
  sub_1DAF40AEC(v47, &qword_1ECC0E7E8, &qword_1DB0A51D8);
  sub_1DAF7998C();
  v7 = *(v2 + 176);
  *&v45 = *(v2 + 168);
  *(&v45 + 1) = v7;
  LOBYTE(v44[0]) = 14;

  CoreODILogger.info(_:category:)(0xD000000000000072, 0x80000001DB0C3CC0, v44);

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v9 = a2;
  v10 = sub_1DB09CE64();
  v11 = [v10 domain];
  v12 = sub_1DB09D6C4();
  v14 = v13;

  if (v12 == 0x726F72724549444FLL && v14 == 0xE800000000000000)
  {

    goto LABEL_8;
  }

  v15 = sub_1DB09E254();

  if (v15)
  {
LABEL_8:
    ODIErrorCode.init(rawValue:)([v10 code]);
    v16 = v45;
    v17 = v45 ^ 0x80;
    v18 = [v10 userInfo];
    v19 = sub_1DB09D624();

    if (v16 == 211)
    {
      v20 = 12;
    }

    else
    {
      v20 = v17;
    }

    goto LABEL_12;
  }

  v21 = *MEMORY[0x1E696AA08];
  v22 = sub_1DB09D6C4();
  v24 = v23;
  v46 = sub_1DAF4D7A4();
  *&v45 = v10;
  sub_1DAF40D20(&v45, v44);
  v25 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v44, v22, v24, isUniquelyReferenced_nonNull_native);

  v19 = v8;
  v20 = 12;
LABEL_12:
  v43 = v20;
  if (*(v19 + 16) && (v27 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v28 & 1) != 0) && (sub_1DAF409DC(*(v19 + 56) + 32 * v27, &v45), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v29 = *&v44[0];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1DAF72EC0(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1DAF72EC0((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[56 * v31];
  *(v32 + 4) = 0xD000000000000023;
  *(v32 + 5) = 0x80000001DB0C3D40;
  *(v32 + 6) = 0xD00000000000002DLL;
  *(v32 + 7) = 0x80000001DB0C3590;
  *(v32 + 8) = 0xD00000000000002ALL;
  *(v32 + 9) = 0x80000001DB0C3D70;
  *(v32 + 10) = 123;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v45 = v29;
  sub_1DAF40D20(&v45, v44);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v44, 0x636F766E4949444FLL, 0xEE00736E6F697461, v33);
  v34 = qword_1DB0A5290[v43];
  v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v36 = sub_1DB09D6B4();
  v37 = sub_1DB09D604();
  v38 = [v35 initWithDomain:v36 code:v34 userInfo:v37];

  v39 = *(v3 + 168);
  v40 = *(v3 + 176);
  *&v45 = v39;
  *(&v45 + 1) = v40;
  *&v44[0] = 0x203A726F727245;
  *(&v44[0] + 1) = 0xE700000000000000;
  swift_getErrorValue();

  v41 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v41);

  v42 = *&v44[0];
  LOBYTE(v44[0]) = 0;
  CoreODILogger.error(_:category:)(v42, *(&v44[0] + 1), v44);
}

uint64_t sub_1DAF7A16C()
{
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  v2 = *(v0 + 176);

  v3 = *(v0 + 192);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));

  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v13 = *(v0 + 336);
  v12 = *(v0 + 320);
  sub_1DAF8C598(*(v0 + 256), *(v0 + 264));
  sub_1DAF40AEC(v0 + 344, &qword_1ECC0E7A0, &unk_1DB0A5140);
  v10 = *(v0 + 392);

  sub_1DAF8B934(v0 + 400);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DAF7A218()
{
  sub_1DAF7A16C();

  return swift_defaultActor_deallocate();
}

unint64_t sub_1DAF7A268(uint64_t a1)
{
  result = sub_1DAF7A290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DAF7A290()
{
  result = qword_1EE301108[0];
  if (!qword_1EE301108[0])
  {
    type metadata accessor for ODNAssessmentsManager();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE301108);
  }

  return result;
}

uint64_t sub_1DAF7A2E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E790, &qword_1DB0A5100) - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v6 = type metadata accessor for ODNAssessmentResult();
  *(v3 + 144) = v6;
  v7 = *(v6 - 8);
  *(v3 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  *(v3 + 50) = *a2;
  v10 = *(a2 + 8);
  *(v3 + 160) = v9;
  *(v3 + 168) = v10;
  *(v3 + 176) = *(a2 + 16);
  *(v3 + 51) = *(a2 + 32);
  *(v3 + 52) = *(a2 + 33);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7A404, v2, 0);
}

uint64_t sub_1DAF7A404()
{
  v1 = *(v0 + 52);
  v2 = *(v0 + 51);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 50);
  v7 = *(v0 + 128);
  swift_beginAccess();
  v8 = *(v7 + 960);
  v14 = *(v7 + 968);
  v9 = *(v7 + 976);
  *(v7 + 952) = v6;
  *(v7 + 960) = v5;
  *(v7 + 968) = v3;
  *(v7 + 976) = v4;
  *(v7 + 984) = v2;
  *(v7 + 985) = v1;

  sub_1DAF4ED88(v3, v4);

  sub_1DAF4AC40(v14, v9);
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v2;
  *(v0 + 49) = v1;
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_1DAF7A550;
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);

  return sub_1DAF7AB74(v11, v0 + 16);
}

uint64_t sub_1DAF7A550()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7A660, v2, 0);
}

uint64_t sub_1DAF7A660()
{
  v1 = *(v0 + 136);
  if ((*(*(v0 + 152) + 48))(v1, 1, *(v0 + 144)) == 1)
  {
    v2 = *(v0 + 52);
    v3 = *(v0 + 51);
    v4 = *(v0 + 184);
    v15 = *(v0 + 168);
    v5 = *(v0 + 50);
    sub_1DAF40AEC(v1, &qword_1ECC0E790, &qword_1DB0A5100);
    *(v0 + 56) = v5;
    *(v0 + 64) = v15;
    *(v0 + 80) = v4;
    *(v0 + 88) = v3;
    *(v0 + 89) = v2;
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_1DAF7A810;
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);

    return sub_1DAF7E478(v7, v0 + 56);
  }

  else
  {
    v10 = *(v0 + 160);
    v11 = *(v0 + 120);
    sub_1DAF8C2B8(v1, v10, type metadata accessor for ODNAssessmentResult);
    sub_1DAF8C2B8(v10, v11, type metadata accessor for ODNAssessmentResult);
    v12 = *(v0 + 160);
    v13 = *(v0 + 136);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1DAF7A810()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    v4 = v3[16];

    return MEMORY[0x1EEE6DFA0](sub_1DAF7A958, v4, 0);
  }

  else
  {
    v5 = v3[20];
    v6 = v3[17];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1DAF7A958()
{
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_1DAF7A9F0;
  v2 = v0[26];
  v3 = v0[15];
  v4 = v0[16];

  return sub_1DAF85904(v3, v2);
}

uint64_t sub_1DAF7A9F0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7AB00, v2, 0);
}

uint64_t sub_1DAF7AB00()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DAF7AB74(uint64_t a1, uint64_t a2)
{
  *(v3 + 6384) = v2;
  *(v3 + 6376) = a1;
  v5 = *(*(type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0) - 8) + 64) + 15;
  *(v3 + 6392) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7D0, &qword_1DB0A51D0) - 8) + 64) + 15;
  *(v3 + 6400) = swift_task_alloc();
  v7 = type metadata accessor for PregeneratedAssessment();
  *(v3 + 6408) = v7;
  v8 = *(v7 - 8);
  *(v3 + 6416) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 6424) = swift_task_alloc();
  *(v3 + 6432) = swift_task_alloc();
  *(v3 + 6440) = swift_task_alloc();
  *(v3 + 6448) = *(a2 + 8);
  *(v3 + 602) = *(a2 + 33);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7ACD0, v2, 0);
}

uint64_t sub_1DAF7ACD0()
{
  v1 = v0[798];
  swift_beginAccess();
  v0[807] = v1[50];
  v0[808] = v1[51];
  v0[809] = v1[52];
  v0[810] = v1[53];
  v2 = (v1[31] + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v0[811] = *v2;
  v0[812] = v2[1];
  v3 = qword_1EE304008;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[813] = v4;
  *v4 = v0;
  v4[1] = sub_1DAF7AE18;

  return sub_1DAFEFC24((v0 + 378));
}

uint64_t sub_1DAF7AE18()
{
  v1 = *(*v0 + 6504);
  v2 = *(*v0 + 6384);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7AF28, v2, 0);
}

uint64_t sub_1DAF7AF28()
{
  v29 = v0;
  *(v0 + 2960) = *(v0 + 3184);
  *(v0 + 2976) = *(v0 + 3200);
  *(v0 + 2992) = *(v0 + 3216);
  *(v0 + 3008) = *(v0 + 3232);
  *(v0 + 2896) = *(v0 + 3120);
  *(v0 + 2912) = *(v0 + 3136);
  *(v0 + 2928) = *(v0 + 3152);
  *(v0 + 2944) = *(v0 + 3168);
  *(v0 + 2832) = *(v0 + 3056);
  *(v0 + 2848) = *(v0 + 3072);
  *(v0 + 2864) = *(v0 + 3088);
  *(v0 + 2880) = *(v0 + 3104);
  *(v0 + 2800) = *(v0 + 3024);
  *(v0 + 2816) = *(v0 + 3040);
  v1 = *(v0 + 3016);
  if (v1)
  {
    v2 = *(v0 + 3016);
  }

  else
  {
    v1 = sub_1DAF3EE1C(MEMORY[0x1E69E7CC0]);
  }

  v3 = *(v0 + 6480);
  v4 = *(v0 + 6472);
  sub_1DAF791EC(v0 + 2800);
  LOBYTE(v26) = 0;

  LOBYTE(v4) = sub_1DAFFF15C(&v26, v4, v3, v1);

  if (v4)
  {
    v5 = *(v0 + 6448);
    v6 = *(v0 + 6384);
    v7 = *(v6 + 176);
    v26 = *(v6 + 168);
    v27 = v7;
    v28 = 8;

    CoreODILogger.debug(_:category:)(0xD000000000000022, 0x80000001DB0C3A80, &v28);

    *(v6 + 952) = 0;
    *(v0 + 5656) = &type metadata for AssessmentPregenerator;
    *(v0 + 5664) = &off_1F56C5468;
    __swift_project_boxed_opaque_existential_1((v0 + 5632), &type metadata for AssessmentPregenerator);
    *(v0 + 6328) = v5;

    v8 = swift_task_alloc();
    *(v0 + 6512) = v8;
    *v8 = v0;
    v8[1] = sub_1DAF7B260;
    v9 = *(v0 + 6480);
    v10 = *(v0 + 6472);
    v11 = *(v0 + 6400);

    return sub_1DAFF5D44(v11, (v0 + 6328), v10, v9);
  }

  else
  {
    v13 = *(v0 + 6496);
    v14 = *(v0 + 6480);
    v15 = *(v0 + 6464);
    v16 = *(v0 + 6384);
    v17 = *(v0 + 6376);

    v18 = *(v16 + 176);
    v26 = *(v16 + 168);
    v27 = v18;
    v28 = 14;

    CoreODILogger.debug(_:category:)(0xD000000000000011, 0x80000001DB0C3A60, &v28);

    v19 = type metadata accessor for ODNAssessmentResult();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = *(v0 + 6440);
    v21 = *(v0 + 6432);
    v22 = *(v0 + 6424);
    v23 = *(v0 + 6400);
    v24 = *(v0 + 6392);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1DAF7B260()
{
  v2 = *v1;
  v3 = *(*v1 + 6512);
  v14 = *v1;
  *(*v1 + 6520) = v0;

  if (v0)
  {
    v4 = v2[812];
    v5 = v2[810];
    v6 = v2[808];
    v7 = v2[798];

    v8 = v2[791];

    v9 = sub_1DAF7CCBC;
    v10 = v7;
  }

  else
  {
    v11 = v2[798];
    v12 = v2[791];

    v9 = sub_1DAF7B3D0;
    v10 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1DAF7B3D0()
{
  v1 = v0[805];
  v2 = v0[800];
  (*(v0[802] + 56))(v2, 0, 1, v0[801]);
  sub_1DAF8C2B8(v2, v1, type metadata accessor for PregeneratedAssessment);
  v3 = swift_task_alloc();
  v0[816] = v3;
  *v3 = v0;
  v3[1] = sub_1DAF7B4C0;
  v4 = v0[798];

  return sub_1DAF79240((v0 + 689));
}

uint64_t sub_1DAF7B4C0()
{
  v1 = *(*v0 + 6528);
  v2 = *(*v0 + 6384);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7B5D0, v2, 0);
}

uint64_t sub_1DAF7B5D0()
{
  v160 = v0;
  if (*(v0 + 5536))
  {
    v1 = *(v0 + 6520);
    v2 = *(v0 + 6480);
    v3 = *(v0 + 6440);

    sub_1DAF332B8((v0 + 5512), v0 + 5592);
    v4 = *__swift_project_boxed_opaque_existential_1((v0 + 5592), *(v0 + 5616));
    sub_1DAFDBC18(v3, v0 + 2528);
    if (v1)
    {
      v5 = *(v0 + 6496);
      v6 = *(v0 + 6464);
      v7 = *(v0 + 6440);
      v8 = *(v0 + 6384);
      v9 = *(v0 + 6376);

      v10 = *(v8 + 176);
      v158 = *(v8 + 168);
      v159 = v10;
      LOBYTE(v156) = 14;

      CoreODILogger.debug(_:category:)(0xD000000000000015, 0x80000001DB0C3B20, &v156);

      v11 = v7;
LABEL_21:
      sub_1DAF8C320(v11, type metadata accessor for PregeneratedAssessment);
      v42 = type metadata accessor for ODNAssessmentResult();
      (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5592));
      v43 = (v0 + 5632);
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      v44 = *(v0 + 6440);
      v45 = *(v0 + 6432);
      v46 = *(v0 + 6424);
      v47 = *(v0 + 6400);
      v48 = *(v0 + 6392);

      v49 = *(v0 + 8);

      return v49();
    }

    v30 = *(v0 + 6440);
    v31 = *(v0 + 6408);
    memcpy((v0 + 2256), (v0 + 2528), 0x110uLL);
    v32 = (v30 + *(v31 + 32));
    v33 = *v32;
    v34 = v32[1];
    v35 = sub_1DAFDD59C(*v32, v34);
    *(v0 + 6536) = v35;
    *(v0 + 6544) = v36;
    if (v36 >> 60 == 15)
    {
      v37 = *(v0 + 6496);
      v38 = *(v0 + 6464);

      sub_1DAF8C380(v0 + 2256);
LABEL_20:
      v39 = *(v0 + 6440);
      v40 = *(v0 + 6384);
      v9 = *(v0 + 6376);
      v41 = *(v40 + 176);
      v156 = *(v40 + 168);
      v157 = v41;

      sub_1DB09DE44();

      v158 = 0xD00000000000000ELL;
      v159 = 0x80000001DB0C3B40;
      MEMORY[0x1E127FE90](v33, v34);
      CoreODILogger.debug(_:category:)(0xD000000000000021, 0x80000001DB0C3B40, &v158);

      v11 = v39;
      goto LABEL_21;
    }

    v153 = v35;
    v155 = v36;
    v50 = (*(v0 + 6440) + *(*(v0 + 6408) + 36));
    v51 = *v50;
    v52 = v50[1];
    v53 = sub_1DB09CFA4();
    if (v54 >> 60 == 15)
    {
      v55 = *(v0 + 6496);
      v56 = *(v0 + 6464);

      sub_1DAF8C380(v0 + 2256);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v57 = MEMORY[0x1E69E7CC0];
      v58 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v58 + 16))
      {
        v59 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v60)
        {
          sub_1DAF409DC(*(v58 + 56) + 32 * v59, v0 + 6168);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v57 = *(v0 + 6360);
          }

          else
          {
            v57 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1DAF72EC0(0, *(v57 + 2) + 1, 1, v57);
      }

      v75 = *(v57 + 2);
      v74 = *(v57 + 3);
      if (v75 >= v74 >> 1)
      {
        v57 = sub_1DAF72EC0((v74 > 1), v75 + 1, 1, v57);
      }

      *(v57 + 2) = v75 + 1;
      v76 = &v57[56 * v75];
      *(v76 + 4) = 0xD000000000000022;
      *(v76 + 5) = 0x80000001DB0C3B70;
      *(v76 + 6) = 0xD000000000000030;
      *(v76 + 7) = 0x80000001DB0C3BA0;
      *(v76 + 8) = 0x6F72662864656573;
      *(v76 + 9) = 0xEB00000000293A6DLL;
      *(v76 + 10) = 77;
      *(v0 + 5808) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 5784) = v57;
      sub_1DAF40D20((v0 + 5784), (v0 + 5848));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = v58;
      sub_1DAF3B11C((v0 + 5848), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v78 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v79 = sub_1DB09D6B4();
      v80 = sub_1DB09D604();
      v81 = [v78 initWithDomain:v79 code:-2127 userInfo:v80];

      swift_willThrow();
      sub_1DAF4AC40(v153, v155);

      goto LABEL_20;
    }

    v150 = v53;
    v61 = v54;
    v62 = sub_1DB09CC24();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C3D4();
    sub_1DB09CC04();
    v65 = *(v0 + 6440);
    v66 = *(v0 + 6408);

    sub_1DAF4AC40(v150, v61);
    v67 = *(v0 + 5272);
    *(v0 + 5448) = *(v0 + 5256);
    *(v0 + 5464) = v67;
    v68 = *(v0 + 5304);
    *(v0 + 5480) = *(v0 + 5288);
    *(v0 + 5496) = v68;
    v69 = (v65 + *(v66 + 40));
    v70 = *v69;
    v71 = v69[1];
    v72 = sub_1DAFDD59C(*v69, v71);
    *(v0 + 6552) = v72;
    *(v0 + 6560) = v73;
    if (v73 >> 60 == 15)
    {
      v82 = *(v0 + 6496);
      v83 = *(v0 + 6464);

      sub_1DAF41478(v0 + 5448);
      sub_1DAF8C380(v0 + 2256);
LABEL_41:
      v84 = *(v0 + 6440);
      v85 = *(v0 + 6384);
      v86 = *(v0 + 6376);
      v87 = *(v85 + 176);
      v156 = *(v85 + 168);
      v157 = v87;

      sub_1DB09DE44();

      v158 = 0xD00000000000000ELL;
      v159 = 0x80000001DB0C3BE0;
      MEMORY[0x1E127FE90](v70, v71);
      CoreODILogger.debug(_:category:)(0xD00000000000001FLL, 0x80000001DB0C3BE0, &v158);

      sub_1DAF4AC40(v153, v155);

      sub_1DAF8C320(v84, type metadata accessor for PregeneratedAssessment);
      v88 = type metadata accessor for ODNAssessmentResult();
      (*(*(v88 - 8) + 56))(v86, 1, 1, v88);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5592));
      v43 = (v0 + 5632);
      goto LABEL_22;
    }

    v148 = v72;
    v151 = v73;
    v89 = (*(v0 + 6440) + *(*(v0 + 6408) + 44));
    v90 = *v89;
    v91 = v89[1];
    v92 = sub_1DB09CFA4();
    v146 = v70;
    if (v93 >> 60 == 15)
    {
      v94 = *(v0 + 6496);
      v95 = *(v0 + 6464);

      sub_1DAF41478(v0 + 5448);
      sub_1DAF8C380(v0 + 2256);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v96 = MEMORY[0x1E69E7CC0];
      v97 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v97 + 16))
      {
        v98 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v99)
        {
          sub_1DAF409DC(*(v97 + 56) + 32 * v98, v0 + 5944);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v96 = *(v0 + 6352);
          }

          else
          {
            v96 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_1DAF72EC0(0, *(v96 + 2) + 1, 1, v96);
      }

      v136 = *(v96 + 2);
      v135 = *(v96 + 3);
      if (v136 >= v135 >> 1)
      {
        v96 = sub_1DAF72EC0((v135 > 1), v136 + 1, 1, v96);
      }

      *(v96 + 2) = v136 + 1;
      v137 = &v96[56 * v136];
      *(v137 + 4) = 0xD000000000000022;
      *(v137 + 5) = 0x80000001DB0C3B70;
      *(v137 + 6) = 0xD000000000000030;
      *(v137 + 7) = 0x80000001DB0C3BA0;
      *(v137 + 8) = 0x6F72662864656573;
      *(v137 + 9) = 0xEB00000000293A6DLL;
      *(v137 + 10) = 77;
      *(v0 + 6000) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 5976) = v96;
      sub_1DAF40D20((v0 + 5976), (v0 + 6008));
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v158 = v97;
      sub_1DAF3B11C((v0 + 6008), 0x636F766E4949444FLL, 0xEE00736E6F697461, v138);
      v139 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v140 = sub_1DB09D6B4();
      v141 = sub_1DB09D604();
      v142 = [v139 initWithDomain:v140 code:-2127 userInfo:v141];

      swift_willThrow();
      sub_1DAF4AC40(v148, v151);

      v70 = v146;
      goto LABEL_41;
    }

    v100 = v92;
    v101 = v93;
    v102 = *(v62 + 48);
    v103 = *(v62 + 52);
    swift_allocObject();
    sub_1DB09CC14();
    v144 = v101;
    sub_1DB09CC04();
    v145 = *(v0 + 6408);
    v147 = *(v0 + 6440);
    v104 = *(v0 + 6384);

    sub_1DAF4AC40(v100, v144);
    v105 = *(v0 + 5400);
    *(v0 + 5320) = *(v0 + 5384);
    *(v0 + 5336) = v105;
    v106 = *(v0 + 5432);
    *(v0 + 5352) = *(v0 + 5416);
    *(v0 + 5368) = v106;
    v107 = *(v0 + 2368);
    *(v0 + 5080) = *(v0 + 2352);
    *(v0 + 5096) = v107;
    *(v0 + 5112) = *(v0 + 2384);
    v108 = *(v0 + 2304);
    *(v0 + 5016) = *(v0 + 2288);
    *(v0 + 5032) = v108;
    v109 = *(v0 + 2336);
    *(v0 + 5048) = *(v0 + 2320);
    *(v0 + 5064) = v109;
    v110 = *(v0 + 2272);
    *(v0 + 4984) = *(v0 + 2256);
    *(v0 + 5000) = v110;
    nullsub_3(v0 + 4984);
    v111 = *(v0 + 2456);
    *(v0 + 5200) = *(v0 + 2472);
    v112 = *(v0 + 2504);
    *(v0 + 5216) = *(v0 + 2488);
    *(v0 + 5232) = v112;
    v113 = *(v0 + 2392);
    *(v0 + 5136) = *(v0 + 2408);
    v114 = *(v0 + 2440);
    *(v0 + 5152) = *(v0 + 2424);
    *(v0 + 5168) = v114;
    *(v0 + 5184) = v111;
    *(v0 + 5248) = *(v0 + 2520);
    *(v0 + 5120) = v113;
    nullsub_3(v0 + 5120);
    sub_1DAF49ECC(v0 + 2256, v0 + 4576);
    sub_1DAF4ED88(v153, v155);
    sub_1DAF49ECC(v0 + 2392, v0 + 4440);
    sub_1DAF4ED88(v148, v151);
    memcpy((v0 + 1792), (v104 + 488), 0x1D0uLL);
    *(v104 + 488) = *(v0 + 4984);
    v115 = *(v0 + 5000);
    v116 = *(v0 + 5016);
    v117 = *(v0 + 5048);
    *(v104 + 536) = *(v0 + 5032);
    *(v104 + 552) = v117;
    *(v104 + 504) = v115;
    *(v104 + 520) = v116;
    v118 = *(v0 + 5064);
    v119 = *(v0 + 5080);
    v120 = *(v0 + 5096);
    *(v104 + 616) = *(v0 + 5112);
    *(v104 + 584) = v119;
    *(v104 + 600) = v120;
    *(v104 + 568) = v118;
    *(v104 + 624) = 0u;
    v121 = *(v0 + 5448);
    v122 = *(v0 + 5464);
    v123 = *(v0 + 5496);
    *(v104 + 672) = *(v0 + 5480);
    *(v104 + 688) = v123;
    *(v104 + 640) = v121;
    *(v104 + 656) = v122;
    *(v104 + 704) = v153;
    *(v104 + 712) = v155;
    v124 = *(v0 + 5248);
    v125 = *(v0 + 5232);
    v126 = *(v0 + 5216);
    *(v104 + 800) = *(v0 + 5200);
    *(v104 + 816) = v126;
    *(v104 + 832) = v125;
    *(v104 + 848) = v124;
    v127 = *(v0 + 5184);
    v128 = *(v0 + 5168);
    v129 = *(v0 + 5152);
    *(v104 + 736) = *(v0 + 5136);
    *(v104 + 752) = v129;
    *(v104 + 768) = v128;
    *(v104 + 784) = v127;
    *(v104 + 720) = *(v0 + 5120);
    *(v104 + 856) = 0u;
    v130 = *(v0 + 5368);
    v132 = *(v0 + 5320);
    v131 = *(v0 + 5336);
    *(v104 + 904) = *(v0 + 5352);
    *(v104 + 920) = v130;
    *(v104 + 872) = v132;
    *(v104 + 888) = v131;
    *(v104 + 936) = v148;
    *(v104 + 944) = v151;
    sub_1DAF8BF7C(v0 + 1792);
    v133 = __swift_project_boxed_opaque_existential_1((v104 + 208), *(v104 + 232));
    *(v0 + 603) = *(v147 + *(v145 + 68));
    v134 = (v147 + *(v145 + 72));
    *(v0 + 6568) = *v134;
    *(v0 + 6576) = v134[1];
    v29 = *v133;
    *(v0 + 6584) = *v133;
    v28 = sub_1DAF7CE30;
  }

  else
  {
    v12 = *(v0 + 6496);
    v13 = *(v0 + 6464);

    sub_1DAF40AEC(v0 + 5512, &qword_1ECC0E7A0, &unk_1DB0A5140);
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v15 + 16))
    {
      v16 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v17)
      {
        sub_1DAF409DC(*(v15 + 56) + 32 * v16, v0 + 5880);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v14 = *(v0 + 6320);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DAF72EC0(0, *(v14 + 2) + 1, 1, v14);
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_1DAF72EC0((v18 > 1), v19 + 1, 1, v14);
    }

    v20 = *(v0 + 6480);
    v21 = *(v0 + 6472);
    v152 = *(v0 + 6440);
    v149 = *(v0 + 6408);
    v154 = *(v0 + 6384);
    *(v14 + 2) = v19 + 1;
    v22 = &v14[56 * v19];
    *(v22 + 4) = 0xD000000000000018;
    *(v22 + 5) = 0x80000001DB0C3AD0;
    *(v22 + 6) = 0xD00000000000002DLL;
    *(v22 + 7) = 0x80000001DB0C3590;
    *(v22 + 8) = 0xD000000000000022;
    *(v22 + 9) = 0x80000001DB0C3AF0;
    *(v22 + 10) = 177;
    *(v0 + 5936) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 5912) = v14;
    sub_1DAF40D20((v0 + 5912), (v0 + 6040));
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v15;
    sub_1DAF3B11C((v0 + 6040), 0x636F766E4949444FLL, 0xEE00736E6F697461, v23);
    v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v25 = sub_1DB09D6B4();
    v26 = sub_1DB09D604();
    v27 = [v24 initWithDomain:v25 code:-3167 userInfo:v26];

    sub_1DB041E04(v21, v20, v0 + 5672);
    *(v0 + 6712) = *(v0 + 5672);
    *(v0 + 6720) = *(v0 + 5680);
    *(v0 + 604) = *(v0 + 5688);
    *(v0 + 6728) = *(v0 + 5696);
    *(v0 + 6296) = *(v0 + 5696);
    sub_1DAF40A84(v0 + 6296, v0 + 6280, &unk_1ECC0EAE0, &unk_1DB0A4650);

    *(v0 + 605) = sub_1DAF8B2AC(*(v152 + *(v149 + 28)), *(v152 + *(v149 + 28) + 8)) & 1;

    sub_1DAF8B8D8(v154 + 400, v0 + 16);
    v28 = sub_1DAF7DDAC;
    v29 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v28, v29, 0);
}

uint64_t sub_1DAF7CCBC()
{
  v15 = v0;
  v1 = v0[800];
  v2 = v0[798];
  v3 = v0[797];
  (*(v0[802] + 56))(v1, 1, 1, v0[801]);
  sub_1DAF40AEC(v1, &qword_1ECC0E7D0, &qword_1DB0A51D0);
  v12 = *(v2 + 168);
  v13 = *(v2 + 176);
  v14 = 14;

  CoreODILogger.debug(_:category:)(0xD000000000000010, 0x80000001DB0C3AB0, &v14);

  v4 = type metadata accessor for ODNAssessmentResult();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 704);
  v5 = v0[805];
  v6 = v0[804];
  v7 = v0[803];
  v8 = v0[800];
  v9 = v0[799];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DAF7CE30()
{
  v1 = *(v0 + 6584);
  v2 = *(v0 + 6576);
  v3 = *(v0 + 603);
  swift_beginAccess();
  *(v1 + 112) = v3;
  if (v2)
  {
    v4 = *(v0 + 6584);
    v5 = *(v0 + 6576);
    v6 = *(v4 + 128);
    *(v4 + 120) = *(v0 + 6568);
    *(v4 + 128) = v5;
  }

  v7 = *(v0 + 6384);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7CEE4, v7, 0);
}

uint64_t sub_1DAF7CEE4()
{
  v1 = *(v0 + 6464);
  v2 = *(v0 + 6456);
  v3 = *(v0 + 6432);
  v4 = *(v0 + 6392);
  v5 = *(v0 + 6384);
  sub_1DAF8C428(*(v0 + 6440), v3);
  *(v0 + 5712) = 0u;
  *(v0 + 5728) = 0u;
  *(v0 + 5744) = 1;
  sub_1DAFF856C(v2, v1, v3, (v0 + 5712), v4);
  v6 = *__swift_project_boxed_opaque_existential_1((v5 + 208), *(v5 + 232));
  v7 = swift_task_alloc();
  *(v0 + 6592) = v7;
  *v7 = v0;
  v7[1] = sub_1DAF7CFEC;
  v8 = *(v0 + 602);
  v9 = *(v0 + 6392);

  return sub_1DAFF9558(v9, v8);
}

uint64_t sub_1DAF7CFEC()
{
  v2 = *v1;
  v3 = *(*v1 + 6592);
  v4 = *v1;
  *(*v1 + 6600) = v0;

  v5 = *(v2 + 6384);
  if (v0)
  {
    v6 = sub_1DAF7D218;
  }

  else
  {
    v6 = sub_1DAF7D118;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAF7D118()
{
  *(v0 + 6608) = *(v0 + 2256) + 49;
  v1 = *(v0 + 6440);
  v2 = *(v0 + 6424);
  *(v0 + 6616) = *(v0 + 2328);
  *(v0 + 6624) = *(v0 + 2336);
  *(v0 + 6632) = *(v0 + 2344);
  *(v0 + 6640) = *(v0 + 2352);
  *(v0 + 6648) = *(v0 + 2360);
  *(v0 + 6656) = *(v0 + 2368);
  sub_1DAF8C428(v1, v2);
  v3 = qword_1EE301710;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE30A060;
  *(v0 + 6664) = qword_1EE30A060;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7D544, v4, 0);
}

uint64_t sub_1DAF7D218()
{
  v30 = v0;
  v1 = *(v0 + 6600);
  *(v0 + 6336) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 6384);

    v4 = *(v0 + 6344);
    sub_1DAF877B0(v4);
    sub_1DAF8C080(v4);

    *(v0 + 6608) = *(v0 + 2256) + 49;
    v5 = *(v0 + 6440);
    v6 = *(v0 + 6424);
    *(v0 + 6616) = *(v0 + 2328);
    *(v0 + 6624) = *(v0 + 2336);
    *(v0 + 6632) = *(v0 + 2344);
    *(v0 + 6640) = *(v0 + 2352);
    *(v0 + 6648) = *(v0 + 2360);
    *(v0 + 6656) = *(v0 + 2368);
    sub_1DAF8C428(v5, v6);
    v7 = qword_1EE301710;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE30A060;
    *(v0 + 6664) = qword_1EE30A060;

    return MEMORY[0x1EEE6DFA0](sub_1DAF7D544, v8, 0);
  }

  else
  {
    v9 = *(v0 + 6600);
    v10 = *(v0 + 6560);
    v11 = *(v0 + 6552);
    v12 = *(v0 + 6544);
    v13 = *(v0 + 6536);
    v14 = *(v0 + 6496);
    v15 = *(v0 + 6440);
    v16 = *(v0 + 6392);
    v17 = *(v0 + 6384);
    v18 = *(v0 + 6376);

    sub_1DAF8C380(v0 + 2256);

    v27 = *(v17 + 168);
    v28 = *(v17 + 176);
    v29 = 14;

    CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C3C00, &v29);

    sub_1DAF4AC40(v11, v10);
    sub_1DAF4AC40(v13, v12);

    sub_1DAF8C320(v16, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
    sub_1DAF8C320(v15, type metadata accessor for PregeneratedAssessment);
    v19 = type metadata accessor for ODNAssessmentResult();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5592));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5632));
    v20 = *(v0 + 6440);
    v21 = *(v0 + 6432);
    v22 = *(v0 + 6424);
    v23 = *(v0 + 6400);
    v24 = *(v0 + 6392);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1DAF7D544()
{
  v1 = v0[833];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v0[838] = v2;
    v0[837] = v3;
    v4 = v0[798];

    return MEMORY[0x1EEE6DFA0](sub_1DAF7D7D8, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[834] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF7D62C;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAF7D62C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 6672);
  v5 = *(*v2 + 6664);
  v7 = *v2;
  *(v3 + 6680) = a1;
  *(v3 + 6688) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7D748, v5, 0);
}

uint64_t sub_1DAF7D748()
{
  v1 = v0[836];
  v2 = v0[833];
  v3 = *(v2 + 120);
  *(v2 + 112) = v0[835];
  *(v2 + 120) = v1;

  v4 = v0[835];
  v0[838] = v0[836];
  v0[837] = v4;
  v5 = v0[798];

  return MEMORY[0x1EEE6DFA0](sub_1DAF7D7D8, v5, 0);
}

uint64_t sub_1DAF7D7D8()
{
  v94 = v0;
  v1 = *(v0 + 6424);
  v2 = *(v0 + 6408);
  v3 = (v1 + v2[15]);
  v4 = *v3;
  v5 = v3[1];
  v6 = (v1 + v2[16]);
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_1DAFDD930();
  v90 = sub_1DAF8B2AC(*(v1 + v2[7]), *(v1 + v2[7] + 8));

  v10 = v1[1];
  v89 = *v1;
  v11 = (v1 + v2[19]);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(v13 + 24);
  v88 = v10;

  v15 = v14(v12, v13);
  v17 = v16;
  v18 = v11[3];
  v19 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v18);
  (*(v19 + 64))(v92, v18, v19);
  if (v9)
  {
  }

  v20 = *(v0 + 6408);
  v21 = *(*(v0 + 6424) + *(v20 + 52));
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    v93 = 0;
    if (qword_1EE301DD0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
  v72 = *(v0 + 6424);
  v20 = *(v0 + 6408);
LABEL_5:
  v23 = qword_1EE309EE8;
  v91 = qword_1EE309EE0;
  v24 = *(v20 + 20);

  sub_1DB09D0F4();
  v26 = v25;
  v27 = v25;
  result = sub_1DAF8C48C(v9);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v75 = *(v0 + 6696);
  v86 = *(v0 + 6648);
  v87 = *(v0 + 6656);
  v84 = *(v0 + 6616);
  v85 = *(v0 + 6632);
  v82 = *(v0 + 6608);
  v83 = v2;
  v76 = *(v0 + 6552);
  v77 = *(v0 + 6560);
  v29 = *(v0 + 6488);
  v30 = v22;
  v31 = *(v0 + 6440);
  v74 = *(v0 + 6432);
  v80 = *(v0 + 6544);
  v81 = *(v0 + 6408);
  v78 = *(v0 + 6536);
  v79 = *(v0 + 6392);
  v32 = v15;
  v33 = *(v0 + 6376);
  v73 = *(v0 + 6496);
  sub_1DAF8C320(*(v0 + 6424), type metadata accessor for PregeneratedAssessment);
  *(v0 + 3464) = v89;
  *(v0 + 3472) = v88;
  *(v0 + 3480) = v32;
  *(v0 + 3488) = v17;
  v34 = v92[3];
  *(v0 + 3528) = v92[2];
  *(v0 + 3544) = v34;
  *(v0 + 3560) = v92[4];
  v35 = v92[1];
  *(v0 + 3496) = v92[0];
  *(v0 + 3512) = v35;
  *(v0 + 3576) = v75;
  *(v0 + 3592) = v29;
  *(v0 + 3600) = v73;
  *(v0 + 3608) = v9;
  *(v0 + 3616) = v30;
  *(v0 + 3624) = v93;
  *(v0 + 3632) = 0;
  *(v0 + 3640) = v91;
  *(v0 + 3648) = v23;
  *(v0 + 3656) = -45;
  *(v0 + 3664) = v26;
  *(v0 + 3672) = v90 & 1;
  sub_1DAF8C428(v31, v74);
  v36 = type metadata accessor for ODNAssessmentResult();
  v37 = *(v36 + 52);
  sub_1DAF49ECC(v0 + 2256, v0 + 4304);
  sub_1DAF49ECC(v0 + 2392, v0 + 3896);
  sub_1DAF8BDD0(v0 + 3464, v0 + 3248);
  sub_1DB09DF34();
  sub_1DAF8C380(v0 + 2256);
  sub_1DAF8BE80(v0 + 3464);
  sub_1DAF4AC40(v76, v77);
  sub_1DAF4AC40(v78, v80);
  sub_1DAF8C320(v79, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  *v33 = *(v0 + 4984);
  v38 = *(v0 + 5048);
  v40 = *(v0 + 5000);
  v39 = *(v0 + 5016);
  *(v33 + 48) = *(v0 + 5032);
  *(v33 + 64) = v38;
  *(v33 + 16) = v40;
  *(v33 + 32) = v39;
  v42 = *(v0 + 5080);
  v41 = *(v0 + 5096);
  v43 = *(v0 + 5064);
  *(v33 + 128) = *(v0 + 5112);
  *(v33 + 96) = v42;
  *(v33 + 112) = v41;
  *(v33 + 80) = v43;
  v44 = *(v0 + 5200);
  v45 = *(v0 + 5216);
  v46 = *(v0 + 5232);
  *(v33 + 264) = *(v0 + 5248);
  *(v33 + 248) = v46;
  *(v33 + 232) = v45;
  *(v33 + 216) = v44;
  v47 = *(v0 + 5136);
  v48 = *(v0 + 5152);
  v49 = *(v0 + 5168);
  *(v33 + 200) = *(v0 + 5184);
  *(v33 + 184) = v49;
  *(v33 + 168) = v48;
  *(v33 + 152) = v47;
  *(v33 + 136) = *(v0 + 5120);
  v50 = (v74 + *(v81 + 48));
  v51 = v50[1];
  *(v33 + 272) = *v50;
  *(v33 + 280) = v51;
  v52 = (v74 + *(v81 + 24));
  v53 = v52[1];
  *(v33 + 288) = *v52;
  *(v33 + 296) = v53;
  *(v33 + 304) = 0;
  *(v33 + 312) = 0;
  v54 = *(v0 + 5744);
  v55 = *(v0 + 5728);
  *(v33 + 320) = *(v0 + 5712);
  *(v33 + 336) = v55;
  *(v33 + 352) = v54;
  *(v33 + 360) = v82;
  *(v33 + 368) = 0xE100000000000000;
  *(v33 + 376) = v84;
  *(v33 + 392) = v85;
  *(v33 + 408) = v86;
  *(v33 + 416) = v87;
  sub_1DAF3523C(v74 + v83[19], v33 + 424);

  sub_1DAF8C320(v74, type metadata accessor for PregeneratedAssessment);
  v56 = *(v0 + 3480);
  *(v33 + 464) = *(v0 + 3464);
  *(v33 + 480) = v56;
  v57 = *(v0 + 3544);
  v59 = *(v0 + 3496);
  v58 = *(v0 + 3512);
  *(v33 + 528) = *(v0 + 3528);
  *(v33 + 544) = v57;
  *(v33 + 496) = v59;
  *(v33 + 512) = v58;
  v60 = *(v0 + 3608);
  v62 = *(v0 + 3560);
  v61 = *(v0 + 3576);
  *(v33 + 592) = *(v0 + 3592);
  *(v33 + 608) = v60;
  *(v33 + 560) = v62;
  *(v33 + 576) = v61;
  v64 = *(v0 + 3640);
  v63 = *(v0 + 3656);
  v65 = *(v0 + 3624);
  *(v33 + 672) = *(v0 + 3672);
  *(v33 + 640) = v64;
  *(v33 + 656) = v63;
  *(v33 + 624) = v65;
  sub_1DAF8C320(v31, type metadata accessor for PregeneratedAssessment);
  (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5592));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5632));
  v66 = *(v0 + 6440);
  v67 = *(v0 + 6432);
  v68 = *(v0 + 6424);
  v69 = *(v0 + 6400);
  v70 = *(v0 + 6392);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_1DAF7DDAC()
{
  v1 = *(v0 + 6384);
  sub_1DAF3523C(v0 + 64, v0 + 5552);
  sub_1DAF8B934(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7DE28, v1, 0);
}

uint64_t sub_1DAF7DE28()
{
  sub_1DAF8B8D8(*(v0 + 6384) + 400, v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7DE98, 0, 0);
}

uint64_t sub_1DAF7DE98()
{
  v1 = *(v0 + 6384);
  *(v0 + 4296) = *(v0 + 1416);
  v2 = *(v0 + 1400);
  *(v0 + 4264) = *(v0 + 1384);
  *(v0 + 4280) = v2;
  v3 = *(v0 + 1336);
  *(v0 + 4200) = *(v0 + 1320);
  *(v0 + 4216) = v3;
  v4 = *(v0 + 1368);
  *(v0 + 4232) = *(v0 + 1352);
  *(v0 + 4248) = v4;
  v5 = *(v0 + 1304);
  *(v0 + 4168) = *(v0 + 1288);
  *(v0 + 4184) = v5;
  sub_1DAF40A84(v0 + 4168, v0 + 4712, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7DF54, v1, 0);
}

uint64_t sub_1DAF7DF54()
{
  sub_1DAF8B8D8(*(v0 + 6384) + 400, v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7DFC4, 0, 0);
}

uint64_t sub_1DAF7DFC4()
{
  v1 = *(v0 + 992);
  *(v0 + 4112) = *(v0 + 1008);
  *(v0 + 4128) = *(v0 + 1024);
  *(v0 + 4144) = *(v0 + 1040);
  v2 = *(v0 + 928);
  *(v0 + 4048) = *(v0 + 944);
  v3 = *(v0 + 976);
  *(v0 + 4064) = *(v0 + 960);
  *(v0 + 4080) = v3;
  *(v0 + 4096) = v1;
  v4 = *(v0 + 6376);
  *(v0 + 4160) = *(v0 + 1056);
  *(v0 + 4032) = v2;
  sub_1DAF40A84(v0 + 4032, v0 + 4848, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 608);
  sub_1DAF3523C(v0 + 5552, v4 + 424);
  v5 = swift_task_alloc();
  *(v0 + 6744) = v5;
  *v5 = v0;
  v5[1] = sub_1DAF7E0DC;
  v6 = *(v0 + 605);
  v7 = *(v0 + 6384);

  return sub_1DAF8AD6C(v0 + 3680, 0, v6);
}

uint64_t sub_1DAF7E0DC()
{
  v1 = *(*v0 + 6744);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7E1D8, 0, 0);
}

uint64_t sub_1DAF7E1D8()
{
  v1 = *(v0 + 6736);
  v2 = *(v0 + 6728);
  v3 = *(v0 + 604);
  v4 = *(v0 + 6384);
  v5 = *(v0 + 6712);
  v6 = *(v0 + 6376);
  v7 = *(v0 + 4232);
  v9 = *(v0 + 4184);
  v8 = *(v0 + 4200);
  *(v6 + 48) = *(v0 + 4216);
  *(v6 + 64) = v7;
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  v11 = *(v0 + 4264);
  v10 = *(v0 + 4280);
  v12 = *(v0 + 4248);
  *(v6 + 128) = *(v0 + 4296);
  *(v6 + 96) = v11;
  *(v6 + 112) = v10;
  *(v6 + 80) = v12;
  *v6 = *(v0 + 4168);
  *(v6 + 136) = *(v0 + 4032);
  v13 = *(v0 + 4048);
  v14 = *(v0 + 4064);
  v15 = *(v0 + 4080);
  *(v6 + 200) = *(v0 + 4096);
  *(v6 + 184) = v15;
  *(v6 + 168) = v14;
  *(v6 + 152) = v13;
  v16 = *(v0 + 4112);
  v17 = *(v0 + 4128);
  v18 = *(v0 + 4144);
  *(v6 + 264) = *(v0 + 4160);
  *(v6 + 248) = v18;
  *(v6 + 232) = v17;
  *(v6 + 216) = v16;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = v5;
  *(v6 + 336) = v3;
  *(v6 + 344) = v2;
  *(v6 + 352) = v1;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0u;
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  v19 = *(v0 + 3696);
  *(v6 + 464) = *(v0 + 3680);
  *(v6 + 480) = v19;
  v20 = *(v0 + 3712);
  v21 = *(v0 + 3728);
  v22 = *(v0 + 3760);
  *(v6 + 528) = *(v0 + 3744);
  *(v6 + 544) = v22;
  *(v6 + 496) = v20;
  *(v6 + 512) = v21;
  v23 = *(v0 + 3776);
  v24 = *(v0 + 3792);
  v25 = *(v0 + 3824);
  *(v6 + 592) = *(v0 + 3808);
  *(v6 + 608) = v25;
  *(v6 + 560) = v23;
  *(v6 + 576) = v24;
  v26 = *(v0 + 3840);
  v27 = *(v0 + 3856);
  v28 = *(v0 + 3872);
  *(v6 + 672) = *(v0 + 3888);
  *(v6 + 640) = v27;
  *(v6 + 656) = v28;
  *(v6 + 624) = v26;
  v29 = type metadata accessor for ODNAssessmentResult();
  *(v0 + 6752) = v29;
  v30 = v6 + *(v29 + 52);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5552));

  return MEMORY[0x1EEE6DFA0](sub_1DAF7E378, v4, 0);
}

uint64_t sub_1DAF7E378()
{
  v1 = v0[844];
  v2 = v0[797];
  sub_1DAF8C320(v0[805], type metadata accessor for PregeneratedAssessment);
  (*(*(v1 - 8) + 56))(v2, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 704);
  v3 = v0[805];
  v4 = v0[804];
  v5 = v0[803];
  v6 = v0[800];
  v7 = v0[799];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DAF7E478(uint64_t a1, uint64_t a2)
{
  *(v3 + 5040) = v2;
  *(v3 + 5032) = a1;
  v5 = sub_1DB09D154();
  *(v3 + 5048) = v5;
  v6 = *(v5 - 8);
  *(v3 + 5056) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 5064) = swift_task_alloc();
  v8 = *(*(sub_1DB09D344() - 8) + 64) + 15;
  *(v3 + 5072) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0) - 8) + 64) + 15;
  *(v3 + 5080) = swift_task_alloc();
  v10 = type metadata accessor for ODISignpost();
  *(v3 + 5088) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 5096) = swift_task_alloc();
  *(v3 + 5104) = swift_task_alloc();
  v12 = sub_1DB09D734();
  *(v3 + 5112) = v12;
  v13 = *(v12 - 8);
  *(v3 + 5120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 5128) = swift_task_alloc();
  v15 = sub_1DB09D1D4();
  *(v3 + 5136) = v15;
  v16 = *(v15 - 8);
  *(v3 + 5144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 5152) = swift_task_alloc();
  v18 = *(a2 + 16);
  *(v3 + 4696) = *a2;
  *(v3 + 4712) = v18;
  *(v3 + 4728) = *(a2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7E6B8, v2, 0);
}

uint64_t sub_1DAF7E6B8()
{
  v7 = v0;
  v1 = *(v0 + 5040);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  v6 = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000018, 0x80000001DB0C35E0, &v6);

  *(v0 + 1668) = MKBGetDeviceLockState();
  swift_beginAccess();
  *(v1 + 952) = 1;
  *(v0 + 5160) = *(v1 + 432);
  *(v0 + 5168) = *(v1 + 440);
  *(v0 + 5176) = *(v1 + 192);

  v2 = swift_task_alloc();
  *(v0 + 5184) = v2;
  *v2 = v0;
  v2[1] = sub_1DAF7E7F0;

  return sub_1DAFA41D8(v0 + 4656);
}

uint64_t sub_1DAF7E7F0()
{
  v2 = *v1;
  v3 = *(*v1 + 5184);
  v9 = *v1;
  *(*v1 + 5192) = v0;

  if (v0)
  {
    v4 = *(v2 + 5168);
    v5 = *(v2 + 5040);

    v6 = sub_1DAF7EB80;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 5040);
    v6 = sub_1DAF7E918;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1DAF7E918()
{
  *(v0 + 1667) = *(v0 + 4696);
  v1 = *(v0 + 4680);
  v2 = *(v0 + 4688);
  __swift_project_boxed_opaque_existential_1((v0 + 4656), v1);
  v3 = *(v2 + 56);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 5200) = v5;
  *v5 = v0;
  v5[1] = sub_1DAF7EA58;

  return v7(v0 + 3032, v1, v2);
}

uint64_t sub_1DAF7EA58()
{
  v2 = *v1;
  v3 = *(*v1 + 5200);
  v9 = *v1;
  *(*v1 + 5208) = v0;

  if (v0)
  {
    v4 = *(v2 + 5168);
    v5 = *(v2 + 5040);

    v6 = sub_1DAF85834;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 5040);
    v6 = sub_1DAF7EC44;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1DAF7EB80()
{
  v1 = v0[649];
  v2 = v0[644];
  v3 = v0[641];
  v4 = v0[638];
  v5 = v0[637];
  v6 = v0[635];
  v7 = v0[634];
  v8 = v0[633];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DAF7EC44()
{
  v1 = *(v0 + 3096);
  *(v0 + 3248) = *(v0 + 3112);
  v2 = *(v0 + 3112);
  *(v0 + 3264) = *(v0 + 3128);
  v3 = *(v0 + 3128);
  *(v0 + 3280) = *(v0 + 3144);
  v4 = *(v0 + 3032);
  *(v0 + 3184) = *(v0 + 3048);
  v5 = *(v0 + 3048);
  *(v0 + 3200) = *(v0 + 3064);
  v6 = *(v0 + 3064);
  *(v0 + 3216) = *(v0 + 3080);
  v7 = *(v0 + 3080);
  *(v0 + 3232) = *(v0 + 3096);
  *(v0 + 3168) = *(v0 + 3032);
  v8 = *(v0 + 3144);
  *(v0 + 3400) = v3;
  *(v0 + 3416) = v8;
  *(v0 + 3336) = v6;
  *(v0 + 3352) = v7;
  *(v0 + 3368) = v1;
  *(v0 + 3384) = v2;
  v9 = *(v0 + 1667);
  *(v0 + 3296) = *(v0 + 3160);
  *(v0 + 1665) = ((v9 != 2) ^ v9) & 1;
  *(v0 + 3432) = *(v0 + 3160);
  *(v0 + 3304) = v4;
  *(v0 + 3320) = v5;
  v10 = swift_task_alloc();
  *(v0 + 5216) = v10;
  *v10 = v0;
  v10[1] = sub_1DAF7ED74;
  v11 = *(v0 + 5040);

  return sub_1DAF883EC(v0 + 4656, (v0 + 1665), v0 + 3304);
}

uint64_t sub_1DAF7ED74()
{
  v1 = *(*v0 + 5216);
  v2 = *(*v0 + 5040);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7EE84, v2, 0);
}

uint64_t sub_1DAF7EE84()
{
  v254 = v0;
  v1 = *(v0 + 5040);
  v2 = *(v0 + 3248);
  v3 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
  v4 = *(v0 + 3280);
  v250[6] = *(v0 + 3264);
  v250[7] = v4;
  v251 = *(v0 + 3296);
  v5 = *(v0 + 3184);
  v6 = *(v0 + 3216);
  v250[2] = *(v0 + 3200);
  v250[3] = v6;
  v250[4] = *(v0 + 3232);
  v250[5] = v2;
  v250[0] = *(v0 + 3168);
  v250[1] = v5;
  sub_1DAF88798(v0 + 4656, v250);
  v7 = *(v0 + 4680);
  v8 = *(v0 + 4688);
  __swift_project_boxed_opaque_existential_1((v0 + 4656), v7);
  LOBYTE(v252) = v3;
  (*(v8 + 40))(v250, &v252, v7, v8);
  if ((*(&v250[0] + 1) & 0x2000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v9 = *(&v250[0] + 1) >> 62;
  if ((*(&v250[0] + 1) >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(*&v250[0] + 16);
    v11 = *(*&v250[0] + 24);
LABEL_9:
    if (v10 != v11)
    {
      goto LABEL_11;
    }

LABEL_10:
    v12 = *(v0 + 5168);
    v13 = v250[0];
    sub_1DAF8BA14(v0 + 3168);

    sub_1DAF8BF28();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    sub_1DAF60AF4(v13, *(&v13 + 1));
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));
    v51 = *(v0 + 5152);
    v52 = *(v0 + 5128);
    v53 = *(v0 + 5104);
    v54 = *(v0 + 5096);
    v55 = *(v0 + 5080);
    v56 = *(v0 + 5072);
    v57 = *(v0 + 5064);

    v58 = *(v0 + 8);

    return v58();
  }

  if (v9)
  {
    v10 = SLODWORD(v250[0]);
    v11 = *&v250[0] >> 32;
    goto LABEL_9;
  }

  if ((*(&v250[0] + 1) & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1DAF60AF4(*&v250[0], *(&v250[0] + 1));
  v15 = *(v0 + 4680);
  v16 = *(v0 + 4688);
  __swift_project_boxed_opaque_existential_1((v0 + 4656), v15);
  v17 = (*(v16 + 24))(v15, v16);
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      sub_1DAF40780(v17, v18);
      if (v21 == v22)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    sub_1DAF40780(v17, v18);
LABEL_24:
    v49 = *(v0 + 5168);
    sub_1DAF8BA14(v0 + 3168);

    sub_1DAF8BF28();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  if (v19)
  {
    v23 = v17;
    sub_1DAF40780(v17, v18);
    if (v23 != v23 >> 32)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v20 = v18;
  sub_1DAF40780(v17, v18);
  if ((v20 & 0xFF000000000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v24 = *(v0 + 5040);
  v25 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
  v26 = *(v0 + 4680);
  v27 = *(v0 + 4688);
  __swift_project_boxed_opaque_existential_1((v0 + 4656), v26);
  LOBYTE(v250[0]) = v25;
  (*(v27 + 48))(v250, v26, v27);
  *(v0 + 2080) = *(v24 + 488);
  v28 = *(v24 + 504);
  v29 = *(v24 + 520);
  v30 = *(v24 + 552);
  *(v0 + 2128) = *(v24 + 536);
  *(v0 + 2144) = v30;
  *(v0 + 2096) = v28;
  *(v0 + 2112) = v29;
  v31 = *(v24 + 568);
  v32 = *(v24 + 584);
  v33 = *(v24 + 600);
  *(v0 + 2208) = *(v24 + 616);
  *(v0 + 2176) = v32;
  *(v0 + 2192) = v33;
  *(v0 + 2160) = v31;
  v34 = *(v24 + 632);
  v35 = *(v24 + 648);
  v36 = *(v24 + 712);
  v37 = *(v24 + 784);
  v39 = *(v24 + 736);
  v38 = *(v24 + 752);
  *(v0 + 2264) = *(v24 + 768);
  *(v0 + 2280) = v37;
  *(v0 + 2232) = v39;
  *(v0 + 2248) = v38;
  v41 = *(v24 + 816);
  v40 = *(v24 + 832);
  v42 = *(v24 + 800);
  *(v0 + 2344) = *(v24 + 848);
  *(v0 + 2312) = v41;
  *(v0 + 2328) = v40;
  *(v0 + 2296) = v42;
  *(v0 + 2216) = *(v24 + 720);
  v43 = *(v24 + 864);
  v44 = *(v24 + 880);
  v45 = *(v24 + 944);
  if (sub_1DAF8B9A8(v0 + 2080) != 1)
  {
    v59 = *(v0 + 2328);
    *(v0 + 2448) = *(v0 + 2312);
    *(v0 + 2464) = v59;
    *(v0 + 2480) = *(v0 + 2344);
    v60 = *(v0 + 2264);
    *(v0 + 2384) = *(v0 + 2248);
    *(v0 + 2400) = v60;
    v61 = *(v0 + 2296);
    *(v0 + 2416) = *(v0 + 2280);
    *(v0 + 2432) = v61;
    v62 = *(v0 + 2232);
    *(v0 + 2352) = *(v0 + 2216);
    *(v0 + 2368) = v62;
    if (sub_1DAF8B9A8(v0 + 2352) != 1 && v35 && v44 && v34 && v43 && v36 >> 60 != 15 && v45 >> 60 != 15)
    {
      v63 = (v0 + 3656);
      v64 = (v0 + 4104);
      v235 = *(v0 + 5208);
      v65 = *(v0 + 5040);
      *(v0 + 2896) = *(v65 + 488);
      v66 = *(v65 + 552);
      v68 = *(v65 + 504);
      v67 = *(v65 + 520);
      *(v0 + 2944) = *(v65 + 536);
      *(v0 + 2960) = v66;
      *(v0 + 2912) = v68;
      *(v0 + 2928) = v67;
      v70 = *(v65 + 584);
      v69 = *(v65 + 600);
      v71 = *(v65 + 568);
      *(v0 + 3024) = *(v65 + 616);
      *(v0 + 2992) = v70;
      *(v0 + 3008) = v69;
      *(v0 + 2976) = v71;
      v72 = *(v65 + 704);
      *(v0 + 5264) = v72;
      v73 = *(v65 + 712);
      *(v0 + 5272) = v73;
      v229 = *(v65 + 624);
      v74 = *(v65 + 632);
      v75 = *(v65 + 688);
      v77 = *(v65 + 640);
      v76 = *(v65 + 656);
      *(v0 + 3752) = *(v65 + 672);
      *(v0 + 3768) = v75;
      *(v0 + 3720) = v77;
      *(v0 + 3736) = v76;
      v243 = v72;
      v246 = v0 + 2896;
      v247 = v74;
      if (*(v0 + 3728))
      {
        v78 = *(v65 + 640);
        v79 = *(v65 + 656);
        v80 = *(v65 + 688);
        *(v0 + 4136) = *(v65 + 672);
        *(v0 + 4152) = v80;
        *v64 = v78;
        *(v0 + 4120) = v79;
      }

      else
      {
        *(v0 + 1672) = *(v65 + 488);
        v81 = *(v65 + 504);
        v82 = *(v65 + 520);
        v83 = *(v65 + 552);
        *(v0 + 1720) = *(v65 + 536);
        *(v0 + 1736) = v83;
        *(v0 + 1688) = v81;
        *(v0 + 1704) = v82;
        v84 = *(v65 + 568);
        v85 = *(v65 + 584);
        v86 = *(v65 + 600);
        *(v0 + 1800) = *(v65 + 616);
        *(v0 + 1768) = v85;
        *(v0 + 1784) = v86;
        *(v0 + 1752) = v84;
        if (sub_1DAF8B9A8(v0 + 1672) == 1)
        {
          *(v0 + 4136) = 0u;
          *(v0 + 4152) = 0u;
          *v64 = 0u;
          *(v0 + 4120) = 0u;
        }

        else
        {
          v87 = *(v0 + 1744);
          v88 = *(v0 + 1752);
          v89 = *(v0 + 1760);
          v90 = *(v0 + 1768);
          v91 = *(v0 + 1776);
          v92 = *(v0 + 1784);
          *(v0 + 4104) = *(v0 + 1672) + 49;
          *(v0 + 4112) = 0xE100000000000000;
          *(v0 + 4120) = v87;
          *(v0 + 4128) = v88;
          *(v0 + 4136) = v89;
          *(v0 + 4144) = v90;
          *(v0 + 4152) = v91;
          *(v0 + 4160) = v92;
        }

        v63 = (v0 + 3656);
      }

      v93 = (v0 + 3784);
      v94 = *(v0 + 5040);
      v95 = *(v0 + 4120);
      *(v0 + 3976) = *v64;
      *(v0 + 3992) = v95;
      v96 = *(v0 + 4152);
      *(v0 + 4008) = *(v0 + 4136);
      *(v0 + 4024) = v96;
      *(v0 + 2760) = *(v94 + 720);
      v97 = *(v94 + 784);
      v99 = *(v94 + 736);
      v98 = *(v94 + 752);
      *(v0 + 2808) = *(v94 + 768);
      *(v0 + 2824) = v97;
      *(v0 + 2776) = v99;
      *(v0 + 2792) = v98;
      v101 = *(v94 + 816);
      v100 = *(v94 + 832);
      v102 = *(v94 + 800);
      *(v0 + 2888) = *(v94 + 848);
      *(v0 + 2856) = v101;
      *(v0 + 2872) = v100;
      *(v0 + 2840) = v102;
      v103 = *(v94 + 872);
      v104 = *(v94 + 888);
      v105 = *(v94 + 920);
      v63[2] = *(v94 + 904);
      v63[3] = v105;
      *v63 = v103;
      v63[1] = v104;
      v238 = (v0 + 4232);
      v239 = v0 + 2760;
      if (*(v0 + 3664))
      {
        v106 = *(v94 + 872);
        v107 = *(v94 + 888);
        v108 = *(v94 + 920);
        *(v0 + 3816) = *(v94 + 904);
        *(v0 + 3832) = v108;
        *(v0 + 3800) = v107;
      }

      else
      {
        *(v0 + 2624) = *(v94 + 720);
        v109 = *(v94 + 736);
        v110 = *(v94 + 752);
        v111 = *(v94 + 784);
        *(v0 + 2672) = *(v94 + 768);
        *(v0 + 2688) = v111;
        *(v0 + 2640) = v109;
        *(v0 + 2656) = v110;
        v112 = *(v94 + 800);
        v113 = *(v94 + 816);
        v114 = *(v94 + 832);
        *(v0 + 2752) = *(v94 + 848);
        *(v0 + 2720) = v113;
        *(v0 + 2736) = v114;
        *(v0 + 2704) = v112;
        if (sub_1DAF8B9A8(v0 + 2624) != 1)
        {
          v152 = *(v0 + 2696);
          v153 = *(v0 + 2704);
          v154 = *(v0 + 2712);
          v155 = *(v0 + 2720);
          v156 = *(v0 + 2728);
          v157 = *(v0 + 2736);
          *(v0 + 3784) = *(v0 + 2624) + 49;
          *(v0 + 3792) = 0xE100000000000000;
          *(v0 + 3800) = v152;
          *(v0 + 3808) = v153;
          *(v0 + 3816) = v154;
          *(v0 + 3824) = v155;
          *(v0 + 3832) = v156;
          *(v0 + 3840) = v157;

          v93 = (v0 + 3784);

LABEL_46:
          v230 = v93;
          v115 = *(v0 + 5152);
          v116 = *(v0 + 5040);
          v117 = v93[1];
          *(v0 + 3912) = *v93;
          *(v0 + 3928) = v117;
          v118 = v93[3];
          *(v0 + 3944) = v93[2];
          *(v0 + 3960) = v118;
          v231 = v116[107];
          v119 = v116[108];
          v120 = v116[31];
          v121 = *(v120 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
          sub_1DAF3523C(v120 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, v0 + 4416);
          v122 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());
          v123 = &v122[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
          *v123 = 0x726F5F646E65732FLL;
          *(v123 + 1) = 0xE900000000000064;
          v124 = &v122[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
          *v124 = 0x746F5F646E65732FLL;
          *(v124 + 1) = 0xE900000000000064;
          sub_1DAF3523C(v0 + 4416, v0 + 4456);
          sub_1DAF40A84(v246, v0 + 2488, &qword_1ECC0E798, &qword_1DB0A5120);
          sub_1DAF4ED88(v243, v73);

          v237 = v73;
          sub_1DAF40A84(v0 + 3720, v0 + 3592, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
          v125 = v121;
          sub_1DAF40A84(v0 + 3656, v0 + 3848, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

          sub_1DAF40A84(v239, v0 + 1944, &qword_1ECC0E798, &qword_1DB0A5120);
          v126 = sub_1DB016E04(v125, (v0 + 4456));

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4416));
          v127 = v116[31];
          v116[31] = v126;

          sub_1DB09D1C4();
          v128 = sub_1DB09D174();
          v130 = v129;
          v131 = sub_1DB09D174();
          *(v0 + 4232) = v128;
          *(v0 + 4240) = v130;
          *(v0 + 4248) = v131;
          *(v0 + 4256) = v132;
          *(v0 + 4264) = v231;
          *(v0 + 4272) = v119;
          v133 = v116[22];
          v252 = v116[21];
          v253 = v133;
          *&v250[0] = 0;
          *(&v250[0] + 1) = 0xE000000000000000;

          sub_1DB09DE44();

          *&v250[0] = 0x737420676E697375;
          *(&v250[0] + 1) = 0xEB00000000206469;
          v134 = sub_1DB09D174();
          MEMORY[0x1E127FE90](v134);

          MEMORY[0x1E127FE90](0x20646975677420, 0xE700000000000000);
          if (v119)
          {
            v135 = v231;
          }

          else
          {
            v135 = 0x3E6C696E3CLL;
          }

          if (v119)
          {
            v136 = v119;
          }

          else
          {
            v136 = 0xE500000000000000;
          }

          MEMORY[0x1E127FE90](v135, v136);

          v137 = *&v250[0];
          LOBYTE(v250[0]) = 8;
          CoreODILogger.debug(_:category:)(v137, *(&v250[0] + 1), v250);

          v138 = sub_1DB09CC54();
          v139 = *(v138 + 48);
          v140 = *(v138 + 52);
          swift_allocObject();
          sub_1DB09CC44();
          v141 = (v0 + 4232);
          v142 = *(v0 + 4248);
          *(v0 + 4280) = *v238;
          *(v0 + 4296) = v142;
          *(v0 + 4312) = *(v0 + 4264);
          sub_1DAF8B9C0();
          v143 = sub_1DB09CC34();
          *(v0 + 5280) = v143;
          *(v0 + 5288) = v144;
          if (v235)
          {
            v145 = *(v0 + 5168);
            (*(*(v0 + 5144) + 8))(*(v0 + 5152), *(v0 + 5136));

            sub_1DAF4AC40(v243, v73);
            sub_1DAF40AEC(v246, &qword_1ECC0E798, &qword_1DB0A5120);

            sub_1DAF40AEC(v0 + 4104, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
            sub_1DAF40AEC(v239, &qword_1ECC0E798, &qword_1DB0A5120);
            sub_1DAF40AEC(v230, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

            sub_1DAF8BA14(v0 + 3168);
            sub_1DAF8BA68(v238);
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
            goto LABEL_25;
          }

          v146 = v143;
          v147 = v144;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E750, &qword_1DB0A5150);
          v148 = swift_allocObject();
          v149 = v147;
          *(v148 + 16) = xmmword_1DB0A04E0;
          *(v148 + 32) = v146;
          *(v148 + 40) = v147;
          v241 = v148;
          v236 = v147;
          if (*(v0 + 3176))
          {
            v150 = *(v0 + 3224);
            v151 = *(v0 + 3216);
            sub_1DAF40674(v146, v149);
            sub_1DAF40A84(v0 + 3168, v0 + 4040, &qword_1ECC0E7C0, &qword_1DB0A51B0);
            sub_1DAF8BA14(v0 + 3168);

            sub_1DAF40AEC(v0 + 3168, &qword_1ECC0E7C0, &qword_1DB0A51B0);
          }

          else
          {
            sub_1DAF40674(v146, v147);
            sub_1DAF8BA14(v0 + 3168);
            v151 = 0;
            v150 = 0;
          }

          if (v247)
          {
            v158 = v229;
          }

          else
          {
            v158 = 0;
          }

          if (v247)
          {
            v159 = v247;
          }

          else
          {
            v159 = 0xE000000000000000;
          }

          v160 = *(v0 + 4232);
          *(v0 + 5296) = v160;
          v161 = *(v0 + 4240);
          *(v0 + 5304) = v161;
          sub_1DAFDE06C(v151, v150, v160, v161, v158, v159);
          *(v0 + 5312) = v162;
          *(v0 + 5320) = v163;
          v248 = v163;
          v164 = v162;

          v234 = v164;
          v244 = (v0 + 4696);
          if (v164 && *(v164 + 24))
          {
            v165 = *(v0 + 5128);
            v166 = *(v0 + 5120);
            v167 = *(v0 + 5112);
            v168 = *(v164 + 16);

            sub_1DB09D714();
            v240 = sub_1DB09D6D4();
            v170 = v169;

            v171 = *(v166 + 8);
            v171(v165, v167);
            if (v170 >> 60 == 15)
            {
              v141 = (v0 + 4232);
            }

            else
            {
              v141 = (v0 + 4232);
              if (v248 && *(v248 + 24))
              {
                v172 = *(v0 + 5128);
                v232 = *(v0 + 5112);
                v173 = *(v248 + 16);

                sub_1DB09D714();
                v233 = sub_1DB09D6D4();
                v175 = v174;

                v171(v172, v232);
                if (v175 >> 60 != 15)
                {
                  v212 = v175;
                  sub_1DAF40674(v146, v236);
                  v213 = v241;
                  v215 = *(v241 + 16);
                  v214 = *(v241 + 24);
                  v216 = v215 + 1;
                  v177 = (v0 + 3912);
                  v176 = (v0 + 3976);
                  if (v215 >= v214 >> 1)
                  {
                    v213 = sub_1DAF735C8((v214 > 1), v215 + 1, 1, v241);
                  }

                  *(v213 + 2) = v216;
                  v217 = &v213[16 * v215];
                  *(v217 + 4) = v146;
                  *(v217 + 5) = v236;
                  v218 = v213;
                  sub_1DAF40674(v233, v212);
                  v219 = v218;
                  v220 = *(v218 + 3);
                  v221 = v215 + 2;
                  if ((v215 + 2) > (v220 >> 1))
                  {
                    v219 = sub_1DAF735C8((v220 > 1), v215 + 2, 1, v219);
                  }

                  v222 = *(v0 + 5152);
                  v223 = *(v0 + 5040);
                  *(v219 + 2) = v221;
                  v241 = v219;
                  v224 = &v219[16 * v216];
                  *(v224 + 4) = v233;
                  *(v224 + 5) = v212;
                  v225 = *(v223 + 176);
                  v252 = *(v223 + 168);
                  v253 = v225;
                  *&v250[0] = 0;
                  *(&v250[0] + 1) = 0xE000000000000000;

                  sub_1DB09DE44();

                  *&v250[0] = 0x6469737420726F66;
                  *(&v250[0] + 1) = 0xE900000000000020;
                  v226 = sub_1DB09D174();
                  MEMORY[0x1E127FE90](v226);

                  MEMORY[0x1E127FE90](0x44495354636E6520, 0xEE00203A61746144);
                  v227 = sub_1DB09D014();
                  MEMORY[0x1E127FE90](v227);

                  v228 = *&v250[0];
                  LOBYTE(v250[0]) = 8;
                  CoreODILogger.debug(_:category:)(v228, *(&v250[0] + 1), v250);
                  sub_1DAF4AC40(v240, v170);

                  sub_1DAF4AC40(v233, v212);

                  v141 = (v0 + 4232);
                  goto LABEL_74;
                }

                sub_1DAF4AC40(v240, v170);
                v141 = (v0 + 4232);
              }

              else
              {
                sub_1DAF4AC40(v240, v170);
              }
            }
          }

          v177 = (v0 + 3912);
          v176 = (v0 + 3976);
LABEL_74:
          *(v0 + 5328) = v241;
          v178 = *(v0 + 5040);
          v179 = (*(v0 + 1668) - 1) < 2;
          sub_1DAF3523C(v0 + 4536, v0 + 4576);
          v180 = swift_allocObject();
          *(v0 + 5336) = v180;
          *(v180 + 16) = v178;
          sub_1DAF332B8((v0 + 4576), v180 + 24);
          *(v180 + 64) = v179;
          v181 = v176[1];
          *(v180 + 72) = *v176;
          *(v180 + 88) = v181;
          v182 = v176[3];
          *(v180 + 104) = v176[2];
          *(v180 + 120) = v182;
          v183 = v177[1];
          *(v180 + 136) = *v177;
          *(v180 + 152) = v183;
          v184 = v177[3];
          *(v180 + 168) = v177[2];
          *(v180 + 184) = v184;
          v185 = *v141;
          v186 = v141[1];
          *(v180 + 232) = v141[2];
          *(v180 + 216) = v186;
          *(v180 + 200) = v185;
          *(v180 + 248) = v234;
          *(v180 + 256) = v248;
          v187 = *(v0 + 4712);
          *(v180 + 264) = *v244;
          *(v180 + 280) = v187;
          *(v180 + 296) = *(v0 + 4728);
          v188 = *(v0 + 5040);
          if (v237 >> 60 == 15)
          {

            sub_1DAF8BBB4(v244, v0 + 4736);

            v189 = *(v188 + 176);
            *&v250[0] = *(v188 + 168);
            *(&v250[0] + 1) = v189;
            LOBYTE(v252) = 8;

            CoreODILogger.error(_:category:)(0xD00000000000002FLL, 0x80000001DB0C3600, &v252);

            if (qword_1EE300B90 != -1)
            {
              swift_once();
            }

            v190 = MEMORY[0x1E69E7CC0];
            v191 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
            if (*(v191 + 16))
            {
              v192 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
              if (v193)
              {
                sub_1DAF409DC(*(v191 + 56) + 32 * v192, v0 + 4880);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
                if (swift_dynamicCast())
                {
                  v190 = *(v0 + 5008);
                }
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v190 = sub_1DAF72FF4(0, *(v190 + 2) + 1, 1, v190);
            }

            v195 = *(v190 + 2);
            v194 = *(v190 + 3);
            if (v195 >= v194 >> 1)
            {
              v190 = sub_1DAF72FF4((v194 > 1), v195 + 1, 1, v190);
            }

            v196 = *(v0 + 5168);
            v249 = *(v0 + 1668);
            v242 = *(v0 + 5160);
            v245 = *(v0 + 5032);
            *(v190 + 2) = v195 + 1;
            v197 = &v190[56 * v195];
            *(v197 + 4) = 0;
            *(v197 + 5) = 0xE000000000000000;
            *(v197 + 6) = 0xD00000000000002DLL;
            *(v197 + 7) = 0x80000001DB0C3590;
            *(v197 + 8) = 0xD00000000000001CLL;
            *(v197 + 9) = 0x80000001DB0C3630;
            *(v197 + 10) = 502;
            *(v0 + 4840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
            *(v0 + 4816) = v190;
            sub_1DAF40D20((v0 + 4816), (v0 + 4848));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v250[0] = v191;
            sub_1DAF3B11C((v0 + 4848), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
            v199 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v200 = sub_1DB09D6B4();
            v201 = sub_1DB09D604();
            *(v0 + 5568) = [v199 initWithDomain:v200 code:-3300 userInfo:v201];

            sub_1DB041E04(v242, v196, v0 + 4616);
            *(v0 + 5576) = *(v0 + 4616);
            *(v0 + 5584) = *(v0 + 4624);
            *(v0 + 3161) = *(v0 + 4632);
            *(v0 + 5592) = *(v0 + 4640);
            *(v0 + 4992) = *(v0 + 4640);
            sub_1DAF40A84(v0 + 4992, v0 + 4976, &unk_1ECC0EAE0, &unk_1DB0A4650);

            sub_1DAF3523C(v0 + 4536, v245 + 424);
            v202 = swift_task_alloc();
            *(v0 + 5608) = v202;
            *v202 = v0;
            v202[1] = sub_1DAF854B4;
            v203 = *(v0 + 5040);

            return sub_1DAF8AD6C(v0 + 1456, 0, (v249 - 1) < 2);
          }

          else
          {
            v204 = *(v0 + 5040);

            sub_1DAF8BC10(v141, v0 + 4328);

            sub_1DAF8BBB4(v244, v0 + 4776);
            if (qword_1EE301828 != -1)
            {
              swift_once();
            }

            v205 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
            v206 = qword_1EE301830;
            *(v0 + 5344) = qword_1EE301830;
            v207 = *(v0 + 4680);
            v208 = *(v0 + 4688);
            __swift_project_boxed_opaque_existential_1((v0 + 4656), v207);
            LOBYTE(v250[0]) = v205;
            (*(v208 + 40))(v250, v207, v208);
            *(v0 + 5352) = *(v0 + 4960);
            v209 = *(v0 + 4680);
            v210 = *(v0 + 4688);
            __swift_project_boxed_opaque_existential_1((v0 + 4656), v209);
            *(v0 + 5368) = (*(v210 + 24))(v209, v210);
            *(v0 + 5376) = v211;
            *(v0 + 5024) = *(v0 + 4704);
            *(v0 + 5384) = *(v0 + 4712);
            *(v0 + 5392) = *(v0 + 4720);
            *(v0 + 1666) = *(v0 + 4728);
            sub_1DAF8BC6C(v0 + 5024, v0 + 5016);

            return MEMORY[0x1EEE6DFA0](sub_1DAF83098, v206, 0);
          }
        }

        v106 = 0uLL;
        *(v0 + 3816) = 0u;
        *(v0 + 3832) = 0u;
        *(v0 + 3800) = 0u;
      }

      *v93 = v106;
      goto LABEL_46;
    }
  }

  v46 = swift_task_alloc();
  *(v0 + 5224) = v46;
  *v46 = v0;
  v46[1] = sub_1DAF80530;
  v47 = *(v0 + 5040);

  return sub_1DAF79240(v0 + 4376);
}

uint64_t sub_1DAF80530()
{
  v1 = *(*v0 + 5224);
  v2 = *(*v0 + 5040);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF80640, v2, 0);
}

uint64_t sub_1DAF80640()
{
  v200 = v0;
  if (*(v0 + 4400))
  {
    v1 = *(v0 + 5176);
    sub_1DAF332B8((v0 + 4376), v0 + 4496);
    v2 = sub_1DAF81934;
    v3 = v1;
LABEL_3:

    return MEMORY[0x1EEE6DFA0](v2, v3, 0);
  }

  v188 = (v0 + 3656);
  v4 = (v0 + 4104);
  sub_1DAF40AEC(v0 + 4376, &qword_1ECC0E7A0, &unk_1DB0A5140);
  v180 = *(v0 + 5208);
  v5 = *(v0 + 5040);
  *(v0 + 2896) = *(v5 + 488);
  v6 = *(v5 + 552);
  v8 = *(v5 + 504);
  v7 = *(v5 + 520);
  *(v0 + 2944) = *(v5 + 536);
  *(v0 + 2960) = v6;
  *(v0 + 2912) = v8;
  *(v0 + 2928) = v7;
  v10 = *(v5 + 584);
  v9 = *(v5 + 600);
  v11 = *(v5 + 568);
  *(v0 + 3024) = *(v5 + 616);
  *(v0 + 2992) = v10;
  *(v0 + 3008) = v9;
  *(v0 + 2976) = v11;
  v12 = *(v5 + 704);
  *(v0 + 5264) = v12;
  v194 = *(v5 + 712);
  *(v0 + 5272) = v194;
  v177 = *(v5 + 624);
  v13 = *(v5 + 632);
  v14 = *(v5 + 640);
  v15 = *(v5 + 656);
  v16 = *(v5 + 688);
  *(v0 + 3752) = *(v5 + 672);
  *(v0 + 3768) = v16;
  *(v0 + 3720) = v14;
  *(v0 + 3736) = v15;
  v186 = v12;
  v187 = v0 + 2896;
  v191 = v13;
  if (*(v0 + 3728))
  {
    v17 = *(v5 + 640);
    v18 = *(v5 + 656);
    v19 = *(v5 + 688);
    *(v0 + 4136) = *(v5 + 672);
    *(v0 + 4152) = v19;
    *(v0 + 4120) = v18;
LABEL_10:
    *v4 = v17;
    goto LABEL_11;
  }

  *(v0 + 1672) = *(v5 + 488);
  v20 = *(v5 + 504);
  v21 = *(v5 + 520);
  v22 = *(v5 + 552);
  *(v0 + 1720) = *(v5 + 536);
  *(v0 + 1736) = v22;
  *(v0 + 1688) = v20;
  *(v0 + 1704) = v21;
  v23 = *(v5 + 568);
  v24 = *(v5 + 584);
  v25 = *(v5 + 600);
  *(v0 + 1800) = *(v5 + 616);
  *(v0 + 1768) = v24;
  *(v0 + 1784) = v25;
  *(v0 + 1752) = v23;
  if (sub_1DAF8B9A8(v0 + 1672) == 1)
  {
    v17 = 0uLL;
    *(v0 + 4136) = 0u;
    *(v0 + 4152) = 0u;
    *(v0 + 4120) = 0u;
    goto LABEL_10;
  }

  v85 = *(v0 + 1744);
  v86 = *(v0 + 1752);
  v87 = *(v0 + 1760);
  v88 = *(v0 + 1768);
  v89 = *(v0 + 1776);
  v90 = *(v0 + 1784);
  *(v0 + 4104) = *(v0 + 1672) + 49;
  *(v0 + 4112) = 0xE100000000000000;
  *(v0 + 4120) = v85;
  *(v0 + 4128) = v86;
  *(v0 + 4136) = v87;
  *(v0 + 4144) = v88;
  *(v0 + 4152) = v89;
  *(v0 + 4160) = v90;

LABEL_11:
  v26 = (v0 + 3784);
  v27 = *(v0 + 5040);
  v28 = *(v0 + 4120);
  *(v0 + 3976) = *v4;
  *(v0 + 3992) = v28;
  v29 = *(v0 + 4152);
  *(v0 + 4008) = *(v0 + 4136);
  *(v0 + 4024) = v29;
  *(v0 + 2760) = *(v27 + 720);
  v30 = *(v27 + 784);
  v32 = *(v27 + 736);
  v31 = *(v27 + 752);
  *(v0 + 2808) = *(v27 + 768);
  *(v0 + 2824) = v30;
  *(v0 + 2776) = v32;
  *(v0 + 2792) = v31;
  v34 = *(v27 + 816);
  v33 = *(v27 + 832);
  v35 = *(v27 + 800);
  *(v0 + 2888) = *(v27 + 848);
  *(v0 + 2856) = v34;
  *(v0 + 2872) = v33;
  *(v0 + 2840) = v35;
  v36 = *(v27 + 872);
  v37 = *(v27 + 888);
  v38 = *(v27 + 920);
  *(v0 + 3688) = *(v27 + 904);
  *(v0 + 3704) = v38;
  *v188 = v36;
  *(v0 + 3672) = v37;
  v183 = (v0 + 4232);
  v184 = v0 + 2760;
  if (*(v0 + 3664))
  {
    v39 = *(v27 + 872);
    v40 = *(v27 + 888);
    v41 = *(v27 + 920);
    *(v0 + 3816) = *(v27 + 904);
    *(v0 + 3832) = v41;
    *(v0 + 3800) = v40;
LABEL_15:
    *v26 = v39;
    goto LABEL_16;
  }

  *(v0 + 2624) = *(v27 + 720);
  v42 = *(v27 + 736);
  v43 = *(v27 + 752);
  v44 = *(v27 + 784);
  *(v0 + 2672) = *(v27 + 768);
  *(v0 + 2688) = v44;
  *(v0 + 2640) = v42;
  *(v0 + 2656) = v43;
  v45 = *(v27 + 800);
  v46 = *(v27 + 816);
  v47 = *(v27 + 832);
  *(v0 + 2752) = *(v27 + 848);
  *(v0 + 2720) = v46;
  *(v0 + 2736) = v47;
  *(v0 + 2704) = v45;
  if (sub_1DAF8B9A8(v0 + 2624) == 1)
  {
    v39 = 0uLL;
    *(v0 + 3816) = 0u;
    *(v0 + 3832) = 0u;
    *(v0 + 3800) = 0u;
    goto LABEL_15;
  }

  v91 = *(v0 + 2696);
  v92 = *(v0 + 2704);
  v93 = *(v0 + 2712);
  v94 = *(v0 + 2720);
  v95 = *(v0 + 2728);
  v96 = *(v0 + 2736);
  *(v0 + 3784) = *(v0 + 2624) + 49;
  *(v0 + 3792) = 0xE100000000000000;
  *(v0 + 3800) = v91;
  *(v0 + 3808) = v92;
  *(v0 + 3816) = v93;
  *(v0 + 3824) = v94;
  *(v0 + 3832) = v95;
  *(v0 + 3840) = v96;

LABEL_16:
  v48 = *(v0 + 5152);
  v49 = *(v0 + 5040);
  v50 = *(v0 + 3800);
  *(v0 + 3912) = *v26;
  *(v0 + 3928) = v50;
  v51 = *(v0 + 3832);
  *(v0 + 3944) = *(v0 + 3816);
  *(v0 + 3960) = v51;
  v178 = v49[107];
  v52 = v49[108];
  v53 = v49[31];
  v54 = *(v53 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
  sub_1DAF3523C(v53 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, v0 + 4416);
  v55 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());
  v56 = &v55[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
  *v56 = 0x726F5F646E65732FLL;
  *(v56 + 1) = 0xE900000000000064;
  v57 = &v55[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
  *v57 = 0x746F5F646E65732FLL;
  *(v57 + 1) = 0xE900000000000064;
  sub_1DAF3523C(v0 + 4416, v0 + 4456);
  sub_1DAF40A84(v187, v0 + 2488, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF4ED88(v186, v194);

  sub_1DAF40A84(v0 + 3720, v0 + 3592, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  v58 = v54;
  sub_1DAF40A84(v188, v0 + 3848, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

  sub_1DAF40A84(v184, v0 + 1944, &qword_1ECC0E798, &qword_1DB0A5120);
  v59 = sub_1DB016E04(v58, (v0 + 4456));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4416));
  v60 = v49[31];
  v49[31] = v59;

  sub_1DB09D1C4();
  v61 = sub_1DB09D174();
  v63 = v62;
  v64 = sub_1DB09D174();
  *(v0 + 4232) = v61;
  *(v0 + 4240) = v63;
  *(v0 + 4248) = v64;
  *(v0 + 4256) = v65;
  *(v0 + 4264) = v178;
  *(v0 + 4272) = v52;
  v66 = v49[22];
  v196 = v49[21];
  v197 = v66;

  sub_1DB09DE44();

  v198 = 0x737420676E697375;
  v199 = 0xEB00000000206469;
  v67 = sub_1DB09D174();
  MEMORY[0x1E127FE90](v67);

  MEMORY[0x1E127FE90](0x20646975677420, 0xE700000000000000);
  if (v52)
  {
    v68 = v178;
  }

  else
  {
    v68 = 0x3E6C696E3CLL;
  }

  if (v52)
  {
    v69 = v52;
  }

  else
  {
    v69 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v68, v69);

  v70 = v198;
  LOBYTE(v198) = 8;
  CoreODILogger.debug(_:category:)(v70, v199, &v198);

  v71 = sub_1DB09CC54();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  sub_1DB09CC44();
  v74 = (v0 + 4232);
  v75 = *(v0 + 4248);
  *(v0 + 4280) = *v183;
  *(v0 + 4296) = v75;
  *(v0 + 4312) = *(v0 + 4264);
  sub_1DAF8B9C0();
  v76 = sub_1DB09CC34();
  *(v0 + 5280) = v76;
  *(v0 + 5288) = v77;
  if (v180)
  {
    v78 = *(v0 + 5168);
    (*(*(v0 + 5144) + 8))(*(v0 + 5152), *(v0 + 5136));

    sub_1DAF4AC40(v186, v194);
    sub_1DAF40AEC(v187, &qword_1ECC0E798, &qword_1DB0A5120);

    sub_1DAF40AEC(v0 + 4104, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    sub_1DAF40AEC(v184, &qword_1ECC0E798, &qword_1DB0A5120);
    sub_1DAF40AEC(v0 + 3784, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

    sub_1DAF8BA14(v0 + 3168);
    sub_1DAF8BA68(v183);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));
    v103 = *(v0 + 5152);
    v104 = *(v0 + 5128);
    v105 = *(v0 + 5104);
    v106 = *(v0 + 5096);
    v107 = *(v0 + 5080);
    v108 = *(v0 + 5072);
    v109 = *(v0 + 5064);

    v110 = *(v0 + 8);

    return v110();
  }

  v79 = v76;
  v80 = v77;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E750, &qword_1DB0A5150);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1DB0A04E0;
  *(v81 + 32) = v79;
  *(v81 + 40) = v80;
  v189 = v81;
  if (*(v0 + 3176))
  {
    v82 = *(v0 + 3224);
    v83 = *(v0 + 3216);
    sub_1DAF40674(v79, v80);
    sub_1DAF40A84(v0 + 3168, v0 + 4040, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    sub_1DAF8BA14(v0 + 3168);

    sub_1DAF40AEC(v0 + 3168, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    v84 = v83;
  }

  else
  {
    sub_1DAF40674(v79, v80);
    sub_1DAF8BA14(v0 + 3168);
    v84 = 0;
    v82 = 0;
  }

  if (v191)
  {
    v97 = v177;
  }

  else
  {
    v97 = 0;
  }

  if (v191)
  {
    v98 = v191;
  }

  else
  {
    v98 = 0xE000000000000000;
  }

  v99 = *(v0 + 4232);
  *(v0 + 5296) = v99;
  v100 = *(v0 + 4240);
  *(v0 + 5304) = v100;
  sub_1DAFDE06C(v84, v82, v99, v100, v97, v98);
  *(v0 + 5312) = v101;
  *(v0 + 5320) = v102;
  v111 = v101;
  v192 = v102;
  v112 = v0 + 4696;

  v182 = v111;
  if (!v111 || !*(v111 + 24))
  {
    goto LABEL_48;
  }

  v113 = *(v0 + 5128);
  v114 = *(v0 + 5120);
  v115 = *(v0 + 5112);
  v116 = *(v111 + 16);

  sub_1DB09D714();
  v185 = sub_1DB09D6D4();
  v118 = v117;

  v119 = *(v114 + 8);
  v119(v113, v115);
  if (v118 >> 60 != 15)
  {
    v112 = v0 + 4696;
    if (v192 && *(v192 + 24))
    {
      v123 = *(v0 + 5128);
      v124 = *(v0 + 5112);
      v125 = *(v192 + 16);
      v126 = *(v192 + 24);

      sub_1DB09D714();
      v181 = sub_1DB09D6D4();
      v128 = v127;

      v119(v123, v124);
      if (v128 >> 60 != 15)
      {
        v163 = v128;
        v179 = v118;
        sub_1DAF40674(v79, v80);
        v122 = v189;
        v165 = *(v189 + 16);
        v164 = *(v189 + 24);
        v166 = v165 + 1;
        v120 = v194;
        v121 = (v0 + 3976);
        v112 = v0 + 4696;
        if (v165 >= v164 >> 1)
        {
          v122 = sub_1DAF735C8((v164 > 1), v165 + 1, 1, v189);
        }

        *(v122 + 2) = v166;
        v167 = &v122[16 * v165];
        *(v167 + 4) = v79;
        *(v167 + 5) = v80;
        sub_1DAF40674(v181, v163);
        v168 = *(v122 + 3);
        if ((v165 + 2) > (v168 >> 1))
        {
          v122 = sub_1DAF735C8((v168 > 1), v165 + 2, 1, v122);
        }

        v169 = *(v0 + 5152);
        v170 = *(v0 + 5040);
        *(v122 + 2) = v165 + 2;
        v171 = &v122[16 * v166];
        *(v171 + 4) = v181;
        *(v171 + 5) = v163;
        v172 = *(v170 + 176);
        v196 = *(v170 + 168);
        v197 = v172;
        v198 = 0;
        v199 = 0xE000000000000000;

        sub_1DB09DE44();

        v198 = 0x6469737420726F66;
        v199 = 0xE900000000000020;
        v173 = sub_1DB09D174();
        MEMORY[0x1E127FE90](v173);

        MEMORY[0x1E127FE90](0x44495354636E6520, 0xEE00203A61746144);
        v174 = sub_1DB09D014();
        MEMORY[0x1E127FE90](v174);

        v175 = v198;
        LOBYTE(v198) = 8;
        CoreODILogger.debug(_:category:)(v175, v199, &v198);
        sub_1DAF4AC40(v185, v179);

        sub_1DAF4AC40(v181, v163);

        v74 = (v0 + 4232);
        goto LABEL_49;
      }

      sub_1DAF4AC40(v185, v118);
      v74 = (v0 + 4232);
      goto LABEL_42;
    }

    sub_1DAF4AC40(v185, v118);
LABEL_48:
    v120 = v194;
    v121 = (v0 + 3976);
    v122 = v189;
    goto LABEL_49;
  }

LABEL_42:
  v120 = v194;
  v121 = (v0 + 3976);
  v122 = v189;
  v112 = v0 + 4696;
LABEL_49:
  *(v0 + 5328) = v122;
  v129 = *(v0 + 5040);
  v130 = (*(v0 + 1668) - 1) < 2;
  sub_1DAF3523C(v0 + 4536, v0 + 4576);
  v131 = swift_allocObject();
  *(v0 + 5336) = v131;
  *(v131 + 16) = v129;
  sub_1DAF332B8((v0 + 4576), v131 + 24);
  *(v131 + 64) = v130;
  v132 = v121[1];
  *(v131 + 72) = *v121;
  *(v131 + 88) = v132;
  v133 = v121[3];
  *(v131 + 104) = v121[2];
  *(v131 + 120) = v133;
  v134 = *(v0 + 3928);
  *(v131 + 136) = *(v0 + 3912);
  *(v131 + 152) = v134;
  v135 = *(v0 + 3960);
  *(v131 + 168) = *(v0 + 3944);
  *(v131 + 184) = v135;
  v136 = *v74;
  v137 = v74[1];
  *(v131 + 232) = v74[2];
  *(v131 + 216) = v137;
  *(v131 + 200) = v136;
  *(v131 + 248) = v182;
  *(v131 + 256) = v192;
  v138 = *(v112 + 16);
  *(v131 + 264) = *v112;
  *(v131 + 280) = v138;
  *(v131 + 296) = *(v112 + 32);
  v139 = *(v0 + 5040);
  if (v120 >> 60 != 15)
  {
    v155 = *(v0 + 5040);

    sub_1DAF8BC10(v74, v0 + 4328);

    sub_1DAF8BBB4(v112, v0 + 4776);
    if (qword_1EE301828 != -1)
    {
      swift_once();
    }

    v156 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
    v157 = qword_1EE301830;
    *(v0 + 5344) = qword_1EE301830;
    v158 = *(v0 + 4680);
    v159 = *(v0 + 4688);
    __swift_project_boxed_opaque_existential_1((v0 + 4656), v158);
    LOBYTE(v198) = v156;
    (*(v159 + 40))(&v198, v158, v159);
    *(v0 + 5352) = *(v0 + 4960);
    v160 = *(v0 + 4680);
    v161 = *(v0 + 4688);
    __swift_project_boxed_opaque_existential_1((v0 + 4656), v160);
    *(v0 + 5368) = (*(v161 + 24))(v160, v161);
    *(v0 + 5376) = v162;
    *(v0 + 5024) = *(v0 + 4704);
    *(v0 + 5384) = *(v0 + 4712);
    *(v0 + 5392) = *(v0 + 4720);
    *(v0 + 1666) = *(v0 + 4728);
    sub_1DAF8BC6C(v0 + 5024, v0 + 5016);

    v2 = sub_1DAF83098;
    v3 = v157;
    goto LABEL_3;
  }

  sub_1DAF8BBB4(v112, v0 + 4736);

  v140 = *(v139 + 176);
  v198 = *(v139 + 168);
  v199 = v140;
  LOBYTE(v196) = 8;

  CoreODILogger.error(_:category:)(0xD00000000000002FLL, 0x80000001DB0C3600, &v196);

  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v141 = MEMORY[0x1E69E7CC0];
  v142 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v142 + 16))
  {
    v143 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
    if (v144)
    {
      sub_1DAF409DC(*(v142 + 56) + 32 * v143, v0 + 4880);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      if (swift_dynamicCast())
      {
        v141 = *(v0 + 5008);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v141 = sub_1DAF72FF4(0, *(v141 + 2) + 1, 1, v141);
  }

  v146 = *(v141 + 2);
  v145 = *(v141 + 3);
  if (v146 >= v145 >> 1)
  {
    v141 = sub_1DAF72FF4((v145 > 1), v146 + 1, 1, v141);
  }

  v147 = *(v0 + 5168);
  v195 = *(v0 + 1668);
  v190 = *(v0 + 5160);
  v193 = *(v0 + 5032);
  *(v141 + 2) = v146 + 1;
  v148 = &v141[56 * v146];
  *(v148 + 4) = 0;
  *(v148 + 5) = 0xE000000000000000;
  *(v148 + 6) = 0xD00000000000002DLL;
  *(v148 + 7) = 0x80000001DB0C3590;
  *(v148 + 8) = 0xD00000000000001CLL;
  *(v148 + 9) = 0x80000001DB0C3630;
  *(v148 + 10) = 502;
  *(v0 + 4840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  *(v0 + 4816) = v141;
  sub_1DAF40D20((v0 + 4816), (v0 + 4848));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v198 = v142;
  sub_1DAF3B11C((v0 + 4848), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v150 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v151 = sub_1DB09D6B4();
  v152 = sub_1DB09D604();
  *(v0 + 5568) = [v150 initWithDomain:v151 code:-3300 userInfo:v152];

  sub_1DB041E04(v190, v147, v0 + 4616);
  *(v0 + 5576) = *(v0 + 4616);
  *(v0 + 5584) = *(v0 + 4624);
  *(v0 + 3161) = *(v0 + 4632);
  *(v0 + 5592) = *(v0 + 4640);
  *(v0 + 4992) = *(v0 + 4640);
  sub_1DAF40A84(v0 + 4992, v0 + 4976, &unk_1ECC0EAE0, &unk_1DB0A4650);

  sub_1DAF3523C(v0 + 4536, v193 + 424);
  v153 = swift_task_alloc();
  *(v0 + 5608) = v153;
  *v153 = v0;
  v153[1] = sub_1DAF854B4;
  v154 = *(v0 + 5040);

  return sub_1DAF8AD6C(v0 + 1456, 0, (v195 - 1) < 2);
}

uint64_t sub_1DAF81934()
{
  v1 = *(*(v0 + 5176) + 208);
  v2 = swift_task_alloc();
  *(v0 + 5232) = v2;
  *v2 = v0;
  v2[1] = sub_1DAF819C8;

  return sub_1DAFA5D90();
}

uint64_t sub_1DAF819C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[617] = v2;
  v4[618] = a1;
  v4[619] = a2;
  v5 = v3[654];
  v6 = v3[630];
  v8 = *v2;
  v4[655] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF81AE8, v6, 0);
}

uint64_t sub_1DAF81AE8()
{
  v1 = v0[655];
  v2 = v0[651];
  if (v1)
  {
    v3 = v0[618];
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = v0[655];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 562, v0[565]);
  sub_1DAFDC9D4(v3, v4);
  v0[656] = v2;
  if (v2)
  {
    v6 = v0[646];

    sub_1DAF8BA14((v0 + 396));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 562);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 567);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 582);
    v7 = v0[644];
    v8 = v0[641];
    v9 = v0[638];
    v10 = v0[637];
    v11 = v0[635];
    v12 = v0[634];
    v13 = v0[633];

    v14 = v0[1];

    return v14();
  }

  else
  {

    memcpy(v0 + 44, v0 + 86, 0x150uLL);
    memcpy(v0 + 2, v0 + 86, 0x150uLL);
    v16 = swift_task_alloc();
    v0[657] = v16;
    *v16 = v0;
    v16[1] = sub_1DAF81CD4;
    v17 = v0[630];

    return sub_1DAF88D7C((v0 + 2));
  }
}

uint64_t sub_1DAF81CD4()
{
  v1 = *(*v0 + 5256);
  v2 = *(*v0 + 5040);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF81DE4, v2, 0);
}

uint64_t sub_1DAF81DE4()
{
  v193 = v0;
  v1 = (v0 + 3656);
  v2 = (v0 + 4104);
  sub_1DAF8BED4(v0 + 352);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4496));
  v178 = *(v0 + 5248);
  v3 = *(v0 + 5040);
  *(v0 + 2896) = *(v3 + 488);
  v4 = *(v3 + 536);
  v5 = *(v3 + 552);
  v6 = *(v3 + 520);
  *(v0 + 2912) = *(v3 + 504);
  *(v0 + 2960) = v5;
  *(v0 + 2944) = v4;
  *(v0 + 2928) = v6;
  v8 = *(v3 + 584);
  v7 = *(v3 + 600);
  v9 = *(v3 + 616);
  *(v0 + 2976) = *(v3 + 568);
  *(v0 + 3024) = v9;
  *(v0 + 3008) = v7;
  *(v0 + 2992) = v8;
  v10 = *(v3 + 704);
  *(v0 + 5264) = v10;
  v187 = *(v3 + 712);
  *(v0 + 5272) = v187;
  v172 = *(v3 + 624);
  v11 = *(v3 + 632);
  v12 = *(v3 + 688);
  v14 = *(v3 + 640);
  v13 = *(v3 + 656);
  *(v0 + 3752) = *(v3 + 672);
  *(v0 + 3768) = v12;
  *(v0 + 3720) = v14;
  *(v0 + 3736) = v13;
  if (*(v0 + 3728))
  {
    v15 = *(v3 + 640);
    v16 = *(v3 + 656);
    v17 = *(v3 + 688);
    *(v0 + 4136) = *(v3 + 672);
    *(v0 + 4152) = v17;
    *(v0 + 4120) = v16;
LABEL_5:
    *v2 = v15;
    goto LABEL_6;
  }

  *(v0 + 1672) = *(v3 + 488);
  v18 = *(v3 + 504);
  v19 = *(v3 + 520);
  v20 = *(v3 + 552);
  *(v0 + 1720) = *(v3 + 536);
  *(v0 + 1736) = v20;
  *(v0 + 1688) = v18;
  *(v0 + 1704) = v19;
  v21 = *(v3 + 568);
  v22 = *(v3 + 584);
  v23 = *(v3 + 600);
  *(v0 + 1800) = *(v3 + 616);
  *(v0 + 1768) = v22;
  *(v0 + 1784) = v23;
  *(v0 + 1752) = v21;
  if (sub_1DAF8B9A8(v0 + 1672) == 1)
  {
    v15 = 0uLL;
    *(v0 + 4136) = 0u;
    *(v0 + 4152) = 0u;
    *(v0 + 4120) = 0u;
    goto LABEL_5;
  }

  v82 = *(v0 + 1744);
  v83 = *(v0 + 1752);
  v84 = *(v0 + 1760);
  v85 = *(v0 + 1768);
  v86 = *(v0 + 1776);
  v87 = *(v0 + 1784);
  *(v0 + 4104) = *(v0 + 1672) + 49;
  *(v0 + 4112) = 0xE100000000000000;
  *(v0 + 4120) = v82;
  *(v0 + 4128) = v83;
  *(v0 + 4136) = v84;
  *(v0 + 4144) = v85;
  *(v0 + 4152) = v86;
  *(v0 + 4160) = v87;

  v1 = (v0 + 3656);

LABEL_6:
  v24 = (v0 + 3784);
  v25 = *(v0 + 5040);
  v26 = *(v0 + 4120);
  *(v0 + 3976) = *v2;
  *(v0 + 3992) = v26;
  v27 = *(v0 + 4152);
  *(v0 + 4008) = *(v0 + 4136);
  *(v0 + 4024) = v27;
  *(v0 + 2760) = *(v25 + 720);
  v28 = *(v25 + 784);
  v30 = *(v25 + 736);
  v29 = *(v25 + 752);
  *(v0 + 2808) = *(v25 + 768);
  *(v0 + 2824) = v28;
  *(v0 + 2776) = v30;
  *(v0 + 2792) = v29;
  v32 = *(v25 + 816);
  v31 = *(v25 + 832);
  v33 = *(v25 + 800);
  *(v0 + 2888) = *(v25 + 848);
  *(v0 + 2856) = v32;
  *(v0 + 2872) = v31;
  *(v0 + 2840) = v33;
  v34 = *(v25 + 872);
  v35 = *(v25 + 888);
  v36 = *(v25 + 920);
  v1[2] = *(v25 + 904);
  v1[3] = v36;
  *v1 = v34;
  v1[1] = v35;
  v181 = (v0 + 4232);
  v183 = v0 + 2760;
  v184 = v11;
  if (*(v0 + 3664))
  {
    v37 = v10;
    v38 = *(v25 + 872);
    v39 = *(v25 + 888);
    v40 = *(v25 + 920);
    *(v0 + 3816) = *(v25 + 904);
    *(v0 + 3832) = v40;
    *(v0 + 3800) = v39;
LABEL_10:
    *v24 = v38;
    goto LABEL_11;
  }

  *(v0 + 2624) = *(v25 + 720);
  v41 = *(v25 + 736);
  v42 = *(v25 + 752);
  v43 = *(v25 + 784);
  *(v0 + 2672) = *(v25 + 768);
  *(v0 + 2688) = v43;
  *(v0 + 2640) = v41;
  *(v0 + 2656) = v42;
  v44 = *(v25 + 800);
  v45 = *(v25 + 816);
  v46 = *(v25 + 832);
  *(v0 + 2752) = *(v25 + 848);
  *(v0 + 2720) = v45;
  *(v0 + 2736) = v46;
  *(v0 + 2704) = v44;
  v37 = v10;
  if (sub_1DAF8B9A8(v0 + 2624) == 1)
  {
    v38 = 0uLL;
    *(v0 + 3816) = 0u;
    *(v0 + 3832) = 0u;
    *(v0 + 3800) = 0u;
    goto LABEL_10;
  }

  v88 = *(v0 + 2696);
  v89 = *(v0 + 2704);
  v90 = *(v0 + 2712);
  v91 = *(v0 + 2720);
  v92 = *(v0 + 2728);
  v93 = *(v0 + 2736);
  *(v0 + 3784) = *(v0 + 2624) + 49;
  *(v0 + 3792) = 0xE100000000000000;
  *(v0 + 3800) = v88;
  *(v0 + 3808) = v89;
  *(v0 + 3816) = v90;
  *(v0 + 3824) = v91;
  *(v0 + 3832) = v92;
  *(v0 + 3840) = v93;

  v24 = (v0 + 3784);

LABEL_11:
  v173 = v24;
  v47 = *(v0 + 5152);
  v48 = *(v0 + 5040);
  v49 = v24[1];
  *(v0 + 3912) = *v24;
  *(v0 + 3928) = v49;
  v50 = v24[3];
  *(v0 + 3944) = v24[2];
  *(v0 + 3960) = v50;
  v175 = v48[107];
  v51 = v48[108];
  v52 = v48[31];
  v53 = *(v52 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
  sub_1DAF3523C(v52 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, v0 + 4416);
  v54 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());
  v55 = &v54[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
  *v55 = 0x726F5F646E65732FLL;
  *(v55 + 1) = 0xE900000000000064;
  v56 = &v54[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
  *v56 = 0x746F5F646E65732FLL;
  *(v56 + 1) = 0xE900000000000064;
  sub_1DAF3523C(v0 + 4416, v0 + 4456);
  sub_1DAF40A84(v0 + 2896, v0 + 2488, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF4ED88(v37, v187);

  sub_1DAF40A84(v0 + 3720, v0 + 3592, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  v57 = v53;
  sub_1DAF40A84(v0 + 3656, v0 + 3848, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

  sub_1DAF40A84(v183, v0 + 1944, &qword_1ECC0E798, &qword_1DB0A5120);
  v58 = sub_1DB016E04(v57, (v0 + 4456));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4416));
  v59 = v48[31];
  v48[31] = v58;

  sub_1DB09D1C4();
  v60 = sub_1DB09D174();
  v62 = v61;
  v63 = sub_1DB09D174();
  *(v0 + 4232) = v60;
  *(v0 + 4240) = v62;
  *(v0 + 4248) = v63;
  *(v0 + 4256) = v64;
  *(v0 + 4264) = v175;
  *(v0 + 4272) = v51;
  v65 = v48[22];
  v189 = v48[21];
  v190 = v65;

  sub_1DB09DE44();

  v191 = 0x737420676E697375;
  v192 = 0xEB00000000206469;
  v66 = sub_1DB09D174();
  MEMORY[0x1E127FE90](v66);

  MEMORY[0x1E127FE90](0x20646975677420, 0xE700000000000000);
  if (v51)
  {
    v67 = v175;
  }

  else
  {
    v67 = 0x3E6C696E3CLL;
  }

  if (!v51)
  {
    v51 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v67, v51);

  v68 = v191;
  LOBYTE(v191) = 8;
  CoreODILogger.debug(_:category:)(v68, v192, &v191);

  v69 = sub_1DB09CC54();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  sub_1DB09CC44();
  v72 = (v0 + 4232);
  v73 = *(v0 + 4248);
  *(v0 + 4280) = *v181;
  *(v0 + 4296) = v73;
  *(v0 + 4312) = *(v0 + 4264);
  sub_1DAF8B9C0();
  v74 = sub_1DB09CC34();
  *(v0 + 5280) = v74;
  *(v0 + 5288) = v75;
  if (v178)
  {
    v76 = *(v0 + 5168);
    (*(*(v0 + 5144) + 8))(*(v0 + 5152), *(v0 + 5136));

    sub_1DAF4AC40(v37, v187);
    sub_1DAF40AEC(v0 + 2896, &qword_1ECC0E798, &qword_1DB0A5120);

    sub_1DAF40AEC(v0 + 4104, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    sub_1DAF40AEC(v183, &qword_1ECC0E798, &qword_1DB0A5120);
    sub_1DAF40AEC(v173, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

    sub_1DAF8BA14(v0 + 3168);
    sub_1DAF8BA68(v181);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));
    v100 = *(v0 + 5152);
    v101 = *(v0 + 5128);
    v102 = *(v0 + 5104);
    v103 = *(v0 + 5096);
    v104 = *(v0 + 5080);
    v105 = *(v0 + 5072);
    v106 = *(v0 + 5064);

    v107 = *(v0 + 8);

    return v107();
  }

  v77 = v74;
  v78 = v75;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E750, &qword_1DB0A5150);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1DB0A04E0;
  *(v79 + 32) = v77;
  *(v79 + 40) = v78;
  if (*(v0 + 3176))
  {
    v80 = *(v0 + 3224);
    v81 = *(v0 + 3216);
    sub_1DAF40674(v77, v78);
    sub_1DAF40A84(v0 + 3168, v0 + 4040, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    sub_1DAF8BA14(v0 + 3168);

    sub_1DAF40AEC(v0 + 3168, &qword_1ECC0E7C0, &qword_1DB0A51B0);
  }

  else
  {
    sub_1DAF40674(v77, v78);
    sub_1DAF8BA14(v0 + 3168);
    v81 = 0;
    v80 = 0;
  }

  v94 = v184;
  if (v184)
  {
    v95 = v172;
  }

  else
  {
    v95 = 0;
  }

  if (!v184)
  {
    v94 = 0xE000000000000000;
  }

  v96 = *(v0 + 4232);
  *(v0 + 5296) = v96;
  v97 = *(v0 + 4240);
  *(v0 + 5304) = v97;
  sub_1DAFDE06C(v81, v80, v96, v97, v95, v94);
  *(v0 + 5312) = v98;
  *(v0 + 5320) = v99;
  v109 = v98;
  v185 = v99;
  v110 = v0 + 4696;

  if (v109 && *(v109 + 24))
  {
    v180 = v79;
    v111 = *(v0 + 5128);
    v112 = *(v0 + 5120);
    v113 = *(v0 + 5112);
    v114 = *(v109 + 16);

    sub_1DB09D714();
    v179 = sub_1DB09D6D4();
    v116 = v115;

    v117 = *(v112 + 8);
    v117(v111, v113);
    if (v116 >> 60 == 15)
    {
      v79 = v180;
      v72 = (v0 + 4232);
      v118 = v187;
      v110 = v0 + 4696;
      goto LABEL_43;
    }

    v119 = v116;
    v110 = v0 + 4696;
    if (v185 && *(v185 + 24))
    {
      v120 = *(v0 + 5128);
      v176 = *(v0 + 5112);
      v177 = v119;
      v121 = *(v185 + 16);

      sub_1DB09D714();
      v174 = sub_1DB09D6D4();
      v123 = v122;

      v117(v120, v176);
      if (v123 >> 60 != 15)
      {
        sub_1DAF40674(v77, v78);
        v79 = v180;
        v160 = *(v180 + 16);
        v159 = *(v180 + 24);
        v161 = v160 + 1;
        v118 = v187;
        if (v160 >= v159 >> 1)
        {
          v79 = sub_1DAF735C8((v159 > 1), v160 + 1, 1, v180);
        }

        *(v79 + 16) = v161;
        v162 = v79 + 16 * v160;
        *(v162 + 32) = v77;
        *(v162 + 40) = v78;
        sub_1DAF40674(v174, v123);
        v163 = *(v79 + 24);
        v164 = v160 + 2;
        if ((v160 + 2) > (v163 >> 1))
        {
          v79 = sub_1DAF735C8((v163 > 1), v160 + 2, 1, v79);
        }

        v165 = *(v0 + 5152);
        v166 = *(v0 + 5040);
        *(v79 + 16) = v164;
        v167 = v79 + 16 * v161;
        *(v167 + 32) = v174;
        *(v167 + 40) = v123;
        v168 = *(v166 + 176);
        v189 = *(v166 + 168);
        v190 = v168;
        v191 = 0;
        v192 = 0xE000000000000000;

        sub_1DB09DE44();

        v191 = 0x6469737420726F66;
        v192 = 0xE900000000000020;
        v169 = sub_1DB09D174();
        MEMORY[0x1E127FE90](v169);

        MEMORY[0x1E127FE90](0x44495354636E6520, 0xEE00203A61746144);
        v170 = sub_1DB09D014();
        MEMORY[0x1E127FE90](v170);

        v171 = v191;
        LOBYTE(v191) = 8;
        CoreODILogger.debug(_:category:)(v171, v192, &v191);
        sub_1DAF4AC40(v179, v177);

        sub_1DAF4AC40(v174, v123);

        v72 = (v0 + 4232);
        v110 = v0 + 4696;
        goto LABEL_43;
      }

      v119 = v177;
      v124 = v179;
    }

    else
    {
      v124 = v179;
    }

    sub_1DAF4AC40(v124, v119);
    v79 = v180;
    v72 = (v0 + 4232);
  }

  v118 = v187;
LABEL_43:
  *(v0 + 5328) = v79;
  v125 = *(v0 + 5040);
  v126 = (*(v0 + 1668) - 1) < 2;
  sub_1DAF3523C(v0 + 4536, v0 + 4576);
  v127 = swift_allocObject();
  *(v0 + 5336) = v127;
  *(v127 + 16) = v125;
  sub_1DAF332B8((v0 + 4576), v127 + 24);
  *(v127 + 64) = v126;
  v128 = *(v0 + 3992);
  *(v127 + 72) = *(v0 + 3976);
  *(v127 + 88) = v128;
  v129 = *(v0 + 4024);
  *(v127 + 104) = *(v0 + 4008);
  *(v127 + 120) = v129;
  v130 = *(v0 + 3928);
  *(v127 + 136) = *(v0 + 3912);
  *(v127 + 152) = v130;
  v131 = *(v0 + 3960);
  *(v127 + 168) = *(v0 + 3944);
  *(v127 + 184) = v131;
  v132 = *v72;
  v133 = v72[1];
  *(v127 + 232) = v72[2];
  *(v127 + 216) = v133;
  *(v127 + 200) = v132;
  *(v127 + 248) = v109;
  *(v127 + 256) = v185;
  v134 = *(v110 + 16);
  *(v127 + 264) = *v110;
  *(v127 + 280) = v134;
  *(v127 + 296) = *(v110 + 32);
  v135 = *(v0 + 5040);
  if (v118 >> 60 == 15)
  {

    sub_1DAF8BBB4(v110, v0 + 4736);

    v136 = *(v135 + 176);
    v191 = *(v135 + 168);
    v192 = v136;
    LOBYTE(v189) = 8;

    CoreODILogger.error(_:category:)(0xD00000000000002FLL, 0x80000001DB0C3600, &v189);

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v137 = MEMORY[0x1E69E7CC0];
    v138 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v138 + 16))
    {
      v139 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v140)
      {
        sub_1DAF409DC(*(v138 + 56) + 32 * v139, v0 + 4880);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v137 = *(v0 + 5008);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_1DAF72FF4(0, *(v137 + 2) + 1, 1, v137);
    }

    v142 = *(v137 + 2);
    v141 = *(v137 + 3);
    if (v142 >= v141 >> 1)
    {
      v137 = sub_1DAF72FF4((v141 > 1), v142 + 1, 1, v137);
    }

    v143 = *(v0 + 5168);
    v182 = *(v0 + 5160);
    v188 = *(v0 + 1668);
    v186 = *(v0 + 5032);
    *(v137 + 2) = v142 + 1;
    v144 = &v137[56 * v142];
    *(v144 + 4) = 0;
    *(v144 + 5) = 0xE000000000000000;
    *(v144 + 6) = 0xD00000000000002DLL;
    *(v144 + 7) = 0x80000001DB0C3590;
    *(v144 + 8) = 0xD00000000000001CLL;
    *(v144 + 9) = 0x80000001DB0C3630;
    *(v144 + 10) = 502;
    *(v0 + 4840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *(v0 + 4816) = v137;
    sub_1DAF40D20((v0 + 4816), (v0 + 4848));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v191 = v138;
    sub_1DAF3B11C((v0 + 4848), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v146 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v147 = sub_1DB09D6B4();
    v148 = sub_1DB09D604();
    *(v0 + 5568) = [v146 initWithDomain:v147 code:-3300 userInfo:v148];

    sub_1DB041E04(v182, v143, v0 + 4616);
    *(v0 + 5576) = *(v0 + 4616);
    *(v0 + 5584) = *(v0 + 4624);
    *(v0 + 3161) = *(v0 + 4632);
    *(v0 + 5592) = *(v0 + 4640);
    *(v0 + 4992) = *(v0 + 4640);
    sub_1DAF40A84(v0 + 4992, v0 + 4976, &unk_1ECC0EAE0, &unk_1DB0A4650);

    sub_1DAF3523C(v0 + 4536, v186 + 424);
    v149 = swift_task_alloc();
    *(v0 + 5608) = v149;
    *v149 = v0;
    v149[1] = sub_1DAF854B4;
    v150 = *(v0 + 5040);

    return sub_1DAF8AD6C(v0 + 1456, 0, (v188 - 1) < 2);
  }

  else
  {
    v151 = *(v0 + 5040);

    sub_1DAF8BC10(v72, v0 + 4328);

    sub_1DAF8BBB4(v110, v0 + 4776);
    if (qword_1EE301828 != -1)
    {
      swift_once();
    }

    v152 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
    v153 = qword_1EE301830;
    *(v0 + 5344) = qword_1EE301830;
    v154 = *(v0 + 4680);
    v155 = *(v0 + 4688);
    __swift_project_boxed_opaque_existential_1((v0 + 4656), v154);
    LOBYTE(v191) = v152;
    (*(v155 + 40))(&v191, v154, v155);
    *(v0 + 5352) = *(v0 + 4960);
    v156 = *(v0 + 4680);
    v157 = *(v0 + 4688);
    __swift_project_boxed_opaque_existential_1((v0 + 4656), v156);
    *(v0 + 5368) = (*(v157 + 24))(v156, v157);
    *(v0 + 5376) = v158;
    *(v0 + 5024) = *(v0 + 4704);
    *(v0 + 5384) = *(v0 + 4712);
    *(v0 + 5392) = *(v0 + 4720);
    *(v0 + 1666) = *(v0 + 4728);
    sub_1DAF8BC6C(v0 + 5024, v0 + 5016);

    return MEMORY[0x1EEE6DFA0](sub_1DAF83098, v153, 0);
  }
}

uint64_t sub_1DAF830C0()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 5408) = v2;
  *v2 = v0;
  v2[1] = sub_1DAF8319C;
  v3 = *(v0 + 5400);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v2, 0, 0, 0x6B726F57656B6174, 0xEF29286E656B6F54, sub_1DAF5F5FC, v3, v4);
}

uint64_t sub_1DAF8319C()
{
  v1 = *(*v0 + 5408);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF83298, 0, 0);
}

uint64_t sub_1DAF832B4()
{
  v110 = v0;
  if (qword_1EE301458 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 5096);
  v2 = *(v0 + 5088);
  v4 = qword_1EE309F98;
  v3 = unk_1EE309FA0;
  v5 = byte_1EE309FA8;
  v6 = qword_1EE309FB0;
  v7 = byte_1EE309FB8;
  *(v1 + 32) = "enableTelemetry=YES";
  *(v1 + 40) = 19;
  *(v1 + 48) = 2;
  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v8 = *(v2 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    v94 = MEMORY[0x1E69E7CC0];
    LOBYTE(v93) = 2;
    v92 = 19;
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = *(v0 + 5272);
  v11 = *(v0 + 5168);
  v12 = *(v0 + 5160);
  sub_1DAF8C2B8(*(v0 + 5096), *(v0 + 5104), type metadata accessor for ODISignpost);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4D0, &unk_1DB0A5170);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  v14 = (v13 + 32);
  *(v13 + 16) = xmmword_1DB0A04E0;
  *(v13 + 64) = MEMORY[0x1E69E6158];
  *(v13 + 40) = v12;
  *(v13 + 48) = v11;

  v15 = sub_1DAF3E510(v13);
  *(v0 + 5416) = v15;
  swift_setDeallocating();
  sub_1DAF40AEC(v13 + 32, &qword_1ECC0E358, &qword_1DB0A02E0);
  swift_deallocClassInstance();
  v16 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_22;
    }

    v17 = *(*(v0 + 5264) + 16);
    v18 = *(*(v0 + 5264) + 24);
    v19 = __OFSUB__(v18, v17);
    v20 = v18 - v17;
    if (!v19)
    {
      if (v20 == 16)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
    goto LABEL_38;
  }

  if (v16)
  {
    v51 = *(v0 + 5264);
    v52 = *(v0 + 5268);
    v19 = __OFSUB__(v52, v51);
    v53 = v52 - v51;
    if (!v19)
    {
      if (v53 == 16)
      {
        goto LABEL_13;
      }

LABEL_22:
      v54 = *(v0 + 5328);
      sub_1DAF8BCC8(v0 + 5024);

      sub_1DAF8BA68(v0 + 4232);
      sub_1DAF40AEC(v0 + 2896, &qword_1ECC0E798, &qword_1DB0A5120);
      sub_1DAF40AEC(v0 + 2760, &qword_1ECC0E798, &qword_1DB0A5120);
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 5344);
      sub_1DB09DB64();
      sub_1DB09D444();
      LOBYTE(v108) = 99;
      v56 = sub_1DAF55460(v15);

      v57 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, 0, &v108, 0, v56, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000008ELL, 0x80000001DB0C2800, 339);

      swift_willThrow();
      v58 = v55[15];
      v59 = v55[16];
      v60 = v55[17];
      v61 = v55[18];
      v62 = v55[19];
      v63 = v55[20];
      *(v55 + 15) = 0u;
      *(v55 + 17) = 0u;
      *(v55 + 19) = 0u;
      goto LABEL_25;
    }

    goto LABEL_43;
  }

  if (*(v0 + 5278) != 16)
  {
    goto LABEL_22;
  }

LABEL_13:
  v105 = v15;
  v21 = *(v0 + 5344);
  v22 = *(v0 + 5272);
  v23 = *(v0 + 5264);
  v98 = *(v0 + 1666);
  v24 = v21[22];
  v107[0] = v21[21];
  v107[1] = v24;
  v108 = 0x636E6F6E206E640ELL;
  v109 = 0xEA00000000002065;

  v25 = sub_1DB09D014();
  MEMORY[0x1E127FE90](v25);

  CoreODILogger.debug(_:category:)(0x636E6F6E206E646FLL, 0xEA00000000002065, &v108);

  v26 = v21[15];
  v28 = v21[16];
  v27 = v21[17];
  v30 = v21[18];
  v29 = v21[19];
  v31 = v21[20];
  v32 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v106 = v26;
  v104 = v31;
  sub_1DAF608C4(v26, v28, v27, v30, v29, v31);
  v33 = sub_1DB09D6B4();
  v34 = [v32 initWithSuiteName_];

  v102 = v30;
  v103 = v29;
  v100 = v28;
  v101 = v27;
  if (v34)
  {
    v35 = sub_1DB09D6B4();
    v36 = [v34 BOOLForKey_];

    v37 = 1;
    if (v36)
    {
      v37 = 2;
    }

    if ((v98 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v37 = 1;
    if (!v98)
    {
LABEL_17:
      v37 |= 4uLL;
    }
  }

  v99 = v37;
  v38 = *(v0 + 5360);
  v39 = *(v0 + 5376);
  v40 = *(v0 + 5368);
  v41 = *(v0 + 5352);
  v42 = *(v0 + 5328);
  v97 = *(v0 + 5272);
  v43 = *(v0 + 5264);
  if ((v38 & 0x2000000000000000) != 0)
  {
    v67 = *(v0 + 5136);
    sub_1DAF55920(*(v0 + 5024));
    v96 = objc_allocWithZone(HEk7C2N6EkssFH3z);
    v45 = sub_1DB09D914();
    v46 = sub_1DB09D004();
    v47 = sub_1DB09D604();

    v48 = sub_1DB09D914();

    v49 = sub_1DB09D004();
    v50 = [v96 initWithY2vJelgtPFLly7lh:v45 Zwvxi3fDtAHqlF0d:v46 KufCqgU8RstLzBzT:v99 BGiN5h2SLMRO6B9R:v47 Jf7L4ypvXegQqMcE:v48 zeXRCfLmM5cdkEtz:{v49, v92, v93, v94}];
  }

  else
  {
    v44 = *(v0 + 5024);
    sub_1DAF40674(v41, v38);
    sub_1DAF55920(v44);
    v95 = objc_allocWithZone(HEk7C2N6EkssFH3z);
    v45 = sub_1DB09D004();
    sub_1DAF60AF4(v41, v38);
    v46 = sub_1DB09D004();
    v47 = sub_1DB09D604();

    v48 = sub_1DB09D914();

    v49 = sub_1DB09D004();
    v50 = [v95 initWithQAy7FB3BSYJUwsIc:v45 Zwvxi3fDtAHqlF0d:v46 KufCqgU8RstLzBzT:v99 BGiN5h2SLMRO6B9R:v47 Jf7L4ypvXegQqMcE:v48 zeXRCfLmM5cdkEtz:{v49, v92, v93, v94}];
  }

  v14 = v50;
  *(v0 + 5432) = v50;

  if (!v14)
  {
    v73 = *(v0 + 5168);
    v74 = *(v0 + 5160);
    sub_1DAF8BCC8(v0 + 5024);
    sub_1DAF8BA68(v0 + 4232);
    sub_1DAF40AEC(v0 + 2896, &qword_1ECC0E798, &qword_1DB0A5120);
    sub_1DAF40AEC(v0 + 2760, &qword_1ECC0E798, &qword_1DB0A5120);

    LOBYTE(v108) = 127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1DB0A04E0;
    *(v75 + 32) = 0;
    *(v75 + 64) = MEMORY[0x1E69E6158];
    *(v75 + 40) = v74;
    *(v75 + 48) = v73;

    v76 = sub_1DAF3E280(v75);
    swift_setDeallocating();
    sub_1DAF40AEC(v75 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
    swift_deallocClassInstance();
    v57 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001ALL, 0x80000001DB0C28B0, 0, &v108, 0, v76, 0xD000000000000022, 0x80000001DB0C28D0, 0xD000000000000074, 0x80000001DB0C2900, 60);

    swift_willThrow();
    sub_1DAF6080C(v106, v100, v101, v102, v103, v104);

    v58 = v21[15];
    v59 = v21[16];
    v60 = v21[17];
    v61 = v21[18];
    v62 = v21[19];
    v63 = v21[20];
    *(v21 + 15) = 0u;
    *(v21 + 17) = 0u;
    *(v21 + 19) = 0u;
LABEL_25:
    sub_1DAF6080C(v58, v59, v60, v61, v62, v63);
    *(v0 + 5424) = v57;
    v64 = *(v0 + 5344);
    v65 = *(v0 + 5104);
    sub_1DAF4FA0C();
    sub_1DAF8C320(v65, type metadata accessor for ODISignpost);
    v66 = sub_1DAF83F48;
    goto LABEL_39;
  }

  v108 = 45;
  v109 = 0xE100000000000000;
  LOBYTE(v107[0]) = 14;
  if (v104)
  {
    v68 = v103;
    sub_1DAF608C4(v106, v100, v101, v102, v103, v104);
    v69 = v14;

    CoreODILogger.debug(_:category:)(0xD000000000000017, 0x80000001DB0C2A00, v107);

    v70 = sub_1DB09D004();
    [v69 setHostChallenge_];

    v71 = sub_1DB09D004();
    [v69 setChallengeResponse_];

    v72 = sub_1DB09D6B4();
    [v69 setSeid_];

    sub_1DAF6080C(v106, v100, v101, v102, v103, v104);
  }

  else
  {
    v77 = v14;

    CoreODILogger.debug(_:category:)(0xD000000000000016, 0x80000001DB0C2980, v107);

    v68 = v103;
  }

  v78 = *(v0 + 5392);
  if (v78 >> 60 == 15)
  {
    v79 = sub_1DAF484E4(32123, 0xE200000000000000);
    v81 = v80;
    v78 = *(v0 + 5392);
    v82 = *(v0 + 5384);
  }

  else
  {
    v82 = *(v0 + 5384);
    v79 = v82;
    v81 = *(v0 + 5392);
  }

  sub_1DAF4ED88(v82, v78);
  v83 = sub_1DB09D004();
  sub_1DAF40780(v79, v81);
  [v14 setYNHDWo3TCV_];

  sub_1DAF6080C(v106, v100, v101, v102, v68, v104);
  if (qword_1EE301DE8 != -1)
  {
    goto LABEL_44;
  }

LABEL_38:
  v84 = *(v0 + 5344);
  v85 = *(v0 + 5336);
  v86 = *(v0 + 5168);
  v87 = *(v0 + 5160);
  sub_1DB09DB54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1DB0A04E0;
  *(v88 + 56) = MEMORY[0x1E69E6158];
  *(v88 + 64) = sub_1DAF4DC24();
  *(v88 + 32) = 48;
  *(v88 + 40) = 0xE100000000000000;
  sub_1DB09D444();

  v89 = swift_allocObject();
  *(v0 + 5440) = v89;
  *(v89 + 16) = v84;
  *(v89 + 24) = v14;
  *(v89 + 32) = 45;
  *(v89 + 40) = 0xE100000000000000;
  *(v89 + 48) = v87;
  *(v89 + 56) = v86;
  *(v89 + 64) = 0;
  *(v89 + 72) = v105;
  *(v89 + 80) = &unk_1DB0A5160;
  *(v89 + 88) = v85;

  v90 = v14;

  v66 = sub_1DAF84374;
LABEL_39:

  return MEMORY[0x1EEE6DFA0](v66, 0, 0);
}

uint64_t sub_1DAF83F48()
{
  v1 = v0[675];
  v2 = v0[668];
  v3 = v0[635];
  v4 = sub_1DB09DA24();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_1DAF4F0EC(0, 0, v3, &unk_1DB0A5180, v5);

  return MEMORY[0x1EEE6DFA0](sub_1DAF84050, v2, 0);
}

uint64_t sub_1DAF84050()
{
  v1 = v0[634];
  v2 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for DeepLink();
  v3 = swift_allocObject();
  v4 = v2;

  sub_1DB09D334();
  v5 = sub_1DAF601B4(v4, v3, 45, 0xE100000000000000, v1);

  if (v5)
  {
    v6 = v0[678];
    v7 = v0[646];
    v8 = v0[645];
    v9 = v0[633];
    sub_1DB09D144();
    sub_1DAFBB880(v6, v8, v7, 0xD000000000000024, 0x80000001DB0C27D0, 409, v9);
    v10 = v0[646];

    (*(v0[632] + 8))(v0[633], v0[631]);
  }

  else
  {
    v11 = v0[646];
  }

  v12 = v0[678];
  v13 = v0[672];
  v14 = v0[671];
  v15 = v0[670];
  v16 = v0[669];
  v17 = v0[667];
  v18 = v0[630];
  swift_willThrow();

  sub_1DAF40780(v14, v13);
  sub_1DAF60AF4(v16, v15);

  return MEMORY[0x1EEE6DFA0](sub_1DAF84228, v18, 0);
}

uint64_t sub_1DAF84228()
{
  v1 = v0[667];
  v2 = v0[665];
  v3 = v0[664];
  v4 = v0[661];
  v5 = v0[660];
  v6 = v0[644];
  v7 = v0[643];
  v8 = v0[642];
  sub_1DAF4AC40(v0[658], v0[659]);

  sub_1DAF40780(v5, v4);
  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 567);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 582);
  v9 = v0[678];
  v10 = v0[644];
  v11 = v0[641];
  v12 = v0[638];
  v13 = v0[637];
  v14 = v0[635];
  v15 = v0[634];
  v16 = v0[633];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DAF84374()
{
  v1 = v0[680];
  v2 = v0[677];

  v3 = swift_task_alloc();
  v0[681] = v3;
  v3[2] = 60000000000;
  v3[3] = &unk_1DB0A21F0;
  v3[4] = v1;
  v3[5] = &unk_1DB0A21F8;
  v3[6] = 0;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[682] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4D8, &qword_1DB0A2210);
  *v5 = v0;
  v5[1] = sub_1DAF844B8;

  return MEMORY[0x1EEE6DE38](v0 + 440, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DAF60AE4, v3, v6);
}

uint64_t sub_1DAF844B8()
{
  v2 = *v1;
  v3 = *(*v1 + 5456);
  v11 = *v1;
  *(*v1 + 5464) = v0;

  if (v0)
  {
    v4 = v2[681];
    sub_1DAF8BCC8((v2 + 628));
    sub_1DAF8BA68((v2 + 529));
    sub_1DAF40AEC((v2 + 362), &qword_1ECC0E798, &qword_1DB0A5120);
    sub_1DAF40AEC((v2 + 345), &qword_1ECC0E798, &qword_1DB0A5120);

    v5 = sub_1DAF84754;
    v6 = 0;
  }

  else
  {
    v7 = v2[681];
    v8 = v2[680];
    v9 = v2[668];

    v5 = sub_1DAF84648;
    v6 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1DAF84648()
{
  v1 = *(v0 + 5344);

  v2 = *(v0 + 3568);
  *(v0 + 4200) = *(v0 + 3552);
  *(v0 + 4216) = v2;
  v3 = *(v0 + 3536);
  *(v0 + 4168) = *(v0 + 3520);
  *(v0 + 4184) = v3;
  v4 = *(v0 + 3584);
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[18];
  v9 = v1[19];
  v10 = v1[20];
  *(v1 + 17) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 19) = 0u;
  sub_1DAF6080C(v5, v6, v7, v8, v9, v10);
  sub_1DAF4FA0C();
  if (v4 == 1)
  {
    v11 = *(v0 + 5104);
    v12 = *(v0 + 5088);
    sub_1DB09DC04();
    v13 = v11[3];
    v14 = *v11;
    v15 = v11[1];
    v16 = *(v12 + 28);
    v17 = *(v11 + 16);
    sub_1DB09D464();
  }

  sub_1DAF8C320(*(v0 + 5104), type metadata accessor for ODISignpost);

  return MEMORY[0x1EEE6DFA0](sub_1DAF84884, 0, 0);
}

uint64_t sub_1DAF84754()
{
  v1 = *(v0 + 5440);
  v2 = *(v0 + 5344);

  return MEMORY[0x1EEE6DFA0](sub_1DAF847C0, v2, 0);
}

uint64_t sub_1DAF847C0()
{
  v1 = *(v0 + 5344);

  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *(v1 + 15) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 19) = 0u;
  sub_1DAF6080C(v2, v3, v4, v5, v6, v7);
  *(v0 + 5424) = *(v0 + 5464);
  v8 = *(v0 + 5344);
  v9 = *(v0 + 5104);
  sub_1DAF4FA0C();
  sub_1DAF8C320(v9, type metadata accessor for ODISignpost);

  return MEMORY[0x1EEE6DFA0](sub_1DAF83F48, 0, 0);
}

uint64_t sub_1DAF84884()
{
  v1 = v0[675];
  v2 = v0[668];
  v3 = v0[635];
  v4 = sub_1DB09DA24();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_1DAF4F0EC(0, 0, v3, &unk_1DB0A5188, v5);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8498C, v2, 0);
}

uint64_t sub_1DAF8498C()
{
  v1 = v0[672];
  v2 = v0[671];
  v3 = v0[667];
  v4 = v0[630];
  sub_1DAF60AF4(v0[669], v0[670]);

  sub_1DAF40780(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1DAF84A24, v4, 0);
}

uint64_t sub_1DAF84A24()
{
  v1 = *(v0 + 4184);
  v2 = *(v0 + 4192);
  v3 = 0;
  v4 = 0;
  *(v0 + 5472) = sub_1DB09D014();
  *(v0 + 5480) = v5;
  v6 = *(v0 + 4208);
  if (v6 >> 60 != 15)
  {
    v7 = *(v0 + 4200);
    sub_1DAF40674(v7, *(v0 + 4208));
    v3 = sub_1DB09D014();
    v4 = v8;
    sub_1DAF4AC40(v7, v6);
  }

  *(v0 + 5496) = v4;
  *(v0 + 5488) = v3;
  v9 = *(v0 + 4216);
  v10 = __CFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 3164) = v11;
    v12 = *(v0 + 4560);
    v13 = *(v0 + 4568);
    __swift_project_boxed_opaque_existential_1((v0 + 4536), v12);
    *(v0 + 5504) = (*(v13 + 24))(v12, v13);
    *(v0 + 5512) = v14;
    v15 = *(v0 + 4560);
    v16 = *(v0 + 4568);
    __swift_project_boxed_opaque_existential_1((v0 + 4536), v15);
    (*(v16 + 64))(v15, v16);
    if (qword_1EE301710 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v17 = qword_1EE30A060;
  *(v0 + 5520) = qword_1EE30A060;

  return MEMORY[0x1EEE6DFA0](sub_1DAF84BBC, v17, 0);
}

uint64_t sub_1DAF84BBC()
{
  v1 = v0[690];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v0[695] = v2;
    v0[694] = v3;
    v4 = v0[630];

    return MEMORY[0x1EEE6DFA0](sub_1DAF84E50, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[691] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF84CA4;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAF84CA4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 5528);
  v5 = *(*v2 + 5520);
  v7 = *v2;
  *(v3 + 5536) = a1;
  *(v3 + 5544) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF84DC0, v5, 0);
}

uint64_t sub_1DAF84DC0()
{
  v1 = v0[693];
  v2 = v0[690];
  v3 = *(v2 + 120);
  *(v2 + 112) = v0[692];
  *(v2 + 120) = v1;

  v4 = v0[692];
  v0[695] = v0[693];
  v0[694] = v4;
  v5 = v0[630];

  return MEMORY[0x1EEE6DFA0](sub_1DAF84E50, v5, 0);
}

uint64_t sub_1DAF84E50()
{
  v99 = v0;
  v1 = (v0 + 2896);
  v2 = *(v0 + 5312);
  v3 = *(v0 + 5040);
  v4 = (v3[31] + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v5 = v4[1];
  v94 = *v4;
  v6 = qword_1EE301DD0;

  if (v6 != -1)
  {
    swift_once();
    v2 = *(v0 + 5312);
    v3 = *(v0 + 5040);
  }

  v7 = *(v0 + 5560);
  v8 = *(v0 + 5552);
  v9 = *(v0 + 3164);
  v91 = *(v0 + 5304);
  v89 = *(v0 + 5296);
  v10 = *(v0 + 5168);
  v11 = *(v0 + 5160);
  v12 = (*(v0 + 1668) - 1) < 2;
  v14 = qword_1EE309EE0;
  v13 = qword_1EE309EE8;
  *(v0 + 5616) = 0;
  *(v0 + 1240) = v11;
  *(v0 + 1248) = v10;
  *(v0 + 1256) = *(v0 + 5504);
  v15 = *(v0 + 3440);
  v16 = *(v0 + 3456);
  v17 = *(v0 + 3504);
  *(v0 + 1320) = *(v0 + 3488);
  *(v0 + 1336) = v17;
  v18 = *(v0 + 3472);
  *(v0 + 1288) = v16;
  *(v0 + 1304) = v18;
  *(v0 + 1272) = v15;
  *(v0 + 1352) = v8;
  *(v0 + 1360) = v7;
  *(v0 + 1368) = v94;
  *(v0 + 1376) = v5;
  *(v0 + 1384) = v2;
  *(v0 + 1392) = v9;
  *(v0 + 1400) = *(v0 + 5616);
  *(v0 + 1401) = *(v0 + 1449);
  *(v0 + 1404) = *(v0 + 1452);
  *(v0 + 1408) = 0;
  *(v0 + 1416) = v14;
  *(v0 + 1424) = v13;
  *(v0 + 1432) = -45;
  *(v0 + 1433) = *(v0 + 1233);
  *(v0 + 1436) = *(v0 + 1236);
  *(v0 + 1440) = 0;
  *(v0 + 1448) = v12;
  v96 = v3[21];
  v97 = v3[22];
  v98 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7B0, &qword_1DB0A5190);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DB0A5000;
  *(v19 + 32) = 0x73676E69646E6962;
  *(v19 + 40) = 0xE800000000000000;
  v20 = *(v0 + 5024);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7B8, &qword_1DB0A5198);
  *(v19 + 48) = v20;
  *(v19 + 72) = v21;
  *(v19 + 80) = 1684632436;
  v22 = MEMORY[0x1E69E6158];
  *(v19 + 88) = 0xE400000000000000;
  *(v19 + 96) = v89;
  *(v19 + 104) = v91;
  *(v19 + 120) = v22;
  *(v19 + 128) = 0xD000000000000011;
  *(v19 + 168) = v22;
  *(v19 + 136) = 0x80000001DB0C14B0;
  *(v19 + 144) = v94;
  *(v19 + 152) = v5;

  v23 = sub_1DAF3E128(v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E390, &unk_1DB0A51A0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v24._countAndFlagsBits = 0xD000000000000014;
  v24._object = 0x80000001DB0C3650;
  CoreODILogger.milestone(tag:description:dictionary:isSensitive:)(&v98, v24, v23, 1);

  v25 = *(v0 + 3008);
  *(v0 + 1904) = *(v0 + 2992);
  *(v0 + 1920) = v25;
  *(v0 + 1936) = *(v0 + 3024);
  v26 = *(v0 + 2944);
  *(v0 + 1840) = *(v0 + 2928);
  *(v0 + 1856) = v26;
  v27 = *(v0 + 2976);
  *(v0 + 1872) = *(v0 + 2960);
  *(v0 + 1888) = v27;
  v28 = *(v0 + 2912);
  *(v0 + 1808) = *v1;
  *(v0 + 1824) = v28;
  v29 = sub_1DAF8B9A8(v0 + 1808);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (v29 != 1)
  {
    v30 = *(v0 + 1808) + 49;
    v32 = *(v0 + 1880);
    v33 = *(v0 + 1888);
    v34 = *(v0 + 1896);
    v35 = *(v0 + 1904);
    v36 = *(v0 + 1912);
    v37 = *(v0 + 1920);

    v31 = 0xE100000000000000;
  }

  v77 = v37;
  v78 = v32;
  v81 = v35;
  v82 = v31;
  v83 = v36;
  v79 = v33;
  v80 = *(v0 + 5496);
  v38 = *(v0 + 5488);
  v76 = *(v0 + 5472);
  v86 = *(v0 + 5336);
  v87 = *(v0 + 5320);
  v88 = *(v0 + 5312);
  v39 = *(v0 + 5304);
  v40 = *(v0 + 5296);
  v92 = *(v0 + 5288);
  v90 = *(v0 + 5280);
  v84 = *(v0 + 5264);
  v85 = *(v0 + 5272);
  v41 = *(v0 + 5144);
  v93 = *(v0 + 5136);
  v95 = *(v0 + 5152);
  v42 = v34;
  v43 = *(v0 + 5032);
  sub_1DAF3523C(v0 + 4536, v43 + 424);
  *v43 = *v1;
  v44 = *(v0 + 2960);
  v46 = *(v0 + 2912);
  v45 = *(v0 + 2928);
  *(v43 + 48) = *(v0 + 2944);
  *(v43 + 64) = v44;
  *(v43 + 16) = v46;
  *(v43 + 32) = v45;
  v48 = *(v0 + 2992);
  v47 = *(v0 + 3008);
  v49 = *(v0 + 2976);
  *(v43 + 128) = *(v0 + 3024);
  *(v43 + 96) = v48;
  *(v43 + 112) = v47;
  *(v43 + 80) = v49;
  v50 = *(v0 + 2888);
  v52 = *(v0 + 2856);
  v51 = *(v0 + 2872);
  *(v43 + 216) = *(v0 + 2840);
  *(v43 + 232) = v52;
  *(v43 + 248) = v51;
  *(v43 + 264) = v50;
  v54 = *(v0 + 2808);
  v53 = *(v0 + 2824);
  v55 = *(v0 + 2792);
  *(v43 + 152) = *(v0 + 2776);
  *(v43 + 168) = v55;
  *(v43 + 184) = v54;
  *(v43 + 200) = v53;
  *(v43 + 136) = *(v0 + 2760);
  *(v43 + 272) = v40;
  *(v43 + 280) = v39;
  *(v43 + 288) = v76;
  *(v43 + 304) = v38;
  *(v43 + 312) = v80;
  *(v43 + 320) = 0u;
  *(v43 + 336) = 0u;
  *(v43 + 352) = 1;
  *(v43 + 360) = v30;
  *(v43 + 368) = v82;
  *(v43 + 376) = v78;
  *(v43 + 384) = v79;
  *(v43 + 392) = v42;
  *(v43 + 400) = v81;
  *(v43 + 408) = v83;
  *(v43 + 416) = v77;
  v56 = *(v0 + 1256);
  *(v43 + 464) = *(v0 + 1240);
  *(v43 + 480) = v56;
  v57 = *(v0 + 1272);
  v58 = *(v0 + 1288);
  v59 = *(v0 + 1320);
  *(v43 + 528) = *(v0 + 1304);
  *(v43 + 544) = v59;
  *(v43 + 496) = v57;
  *(v43 + 512) = v58;
  v60 = *(v0 + 1336);
  v61 = *(v0 + 1352);
  v62 = *(v0 + 1384);
  *(v43 + 592) = *(v0 + 1368);
  *(v43 + 608) = v62;
  *(v43 + 560) = v60;
  *(v43 + 576) = v61;
  v63 = *(v0 + 1400);
  v64 = *(v0 + 1416);
  v65 = *(v0 + 1432);
  *(v43 + 672) = *(v0 + 1448);
  *(v43 + 640) = v64;
  *(v43 + 656) = v65;
  *(v43 + 624) = v63;
  v66 = *(type metadata accessor for ODNAssessmentResult() + 52);

  sub_1DAF8BDD0(v0 + 1240, v0 + 1024);
  sub_1DB09DF34();
  sub_1DAF8BA68(v0 + 4232);
  sub_1DAF8BE2C(v0 + 4168);
  sub_1DAF4AC40(v84, v85);

  sub_1DAF8BE80(v0 + 1240);
  sub_1DAF40780(v90, v92);
  (*(v41 + 8))(v95, v93);
  v67 = *(v0 + 5152);
  v68 = *(v0 + 5128);
  v69 = *(v0 + 5104);
  v70 = *(v0 + 5096);
  v71 = *(v0 + 5080);
  v72 = *(v0 + 5072);
  v73 = *(v0 + 5064);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_1DAF854B4()
{
  v1 = *(*v0 + 5608);
  v2 = *(*v0 + 5040);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF855C4, v2, 0);
}

uint64_t sub_1DAF855C4()
{
  v1 = *(v0 + 5600);
  v2 = *(v0 + 5592);
  v3 = *(v0 + 3161);
  v4 = *(v0 + 5568);
  v5 = *(v0 + 5336);
  v6 = *(v0 + 5320);
  v7 = *(v0 + 5312);
  v8 = *(v0 + 5288);
  v9 = *(v0 + 5280);
  v46 = *(v0 + 5152);
  v10 = *(v0 + 5144);
  v11 = *(v0 + 5136);
  v12 = *(v0 + 5576);
  v13 = *(v0 + 5032);
  v14 = *(v0 + 2928);
  v15 = *(v0 + 2960);
  v16 = *(v0 + 2912);
  *(v13 + 48) = *(v0 + 2944);
  *(v13 + 64) = v15;
  *(v13 + 16) = v16;
  *(v13 + 32) = v14;
  v17 = *(v0 + 2992);
  v18 = *(v0 + 3008);
  v19 = *(v0 + 2976);
  *(v13 + 128) = *(v0 + 3024);
  *(v13 + 96) = v17;
  *(v13 + 112) = v18;
  *(v13 + 80) = v19;
  *v13 = *(v0 + 2896);
  *(v13 + 136) = *(v0 + 2760);
  v20 = *(v0 + 2776);
  v21 = *(v0 + 2792);
  v22 = *(v0 + 2808);
  *(v13 + 200) = *(v0 + 2824);
  *(v13 + 184) = v22;
  *(v13 + 168) = v21;
  *(v13 + 152) = v20;
  v23 = *(v0 + 2840);
  v24 = *(v0 + 2856);
  v25 = *(v0 + 2872);
  *(v13 + 264) = *(v0 + 2888);
  *(v13 + 248) = v25;
  *(v13 + 232) = v24;
  *(v13 + 216) = v23;
  *(v13 + 272) = 0u;
  *(v13 + 288) = 0u;
  *(v13 + 304) = 0u;
  *(v13 + 320) = v12;
  *(v13 + 336) = v3;
  *(v13 + 344) = v2;
  *(v13 + 352) = v1;
  *(v13 + 392) = 0u;
  *(v13 + 408) = 0u;
  *(v13 + 360) = 0u;
  *(v13 + 376) = 0u;
  v26 = *(v0 + 1472);
  *(v13 + 464) = *(v0 + 1456);
  *(v13 + 480) = v26;
  v27 = *(v0 + 1488);
  v28 = *(v0 + 1504);
  v29 = *(v0 + 1536);
  *(v13 + 528) = *(v0 + 1520);
  *(v13 + 544) = v29;
  *(v13 + 496) = v27;
  *(v13 + 512) = v28;
  v30 = *(v0 + 1552);
  v31 = *(v0 + 1568);
  v32 = *(v0 + 1600);
  *(v13 + 592) = *(v0 + 1584);
  *(v13 + 608) = v32;
  *(v13 + 560) = v30;
  *(v13 + 576) = v31;
  v33 = *(v0 + 1616);
  v34 = *(v0 + 1632);
  v35 = *(v0 + 1648);
  *(v13 + 672) = *(v0 + 1664);
  *(v13 + 640) = v34;
  *(v13 + 656) = v35;
  *(v13 + 624) = v33;
  v36 = v13 + *(type metadata accessor for ODNAssessmentResult() + 52);
  sub_1DB09DF34();

  sub_1DAF40780(v9, v8);
  (*(v10 + 8))(v46, v11);
  v37 = *(v0 + 5152);
  v38 = *(v0 + 5128);
  v39 = *(v0 + 5104);
  v40 = *(v0 + 5096);
  v41 = *(v0 + 5080);
  v42 = *(v0 + 5072);
  v43 = *(v0 + 5064);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1DAF85834()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 582);
  v1 = v0[651];
  v2 = v0[644];
  v3 = v0[641];
  v4 = v0[638];
  v5 = v0[637];
  v6 = v0[635];
  v7 = v0[634];
  v8 = v0[633];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DAF85904(uint64_t a1, uint64_t a2)
{
  v3[1342] = v2;
  v3[1341] = a2;
  v3[1340] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8592C, v2, 0);
}

uint64_t sub_1DAF8592C()
{
  v27 = v0;
  v1 = *(v0 + 10728);
  *(v0 + 10704) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 10712);
    *(v0 + 10744) = v3;
    v4 = *(v0 + 10736);
    if (v3)
    {
      if (v3 == 1)
      {
        v25 = 106;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1DB0A04E0;
        *(v5 + 32) = 0;
        swift_beginAccess();
        v7 = *(v4 + 416);
        v6 = *(v4 + 424);
        *(v5 + 64) = MEMORY[0x1E69E6158];
        *(v5 + 40) = v7;
        *(v5 + 48) = v6;

        v8 = sub_1DAF3E280(v5);
        swift_setDeallocating();
        sub_1DAF40AEC(v5 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
        swift_deallocClassInstance();
        *(v0 + 10840) = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, 0, &v25, 0, v8, 0xD00000000000002DLL, 0x80000001DB0C3590, 0xD000000000000019, 0x80000001DB0C35C0, 529);

        v9 = *(v4 + 416);
        v10 = *(v4 + 424);

        sub_1DB041E04(v9, v10, v0 + 10360);
        *(v0 + 10848) = *(v0 + 10360);
        *(v0 + 1194) = *(v0 + 10376);
        *(v0 + 10864) = *(v0 + 10384);
        *(v0 + 10656) = *(v0 + 10384);
        sub_1DAF40A84(v0 + 10656, v0 + 10640, &unk_1ECC0EAE0, &unk_1DB0A4650);

        *(v0 + 1788) = MKBGetDeviceLockState();
        sub_1DAF8B8D8(v4 + 400, v0 + 5344);
        v11 = sub_1DAF86B7C;
      }

      else
      {
        swift_beginAccess();
        v22 = *(v4 + 416);
        v23 = *(v4 + 424);
        sub_1DAF8B988(v3);

        sub_1DB041E04(v22, v23, v0 + 10160);
        *(v0 + 10752) = *(v0 + 10160);
        *(v0 + 602) = *(v0 + 10176);
        *(v0 + 10768) = *(v0 + 10184);
        *(v0 + 10608) = *(v0 + 10184);
        sub_1DAF40A84(v0 + 10608, v0 + 10592, &unk_1ECC0EAE0, &unk_1DB0A4650);

        *(v0 + 604) = MKBGetDeviceLockState();
        sub_1DAF8B8D8(v4 + 400, v0 + 1792);
        v11 = sub_1DAF85ED4;
      }
    }

    else
    {
      v26 = 103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1DB0A04E0;
      *(v16 + 32) = 0;
      swift_beginAccess();
      v18 = *(v4 + 416);
      v17 = *(v4 + 424);
      *(v16 + 64) = MEMORY[0x1E69E6158];
      *(v16 + 40) = v18;
      *(v16 + 48) = v17;

      v19 = sub_1DAF3E280(v16);
      swift_setDeallocating();
      sub_1DAF40AEC(v16 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
      swift_deallocClassInstance();
      *(v0 + 10792) = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, 0, &v26, 0, v19, 0xD00000000000002DLL, 0x80000001DB0C3590, 0xD000000000000019, 0x80000001DB0C35C0, 525);

      v20 = *(v4 + 416);
      v21 = *(v4 + 424);

      sub_1DB041E04(v20, v21, v0 + 10320);
      *(v0 + 10800) = *(v0 + 10320);
      *(v0 + 603) = *(v0 + 10336);
      *(v0 + 10816) = *(v0 + 10344);
      *(v0 + 10624) = *(v0 + 10344);
      sub_1DAF40A84(v0 + 10624, v0 + 10576, &unk_1ECC0EAE0, &unk_1DB0A4650);

      *(v0 + 1196) = MKBGetDeviceLockState();
      sub_1DAF8B8D8(v4 + 400, v0 + 3568);
      v11 = sub_1DAF86528;
    }
  }

  else
  {
    v12 = *(v0 + 10736);
    v13 = *(v0 + 10728);
    swift_beginAccess();
    v14 = *(v12 + 416);
    v15 = *(v12 + 424);

    sub_1DB041E04(v14, v15, v0 + 10400);
    *(v0 + 10888) = *(v0 + 10400);
    *(v0 + 1195) = *(v0 + 10416);
    *(v0 + 10904) = *(v0 + 10424);
    *(v0 + 10912) = *(v0 + 10432);
    *(v0 + 10688) = *(v0 + 10424);
    sub_1DAF40A84(v0 + 10688, v0 + 10672, &unk_1ECC0EAE0, &unk_1DB0A4650);

    *(v0 + 2380) = MKBGetDeviceLockState();
    sub_1DAF8B8D8(v12 + 400, v0 + 16);
    v11 = sub_1DAF871DC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DAF85ED4()
{
  v1 = *(v0 + 10736);
  sub_1DAF3523C(v0 + 1840, v0 + 10200);
  sub_1DAF8B934(v0 + 1792);

  return MEMORY[0x1EEE6DFA0](sub_1DAF85F50, v1, 0);
}

uint64_t sub_1DAF85F50()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF85FC0, 0, 0);
}

uint64_t sub_1DAF85FC0()
{
  v1 = *(v0 + 10736);
  *(v0 + 9608) = *(v0 + 1416);
  v2 = *(v0 + 1400);
  *(v0 + 9576) = *(v0 + 1384);
  *(v0 + 9592) = v2;
  v3 = *(v0 + 1336);
  *(v0 + 9512) = *(v0 + 1320);
  *(v0 + 9528) = v3;
  v4 = *(v0 + 1368);
  *(v0 + 9544) = *(v0 + 1352);
  *(v0 + 9560) = v4;
  v5 = *(v0 + 1304);
  *(v0 + 9480) = *(v0 + 1288);
  *(v0 + 9496) = v5;
  sub_1DAF40A84(v0 + 9480, v0 + 8800, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8607C, v1, 0);
}

uint64_t sub_1DAF8607C()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1DAF860EC, 0, 0);
}

uint64_t sub_1DAF860EC()
{
  v1 = *(v0 + 992);
  *(v0 + 8064) = *(v0 + 1008);
  *(v0 + 8080) = *(v0 + 1024);
  *(v0 + 8096) = *(v0 + 1040);
  v2 = *(v0 + 928);
  *(v0 + 8000) = *(v0 + 944);
  v3 = *(v0 + 976);
  *(v0 + 8016) = *(v0 + 960);
  *(v0 + 8032) = v3;
  *(v0 + 8048) = v1;
  v4 = *(v0 + 604);
  v5 = *(v0 + 10720);
  *(v0 + 8112) = *(v0 + 1056);
  *(v0 + 7984) = v2;
  sub_1DAF40A84(v0 + 7984, v0 + 8528, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 608);
  sub_1DAF3523C(v0 + 10200, v5 + 424);
  v6 = swift_task_alloc();
  *(v0 + 10784) = v6;
  *v6 = v0;
  v6[1] = sub_1DAF86220;
  v7 = *(v0 + 10736);

  return sub_1DAF8AD6C(v0 + 7120, 0, (v4 - 1) < 2);
}

uint64_t sub_1DAF86220()
{
  v1 = *(*v0 + 10784);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8631C, 0, 0);
}

uint64_t sub_1DAF8631C()
{
  v1 = *(v0 + 602);
  v2 = *(v0 + 10736);
  v3 = *(v0 + 10720);
  v4 = *(v0 + 10752);
  v5 = *(v0 + 10768);
  v6 = *(v0 + 9544);
  v8 = *(v0 + 9496);
  v7 = *(v0 + 9512);
  *(v3 + 48) = *(v0 + 9528);
  *(v3 + 64) = v6;
  *(v3 + 16) = v8;
  *(v3 + 32) = v7;
  v10 = *(v0 + 9576);
  v9 = *(v0 + 9592);
  v11 = *(v0 + 9560);
  *(v3 + 128) = *(v0 + 9608);
  *(v3 + 96) = v10;
  *(v3 + 112) = v9;
  *(v3 + 80) = v11;
  *v3 = *(v0 + 9480);
  *(v3 + 136) = *(v0 + 7984);
  v12 = *(v0 + 8000);
  v13 = *(v0 + 8016);
  v14 = *(v0 + 8032);
  *(v3 + 200) = *(v0 + 8048);
  *(v3 + 184) = v14;
  *(v3 + 168) = v13;
  *(v3 + 152) = v12;
  v15 = *(v0 + 8064);
  v16 = *(v0 + 8080);
  v17 = *(v0 + 8096);
  *(v3 + 264) = *(v0 + 8112);
  *(v3 + 248) = v17;
  *(v3 + 232) = v16;
  *(v3 + 216) = v15;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = v4;
  *(v3 + 336) = v1;
  *(v3 + 344) = v5;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  v18 = *(v0 + 7136);
  *(v3 + 464) = *(v0 + 7120);
  *(v3 + 480) = v18;
  v19 = *(v0 + 7152);
  v20 = *(v0 + 7168);
  v21 = *(v0 + 7200);
  *(v3 + 528) = *(v0 + 7184);
  *(v3 + 544) = v21;
  *(v3 + 496) = v19;
  *(v3 + 512) = v20;
  v22 = *(v0 + 7216);
  v23 = *(v0 + 7232);
  v24 = *(v0 + 7264);
  *(v3 + 592) = *(v0 + 7248);
  *(v3 + 608) = v24;
  *(v3 + 560) = v22;
  *(v3 + 576) = v23;
  v25 = *(v0 + 7280);
  v26 = *(v0 + 7296);
  v27 = *(v0 + 7312);
  *(v3 + 672) = *(v0 + 7328);
  *(v3 + 640) = v26;
  *(v3 + 656) = v27;
  *(v3 + 624) = v25;
  v28 = v3 + *(type metadata accessor for ODNAssessmentResult() + 52);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10200));

  return MEMORY[0x1EEE6DFA0](sub_1DAF864BC, v2, 0);
}

uint64_t sub_1DAF864BC()
{
  v1 = *(v0 + 10744);
  sub_1DAF8B998(v1);
  sub_1DAF8B998(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAF86528()
{
  v1 = *(v0 + 10736);
  sub_1DAF3523C(v0 + 3616, v0 + 10280);
  sub_1DAF8B934(v0 + 3568);

  return MEMORY[0x1EEE6DFA0](sub_1DAF865A4, v1, 0);
}

uint64_t sub_1DAF865A4()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 2976);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86614, 0, 0);
}

uint64_t sub_1DAF86614()
{
  v1 = *(v0 + 10736);
  *(v0 + 9336) = *(v0 + 3192);
  v2 = *(v0 + 3176);
  *(v0 + 9304) = *(v0 + 3160);
  *(v0 + 9320) = v2;
  v3 = *(v0 + 3112);
  *(v0 + 9240) = *(v0 + 3096);
  *(v0 + 9256) = v3;
  v4 = *(v0 + 3144);
  *(v0 + 9272) = *(v0 + 3128);
  *(v0 + 9288) = v4;
  v5 = *(v0 + 3080);
  *(v0 + 9208) = *(v0 + 3064);
  *(v0 + 9224) = v5;
  sub_1DAF40A84(v0 + 9208, v0 + 8664, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 2976);

  return MEMORY[0x1EEE6DFA0](sub_1DAF866D0, v1, 0);
}

uint64_t sub_1DAF866D0()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 2384);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86740, 0, 0);
}

uint64_t sub_1DAF86740()
{
  v1 = *(v0 + 1196);
  v2 = *(v0 + 10720);
  *(v0 + 9424) = *(v0 + 2784);
  *(v0 + 9440) = *(v0 + 2800);
  *(v0 + 9456) = *(v0 + 2816);
  *(v0 + 9472) = *(v0 + 2832);
  *(v0 + 9360) = *(v0 + 2720);
  *(v0 + 9376) = *(v0 + 2736);
  *(v0 + 9392) = *(v0 + 2752);
  *(v0 + 9408) = *(v0 + 2768);
  *(v0 + 9344) = *(v0 + 2704);
  sub_1DAF40A84(v0 + 9344, v0 + 8256, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 2384);
  sub_1DAF3523C(v0 + 10280, v2 + 424);
  v3 = swift_task_alloc();
  *(v0 + 10832) = v3;
  *v3 = v0;
  v3[1] = sub_1DAF86880;
  v4 = (v1 - 1) < 2;
  v5 = *(v0 + 10736);

  return sub_1DAF8AD6C(v0 + 7552, 0, v4);
}

uint64_t sub_1DAF86880()
{
  v1 = *(*v0 + 10832);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8697C, 0, 0);
}

uint64_t sub_1DAF8697C()
{
  v1 = *(v0 + 603);
  v2 = *(v0 + 10736);
  v3 = *(v0 + 10720);
  v4 = *(v0 + 10800);
  v5 = *(v0 + 10816);
  v6 = *(v0 + 9272);
  v8 = *(v0 + 9224);
  v7 = *(v0 + 9240);
  *(v3 + 48) = *(v0 + 9256);
  *(v3 + 64) = v6;
  *(v3 + 16) = v8;
  *(v3 + 32) = v7;
  v10 = *(v0 + 9304);
  v9 = *(v0 + 9320);
  v11 = *(v0 + 9288);
  *(v3 + 128) = *(v0 + 9336);
  *(v3 + 96) = v10;
  *(v3 + 112) = v9;
  *(v3 + 80) = v11;
  *v3 = *(v0 + 9208);
  *(v3 + 136) = *(v0 + 9344);
  v12 = *(v0 + 9360);
  v13 = *(v0 + 9376);
  v14 = *(v0 + 9392);
  *(v3 + 200) = *(v0 + 9408);
  *(v3 + 184) = v14;
  *(v3 + 168) = v13;
  *(v3 + 152) = v12;
  v15 = *(v0 + 9424);
  v16 = *(v0 + 9440);
  v17 = *(v0 + 9456);
  *(v3 + 264) = *(v0 + 9472);
  *(v3 + 248) = v17;
  *(v3 + 232) = v16;
  *(v3 + 216) = v15;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = v4;
  *(v3 + 336) = v1;
  *(v3 + 344) = v5;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  v18 = *(v0 + 7568);
  *(v3 + 464) = *(v0 + 7552);
  *(v3 + 480) = v18;
  v19 = *(v0 + 7584);
  v20 = *(v0 + 7600);
  v21 = *(v0 + 7632);
  *(v3 + 528) = *(v0 + 7616);
  *(v3 + 544) = v21;
  *(v3 + 496) = v19;
  *(v3 + 512) = v20;
  v22 = *(v0 + 7648);
  v23 = *(v0 + 7664);
  v24 = *(v0 + 7696);
  *(v3 + 592) = *(v0 + 7680);
  *(v3 + 608) = v24;
  *(v3 + 560) = v22;
  *(v3 + 576) = v23;
  v25 = *(v0 + 7712);
  v26 = *(v0 + 7728);
  v27 = *(v0 + 7744);
  *(v3 + 672) = *(v0 + 7760);
  *(v3 + 640) = v26;
  *(v3 + 656) = v27;
  *(v3 + 624) = v25;
  v28 = v3 + *(type metadata accessor for ODNAssessmentResult() + 52);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10280));

  return MEMORY[0x1EEE6DFA0](sub_1DAF86B1C, v2, 0);
}

uint64_t sub_1DAF86B1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF86B7C()
{
  v1 = *(v0 + 10736);
  sub_1DAF3523C(v0 + 5392, v0 + 10240);
  sub_1DAF8B934(v0 + 5344);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86C00, v1, 0);
}

uint64_t sub_1DAF86C00()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 4752);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86C74, 0, 0);
}

uint64_t sub_1DAF86C74()
{
  v1 = *(v0 + 4904);
  *(v0 + 9152) = *(v0 + 4920);
  v2 = *(v0 + 4952);
  *(v0 + 9168) = *(v0 + 4936);
  *(v0 + 9184) = v2;
  v3 = *(v0 + 4840);
  *(v0 + 9088) = *(v0 + 4856);
  v4 = *(v0 + 4888);
  *(v0 + 9104) = *(v0 + 4872);
  *(v0 + 9120) = v4;
  *(v0 + 9136) = v1;
  v5 = *(v0 + 10736);
  *(v0 + 9200) = *(v0 + 4968);
  *(v0 + 9072) = v3;
  sub_1DAF40A84(v0 + 9072, v0 + 9616, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 4752);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86D48, v5, 0);
}

uint64_t sub_1DAF86D48()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 4160);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86DBC, 0, 0);
}

uint64_t sub_1DAF86DBC()
{
  v1 = *(v0 + 1788);
  v2 = *(v0 + 10720);
  *(v0 + 9064) = *(v0 + 4608);
  v3 = *(v0 + 4560);
  v4 = *(v0 + 4592);
  *(v0 + 9032) = *(v0 + 4576);
  *(v0 + 9048) = v4;
  v5 = *(v0 + 4496);
  v6 = *(v0 + 4528);
  *(v0 + 8968) = *(v0 + 4512);
  *(v0 + 8984) = v6;
  *(v0 + 9000) = *(v0 + 4544);
  *(v0 + 9016) = v3;
  *(v0 + 8936) = *(v0 + 4480);
  *(v0 + 8952) = v5;
  sub_1DAF40A84(v0 + 8936, v0 + 9888, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 4160);
  sub_1DAF3523C(v0 + 10240, v2 + 424);
  v7 = swift_task_alloc();
  *(v0 + 10880) = v7;
  *v7 = v0;
  v7[1] = sub_1DAF86EF8;
  v8 = (v1 - 1) < 2;
  v9 = *(v0 + 10736);

  return sub_1DAF8AD6C(v0 + 7768, 0, v8);
}

uint64_t sub_1DAF86EF8()
{
  v1 = *(*v0 + 10880);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF86FF4, 0, 0);
}

uint64_t sub_1DAF86FF4()
{
  v1 = *(v0 + 1194);
  v2 = *(v0 + 10736);
  v3 = *(v0 + 10720);
  v4 = *(v0 + 10848);
  v5 = *(v0 + 10864);
  v6 = *(v0 + 9104);
  v7 = *(v0 + 9136);
  v8 = *(v0 + 9088);
  *(v3 + 48) = *(v0 + 9120);
  *(v3 + 64) = v7;
  *(v3 + 16) = v8;
  *(v3 + 32) = v6;
  v9 = *(v0 + 9168);
  v10 = *(v0 + 9184);
  v11 = *(v0 + 9152);
  *(v3 + 128) = *(v0 + 9200);
  *(v3 + 96) = v9;
  *(v3 + 112) = v10;
  *(v3 + 80) = v11;
  *v3 = *(v0 + 9072);
  *(v3 + 136) = *(v0 + 8936);
  v12 = *(v0 + 8952);
  v13 = *(v0 + 8968);
  v14 = *(v0 + 8984);
  *(v3 + 200) = *(v0 + 9000);
  *(v3 + 184) = v14;
  *(v3 + 168) = v13;
  *(v3 + 152) = v12;
  v15 = *(v0 + 9016);
  v16 = *(v0 + 9032);
  v17 = *(v0 + 9048);
  *(v3 + 264) = *(v0 + 9064);
  *(v3 + 248) = v17;
  *(v3 + 232) = v16;
  *(v3 + 216) = v15;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = v4;
  *(v3 + 336) = v1;
  *(v3 + 344) = v5;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  v18 = *(v0 + 7784);
  *(v3 + 464) = *(v0 + 7768);
  *(v3 + 480) = v18;
  v19 = *(v0 + 7800);
  v20 = *(v0 + 7816);
  v21 = *(v0 + 7848);
  *(v3 + 528) = *(v0 + 7832);
  *(v3 + 544) = v21;
  *(v3 + 496) = v19;
  *(v3 + 512) = v20;
  v22 = *(v0 + 7864);
  v23 = *(v0 + 7880);
  v24 = *(v0 + 7912);
  *(v3 + 592) = *(v0 + 7896);
  *(v3 + 608) = v24;
  *(v3 + 560) = v22;
  *(v3 + 576) = v23;
  v25 = *(v0 + 7928);
  v26 = *(v0 + 7944);
  v27 = *(v0 + 7960);
  *(v3 + 672) = *(v0 + 7976);
  *(v3 + 640) = v26;
  *(v3 + 656) = v27;
  *(v3 + 624) = v25;
  v28 = v3 + *(type metadata accessor for ODNAssessmentResult() + 52);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10240));

  return MEMORY[0x1EEE6DFA0](sub_1DAF8717C, v2, 0);
}

uint64_t sub_1DAF8717C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF871DC()
{
  v1 = *(v0 + 10736);
  sub_1DAF3523C(v0 + 64, v0 + 10440);
  sub_1DAF8B934(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF87258, v1, 0);
}

uint64_t sub_1DAF87258()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 6528);

  return MEMORY[0x1EEE6DFA0](sub_1DAF872CC, 0, 0);
}

uint64_t sub_1DAF872CC()
{
  v1 = *(v0 + 10736);
  *(v0 + 9880) = *(v0 + 6744);
  v2 = *(v0 + 6728);
  *(v0 + 9848) = *(v0 + 6712);
  *(v0 + 9864) = v2;
  v3 = *(v0 + 6664);
  *(v0 + 9784) = *(v0 + 6648);
  *(v0 + 9800) = v3;
  v4 = *(v0 + 6696);
  *(v0 + 9816) = *(v0 + 6680);
  *(v0 + 9832) = v4;
  v5 = *(v0 + 6632);
  *(v0 + 9752) = *(v0 + 6616);
  *(v0 + 9768) = v5;
  sub_1DAF40A84(v0 + 9752, v0 + 10024, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 6528);

  return MEMORY[0x1EEE6DFA0](sub_1DAF87390, v1, 0);
}

uint64_t sub_1DAF87390()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 5936);

  return MEMORY[0x1EEE6DFA0](sub_1DAF87404, 0, 0);
}

uint64_t sub_1DAF87404()
{
  v1 = *(v0 + 2380);
  v2 = *(v0 + 10720);
  *(v0 + 8248) = *(v0 + 6384);
  v3 = *(v0 + 6336);
  v4 = *(v0 + 6368);
  *(v0 + 8216) = *(v0 + 6352);
  *(v0 + 8232) = v4;
  v5 = *(v0 + 6272);
  v6 = *(v0 + 6304);
  *(v0 + 8152) = *(v0 + 6288);
  *(v0 + 8168) = v6;
  *(v0 + 8184) = *(v0 + 6320);
  *(v0 + 8200) = v3;
  *(v0 + 8120) = *(v0 + 6256);
  *(v0 + 8136) = v5;
  sub_1DAF40A84(v0 + 8120, v0 + 8392, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 5936);
  sub_1DAF3523C(v0 + 10440, v2 + 424);
  v7 = swift_task_alloc();
  *(v0 + 10920) = v7;
  *v7 = v0;
  v7[1] = sub_1DAF87540;
  v8 = (v1 - 1) < 2;
  v9 = *(v0 + 10736);

  return sub_1DAF8AD6C(v0 + 7336, 0, v8);
}

uint64_t sub_1DAF87540()
{
  v1 = *(*v0 + 10920);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8763C, 0, 0);
}

uint64_t sub_1DAF8763C()
{
  v1 = *(v0 + 10912);
  v2 = *(v0 + 10904);
  v3 = *(v0 + 1195);
  v4 = *(v0 + 10888);
  v5 = *(v0 + 10720);
  v6 = *(v0 + 9816);
  v8 = *(v0 + 9768);
  v7 = *(v0 + 9784);
  *(v5 + 48) = *(v0 + 9800);
  *(v5 + 64) = v6;
  *(v5 + 16) = v8;
  *(v5 + 32) = v7;
  v10 = *(v0 + 9848);
  v9 = *(v0 + 9864);
  v11 = *(v0 + 9832);
  *(v5 + 128) = *(v0 + 9880);
  *(v5 + 96) = v10;
  *(v5 + 112) = v9;
  *(v5 + 80) = v11;
  *v5 = *(v0 + 9752);
  *(v5 + 136) = *(v0 + 8120);
  v12 = *(v0 + 8136);
  v13 = *(v0 + 8152);
  v14 = *(v0 + 8168);
  *(v5 + 200) = *(v0 + 8184);
  *(v5 + 184) = v14;
  *(v5 + 168) = v13;
  *(v5 + 152) = v12;
  v15 = *(v0 + 8200);
  v16 = *(v0 + 8216);
  v17 = *(v0 + 8232);
  *(v5 + 264) = *(v0 + 8248);
  *(v5 + 248) = v17;
  *(v5 + 232) = v16;
  *(v5 + 216) = v15;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = v4;
  *(v5 + 336) = v3;
  *(v5 + 344) = v2;
  *(v5 + 352) = v1;
  *(v5 + 392) = 0u;
  *(v5 + 408) = 0u;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  v18 = *(v0 + 7352);
  *(v5 + 464) = *(v0 + 7336);
  *(v5 + 480) = v18;
  v19 = *(v0 + 7368);
  v20 = *(v0 + 7384);
  v21 = *(v0 + 7416);
  *(v5 + 528) = *(v0 + 7400);
  *(v5 + 544) = v21;
  *(v5 + 496) = v19;
  *(v5 + 512) = v20;
  v22 = *(v0 + 7432);
  v23 = *(v0 + 7448);
  v24 = *(v0 + 7480);
  *(v5 + 592) = *(v0 + 7464);
  *(v5 + 608) = v24;
  *(v5 + 560) = v22;
  *(v5 + 576) = v23;
  v25 = *(v0 + 7496);
  v26 = *(v0 + 7512);
  v27 = *(v0 + 7528);
  *(v5 + 672) = *(v0 + 7544);
  *(v5 + 640) = v26;
  *(v5 + 656) = v27;
  *(v5 + 624) = v25;
  v28 = v5 + *(type metadata accessor for ODNAssessmentResult() + 52);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10440));
  v29 = *(v0 + 8);

  return v29();
}

void sub_1DAF877B0(unint64_t a1)
{
  v2 = v1;
  if (!(a1 >> 62))
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v11 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v12 = a1;
    v13 = sub_1DB09CE64();
    v14 = [v13 domain];
    v15 = sub_1DB09D6C4();
    v17 = v16;

    if (v15 == 0x726F72724549444FLL && v17 == 0xE800000000000000)
    {
    }

    else
    {
      v19 = sub_1DB09E254();

      if ((v19 & 1) == 0)
      {
        v20 = *MEMORY[0x1E696AA08];
        v21 = sub_1DB09D6C4();
        v23 = v22;
        v88 = sub_1DAF4D7A4();
        *&v87 = v13;
        sub_1DAF40D20(&v87, v86);
        v24 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v86, v21, v23, isUniquelyReferenced_nonNull_native);
        sub_1DAF8C080(a1);

        v26 = v11;
        v27 = 128;
LABEL_27:
        v84 = v27;
        if (*(v26 + 16) && (v37 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v38 & 1) != 0) && (sub_1DAF409DC(*(v26 + 56) + 32 * v37, &v87), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
        {
          v39 = *&v86[0];
        }

        else
        {
          v39 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_1DAF72EC0(0, *(v39 + 2) + 1, 1, v39);
        }

        v43 = *(v39 + 2);
        v42 = *(v39 + 3);
        if (v43 >= v42 >> 1)
        {
          v39 = sub_1DAF72EC0((v42 > 1), v43 + 1, 1, v39);
        }

        *(v39 + 2) = v43 + 1;
        v44 = &v39[56 * v43];
        *(v44 + 4) = 0xD000000000000019;
        *(v44 + 5) = 0x80000001DB0C3870;
        *(v44 + 6) = 0xD00000000000002DLL;
        *(v44 + 7) = 0x80000001DB0C3590;
        *(v44 + 8) = 0xD00000000000001DLL;
        *(v44 + 9) = 0x80000001DB0C3810;
        *(v44 + 10) = 694;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        *&v87 = v39;
        sub_1DAF40D20(&v87, v86);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v86, 0x636F766E4949444FLL, 0xEE00736E6F697461, v45);
        v46 = qword_1DB0A5290[v84];
        v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v48 = sub_1DB09D6B4();
        v49 = sub_1DB09D604();
        v50 = [v47 initWithDomain:v48 code:v46 userInfo:v49];

        v51 = v2[22];
        *&v87 = v2[21];
        *(&v87 + 1) = v51;
        *&v86[0] = 0;
        *(&v86[0] + 1) = 0xE000000000000000;

        sub_1DB09DE44();
        MEMORY[0x1E127FE90](0xD000000000000033, 0x80000001DB0C3890);
        swift_getErrorValue();
        v52 = sub_1DB09E324();
        MEMORY[0x1E127FE90](v52);

        v54 = *(&v86[0] + 1);
        v53 = *&v86[0];
        v55 = 8;
        goto LABEL_50;
      }
    }

    ODIErrorCode.init(rawValue:)([v13 code]);
    v36 = [v13 userInfo];
    v26 = sub_1DB09D624();
    sub_1DAF8C080(a1);

    if (v87 == 211)
    {
      v27 = 128;
    }

    else
    {
      v27 = v87 ^ 0x80u;
    }

    goto LABEL_27;
  }

  if (a1 >> 62 == 1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v5 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
    v6 = sub_1DB09CE64();
    v7 = [v6 domain];
    v8 = sub_1DB09D6C4();
    v10 = v9;

    if (v8 == 0x726F72724549444FLL && v10 == 0xE800000000000000)
    {
    }

    else
    {
      v32 = sub_1DB09E254();

      if ((v32 & 1) == 0)
      {
        v56 = *MEMORY[0x1E696AA08];
        v57 = sub_1DB09D6C4();
        v59 = v58;
        v88 = sub_1DAF4D7A4();
        *&v87 = v6;
        sub_1DAF40D20(&v87, v86);
        v60 = v6;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v86, v57, v59, v61);
        sub_1DAF8C080(a1);

        v34 = v4;
        v35 = 128;
LABEL_40:
        v85 = v35;
        if (*(v34 + 16) && (v62 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v63 & 1) != 0) && (sub_1DAF409DC(*(v34 + 56) + 32 * v62, &v87), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
        {
          v64 = *&v86[0];
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_1DAF72EC0(0, *(v64 + 2) + 1, 1, v64);
        }

        v66 = *(v64 + 2);
        v65 = *(v64 + 3);
        if (v66 >= v65 >> 1)
        {
          v64 = sub_1DAF72EC0((v65 > 1), v66 + 1, 1, v64);
        }

        *(v64 + 2) = v66 + 1;
        v67 = &v64[56 * v66];
        *(v67 + 4) = 0xD000000000000019;
        *(v67 + 5) = 0x80000001DB0C37F0;
        *(v67 + 6) = 0xD00000000000002DLL;
        *(v67 + 7) = 0x80000001DB0C3590;
        *(v67 + 8) = 0xD00000000000001DLL;
        *(v67 + 9) = 0x80000001DB0C3810;
        *(v67 + 10) = 698;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        *&v87 = v64;
        sub_1DAF40D20(&v87, v86);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v86, 0x636F766E4949444FLL, 0xEE00736E6F697461, v68);
        v69 = qword_1DB0A5290[v85];
        v70 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v71 = sub_1DB09D6B4();
        v72 = sub_1DB09D604();
        v50 = [v70 initWithDomain:v71 code:v69 userInfo:v72];

        v73 = v2[22];
        *&v87 = v2[21];
        *(&v87 + 1) = v73;
        *&v86[0] = 0;
        *(&v86[0] + 1) = 0xE000000000000000;

        sub_1DB09DE44();
        MEMORY[0x1E127FE90](0xD000000000000032, 0x80000001DB0C3830);
        swift_getErrorValue();
        v74 = sub_1DB09E324();
        MEMORY[0x1E127FE90](v74);

        v54 = *(&v86[0] + 1);
        v53 = *&v86[0];
        v55 = 12;
LABEL_50:
        LOBYTE(v86[0]) = v55;
        CoreODILogger.error(_:category:)(v53, v54, v86);

LABEL_59:

        return;
      }
    }

    ODIErrorCode.init(rawValue:)([v6 code]);
    v33 = [v6 userInfo];
    v34 = sub_1DB09D624();
    sub_1DAF8C080(a1);

    if (v87 == 211)
    {
      v35 = 128;
    }

    else
    {
      v35 = v87 ^ 0x80u;
    }

    goto LABEL_40;
  }

  v28 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  if (v28 > 1)
  {
    v40 = v1[22];
    *&v87 = v1[21];
    *(&v87 + 1) = v40;
    if (v28 == 2)
    {
      v41 = "ORD is configured to send, but ordRequest is invalid.";
    }

    else
    {
      v41 = "OTD is configured to send, but otdRequest is invalid.";
    }

    v30 = (v41 - 32);
    LOBYTE(v86[0]) = 14;

    v31 = 0xD000000000000035;
    goto LABEL_58;
  }

  if (!v28)
  {
    v29 = v1[22];
    *&v87 = v1[21];
    *(&v87 + 1) = v29;
    v30 = "as configured not to send for ";
    LOBYTE(v86[0]) = 12;

    v31 = 0xD00000000000002ALL;
LABEL_58:
    CoreODILogger.info(_:category:)(v31, v30 | 0x8000000000000000, v86);
    goto LABEL_59;
  }

  v76 = v1[21];
  v75 = v1[22];
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;

  sub_1DB09DE44();

  *&v86[0] = 0xD00000000000002ELL;
  *(&v86[0] + 1) = 0x80000001DB0C3790;
  swift_beginAccess();
  v78 = v1[50];
  v77 = v1[51];

  MEMORY[0x1E127FE90](v78, v77);

  if (qword_1EE3019A0 != -1)
  {
    swift_once();
  }

  v79 = sub_1DB09D4B4();
  __swift_project_value_buffer(v79, qword_1EE30A068);

  v80 = sub_1DB09D494();
  v81 = sub_1DB09DB54();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v86[0] = v83;
    *v82 = 136315650;
    *(v82 + 4) = sub_1DB015E84(v76, v75, v86);
    *(v82 + 12) = 2080;
    *(v82 + 14) = sub_1DB015E84(0x3638646539396335, 0xE800000000000000, v86);
    *(v82 + 22) = 2080;
    *(v82 + 24) = sub_1DB015E84(0xD00000000000002ELL, 0x80000001DB0C3790, v86);
    _os_log_impl(&dword_1DAF16000, v80, v81, "[%s] (%s) %s", v82, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1281810](v83, -1, -1);
    MEMORY[0x1E1281810](v82, -1, -1);
  }
}

uint64_t sub_1DAF883EC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = v3;
  *(v4 + 160) = *a2;
  *(v4 + 96) = *a3;
  v5 = *(a3 + 24);
  *(v4 + 112) = *(a3 + 16);
  *(v4 + 120) = v5;
  *(v4 + 161) = *(a3 + 96);
  *(v4 + 162) = *(a3 + 97);
  return MEMORY[0x1EEE6DFA0](sub_1DAF88434, v3, 0);
}

uint64_t sub_1DAF88434()
{
  v24 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 160);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  LOBYTE(v22) = v2;
  (*(v6 + 48))(&v22, v5, v6);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v4 + 448), (v0 + 16));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1)
  {
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 128) = v8;
  v9 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1 && (v10 = sub_1DB09D6B4(), v11 = [v9 stringForKey_], v10, v11))
  {
    v12 = *(v0 + 88);
    v13 = sub_1DB09D6C4();
    v15 = v14;

    v20 = *(v12 + 168);
    v21 = *(v12 + 176);
    v22 = 0;
    v23 = 0xE000000000000000;

    sub_1DB09DE44();

    v22 = 0xD000000000000020;
    v23 = 0x80000001DB0C3A30;
    MEMORY[0x1E127FE90](v13, v15);

    v16 = v22;
    LOBYTE(v22) = 14;
    CoreODILogger.info(_:category:)(v16, v23, &v22);
  }

  else
  {

    if (v1)
    {
      v13 = *(v0 + 112);
      v15 = *(v0 + 120);
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }
  }

  *(v0 + 136) = v13;
  *(v0 + 144) = v15;
  v17 = __swift_project_boxed_opaque_existential_1((*(v0 + 88) + 208), *(*(v0 + 88) + 232));
  v18 = *v17;
  *(v0 + 152) = *v17;

  return MEMORY[0x1EEE6DFA0](sub_1DAF886D4, v18, 0);
}

uint64_t sub_1DAF886D4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 162);
  v3 = *(v0 + 161);
  v4 = *(v0 + 104);
  swift_beginAccess();
  *(v1 + 113) = v3;
  *(v1 + 112) = v2;
  if (v4)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 104);
    v7 = *(v5 + 144);
    *(v5 + 136) = *(v0 + 128);
    *(v5 + 144) = v6;
  }

  v8 = *(v0 + 144);
  if (v8)
  {
    v9 = *(v0 + 152);
    v10 = *(v9 + 128);
    *(v9 + 120) = *(v0 + 136);
    *(v9 + 128) = v8;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DAF88798(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 24);
  v45 = *(a2 + 16);
  v46 = *(a2 + 48);
  v44 = *(a2 + 56);
  v49 = *(a2 + 72);
  v6 = *(a2 + 96);
  v47 = *(a2 + 97);
  v7 = *(v2 + 176);
  v61 = *(v2 + 168);
  v62 = v7;
  LOBYTE(v60[0]) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000027, 0x80000001DB0C3960, v60);

  v8 = *(v2 + 176);
  v61 = *(v2 + 168);
  v62 = v8;
  v60[0] = 0;
  v60[1] = 0xE000000000000000;

  sub_1DB09DE44();

  strcpy(v60, "  ord enabled ");
  HIBYTE(v60[1]) = -18;
  if (v6)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v6)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v9, v10);

  LOBYTE(v58) = 8;
  CoreODILogger.debug(_:category:)(v60[0], v60[1], &v58);

  v11 = *(v2 + 176);
  v48 = v2;
  v58 = *(v2 + 168);
  v59 = v11;

  sub_1DB09DE44();

  v57[0] = 0xD000000000000012;
  v57[1] = 0x80000001DB0C3990;
  if (v3)
  {

    v12 = v3;
  }

  else
  {
    v12 = 0xE300000000000000;
    v4 = 4271950;
  }

  MEMORY[0x1E127FE90](v4, v12);

  v13 = v57[0];
  LOBYTE(v57[0]) = 8;
  CoreODILogger.debug(_:category:)(v13, v57[1], v57);

  v14 = *(v2 + 176);
  v58 = *(v2 + 168);
  v59 = v14;
  v57[0] = 0;
  v57[1] = 0xE000000000000000;

  sub_1DB09DE44();

  strcpy(v57, "  otd enabled ");
  HIBYTE(v57[1]) = -18;
  if (v47)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v47)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v15, v16);

  LOBYTE(v56[0]) = 8;
  CoreODILogger.debug(_:category:)(v57[0], v57[1], v56);

  v17 = *(v2 + 176);
  v56[0] = *(v2 + 168);
  v56[1] = v17;

  sub_1DB09DE44();

  v54 = 0xD000000000000012;
  v55 = 0x80000001DB0C39B0;
  if (v3)
  {

    v18 = v45;
  }

  else
  {
    v5 = 0xE300000000000000;
    v18 = 4271950;
  }

  MEMORY[0x1E127FE90](v18, v5);

  LOBYTE(v52) = 8;
  CoreODILogger.debug(_:category:)(v54, v55, &v52);

  v19 = *(v2 + 176);
  v52 = *(v2 + 168);
  v53 = v19;

  sub_1DB09DE44();

  v50 = 0xD000000000000012;
  v51 = 0x80000001DB0C39D0;
  if (v3)
  {
    v20 = v44;

    v21 = v46;
  }

  else
  {
    v20 = 0xE300000000000000;
    v21 = 4271950;
  }

  MEMORY[0x1E127FE90](v21, v20);

  v22 = v50;
  LOBYTE(v50) = 8;
  CoreODILogger.debug(_:category:)(v22, v51, &v50);

  v23 = 1 << *(v49 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v49 + 64);
  v26 = (v23 + 63) >> 6;

  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v30 >= v26)
    {
      break;
    }

    v25 = *(v49 + 64 + 8 * v30);
    ++v28;
    if (v25)
    {
      v28 = v30;
      do
      {
LABEL_29:
        v31 = __clz(__rbit64(v25)) | (v28 << 6);
        v32 = (*(v49 + 48) + 16 * v31);
        v34 = *v32;
        v33 = v32[1];
        v35 = *(*(v49 + 56) + 8 * v31);
        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1DAF72DB4(0, *(v29 + 2) + 1, 1, v29);
        }

        v37 = *(v29 + 2);
        v36 = *(v29 + 3);
        if (v37 >= v36 >> 1)
        {
          v29 = sub_1DAF72DB4((v36 > 1), v37 + 1, 1, v29);
        }

        v25 &= v25 - 1;

        *(v29 + 2) = v37 + 1;
        v38 = &v29[16 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v33;
      }

      while (v25);
    }
  }

  v39 = *(v48 + 176);
  v52 = *(v48 + 168);
  v53 = v39;
  v50 = 0;
  v51 = 0xE000000000000000;

  sub_1DB09DE44();

  v50 = 0xD000000000000012;
  v51 = 0x80000001DB0C39F0;
  v40 = MEMORY[0x1E1280010](v29, MEMORY[0x1E69E6158]);
  v42 = v41;

  MEMORY[0x1E127FE90](v40, v42);

  v43 = v50;
  LOBYTE(v50) = 8;
  CoreODILogger.debug(_:category:)(v43, v51, &v50);
}

uint64_t sub_1DAF88D7C(uint64_t a1)
{
  *(v2 + 1160) = v1;
  v3 = *(a1 + 112);
  *(v2 + 984) = *(a1 + 96);
  *(v2 + 1000) = v3;
  v4 = *(a1 + 136);
  *(v2 + 1016) = *(a1 + 128);
  v5 = *(a1 + 48);
  *(v2 + 920) = *(a1 + 32);
  *(v2 + 936) = v5;
  v6 = *(a1 + 80);
  *(v2 + 952) = *(a1 + 64);
  *(v2 + 968) = v6;
  v7 = *(a1 + 16);
  *(v2 + 888) = *a1;
  *(v2 + 904) = v7;
  *(v2 + 1168) = v4;
  v8 = *(a1 + 152);
  *(v2 + 1176) = *(a1 + 144);
  *(v2 + 1184) = v8;
  v9 = *(a1 + 160);
  *(v2 + 1192) = v9;
  v10 = *(a1 + 248);
  v11 = *(a1 + 280);
  *(v2 + 848) = *(a1 + 264);
  *(v2 + 864) = v11;
  v12 = *(a1 + 304);
  *(v2 + 880) = *(a1 + 296);
  v13 = *(a1 + 184);
  v14 = *(a1 + 216);
  *(v2 + 784) = *(a1 + 200);
  *(v2 + 800) = v14;
  *(v2 + 816) = *(a1 + 232);
  *(v2 + 832) = v10;
  *(v2 + 752) = *(a1 + 168);
  *(v2 + 768) = v13;
  *(v2 + 1200) = v12;
  v15 = *(a1 + 320);
  *(v2 + 1208) = *(a1 + 312);
  *(v2 + 1216) = v15;
  v16 = *(a1 + 328);
  *(v2 + 1224) = v16;
  sub_1DAF40A84(v2 + 888, v2 + 1024, &qword_1ECC0E798, &qword_1DB0A5120);

  sub_1DAF4ED88(v8, v9);
  sub_1DAF40A84(v2 + 752, v2 + 1024, &qword_1ECC0E798, &qword_1DB0A5120);

  sub_1DAF4ED88(v15, v16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF88EF4, v1, 0);
}

uint64_t sub_1DAF88EF4()
{
  v30 = *(v0 + 1216);
  v31 = *(v0 + 1224);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1160);
  *(v0 + 608) = *(v0 + 1016);
  v8 = *(v0 + 1000);
  *(v0 + 576) = *(v0 + 984);
  *(v0 + 592) = v8;
  v9 = *(v0 + 936);
  *(v0 + 512) = *(v0 + 920);
  *(v0 + 528) = v9;
  v10 = *(v0 + 968);
  *(v0 + 544) = *(v0 + 952);
  *(v0 + 560) = v10;
  v11 = *(v0 + 904);
  *(v0 + 480) = *(v0 + 888);
  *(v0 + 496) = v11;
  v12 = *(v0 + 864);
  *(v0 + 712) = *(v0 + 848);
  *(v0 + 728) = v12;
  *(v0 + 744) = *(v0 + 880);
  v13 = *(v0 + 800);
  *(v0 + 648) = *(v0 + 784);
  *(v0 + 664) = v13;
  v14 = *(v0 + 832);
  *(v0 + 680) = *(v0 + 816);
  *(v0 + 696) = v14;
  v15 = *(v0 + 768);
  *(v0 + 616) = *(v0 + 752);
  *(v0 + 632) = v15;
  swift_beginAccess();
  memcpy((v0 + 16), (v7 + 488), 0x1D0uLL);
  *(v7 + 488) = *(v0 + 480);
  v16 = *(v0 + 496);
  v17 = *(v0 + 512);
  v18 = *(v0 + 544);
  *(v7 + 536) = *(v0 + 528);
  *(v7 + 552) = v18;
  *(v7 + 504) = v16;
  *(v7 + 520) = v17;
  v19 = *(v0 + 560);
  v20 = *(v0 + 576);
  v21 = *(v0 + 592);
  *(v7 + 616) = *(v0 + 608);
  *(v7 + 584) = v20;
  *(v7 + 600) = v21;
  *(v7 + 568) = v19;
  *(v7 + 624) = v6;
  *(v7 + 632) = v5;
  *(v7 + 672) = 0u;
  *(v7 + 688) = 0u;
  *(v7 + 640) = 0u;
  *(v7 + 656) = 0u;
  *(v7 + 704) = v4;
  *(v7 + 712) = v3;
  *(v7 + 720) = *(v0 + 616);
  v22 = *(v0 + 632);
  v23 = *(v0 + 648);
  v24 = *(v0 + 680);
  *(v7 + 768) = *(v0 + 664);
  *(v7 + 784) = v24;
  *(v7 + 736) = v22;
  *(v7 + 752) = v23;
  v25 = *(v0 + 696);
  v26 = *(v0 + 712);
  v27 = *(v0 + 728);
  *(v7 + 848) = *(v0 + 744);
  *(v7 + 816) = v26;
  *(v7 + 832) = v27;
  *(v7 + 800) = v25;
  *(v7 + 856) = v2;
  *(v7 + 864) = v1;
  *(v7 + 904) = 0u;
  *(v7 + 920) = 0u;
  *(v7 + 872) = 0u;
  *(v7 + 888) = 0u;
  *(v7 + 936) = v30;
  *(v7 + 944) = v31;
  sub_1DAF8BF7C(v0 + 16);
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1DAF890B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 4528) = v17;
  *(v8 + 4512) = v16;
  *(v8 + 4504) = v15;
  *(v8 + 4496) = a8;
  *(v8 + 4488) = a7;
  *(v8 + 603) = a6;
  *(v8 + 4480) = a5;
  *(v8 + 4472) = a4;
  *(v8 + 4464) = a3;
  *(v8 + 602) = a2;
  *(v8 + 4536) = *v15;
  *(v8 + 4544) = *(v15 + 8);
  *(v8 + 4560) = *(v15 + 24);
  *(v8 + 4568) = *(v15 + 32);
  v10 = type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0);
  *(v8 + 4584) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 4592) = swift_task_alloc();
  v12 = *(a1 + 16);
  *(v8 + 4600) = *a1;
  *(v8 + 4616) = v12;
  *(v8 + 604) = *(a1 + 48);
  *(v8 + 4632) = *(a1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1DAF891CC, 0, 0);
}

uint64_t sub_1DAF891CC()
{
  v17 = v0;
  v1 = *(v0 + 4472);
  v2 = *(v0 + 602);
  v13 = *(v1 + 168);
  v14 = *(v1 + 176);

  sub_1DB09DE44();

  v15 = 0xD000000000000014;
  v16 = 0x80000001DB0C3670;
  if (v2)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "Error sendingODNResults: ";
  }

  else
  {
    v4 = "ODN Callback called ";
  }

  MEMORY[0x1E127FE90](v3, v4 | 0x8000000000000000);

  v5 = v15;
  LOBYTE(v15) = 14;
  CoreODILogger.info(_:category:)(v5, v16, &v15);

  v6 = swift_task_alloc();
  *(v0 + 4640) = v6;
  *v6 = v0;
  v6[1] = sub_1DAF89330;
  v7 = *(v0 + 603);
  v8 = *(v0 + 4480);
  v9 = *(v0 + 4472);
  v10 = *(v0 + 4464);
  v11 = *(v0 + 602);

  return sub_1DAF8A5D8(v10, v8, v11, v7);
}

uint64_t sub_1DAF89330()
{
  v1 = *(*v0 + 4640);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8942C, 0, 0);
}

uint64_t sub_1DAF8942C()
{
  v23 = v0;
  v1 = *(v0 + 4472);
  v2 = *(v0 + 602);
  v3 = *(v1 + 176);
  v21[0] = *(v1 + 168);
  v21[1] = v3;
  v22 = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000015, 0x80000001DB0C36B0, &v22);

  if (v2)
  {
    *(v0 + 4680) = 1;
    *(v0 + 4648) = 0u;
    *(v0 + 4664) = 0u;
    v4 = *(v0 + 4624) >> 60;
    if (v4 == 15)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0xF000000000000000;
    }

    else
    {
      v9 = *(v0 + 604);
      v13 = *(v0 + 4616);
      v14 = *(v0 + 4608);
      v15 = *(v0 + 4600);
      v7 = sub_1DB09D014();
      v8 = v16;
      sub_1DAF4ED88(v15, v14);
      v5 = *(v0 + 4632);
      v10 = *(v0 + 4608);
      v6 = *(v0 + 4600);
    }

    *(v0 + 4704) = v9;
    *(v0 + 4696) = v8;
    *(v0 + 4688) = v7;
    v17 = *(v0 + 603);
    v18 = *(v0 + 4472);
    LOBYTE(v21[0]) = 1;
    *(v0 + 4712) = sub_1DAF616DC(v6, v10, v5, v4 > 0xE, v21);
    *(v0 + 4720) = v19;
    sub_1DAF4AC40(v6, v10);
    v12 = sub_1DAF89924;
    v11 = v18;
  }

  else
  {
    v11 = *(v0 + 4472);
    v12 = sub_1DAF895C8;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1DAF895C8()
{
  v1 = *(v0 + 4472);
  swift_beginAccess();
  sub_1DAF8B8D8(v1 + 400, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89650, 0, 0);
}

uint64_t sub_1DAF89650()
{
  v28 = v0;
  sub_1DAF8BFD0(v0 + 48, v0 + 4192);
  sub_1DAF8B934(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DB0A04E0;
  *(v1 + 32) = 0;
  v2 = *(v0 + 4192);
  v3 = *(v0 + 4200);
  *(v1 + 64) = MEMORY[0x1E69E6158];
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;

  v4 = sub_1DAF3E280(v1);
  swift_setDeallocating();
  sub_1DAF40AEC(v1 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  swift_deallocClassInstance();
  v26 = 126;
  v5 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0x656D6974204E444FLL, 0xEB0000000074756FLL, 0, &v26, 0, v4, 0xD00000000000002DLL, 0x80000001DB0C3590, 0xD00000000000001CLL, 0x80000001DB0C3630, 399);

  sub_1DB041E04(v2, v3, v0 + 4296);
  v6 = *(v0 + 4296);
  v7 = *(v0 + 4312);
  v8 = *(v0 + 4304);
  v9 = *(v0 + 4320);
  v10 = *(v0 + 4328);
  *(v0 + 4424) = *(v0 + 4320);
  sub_1DAF40A84(v0 + 4424, v0 + 4408, &unk_1ECC0EAE0, &unk_1DB0A4650);

  sub_1DAF8C02C(v0 + 4192);
  *(v0 + 4680) = v10;
  *(v0 + 4672) = v9;
  *(v0 + 4664) = v7;
  *(v0 + 4656) = v8;
  *(v0 + 4648) = v6;
  v11 = *(v0 + 4624) >> 60;
  if (v11 == 15)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    v16 = *(v0 + 604);
    v18 = *(v0 + 4616);
    v19 = *(v0 + 4608);
    v20 = *(v0 + 4600);
    v14 = sub_1DB09D014();
    v15 = v21;
    sub_1DAF4ED88(v20, v19);
    v12 = *(v0 + 4632);
    v17 = *(v0 + 4608);
    v13 = *(v0 + 4600);
  }

  *(v0 + 4704) = v16;
  *(v0 + 4696) = v15;
  *(v0 + 4688) = v14;
  v22 = *(v0 + 603);
  v23 = *(v0 + 4472);
  v27 = 1;
  *(v0 + 4712) = sub_1DAF616DC(v13, v17, v12, v11 > 0xE, &v27);
  *(v0 + 4720) = v24;
  sub_1DAF4AC40(v13, v17);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89924, v23, 0);
}

uint64_t sub_1DAF89924()
{
  v1 = *(v0 + 4472);
  swift_beginAccess();
  sub_1DAF8B8D8(v1 + 400, v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1DAF899AC, 0, 0);
}

uint64_t sub_1DAF899AC()
{
  v1 = v0[559];
  v0[591] = v0[78];
  v0[592] = v0[79];

  sub_1DAF8B934((v0 + 76));

  return MEMORY[0x1EEE6DFA0](sub_1DAF89A2C, v1, 0);
}

uint64_t sub_1DAF89A2C()
{
  sub_1DAF8B8D8(*(v0 + 4472) + 400, v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89A9C, 0, 0);
}

uint64_t sub_1DAF89A9C()
{
  v1 = v0[559];
  v0[593] = v0[150];
  v0[594] = v0[151];

  sub_1DAF8B934((v0 + 150));

  return MEMORY[0x1EEE6DFA0](sub_1DAF89B1C, v1, 0);
}

uint64_t sub_1DAF89B1C()
{
  sub_1DAF8B8D8(*(v0 + 4472) + 400, v0 + 1792);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89B8C, 0, 0);
}

uint64_t sub_1DAF89B8C()
{
  v1 = (v0 + 1880);
  *(v0 + 3240) = *(v0 + 2008);
  v2 = *(v0 + 1992);
  *(v0 + 3208) = *(v0 + 1976);
  *(v0 + 3224) = v2;
  v3 = *(v0 + 1928);
  *(v0 + 3144) = *(v0 + 1912);
  *(v0 + 3160) = v3;
  v4 = *(v0 + 1960);
  *(v0 + 3176) = *(v0 + 1944);
  *(v0 + 3192) = v4;
  v5 = *(v0 + 1896);
  *(v0 + 3112) = *(v0 + 1880);
  *(v0 + 3128) = v5;
  if (sub_1DAF8B9A8(v0 + 3112) == 1)
  {
    sub_1DAF8B934(v0 + 1792);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 1944);
    *(v0 + 3600) = *(v0 + 1960);
    v9 = *(v0 + 1960);
    *(v0 + 3616) = *(v0 + 1976);
    v10 = *(v0 + 1976);
    *(v0 + 3632) = *(v0 + 1992);
    v11 = *v1;
    *(v0 + 3536) = *(v0 + 1896);
    v12 = *(v0 + 1896);
    *(v0 + 3552) = *(v0 + 1912);
    v13 = *(v0 + 1912);
    *(v0 + 3568) = *(v0 + 1928);
    v14 = *(v0 + 1928);
    *(v0 + 3584) = *(v0 + 1944);
    *(v0 + 3520) = *v1;
    v15 = *(v0 + 1992);
    *(v0 + 3480) = v10;
    *(v0 + 3496) = v15;
    *(v0 + 3416) = v13;
    *(v0 + 3432) = v14;
    *(v0 + 3448) = v8;
    *(v0 + 3464) = v9;
    v16 = *(v0 + 2008);
    *(v0 + 3648) = v16;
    v6 = *(v0 + 3640);
    v7 = v16;
    *(v0 + 3512) = *(v0 + 2008);
    *(v0 + 3384) = v11;
    *(v0 + 3400) = v12;
    sub_1DAF49ECC(v0 + 3384, v0 + 3656);
    sub_1DAF8B934(v0 + 1792);

    sub_1DAF40AEC(v0 + 3520, &qword_1ECC0E798, &qword_1DB0A5120);
  }

  *(v0 + 4768) = v7;
  *(v0 + 4760) = v6;
  v17 = *(v0 + 4472);
  sub_1DAF40A84(*(v0 + 4488), v0 + 4128, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89D10, v17, 0);
}

uint64_t sub_1DAF89D10()
{
  sub_1DAF8B8D8(*(v0 + 4472) + 400, v0 + 2384);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89D80, 0, 0);
}

uint64_t sub_1DAF89D80()
{
  *(v0 + 3872) = *(v0 + 2784);
  *(v0 + 3888) = *(v0 + 2800);
  *(v0 + 3904) = *(v0 + 2816);
  *(v0 + 3920) = *(v0 + 2832);
  *(v0 + 3808) = *(v0 + 2720);
  *(v0 + 3824) = *(v0 + 2736);
  *(v0 + 3840) = *(v0 + 2752);
  *(v0 + 3856) = *(v0 + 2768);
  *(v0 + 3792) = *(v0 + 2704);
  if (sub_1DAF8B9A8(v0 + 3792) == 1)
  {
    sub_1DAF8B934(v0 + 2384);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v1 = *(v0 + 2768);
    *(v0 + 3056) = *(v0 + 2784);
    v2 = *(v0 + 2784);
    *(v0 + 3072) = *(v0 + 2800);
    v3 = *(v0 + 2800);
    *(v0 + 3088) = *(v0 + 2816);
    v4 = *(v0 + 2704);
    *(v0 + 2992) = *(v0 + 2720);
    v5 = *(v0 + 2720);
    *(v0 + 3008) = *(v0 + 2736);
    v6 = *(v0 + 2736);
    *(v0 + 3024) = *(v0 + 2752);
    v7 = *(v0 + 2752);
    *(v0 + 3040) = *(v0 + 2768);
    *(v0 + 2976) = *(v0 + 2704);
    v8 = *(v0 + 2816);
    *(v0 + 4024) = v3;
    *(v0 + 4040) = v8;
    *(v0 + 3960) = v6;
    *(v0 + 3976) = v7;
    *(v0 + 3992) = v1;
    *(v0 + 4008) = v2;
    *(v0 + 3104) = *(v0 + 2832);
    v49 = *(v0 + 3096);
    v9 = *(v0 + 3104);
    *(v0 + 4056) = *(v0 + 2832);
    *(v0 + 3928) = v4;
    *(v0 + 3944) = v5;
    sub_1DAF49ECC(v0 + 3928, v0 + 3248);
    sub_1DAF8B934(v0 + 2384);
    v48 = v9;

    sub_1DAF40AEC(v0 + 2976, &qword_1ECC0E798, &qword_1DB0A5120);
  }

  v39 = *(v0 + 4760);
  v40 = *(v0 + 4768);
  v37 = *(v0 + 4744);
  v35 = *(v0 + 4728);
  v10 = *(v0 + 4704);
  v43 = *(v0 + 4688);
  v44 = *(v0 + 4664);
  v45 = *(v0 + 4680);
  v42 = *(v0 + 4648);
  v11 = *(v0 + 4592);
  v12 = *(v0 + 4584);
  v38 = *(v0 + 4560);
  v34 = *(v0 + 4536);
  v13 = *(v0 + 4552);
  v46 = *(v0 + 4528);
  v41 = *(v0 + 4520);
  v14 = *(v0 + 4512);
  v47 = *(v0 + 4504);
  v15 = *(v0 + 4496);
  v16 = *(v0 + 4488);
  v36 = *(v0 + 603);
  v17 = *(v0 + 4472);
  v33 = *(v0 + 4568);
  v32 = *(v0 + 4712);
  sub_1DAF3523C(*(v0 + 4480), v11 + 376);
  v18 = *(v12 + 88);
  v19 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  (*(*(v19 - 8) + 56))(v11 + v18, 1, 1, v19);
  *v11 = v35;
  *(v11 + 16) = v37;
  *(v11 + 32) = v39;
  *(v11 + 40) = v40;
  v20 = *v16;
  v21 = v16[1];
  v22 = v16[3];
  *(v11 + 80) = v16[2];
  *(v11 + 96) = v22;
  *(v11 + 48) = v20;
  *(v11 + 64) = v21;
  *(v11 + 112) = v49;
  *(v11 + 120) = v48;
  v23 = *v15;
  v24 = v15[1];
  v25 = v15[3];
  *(v11 + 160) = v15[2];
  *(v11 + 176) = v25;
  *(v11 + 128) = v23;
  *(v11 + 144) = v24;
  *(v11 + 192) = v43;
  *(v11 + 208) = v34;
  *(v11 + 224) = v13;
  *(v11 + 232) = v38;
  *(v11 + 240) = v33;
  *(v11 + 256) = v32;
  *(v11 + 272) = v10;
  *(v11 + 280) = v42;
  *(v11 + 296) = v44;
  *(v11 + 312) = v45;
  *(v11 + 320) = v36;
  *(v11 + 328) = v14;
  *(v11 + 336) = v10 + 1;
  *(v11 + 344) = 0;
  *(v11 + 352) = v41;
  *(v11 + 360) = v10 + 2;
  *(v11 + 368) = 0;
  *(v11 + 416) = 0;
  *(v11 + 424) = 0;
  v26 = __swift_project_boxed_opaque_existential_1((v17 + 208), *(v17 + 232));
  v27 = *(v46 + 33);
  v28 = *v26;
  sub_1DAF40A84(v15, v0 + 4064, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  sub_1DAF8BC10(v47, v0 + 4248);

  v29 = swift_task_alloc();
  *(v0 + 4776) = v29;
  *v29 = v0;
  v29[1] = sub_1DAF8A16C;
  v30 = *(v0 + 4592);

  return sub_1DAFF9558(v30, v27);
}

uint64_t sub_1DAF8A16C()
{
  v2 = *(*v1 + 4776);
  v5 = *v1;
  *(*v1 + 4784) = v0;

  if (v0)
  {
    v3 = sub_1DAF8A2FC;
  }

  else
  {
    v3 = sub_1DAF8A280;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF8A280()
{
  sub_1DAF8C320(*(v0 + 4592), type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  v1 = *(v0 + 4592);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAF8A2FC()
{
  v15 = v0;
  v1 = *(v0 + 4784);
  *(v0 + 4440) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 4472);

    *(v0 + 4792) = *(v0 + 4448);

    return MEMORY[0x1EEE6DFA0](sub_1DAF8A4DC, v3, 0);
  }

  else
  {
    v4 = *(v0 + 4784);
    v5 = *(v0 + 4592);
    v6 = *(v0 + 4472);

    v12 = *(v6 + 168);
    v13 = *(v6 + 176);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;

    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000019, 0x80000001DB0C36D0);
    swift_getErrorValue();
    v7 = *(v0 + 4336);
    v8 = *(v0 + 4344);
    sub_1DB09E234();
    LOBYTE(v14[0]) = 14;
    CoreODILogger.info(_:category:)(0, 0xE000000000000000, v14);

    sub_1DAF8C320(v5, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
    v9 = *(v0 + 4592);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1DAF8A4DC()
{
  v1 = *(v0 + 4472);
  sub_1DAF877B0(*(v0 + 4792));

  return MEMORY[0x1EEE6DFA0](sub_1DAF8A548, 0, 0);
}

uint64_t sub_1DAF8A548()
{
  v1 = *(v0 + 4592);
  sub_1DAF8C080(*(v0 + 4792));
  sub_1DAF8C320(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);

  v2 = *(v0 + 4592);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DAF8A5D8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 200) = a2;
  *(v5 + 208) = v4;
  *(v5 + 249) = a4;
  *(v5 + 248) = a3;
  *(v5 + 192) = a1;
  v6 = type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0);
  *(v5 + 216) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF8A678, v4, 0);
}

uint64_t sub_1DAF8A678()
{
  v39 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 248);
    swift_beginAccess();
    v4 = v2[54];
    v5 = v2[55];
    v6 = v1;

    sub_1DB041E04(v4, v5, v0 + 16);
    v33 = *(v0 + 24);
    v34 = *(v0 + 16);
    v35 = *(v0 + 32);
    v31 = *(v0 + 48);
    v32 = *(v0 + 40);
    *(v0 + 128) = *(v0 + 40);
    sub_1DAF40A84(v0 + 128, v0 + 144, &unk_1ECC0EAE0, &unk_1DB0A4650);

    v8 = v2[21];
    v7 = v2[22];
    if (v3)
    {
      v37 = v2[21];
      v38 = v7;
      LOBYTE(v36[0]) = 8;

      CoreODILogger.debug(_:category:)(0xD000000000000056, 0x80000001DB0C3900, v36);
    }

    else
    {
      v36[0] = v2[21];
      v36[1] = v7;

      sub_1DB09DE44();

      v37 = 0xD000000000000026;
      v38 = 0x80000001DB0C38D0;
      swift_getErrorValue();
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);
      v14 = *(v0 + 96);
      v15 = sub_1DB09E324();
      MEMORY[0x1E127FE90](v15);

      LOBYTE(v37) = 8;
      CoreODILogger.error(_:category:)(0xD000000000000026, 0x80000001DB0C38D0, &v37);
    }

    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 249);
    v19 = *(v0 + 208);
    v21 = *(v19 + 416);
    v20 = *(v19 + 424);
    v22 = v2[50];
    v23 = *(v19 + 408);
    sub_1DAF3523C(*(v0 + 200), v16 + 376);
    v24 = *(v17 + 88);
    v25 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
    (*(*(v25 - 8) + 56))(v16 + v24, 1, 1, v25);
    *v16 = v21;
    *(v16 + 8) = v20;
    *(v16 + 16) = v22;
    *(v16 + 24) = v23;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
    *(v16 + 128) = 0u;
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
    *(v16 + 176) = 0u;
    *(v16 + 192) = 0u;
    *(v16 + 208) = 0u;
    *(v16 + 224) = 0u;
    *(v16 + 240) = 0u;
    *(v16 + 256) = 0u;
    *(v16 + 272) = -1;
    *(v16 + 280) = v34;
    *(v16 + 288) = v33;
    *(v16 + 296) = v35;
    *(v16 + 304) = v32;
    *(v16 + 312) = v31;
    *(v16 + 320) = v18;
    *(v16 + 328) = 0;
    *(v16 + 336) = 0;
    *(v16 + 344) = 1;
    *(v16 + 352) = 0;
    *(v16 + 360) = 0;
    *(v16 + 368) = 1;
    *(v16 + 416) = 0;
    *(v16 + 424) = 1;
    v26 = __swift_project_boxed_opaque_existential_1((v19 + 208), *(v19 + 232));
    v27 = *(v19 + 985);
    v28 = *v26;

    v29 = swift_task_alloc();
    *(v0 + 232) = v29;
    *v29 = v0;
    v29[1] = sub_1DAF8A9D8;
    v30 = *(v0 + 224);

    return sub_1DAFF9558(v30, v27);
  }

  else
  {
    v9 = *(v0 + 224);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1DAF8A9D8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_1DAF8AB8C;
  }

  else
  {
    v6 = sub_1DAF8AB04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAF8AB04()
{
  v1 = *(v0 + 224);

  sub_1DAF8C320(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DAF8AB8C()
{
  v19 = v0;
  v1 = *(v0 + 240);
  *(v0 + 168) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 208);
    v5 = *(v0 + 192);

    v6 = *(v0 + 176);
    sub_1DAF877B0(v6);
    sub_1DAF8C080(v6);

    sub_1DAF8C320(v3, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  }

  else
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 224);
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);

    v16 = *(v9 + 168);
    v17 = *(v9 + 176);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;

    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000019, 0x80000001DB0C36D0);
    swift_getErrorValue();
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    sub_1DB09E234();
    LOBYTE(v18[0]) = 14;
    CoreODILogger.info(_:category:)(0, 0xE000000000000000, v18);

    sub_1DAF8C320(v8, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  }

  v13 = *(v0 + 224);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DAF8AD6C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 224) = a2;
  *(v4 + 232) = v3;
  *(v4 + 304) = a3;
  *(v4 + 216) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8AD94, v3, 0);
}

uint64_t sub_1DAF8AD94()
{
  v1 = v0[29];
  swift_beginAccess();
  v0[30] = *(v1 + 432);
  v0[31] = *(v1 + 440);
  sub_1DAF3523C(v1 + 448, (v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v4 = *(v3 + 24);

  v0[25] = v4(v2, v3);
  v0[26] = v5;
  sub_1DAF3523C(v1 + 448, (v0 + 17));
  v6 = v0[20];
  v7 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v6);
  (*(v7 + 64))(v6, v7);
  if (qword_1EE301710 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE30A060;
  v0[32] = qword_1EE30A060;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8AEF8, v8, 0);
}

uint64_t sub_1DAF8AEF8()
{
  v1 = v0[32];
  v2 = *(v1 + 120);
  if (v2)
  {
    v0[36] = *(v1 + 112);
    v0[37] = v2;
    v3 = v0[29];

    return MEMORY[0x1EEE6DFA0](sub_1DAF8B178, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[33] = v4;
    *v4 = v0;
    v4[1] = sub_1DAF8AFDC;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAF8AFDC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *(*v2 + 256);
  v7 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8B0F4, v5, 0);
}

uint64_t sub_1DAF8B0F4()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = *(v2 + 120);
  *(v2 + 112) = v0[34];
  *(v2 + 120) = v1;

  v4 = v0[35];
  v0[36] = v0[34];
  v0[37] = v4;
  v5 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1DAF8B178, v5, 0);
}

uint64_t sub_1DAF8B178()
{
  v1 = (*(*(v0 + 232) + 248) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v2 = *v1;
  v3 = v1[1];
  v4 = qword_1EE301DD0;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 248);
  v8 = *(v0 + 304);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v12 = qword_1EE309EE0;
  v11 = qword_1EE309EE8;
  v13 = *(v0 + 200);
  *v10 = *(v0 + 240);
  *(v10 + 8) = v7;
  *(v10 + 16) = v13;
  *(v10 + 32) = *(v0 + 16);
  v14 = *(v0 + 32);
  v15 = *(v0 + 48);
  v16 = *(v0 + 80);
  *(v10 + 80) = *(v0 + 64);
  *(v10 + 96) = v16;
  *(v10 + 48) = v14;
  *(v10 + 64) = v15;
  *(v10 + 112) = v6;
  *(v10 + 120) = v5;
  *(v10 + 128) = v2;
  *(v10 + 136) = v3;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  *(v10 + 160) = 1;
  *(v10 + 168) = 0;
  *(v10 + 176) = v12;
  *(v10 + 184) = v11;
  *(v10 + 192) = -45;
  *(v10 + 200) = v9;
  *(v10 + 208) = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DAF8B2AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB09D734();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_1DB09D714(), v9 = sub_1DB09D6D4(), v11 = v10, (*(v4 + 8))(v8, v3), v11 >> 60 != 15))
  {
    v13 = sub_1DB09CC24();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C4CC();
    sub_1DB09CC04();
    v46 = 0;

    v16 = v49;
    v17 = v50;
    v18 = v51;
    v12 = BYTE1(v51);
    v19 = sub_1DB09CC54();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_1DB09CC44();
    v49 = v16;
    v50 = v17;
    LOBYTE(v51) = v18;
    BYTE1(v51) = 2;
    sub_1DAF63360();
    v22 = v46;
    v23 = sub_1DB09CC34();
    if (v22)
    {
      v46 = v22;

      sub_1DAF4AC40(v9, v11);
      v45 = v12;
      *&v49 = 0x657261685369646FLL;
      *(&v49 + 1) = 0xEF726567676F4C64;
      LOBYTE(v48[0]) = 1;
      CoreODILogger.info(_:category:)(0xD000000000000029, 0x80000001DB0C3C40, v48);

      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v25 = MEMORY[0x1E69E7CC0];
      v26 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v26 + 16) && (v27 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v28 & 1) != 0))
      {
        sub_1DAF409DC(*(v26 + 56) + 32 * v27, &v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        v29 = swift_dynamicCast();
        LOBYTE(v12) = v45;
        if (v29)
        {
          v25 = *&v48[0];
        }
      }

      else
      {
        LOBYTE(v12) = v45;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DAF72FF4(0, *(v25 + 2) + 1, 1, v25);
      }

      v31 = *(v25 + 2);
      v30 = *(v25 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v44 = v31 + 1;
        v42 = sub_1DAF72FF4((v30 > 1), v31 + 1, 1, v25);
        v32 = v44;
        v25 = v42;
      }

      *(v25 + 2) = v32;
      v33 = &v25[56 * v31];
      *(v33 + 4) = 0xD000000000000013;
      *(v33 + 5) = 0x80000001DB0C3C70;
      *(v33 + 6) = 0xD00000000000002DLL;
      *(v33 + 7) = 0x80000001DB0C3590;
      *(v33 + 8) = 0xD000000000000025;
      *(v33 + 9) = 0x80000001DB0C3C90;
      *(v33 + 10) = 296;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v49 = v25;
      sub_1DAF40D20(&v49, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v26;
      sub_1DAF3B11C(v48, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v36 = sub_1DB09D6B4();
      v37 = sub_1DB09D604();
      v38 = [v35 initWithDomain:v36 code:-1315 userInfo:v37];

      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      sub_1DAF4B4C0(v38, 0, 0xE000000000000000);
    }

    else
    {
      v40 = v23;
      v41 = v24;

      *&v49 = v40;
      *(&v49 + 1) = v41;
      sub_1DB09D714();
      sub_1DAF633B4();
      sub_1DB09D6F4();
      sub_1DAF4AC40(v9, v11);
      sub_1DAF40780(v40, v41);
    }
  }

  else
  {
    *&v49 = 0x657261685369646FLL;
    *(&v49 + 1) = 0xEF726567676F4C64;
    LOBYTE(v48[0]) = 1;
    CoreODILogger.debug(_:category:)(0xD00000000000001DLL, 0x80000001DB0C3C20, v48);

    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

id sub_1DAF8B988(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1DAF8B998(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1DAF8B9A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DAF8B9C0()
{
  result = qword_1EE300AB8[0];
  if (!qword_1EE300AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE300AB8);
  }

  return result;
}

uint64_t sub_1DAF8BABC(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 64);
  v9 = *(v3 + 248);
  v10 = *(v3 + 256);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DAF63DEC;

  return sub_1DAF890B8(a1, a2, a3, v7, v3 + 24, v8, v3 + 72, v3 + 136);
}

uint64_t sub_1DAF8BD1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAFF5A84(a1, v4, v5, v6);
}

unint64_t sub_1DAF8BF28()
{
  result = qword_1ECC0E7C8;
  if (!qword_1ECC0E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E7C8);
  }

  return result;
}

void sub_1DAF8C080(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
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

uint64_t sub_1DAF8C2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAF8C320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAF8C3D4()
{
  result = qword_1ECC0E7D8;
  if (!qword_1ECC0E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E7D8);
  }

  return result;
}

uint64_t sub_1DAF8C428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PregeneratedAssessment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF8C48C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DAF8C4CC()
{
  result = qword_1ECC0E7E0;
  if (!qword_1ECC0E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E7E0);
  }

  return result;
}

uint64_t sub_1DAF8C520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7A0, &unk_1DB0A5140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF8C598(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials21ODNAssessmentsManagerC0cD5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAF8C620(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DAF8C674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1DAF8C6D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t HTTPStatusCode.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    result = 0x2073736563637553;
    switch(*v0)
    {
      case 1:
        result = 0xD000000000000019;
        break;
      case 2:
      case 9:
        result = 0xD000000000000017;
        break;
      case 3:
      case 5:
        result = 0xD000000000000012;
        break;
      case 4:
      case 14:
        result = 0xD000000000000011;
        break;
      case 6:
        result = 0x6564646962726F46;
        break;
      case 7:
        result = 0x6E756F6620746F4ELL;
        break;
      case 8:
      case 12:
        result = 0xD00000000000001BLL;
        break;
      case 10:
        result = 0xD000000000000019;
        break;
      case 11:
        result = 0xD000000000000014;
        break;
      case 13:
      case 16:
        result = 0xD000000000000015;
        break;
      case 15:
        result = 0xD000000000000019;
        break;
      default:
        return result;
    }
  }

  else
  {
    v3 = *v0;
    v2 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v2);

    return 0x206E776F6E6B6E55;
  }

  return result;
}

uint64_t sub_1DAF8C94C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 399)
  {
    switch(result)
    {
      case 200:
        result = 0;
        v2 = 1;
        break;
      case 301:
        v2 = 1;
        result = 2;
        break;
      case 304:
        v2 = 1;
        result = 3;
        break;
      default:
LABEL_22:
        v2 = 0;
        break;
    }
  }

  else
  {
    switch(result)
    {
      case 400:
        v2 = 1;
        result = 4;
        break;
      case 401:
        v2 = 1;
        result = 5;
        break;
      case 403:
        v2 = 1;
        result = 6;
        break;
      case 404:
        v2 = 1;
        result = 7;
        break;
      case 428:
        v2 = 1;
        result = 8;
        break;
      case 429:
        v2 = 1;
        result = 9;
        break;
      case 433:
        v2 = 1;
        result = 10;
        break;
      case 434:
        v2 = 1;
        result = 11;
        break;
      case 500:
        v2 = 1;
        result = 12;
        break;
      case 501:
        v2 = 1;
        result = 13;
        break;
      case 502:
        v2 = 1;
        result = 14;
        break;
      case 503:
        v2 = 1;
        result = 15;
        break;
      case 504:
        v2 = 1;
        result = 16;
        break;
      default:
        goto LABEL_22;
    }
  }

  *a2 = result;
  *(a2 + 8) = v2;
  return result;
}