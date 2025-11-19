uint64_t ManagedAppsServer.getCertificateIdentifiers(clientIdentity:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(2, a1);
}

uint64_t ManagedAppsServer.getCertificate(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v8 = sub_258049D00();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[10] = v11;
  *v11 = v4;
  v11[1] = sub_258023DAC;

  return sub_258022A2C(a1, a2, 2, a3);
}

uint64_t sub_258023DAC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *v3;
  v4[11] = a1;
  v4[12] = a2;

  if (v2)
  {
    v8 = v4[8];
    v7 = v4[9];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258023F04, 0, 0);
  }
}

uint64_t sub_258023F04()
{
  v53 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[5];
  v4 = objc_opt_self();
  v5 = sub_258049A40();
  v6 = *(v3 + 16);
  v7 = sub_258049B20();
  v8 = [v4 copyCertificateWithPersistentID:v5 useSystemKeychain:v7 == sub_258049B20() enforcePersonalPersona:0];

  v9 = v4;
  if (v8)
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    v13 = v0[4];
    v14 = sub_258049D30();
    __swift_project_value_buffer(v14, qword_27F919E48);
    v15 = *(v12 + 16);
    v15(v10, v13, v11);
    v16 = sub_258049D10();
    v17 = sub_25804A2C0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[9];
    if (v18)
    {
      v51 = v8;
      v20 = v0[7];
      v21 = v0[8];
      v22 = v0[6];
      v23 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v23 = 136446210;
      v15(v21, v19, v22);
      v24 = sub_25804A120();
      v26 = v25;
      (*(v20 + 8))(v19, v22);
      v27 = v24;
      v8 = v51;
      v28 = sub_258032C5C(v27, v26, &v52);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_257FD4000, v16, v17, "Returning certificate for client %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x259C77210](v50, -1, -1);
      MEMORY[0x259C77210](v23, -1, -1);
    }

    else
    {
      v43 = v0[6];
      v42 = v0[7];

      (*(v42 + 8))(v19, v43);
    }

    v45 = v0[11];
    v44 = v0[12];
    v47 = v0[8];
    v46 = v0[9];
    v48 = v8;
    sub_257FDAAB4(v45, v44);

    v49 = v0[1];

    return v49(v48);
  }

  else
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v29 = sub_258049D30();
    __swift_project_value_buffer(v29, qword_27F919E48);
    v30 = sub_258049D10();
    v31 = sub_25804A2D0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_257FD4000, v30, v31, "Failed to find certificate from keychain", v32, 2u);
      MEMORY[0x259C77210](v32, -1, -1);
    }

    v34 = v0[11];
    v33 = v0[12];
    v35 = v0[2];
    v36 = v0[3];

    sub_258036E5C();
    swift_allocError();
    *v37 = v35;
    *(v37 + 8) = v36;
    *(v37 + 16) = 14;
    swift_willThrow();

    sub_257FDAAB4(v34, v33);
    v39 = v0[8];
    v38 = v0[9];

    v40 = v0[1];

    return v40();
  }
}

uint64_t ManagedAppsServer.getIdentityIdentifiers(clientIdentity:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return sub_258021900(3, a1);
}

uint64_t ManagedAppsServer.getIdentityProxyEndpoint(with:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_2580243E4, 0, 0);
}

uint64_t sub_2580243E4()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_258049CD0();
  v6 = [v5 codeSigningID];

  v7 = sub_25804A110();
  v9 = v8;

  v17 = v7;
  v18 = v9;
  MEMORY[0x259C76670](45, 0xE100000000000000);
  v10 = sub_258049CD0();
  v11 = [v10 teamID];

  v12 = sub_25804A110();
  v14 = v13;

  MEMORY[0x259C76670](v12, v14);

  MEMORY[0x259C76670](45, 0xE100000000000000);
  MEMORY[0x259C76670](v4, v3);
  v0[9] = v17;
  v0[10] = v18;
  v15 = *(v2 + 80);
  v0[11] = v15;

  return MEMORY[0x2822009F8](sub_258024534, v15, 0);
}

uint64_t sub_258024534()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[9];
    v3 = v0[10];

    v5 = sub_2580337E4(v4, v3);
    if (v6)
    {
      v7 = v5;
      v8 = v0[10];

      v9 = *(*(v2 + 56) + 8 * v7);
      v0[12] = v9;
      v10 = v9;

      return MEMORY[0x2822009F8](sub_25802467C, 0, 0);
    }
  }

  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_258024700;
  v12 = v0[7];
  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];

  return sub_2580249A0(v15, v14, v12);
}

uint64_t sub_25802467C()
{
  v1 = [*(v0 + 96) endpoint];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_258024700(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_25802493C;
    v8 = 0;
  }

  else
  {
    v8 = *(v4 + 88);
    *(v4 + 120) = a1;
    v7 = sub_258024834;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_258024834()
{
  v1 = v0[11];
  v0[16] = sub_258047FC8(v0[9], v0[10], v0[15]);

  return MEMORY[0x2822009F8](sub_2580248B4, 0, 0);
}

uint64_t sub_2580248B4()
{
  v1 = *(v0 + 120);
  v2 = [*(v0 + 128) endpoint];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_25802493C()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_2580249A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v8 = sub_258049D00();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[10] = v11;
  *v11 = v4;
  v11[1] = sub_258024AC8;

  return sub_258022A2C(a1, a2, 3, a3);
}

uint64_t sub_258024AC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *v3;
  v4[11] = a1;
  v4[12] = a2;

  if (v2)
  {
    v8 = v4[8];
    v7 = v4[9];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258024C20, 0, 0);
  }
}

uint64_t sub_258024C20()
{
  v53 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[5];
  v4 = objc_opt_self();
  v5 = sub_258049A40();
  v6 = *(v3 + 16);
  v7 = sub_258049B20();
  v8 = [v4 copyIdentityWithPersistentID:v5 useSystemKeychain:v7 == sub_258049B20() enforcePersonalPersona:0];

  v9 = v4;
  if (v8)
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    v13 = v0[4];
    v14 = sub_258049D30();
    __swift_project_value_buffer(v14, qword_27F919E48);
    v15 = *(v12 + 16);
    v15(v10, v13, v11);
    v16 = sub_258049D10();
    v17 = sub_25804A2C0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[9];
    if (v18)
    {
      v51 = v8;
      v20 = v0[7];
      v21 = v0[8];
      v22 = v0[6];
      v23 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v23 = 136446210;
      v15(v21, v19, v22);
      v24 = sub_25804A120();
      v26 = v25;
      (*(v20 + 8))(v19, v22);
      v27 = v24;
      v8 = v51;
      v28 = sub_258032C5C(v27, v26, &v52);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_257FD4000, v16, v17, "Returning identity for client %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x259C77210](v50, -1, -1);
      MEMORY[0x259C77210](v23, -1, -1);
    }

    else
    {
      v43 = v0[6];
      v42 = v0[7];

      (*(v42 + 8))(v19, v43);
    }

    v45 = v0[11];
    v44 = v0[12];
    v47 = v0[8];
    v46 = v0[9];
    v48 = v8;
    sub_257FDAAB4(v45, v44);

    v49 = v0[1];

    return v49(v48);
  }

  else
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v29 = sub_258049D30();
    __swift_project_value_buffer(v29, qword_27F919E48);
    v30 = sub_258049D10();
    v31 = sub_25804A2D0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_257FD4000, v30, v31, "Failed to find identity from keychain", v32, 2u);
      MEMORY[0x259C77210](v32, -1, -1);
    }

    v34 = v0[11];
    v33 = v0[12];
    v35 = v0[2];
    v36 = v0[3];

    sub_258036E5C();
    swift_allocError();
    *v37 = v35;
    *(v37 + 8) = v36;
    *(v37 + 16) = 13;
    swift_willThrow();

    sub_257FDAAB4(v34, v33);
    v39 = v0[8];
    v38 = v0[9];

    v40 = v0[1];

    return v40();
  }
}

uint64_t ManagedAppsServer.reportConfigDetailsState(code:reason:clientIdentity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a3;
  v5[15] = v4;
  v5[12] = a1;
  v5[13] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE8, &qword_25804ECA8) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v5[16] = v8;
  v9 = type metadata accessor for LookalikeType(0);
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[20] = v12;
  *v12 = v5;
  v12[1] = sub_258025188;

  return sub_25801E500(v8, a4);
}

uint64_t sub_258025188()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_25802071C;
  }

  else
  {
    v3 = sub_25802529C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25802529C()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915AE8, &qword_25804ECA8);
    sub_258036E5C();
    swift_allocError();
    *v2 = xmmword_25804EC70;
    *(v2 + 16) = 16;
    swift_willThrow();
    v3 = v0[19];
    v4 = v0[16];

    v5 = v0[1];

    return v5();
  }

  v7 = v0[14];
  sub_258037D4C(v1, v0[19], type metadata accessor for LookalikeType);
  if (v7)
  {
    v8 = v0[13];

    if (sub_25804A160() >= 257)
    {
      v10 = sub_2580368E4(256, v0[13], v7, v9);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = MEMORY[0x259C76630](v10, v12, v14, v16);
      v19 = v18;

      goto LABEL_10;
    }
  }

  v17 = v0[13];
  v19 = v0[14];

LABEL_10:
  v0[22] = v19;
  v20 = v0[15];
  swift_beginAccess();
  result = sub_257FDA958(v20 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v21 = v0[5];
  if (v21)
  {
    v22 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v21);

    v23 = swift_task_alloc();
    v0[23] = v23;
    *v23 = v0;
    v23[1] = sub_258025534;
    v24 = v0[19];
    v25 = v0[12];

    return sub_257FED888(v24, v22, v25, v17, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258025534()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  swift_bridgeObjectRelease_n();
  if (v0)
  {
    v6 = sub_258025704;
  }

  else
  {
    v6 = sub_25802566C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25802566C()
{
  v1 = v0[16];
  sub_258037DB4(v0[19], type metadata accessor for LookalikeType);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_258025704()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000035, 0x8000000258050FD0, v24);
    *(v7 + 12) = 2082;
    v0[11] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v24);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v13 = v0[24];
  v14 = v0[19];
  v0[10] = v13;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v16 = sub_25804A120();
  v18 = v17;
  sub_258036E5C();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 8;
  swift_willThrow();

  sub_258037DB4(v14, type metadata accessor for LookalikeType);
  v20 = v0[19];
  v21 = v0[16];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2580259B0()
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();
}

uint64_t sub_258025B0C(void *a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t *a5)
{
  v77 = a2;
  v74 = a5;
  v8 = sub_258049D00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v71 - v14;
  v73 = sub_258049A20();
  v71 = *(v73 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v75 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v76 = &v71 - v22;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = sub_258019BEC(1, v23, v24);
  if (v25)
  {
    v26 = v25;
    v79 = v25;
    swift_getKeyPath();
    sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
    sub_258049F00();

    v27 = v80;
    v28 = a3[1];
    *a3 = v79;
    a3[1] = v27;

    v29 = sub_258004F04();
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    v32 = 0xE000000000000000;
    v33 = a4[1];
    if (v30)
    {
      v32 = v30;
    }

    *a4 = v31;
    a4[1] = v32;

    v79 = v26;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F915278, type metadata accessor for DataAssetRecord);
    v34 = sub_258049EE0();

    if (v34)
    {
      v79 = v34;
      swift_getKeyPath();
      sub_258037F14(&qword_27F915270, type metadata accessor for DataAssetRecord);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FDAB10();
      sub_258049F00();

      if (v80 != 2)
      {
        sub_257FDAB64(v79, v80);
      }

      v79 = v34;
      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_257FEC568();
      v35 = v76;
      sub_258049F00();

      v36 = type metadata accessor for DataPersistenceValue();
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {

        return sub_257FDAB84(v35, &qword_27F915268, &qword_25804F1E0);
      }

      v57 = v75;
      sub_257FDA958(v35, v75, &qword_27F915268, &qword_25804F1E0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v59 = v78;
      if (EnumCaseMultiPayload == 1)
      {
        v60 = v72;
        v61 = v71 + 32;
        v62 = v73;
        (*(v71 + 32))(v72, v57, v73);
        v63 = sub_258049A30();
        v65 = (v61 - 24);
        if (v59)
        {

          (*v65)(v60, v62);
          return sub_257FDAB84(v35, &qword_27F915268, &qword_25804F1E0);
        }

        v66 = v63;
        v67 = v64;

        (*v65)(v60, v62);
      }

      else
      {

        v66 = *v57;
        v67 = v57[1];
      }

      sub_257FDAB84(v35, &qword_27F915268, &qword_25804F1E0);
      v68 = v74;
      v69 = *v74;
      v70 = v74[1];
      *v74 = v66;
      v68[1] = v67;
      return sub_257FDAAA0(v69, v70);
    }

    else
    {
      if (qword_27F915188 != -1)
      {
        swift_once();
      }

      v49 = sub_258049D30();
      __swift_project_value_buffer(v49, qword_27F919E48);

      v50 = sub_258049D10();
      v51 = sub_25804A2D0();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v79 = v26;
        v81 = v78;
        *v52 = 136446210;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        v53 = sub_258032C5C(v79, v80, &v81);

        *(v52 + 4) = v53;
        _os_log_impl(&dword_257FD4000, v50, v51, "Data record %{public}s is missing asset record", v52, 0xCu);
        v54 = v78;
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x259C77210](v54, -1, -1);
        MEMORY[0x259C77210](v52, -1, -1);
      }

      sub_258036E5C();
      swift_allocError();
      *v55 = 0;
      *(v55 + 8) = 0;
      *(v55 + 16) = 16;
      swift_willThrow();
    }
  }

  else
  {
    v38 = v77;
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v39 = sub_258049D30();
    __swift_project_value_buffer(v39, qword_27F919E48);
    v40 = *(v9 + 16);
    v40(v15, v38, v8);
    v41 = sub_258049D10();
    v42 = sub_25804A2C0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = v78;
      *v43 = 136446210;
      v40(v13, v15, v8);
      v44 = sub_25804A120();
      v46 = v45;
      (*(v9 + 8))(v15, v8);
      v47 = sub_258032C5C(v44, v46, &v79);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_257FD4000, v41, v42, "Data record for client %{public}s does not exist", v43, 0xCu);
      v48 = v78;
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x259C77210](v48, -1, -1);
      MEMORY[0x259C77210](v43, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v15, v8);
    }

    sub_258036E5C();
    swift_allocError();
    *v56 = xmmword_25804EC80;
    *(v56 + 16) = 16;
    return swift_willThrow();
  }
}

uint64_t sub_258026528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = type metadata accessor for AppRecordLookalike(0);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = type metadata accessor for ExtensionRecordLookalike(0);
  v6[20] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v12 = type metadata accessor for LookalikeType(0);
  v6[22] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258026694, 0, 0);
}

uint64_t sub_258026694()
{
  v45 = v0;
  v1 = v0[22];
  sub_258037CE4(v0[11], v0[23], type metadata accessor for LookalikeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[25];
  v4 = v0[23];
  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0[20];
    v5 = v0[21];
    sub_258037D4C(v4, v5, type metadata accessor for ExtensionRecordLookalike);
    sub_257FDA958(v5 + *(v6 + 20), v3, &qword_27F915280, &qword_25804ED30);
    sub_258037DB4(v5, type metadata accessor for ExtensionRecordLookalike);
  }

  else
  {
    v7 = v0[17];
    v8 = v0[18];
    sub_258037D4C(v4, v0[25], type metadata accessor for AppRecordLookalike);
    (*(v8 + 56))(v3, 0, 1, v7);
  }

  v9 = v0[24];
  v10 = v0[17];
  v11 = v0[18];
  sub_257FDA958(v0[25], v9, &qword_27F915280, &qword_25804ED30);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v13 = v0[24];
  if (v12 == 1)
  {
    sub_257FDAB84(v13, &qword_27F915280, &qword_25804ED30);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v14 = v0[13];
    v15 = sub_258049D30();
    __swift_project_value_buffer(v15, qword_27F919E48);

    v16 = sub_258049D10();
    v17 = sub_25804A2D0();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[12];
      v18 = v0[13];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_258032C5C(v19, v18, &v44);
      _os_log_impl(&dword_257FD4000, v16, v17, "Credential record %{public}s is orphaned", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x259C77210](v21, -1, -1);
      MEMORY[0x259C77210](v20, -1, -1);
    }

    v22 = v0[25];
    sub_258036E5C();
    v23 = swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 16;
    swift_willThrow();
    sub_257FDAB84(v22, &qword_27F915280, &qword_25804ED30);
    v29 = v0[24];
    v28 = v0[25];
    v30 = v0[23];
    v31 = v0[21];
    v32 = v0[19];
    swift_getErrorValue();
    v34 = v0[7];
    v33 = v0[8];
    v35 = v0[9];
    v36 = sub_25804A5B0();
    v38 = v37;
    sub_258036E5C();
    swift_allocError();
    *v39 = v36;
    *(v39 + 8) = v38;
    *(v39 + 16) = 11;
    swift_willThrow();

    v40 = v0[1];

    return v40();
  }

  else
  {
    v25 = v0[19];
    v26 = v0[16];
    v27 = v0[17];
    sub_258037D4C(v13, v25, type metadata accessor for AppRecordLookalike);
    sub_25801E298(*(v25 + *(v27 + 20)), *(v25 + *(v27 + 20) + 8), (v0 + 2));
    v42 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v43 = *v42;
    v0[26] = *v42;

    return MEMORY[0x2822009F8](sub_258026B1C, v43, 0);
  }
}

uint64_t sub_258026B1C()
{
  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];

  MEMORY[0x259C76670](32, 0xE100000000000000);
  MEMORY[0x259C76670](v3, v2);
  v0[27] = v4;
  v0[28] = *(v1 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks);
  v6 = swift_allocObject();
  v0[29] = v6;
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_258026C88;

  return sub_258048C6C(v5, v4, &unk_25804F270, v6);
}

uint64_t sub_258026C88()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {

    v8 = sub_25803820C;
  }

  else
  {

    v8 = sub_2580381AC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

char *sub_258026E18(void *a1, void *a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = sub_258019F30(a3, v5, v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = MEMORY[0x277D84F90];
LABEL_14:
    v20 = *a2;
    *a2 = v12;
  }

  v19 = v7;
  v8 = sub_25804A480();
  v7 = v19;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v9 = v7;
  v24 = MEMORY[0x277D84F90];
  result = sub_258033204(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v21 = a2;
    v11 = 0;
    v12 = v24;
    v13 = v9;
    v22 = v9 & 0xC000000000000001;
    v14 = v9;
    do
    {
      if (v22)
      {
        v15 = MEMORY[0x259C768B0](v11, v13);
      }

      else
      {
        v15 = *(v13 + 8 * v11 + 32);
      }

      swift_getKeyPath();
      sub_258037F14(&qword_27F9152F0, type metadata accessor for CredentialRecord);
      sub_258049A90();

      swift_getKeyPath();
      sub_258037F14(&qword_27F9152C0, type metadata accessor for CredentialRecord);
      sub_258049F00();

      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_258033204((v16 > 1), v17 + 1, 1);
      }

      ++v11;
      *(v24 + 16) = v17 + 1;
      v18 = v24 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v23;
      v13 = v14;
    }

    while (v8 != v11);

    a2 = v21;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_258027084(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v69 = a6;
  v65 = a8;
  v70 = a7;
  v67 = a5;
  v12 = sub_258049D00();
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_25801A2C4(a2, a3, a4, v19, v20);
  if (v21)
  {
    v22 = v21;
    v71 = v21;
    swift_getKeyPath();
    sub_258037F14(&qword_27F9152F0, type metadata accessor for CredentialRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F9152C0, type metadata accessor for CredentialRecord);
    sub_258049F00();

    v23 = v72;
    v24 = v69;
    v25 = v69[1];
    *v69 = v71;
    v24[1] = v23;

    v26 = sub_257FFC028();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v29 = 0xE000000000000000;
    v30 = v70;
    v31 = v70[1];
    if (v27)
    {
      v29 = v27;
    }

    *v70 = v28;
    v30[1] = v29;

    v71 = v22;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F915258, type metadata accessor for CredentialAssetRecord);
    v32 = sub_258049EE0();

    if (v32)
    {
      v71 = v32;
      swift_getKeyPath();
      sub_258037F14(&qword_27F915250, type metadata accessor for CredentialAssetRecord);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FDAB10();
      sub_258049F00();

      if (v72 == 2)
      {
        v71 = v32;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258019B00();
        sub_258049F00();

        v34 = v72;
        if (v72 >> 60 != 15)
        {
          v35 = v65;
          v36 = *v65;
          v37 = v65[1];
          *v65 = v71;
          v35[1] = v34;
          return sub_257FDAAA0(v36, v37);
        }
      }

      else
      {
        sub_257FDAB64(v71, v72);
      }
    }

    else
    {
      if (qword_27F915188 != -1)
      {
        swift_once();
      }

      v55 = sub_258049D30();
      __swift_project_value_buffer(v55, qword_27F919E48);

      v56 = sub_258049D10();
      v57 = sub_25804A2D0();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v73 = v59;
        *v58 = 136446210;
        v71 = v22;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        v60 = sub_258032C5C(v71, v72, &v73);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_257FD4000, v56, v57, "Credential record %{public}s is missing asset record", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x259C77210](v59, -1, -1);
        MEMORY[0x259C77210](v58, -1, -1);
      }

      sub_258036E5C();
      swift_allocError();
      *v61 = 0;
      *(v61 + 8) = 0;
      *(v61 + 16) = 16;
      swift_willThrow();
    }
  }

  else
  {
    v38 = v16;
    v40 = v66;
    v39 = v67;
    v69 = a3;
    v70 = a4;
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v41 = sub_258049D30();
    __swift_project_value_buffer(v41, qword_27F919E48);
    v42 = *(v40 + 16);
    v43 = v12;
    v42(v18, v39, v12);
    v44 = sub_258049D10();
    v45 = sub_25804A2C0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v18;
      v47 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71 = v68;
      *v47 = 136446210;
      v42(v38, v46, v43);
      v48 = sub_25804A120();
      v49 = v40;
      v50 = v48;
      v52 = v51;
      (*(v49 + 8))(v46, v43);
      v53 = sub_258032C5C(v50, v52, &v71);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_257FD4000, v44, v45, "Credential record for client %{public}s does not exist", v47, 0xCu);
      v54 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x259C77210](v54, -1, -1);
      MEMORY[0x259C77210](v47, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v18, v12);
    }

    v63 = v69;
    v62 = v70;
    sub_258036E5C();
    swift_allocError();
    *v64 = v63;
    *(v64 + 8) = v62;
    *(v64 + 16) = 12;
    swift_willThrow();
  }

  return result;
}

uint64_t ManagedAppsServer.notificationNameForConfigDetailChange(clientIdentity:)()
{
  v0 = sub_258049CD0();
  v1 = sub_258043AC4(1, v0);

  return v1;
}

uint64_t ManagedAppsServer.notificationNameForPasswordChange(clientIdentity:)()
{
  v0 = sub_258049CD0();
  v1 = sub_258043C54(1u, v0);

  return v1;
}

uint64_t ManagedAppsServer.notificationNameForCertificateChange(clientIdentity:)()
{
  v0 = sub_258049CD0();
  v1 = sub_258043C54(2u, v0);

  return v1;
}

uint64_t ManagedAppsServer.notificationNameForIdentityChange(clientIdentity:)()
{
  v0 = sub_258049CD0();
  v1 = sub_258043C54(3u, v0);

  return v1;
}

uint64_t sub_2580279CC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2580381F0;

  return ManagedAppsServer.getConfigDetailsData(clientIdentity:)(a1);
}

uint64_t sub_258027A64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258038214;

  return sub_258021900(1, a1);
}

uint64_t sub_258027B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258027BB0;

  return ManagedAppsServer.getPassword(with:clientIdentity:)(a1, a2, a3);
}

uint64_t sub_258027BB0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_258027CC0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258038214;

  return sub_258021900(2, a1);
}

uint64_t sub_258027D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258038214;

  return ManagedAppsServer.getCertificate(with:clientIdentity:)(a1, a2, a3);
}

uint64_t sub_258027E0C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258038214;

  return sub_258021900(3, a1);
}

uint64_t sub_258027EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258038214;

  return ManagedAppsServer.getIdentityProxyEndpoint(with:clientIdentity:)(a1, a2, a3);
}

uint64_t sub_258027F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_257FDAFFC;

  return ManagedAppsServer.reportConfigDetailsState(code:reason:clientIdentity:)(a1, a2, a3, a4);
}

uint64_t sub_258028018()
{
  v0 = sub_258049CD0();
  v1 = sub_258043AC4(1, v0);

  return v1;
}

uint64_t sub_258028070()
{
  v0 = sub_258049CD0();
  v1 = sub_258043C54(1u, v0);

  return v1;
}

uint64_t sub_2580280C8()
{
  v0 = sub_258049CD0();
  v1 = sub_258043C54(2u, v0);

  return v1;
}

uint64_t sub_258028120()
{
  v0 = sub_258049CD0();
  v1 = sub_258043C54(3u, v0);

  return v1;
}

uint64_t ManagedAppsServer.setAppConfig(recordID:appConfigRecord:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802826C, 0, 0);
}

uint64_t sub_25802826C()
{
  v27 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_258049D30();
  v0[22] = __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD00000000000002FLL, 0x8000000258051010, &v26);
    *(v7 + 12) = 2080;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_25804A110();
    v13 = v12;

    v14 = sub_258032C5C(v11, v13, &v26);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - setAppConfig:\n%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v15 = v0[17];
  swift_beginAccess();
  result = sub_257FDA958(v15 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v17 = v0[5];
  if (v17)
  {
    v18 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v17);
    v19 = swift_task_alloc();
    v0[23] = v19;
    *v19 = v0;
    v19[1] = sub_258028508;
    v20 = v0[20];
    v21 = v0[15];
    v22 = v0[16];
    v23 = v0[13];
    v24 = v0[14];
    v25 = v0[12];

    return sub_257FDB00C(v20, v25, v23, v24, v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258028508()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_25802885C;
  }

  else
  {
    v3 = sub_25802861C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25802861C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = type metadata accessor for AppRecordLookalike(0);
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 0, 1, v4);
  sub_258014250(v2, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_257FDA958(v1, v3, &qword_27F915280, &qword_25804ED30);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[19];
    v8 = *(v7 + *(v4 + 36));
    sub_258037DB4(v7, type metadata accessor for AppRecordLookalike);
    if (v8 == 1)
    {
      v9 = v0[17];
      v10 = v0[18];
      v12 = v0[12];
      v11 = v0[13];
      sub_25804A240();
      v13 = sub_25804A270();
      (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v9;
      v14[5] = v12;
      v14[6] = v11;

      sub_25802E704(0, 0, v10, &unk_25804ED40, v14);
    }

    v15 = v0[20];
    v17 = v0[18];
    v16 = v0[19];
    sub_257FDAB84(v0[21], &qword_27F915280, &qword_25804ED30);

    v18 = v0[1];

    return v18();
  }

  return result;
}

uint64_t sub_25802885C()
{
  v26 = v0;
  v1 = v0[24];
  v2 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD00000000000002FLL, 0x8000000258051010, v25);
    *(v7 + 12) = 2082;
    v0[11] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v25);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - setAppConfig failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v13 = v0[24];
  v15 = v0[20];
  v14 = v0[21];
  v17 = v0[18];
  v16 = v0[19];
  v0[10] = v13;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v19 = sub_25804A120();
  v21 = v20;
  sub_258036E5C();
  swift_allocError();
  *v22 = v19;
  *(v22 + 8) = v21;
  *(v22 + 16) = 1;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t ManagedAppsServer.removeAppConfig(recordID:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for AppRecordLookalike(0);
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258028BCC, 0, 0);
}

uint64_t sub_258028BCC()
{
  v1 = v0[19];
  swift_beginAccess();
  v2 = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v4 = v0[5];
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v0[25] = v5;
    v6 = *v5;
    v0[26] = type metadata accessor for AppConfigDatabaseImpl();
    v0[27] = sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
    v7 = sub_25804A230();
    v9 = v8;
    v2 = sub_258028CD8;
    v4 = v7;
    v3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v4, v3);
}

uint64_t sub_258028CD8()
{
  v1 = **(v0 + 200);
  sub_257FE10F0(*(v0 + 136), *(v0 + 144), *(v0 + 160));
  *(v0 + 224) = 0;

  return MEMORY[0x2822009F8](sub_258028D70, 0, 0);
}

uint64_t sub_258028D70()
{
  v39 = v0;
  v1 = v0[20];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v2 = v0[18];
    v3 = sub_258049D30();
    __swift_project_value_buffer(v3, qword_27F919E48);

    v4 = sub_258049D10();
    v5 = sub_25804A2D0();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[17];
      v6 = v0[18];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x8000000258051040, &v38);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_258032C5C(v7, v6, &v38);
      _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - no result for record %{public}s!", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v9, -1, -1);
      MEMORY[0x259C77210](v8, -1, -1);
    }

    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[20];

    v13 = v0[1];

    return v13();
  }

  else
  {
    sub_258037D4C(v1, v0[24], type metadata accessor for AppRecordLookalike);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v15 = v0[23];
    v16 = v0[24];
    v17 = sub_258049D30();
    __swift_project_value_buffer(v17, qword_27F919E48);
    sub_258037CE4(v16, v15, type metadata accessor for AppRecordLookalike);
    v18 = sub_258049D10();
    v19 = sub_25804A2C0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[23];
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x8000000258051040, &v38);
      *(v22 + 12) = 2080;
      v24 = sub_257FF8ED8();
      v26 = v25;
      sub_258037DB4(v21, type metadata accessor for AppRecordLookalike);
      v27 = sub_258032C5C(v24, v26, &v38);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_257FD4000, v18, v19, "%{public}s - record: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v23, -1, -1);
      MEMORY[0x259C77210](v22, -1, -1);
    }

    else
    {

      sub_258037DB4(v21, type metadata accessor for AppRecordLookalike);
    }

    v28 = sub_257FDA958(v0[19] + 32, (v0 + 7), &qword_27F915AE0, &qword_25804EC98);
    v30 = v0[10];
    if (v30)
    {
      v32 = v0[26];
      v31 = v0[27];
      v33 = __swift_project_boxed_opaque_existential_1(v0 + 7, v30);
      v0[29] = v33;
      v34 = *v33;
      v35 = sub_25804A230();
      v37 = v36;
      v28 = sub_2580294A4;
      v30 = v35;
      v29 = v37;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v28, v30, v29);
  }
}

uint64_t sub_258029214()
{
  v23 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[28];
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x8000000258051040, v22);
    *(v6 + 12) = 2082;
    v0[16] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v22);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[20];
  v0[15] = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v16 = sub_25804A120();
  v18 = v17;
  sub_258036E5C();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 2;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_2580294A4()
{
  v1 = *(v0 + 224);
  sub_257FDB4F0(*(v0 + 136), *(v0 + 144), **(v0 + 232));
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_2580295D0;
  }

  else
  {
    v2 = sub_258029534;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258029534()
{
  sub_258037DB4(v0[24], type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2580295D0()
{
  v23 = v0;
  sub_258037DB4(v0[24], type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[30];
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x8000000258051040, v22);
    *(v6 + 12) = 2082;
    v0[16] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v22);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[20];
  v0[15] = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v16 = sub_25804A120();
  v18 = v17;
  sub_258036E5C();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 2;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t ManagedAppsServer.updateAppBundleID(for:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_2580298A4, 0, 0);
}

uint64_t sub_2580298A4()
{
  v24 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = sub_258049D30();
  v0[15] = __swift_project_value_buffer(v3, qword_27F919E48);

  v4 = sub_258049D10();
  v5 = sub_25804A2C0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446722;
    *(v10 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051060, &v23);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_258032C5C(v9, v8, &v23);
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_258032C5C(v7, v6, &v23);
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - managementKey: %{public}s, bundleID: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v11, -1, -1);
    MEMORY[0x259C77210](v10, -1, -1);
  }

  v12 = v0[14];
  swift_beginAccess();
  v13 = sub_257FDA958(v12 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v15 = v0[5];
  if (v15)
  {
    v16 = v0[13];
    v17 = __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v0[16] = v17;
    v18 = *v17;
    type metadata accessor for AppConfigDatabaseImpl();
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);

    v19 = sub_25804A230();
    v21 = v20;
    v13 = sub_258029B5C;
    v15 = v19;
    v14 = v21;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v13, v15, v14);
}

uint64_t sub_258029B5C()
{
  sub_257FECE3C(*(v0 + 80), *(v0 + 88), **(v0 + 128), *(v0 + 96), *(v0 + 104));
  *(v0 + 136) = 0;
  v1 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_258029BFC, 0, 0);
}

uint64_t sub_258029BFC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258029C60()
{
  v22 = v0;
  v1 = v0[17];
  v2 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051060, v21);
    *(v7 + 12) = 2082;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v21);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v13 = v0[17];
  v0[2] = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v15 = sub_25804A120();
  v17 = v16;
  sub_258036E5C();
  swift_allocError();
  *v18 = v15;
  *(v18 + 8) = v17;
  *(v18 + 16) = 3;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_258029E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord);
  sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
  sub_258049F00();

  if (!v9)
  {
    goto LABEL_6;
  }

  if (a1 == a2 && v9 == a3)
  {
  }

  v6 = sub_25804A560();

  if ((v6 & 1) == 0)
  {
LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258049A80();
  }

  return result;
}

uint64_t ManagedAppsServer.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_25802A0C8, 0, 0);
}

uint64_t sub_25802A0C8()
{
  v39 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_258049D30();
  v0[15] = __swift_project_value_buffer(v4, qword_27F919E48);
  swift_bridgeObjectRetain_n();

  v5 = v2;
  v6 = sub_258049D10();
  v7 = sub_25804A2C0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  if (v8)
  {
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136446978;
    *(v13 + 4) = sub_258032C5C(0xD000000000000043, 0x8000000258051090, &v38);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_258032C5C(v12, v10, &v38);
    *(v13 + 22) = 2080;
    v15 = v11;
    v16 = [v15 description];
    v17 = sub_25804A110();
    v19 = v18;

    v20 = sub_258032C5C(v17, v19, &v38);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2048;
    if (v9 >> 62)
    {
      if (v0[13] < 0)
      {
        v36 = v0[13];
      }

      v21 = sub_25804A480();
    }

    else
    {
      v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v0[13];

    *(v13 + 34) = v21;

    _os_log_impl(&dword_257FD4000, v6, v7, "%{public}s - managementKey: %{public}s, appCodeIdentity: %s extensions: %ld", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v14, -1, -1);
    MEMORY[0x259C77210](v13, -1, -1);
  }

  else
  {
    v23 = v0[13];
    swift_bridgeObjectRelease_n();
  }

  v24 = v0[14];
  swift_beginAccess();
  v25 = sub_257FDA958(v24 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v27 = v0[5];
  if (v27)
  {
    v29 = v0[12];
    v28 = v0[13];
    v30 = __swift_project_boxed_opaque_existential_1(v0 + 2, v27);
    v0[16] = v30;
    v31 = *v30;
    type metadata accessor for AppConfigDatabaseImpl();
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);

    v32 = v29;
    v33 = sub_25804A230();
    v35 = v34;
    v25 = sub_25802A434;
    v27 = v33;
    v26 = v35;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v25, v27, v26);
}

uint64_t sub_25802A434()
{
  sub_257FED63C(*(v0 + 80), *(v0 + 88), **(v0 + 128), *(v0 + 96), *(v0 + 104));
  *(v0 + 136) = 0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_258038210, 0, 0);
}

uint64_t sub_25802A4D8()
{
  v22 = v0;
  v1 = v0[17];
  v2 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000043, 0x8000000258051090, v21);
    *(v7 + 12) = 2082;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v21);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v13 = v0[17];
  v0[2] = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v15 = sub_25804A120();
  v17 = v16;
  sub_258036E5C();
  swift_allocError();
  *v18 = v15;
  *(v18 + 8) = v17;
  *(v18 + 16) = 3;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_25802A708(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = type metadata accessor for AppCodeIdentityRecord(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2580028CC(a2);
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A80();

  if (a3 >> 62)
  {
    v8 = sub_25804A480();
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258049A80();
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_25804A430();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x259C768B0](v10, a3);
      }

      else
      {
        v11 = *(a3 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = type metadata accessor for ExtensionCodeIdentityRecord(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_258003D74(v12);
      sub_25804A410();
      v16 = *(v18 + 16);
      sub_25804A440();
      sub_25804A450();
      sub_25804A420();
    }

    while (v8 != v10);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t ManagedAppsServer.activateAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257FDAFFC;

  return sub_25802AA3C(a1, a2, 1);
}

uint64_t sub_25802AA3C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = v3;
  *(v4 + 168) = a3;
  *(v4 + 112) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0) - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802AAE0, 0, 0);
}

uint64_t sub_25802AAE0()
{
  v20 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_258049D30();
  v0[18] = __swift_project_value_buffer(v2, qword_27F919E48);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000030, 0x80000002580512B0, &v19);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_258032C5C(v6, v5, &v19);
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - managementKey: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = v0[16];
  v0[10] = 0;
  v0[11] = 0;
  swift_beginAccess();
  v10 = sub_257FDA958(v9 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v12 = v0[5];
  if (v12)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
    v0[19] = v13;
    v14 = *v13;
    type metadata accessor for AppConfigDatabaseImpl();
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
    v15 = sub_25804A230();
    v17 = v16;
    v10 = sub_25802AD54;
    v12 = v15;
    v11 = v17;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v10, v12, v11);
}

uint64_t sub_25802AD54()
{
  sub_257FDB6B8(*(v0 + 112), *(v0 + 120), **(v0 + 152), (v0 + 80));
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25802ADEC, 0, 0);
}

uint64_t sub_25802ADEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  if (v1)
  {
    if (*(v0 + 168) == 1)
    {
      v4 = *(v0 + 128);
      v3 = *(v0 + 136);
      sub_25804A240();
      v5 = sub_25804A270();
      (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = v4;
      v6[5] = v2;
      v6[6] = v1;

      sub_25802E704(0, 0, v3, &unk_25804F1B0, v6);
    }
  }

  v7 = *(v0 + 136);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25802AF34()
{
  v24 = v0;
  v1 = v0[20];
  v2 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000030, 0x80000002580512B0, v23);
    *(v7 + 12) = 2082;
    v0[13] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v23);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v13 = v0[20];
  v14 = v0[17];
  v0[12] = v13;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v16 = sub_25804A120();
  v18 = v17;
  sub_258036E5C();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 5;
  swift_willThrow();

  v20 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_25802B180(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049F00();

  v4 = a2[1];
  *a2 = a1;
  a2[1] = v6;
}

uint64_t ManagedAppsServer.disableAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for AppRecordLookalike(0);
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802B40C, 0, 0);
}

uint64_t sub_25802B40C()
{
  v18 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_258049D30();
  v0[25] = __swift_project_value_buffer(v2, qword_27F919E48);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[17];
    v5 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000016, 0x80000002580510E0, &v17);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_258032C5C(v6, v5, &v17);
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - managementKey: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = v0[19];
  swift_beginAccess();
  result = sub_257FDA958(v9 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v11 = v0[5];
  if (v11)
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v11);
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_25802B65C;
    v14 = v0[24];
    v15 = v0[17];
    v16 = v0[18];

    return sub_257FE1590(v14, v15, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802B65C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_25802B968;
  }

  else
  {
    v3 = sub_25802B770;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25802B770()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_257FDA958(v2, v1, &qword_27F915280, &qword_25804ED30);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_257FDAB84(v0[24], &qword_27F915280, &qword_25804ED30);
    v5 = v0[24];
    v6 = v0[22];
    sub_257FDAB84(v0[23], &qword_27F915280, &qword_25804ED30);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[19];
    sub_258037D4C(v0[23], v0[22], type metadata accessor for AppRecordLookalike);
    v10 = sub_257FDA958(v9 + 32, (v0 + 7), &qword_27F915AE0, &qword_25804EC98);
    v12 = v0[10];
    if (v12)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v0 + 7, v12);
      v0[28] = v13;
      v14 = *v13;
      type metadata accessor for AppConfigDatabaseImpl();
      sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
      v15 = sub_25804A230();
      v17 = v16;
      v10 = sub_25802BBB8;
      v12 = v15;
      v11 = v17;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v10, v12, v11);
  }
}

uint64_t sub_25802B968()
{
  v23 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[27];
  v2 = v0[25];
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000016, 0x80000002580510E0, v22);
    *(v6 + 12) = 2082;
    v0[16] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v22);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  v0[15] = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v16 = sub_25804A120();
  v18 = v17;
  sub_258036E5C();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 6;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_25802BBB8()
{
  v1 = *(v0 + 216);
  sub_257FDB890(*(v0 + 136), *(v0 + 144), **(v0 + 224));
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_25802BF84;
  }

  else
  {
    v2 = sub_25802BC48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25802BC48()
{
  v36 = v0;
  v1 = v0[19];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (*(v1 + 72))
  {
    v3 = v0[29];
    sub_25801BA64(v0[22]);
    if (v3)
    {
      v7 = v4;
      v8 = v5;
      v9 = v6;
      v10 = v0[24];
      v11 = v0[22];
      sub_25801ACE8();
      v12 = swift_allocError();
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      sub_258037DB4(v11, type metadata accessor for AppRecordLookalike);
      sub_257FDAB84(v10, &qword_27F915280, &qword_25804ED30);
      v14 = v0[25];
      v15 = v12;
      v16 = sub_258049D10();
      v17 = sub_25804A2D0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v35[0] = v19;
        *v18 = 136446466;
        *(v18 + 4) = sub_258032C5C(0xD000000000000016, 0x80000002580510E0, v35);
        *(v18 + 12) = 2082;
        v0[16] = v12;
        v20 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
        v21 = sub_25804A120();
        v23 = sub_258032C5C(v21, v22, v35);

        *(v18 + 14) = v23;
        _os_log_impl(&dword_257FD4000, v16, v17, "%{public}s - Failed with error: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v19, -1, -1);
        MEMORY[0x259C77210](v18, -1, -1);
      }

      v25 = v0[23];
      v24 = v0[24];
      v26 = v0[22];
      v0[15] = v12;
      v27 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
      v28 = sub_25804A120();
      v30 = v29;
      sub_258036E5C();
      swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v30;
      *(v31 + 16) = 6;
      swift_willThrow();

      v32 = v0[1];
    }

    else
    {
      sub_258037DB4(v0[22], type metadata accessor for AppRecordLookalike);
      v33 = v0[23];
      v34 = v0[22];
      sub_257FDAB84(v0[24], &qword_27F915280, &qword_25804ED30);

      v32 = v0[1];
    }

    return v32();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802BF84()
{
  v24 = v0;
  v1 = v0[24];
  sub_258037DB4(v0[22], type metadata accessor for AppRecordLookalike);
  sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[29];
  v3 = v0[25];
  v4 = v2;
  v5 = sub_258049D10();
  v6 = sub_25804A2D0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000016, 0x80000002580510E0, v23);
    *(v7 + 12) = 2082;
    v0[16] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v23);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v5, v6, "%{public}s - Failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[22];
  v0[15] = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v17 = sub_25804A120();
  v19 = v18;
  sub_258036E5C();
  swift_allocError();
  *v20 = v17;
  *(v20 + 8) = v19;
  *(v20 + 16) = 6;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_25802C20C()
{
  swift_getKeyPath();
  sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A80();
}

uint64_t ManagedAppsServer.completeRemovalOfAppConfig(for:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for AppRecordLookalike(0);
  v3[24] = v5;
  v6 = *(v5 - 8);
  v3[25] = v6;
  v7 = *(v6 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802C49C, 0, 0);
}

uint64_t sub_25802C49C()
{
  v18 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_258049D30();
  v0[28] = __swift_project_value_buffer(v2, qword_27F919E48);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, &v17);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_258032C5C(v6, v5, &v17);
    _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - managementKey: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = v0[22];
  swift_beginAccess();
  result = sub_257FDA958(v9 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v11 = v0[5];
  if (v11)
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v11);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_25802C6EC;
    v14 = v0[23];
    v15 = v0[20];
    v16 = v0[21];

    return sub_257FE1590(v14, v15, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802C6EC()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_25802CC70;
  }

  else
  {
    v3 = sub_25802C800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25802C800()
{
  v40 = v0;
  v1 = v0[23];
  v2 = (*(v0[25] + 48))(v1, 1, v0[24]);
  v3 = v0[28];
  if (v2 == 1)
  {
    v4 = v0[21];
    sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v5 = sub_258049D10();
    v6 = sub_25804A2D0();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[20];
      v7 = v0[21];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, &v39);
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_258032C5C(v8, v7, &v39);
      _os_log_impl(&dword_257FD4000, v5, v6, "%{public}s - no result for record %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v10, -1, -1);
      MEMORY[0x259C77210](v9, -1, -1);
    }

    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[23];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v17 = v0[26];
    v16 = v0[27];
    sub_258037D4C(v1, v16, type metadata accessor for AppRecordLookalike);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_258037CE4(v16, v17, type metadata accessor for AppRecordLookalike);
    v18 = sub_258049D10();
    v19 = sub_25804A2C0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[26];
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, &v39);
      *(v22 + 12) = 2080;
      v24 = sub_257FF8ED8();
      v26 = v25;
      sub_258037DB4(v21, type metadata accessor for AppRecordLookalike);
      v27 = sub_258032C5C(v24, v26, &v39);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_257FD4000, v18, v19, "%{public}s - record: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v23, -1, -1);
      MEMORY[0x259C77210](v22, -1, -1);
    }

    else
    {

      sub_258037DB4(v21, type metadata accessor for AppRecordLookalike);
    }

    v28 = sub_257FDA958(v0[22] + 32, (v0 + 7), &qword_27F915AE0, &qword_25804EC98);
    v30 = v0[10];
    if (v30)
    {
      v31 = v0[27];
      v32 = v0[24];
      v33 = __swift_project_boxed_opaque_existential_1(v0 + 7, v30);
      v0[31] = v33;
      v34 = (v31 + *(v32 + 20));
      v0[32] = *v34;
      v0[33] = v34[1];
      v35 = *v33;
      type metadata accessor for AppConfigDatabaseImpl();
      sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
      v36 = sub_25804A230();
      v38 = v37;
      v28 = sub_25802CEC0;
      v30 = v36;
      v29 = v38;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v28, v30, v29);
  }
}

uint64_t sub_25802CC70()
{
  v23 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[30];
  v2 = v0[28];
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, v22);
    *(v6 + 12) = 2082;
    v0[19] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v22);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[23];
  v0[18] = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v16 = sub_25804A120();
  v18 = v17;
  sub_258036E5C();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 7;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_25802CEC0()
{
  v1 = *(v0 + 240);
  v2 = **(v0 + 248);
  sub_257FE4AB4(*(v0 + 256), *(v0 + 264));
  *(v0 + 272) = v1;
  if (v1)
  {
    v3 = sub_25802D2B8;
  }

  else
  {
    v3 = sub_25802CF50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25802CF50()
{
  v41 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  swift_beginAccess();

  sub_25801C770(v39, v2, v1);
  result = swift_endAccess();
  if (*(v3 + 72))
  {
    v5 = v0[34];
    v6 = v0[27];
    v7 = *(v3 + 72);

    sub_25801BA64(v6);
    v11 = v0[27];
    if (v5)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;

      sub_25801ACE8();
      v15 = swift_allocError();
      *v16 = v12;
      *(v16 + 8) = v13;
      *(v16 + 16) = v14;
      sub_258037DB4(v11, type metadata accessor for AppRecordLookalike);
      v17 = v0[28];
      v18 = v15;
      v19 = sub_258049D10();
      v20 = sub_25804A2D0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v39[0] = v22;
        *v21 = 136446466;
        *(v21 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, v39);
        *(v21 + 12) = 2082;
        v0[19] = v15;
        v23 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
        v24 = sub_25804A120();
        v26 = sub_258032C5C(v24, v25, v39);

        *(v21 + 14) = v26;
        _os_log_impl(&dword_257FD4000, v19, v20, "%{public}s - Failed with error: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v22, -1, -1);
        MEMORY[0x259C77210](v21, -1, -1);
      }

      v28 = v0[26];
      v27 = v0[27];
      v29 = v0[23];
      v0[18] = v15;
      v30 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
      v31 = sub_25804A120();
      v33 = v32;
      sub_258036E5C();
      swift_allocError();
      *v34 = v31;
      *(v34 + 8) = v33;
      *(v34 + 16) = 7;
      swift_willThrow();

      v35 = v0[1];
    }

    else
    {
      sub_258037DB4(v0[27], type metadata accessor for AppRecordLookalike);

      v37 = v0[26];
      v36 = v0[27];
      v38 = v0[23];

      v35 = v0[1];
    }

    return v35();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802D2B8()
{
  v23 = v0;
  sub_258037DB4(v0[27], type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[34];
  v2 = v0[28];
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258051100, v22);
    *(v6 + 12) = 2082;
    v0[19] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v22);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[23];
  v0[18] = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v16 = sub_25804A120();
  v18 = v17;
  sub_258036E5C();
  swift_allocError();
  *v19 = v16;
  *(v19 + 8) = v18;
  *(v19 + 16) = 7;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_25802D524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = type metadata accessor for AppRecordLookalike(0);
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802D62C, 0, 0);
}

uint64_t sub_25802D62C()
{
  v1 = v0[22];
  swift_beginAccess();
  v2 = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v4 = v0[5];
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v0[30] = v5;
    v6 = *v5;
    type metadata accessor for AppConfigDatabaseImpl();
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
    v7 = sub_25804A230();
    v9 = v8;
    v2 = sub_25802D730;
    v4 = v7;
    v3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v4, v3);
}

uint64_t sub_25802D730()
{
  v1 = **(v0 + 240);
  sub_257FE10F0(*(v0 + 184), *(v0 + 192), *(v0 + 232));
  *(v0 + 248) = 0;

  return MEMORY[0x2822009F8](sub_25802D7C4, 0, 0);
}

uint64_t sub_25802D7C4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_257FDA958(v2, v1, &qword_27F915280, &qword_25804ED30);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 224);
    sub_257FDAB84(*(v0 + 232), &qword_27F915280, &qword_25804ED30);
    sub_257FDAB84(v5, &qword_27F915280, &qword_25804ED30);
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v8 = *(v0 + 216);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 216);
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    sub_258037D4C(*(v0 + 224), v12, type metadata accessor for AppRecordLookalike);
    sub_25801E298(*(v12 + *(v13 + 20)), *(v12 + *(v13 + 20) + 8), v0 + 56);
    if (v11)
    {

      v15 = *(v0 + 176);
      *(v0 + 160) = xmmword_25804B2B0;
      result = sub_257FDA958(v15 + 32, v0 + 96, &qword_27F915AE0, &qword_25804EC98);
      v16 = *(v0 + 120);
      if (v16)
      {
        v17 = *__swift_project_boxed_opaque_existential_1((v0 + 96), v16);
        v18 = swift_task_alloc();
        *(v0 + 264) = v18;
        *v18 = v0;
        v18[1] = sub_25802DD2C;
        v19 = *(v0 + 216);

        return sub_257FDF19C(v19, v17, v0 + 160);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v20 = *(v0 + 216);
      v21 = *(v0 + 200);
      v22 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v23 = (v20 + *(v21 + 24));
      v25 = *v23;
      v24 = v23[1];
      v26 = *v22;
      v27 = swift_task_alloc();
      *(v0 + 256) = v27;
      *v27 = v0;
      v27[1] = sub_25802DB0C;

      return sub_257FD5CFC(v25, v24);
    }
  }

  return result;
}

uint64_t sub_25802DA84()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25802DB0C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2580381C8;
  }

  else
  {
    v3 = sub_25802DC24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25802DC24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 160) = xmmword_25804B2B0;
  result = sub_257FDA958(*(v0 + 176) + 32, v0 + 96, &qword_27F915AE0, &qword_25804EC98);
  v2 = *(v0 + 120);
  if (v2)
  {
    v3 = *__swift_project_boxed_opaque_existential_1((v0 + 96), v2);
    v4 = swift_task_alloc();
    *(v0 + 264) = v4;
    *v4 = v0;
    v4[1] = sub_25802DD2C;
    v5 = *(v0 + 216);

    return sub_257FDF19C(v5, v3, v0 + 160);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802DD2C()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_25802E000;
  }

  else
  {
    v3 = sub_25802DE40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25802DE40()
{
  v1 = v0[22];
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (*(v1 + 72))
  {
    v3 = v0[34];
    v4 = v0[27];
    v5 = v0[20];
    v6 = v0[21];

    v7 = sub_25801B81C(v4, v5, v6);
    v10 = v0[29];
    v11 = v0[27];
    if (v3)
    {
      v12 = v7;
      v13 = v8;
      v14 = v9;

      sub_25801ACE8();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v13;
      *(v15 + 16) = v14;
      sub_257FDAB84(v10, &qword_27F915280, &qword_25804ED30);
      sub_258037DB4(v11, type metadata accessor for AppRecordLookalike);
      sub_257FDAAA0(v0[20], v0[21]);
      v17 = v0[28];
      v16 = v0[29];
      v18 = v0[27];
    }

    else
    {
      sub_257FDAB84(v0[29], &qword_27F915280, &qword_25804ED30);

      sub_258037DB4(v11, type metadata accessor for AppRecordLookalike);
      sub_257FDAAA0(v0[20], v0[21]);
      v21 = v0[28];
      v20 = v0[29];
      v22 = v0[27];
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25802E000()
{
  v1 = v0[27];
  sub_257FDAB84(v0[29], &qword_27F915280, &qword_25804ED30);
  sub_258037DB4(v1, type metadata accessor for AppRecordLookalike);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_257FDAAA0(v0[20], v0[21]);
  v2 = v0[34];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];

  v6 = v0[1];

  return v6();
}

void sub_25802E0C8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_258049A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_25801BF90(2);
  if (!v16)
  {
    v21 = 0;
    v22 = 0xF000000000000000;
LABEL_16:
    v37 = *a2;
    v38 = a2[1];
    *a2 = v21;
    a2[1] = v22;
    sub_257FDAAA0(v37, v38);
    return;
  }

  v39 = v8;
  v40 = v5;
  v41 = v4;
  v42 = v2;
  v43 = v16;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
  sub_258037F14(&qword_27F915278, type metadata accessor for DataAssetRecord);
  v17 = sub_258049EE0();

  if (!v17)
  {
    v21 = 0;
    v22 = 0xF000000000000000;
    goto LABEL_16;
  }

  v43 = v17;
  swift_getKeyPath();
  sub_258037F14(&qword_27F915270, type metadata accessor for DataAssetRecord);

  sub_258049A90();

  swift_getKeyPath();
  sub_257FEC568();
  sub_258049F00();

  v18 = type metadata accessor for DataPersistenceValue();
  v19 = (*(*(v18 - 8) + 48))(v15, 1, v18);
  v20 = v42;
  if (v19 == 1)
  {

    v21 = 0;
    v22 = 0xF000000000000000;
LABEL_15:
    sub_257FDAB84(v15, &qword_27F915268, &qword_25804F1E0);
    goto LABEL_16;
  }

  sub_257FDA958(v15, v13, &qword_27F915268, &qword_25804F1E0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v21 = *v13;
    v22 = v13[1];
    goto LABEL_15;
  }

  v24 = v39;
  v23 = v40;
  v25 = v41;
  (*(v40 + 32))(v39, v13, v41);
  v26 = sub_258049A30();
  if (!v20)
  {
    v21 = v26;
    v22 = v27;

    (*(v23 + 8))(v24, v25);
    goto LABEL_15;
  }

  (*(v23 + 8))(v24, v25);
  sub_257FDAB84(v15, &qword_27F915268, &qword_25804F1E0);
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v28 = sub_258049D30();
  __swift_project_value_buffer(v28, qword_27F919DE8);
  v29 = v20;
  v30 = sub_258049D10();
  v31 = sub_25804A2D0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v32 = 136446466;
    *(v32 + 4) = sub_258032C5C(0xD000000000000018, 0x80000002580512F0, &v43);
    *(v32 + 12) = 2114;
    v35 = v20;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v36;
    *v33 = v36;
    _os_log_impl(&dword_257FD4000, v30, v31, "%{public}s - could not read legacy app config from file: %{public}@", v32, 0x16u);
    sub_257FDAB84(v33, &qword_27F915248, &qword_25804B388);
    MEMORY[0x259C77210](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x259C77210](v34, -1, -1);
    MEMORY[0x259C77210](v32, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25802E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_257FDA958(a3, v24 - v10, &qword_27F915AF8, &qword_25804FCD0);
  v12 = sub_25804A270();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_257FDAB84(v11, &qword_27F915AF8, &qword_25804FCD0);
  }

  else
  {
    sub_25804A260();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25804A230();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25804A130() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_257FDAB84(a3, &qword_27F915AF8, &qword_25804FCD0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_257FDAB84(a3, &qword_27F915AF8, &qword_25804FCD0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t ManagedAppsServer.getAllAppConfigState()()
{
  v1[34] = v0;
  v2 = sub_258049C20();
  v1[35] = v2;
  v3 = *(v2 - 8);
  v1[36] = v3;
  v4 = *(v3 + 64) + 15;
  v1[37] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v1[39] = v6;
  v7 = *(v6 - 8);
  v1[40] = v7;
  v8 = *(v7 + 64) + 15;
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25802EB10, 0, 0);
}

uint64_t sub_25802EB10()
{
  v15 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);
  v2 = sub_258049D10();
  v3 = sub_25804A2C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_258032C5C(0xD000000000000016, 0x8000000258051150, &v14);
    _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x259C77210](v5, -1, -1);
    MEMORY[0x259C77210](v4, -1, -1);
  }

  v6 = v0[34];
  v0[42] = sub_258036FA4(MEMORY[0x277D84F90], &qword_27F915B48, &qword_25804F138);
  swift_beginAccess();
  v7 = sub_257FDA958(v6 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v9 = v0[5];
  if (v9)
  {
    v0[43] = *__swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    type metadata accessor for AppConfigDatabaseImpl();
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
    v10 = sub_25804A230();
    v12 = v11;
    v7 = sub_25802ED50;
    v9 = v10;
    v8 = v12;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v7, v9, v8);
}

uint64_t sub_25802ED50()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[38];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v0[44] = type metadata accessor for AppRecord(0);
  v0[45] = sub_258037F14(&qword_27F915290, type metadata accessor for AppRecord);
  sub_258049E80();
  v0[46] = sub_25801CAC0(v2, type metadata accessor for AppRecord, &qword_27F915290, type metadata accessor for AppRecord);
  v0[47] = 0;
  (*(v0[40] + 8))(v0[41], v0[39]);

  return MEMORY[0x2822009F8](sub_25802EF0C, 0, 0);
}

uint64_t sub_25802EF0C()
{
  v121 = v0;
  v1 = *(v0 + 368);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1 >> 62)
  {
    goto LABEL_128;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_131:
    v92 = *(v0 + 336);
LABEL_132:
    v78 = *(v0 + 368);
    v79 = *(v0 + 328);
    v81 = *(v0 + 296);
    v80 = *(v0 + 304);

    v82 = objc_allocWithZone(sub_258049B60());
    v83 = sub_258049B50();

    v84 = *(v0 + 8);

    return v84(v83);
  }

LABEL_3:
  v96 = v1 & 0xC000000000000001;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  v1 = 0;
  v88 = v3;
  v89 = *(v0 + 376);
  v87 = *(v0 + 368) + 32;
  v101 = (*(v0 + 288) + 104);
  v90 = *MEMORY[0x277D25A88];
  v86 = *MEMORY[0x277D25A80];
  v100 = *MEMORY[0x277D25A90];
  v91 = *(v0 + 336);
  v95 = v2;
  while (1)
  {
    if (v96)
    {
      v4 = MEMORY[0x259C768B0](v1, *(v0 + 368));
      v5 = __OFADD__(v1++, 1);
      if (v5)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v1 >= *(v88 + 16))
      {
        goto LABEL_127;
      }

      v6 = *(v87 + 8 * v1);

      v5 = __OFADD__(v1++, 1);
      if (v5)
      {
        goto LABEL_126;
      }
    }

    v99 = v1;
    v7 = *(v0 + 360);
    *(v0 + 176) = v4;
    v8 = v4;
    swift_getKeyPath();
    sub_258037F14(&qword_27F915288, type metadata accessor for AppRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
    sub_258049F00();

    if (!*(v0 + 88))
    {
      goto LABEL_27;
    }

    v97 = *(v0 + 88);
    v93 = *(v0 + 80);
    v9 = *(v0 + 360);
    *(v0 + 184) = v8;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (*(v0 + 169))
    {
      break;
    }

LABEL_5:
    v1 = v99;
    if (v99 == v95)
    {
      goto LABEL_132;
    }
  }

  v10 = *(v0 + 352);
  v94 = v8;
  *(v0 + 192) = v8;
  v11 = off_2869384B8(v10, &off_2869384B0);
  v12 = v11;
  if (!(v11 >> 62))
  {
    v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_16;
    }

LABEL_31:

    v114 = 0;
    goto LABEL_32;
  }

  v1 = sub_25804A480();
  if (!v1)
  {
    goto LABEL_31;
  }

LABEL_16:
  v13 = 0;
  v118 = v1;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v114 = MEMORY[0x259C768B0](v13, v12);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_124;
      }

      v114 = *(v12 + 8 * v13 + 32);

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_123;
      }
    }

    *(v0 + 200) = v114;
    swift_getKeyPath();
    sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
    sub_258049F00();

    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = sub_25804A4C0();

    if (v17 == 1)
    {
      break;
    }

    v18 = sub_25804A560();

    if (v18)
    {
      goto LABEL_29;
    }

    ++v13;
    v1 = v118;
    if (v14 == v118)
    {
      goto LABEL_31;
    }
  }

LABEL_29:

LABEL_32:
  v19 = *(v0 + 360);
  *(v0 + 208) = v94;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v20 = type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  v115 = v20;
  sub_258049EF0();

  v1 = *(v0 + 216);
  v120[0] = MEMORY[0x277D84F90];
  if (!(v1 >> 62))
  {
    v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_34;
    }

    goto LABEL_62;
  }

  v21 = sub_25804A480();
  if (!v21)
  {
LABEL_62:
    v37 = MEMORY[0x277D84F90];
LABEL_63:

    if (v114)
    {
      sub_25803768C(v114);
      v38 = v37;
      v39 = v37 & 0x4000000000000000;
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_104;
      }

      goto LABEL_70;
    }

    v38 = v37;
    v39 = v37 & 0x4000000000000000;
    if ((v37 & 0x8000000000000000) != 0 || v39)
    {
      v76 = sub_25804A480();
      v38 = v37;
      if (v76)
      {
LABEL_69:
        if ((v38 & 0x8000000000000000) != 0)
        {
LABEL_104:
          v69 = v38;
          v70 = sub_25804A480();
          v38 = v69;
          v40 = v70;
          if (!v70)
          {
LABEL_105:

            v1 = MEMORY[0x277D84F90];
LABEL_106:
            if (*(v1 + 16))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B00, &qword_25804EEA8);
              v71 = sub_25804A4B0();
            }

            else
            {
              v71 = MEMORY[0x277D84F98];
            }

            v120[0] = v71;

            v25 = v89;
            sub_258035F00(v72, 1, v120);
            if (v89)
            {
              goto LABEL_117;
            }

            v73 = objc_allocWithZone(sub_258049B80());
            v74 = sub_258049B70();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v120[0] = v91;
            sub_258035348(v74, v93, v97, isUniquelyReferenced_nonNull_native, &qword_27F915B48, &qword_25804F138);

            v89 = 0;
            v91 = v120[0];
            goto LABEL_5;
          }

LABEL_72:
          v41 = v38;
          v120[0] = MEMORY[0x277D84F90];
          v42 = sub_258033264(0, v40 & ~(v40 >> 63), 0);
          if (v40 < 0)
          {
            __break(1u);
            return MEMORY[0x2821FEBD8](v42, v43, v44, v45, v46);
          }

          v47 = 0;
          v1 = v120[0];
          v48 = v41;
          v104 = off_2869384A8;
          v105 = v41 & 0xC000000000000001;
          v98 = v41 + 32;
          v102 = v40;
          v103 = v41;
          while (1)
          {
            if (__OFADD__(v47, 1))
            {
              goto LABEL_122;
            }

            v111 = v47 + 1;
            v113 = v1;
            if (v105)
            {
              v49 = MEMORY[0x259C768B0]();
            }

            else
            {
              if (v47 >= *(v48 + 16))
              {
                goto LABEL_125;
              }

              v49 = *(v98 + 8 * v47);
            }

            *(v0 + 240) = v49;
            swift_getKeyPath();
            sub_258037F14(&qword_27F9152E0, type metadata accessor for ExtensionRecord);
            sub_258049A90();

            swift_getKeyPath();
            sub_258037F14(&qword_27F9152D8, type metadata accessor for ExtensionRecord);
            sub_258049F00();

            v106 = *(v0 + 136);
            v108 = *(v0 + 128);
            *(v0 + 248) = v49;
            v50 = (v104)(v115);
            v25 = v50;
            if (v50 >> 62)
            {
              v51 = sub_25804A480();
              if (!v51)
              {
LABEL_98:

                v59 = *v101;
                goto LABEL_99;
              }
            }

            else
            {
              v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v51)
              {
                goto LABEL_98;
              }
            }

            v52 = 0;
            v117 = v51;
            while (1)
            {
              if ((v25 & 0xC000000000000001) != 0)
              {
                v53 = MEMORY[0x259C768B0](v52, v25);
                v54 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  goto LABEL_115;
                }
              }

              else
              {
                if (v52 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_116;
                }

                v53 = *(v25 + 8 * v52 + 32);

                v54 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  goto LABEL_115;
                }
              }

              *(v0 + 256) = v53;
              swift_getKeyPath();
              sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
              sub_258049A90();

              swift_getKeyPath();
              sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
              sub_258049F00();

              v55 = *(v0 + 144);
              v56 = *(v0 + 152);
              v57 = sub_25804A4C0();

              if (v57 == 1)
              {
                break;
              }

              v58 = sub_25804A560();

              if (v58)
              {
                goto LABEL_93;
              }

              ++v52;
              if (v54 == v117)
              {
                goto LABEL_98;
              }
            }

LABEL_93:

            *(v0 + 264) = v53;
            swift_getKeyPath();
            sub_258049A90();

            swift_getKeyPath();
            sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
            sub_258049F00();

            v59 = *v101;
            if ((*(v0 + 168) & 1) == 0)
            {
              v60 = *(v0 + 296);
              v61 = *(v0 + 280);
              if (*(v0 + 160))
              {
                v62 = v90;
              }

              else
              {
                v62 = v86;
              }

              goto LABEL_100;
            }

LABEL_99:
            v60 = *(v0 + 296);
            v61 = *(v0 + 280);
            v62 = v100;
LABEL_100:
            v59(v60, v62, v61);
            v63 = *(v0 + 296);
            v64 = objc_allocWithZone(sub_258049BA0());
            v65 = sub_258049B90();

            v1 = v113;
            v120[0] = v113;
            v67 = *(v113 + 16);
            v66 = *(v113 + 24);
            if (v67 >= v66 >> 1)
            {
              sub_258033264((v66 > 1), v67 + 1, 1);
              v1 = v120[0];
            }

            *(v1 + 16) = v67 + 1;
            v68 = (v1 + 24 * v67);
            v68[4] = v108;
            v68[5] = v106;
            v68[6] = v65;
            v47 = v111;
            v48 = v103;
            if (v111 == v102)
            {

              goto LABEL_106;
            }
          }
        }

LABEL_70:
        if (!v39)
        {
          v40 = *(v38 + 16);
          if (v40)
          {
            goto LABEL_72;
          }

          goto LABEL_105;
        }

        goto LABEL_104;
      }
    }

    else if (*(v37 + 16))
    {
      goto LABEL_69;
    }

LABEL_27:

    goto LABEL_5;
  }

LABEL_34:
  v22 = 0;
  v116 = v1 & 0xC000000000000001;
  v110 = v1 + 32;
  v112 = v1 & 0xFFFFFFFFFFFFFF8;
  v109 = v1;
  v107 = v21;
  while (1)
  {
    if (v116)
    {
      v24 = MEMORY[0x259C768B0](v22, v1);
      v5 = __OFADD__(v22, 1);
      v25 = v22 + 1;
      if (v5)
      {
        goto LABEL_120;
      }
    }

    else
    {
      if (v22 >= *(v112 + 16))
      {
        goto LABEL_121;
      }

      v23 = *(v110 + 8 * v22);

      v5 = __OFADD__(v22, 1);
      v25 = v22 + 1;
      if (v5)
      {
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
LABEL_127:
        __break(1u);
LABEL_128:
        if (*(v0 + 368) < 0)
        {
          v77 = *(v0 + 368);
        }

        v2 = sub_25804A480();
        if (!v2)
        {
          goto LABEL_131;
        }

        goto LABEL_3;
      }
    }

    v119 = v25;
    *(v0 + 224) = v24;
    v26 = off_2869384A8(v115, &off_2869384A0);
    v27 = v26;
    if (!(v26 >> 62))
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        break;
      }

      goto LABEL_35;
    }

    v28 = sub_25804A480();
    if (v28)
    {
      break;
    }

LABEL_35:

LABEL_36:
    v22 = v119;
    v1 = v109;
    if (v119 == v107)
    {
      v37 = v120[0];
      goto LABEL_63;
    }
  }

  v29 = 0;
  while ((v27 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x259C768B0](v29, v27);
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_113;
    }

LABEL_46:
    *(v0 + 232) = v30;
    v25 = &unk_25804EDF8;
    swift_getKeyPath();
    sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
    sub_258049A90();

    swift_getKeyPath();
    sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
    sub_258049F00();

    v32 = *(v0 + 112);
    v33 = *(v0 + 120);
    v34 = sub_25804A4C0();

    if (v34 == 1)
    {

LABEL_54:

      sub_25804A410();
      v36 = *(v120[0] + 16);
      sub_25804A440();
      sub_25804A450();
      sub_25804A420();
      goto LABEL_36;
    }

    v35 = sub_25804A560();

    if (v35)
    {
      goto LABEL_54;
    }

    ++v29;
    if (v31 == v28)
    {
      goto LABEL_35;
    }
  }

  if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_114;
  }

  v30 = *(v27 + 8 * v29 + 32);

  v31 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    goto LABEL_46;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  v43 = "Swift/Dictionary.swift";
  v42 = v25;
  v44 = 22;
  v45 = 1;
  v46 = 490;

  return MEMORY[0x2821FEBD8](v42, v43, v44, v45, v46);
}

uint64_t sub_258030020()
{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];
  v5 = v0[47];

  return v4();
}

uint64_t sub_2580300AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_257FDAFFC;

  return ManagedAppsServer.setAppConfig(recordID:appConfigRecord:persona:)(a1, a2, a3, a4, a5);
}

uint64_t sub_258030174(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257FDAFFC;

  return ManagedAppsServer.removeAppConfig(recordID:)(a1, a2);
}

uint64_t sub_25803021C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_257FDAFFC;

  return ManagedAppsServer.updateAppBundleID(for:bundleID:)(a1, a2, a3, a4);
}

uint64_t sub_2580302DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_257FDAFFC;

  return ManagedAppsServer.updateAppCodeIdentity(for:appCodeIdentity:extensionCodeIdentities:)(a1, a2, a3, a4);
}

uint64_t sub_25803039C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257FDAFFC;

  return sub_25802AA3C(a1, a2, 1);
}

uint64_t sub_258030448(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257FDAFFC;

  return ManagedAppsServer.disableAppConfig(for:)(a1, a2);
}

uint64_t sub_2580304F0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257FDAFFC;

  return ManagedAppsServer.completeRemovalOfAppConfig(for:)(a1, a2);
}

uint64_t sub_258030598()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258038214;

  return ManagedAppsServer.getAllAppConfigState()();
}

uint64_t ManagedAppsServer.touch()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257FDAFFC;

  return sub_2580378A4();
}

uint64_t sub_2580306E8()
{
  v1 = v0[25];
  swift_beginAccess();
  result = sub_257FDA958(v1 + 32, (v0 + 12), &qword_27F915AE0, &qword_25804EC98);
  v3 = v0[15];
  if (v3)
  {
    v4 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v3);
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_2580307C0;

    return sub_257FE4DCC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2580307C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_2580308D4;
  }

  else
  {
    v5 = sub_258030B54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2580308D4()
{
  v22 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_258032C5C(0x61746144706D7564, 0xEE00292865736162, v21);
    *(v7 + 12) = 2082;
    v0[24] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v10 = sub_25804A120();
    v12 = sub_258032C5C(v10, v11, v21);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v13 = v0[28];
  v0[23] = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v15 = sub_25804A120();
  v17 = v16;
  sub_258036E5C();
  swift_allocError();
  *v18 = v15;
  *(v18 + 8) = v17;
  *(v18 + 16) = 9;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_258030B54()
{
  v1 = v0[25];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B08, &qword_25804EEC8);
  v2 = swift_allocObject();
  v0[29] = v2;
  *(v2 + 16) = xmmword_25804B660;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AA0, &qword_25804EED0);
  inited = swift_initStackObject();
  v0[30] = inited;
  *(inited + 16) = xmmword_25804B660;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000258051170;
  v4 = *(v1 + 80);
  v0[31] = v4;

  return MEMORY[0x2822009F8](sub_258030C3C, v4, 0);
}

uint64_t sub_258030C3C()
{
  v8 = v0;
  v1 = *(v0 + 248);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_258032BD8(*(v2 + 16), 0);
    v5 = sub_2580363CC(&v7, v4 + 4, v3, v2);

    sub_257FF43E0();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 256) = v4;

  return MEMORY[0x2822009F8](sub_258030D4C, 0, 0);
}

uint64_t sub_258030D4C()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[27];
  *(v3 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B10, &qword_25804EED8);
  *(v3 + 48) = v1;
  v5 = sub_258036B88(v3);
  swift_setDeallocating();
  sub_257FDAB84(v3 + 32, &qword_27F915AA8, &qword_25804EEE0);
  *(v2 + 32) = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v2, 0x6E6F6D656144202DLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  result = v4;
  if (v4)
  {
    v8 = v0[1];

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ManagedAppsServer.eraseDatabase()()
{
  *(v1 + 160) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90) - 8) + 64) + 15;
  *(v1 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258030EE8, 0, 0);
}

uint64_t sub_258030EE8()
{
  v1 = v0[20];
  swift_beginAccess();
  v2 = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v4 = v0[5];
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v0[22] = v5;
    v6 = *v5;
    v0[23] = type metadata accessor for AppConfigDatabaseImpl();
    sub_258037F14(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl);
    v7 = sub_25804A230();
    v9 = v8;
    v2 = sub_258030FF0;
    v4 = v7;
    v3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v4, v3);
}

uint64_t sub_258030FF0()
{
  v1 = *(**(v0 + 176) + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelContainer);
  sub_258049E60();
  *(v0 + 192) = 0;

  return MEMORY[0x2822009F8](sub_258031090, 0, 0);
}

uint64_t sub_258031090()
{
  v32 = v0;
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    v3 = 1;
  }

  else
  {
    v4 = v0[21];
    v5 = *(v1 + 16);
    sub_258049B10();
    v3 = 0;
  }

  v6 = v0[24];
  v7 = v0[21];
  v8 = sub_258049A20();
  (*(*(v8 - 8) + 56))(v7, v3, 1, v8);
  v9 = sub_257FEB5A8(v2, v7, 0);
  if (v6)
  {
    v10 = v6;
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E48);
    v12 = v6;
    v13 = sub_258049D10();
    v14 = sub_25804A2D0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_258032C5C(0x7461446573617265, 0xEF29286573616261, v31);
      *(v15 + 12) = 2082;
      v0[19] = v10;
      v17 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
      v18 = sub_25804A120();
      v20 = sub_258032C5C(v18, v19, v31);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_257FD4000, v13, v14, "%{public}s - Failed with error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v16, -1, -1);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    v21 = v0[21];
    v0[18] = v10;
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v23 = sub_25804A120();
    v25 = v24;
    sub_258036E5C();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 10;
    swift_willThrow();

    v27 = v0[1];
  }

  else
  {
    v28 = v0[20];
    v29 = v0[21];
    v0[10] = v0[23];
    v0[11] = &off_286937E20;
    v0[7] = v9;
    swift_beginAccess();
    sub_258036DEC((v0 + 7), v28 + 32);
    swift_endAccess();

    v27 = v0[1];
  }

  return v27();
}

uint64_t sub_2580313F0()
{
  v21 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[24];
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_258032C5C(0x7461446573617265, 0xEF29286573616261, v20);
    *(v6 + 12) = 2082;
    v0[19] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v9 = sub_25804A120();
    v11 = sub_258032C5C(v9, v10, v20);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v12 = v0[21];
  v0[18] = v1;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  v14 = sub_25804A120();
  v16 = v15;
  sub_258036E5C();
  swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v16;
  *(v17 + 16) = 10;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_258031674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257FDAFFC;

  return sub_2580378A4();
}

uint64_t sub_258031714()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2580317A4;

  return ManagedAppsServer.dumpDatabase()();
}

uint64_t sub_2580317A4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2580318A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_257FD8590;

  return ManagedAppsServer.eraseDatabase()();
}

uint64_t sub_258031934()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257FD8590;

  return sub_2580319C4();
}

uint64_t sub_2580319C4()
{
  v1[12] = v0;
  v2 = type metadata accessor for AppRecordLookalike(0);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258031A9C, 0, 0);
}

uint64_t sub_258031A9C()
{
  v1 = v0[12];
  swift_beginAccess();
  result = sub_257FDA958(v1 + 32, (v0 + 2), &qword_27F915AE0, &qword_25804EC98);
  v3 = v0[5];
  if (v3)
  {
    v4 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_258031B74;

    return sub_257FE210C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258031B74(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_258031FD0;
  }

  else
  {
    v5 = sub_258031C88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258031C88()
{
  v31 = v0;
  v1 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  v3 = *(v0 + 152);
  if (v2)
  {
    v4 = *(v0 + 112);
    v5 = *(v4 + 80);
    *(v0 + 216) = v5;
    *(v0 + 176) = *(v4 + 72);
    *(v0 + 184) = 0;
    sub_258037CE4(v3 + ((v5 + 32) & ~v5), *(v0 + 136), type metadata accessor for AppRecordLookalike);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = sub_258049D30();
    *(v0 + 192) = __swift_project_value_buffer(v8, qword_27F919E48);
    sub_258037CE4(v7, v6, type metadata accessor for AppRecordLookalike);
    v9 = sub_258049D10();
    v10 = sub_25804A2B0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 128);
    if (v11)
    {
      v13 = *(v0 + 104);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v30);
      *(v14 + 12) = 2082;
      v16 = (v12 + *(v13 + 24));
      v17 = *v16;
      v18 = v16[1];

      sub_258037DB4(v12, type metadata accessor for AppRecordLookalike);
      v19 = sub_258032C5C(v17, v18, &v30);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_257FD4000, v9, v10, "%{public}s - Found pending removal %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v15, -1, -1);
      MEMORY[0x259C77210](v14, -1, -1);
    }

    else
    {

      sub_258037DB4(v12, type metadata accessor for AppRecordLookalike);
    }

    v25 = (*(v0 + 136) + *(*(v0 + 104) + 24));
    v27 = *v25;
    v26 = v25[1];
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = sub_258032200;
    v29 = *(v0 + 96);

    return ManagedAppsServer.completeRemovalOfAppConfig(for:)(v27, v26);
  }

  else
  {

    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 120);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_258031FD0()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E48);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v19);
    *(v8 + 12) = 2082;
    v0[10] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v11 = sub_25804A120();
    v13 = sub_258032C5C(v11, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed with error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[15];

  v17 = v0[1];

  return v17();
}

uint64_t sub_258032200()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_258032674;
  }

  else
  {
    v3 = sub_258032314;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258032314()
{
  v31 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 184) + 1;
  sub_258037DB4(*(v0 + 136), type metadata accessor for AppRecordLookalike);
  if (v2 == v1)
  {
    v3 = *(v0 + 152);

    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 184) + 1;
    *(v0 + 184) = v10;
    sub_258037CE4(*(v0 + 152) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + v9 * v10, *(v0 + 136), type metadata accessor for AppRecordLookalike);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = sub_258049D30();
    *(v0 + 192) = __swift_project_value_buffer(v13, qword_27F919E48);
    sub_258037CE4(v12, v11, type metadata accessor for AppRecordLookalike);
    v14 = sub_258049D10();
    v15 = sub_25804A2B0();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 128);
    if (v16)
    {
      v18 = *(v0 + 104);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v30);
      *(v19 + 12) = 2082;
      v21 = (v17 + *(v18 + 24));
      v22 = *v21;
      v23 = v21[1];

      sub_258037DB4(v17, type metadata accessor for AppRecordLookalike);
      v24 = sub_258032C5C(v22, v23, &v30);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_257FD4000, v14, v15, "%{public}s - Found pending removal %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v20, -1, -1);
      MEMORY[0x259C77210](v19, -1, -1);
    }

    else
    {

      sub_258037DB4(v17, type metadata accessor for AppRecordLookalike);
    }

    v25 = (*(v0 + 136) + *(*(v0 + 104) + 24));
    v27 = *v25;
    v26 = v25[1];
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = sub_258032200;
    v29 = *(v0 + 96);

    return ManagedAppsServer.completeRemovalOfAppConfig(for:)(v27, v26);
  }
}

uint64_t sub_258032674()
{
  v50 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  sub_258037CE4(*(v0 + 136), *(v0 + 120), type metadata accessor for AppRecordLookalike);
  v3 = v1;
  v4 = sub_258049D10();
  v5 = sub_25804A2D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136446722;
    *(v9 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v49);
    *(v9 + 12) = 2082;
    v11 = (v7 + *(v8 + 24));
    v12 = *v11;
    v13 = v11[1];

    sub_258037DB4(v7, type metadata accessor for AppRecordLookalike);
    v14 = sub_258032C5C(v12, v13, &v49);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    *(v0 + 88) = v6;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v16 = sub_25804A120();
    v18 = sub_258032C5C(v16, v17, &v49);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_257FD4000, v4, v5, "%{public}s - Failed to cleanup pending removal %{public}s: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v10, -1, -1);
    MEMORY[0x259C77210](v9, -1, -1);
  }

  else
  {
    v19 = *(v0 + 120);

    sub_258037DB4(v19, type metadata accessor for AppRecordLookalike);
  }

  v20 = *(v0 + 168);
  v21 = *(v0 + 184) + 1;
  sub_258037DB4(*(v0 + 136), type metadata accessor for AppRecordLookalike);
  if (v21 == v20)
  {
    v22 = *(v0 + 152);

    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v25 = *(v0 + 120);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 176);
    v29 = *(v0 + 184) + 1;
    *(v0 + 184) = v29;
    sub_258037CE4(*(v0 + 152) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + v28 * v29, *(v0 + 136), type metadata accessor for AppRecordLookalike);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 128);
    v31 = *(v0 + 136);
    v32 = sub_258049D30();
    *(v0 + 192) = __swift_project_value_buffer(v32, qword_27F919E48);
    sub_258037CE4(v31, v30, type metadata accessor for AppRecordLookalike);
    v33 = sub_258049D10();
    v34 = sub_25804A2B0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 128);
    if (v35)
    {
      v37 = *(v0 + 104);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_258032C5C(0xD000000000000017, 0x8000000258051330, &v49);
      *(v38 + 12) = 2082;
      v40 = (v36 + *(v37 + 24));
      v41 = *v40;
      v42 = v40[1];

      sub_258037DB4(v36, type metadata accessor for AppRecordLookalike);
      v43 = sub_258032C5C(v41, v42, &v49);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_257FD4000, v33, v34, "%{public}s - Found pending removal %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v39, -1, -1);
      MEMORY[0x259C77210](v38, -1, -1);
    }

    else
    {

      sub_258037DB4(v36, type metadata accessor for AppRecordLookalike);
    }

    v44 = (*(v0 + 136) + *(*(v0 + 104) + 24));
    v46 = *v44;
    v45 = v44[1];
    v47 = swift_task_alloc();
    *(v0 + 200) = v47;
    *v47 = v0;
    v47[1] = sub_258032200;
    v48 = *(v0 + 96);

    return ManagedAppsServer.completeRemovalOfAppConfig(for:)(v46, v45);
  }
}

void *sub_258032BD8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A78, &unk_25804E110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_258032C5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258032D28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25801BC58(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_258032D28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_258032E34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25804A400();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_258032E34(uint64_t a1, unint64_t a2)
{
  v4 = sub_258032E80(a1, a2);
  sub_258032FB0(&unk_2869376A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_258032E80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25803309C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25804A400();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25804A190();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25803309C(v10, 0);
        result = sub_25804A3A0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_258032FB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_258033110(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25803309C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B70, &qword_25804F348);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_258033110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B70, &qword_25804F348);
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

char *sub_258033204(char *a1, int64_t a2, char a3)
{
  result = sub_258033284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258033224(size_t a1, int64_t a2, char a3)
{
  result = sub_258033390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258033244(void *a1, int64_t a2, char a3)
{
  result = sub_258033568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258033264(void *a1, int64_t a2, char a3)
{
  result = sub_25803369C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258033284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A78, &unk_25804E110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_258033390(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B38, &qword_25804F128);
  v10 = *(type metadata accessor for AppRecordLookalike(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AppRecordLookalike(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_258033568(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B08, &qword_25804EEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB8, &qword_25804EC40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25803369C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B50, &qword_25804F140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B58, &qword_25804F148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2580337E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25804A600();
  sub_25804A150();
  v6 = sub_25804A620();

  return sub_258035550(a1, a2, v6);
}

double sub_25803385C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2580337E4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258035A58();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_258019BBC((*(v12 + 56) + 32 * v9), a3);
    sub_258034B6C(v9, v12);
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

double sub_258033900@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2580337E4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258035BFC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_257FDAA0C((*(v12 + 56) + 40 * v9), a3);
    sub_258034D1C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2580339AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B18, &qword_25804F100);
  v38 = a2;
  result = sub_25804A4A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_258033C54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B40, &qword_25804F130);
  v38 = a2;
  result = sub_25804A4A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_258033EFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B30, &qword_25804F120);
  v38 = a2;
  result = sub_25804A4A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2580341A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD8, &qword_25804EC50);
  v36 = a2;
  result = sub_25804A4A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_258019BBC(v25, v37);
      }

      else
      {
        sub_25801BC58(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_258019BBC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25803445C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B68, &qword_25804F158);
  v36 = a2;
  result = sub_25804A4A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_257FDAA0C(v25, v37);
      }

      else
      {
        sub_257FDA854(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_257FDAA0C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_258034720(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_25804A4A0();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2580349BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25804A360() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25804A600();

      sub_25804A150();
      v13 = sub_25804A620();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

uint64_t sub_258034B6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25804A360() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_25804A600();

      sub_25804A150();
      v14 = sub_25804A620();

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

uint64_t sub_258034D1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25804A360() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_25804A600();

      sub_25804A150();
      v15 = sub_25804A620();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_258034ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2580337E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2580339AC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2580337E4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25804A580();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_258035608();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_258035068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2580337E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_258033C54(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2580337E4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25804A580();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_258035778();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_2580351E4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2580337E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_258035A58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2580341A4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2580337E4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25804A580();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_258019BBC(a1, v23);
  }

  else
  {
    sub_2580354E4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_258035348(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2580337E4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_258034720(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_2580337E4(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_25804A580();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_258035DA4(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

_OWORD *sub_2580354E4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_258019BBC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_258035550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25804A560())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_258035608()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B18, &qword_25804F100);
  v2 = *v0;
  v3 = sub_25804A490();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_258035778()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B40, &qword_25804F130);
  v2 = *v0;
  v3 = sub_25804A490();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2580358E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B30, &qword_25804F120);
  v2 = *v0;
  v3 = sub_25804A490();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_258035A58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD8, &qword_25804EC50);
  v2 = *v0;
  v3 = sub_25804A490();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25801BC58(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_258019BBC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_258035BFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B68, &qword_25804F158);
  v2 = *v0;
  v3 = sub_25804A490();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_257FDA854(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_257FDAA0C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_258035DA4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25804A490();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_258035F00(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_2580337E4(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v9[3] < v16)
  {
    sub_258034720(v16, v5 & 1, &qword_27F915B00, &qword_25804EEA8);
    v18 = *a3;
    v11 = sub_2580337E4(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_25804A580();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_258035DA4(&qword_27F915B00, &qword_25804EEA8);
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_25804A3B0();
    MEMORY[0x259C76670](0xD00000000000001BLL, 0x8000000258051290);
    sub_25804A460();
    MEMORY[0x259C76670](39, 0xE100000000000000);
    sub_25804A470();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v17 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v5 = *(v17 - 2);
      v6 = *(v17 - 1);
      v28 = *v17;
      v29 = *a3;

      v10 = v28;
      v30 = sub_2580337E4(v5, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v7 = v31;
      if (v29[3] < v34)
      {
        sub_258034720(v34, 1, &qword_27F915B00, &qword_25804EEA8);
        v35 = *a3;
        v30 = sub_2580337E4(v5, v6);
        if ((v7 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v7)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v5;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v17 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t (*sub_2580362C4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x259C768B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_2580381EC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_258036344(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x259C768B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_2580363C4;
  }

  __break(1u);
  return result;
}

void *sub_2580363CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_258036524(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for AppAssetResolverImpl();
  v32 = v10;
  v33 = &off_286937DB0;
  *&v31 = a1;
  v11 = *a5;
  v13 = sub_2580337E4(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_257FDAA0C(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_258035BFC();
    goto LABEL_7;
  }

  sub_25803445C(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_2580337E4(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_25804A580();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_25803671C(v13, a2, a3, *v28, v19);

  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_25803671C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = type metadata accessor for AppAssetResolverImpl();
  v17 = &off_286937DB0;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_257FDAA0C(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_2580367CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B18, &qword_25804F100);
    v3 = sub_25804A4B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2580337E4(v5, v6);
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

uint64_t sub_2580368E4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_25804A170();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_258036980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B30, &qword_25804F120);
    v3 = sub_25804A4B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2580337E4(v5, v6);
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

unint64_t sub_258036A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B40, &qword_25804F130);
    v3 = sub_25804A4B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2580337E4(v5, v6);
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

unint64_t sub_258036B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AD8, &qword_25804EC50);
    v3 = sub_25804A4B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_257FDA958(v4, &v13, &qword_27F915AA8, &qword_25804EEE0);
      v5 = v13;
      v6 = v14;
      result = sub_2580337E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_258019BBC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_258036CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915B68, &qword_25804F158);
    v3 = sub_25804A4B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_257FDA958(v4, &v13, &unk_27F915B80, &qword_25804F3C8);
      v5 = v13;
      v6 = v14;
      result = sub_2580337E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_257FDAA0C(&v15, v3[7] + 40 * result);
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

uint64_t sub_258036DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AE0, &qword_25804EC98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_258036E5C()
{
  result = qword_27F915AF0;
  if (!qword_27F915AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915AF0);
  }

  return result;
}

uint64_t sub_258036EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25802D524(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_258036FA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25804A4B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2580337E4(v7, v8);
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

uint64_t sub_2580370D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRecordLookalike(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v53[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258049D00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v53[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v53[-1] - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v53[-1] - v17;
  if (*(a1 + *(v4 + 36)) == 1)
  {
    v19 = (a1 + *(v4 + 28));
    v21 = *v19;
    v20 = v19[1];
    if (!v20 && (sub_258049CE0() & 1) == 0)
    {
      return 1;
    }

    v22 = sub_258049CF0();
    if (v20)
    {
      if (v21 == v22 && v20 == v23)
      {

        return 1;
      }

      v25 = sub_25804A560();

      if (v25)
      {
        return 1;
      }
    }

    else
    {
    }

    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v37 = sub_258049D30();
    __swift_project_value_buffer(v37, qword_27F919E48);
    (*(v9 + 16))(v18, a2, v8);
    sub_258037CE4(a1, v7, type metadata accessor for AppRecordLookalike);
    v38 = sub_258049D10();
    v39 = sub_25804A2D0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v40 = 136446466;
      v41 = sub_258049CF0();
      v43 = v42;
      (*(v9 + 8))(v18, v8);
      v44 = sub_258032C5C(v41, v43, &v54);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      v45 = &v7[*(v4 + 28)];
      v46 = v45[1];
      v53[0] = *v45;
      v53[1] = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
      v47 = sub_25804A120();
      v49 = v48;
      sub_258037DB4(v7, type metadata accessor for AppRecordLookalike);
      v50 = sub_258032C5C(v47, v49, &v54);

      *(v40 + 14) = v50;
      _os_log_impl(&dword_257FD4000, v38, v39, "Current persona (%{public}s) does not match expected persona %{public}s", v40, 0x16u);
      v51 = v52;
      swift_arrayDestroy();
      MEMORY[0x259C77210](v51, -1, -1);
      MEMORY[0x259C77210](v40, -1, -1);
    }

    else
    {

      sub_258037DB4(v7, type metadata accessor for AppRecordLookalike);
      (*(v9 + 8))(v18, v8);
    }
  }

  else
  {
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v27 = sub_258049D30();
    __swift_project_value_buffer(v27, qword_27F919E48);
    v28 = *(v9 + 16);
    v28(v16, a2, v8);
    v29 = sub_258049D10();
    v30 = sub_25804A2E0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53[0] = v32;
      *v31 = 136446210;
      v28(v13, v16, v8);
      v33 = sub_25804A120();
      v35 = v34;
      (*(v9 + 8))(v16, v8);
      v36 = sub_258032C5C(v33, v35, v53);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_257FD4000, v29, v30, "App record for client %{public}s is not active", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x259C77210](v32, -1, -1);
      MEMORY[0x259C77210](v31, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v16, v8);
    }
  }

  return 0;
}

uint64_t sub_25803768C(uint64_t a1)
{
  v2 = sub_258049C20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_3;
  }

  v10 = a1;
  swift_getKeyPath();
  sub_258037F14(&qword_27F9152E8, type metadata accessor for DataRecord);
  sub_258049A90();

  swift_getKeyPath();
  sub_258037F14(&qword_27F9152A8, type metadata accessor for DataRecord);
  sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
  sub_258049F00();

  if (v11 != 1)
  {
    if (v10)
    {
      v7 = MEMORY[0x277D25A88];
    }

    else
    {
      v7 = MEMORY[0x277D25A80];
    }

    (*(v3 + 104))(v6, *v7, v2);
  }

  else
  {
LABEL_3:
    (*(v3 + 104))(v6, *MEMORY[0x277D25A90], v2);
  }

  v8 = objc_allocWithZone(sub_258049BA0());
  return sub_258049B90();
}

uint64_t sub_2580378C0()
{
  v9 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);
  v2 = sub_258049D10();
  v3 = sub_25804A2E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_258032C5C(0x29286863756F74, 0xE700000000000000, &v8);
    _os_log_impl(&dword_257FD4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x259C77210](v5, -1, -1);
    MEMORY[0x259C77210](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_258037AFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_257FFE994();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_258037B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FD8590;

  return sub_25802D524(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_258037CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258037D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258037DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258037E40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_257FDAFFC;

  return sub_257FD97CC(v2, v3, v4, v5, v6);
}

uint64_t sub_258037F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[4]);
  v4 = v2[6];

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t sub_258037FCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_257FDAFFC;

  return sub_257FD84CC(v2, v3, v4, v5, v6);
}

uint64_t sub_2580380B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2580380F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_257FD8590;

  return sub_258031934();
}

id sub_2580382A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAppsServiceDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_258038324()
{
  result = qword_27F915C10;
  if (!qword_27F915C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915C10);
  }

  return result;
}

uint64_t sub_258038378(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_serviceType))
  {
    v3 = sub_258049C40();
  }

  else
  {
    v3 = sub_258049C30();
  }

  v4 = v3;
  [a1 setExportedInterface_];

  v5 = *(v1 + OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_scope);
  v6 = *(v1 + OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_server);
  type metadata accessor for ManagedAppsServicer();
  swift_allocObject();

  v7 = a1;
  [v7 setExportedObject_];

  [v7 resume];
  return 1;
}

uint64_t get_enum_tag_for_layout_string_15ManagedAppsCore0aB12ServiceErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) != 0)
  {
    return (*a1 + 16);
  }

  else
  {
    return *(a1 + 16) & 0x1F;
  }
}

uint64_t sub_25803847C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF0 && *(a1 + 17))
  {
    return (*a1 + 240);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x10)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}