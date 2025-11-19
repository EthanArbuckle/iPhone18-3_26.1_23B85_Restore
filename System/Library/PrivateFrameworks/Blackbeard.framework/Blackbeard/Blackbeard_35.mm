uint64_t sub_1E62261E4()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 592);
  v5 = *v0;

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E622630C, 0, 0);
}

uint64_t sub_1E622630C()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = v0[64];
  v2 = v0[56];
  v3 = v0[40];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1E6226C8C(v2, v3, type metadata accessor for RouteDestination);
  sub_1E6226D58(v2, type metadata accessor for RouteDestination);
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
  v10 = v0[51];
  v9 = v0[52];
  v12 = v0[48];
  v11 = v0[49];
  v13 = v0[47];
  v17 = v0[45];

  v14 = v0[1];
  v15 = *MEMORY[0x1E69E9840];

  return v14();
}

uint64_t sub_1E6226488()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 608);
  v5 = *v0;

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E62265B0, 0, 0);
}

uint64_t sub_1E62265B0()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = v0[75];
  v2 = v0[64];
  v3 = v0[58];
  v5 = v0[55];
  v4 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[51];
  v9 = v0[52];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[45];
  swift_willThrow();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1E6226D58(v4, type metadata accessor for RouteDestination);

  v10 = v0[1];
  v11 = v0[75];
  v12 = *MEMORY[0x1E69E9840];

  return v10();
}

uint64_t sub_1E622670C()
{
  v49 = v0;
  v48[1] = *MEMORY[0x1E69E9840];
  v1 = v0[73];
  v2 = v0[70];
  v0[75] = v1;
  v3 = v0[45];
  v4 = v0[43];
  v0[38] = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  v6 = swift_dynamicCast();
  v7 = v0[68];
  v8 = v0[67];
  if (v6)
  {
    v9 = v0[47];
    v10 = v0[42];
    (*(v0[44] + 8))(v0[45], v0[43]);
    sub_1E6226C8C(v10, v9, type metadata accessor for RouteDetourResolver);

    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6338();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[67];
    if (v13)
    {
      v47 = v2 + 1;
      v15 = v0[66];
      v17 = v0[46];
      v16 = v0[47];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48[0] = v19;
      *v18 = 136315650;
      v20 = sub_1E5DFD4B0(v15, v14, v48);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v47;
      *(v18 + 22) = 2048;
      v21 = *(*(v16 + *(v17 + 24)) + 16);
      sub_1E6226D58(v16, type metadata accessor for RouteDetourResolver);
      *(v18 + 24) = v21;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "%s Cancelled detour resolution after %ld/%ld detours", v18, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E694F1C0](v19, -1, -1);
      v22 = v18;
LABEL_6:
      MEMORY[0x1E694F1C0](v22, -1, -1);

      goto LABEL_10;
    }

    sub_1E6226D58(v0[47], type metadata accessor for RouteDetourResolver);
  }

  else
  {
    v23 = v0[67];

    v24 = v1;
    v11 = sub_1E65E3B48();
    v25 = sub_1E65E6328();

    v26 = os_log_type_enabled(v11, v25);
    v27 = v0[67];
    if (v26)
    {
      v28 = v0[66];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48[0] = v30;
      *v29 = 136315394;
      v31 = sub_1E5DFD4B0(v28, v27, v48);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2082;
      v0[39] = v1;
      v32 = v1;
      v33 = sub_1E65E5CE8();
      v35 = sub_1E5DFD4B0(v33, v34, v48);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_1E5DE9000, v11, v25, "%s Detour resolution throwing %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v30, -1, -1);
      v22 = v29;
      goto LABEL_6;
    }
  }

LABEL_10:
  v36 = *(v0[61] + 24);
  v46 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  v0[76] = v38;
  *v38 = v0;
  v38[1] = sub_1E6226488;
  v39 = v0[65];
  v40 = v0[64];
  v42 = v0[61];
  v41 = v0[62];
  v43 = v0[60];
  v44 = *MEMORY[0x1E69E9840];

  return (v46)(v40, v39, v6 ^ 1u, v41, v42);
}

uint64_t sub_1E6226B8C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 8))(ObjectType, v4);
}

uint64_t sub_1E6226BE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E6223ED8(a1, a2);
}

uint64_t sub_1E6226C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6226CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6226D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6226DB8()
{
  type metadata accessor for RouteSource(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6226DFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = a6;
  *(v6 + 41) = a4;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v8 = sub_1E65D74E8();
  *(v6 + 128) = v8;
  v9 = *(v8 - 8);
  *(v6 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6226F0C, 0, 0);
}

uint64_t sub_1E6226F0C()
{
  v66 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 41);
  v5 = *(v0 + 96);
  v62 = *(v0 + 80);
  v63 = v5;
  v64 = v4;
  v65 = xmmword_1E65EAE00;
  URLAction.makeURL(root:)(&v65, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E62282E0(*(v0 + 120));
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v0 + 41);
    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    sub_1E6228348(v8, v7, v6, v9);
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6328();
    sub_1E5FFF204(v8, v7, v6, v9);
    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v15 = *(v0 + 80);
      v16 = *(v0 + 41);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v62 = v18;
      *v17 = 136446210;
      *(v0 + 16) = v15;
      *(v0 + 24) = v14;
      *(v0 + 32) = v13;
      *(v0 + 40) = v16;
      sub_1E6228348(v15, v14, v13, v16);
      v19 = sub_1E65E5CE8();
      v21 = sub_1E5DFD4B0(v19, v20, &v62);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "Unable to produce a URL for %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E694F1C0](v18, -1, -1);
      MEMORY[0x1E694F1C0](v17, -1, -1);
    }

    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v24 = *(v0 + 120);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 144);
    v28 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    v32 = *(v0 + 88);
    v31 = *(v0 + 96);
    v33 = *(v0 + 80);
    v34 = *(v0 + 41);
    v35 = sub_1E65E3B68();
    __swift_project_value_buffer(v35, qword_1EE2EA2A0);
    (*(v30 + 16))(v27, v28, v29);
    sub_1E6228348(v33, v32, v31, v34);
    v36 = sub_1E65E3B48();
    v37 = sub_1E65E6338();
    sub_1E5FFF204(v33, v32, v31, v34);
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 136);
    v39 = *(v0 + 144);
    v41 = *(v0 + 128);
    if (v38)
    {
      v61 = v37;
      v43 = *(v0 + 88);
      v42 = *(v0 + 96);
      v44 = *(v0 + 80);
      v45 = *(v0 + 41);
      v46 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v62 = v60;
      *v46 = 136446466;
      *(v0 + 48) = v44;
      *(v0 + 56) = v43;
      *(v0 + 64) = v42;
      *(v0 + 72) = v45;
      sub_1E6228348(v44, v43, v42, v45);
      v47 = sub_1E65E5CE8();
      v49 = sub_1E5DFD4B0(v47, v48, &v62);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2082;
      sub_1E5FFE9E4();
      v50 = sub_1E65E6BC8();
      v52 = v51;
      v53 = *(v40 + 8);
      v53(v39, v41);
      v54 = sub_1E5DFD4B0(v50, v52, &v62);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_1E5DE9000, v36, v61, "Resolved %{public}s to %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v60, -1, -1);
      MEMORY[0x1E694F1C0](v46, -1, -1);
    }

    else
    {

      v53 = *(v40 + 8);
      v53(v39, v41);
    }

    *(v0 + 160) = v53;
    v55 = swift_task_alloc();
    *(v0 + 168) = v55;
    *v55 = v0;
    v55[1] = sub_1E6227460;
    v56 = *(v0 + 152);
    v57 = *(v0 + 104);
    v58 = *(v0 + 112);
    v59 = MEMORY[0x1E69E7CD0];

    return sub_1E5FFC850(v56, v57, v59, v58);
  }
}

uint64_t sub_1E6227460()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1E6227604;
  }

  else
  {
    v3 = sub_1E6227574;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6227574()
{
  v1 = *(v0 + 136) + 8;
  (*(v0 + 160))(*(v0 + 152), *(v0 + 128));
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 120);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E6227604()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 136) + 8;
  (*(v0 + 160))(*(v0 + 152), *(v0 + 128));

  v4 = *(v0 + 8);
  v5 = *(v0 + 176);

  return v4();
}

uint64_t sub_1E62276A0()
{
  result = sub_1E65E5C48();
  qword_1ED096330 = result;
  return result;
}

uint64_t sub_1E62276D8()
{
  result = sub_1E65E5C48();
  qword_1ED096338 = result;
  return result;
}

uint64_t sub_1E6227710()
{
  result = sub_1E65E5C48();
  qword_1ED096340 = result;
  return result;
}

uint64_t sub_1E6227748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1E65E6058();

  v13 = sub_1E65E6048();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a1;
  v14[7] = a2;
  sub_1E64B80F8(0, 0, v11, &unk_1E65F8008, v14);
}

uint64_t sub_1E622788C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = sub_1E65E6058();
  v7[5] = sub_1E65E6048();
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_1E62279A0;

  return v12();
}

uint64_t sub_1E62279A0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v12 = *v2;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;

  v9 = sub_1E65E5FC8();
  if (v3)
  {
    v10 = sub_1E6227CE4;
  }

  else
  {
    v10 = sub_1E6227B00;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

id sub_1E6227B00()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E65EA660;
  v3 = [v1 ams_fullName];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 40);
    sub_1E65E5C78();
  }

  else
  {
    result = [*(v0 + 56) userFullName];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v7 = *(v0 + 40);

    sub_1E65E5C78();
  }

  v8 = *(v0 + 56);

  v9 = [v8 username];
  if (v9)
  {
    v10 = v9;
    sub_1E65E5C78();
  }

  v11 = *(v0 + 56);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  sub_1E613FAAC();
  *(v2 + 32) = sub_1E65E65C8();
  v13(v2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E6227CE4()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v4(MEMORY[0x1E69E7CC0]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6227D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6227E50, v7, v6);
}

uint64_t sub_1E6227E50()
{
  v1 = *(v0 + 24);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v3 = *v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1E6067BDC;
  v5 = *(v0 + 24);

  return sub_1E6226DFC(2, 0, 0, 4, v5, v3);
}

uint64_t sub_1E6227F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1E5DF650C(a2, v16);
  sub_1E65E6058();
  v11 = sub_1E65E6048();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  sub_1E5DF599C(v16, v12 + 32);
  sub_1E6059EAC(0, 0, v9, a4, v12);
}

uint64_t sub_1E6228084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6228148, v7, v6);
}

uint64_t sub_1E6228148()
{
  v1 = *(v0 + 24);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v3 = *v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1E6067F04;
  v5 = *(v0 + 24);

  return sub_1E6226DFC(5, 0, 0, 4, v5, v3);
}

uint64_t sub_1E6228230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6228084(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E62282E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6228348(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }

  return sub_1E5E05374(result, a2);
}

uint64_t sub_1E6228378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6227D8C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6228428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E622788C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E62284FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v135 = a1;
  v145 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A90, &unk_1E65FA720);
  v140 = *(v139 - 8);
  v4 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v136 = &v123 - v5;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D18, &qword_1E65F8028);
  v144 = *(v141 - 8);
  v6 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v137 = &v123 - v7;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  v8 = *(*(v143 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v143);
  v138 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v123 - v11;
  v155 = sub_1E65DCA88();
  v154 = *(v155 - 8);
  v134 = *(v154 + 64);
  v12 = MEMORY[0x1EEE9AC00](v155);
  v133 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v153 = &v123 - v14;
  v15 = type metadata accessor for AppComposer();
  v16 = v15 - 8;
  v158 = *(v15 - 8);
  v17 = *(v158 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v146 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v151 = &v123 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v152 = &v123 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v150 = &v123 - v25;
  v27 = v26;
  MEMORY[0x1EEE9AC00](v24);
  v160 = &v123 - v28;
  v156 = sub_1E65E63B8();
  v149 = *(v156 - 8);
  v29 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v148 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1E65E6398();
  v31 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v132 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E65E4F68();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v126 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MetricService();
  v129 = v36;
  Description = v36[-1].Description;
  v38 = Description[8];
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v40;
  v131 = sub_1E65DD0A8();
  v130 = *(v131 - 8);
  v41 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v43 = &v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *v2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v45 = *(v16 + 28);
  v46 = *(type metadata accessor for AppEnvironment() + 80);
  v157 = v3;
  (Description[2])(v40, v3 + v46 + v45, v36);
  v47 = *(v16 + 40);
  sub_1E65E5148();
  v125 = "18LocalizationBundle";
  v127 = *(v3 + v47);
  swift_unknownObjectRetain();
  v48 = sub_1E65E5138();
  v161 = v48;
  v49 = type metadata accessor for SearchMetricsMonitor();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v159 = swift_allocObject();
  v124 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue;
  sub_1E61259CC();
  sub_1E65E4F58();
  *&v164 = MEMORY[0x1E69E7CC0];
  sub_1E622B878(&qword_1EE2D4610, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A450, &qword_1E65F8060);
  sub_1E5FED46C(&qword_1EE2D4820, &unk_1ED07A450, &qword_1E65F8060);
  sub_1E65E6738();
  (*(v149 + 104))(v148, *MEMORY[0x1E69E8090], v156);
  v52 = sub_1E65E63E8();
  v53 = v159;
  *(v159 + v124) = v52;
  (*(v130 + 32))(v53 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState, v43, v131);
  v54 = MEMORY[0x1E69AB380];
  *(v53 + 16) = v48;
  *(v53 + 24) = v54;
  (Description[4])(v53 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService, v128, v129);
  *(v53 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker) = v127;
  v55 = v157;
  v56 = v160;
  sub_1E5E1DEAC(v157, v160);
  v57 = *(v158 + 80);
  v123 = v27;
  v149 = ((v57 + 16) & ~v57) + v27;
  v148 = ((v57 + 16) & ~v57);
  v156 = v57 | 7;
  v58 = swift_allocObject();
  sub_1E5E1FA80(v56, v58 + ((v57 + 16) & ~v57));
  v59 = v150;
  sub_1E5E1DEAC(v55, v150);
  v60 = ((v57 + 32) & ~v57) + v27;
  v131 = (v57 + 32) & ~v57;
  v130 = v60;
  v61 = swift_allocObject();
  v158 = v61;
  *(v61 + 16) = &unk_1E65F8070;
  *(v61 + 24) = v58;
  v129 = &unk_1E65F8070;
  sub_1E5E1FA80(v59, v61 + ((v57 + 32) & ~v57));
  *(v61 + v60) = 0;
  v62 = v61 + (v60 & 0xFFFFFFFFFFFFFFF8);
  *(v62 + 8) = sub_1E6172524;
  *(v62 + 16) = 0;
  v63 = (v61 + (((v60 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v64 = v161;
  *v63 = v161;
  v63[1] = MEMORY[0x1E69AB380];
  v65 = v55;
  v66 = v55;
  v67 = v152;
  sub_1E5E1DEAC(v65, v152);
  v68 = (v57 + 48) & ~v57;
  v69 = v68 + v123;
  v70 = swift_allocObject();
  v70[2] = &unk_1E65F8070;
  v70[3] = v58;
  v70[4] = v64;
  v71 = v64;
  v70[5] = MEMORY[0x1E69AB380];
  v72 = v70;
  sub_1E5E1FA80(v67, v70 + v68);
  v147 = v72;
  *(v72 + v69) = 0;
  v73 = v72 + (v69 & 0xFFFFFFFFFFFFFFF8);
  *(v73 + 1) = sub_1E6172524;
  *(v73 + 2) = 0;
  v74 = v151;
  sub_1E5E1DEAC(v66, v151);
  v75 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v129;
  *(v76 + 2) = v129;
  *(v76 + 3) = v58;
  *(v76 + 4) = v71;
  *(v76 + 5) = MEMORY[0x1E69AB380];
  v78 = v76;
  sub_1E5E1FA80(v74, &v76[v68]);
  v79 = &v78[v75];
  v132 = v78;
  *v79 = sub_1E6172524;
  *(v79 + 1) = 0;
  v79[16] = 0;
  v80 = v146;
  sub_1E5E1DEAC(v66, v146);
  v81 = swift_allocObject();
  *(v81 + 16) = v77;
  *(v81 + 24) = v58;
  v82 = v81;
  v151 = v81;
  sub_1E5E1FA80(v80, v81 + v131);
  *&v164 = v71;
  *(&v164 + 1) = MEMORY[0x1E69AB380];
  *&v165 = &unk_1E65EB918;
  *(&v165 + 1) = v158;
  *&v166 = &unk_1E65FA770;
  *(&v166 + 1) = v147;
  *&v167 = &unk_1E65EB920;
  *(&v167 + 1) = v78;
  *&v168 = &unk_1E65FA780;
  *(&v168 + 1) = v82;
  swift_retain_n();
  swift_retain_n();
  v83 = v135;
  v146 = sub_1E624E6AC(v135, &v164);
  v84 = v153;
  sub_1E63D53AC(v146, v153);
  v85 = v66;
  v86 = v160;
  sub_1E5E1DEAC(v85, v160);
  v87 = v154;
  v88 = v133;
  v89 = v84;
  v90 = v155;
  (*(v154 + 16))(v133, v89, v155);
  v91 = v149;
  v92 = (v149 + *(v87 + 80)) & ~*(v87 + 80);
  v93 = (v134 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v95 = v148;
  v134 = v94;
  sub_1E5E1FA80(v86, &v148[v94]);
  (*(v87 + 32))(v94 + v92, v88, v90);
  *(v94 + v93) = v159;
  v96 = v157;
  v97 = v150;
  sub_1E5E1DEAC(v157, v150);
  v98 = v83;
  sub_1E5DF650C(v83, &v163);
  v99 = (v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  v101 = v95;
  sub_1E5E1FA80(v97, &v95[v100]);
  sub_1E5DF599C(&v163, v100 + v99);
  v102 = (v100 + ((v99 + 47) & 0xFFFFFFFFFFFFFFF8));
  v103 = v167;
  v102[2] = v166;
  v102[3] = v103;
  v102[4] = v168;
  v104 = v165;
  *v102 = v164;
  v102[1] = v104;
  v105 = v152;
  sub_1E5E1DEAC(v96, v152);
  sub_1E5DF650C(v98, &v162);
  v106 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  sub_1E5E1FA80(v105, &v101[v107]);
  *(v107 + v99) = v146;
  sub_1E5DF599C(&v162, v107 + v106);
  v108 = (v107 + ((v106 + 47) & 0xFFFFFFFFFFFFFFF8));
  v109 = v167;
  v108[2] = v166;
  v108[3] = v109;
  v108[4] = v168;
  v110 = v165;
  *v108 = v164;
  v108[1] = v110;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076038, &qword_1E65F4908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v111 = v136;
  sub_1E65DD298();
  v112 = *(v159 + 16);
  v113 = *(v159 + 24);
  v114 = sub_1E5FED46C(&qword_1ED076D20, &unk_1ED077A90, &unk_1E65FA720);
  v115 = v137;
  v116 = v139;
  sub_1E5E1EC14();
  (*(v140 + 8))(v111, v116);
  v117 = v160;
  sub_1E5E1DEAC(v157, v160);
  v118 = swift_allocObject();
  sub_1E5E1FA80(v117, &v148[v118]);
  *&v163 = v116;
  *(&v163 + 1) = v114;
  swift_getOpaqueTypeConformance2();
  v119 = v138;
  v120 = v141;
  sub_1E6259D5C(sub_1E5FF0278, v118, v141);

  (*(v144 + 8))(v115, v120);
  (*(v154 + 8))(v153, v155);
  sub_1E622B4E0();
  v121 = v142;
  sub_1E5FEE4C8(v119);
  sub_1E5ECC4E0(v119);
  sub_1E5FEE4C8(v121);
  return sub_1E5ECC4E0(v121);
}

uint64_t sub_1E6229674(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DD0A8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6229734, 0, 0);
}

uint64_t sub_1E6229734()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E6013E58(v4);
  (*(v2 + 8))(v1, v3);
  v6 = sub_1E65D7A38();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E622983C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6229674(a1, v1 + v5);
}

uint64_t sub_1E6229918(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v26 = a2;
  v4 = type metadata accessor for AppComposer();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D30, &qword_1E65F8078);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = sub_1E65DCA88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DD2B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  (*(v11 + 16))(v14, v26, v10);
  sub_1E65DD2A8();
  sub_1E5E1DEAC(a1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v21 = swift_allocObject();
  sub_1E5E1FA80(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  type metadata accessor for AppFeature();
  sub_1E622B878(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E622B878(&qword_1ED076D38, MEMORY[0x1E699EF90]);
  sub_1E65E4DE8();
  v22 = v29;

  sub_1E65E4CC8();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1E622B8C0;
  *(v23 + 24) = v22;

  v24 = sub_1E65E4F08();

  (*(v30 + 8))(v9, v31);
  (*(v16 + 8))(v19, v15);
  return v24;
}

uint64_t sub_1E6229D34()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DCA88() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6229918((v0 + v2), v0 + v5, v6);
}

uint64_t sub_1E6229E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v26 = a3;
  v25 = sub_1E65DD0F8();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DD0A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = type metadata accessor for AppState();
  v17 = a1 + *(v16 + 276);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v19 = *(v24 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E65DAE08();
  sub_1E65DD068();
  v20 = a1 + *(v16 + 24);
  sub_1E637A69C();
  sub_1E65DCFE8();
  (*(v4 + 8))(v7, v25);
  v21 = *(v9 + 8);
  v21(v13, v8);
  sub_1E63969B4();
  sub_1E65DD058();
  return (v21)(v15, v8);
}

uint64_t sub_1E622A060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076038, &qword_1E65F4908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_1E619CA14(a2, a3, v10);
  sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908);
  sub_1E5FEE4C8(v10);
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_1E5FEE4C8(v12);
  return (v13)(v12, v5);
}

uint64_t sub_1E622A1F0()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E622A060(v0 + v2, v0 + v3, v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E622A298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v103 = a3;
  v107 = a2;
  v100 = a1;
  v97 = a5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v88 = *(v89 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v110 = v77 - v9;
  v10 = sub_1E65D76F8();
  v11 = *(v10 - 8);
  v108 = v10;
  v109 = v11;
  v86 = *(v11 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v106 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v112 = v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v111 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v113 = v77 - v19;
  v20 = type metadata accessor for AppComposer();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v77 - v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v96 = *(v95 - 8);
  v27 = *(v96 + 64);
  v28 = MEMORY[0x1EEE9AC00](v95);
  v91 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v92 = v77 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v93 = v77 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v94 = v77 - v34;
  sub_1E5E1DEAC(a1, v26);
  sub_1E5DF650C(a3, &v115);
  v83 = *a4;
  v84 = *(a4 + 24);
  v85 = *(a4 + 40);
  v35 = *(a4 + 72);
  v104 = *(a4 + 56);
  v105 = v35;
  v36 = *(v21 + 80);
  v37 = (v36 + 16) & ~v36;
  v101 = v37 + v22;
  v98 = v36 | 7;
  v38 = (v37 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = v38;
  v99 = (v38 + 47) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v90 = v39;
  sub_1E5E1FA80(v26, v39 + v37);
  sub_1E5DF599C(&v115, v39 + v38);
  v40 = (v39 + ((v38 + 47) & 0xFFFFFFFFFFFFFFF8));
  v41 = *(a4 + 48);
  v40[2] = *(a4 + 32);
  v40[3] = v41;
  v40[4] = *(a4 + 64);
  v42 = *(a4 + 16);
  *v40 = *a4;
  v40[1] = v42;
  v43 = sub_1E65E3E08();
  (*(*(v43 - 8) + 56))(v113, 1, 1, v43);
  swift_unknownObjectRetain();

  v44 = v112;
  sub_1E65D76E8();
  (*(v88 + 104))(v110, *MEMORY[0x1E699D720], v89);
  v45 = v100;
  v78 = v24;
  sub_1E5E1DEAC(v100, v24);
  v89 = swift_allocObject();
  v46 = v37;
  sub_1E5E1FA80(v24, v89 + v37);
  sub_1E5E1DEAC(v45, v24);
  v88 = swift_allocObject();
  sub_1E5E1FA80(v24, v88 + v37);
  sub_1E5E1DEAC(v45, v24);
  v87 = swift_allocObject();
  v79 = v37;
  sub_1E5E1FA80(v24, v87 + v37);
  sub_1E5E1DEAC(v45, v24);
  sub_1E5DF650C(v103, &v114);
  v47 = v109;
  v48 = *(v109 + 16);
  v81 = v109 + 16;
  v82 = v48;
  v49 = v106;
  v50 = v108;
  v48(v106, v44, v108);
  v51 = v99;
  v52 = (v99 + 87) & 0xFFFFFFFFFFFFFFF8;
  v80 = v52 + 8;
  v53 = (v52 + 8 + *(v47 + 80)) & ~*(v47 + 80);
  v54 = swift_allocObject();
  v55 = v78;
  sub_1E5E1FA80(v78, v54 + v46);
  sub_1E5DF599C(&v114, v54 + v102);
  v86 = v54;
  v56 = (v54 + v51);
  v57 = *(a4 + 48);
  v56[2] = *(a4 + 32);
  v56[3] = v57;
  v56[4] = *(a4 + 64);
  v58 = *(a4 + 16);
  *v56 = *a4;
  v56[1] = v58;
  v59 = v107;
  *(v54 + v52) = v107;
  (*(v47 + 32))(v54 + v53, v49, v50);
  v60 = v100;
  sub_1E5E1DEAC(v100, v55);
  sub_1E5DF650C(v103, &v114);
  v61 = swift_allocObject();
  v62 = v79;
  sub_1E5E1FA80(v55, v61 + v79);
  sub_1E5DF599C(&v114, v61 + v102);
  v63 = (v61 + v99);
  v103 = v61;
  v64 = *(a4 + 48);
  v63[2] = *(a4 + 32);
  v63[3] = v64;
  v63[4] = *(a4 + 64);
  v65 = *(a4 + 16);
  *v63 = *a4;
  v63[1] = v65;
  *(v61 + v52) = v59;
  sub_1E5E1DEAC(v60, v55);
  v102 = swift_allocObject();
  sub_1E5E1FA80(v55, v102 + v62);
  sub_1E622B6F4(v113, v111);
  v82(v49, v112, v50);
  v101 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v104 = type metadata accessor for ArtworkDescriptor();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v85 = type metadata accessor for ContextMenu(0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v82 = type metadata accessor for ItemContext();
  v81 = type metadata accessor for ItemMetrics();
  v80 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v78 = type metadata accessor for SectionMetrics();
  v77[8] = type metadata accessor for ViewDescriptor();
  v77[7] = sub_1E622B878(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v77[6] = sub_1E60731B0();
  v77[5] = sub_1E622B878(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v77[4] = sub_1E5FEB2FC();
  v77[3] = sub_1E60C08DC();
  v77[2] = sub_1E60C15C0();
  v77[1] = sub_1E622B878(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v68 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  *&v114 = v67;
  *(&v114 + 1) = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v114 = v66;
  *(&v114 + 1) = OpaqueTypeConformance2;
  v77[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E622B878(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E622B878(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E622B878(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E622B878(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E622B878(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E622B878(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E622B878(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v70 = v91;
  sub_1E65DC198();
  (*(v109 + 8))(v112, v108);
  sub_1E622B764(v113);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v71 = v92;
  v72 = v95;
  sub_1E5FEE4C8(v70);
  v73 = *(v96 + 8);
  v73(v70, v72);
  v74 = v93;
  sub_1E5FEE4C8(v71);
  v73(v71, v72);
  v75 = v94;
  sub_1E5FEE4C8(v74);
  v73(v74, v72);
  sub_1E5FEE4C8(v75);
  return (v73)(v75, v72);
}

uint64_t sub_1E622B2AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E622A298(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E622B360(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  sub_1E61E66C8(a1, a3, a4, v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v13 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v11, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E622B4E0()
{
  result = qword_1ED076D28;
  if (!qword_1ED076D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776A0, &qword_1E65F8030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077A90, &unk_1E65FA720);
    sub_1E5FED46C(&qword_1ED076D20, &unk_1ED077A90, &unk_1E65FA720);
    swift_getOpaqueTypeConformance2();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D28);
  }

  return result;
}

uint64_t sub_1E622B5DC(char *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E622B360(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E622B6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E622B764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E622B7E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E622B878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E622B974@<X0>(void (*a1)(char *)@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v20 = a1;
  v7 = sub_1E65D9908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  sub_1E622BFA8(v3, &v19 - v14);
  v16 = 1;
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  (*(v8 + 32))(v11, v15, v7);
  v20(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
LABEL_4:
    v17 = a2(0);
    return (*(*(v17 - 8) + 56))(a3, v16, 1, v17);
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t sub_1E622BBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned int *a3@<X4>, char *a4@<X8>)
{
  v45 = a3;
  v41 = a2;
  v44 = a1;
  v40 = sub_1E65D72D8();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65D8C68();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D8078();
  v42 = v14;
  v43 = v13;
  v15 = sub_1E65D80C8();
  v17 = v16;
  v46 = v15;
  v47 = v16;
  v19 = v18 & 1;
  v48 = v18 & 1;
  v49 = 6;
  sub_1E6018A94();
  sub_1E6018AE8();
  v20 = sub_1E65D7FE8();
  sub_1E5FEE4CC(v15, v17, v19);
  v21 = MEMORY[0x1E69CBA28];
  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x1E69CBAA0];
  }

  v22 = v39;
  (*(v9 + 104))(v12, *v21, v39);
  (*(v5 + 16))(v8, v41, v40);
  v23 = sub_1E65E5D58();
  v25 = v24;
  v26 = type metadata accessor for ItemMetrics();
  v27 = v26[7];
  v28 = sub_1E65D9908();
  (*(*(v28 - 8) + 16))(&a4[v27], v44, v28);
  v29 = v26[8];
  v30 = *MEMORY[0x1E69CBCD8];
  v31 = sub_1E65D8F28();
  (*(*(v31 - 8) + 104))(&a4[v29], v30, v31);
  v32 = v26[10];
  v33 = *v45;
  v34 = sub_1E65D9F88();
  (*(*(v34 - 8) + 104))(&a4[v32], v33, v34);
  v35 = v42;
  *a4 = v43;
  *(a4 + 1) = v35;
  result = (*(v9 + 32))(&a4[v26[5]], v12, v22);
  v37 = &a4[v26[6]];
  *v37 = v23;
  v37[1] = v25;
  return result;
}

uint64_t sub_1E622BF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E622BFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E622C058@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - v13;
  sub_1E65D81D8();
  if (v15)
  {

    v16 = sub_1E65D80C8();
    v18 = v17;
    v20 = v19;
    sub_1E60E5944(v16, v17, v19 & 1, v14);
    v21 = sub_1E5FEE4CC(v16, v18, v20 & 1);
    MEMORY[0x1EEE9AC00](v21);
    *(&v31 - 2) = v5;
    *(&v31 - 1) = a1;
    v22 = a5;
    v23 = a4;
  }

  else
  {
    v24 = sub_1E65D80C8();
    v26 = v25;
    v28 = v27;
    sub_1E60E5944(v24, v25, v27 & 1, v14);
    v29 = sub_1E5FEE4CC(v24, v26, v28 & 1);
    MEMORY[0x1EEE9AC00](v29);
    *(&v31 - 2) = v5;
    *(&v31 - 1) = a1;
    v22 = a5;
    v23 = a2;
  }

  sub_1E622B974(v23, a3, v22);
  return sub_1E622BF18(v14);
}

uint64_t sub_1E622C1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned int *a3@<X4>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v46 = a2;
  v47 = a1;
  v4 = sub_1E65D9F88();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D8F28();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v41 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E65D72D8();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65D8C68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65D8078();
  v42 = v20;
  v43 = v19;
  v21 = sub_1E65D80C8();
  v23 = v22;
  v53 = v21;
  v54 = v22;
  v25 = v24 & 1;
  v55 = v24 & 1;
  v56 = 6;
  sub_1E6018A94();
  sub_1E6018AE8();
  v26 = sub_1E65D7FE8();
  sub_1E5FEE4CC(v21, v23, v25);
  v27 = MEMORY[0x1E69CBA28];
  if ((v26 & 1) == 0)
  {
    v27 = MEMORY[0x1E69CBAA0];
  }

  (*(v15 + 104))(v18, *v27, v14);
  v28 = sub_1E65D8C58();
  v39[2] = v29;
  v39[3] = v28;
  (*(v15 + 8))(v18, v14);
  (*(v10 + 16))(v13, v46, v40);
  v46 = sub_1E65E5D58();
  v40 = v30;
  v47 = sub_1E65D98F8();
  v39[1] = v31;
  v33 = v44;
  v32 = v45;
  v34 = v41;
  (*(v44 + 104))(v41, *MEMORY[0x1E69CBCD8], v45);
  sub_1E65D8F18();
  (*(v33 + 8))(v34, v32);
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v35 = v50;
  v37 = v48;
  v36 = v49;
  (*(v49 + 104))(v48, *v51, v50);
  sub_1E65D9F78();
  (*(v36 + 8))(v37, v35);
  return sub_1E65E0328();
}

uint64_t Platform.transform()(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {

    return sub_1E65DBBB8();
  }

  if (a1 == 3)
  {

    return sub_1E65DBBB8();
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t Platform.transformed(with:sizeClass:)@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 > 1u)
  {
    if (a3 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    }

    *a4 = 4;
    a4[1] = 0x4044000000000000;
    goto LABEL_13;
  }

  if (!a3)
  {
    if (a1 > 6u)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    *a4 = v5;
    if (a2 == 1)
    {
      v7 = 0x4028000000000000;
    }

    else
    {
      v7 = 0x4024000000000000;
    }

    a4[1] = v7;
LABEL_13:
    v6 = MEMORY[0x1E699D840];
    goto LABEL_14;
  }

  *a4 = 5;
  v6 = MEMORY[0x1E699D848];
LABEL_14:
  v8 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

uint64_t sub_1E622C840@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v5 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  sub_1E5DFD1CC(v2, &v19 - v10, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v11;
  v13 = v11[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v11 + *(v15 + 48), v7);
  v16 = *(State + 32);
  if (!sub_1E636E05C())
  {
    sub_1E613C88C(v7);
LABEL_5:
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    goto LABEL_6;
  }

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3F0, &unk_1E65F7290) + 48);
  *a1 = v14;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v7[v16], a1 + v17, &unk_1ED077A70, &qword_1E65F2620);
  sub_1E613C88C(v7);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622CA0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v11 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - v16);
  sub_1E5DFD1CC(v2, &v36 - v16, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v17;
  v19 = v17[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v17 + *(v21 + 48), v13);
  v22 = *(State + 28);
  sub_1E5DFD1CC(&v13[v22], v9, &unk_1ED077CC0, &unk_1E65F2610);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 2)
  {
    goto LABEL_14;
  }

  if (v23)
  {
    if (v23 != 1)
    {
      v32 = &unk_1ED077CC0;
      v33 = &unk_1E65F2610;
      v34 = v9;
LABEL_13:
      sub_1E5DFE50C(v34, v32, v33);
      goto LABEL_14;
    }

    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v25 = sub_1E65D76A8();
    (*(*(v25 - 8) + 8))(&v9[v24], v25);
  }

  v26 = *(State + 24);
  sub_1E5DFD1CC(&v13[v26], v37, &unk_1ED077CD0, &unk_1E65F42F0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 > 2)
  {
LABEL_14:
    sub_1E613C88C(v13);
LABEL_15:
    *a1 = v20;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    goto LABEL_16;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v29 = sub_1E65D76A8();
      (*(*(v29 - 8) + 8))(v37 + v28, v29);
      goto LABEL_10;
    }

    v32 = &unk_1ED077CD0;
    v33 = &unk_1E65F42F0;
    v34 = v37;
    goto LABEL_13;
  }

LABEL_10:
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
  *a1 = v20;
  *(a1 + 8) = v19;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v13[v22], v30, &unk_1ED077CC0, &unk_1E65F2610);
  v31 = type metadata accessor for RemoveLibraryActionLoadState();
  sub_1E5DFD1CC(&v13[v26], v30 + *(v31 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613C88C(v13);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622CE04@<X0>(void *a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v5 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v18 - v10);
  sub_1E5DFD1CC(v2, &v18 - v10, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v11;
  v13 = v11[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v11 + *(v15 + 48), v7);
  if (!sub_1E636E32C())
  {
    sub_1E613C88C(v7);
LABEL_5:
    *a1 = v14;
    a1[1] = v13;
    goto LABEL_6;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
  *a1 = v14;
  a1[1] = v13;
  sub_1E5DFD1CC(v7, a1 + v16, &qword_1ED0737C8, &unk_1E6605140);
  sub_1E613C88C(v7);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622CFB8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  sub_1E5DFD1CC(v2, &v27 - v14, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v15;
  v17 = v15[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v15 + *(v19 + 48), v11);
  if (!sub_1E636E32C() || (v20 = *(State + 24), sub_1E5DFD1CC(&v11[v20], v7, &unk_1ED077CD0, &unk_1E65F42F0), v21 = swift_getEnumCaseMultiPayload(), v21 > 2))
  {
LABEL_9:
    sub_1E613C88C(v11);
LABEL_10:
    *a1 = v18;
    a1[1] = v17;
    goto LABEL_11;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v23 = sub_1E65D76A8();
      (*(*(v23 - 8) + 8))(&v7[v22], v23);
      goto LABEL_7;
    }

    sub_1E5DFE50C(v7, &unk_1ED077CD0, &unk_1E65F42F0);
    goto LABEL_9;
  }

LABEL_7:
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
  *a1 = v18;
  a1[1] = v17;
  sub_1E5DFD1CC(v11, v24, &qword_1ED0737C8, &unk_1E6605140);
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState();
  sub_1E5DFD1CC(&v11[v20], v24 + *(started + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613C88C(v11);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622D2A4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  sub_1E5DFD1CC(v2, &v27 - v14, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v15;
  v17 = v15[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v15 + *(v19 + 48), v11);
  v20 = *(State + 20);
  sub_1E5DFD1CC(&v11[v20], v7, &unk_1ED077CC0, &unk_1E65F2610);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 2)
  {
    goto LABEL_9;
  }

  if (v21)
  {
    if (v21 != 1)
    {
      sub_1E5DFE50C(v7, &unk_1ED077CC0, &unk_1E65F2610);
      goto LABEL_9;
    }

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v23 = sub_1E65D76A8();
    (*(*(v23 - 8) + 8))(&v7[v22], v23);
  }

  if (!sub_1E636E32C())
  {
LABEL_9:
    sub_1E613C88C(v11);
LABEL_10:
    *a1 = v18;
    a1[1] = v17;
    goto LABEL_11;
  }

  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
  *a1 = v18;
  a1[1] = v17;
  sub_1E5DFD1CC(v11, v24, &qword_1ED0737C8, &unk_1E6605140);
  v25 = type metadata accessor for StackButtonLoadState();
  sub_1E5DFD1CC(&v11[v20], v24 + *(v25 + 20), &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E613C88C(v11);
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622D590@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v11 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - v16);
  sub_1E5DFD1CC(v2, &v36 - v16, &qword_1ED073648, &qword_1E6607560);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v17;
  v19 = v17[1];
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073880, &qword_1E65EDC20);
  sub_1E622D988(v17 + *(v21 + 48), v13);
  v22 = *(State + 28);
  sub_1E5DFD1CC(&v13[v22], v9, &unk_1ED077CC0, &unk_1E65F2610);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 2)
  {
    goto LABEL_14;
  }

  if (v23)
  {
    if (v23 != 1)
    {
      v32 = &unk_1ED077CC0;
      v33 = &unk_1E65F2610;
      v34 = v9;
LABEL_13:
      sub_1E5DFE50C(v34, v32, v33);
      goto LABEL_14;
    }

    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v25 = sub_1E65D76A8();
    (*(*(v25 - 8) + 8))(&v9[v24], v25);
  }

  v26 = *(State + 24);
  sub_1E5DFD1CC(&v13[v26], v37, &unk_1ED077CD0, &unk_1E65F42F0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 > 2)
  {
LABEL_14:
    sub_1E613C88C(v13);
LABEL_15:
    *a1 = v20;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    goto LABEL_16;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v29 = sub_1E65D76A8();
      (*(*(v29 - 8) + 8))(v37 + v28, v29);
      goto LABEL_10;
    }

    v32 = &unk_1ED077CD0;
    v33 = &unk_1E65F42F0;
    v34 = v37;
    goto LABEL_13;
  }

LABEL_10:
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320) + 48);
  *a1 = v20;
  *(a1 + 8) = v19;
  *(a1 + 16) = 0;
  sub_1E5DFD1CC(&v13[v22], v30, &unk_1ED077CC0, &unk_1E65F2610);
  v31 = type metadata accessor for DynamicLibraryActionLoadState();
  sub_1E5DFD1CC(&v13[v26], v30 + *(v31 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613C88C(v13);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E622D988(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_1E622D9EC()
{
  v0 = sub_1E65DEBD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = *(type metadata accessor for AppState() + 300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E65E4C98();
  sub_1E5E26EC4(v11, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E622DC30(v9);
        goto LABEL_8;
      }

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
      v15 = *v9;
      v16 = sub_1E65D76A8();
      (*(*(v16 - 8) + 8))(&v9[v14], v16);
    }

    else
    {
      v15 = *v9;
    }

    v17 = *(v15 + 16);
  }

LABEL_8:
  (*(v1 + 104))(v4, *MEMORY[0x1E699CD10], v0);
  return sub_1E65DEBA8();
}

uint64_t sub_1E622DC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Blackbeard::AudioLanguageEngagementSheetAcknowledgment::State_optional __swiftcall AudioLanguageEngagementSheetAcknowledgment.State.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1E622DCC8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1E622DDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E622DE64(uint64_t a1)
{
  v2 = sub_1E622E028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E622DEA0(uint64_t a1)
{
  v2 = sub_1E622E028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioLanguageEngagementSheetAcknowledgment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D40, &qword_1E65F8080);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E622E028();
  sub_1E65E6DA8();
  v12 = v8;
  sub_1E622E07C();
  sub_1E65E6B78();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E622E028()
{
  result = qword_1ED076D48;
  if (!qword_1ED076D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D48);
  }

  return result;
}

unint64_t sub_1E622E07C()
{
  result = qword_1ED076D50;
  if (!qword_1ED076D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D50);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetAcknowledgment.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076D58, &qword_1E65F8088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E622E028();
  sub_1E65E6D98();
  if (!v2)
  {
    sub_1E622E23C();
    sub_1E65E6AD8();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E622E23C()
{
  result = qword_1ED076D60;
  if (!qword_1ED076D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D60);
  }

  return result;
}

unint64_t sub_1E622E2DC()
{
  result = qword_1ED076D68;
  if (!qword_1ED076D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076D70, &qword_1E65F80F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D68);
  }

  return result;
}

unint64_t sub_1E622E344()
{
  result = qword_1ED076D78;
  if (!qword_1ED076D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D78);
  }

  return result;
}

unint64_t sub_1E622E3CC()
{
  result = qword_1ED076D80;
  if (!qword_1ED076D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D80);
  }

  return result;
}

unint64_t sub_1E622E424()
{
  result = qword_1ED076D88;
  if (!qword_1ED076D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D88);
  }

  return result;
}

unint64_t sub_1E622E47C()
{
  result = qword_1ED076D90;
  if (!qword_1ED076D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D90);
  }

  return result;
}

unint64_t sub_1E622E4D0()
{
  result = qword_1ED076D98;
  if (!qword_1ED076D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076D98);
  }

  return result;
}

uint64_t sub_1E622E524(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1E5DF650C(a1, v19);
  v9 = *a2;
  v10 = a2[3];
  v11 = a2[5];
  v12 = a2[7];
  v13 = a2[9];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1E5DF599C(v19, v14 + 32);
  v15 = *a2;
  *(v14 + 88) = *(a2 + 1);
  v16 = *(a2 + 3);
  *(v14 + 104) = *(a2 + 2);
  *(v14 + 120) = v16;
  *(v14 + 136) = *(a2 + 4);
  *(v14 + 72) = v15;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v7, &unk_1E65F83B8, v14);
}

uint64_t sub_1E622E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for RouteDestination();
  v5[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E622E7EC, 0, 0);
}

uint64_t sub_1E622E7EC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v24 = v3;
  v25 = v1;
  v5 = *(v0 + 64);
  v23 = v5;
  v6 = *(v0 + 48);
  v26 = v6[3];
  v27 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v26);
  v7 = sub_1E65D76F8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_1E65E2CF8();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = sub_1E65E1FC8();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_1E601100C(MEMORY[0x1E69E7CC0]);
  v11 = *(v1 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v13 = (v2 + v12[12]);
  v14 = v12[16];
  v15 = v12[20];
  v16 = v12[24];
  v17 = v12[28];
  v18 = v2 + v12[32];
  sub_1E5DFD1CC(v4, v2, &unk_1ED077760, &unk_1E66011D0);
  *v13 = 0;
  v13[1] = 0;
  sub_1E5DFD1CC(v24, v2 + v14, &qword_1ED072B60, &unk_1E65FA490);
  *(v2 + v15) = v10;
  sub_1E5DFD1CC(v23, v2 + v16, &unk_1ED077750, &unk_1E66011C0);
  *(v2 + v17) = 0;
  *v18 = 0;
  *(v18 + 8) = 1;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5DFE50C(v23, &unk_1ED077750, &unk_1E66011C0);
  sub_1E5DFE50C(v24, &qword_1ED072B60, &unk_1E65FA490);
  sub_1E5DFE50C(v4, &unk_1ED077760, &unk_1E66011D0);
  *(v2 + *(v25 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 16);
  v19 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v19;
  sub_1E600F5B0((v0 + 25));
  v20 = swift_task_alloc();
  *(v0 + 104) = v20;
  *v20 = v0;
  v20[1] = sub_1E622EB20;
  v21 = *(v0 + 96);

  return RoutingContext.presentDestination(_:style:priority:)(v21, (v0 + 32), (v0 + 25), v26, v27);
}

uint64_t sub_1E622EB20()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {
    v4 = *(v3 + 96);
    sub_1E5F94E00(*(v3 + 32), *(v3 + 40));
    sub_1E60111F8(v4);

    return MEMORY[0x1EEE6DFA0](sub_1E622EE98, 0, 0);
  }

  else
  {
    v5 = *(v3 + 96);
    v6 = *(v3 + 56);
    sub_1E5F94E00(*(v3 + 32), *(v3 + 40));
    sub_1E60111F8(v5);
    v7 = *(v6 + 40);
    v11 = (*(v6 + 32) + **(v6 + 32));
    v8 = *(*(v6 + 32) + 4);
    v9 = swift_task_alloc();
    *(v3 + 120) = v9;
    *v9 = v3;
    v9[1] = sub_1E622ED24;

    return v11();
  }
}

uint64_t sub_1E622ED24()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v9 = *v0;

  v3 = v1[12];
  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[8];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1E622EE98()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E622EF24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E622E6B0(a1, v4, v5, v1 + 32, v1 + 72);
}

uint64_t sub_1E622EFD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1E601C17C(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v7 = v26;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_1E601C17C((v14 > 1), v15 + 1, 1);
      v7 = v26;
      v13 = v24;
      result = v25;
    }

    *(v27 + 16) = v15 + 1;
    v16 = v27 + 24 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1E60C349C(result, v13, 0);
          v7 = v26;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1E60C349C(result, v13, 0);
      v7 = v26;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
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
  return result;
}

uint64_t sub_1E622F208(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), char a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v30 = a2;
  v33 = MEMORY[0x1E69E7CC0];
  v31 = *(a1 + 16);
  a2(0, v4, 0);
  v5 = v33;
  v7 = a1 + 56;
  v8 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v10 = v31;
  v11 = 0;
  v12 = a3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v14 = result >> 6;
    v15 = 1 << result;
    if ((*(v7 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(*(a1 + 48) + result);
    v17 = *(a1 + 36);
    v19 = *(v33 + 16);
    v18 = *(v33 + 24);
    if (v19 >= v18 >> 1)
    {
      v28 = *(a1 + 36);
      v29 = result;
      v30(v18 > 1, v19 + 1, 1);
      v10 = v31;
      v12 = a3;
      v17 = v28;
      result = v29;
    }

    *(v33 + 16) = v19 + 1;
    v20 = v33 + 24 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = 0;
    *(v20 + 48) = v12;
    v13 = 1 << *(a1 + 32);
    if (result >= v13)
    {
      goto LABEL_22;
    }

    v21 = *(v7 + 8 * v14);
    if ((v21 & v15) == 0)
    {
      goto LABEL_23;
    }

    if (v17 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (result & 0x3F));
    if (v22)
    {
      v13 = __clz(__rbit64(v22)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v14 << 6;
      v24 = v14 + 1;
      v25 = (a1 + 64 + 8 * v14);
      while (v24 < (v13 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_1E60C349C(result, v17, 0);
          v10 = v31;
          v12 = a3;
          v13 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      sub_1E60C349C(result, v17, 0);
      v10 = v31;
      v12 = a3;
    }

LABEL_4:
    ++v11;
    result = v13;
    if (v11 == v10)
    {
      return v5;
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
  return result;
}

uint64_t sub_1E622F45C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 232) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075998, &qword_1E65F25C0);
  *(v3 + 104) = v7;
  v8 = *(v7 - 8);
  *(v3 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF0, &qword_1E65EECD8);
  *(v3 + 128) = v10;
  v11 = *(v10 - 8);
  *(v3 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074130, &qword_1E65EFAA8);
  *(v3 + 152) = v13;
  v14 = *(v13 - 8);
  *(v3 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E622F664, 0, 0);
}

uint64_t sub_1E622F664()
{
  v1 = *(v0 + 232);
  if (v1 <= 4)
  {
    if (v1 >= 2 && v1 - 3 >= 2)
    {
      v16 = *(v0 + 72);
      v17 = v16 + *(type metadata accessor for AppEnvironment() + 44);
      v18 = BookmarkService.makePlaylistUpdatedStream.getter();
      *(v0 + 216) = v19;
      v33 = (v18 + *v18);
      v20 = v18[1];
      v21 = swift_task_alloc();
      *(v0 + 224) = v21;
      *v21 = v0;
      v21[1] = sub_1E622FF08;
      v8 = *(v0 + 120);
    }

    else
    {
      v2 = *(v0 + 72);
      v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
      v4 = BookmarkService.makeBookmarkUpdatedStream.getter();
      *(v0 + 176) = v5;
      v33 = (v4 + *v4);
      v6 = v4[1];
      v7 = swift_task_alloc();
      *(v0 + 184) = v7;
      *v7 = v0;
      v7[1] = sub_1E622FA50;
      v8 = *(v0 + 168);
    }

    goto LABEL_11;
  }

  if (v1 == 5 || v1 != 6)
  {
    v10 = *(v0 + 72);
    v11 = v10 + *(type metadata accessor for AppEnvironment() + 36);
    v12 = AssetService.makeAssetBundleUpdatedStream.getter();
    *(v0 + 192) = v13;
    v33 = (v12 + *v12);
    v14 = v12[1];
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_1E622FCA0;
    v8 = *(v0 + 144);
LABEL_11:

    return v33(v8);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v26 = *(v0 + 72);
  v25 = *(v0 + 80);
  v27 = *(v0 + 64);
  *(swift_task_alloc() + 16) = v26;
  (*(v24 + 104))(v23, *MEMORY[0x1E69E8650], v25);
  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v27[4] = sub_1E6233764(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1E65E6128();

  v28 = *(v0 + 168);
  v29 = *(v0 + 144);
  v30 = *(v0 + 120);
  v31 = *(v0 + 96);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1E622FA50()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E622FB68, 0, 0);
}

uint64_t sub_1E622FB68()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[8];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759C8, &qword_1E65F25F8);
  v5 = sub_1E6233764(&qword_1ED0759D0, &qword_1ED074130, &qword_1E65EFAA8);
  v0[6] = v3;
  v0[7] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E622FCA0()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1E6230158;
  }

  else
  {
    v4 = sub_1E622FDD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E622FDD0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[8];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB0, &qword_1E65F83D0);
  v5 = sub_1E6233764(&qword_1EE2D47C8, &qword_1ED073CF0, &qword_1E65EECD8);
  v0[4] = v3;
  v0[5] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E622FF08()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6230020, 0, 0);
}

uint64_t sub_1E6230020()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[8];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA8, &qword_1E65F83C8);
  v5 = sub_1E6233764(&qword_1ED0759B0, &qword_1ED075998, &qword_1E65F25C0);
  v0[2] = v3;
  v0[3] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6230158()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_1E6230210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v24 - v13;
  sub_1E5DF4C84(a1, v24 - v13);
  v15 = sub_1E65E60A8();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1E5DF4CF4(v14);
    if (*(a3 + 16))
    {
LABEL_3:
      v17 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1E65E5FC8();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E65E6098();
    (*(v16 + 8))(v14, v15);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v21;
  swift_task_create();
}

uint64_t sub_1E62303F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1E5DF4C84(a1, v20 - v9);
  v11 = sub_1E65E60A8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E5DF4CF4(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1E65E5FC8();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E65E6098();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1E62305C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 312) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_1E65D8BD8();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = sub_1E65D86C8();
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v10 = sub_1E65D8438();
  *(v3 + 88) = v10;
  v11 = *(v10 - 8);
  *(v3 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6230750, 0, 0);
}

uint64_t sub_1E6230750()
{
  v1 = *(v0 + 312);
  if (v1 <= 3)
  {
    if (*(v0 + 312) <= 1u)
    {
      if (*(v0 + 312))
      {
        v40 = *(v0 + 32);
        v41 = v40 + *(type metadata accessor for AppEnvironment() + 44);
        v42 = BookmarkService.queryBookmarkCountWithFilter.getter();
        *(v0 + 144) = v43;
        if (qword_1ED071890 != -1)
        {
          swift_once();
        }

        v44 = *(v0 + 104);
        v45 = *(v0 + 24);

        v47 = sub_1E622F208(v46, sub_1E601C638, 1);

        v48 = sub_1E622F208(v45, sub_1E601C638, 0);
        sub_1E5FA9FA8(v48);
        sub_1E600BD90(v47);

        sub_1E65D8428();
        v66 = (v42 + *v42);
        v49 = v42[1];
        v50 = swift_task_alloc();
        *(v0 + 152) = v50;
        *v50 = v0;
        v50[1] = sub_1E6231258;
        v51 = *(v0 + 104);
      }

      else
      {
        v2 = *(v0 + 32);
        v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
        v4 = BookmarkService.queryBookmarkCountWithFilter.getter();
        *(v0 + 120) = v5;
        v6 = &unk_1F5FA7FD0;
        if (*(v2 + 8) > 1u)
        {
          if (*(v2 + 8) == 2)
          {
            return sub_1E65E69D8();
          }
        }

        else if (!*(v2 + 8))
        {
          v6 = &unk_1F5FA7FA8;
        }

        v57 = *(v0 + 112);
        v58 = *(v0 + 24);
        v59 = sub_1E5F9B388(v6);
        v60 = sub_1E622F208(v59, sub_1E601C638, 1);

        v61 = sub_1E622F208(v58, sub_1E601C638, 0);
        sub_1E5FA9FA8(v61);
        sub_1E600BD90(v60);

        sub_1E65D8428();
        v66 = (v4 + *v4);
        v62 = v4[1];
        v63 = swift_task_alloc();
        *(v0 + 128) = v63;
        *v63 = v0;
        v63[1] = sub_1E6231060;
        v51 = *(v0 + 112);
      }

      v24 = v51;
      goto LABEL_31;
    }

    if (v1 == 2)
    {
      v15 = *(v0 + 80);
      v17 = *(v0 + 24);
      v16 = *(v0 + 32);
      v18 = v16 + *(type metadata accessor for AppEnvironment() + 44);
      v19 = BookmarkService.queryPlaylistCountWithFilter.getter();
      *(v0 + 168) = v20;
      v21 = sub_1E622EFD8(v17);
      sub_1E600AAA0(v21);

      sub_1E65D86B8();
      v66 = (v19 + *v19);
      v22 = v19[1];
      v23 = swift_task_alloc();
      *(v0 + 176) = v23;
      *v23 = v0;
      v23[1] = sub_1E6231450;
      v24 = *(v0 + 80);
LABEL_31:
      v39 = v66;

      return v39(v24);
    }

    v52 = *(v0 + 32);
    v53 = v52 + *(type metadata accessor for AppEnvironment() + 44);
    v54 = BookmarkService.queryBookmarkCountByReferenceTypes.getter();
    *(v0 + 192) = v55;
    v11 = sub_1E5F9B84C(&unk_1F5FA8608);
    *(v0 + 200) = v11;
    v65 = (v54 + *v54);
    v56 = v54[1];
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v14 = sub_1E6231648;
LABEL_24:
    v13[1] = v14;
    v24 = v11;
    v39 = v65;

    return v39(v24);
  }

  if (*(v0 + 312) <= 5u)
  {
    if (v1 == 4)
    {
      v7 = *(v0 + 32);
      v8 = v7 + *(type metadata accessor for AppEnvironment() + 44);
      v9 = BookmarkService.queryBookmarkCountByReferenceTypes.getter();
      *(v0 + 224) = v10;
      v11 = sub_1E5F9B84C(&unk_1F5FA8630);
      *(v0 + 232) = v11;
      v65 = (v9 + *v9);
      v12 = v9[1];
      v13 = swift_task_alloc();
      *(v0 + 240) = v13;
      *v13 = v0;
      v14 = sub_1E62317CC;
      goto LABEL_24;
    }

LABEL_17:
    v31 = *(v0 + 56);
    v33 = *(v0 + 24);
    v32 = *(v0 + 32);
    v34 = v32 + *(type metadata accessor for AppEnvironment() + 36);
    v35 = AssetService.filterAssetBundlesOnCurrentDevice.getter();
    *(v0 + 256) = v36;
    v68 = sub_1E622F208(v33, sub_1E601C600, 0);
    sub_1E5FA9F88(&unk_1F5FA8658);
    sub_1E600BE38(v68);

    sub_1E65D8BC8();
    v67 = (v35 + *v35);
    v37 = v35[1];
    v38 = swift_task_alloc();
    *(v0 + 264) = v38;
    *v38 = v0;
    v38[1] = sub_1E6231950;
    v24 = *(v0 + 56);
    v39 = v67;

    return v39(v24);
  }

  if (v1 != 6)
  {
    goto LABEL_17;
  }

  v25 = swift_task_alloc();
  *(v0 + 288) = v25;
  v25[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v26 = *(MEMORY[0x1E69E88A0] + 4);
  v27 = swift_task_alloc();
  *(v0 + 296) = v27;
  *v27 = v0;
  v27[1] = sub_1E6231B9C;
  v28 = MEMORY[0x1E69E6530];
  v29 = MEMORY[0x1E69E6530];
  v30 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DD58](v0 + 16, v28, v29, 0, 0, &unk_1E65F8440, v25, v30);
}

uint64_t sub_1E6231060(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 96);
  v7 = *v2;
  v4[17] = v1;

  v8 = v4[15];
  (*(v6 + 8))(v4[14], v4[11]);

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231D4C, 0, 0);
  }

  else
  {
    v10 = v4[13];
    v9 = v4[14];
    v11 = v4[10];
    v12 = v4[7];

    v13 = *(v7 + 8);

    return v13(a1);
  }
}

uint64_t sub_1E6231258(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *(*v2 + 96);
  v7 = *v2;
  v4[20] = v1;

  v8 = v4[18];
  (*(v6 + 8))(v4[13], v4[11]);

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231DD8, 0, 0);
  }

  else
  {
    v10 = v4[13];
    v9 = v4[14];
    v11 = v4[10];
    v12 = v4[7];

    v13 = *(v7 + 8);

    return v13(a1);
  }
}

uint64_t sub_1E6231450(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 72);
  v7 = *v2;
  v4[23] = v1;

  v8 = v4[21];
  (*(v6 + 8))(v4[10], v4[8]);

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231E64, 0, 0);
  }

  else
  {
    v10 = v4[13];
    v9 = v4[14];
    v11 = v4[10];
    v12 = v4[7];

    v13 = *(v7 + 8);

    return v13(a1);
  }
}

uint64_t sub_1E6231648(uint64_t a1)
{
  v4 = *(*v2 + 208);
  v5 = *v2;
  v5[27] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231EF0, 0, 0);
  }

  else
  {
    v6 = v5[24];
    v7 = v5[25];

    v9 = v5[13];
    v8 = v5[14];
    v10 = v5[10];
    v11 = v5[7];

    v12 = v5[1];

    return v12(a1);
  }
}

uint64_t sub_1E62317CC(uint64_t a1)
{
  v4 = *(*v2 + 240);
  v5 = *v2;
  v5[31] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6231F8C, 0, 0);
  }

  else
  {
    v6 = v5[28];
    v7 = v5[29];

    v9 = v5[13];
    v8 = v5[14];
    v10 = v5[10];
    v11 = v5[7];

    v12 = v5[1];

    return v12(a1);
  }
}

uint64_t sub_1E6231950(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *(*v2 + 48);
  v7 = *v2;
  v4[34] = v1;

  v8 = (v6 + 8);
  v9 = v4[32];
  v10 = v4[7];
  v11 = v4[5];
  if (v1)
  {
    (*v8)(v10, v11);

    v12 = sub_1E62320BC;
  }

  else
  {
    v4[35] = a1;
    (*v8)(v10, v11);

    v12 = sub_1E6231B00;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1E6231B00()
{
  v1 = *(v0[35] + 16);

  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_1E6231B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_1E6232028;
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = sub_1E6231CB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6231CB8()
{
  v1 = v0[2];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_1E6231D4C()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6231DD8()
{
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6231E64()
{
  v1 = v0[23];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6231EF0()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[27];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6231F8C()
{
  v2 = v0[28];
  v1 = v0[29];

  v3 = v0[31];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6232028()
{
  v1 = v0[36];

  v2 = v0[38];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E62320BC()
{
  v1 = v0[34];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6232148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DD8, &qword_1E65F8448);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = *(type metadata accessor for AppEnvironment() - 8);
  v4[12] = v8;
  v4[13] = *(v8 + 64);
  v4[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62322B0, 0, 0);
}

uint64_t sub_1E62322B0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v22 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v20 = v6;
  v21 = v0[6];
  v7 = sub_1E65E60A8();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  sub_1E60190C0(v6, v2);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1E6019124(v2, v11 + v9);
  *(v11 + v10) = v5;

  sub_1E62303F4(v1, &unk_1E65F8458, v11);
  sub_1E5DF4CF4(v1);
  v8(v1, 1, 1, v7);
  sub_1E60190C0(v20, v2);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_1E6019124(v2, v12 + v9);
  sub_1E62303F4(v1, &unk_1E65F8468, v12);
  sub_1E5DF4CF4(v1);
  v8(v1, 1, 1, v7);
  sub_1E60190C0(v20, v2);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1E6019124(v2, v13 + v9);
  *(v13 + v10) = v5;

  sub_1E62303F4(v1, &unk_1E65F8478, v13);
  sub_1E5DF4CF4(v1);
  v14 = *v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6168();
  v0[16] = 0;
  v15 = *(MEMORY[0x1E69E8710] + 4);
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_1E62325DC;
  v17 = v0[11];
  v18 = v0[9];

  return MEMORY[0x1EEE6DAD8](v0 + 2, 0, 0, v18, v0 + 4);
}

uint64_t sub_1E62325DC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1E60B46A0;
  }

  else
  {
    v3 = sub_1E62326EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E62326EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 128);
  if (*(v5 + 24))
  {
    v8 = *(v5 + 112);
    v9 = *(v5 + 120);
    v10 = *(v5 + 40);
    (*(*(v5 + 80) + 8))(*(v5 + 88), *(v5 + 72));
    *v10 = v7;

    v11 = *(v5 + 8);

    return v11();
  }

  else
  {
    v13 = __OFADD__(v7, v6);
    v14 = v7 + v6;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 128) = v14;
      v15 = *(MEMORY[0x1E69E8710] + 4);
      v16 = swift_task_alloc();
      *(v5 + 136) = v16;
      *v16 = v5;
      v16[1] = sub_1E62325DC;
      v17 = *(v5 + 88);
      a4 = *(v5 + 72);
      a5 = v5 + 32;
      a1 = v5 + 16;
      a2 = 0;
      a3 = 0;
    }

    return MEMORY[0x1EEE6DAD8](a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1E6232848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65D8438();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E623290C, 0, 0);
}

uint64_t sub_1E623290C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 44);
  v3 = BookmarkService.queryBookmarkCountWithFilter.getter();
  v0[8] = v4;
  v5 = &unk_1F5FA7FD0;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      return sub_1E65E69D8();
    }
  }

  else if (!*(v1 + 8))
  {
    v5 = &unk_1F5FA7FA8;
  }

  v7 = v0[7];
  v8 = v0[4];
  v9 = sub_1E5F9B388(v5);
  v10 = sub_1E622F208(v9, sub_1E601C638, 1);

  v11 = sub_1E622F208(v8, sub_1E601C638, 0);
  sub_1E5FA9FA8(v11);
  sub_1E600BD90(v10);

  sub_1E65D8428();
  v15 = (v3 + *v3);
  v12 = v3[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1E6232B60;
  v14 = v0[7];

  return v15(v14);
}

uint64_t sub_1E6232B60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  v10 = v4[5];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E6235FE4;
  }

  else
  {
    v4[11] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E6235FE0;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E6232D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E6232D2C, 0, 0);
}

uint64_t sub_1E6232D2C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 44);
  v3 = BookmarkService.queryBookmarkCountByReferenceTypes.getter();
  v0[4] = v4;
  v5 = sub_1E5F9B84C(&unk_1F5FA8758);
  v0[5] = v5;
  v9 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1E6232E58;

  return v9(v5);
}

uint64_t sub_1E6232E58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_1E6232FB4;
  }

  else
  {
    v8 = v4[4];
    v9 = v4[5];

    v4[8] = a1;
    v7 = sub_1E6232F90;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6232FB4()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_1E6233020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65D86C8();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62330E4, 0, 0);
}

uint64_t sub_1E62330E4()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v2 + *(type metadata accessor for AppEnvironment() + 44);
  v5 = BookmarkService.queryPlaylistCountWithFilter.getter();
  v0[8] = v6;
  v7 = sub_1E622EFD8(v3);
  sub_1E600AAA0(v7);

  sub_1E65D86B8();
  v12 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1E623323C;
  v10 = v0[7];

  return v12(v10);
}

uint64_t sub_1E623323C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  v10 = v4[5];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E6233458;
  }

  else
  {
    v4[11] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E62333E8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E62333E8()
{
  v1 = *(v0 + 56);
  **(v0 + 16) = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6233458()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E62334BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AppEnvironment();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v22 - v15;
  v17 = sub_1E65E60A8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1E60190C0(a2, v12);
  (*(v5 + 16))(v8, a1, v4);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_1E6019124(v12, v20 + v18);
  (*(v5 + 32))(v20 + v19, v8, v4);
  sub_1E64B80F8(0, 0, v16, &unk_1E65F83E8, v20);
  return sub_1E65E60B8();
}

uint64_t sub_1E6233764(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E62337B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E62337DC, 0, 0);
}

uint64_t sub_1E62337DC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E88A0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1E62338C8;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v4, v5, v6, 0, 0, &unk_1E65F83F8, v1, v7);
}

void sub_1E62338C8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_1E62339FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppEnvironment() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E62337B8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6233B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = *(type metadata accessor for AppEnvironment() - 8);
  v4[9] = v7;
  v4[10] = *(v7 + 64);
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6233CC8, 0, 0);
}

uint64_t sub_1E6233CC8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v17 = v0[9];
  v4 = v0[8];
  v23 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v19 = v8;
  v20 = v7;
  v24 = v0[2];
  v21 = sub_1E65E60A8();
  v22 = *(*(v21 - 8) + 56);
  v22(v1, 1, 1, v21);
  sub_1E60190C0(v7, v2);
  v18 = *(v5 + 16);
  v18(v4, v8, v6);
  v9 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v10 = (v3 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1E6019124(v2, v11 + v9);
  v16 = *(v5 + 32);
  v16(v11 + v10, v4, v6);
  sub_1E62303F4(v1, &unk_1E65F8408, v11);
  sub_1E5DF4CF4(v1);
  v22(v1, 1, 1, v21);
  sub_1E60190C0(v20, v2);
  v12 = v6;
  v18(v4, v19, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1E6019124(v2, v13 + v9);
  v16(v13 + v10, v4, v12);
  sub_1E62303F4(v1, &unk_1E65F8418, v13);
  sub_1E5DF4CF4(v1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E6233F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DD0, &qword_1E65F8428);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074130, &qword_1E65EFAA8);
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759C8, &qword_1E65F25F8);
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6234194, 0, 0);
}

uint64_t sub_1E6234194()
{
  v1 = v0[4];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 44);
  v3 = BookmarkService.makeBookmarkUpdatedStream.getter();
  v0[19] = v4;
  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1E62342A0;
  v7 = v0[14];

  return v9(v7);
}

uint64_t sub_1E62342A0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E62343B8, 0, 0);
}

uint64_t sub_1E62343B8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = sub_1E6233764(&qword_1ED0759D0, &qword_1ED074130, &qword_1E65EFAA8);
  sub_1E65E6188();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  v0[2] = v7;
  v0[3] = v9;
  v0[21] = swift_getOpaqueTypeConformance2();
  sub_1E65E6198();
  v10 = v0[21];
  v11 = v0[15];
  v12 = v0[9];
  swift_getAssociatedConformanceWitness();
  v13 = *(MEMORY[0x1E69E85B0] + 4);
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_1E623455C;
  v15 = v0[11];
  v16 = v0[9];

  return MEMORY[0x1EEE6D8D0](v0 + 23, 0, 0);
}

uint64_t sub_1E623455C()
{
  v2 = *(*v1 + 176);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E623466C, 0, 0);
  }

  return result;
}

uint64_t sub_1E623466C()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = *(v0 + 64);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v4 + 8))(v2, v3);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_1E65E60C8();
    (*(v10 + 8))(v9, v12);
    v13 = *(v0 + 168);
    v14 = *(v0 + 120);
    v15 = *(v0 + 72);
    swift_getAssociatedConformanceWitness();
    v16 = *(MEMORY[0x1E69E85B0] + 4);
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_1E623455C;
    v18 = *(v0 + 88);
    v19 = *(v0 + 72);

    return MEMORY[0x1EEE6D8D0](v0 + 184, 0, 0);
  }
}

uint64_t sub_1E6234830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC8, &qword_1E65F8420);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075998, &qword_1E65F25C0);
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA8, &qword_1E65F83C8);
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6234A40, 0, 0);
}

uint64_t sub_1E6234A40()
{
  v1 = v0[4];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 44);
  v3 = BookmarkService.makePlaylistUpdatedStream.getter();
  v0[19] = v4;
  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1E6234B4C;
  v7 = v0[14];

  return v9(v7);
}

uint64_t sub_1E6234B4C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6234C64, 0, 0);
}

uint64_t sub_1E6234C64()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = sub_1E6233764(&qword_1ED0759B0, &qword_1ED075998, &qword_1E65F25C0);
  sub_1E65E6188();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  v0[2] = v7;
  v0[3] = v9;
  v0[21] = swift_getOpaqueTypeConformance2();
  sub_1E65E6198();
  v10 = v0[21];
  v11 = v0[15];
  v12 = v0[9];
  swift_getAssociatedConformanceWitness();
  v13 = *(MEMORY[0x1E69E85B0] + 4);
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_1E6234E08;
  v15 = v0[11];
  v16 = v0[9];

  return MEMORY[0x1EEE6D8D0](v0 + 23, 0, 0);
}

uint64_t sub_1E6234E08()
{
  v2 = *(*v1 + 176);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6234F18, 0, 0);
  }

  return result;
}

uint64_t sub_1E6234F18()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = *(v0 + 64);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v4 + 8))(v2, v3);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_1E65E60C8();
    (*(v10 + 8))(v9, v12);
    v13 = *(v0 + 168);
    v14 = *(v0 + 120);
    v15 = *(v0 + 72);
    swift_getAssociatedConformanceWitness();
    v16 = *(MEMORY[0x1E69E85B0] + 4);
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_1E6234E08;
    v18 = *(v0 + 88);
    v19 = *(v0 + 72);

    return MEMORY[0x1EEE6D8D0](v0 + 184, 0, 0);
  }
}

uint64_t sub_1E6235100(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6233B58(a1, a2, v7, v6);
}

uint64_t sub_1E62351B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppEnvironment() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6233F84(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6235310(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppEnvironment() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6234830(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E623546C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6232148(a1, a2, v7, v6);
}

uint64_t sub_1E6235520(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6232848(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6235640(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6232D0C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_35Tm()
{
  v1 = (type metadata accessor for AppEnvironment() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = v1[8];
  v8 = type metadata accessor for AccountService();
  (*(v8[-1].Description + 1))(&v5[v7], v8);
  v9 = v1[9];
  v10 = type metadata accessor for AppStateService();
  (*(v10[-1].Description + 1))(&v5[v9], v10);
  v11 = v1[10];
  v12 = type metadata accessor for ArchivedSessionService();
  (*(v12[-1].Description + 1))(&v5[v11], v12);
  v13 = v1[11];
  v14 = type metadata accessor for AssetService();
  (*(v14[-1].Description + 1))(&v5[v13], v14);
  v15 = v1[12];
  v16 = type metadata accessor for AwardsService();
  (*(v16[-1].Description + 1))(&v5[v15], v16);
  v17 = v1[13];
  v18 = type metadata accessor for BookmarkService();
  (*(v18[-1].Description + 1))(&v5[v17], v18);
  v19 = v1[14];
  v20 = type metadata accessor for CatalogService();
  (*(v20[-1].Description + 1))(&v5[v19], v20);
  v21 = v1[15];
  v22 = type metadata accessor for ConfigurationService();
  (*(v22[-1].Description + 1))(&v5[v21], v22);
  v23 = v1[16];
  v24 = type metadata accessor for ContentAvailabilityService();
  (*(v24[-1].Description + 1))(&v5[v23], v24);
  v25 = v1[17];
  v26 = type metadata accessor for EngagementService();
  (*(v26[-1].Description + 1))(&v5[v25], v26);
  v27 = v1[18];
  v28 = type metadata accessor for HealthDataService();
  (*(v28[-1].Description + 1))(&v5[v27], v28);
  v29 = v1[19];
  v30 = type metadata accessor for InteropService();
  (*(v30[-1].Description + 1))(&v5[v29], v30);
  v31 = v1[20];
  v32 = type metadata accessor for LocalizationService();
  (*(v32[-1].Description + 1))(&v5[v31], v32);
  v33 = v1[21];
  v34 = type metadata accessor for MarketingService();
  (*(v34[-1].Description + 1))(&v5[v33], v34);
  v35 = v1[22];
  v36 = type metadata accessor for MetricService();
  (*(v36[-1].Description + 1))(&v5[v35], v36);
  v37 = v1[23];
  v38 = type metadata accessor for PersonalizationService();
  (*(v38[-1].Description + 1))(&v5[v37], v38);
  v39 = v1[24];
  v40 = type metadata accessor for PlayerService();
  (*(v40[-1].Description + 1))(&v5[v39], v40);
  v41 = v1[25];
  v42 = type metadata accessor for PrivacyPreferenceService();
  (*(v42[-1].Description + 1))(&v5[v41], v42);
  v43 = v1[26];
  v44 = type metadata accessor for RecommendationService();
  (*(v44[-1].Description + 1))(&v5[v43], v44);
  v45 = v1[27];
  v46 = type metadata accessor for RemoteBrowsingService();
  (*(v46[-1].Description + 1))(&v5[v45], v46);
  v47 = v1[28];
  v48 = type metadata accessor for SearchService();
  (*(v48[-1].Description + 1))(&v5[v47], v48);
  v49 = v1[29];
  v50 = type metadata accessor for ServiceSubscriptionService();
  (*(v50[-1].Description + 1))(&v5[v49], v50);
  v51 = v1[30];
  v52 = type metadata accessor for SessionService();
  (*(v52[-1].Description + 1))(&v5[v51], v52);
  v53 = v1[31];
  v54 = type metadata accessor for SharePlayService();
  (*(v54[-1].Description + 1))(&v5[v53], v54);
  v55 = v1[32];
  v56 = type metadata accessor for SiriService();
  (*(v56[-1].Description + 1))(&v5[v55], v56);
  v57 = v1[33];
  v58 = type metadata accessor for SyncService();
  (*(v58[-1].Description + 1))(&v5[v57], v58);
  v59 = &v5[v1[34]];
  v60 = *(v59 + 1);

  v61 = *(v59 + 3);

  v62 = *(v59 + 5);

  v63 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(&v5[v63], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v1[36]]);
  v65 = *&v5[v1[37]];

  v66 = v1[38];
  v67 = type metadata accessor for WorkoutPlanService();
  (*(v67[-1].Description + 1))(&v5[v66], v67);
  v68 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1E6235EC0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6233020(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6235FE8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E10, &qword_1E65F85F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6237BB8();
  sub_1E65E6DA8();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E6237C70(&qword_1ED0759E8);
  sub_1E65E6B78();
  if (!v1)
  {
    v9 = *(type metadata accessor for DynamicStartWorkoutButtonLoadState() + 20);
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E613BED0(&qword_1ED075A08);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E62361D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v23 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E00, &qword_1E65F85F0);
  v27 = *(v30 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v23 - v10;
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState();
  v13 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6237BB8();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = started;
  v24 = a1;
  v17 = v15;
  v19 = v27;
  v18 = v28;
  v32 = 0;
  sub_1E6237C70(&qword_1ED075A30);
  v21 = v29;
  v20 = v30;
  sub_1E65E6AD8();
  sub_1E5FAB460(v21, v17, &qword_1ED0737C8, &unk_1E6605140);
  v31 = 1;
  sub_1E613BED0(&qword_1ED075A40);
  sub_1E65E6AD8();
  (*(v19 + 8))(v11, v20);
  sub_1E5FAB460(v18, v17 + *(v23 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E6237C0C(v17, v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1E6236B04(v17);
}

uint64_t sub_1E6236560()
{
  if (*v0)
  {
    result = 0x64616F6C6E776F64;
  }

  else
  {
    result = 0x726F577472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1E62365A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F577472617473 && a2 == 0xEC00000074756F6BLL;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6236684(uint64_t a1)
{
  v2 = sub_1E6237BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E62366C0(uint64_t a1)
{
  v2 = sub_1E6237BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623672C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E5DF2DE0(&qword_1EE2D6888, MEMORY[0x1E699CC08]);
  sub_1E65E4DB8();
  v3 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  return sub_1E65E4DB8();
}

uint64_t sub_1E62367E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E65DE788();
  sub_1E5DF2DE0(&qword_1EE2D6880, MEMORY[0x1E699CC08]);
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1E5DF23E0();

  return sub_1E65E4D98();
}

uint64_t sub_1E62368B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState();
  v5 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v18 - v10);
  sub_1E5DFD1CC(v2, &v18 - v10, &qword_1ED0736B0, &unk_1E65F8480);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v11;
  v13 = v11[1];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310);
    sub_1E6236AA0(v11 + *(v15 + 48), v7);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490) + 48);
    *a1 = v14;
    a1[1] = v13;
    sub_1E5DFD1CC(v7, a1 + v16, &qword_1ED0737C8, &unk_1E6605140);
    sub_1E6236B04(v7);
  }

  else
  {
    *a1 = v14;
    a1[1] = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for DynamicStartWorkoutButtonLoadState()
{
  result = qword_1EE2D7AE8;
  if (!qword_1EE2D7AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6236AA0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1E6236B04(uint64_t a1)
{
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_1E6236B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v94 = a2;
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState();
  v2 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v80 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v4 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v77 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE8, &qword_1E65F84B8);
  v9 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DF0, &unk_1E65F84C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v90 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v77 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v77 - v30;
  v32 = sub_1E65D7848();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v79 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v82 = &v77 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = (&v77 - v40);
  sub_1E5DFD1CC(v84, &v77 - v40, &qword_1ED0736B0, &unk_1E65F8480);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = v41[1];
  v84 = *v41;
  if (EnumCaseMultiPayload == 1)
  {
    v82 = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310);
    v45 = v80;
    sub_1E6236AA0(v41 + *(v44 + 48), v80);
    v46 = type metadata accessor for AppState();
    v47 = v46[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v48 = v83;
    sub_1E65E4C98();
    sub_1E5E1F544(v29);
    sub_1E5DFE50C(v24, &qword_1ED071F78, &unk_1E65EA3F0);
    v49 = *(v33 + 48);
    if (v49(v29, 1, v32) == 1)
    {
      sub_1E65D77C8();
      if (v49(v29, 1, v32) != 1)
      {
        sub_1E5DFE50C(v29, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v33 + 32))(v79, v29, v32);
    }

    v54 = v48 + v46[73];
    LODWORD(v79) = sub_1E624D4A8();
    v55 = v84;
    v56 = v82;
    v57 = sub_1E6237610(v84, v82);
    v77 = v58;
    v78 = v57;
    sub_1E5DFD1CC(v45 + *(started + 20), v90, &unk_1ED077CD0, &unk_1E65F42F0);
    v59 = v46[77];
    v95 = v55;
    v96 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
    v60 = v85;
    sub_1E65E4D78();
    v61 = v45;
    v62 = v89;
    v63 = v87;
    sub_1E65E4C98();
    (*(v86 + 8))(v60, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E6237A2C();
    v64 = v92;
    sub_1E65E4DA8();
    v65 = sub_1E5DFE50C(v62, &qword_1ED0753C0, &unk_1E6606290);
    MEMORY[0x1EEE9AC00](v65);
    *(&v77 - 2) = v48;
    sub_1E5DF4334();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v64, &qword_1ED076DE8, &qword_1E65F84B8);
    sub_1E65DEA88();
    return sub_1E6236B04(v61);
  }

  else
  {
    v50 = type metadata accessor for AppState();
    v51 = v50[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v52 = v83;
    sub_1E65E4C98();
    sub_1E5E1F544(v31);
    sub_1E5DFE50C(v24, &qword_1ED071F78, &unk_1E65EA3F0);
    v53 = *(v33 + 48);
    if (v53(v31, 1, v32) == 1)
    {
      sub_1E65D77C8();
      if (v53(v31, 1, v32) != 1)
      {
        sub_1E5DFE50C(v31, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v33 + 32))(v82, v31, v32);
    }

    v67 = v52 + v50[73];
    LODWORD(started) = sub_1E624D4A8();
    v68 = v84;
    sub_1E6237610(v84, v43);
    v69 = v50[29];
    v95 = v68;
    v96 = v43;
    v97 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
    sub_1E65E4D78();
    v70 = v78;
    sub_1E65E4C98();
    (*(v77 + 8))(v20, v70);
    v71 = v50[77];
    v95 = v68;
    v96 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
    v72 = v85;
    sub_1E65E4D78();
    v73 = v89;
    v74 = v87;
    sub_1E65E4C98();
    (*(v86 + 8))(v72, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E6237A2C();
    v75 = v92;
    sub_1E65E4DA8();
    v76 = sub_1E5DFE50C(v73, &qword_1ED0753C0, &unk_1E6606290);
    MEMORY[0x1EEE9AC00](v76);
    *(&v77 - 2) = v52;
    sub_1E5DF4334();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v75, &qword_1ED076DE8, &qword_1E65F84B8);
    return sub_1E65DEA88();
  }
}

uint64_t sub_1E6237610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D8668();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD8, &qword_1E65F3678);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v35 - v23;
  v25 = *(type metadata accessor for AppState() + 308);
  v38 = a1;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  sub_1E65E4D78();
  sub_1E65E4C98();
  sub_1E60EFC20(v20);
  sub_1E5DFE50C(v11, &qword_1ED0753C0, &unk_1E6606290);
  (*(v13 + 8))(v16, v12);
  v26 = sub_1E65D9658();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v20, 1, v26) == 1)
  {
    v28 = &qword_1ED075CD8;
    v29 = &qword_1E65F3678;
    v30 = v20;
LABEL_5:
    sub_1E5DFE50C(v30, v28, v29);
    return 0;
  }

  sub_1E65D9618();
  (*(v27 + 8))(v20, v26);
  sub_1E65D85C8();
  (*(v36 + 8))(v7, v37);
  v31 = sub_1E65D9678();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v24, 1, v31) == 1)
  {
    v28 = &qword_1ED0752C8;
    v29 = &unk_1E65F8500;
    v30 = v24;
    goto LABEL_5;
  }

  v34 = sub_1E65D9668();
  (*(v32 + 8))(v24, v31);
  return v34;
}

unint64_t sub_1E6237A2C()
{
  result = qword_1ED076DF8;
  if (!qword_1ED076DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076DF8);
  }

  return result;
}

void sub_1E6237AEC()
{
  sub_1E5DF2250();
  if (v0 <= 0x3F)
  {
    sub_1E5DF2384();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E6237BB8()
{
  result = qword_1ED076E08;
  if (!qword_1ED076E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E08);
  }

  return result;
}

uint64_t sub_1E6237C0C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for DynamicStartWorkoutButtonLoadState();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_1E6237C70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737C8, &unk_1E6605140);
    v3 = MEMORY[0x1E699CC08];
    sub_1E5DF2DE0(&qword_1ED0759F0, MEMORY[0x1E699CC08]);
    sub_1E5DF2DE0(&qword_1ED0759F8, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E6237D58()
{
  result = qword_1ED076E18;
  if (!qword_1ED076E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E18);
  }

  return result;
}

unint64_t sub_1E6237DB0()
{
  result = qword_1ED076E20;
  if (!qword_1ED076E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E20);
  }

  return result;
}

unint64_t sub_1E6237E08()
{
  result = qword_1ED076E28;
  if (!qword_1ED076E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E28);
  }

  return result;
}

uint64_t sub_1E6237E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(type metadata accessor for AppComposer() - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for RouteResource();
  v3[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6237FA4, 0, 0);
}

uint64_t sub_1E6237FA4()
{
  v1 = v0[9];
  sub_1E6238730(v0[3], v0[10], type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 24)
  {
    v2 = v0[10];
    v4 = v0[7];
    v3 = v0[8];
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    v8 = *v2;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
    v10 = sub_1E65DB848();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
    v11 = sub_1E65E60A8();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    sub_1E6238730(v7, v4, type metadata accessor for AppComposer);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    sub_1E5E1FA80(v4, v13 + v12);
    *(v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v14 = v8;
    sub_1E6059EAC(0, 0, v3, &unk_1E65F8740, v13);

    sub_1E5FAA54C();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
  }

  else
  {
    v18 = v0[7];
    v17 = v0[8];
    v20 = v0[2];
    v19 = v0[3];
    sub_1E62386D4(v0[10]);
    sub_1E6238730(v19, v20, type metadata accessor for RouteDestination);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E623823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E623825C, 0, 0);
}

uint64_t sub_1E623825C()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 108);
  v4 = ServiceSubscriptionService.performPurchase.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E6238378;
  v8 = v0[3];

  return v10(v8);
}

uint64_t sub_1E6238378(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v8 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = sub_1E60274D4;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_1E6238494;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6238494()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 141558274;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Finished purchase %{mask.hash}@", v8, 0x16u);
    sub_1E5F91480(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    v7 = v4;
    v4 = *(v0 + 48);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E6238624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6237E74(a1, a2, a3);
}

uint64_t sub_1E62386D4(uint64_t a1)
{
  v2 = type metadata accessor for RouteResource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6238730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6238798(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E623823C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E62388C8@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F58, &qword_1E65EA388);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v84 - v3;
  v5 = sub_1E65D7828();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D7768();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = *(v88 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v84 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F60, &qword_1E65EA390);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v84 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v84 - v24;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v22 + 8))(v25, v21);
  sub_1E5F9AE38(v20, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    v27 = v89;
    v28 = v90;
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F70, &qword_1E65EA3E8) + 48);
      v30 = *v18;
      v31 = sub_1E65D76A8();
      (*(*(v31 - 8) + 8))(v18 + v29, v31);
      goto LABEL_6;
    }

    sub_1E5DFE50C(v18, &qword_1ED071F60, &qword_1E65EA390);
LABEL_12:
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v41 = sub_1E65E3B68();
    __swift_project_value_buffer(v41, qword_1EE2EA2A0);
    v42 = sub_1E65E3B48();
    v43 = sub_1E65E6338();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_22;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "[MatchingAudioLanguageTransformable] Failed to resolve value for availableAudioLanguageCodes";
    goto LABEL_21;
  }

  v30 = *v18;
  v27 = v89;
  v28 = v90;
LABEL_6:
  sub_1E65D7838();
  sub_1E65D77F8();
  (*(v85 + 8))(v8, v86);
  v32 = v88;
  if ((*(v88 + 48))(v4, 1, v27) == 1)
  {

    sub_1E5DFE50C(v4, &qword_1ED071F58, &qword_1E65EA388);
LABEL_17:
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v46 = sub_1E65E3B68();
    __swift_project_value_buffer(v46, qword_1EE2EA2A0);
    v42 = sub_1E65E3B48();
    v43 = sub_1E65E6338();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_22;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "[MatchingAudioLanguageTransformable] Failed to determine user's locale";
LABEL_21:
    _os_log_impl(&dword_1E5DE9000, v42, v43, v45, v44, 2u);
    MEMORY[0x1E694F1C0](v44, -1, -1);
LABEL_22:

    return sub_1E65D7758();
  }

  (*(v32 + 32))(v28, v4, v27);
  v33 = sub_1E65D7788();
  if (!v33[2])
  {
    (*(v32 + 8))(v28, v27);

    goto LABEL_17;
  }

  v35 = v33[4];
  v34 = v33[5];

  v92[0] = v35;
  v92[1] = v34;
  sub_1E5F9AEA8();
  v36 = sub_1E65E66E8();

  if (v36[2])
  {
    v37 = v36[4];
    v38 = v36[5];
    v40 = v36[6];
    v39 = v36[7];
  }

  else
  {

    v37 = sub_1E65E6688();
    v38 = v48;
    v40 = v49;
    v39 = v50;
  }

  v51 = v84;
  v52 = MEMORY[0x1E694D730](v37, v38, v40, v39);
  v54 = v53;

  if (sub_1E65D7748() == 28261 && v55 == 0xE200000000000000)
  {
  }

  else
  {
    v56 = sub_1E65E6C18();

    if ((v56 & 1) == 0)
    {
      v59 = sub_1E65D7748();
      v61 = sub_1E637CA94(v59, v60, v30);

      if (v52 == 28261 && v54 == 0xE200000000000000)
      {
        v58 = 0;
        v57 = v61;
        goto LABEL_38;
      }

      v57 = v61;
      goto LABEL_35;
    }
  }

  v57 = 0;
  if (v52 != 28261 || (v58 = 0, v54 != 0xE200000000000000))
  {
LABEL_35:
    if (sub_1E65E6C18())
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_1E637CA94(v52, v54, v30);
    }
  }

LABEL_38:

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v62 = sub_1E65E3B68();
  v63 = __swift_project_value_buffer(v62, qword_1EE2EA2A0);
  (*(v32 + 16))(v51, v28, v27);

  v87 = v63;
  v64 = sub_1E65E3B48();
  v65 = v32;
  v66 = sub_1E65E6338();

  v67 = os_log_type_enabled(v64, v66);
  LODWORD(v89) = v58;
  if (v67)
  {
    v68 = swift_slowAlloc();
    LODWORD(v86) = v57;
    v69 = v68;
    v70 = swift_slowAlloc();
    v85 = v54;
    v71 = v52;
    v72 = v70;
    v92[0] = v70;
    *v69 = 136315394;
    v73 = sub_1E65D7748();
    v74 = v51;
    v76 = v75;
    v77 = *(v65 + 8);
    v77(v74, v27);
    v78 = sub_1E5DFD4B0(v73, v76, v92);

    *(v69 + 4) = v78;
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_1E5DFD4B0(v71, v85, v92);
    _os_log_impl(&dword_1E5DE9000, v64, v66, "[MatchingAudioLanguageTransformable] storeFrontLanguage: %s deviceLanguage: %s", v69, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v72, -1, -1);
    v79 = v69;
    LOBYTE(v69) = v86;
    MEMORY[0x1E694F1C0](v79, -1, -1);

    v80 = v90;
    if ((v69 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_47:
    if ((v89 & 1) == 0)
    {

      sub_1E65D7748();
    }

    goto LABEL_50;
  }

  v77 = *(v65 + 8);
  v77(v51, v27);
  v80 = v90;
  if (v57)
  {
    goto LABEL_47;
  }

LABEL_42:
  if ((v89 & 1) == 0)
  {

    v81 = sub_1E65E3B48();
    v82 = sub_1E65E6338();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1E5DE9000, v81, v82, "[MatchingAudioLanguageTransformable] No matching audio language found", v83, 2u);
      MEMORY[0x1E694F1C0](v83, -1, -1);
    }

    sub_1E65D7758();
    return (v77)(v80, v27);
  }

LABEL_50:
  sub_1E65D7778();
  return (v77)(v80, v27);
}

char *sub_1E6239324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v53 = a7;
  v54 = a1;
  v59 = a4;
  v60 = a6;
  v55 = a2;
  ObjectType = swift_getObjectType();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v56 = *(v58 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v52 - v12;
  v14 = sub_1E65DDE68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_blurBackgroundView;
  v20 = [objc_opt_self() effectWithStyle_];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v8[v19] = v21;
  (*(v15 + 104))(v18, *MEMORY[0x1E69CAB40], v14);
  v22 = v53;
  LOBYTE(v61) = 0;
  sub_1E65DDC88();
  v23 = v55;
  *&v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_supportedOrientations] = v54;
  v24 = &v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_onDeactivateApplication];
  *v24 = v23;
  *(v24 + 1) = a3;
  v25 = &v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_onTerminateApplication];
  v26 = v60;
  *v25 = v59;
  *(v25 + 1) = a5;
  v27 = &v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_requirePresentation];
  *v27 = v26;
  *(v27 + 1) = v22;
  v28 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v59 = a3;

  v60 = a5;

  v29 = [v28 initWithTarget:0 action:0];
  v30 = OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_menuGestureRecognizer;
  *&v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_menuGestureRecognizer] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E65EA660;
  v32 = v29;
  *(v31 + 32) = sub_1E65E6288();
  sub_1E5DEF738(0, &qword_1EE2D4500, 0x1E696AD98);
  v33 = sub_1E65E5EF8();

  [v32 setAllowedPressTypes_];

  [*&v8[v30] setEnabled_];
  v34 = objc_allocWithZone(sub_1E65DC3D8());
  *&v8[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView] = sub_1E65DC3B8();
  v64.receiver = v8;
  v64.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v64, sel_initWithNibName_bundle_, 0, 0);
  v36 = v56;
  v37 = v58;
  (*(v56 + 16))(v13, v35 + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController__decorateProgressEnabled, v58);
  v38 = v35;
  sub_1E65DDC48();
  (*(v36 + 8))(v13, v37);
  if (v61 == 1)
  {
    v39 = *&v38[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView];
    v61 = 0;
    v62 = 0xE000000000000000;
    v40 = v39;
    sub_1E65E68A8();

    v61 = 0xD00000000000002ALL;
    v62 = 0x80000001E6614CA0;
    v63 = v38;
    v41 = sub_1E65E5CE8();
    MEMORY[0x1E694D7C0](v41);

    sub_1E65DC3A8();
  }

  v42 = v38;
  [v42 setModalPresentationStyle_];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v43 = sub_1E65E3B68();
  __swift_project_value_buffer(v43, qword_1EE2EA2A0);
  v44 = sub_1E65E3B48();
  v45 = sub_1E65E6338();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v61 = v47;
    *v46 = 136315138;
    v63 = v42;
    v48 = sub_1E65E5CE8();
    v50 = sub_1E5DFD4B0(v48, v49, &v61);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_1E5DE9000, v44, v45, "init RouteDetourNavigationController %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1E694F1C0](v47, -1, -1);
    MEMORY[0x1E694F1C0](v46, -1, -1);
  }

  return v42;
}

id sub_1E6239910()
{
  ObjectType = swift_getObjectType();
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v0;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = sub_1E65E5CE8();
    v10 = sub_1E5DFD4B0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "deinit RouteDetourNavigationController %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

void sub_1E6239BCC()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  v2 = [v0 navigationBar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E65EA660;
  *(v3 + 32) = [objc_opt_self() effectWithStyle_];
  sub_1E5DEF738(0, &qword_1EE2D4690, 0x1E69DD290);
  v4 = sub_1E65E5EF8();

  [v2 setBackgroundEffects_];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 addGestureRecognizer_];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = *&v1[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_blurBackgroundView];
  [v7 insertSubview:v9 atIndex:0];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = *&v1[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView];
  [v10 addSubview_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = *MEMORY[0x1E69DDCE0];
  v16 = *(MEMORY[0x1E69DDCE0] + 8);
  v17 = *(MEMORY[0x1E69DDCE0] + 16);
  v18 = *(MEMORY[0x1E69DDCE0] + 24);
  sub_1E65E6518();

  v19 = [v1 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = sub_1E65E64F8();

  sub_1E5FAA11C(v21);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65F3310;
  v23 = [v12 leadingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintGreaterThanOrEqualToAnchor:v26 constant:20.0];
  *(inited + 32) = v27;
  v28 = [v12 topAnchor];
  v29 = [v1 view];
  if (v29)
  {
    v30 = v29;
    v31 = objc_opt_self();
    v32 = [v30 topAnchor];

    v33 = [v28 constraintGreaterThanOrEqualToAnchor:v32 constant:20.0];
    *(inited + 40) = v33;
    sub_1E5FAA11C(inited);
    sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
    v34 = sub_1E65E5EF8();

    [v31 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1E623A04C()
{
  v1 = v0;
  v2 = sub_1E65E4F38();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65E4F68();
  v34 = *(v36 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E4F28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1E65E4F88();
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v20 = [v0 viewControllers];
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v21 = sub_1E65E5F18();

  if (v21 >> 62)
  {
    v22 = sub_1E65E67C8();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    v23 = *&v1[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView];
    return sub_1E65DC398();
  }

  else
  {
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v32 = sub_1E65E63C8();
    sub_1E65E4F78();
    *v12 = 1;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E7F48], v8);
    MEMORY[0x1E694C9B0](v17, v12);
    (*(v9 + 8))(v12, v8);
    v25 = *(v33 + 8);
    v25(v17, v13);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E623B16C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5E05AB0;
    aBlock[3] = &block_descriptor_7;
    v27 = _Block_copy(aBlock);

    sub_1E65E4F48();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E623B174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
    sub_1E5E05A4C();
    v28 = v35;
    v29 = v38;
    sub_1E65E6738();
    v30 = v32;
    MEMORY[0x1E694DDB0](v19, v7, v28, v27);
    _Block_release(v27);

    (*(v37 + 8))(v28, v29);
    (*(v34 + 8))(v7, v36);
    return (v25)(v19, v13);
  }
}

void sub_1E623A588()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong viewControllers];

    sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
    v3 = sub_1E65E5F18();

    if (v3 >> 62)
    {
      v8 = sub_1E65E67C8();

      if (v8)
      {
        return;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return;
      }
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_activityIndicatorView);

    sub_1E65DC3C8();
  }
}

uint64_t sub_1E623A740(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1E623A804;

  return sub_1E6394EA4(a1);
}

uint64_t sub_1E623A804()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 48) = v6;
  *(v1 + 56) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E623A948, v6, v5);
}

uint64_t sub_1E623A948()
{
  v1 = v0[3];
  v0[8] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E623A9D4, v3, v2);
}

uint64_t sub_1E623A9D4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 96);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B38();
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v4 = sub_1E65E5EF8();
  [v1 setViewControllers:v4 animated:v2];

  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1E623AB44;
  v6 = *(v0 + 16);
  v7 = *(v0 + 96);

  return sub_1E6395954(v7);
}

uint64_t sub_1E623AB44()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E623AC64, v4, v3);
}

uint64_t sub_1E623AC64()
{
  v1 = v0[8];

  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x1EEE6DFA0](sub_1E623ACC8, v2, v3);
}

uint64_t sub_1E623ACC8()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_1E623A04C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E623AD30()
{
  v1 = *(v0 + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_onDeactivateApplication);
  v2 = *(v0 + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_onDeactivateApplication + 8);
  return v1();
}

uint64_t sub_1E623AD64()
{
  v1 = *(v0 + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_onTerminateApplication);
  v2 = *(v0 + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_onTerminateApplication + 8);
  return v1();
}

uint64_t sub_1E623AD98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1E65E6058();
  v3[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E623AE34, v5, v4);
}

uint64_t sub_1E623AE34()
{
  v1 = (*(v0 + 32) + OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_requirePresentation);
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1E623AF38;
  v5 = *(v0 + 32);

  return v7(v5, 1);
}

uint64_t sub_1E623AF38()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E623B058, v4, v3);
}

uint64_t sub_1E623B058()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v4(v2);
  sub_1E623A04C();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E623B0D8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E623A740(a1);
}

unint64_t sub_1E623B174()
{
  result = qword_1EE2D4A00;
  if (!qword_1EE2D4A00)
  {
    sub_1E65E4F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4A00);
  }

  return result;
}

void sub_1E623B1CC()
{
  v1 = sub_1E65DDE68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_blurBackgroundView;
  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v0 + v6) = v8;
  (*(v2 + 104))(v5, *MEMORY[0x1E69CAB40], v1);
  v9[15] = 0;
  sub_1E65DDC88();
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E623B368@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E65D8668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v17 - v9;
  sub_1E65D9618();
  sub_1E65D85C8();
  (*(v3 + 8))(v6, v2);
  v11 = sub_1E65D9678();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_1E623BB68(v10);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = sub_1E65D9668();
    v15 = v16;
    result = (*(v12 + 8))(v10, v11);
  }

  *a1 = v14;
  a1[1] = v15;
  return result;
}

void sub_1E623B53C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DF0, &unk_1E65F84C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E68, &qword_1E65F87C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = a1[1];
  if (!v13)
  {
    v20 = sub_1E65DEDC8();
    sub_1E623BB10();
    swift_allocError();
    v22 = v21;
    v23 = MEMORY[0x1E699CDB8];
LABEL_19:
    (*(*(v20 - 8) + 104))(v22, *v23, v20);
    swift_willThrow();
    return;
  }

  v46 = v2;
  v14 = *a1;
  v15 = *(type metadata accessor for AppState() + 264);
  v45 = v14;
  v48[0] = v14;
  v48[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
  sub_1E65E4D78();
  sub_1E65E4C98();
  (*(v9 + 8))(v12, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v20 = sub_1E65DEDC8();
    sub_1E623BB10();
    swift_allocError();
    v22 = v24;
    v23 = MEMORY[0x1E699CDC0];
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v7;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E78, &qword_1E65F87C8) + 48);
      *v47 = v17;
      v19 = sub_1E65D76A8();
      (*(*(v19 - 8) + 8))(&v7[v18], v19);
      return;
    }

    v34 = *(v7 + 1);
    v36 = *(v7 + 3);
    v35 = *(v7 + 4);

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v37 = sub_1E65E3B68();
    __swift_project_value_buffer(v37, qword_1EE2EA2A0);

    v38 = sub_1E65E3B48();
    v39 = sub_1E65E6338();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_1E5DFD4B0(v45, v13, v48);
      *(v40 + 12) = 2080;
      v42 = sub_1E5DFD4B0(v36, v35, v48);

      *(v40 + 14) = v42;
      _os_log_impl(&dword_1E5DE9000, v38, v39, "Failed to fetch sample content session status for %s with error %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v41, -1, -1);
      MEMORY[0x1E694F1C0](v40, -1, -1);
    }

    else
    {
    }

    v20 = sub_1E65DEDC8();
    sub_1E623BB10();
    swift_allocError();
    v22 = v43;
    v23 = MEMORY[0x1E699CDC8];
    goto LABEL_19;
  }

  v25 = *v7;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v26 = sub_1E65E3B68();
  __swift_project_value_buffer(v26, qword_1EE2EA2A0);

  v27 = sub_1E65E3B48();
  v28 = sub_1E65E6338();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_1E5DFD4B0(v45, v13, v48);
    *(v29 + 12) = 2080;
    v49 = v25;
    v31 = sub_1E65E5CE8();
    v33 = sub_1E5DFD4B0(v31, v32, v48);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_1E5DE9000, v27, v28, "Returning previous sample content session status for %s: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v29, -1, -1);
  }

  *v47 = v25;
}

unint64_t sub_1E623BB10()
{
  result = qword_1ED076E70;
  if (!qword_1ED076E70)
  {
    sub_1E65DEDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076E70);
  }

  return result;
}

uint64_t sub_1E623BB68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E623BBD0(uint64_t a1)
{
  v2 = sub_1E623CCBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BC0C(uint64_t a1)
{
  v2 = sub_1E623CCBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623BC48(uint64_t a1)
{
  v2 = sub_1E623CC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BC84(uint64_t a1)
{
  v2 = sub_1E623CC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E623BCC0()
{
  v1 = *v0;
  v2 = 0x636E75614C707061;
  v3 = 0xD000000000000016;
  v4 = 0x647055656E656373;
  if (v1 == 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_1E623BD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E623EAE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E623BD9C(uint64_t a1)
{
  v2 = sub_1E623CA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BDD8(uint64_t a1)
{
  v2 = sub_1E623CA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623BE14()
{
  v1 = *v0;
  v2 = 0x73646E756F62;
  v3 = 0x5379616C70736964;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x5463696D616E7964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617274726F507369;
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

uint64_t sub_1E623BEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E623ECA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E623BEF0(uint64_t a1)
{
  v2 = sub_1E623CB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BF2C(uint64_t a1)
{
  v2 = sub_1E623CB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623BF68(uint64_t a1)
{
  v2 = sub_1E623CC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623BFA4(uint64_t a1)
{
  v2 = sub_1E623CC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E623BFE0(uint64_t a1)
{
  v2 = sub_1E623CBC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E623C01C(uint64_t a1)
{
  v2 = sub_1E623CBC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAction.encode(to:)(void *a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E80, &qword_1E65F87D0);
  v64 = *(v65 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v56 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E88, &qword_1E65F87D8);
  v61 = *(v62 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v56 - v5;
  *&v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E90, &qword_1E65F87E0);
  *&v69 = *(v70 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  *&v68 = &v56 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076E98, &qword_1E65F87E8);
  v59 = *(v67 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v56 - v9;
  v10 = type metadata accessor for BrowsingIdentity(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EA0, &qword_1E65F87F0);
  v57 = *(v58 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v16 = &v56 - v15;
  v17 = type metadata accessor for AppAction();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EA8, &qword_1E65F87F8);
  v22 = *(v21 - 8);
  v73 = v21;
  v74 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v56 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E623CA60();
  v71 = v25;
  sub_1E65E6DA8();
  sub_1E623CAB4(v72, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v38 = v66;
    v39 = v67;
    v40 = v68;
    v41 = v69;
    v42 = v70;
    if (EnumCaseMultiPayload)
    {
      v55 = *v20;
      LOBYTE(v77) = 2;
      sub_1E623CC14();
      v45 = v73;
      v46 = v71;
      sub_1E65E6B18();
      sub_1E65E6B58();
      (*(v41 + 8))(v40, v42);
    }

    else
    {
      v43 = v13;
      sub_1E623DC0C(v20, v13, type metadata accessor for BrowsingIdentity);
      LOBYTE(v77) = 1;
      sub_1E623CC68();
      v44 = v38;
      v45 = v73;
      v46 = v71;
      sub_1E65E6B18();
      sub_1E623DC74(&qword_1ED074908, type metadata accessor for BrowsingIdentity);
      sub_1E65E6B78();
      (*(v59 + 8))(v44, v39);
      sub_1E5E006D4(v43, type metadata accessor for BrowsingIdentity);
    }

    return (*(v74 + 8))(v46, v45);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v48 = *v20;
    v49 = *(v20 + 1);
    LOBYTE(v77) = 3;
    sub_1E623CBC0();
    v50 = v60;
    v51 = v73;
    v52 = v71;
    sub_1E65E6B18();
    *&v77 = v48;
    *(&v77 + 1) = v49;
    sub_1E5DF6D3C();
    v53 = v62;
    sub_1E65E6B78();
    (*(v61 + 8))(v50, v53);
    (*(v74 + 8))(v52, v51);
    return sub_1E5E0476C(v48, v49);
  }

  else
  {
    v28 = v71;
    if (EnumCaseMultiPayload == 3)
    {
      v29 = v20[32];
      v30 = *(v20 + 5);
      v31 = *(v20 + 3);
      v68 = *(v20 + 4);
      v69 = v31;
      v32 = v20[80];
      LOBYTE(v77) = 4;
      sub_1E623CB18();
      v33 = *(v20 + 1);
      v72 = *v20;
      v70 = v33;
      v34 = v63;
      v35 = v73;
      sub_1E65E6B18();
      v78 = v70;
      v77 = v72;
      v76 = 0;
      type metadata accessor for CGRect(0);
      sub_1E623DC74(&qword_1ED076EB0, type metadata accessor for CGRect);
      v36 = v65;
      v37 = v75;
      sub_1E65E6B78();
      if (!v37)
      {
        LOBYTE(v77) = 1;
        sub_1E65E6B58();
        *&v77 = v30;
        v76 = 2;
        sub_1E5F8BCBC();
        sub_1E65E6B78();
        v78 = v68;
        v77 = v69;
        v76 = 3;
        type metadata accessor for UIEdgeInsets(0);
        sub_1E623DC74(&qword_1EE2D46C8, type metadata accessor for UIEdgeInsets);
        sub_1E65E6B78();
        LOBYTE(v77) = v32;
        v76 = 4;
        sub_1E623CB6C();
        sub_1E65E6B38();
      }

      (*(v64 + 8))(v34, v36);
      return (*(v74 + 8))(v28, v35);
    }

    else
    {
      LOBYTE(v77) = 0;
      sub_1E623CCBC();
      v54 = v73;
      sub_1E65E6B18();
      (*(v57 + 8))(v16, v58);
      return (*(v74 + 8))(v28, v54);
    }
  }
}

unint64_t sub_1E623CA60()
{
  result = qword_1EE2D74D0;
  if (!qword_1EE2D74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74D0);
  }

  return result;
}

uint64_t sub_1E623CAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E623CB18()
{
  result = qword_1EE2D74B8;
  if (!qword_1EE2D74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74B8);
  }

  return result;
}

unint64_t sub_1E623CB6C()
{
  result = qword_1EE2D6578;
  if (!qword_1EE2D6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6578);
  }

  return result;
}

unint64_t sub_1E623CBC0()
{
  result = qword_1ED076EB8;
  if (!qword_1ED076EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076EB8);
  }

  return result;
}

unint64_t sub_1E623CC14()
{
  result = qword_1ED076EC0;
  if (!qword_1ED076EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076EC0);
  }

  return result;
}

unint64_t sub_1E623CC68()
{
  result = qword_1ED076EC8;
  if (!qword_1ED076EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076EC8);
  }

  return result;
}

unint64_t sub_1E623CCBC()
{
  result = qword_1EE2D74E8;
  if (!qword_1EE2D74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74E8);
  }

  return result;
}

uint64_t AppAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076ED0, &qword_1E65F8800);
  v89 = *(v82 - 8);
  v3 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v98 = &v76 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076ED8, &qword_1E65F8808);
  v88 = *(v87 - 8);
  v5 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  *&v90 = &v76 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EE0, &qword_1E65F8810);
  v85 = *(v86 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  *&v97 = &v76 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EE8, &qword_1E65F8818);
  v84 = *(v83 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  *&v96 = &v76 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EF0, &qword_1E65F8820);
  v80 = *(v81 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  *&v94 = &v76 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076EF8, &unk_1E65F8828);
  v93 = *(v95 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v15 = &v76 - v14;
  v92 = type metadata accessor for AppAction();
  v16 = *(*(v92 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v92);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v76 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v76 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v76 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v76 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1E623CA60();
  v33 = v100;
  sub_1E65E6D98();
  if (v33)
  {
    goto LABEL_9;
  }

  v77 = v25;
  v79 = v28;
  v34 = v94;
  v78 = v22;
  v35 = v96;
  v36 = v97;
  v76 = v19;
  v37 = v98;
  v100 = v30;
  v38 = v95;
  v39 = sub_1E65E6AF8();
  v40 = (2 * *(v39 + 16)) | 1;
  v108 = v39;
  v109 = v39 + 32;
  v110 = 0;
  v111 = v40;
  v41 = sub_1E5FBE3EC();
  if (v41 == 5 || v110 != v111 >> 1)
  {
    v45 = sub_1E65E68F8();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v47 = v92;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v93 + 8))(v15, v38);
    swift_unknownObjectRelease();
LABEL_9:
    v49 = v99;
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  if (v41 <= 1u)
  {
    if (v41)
    {
      LOBYTE(v106) = 1;
      sub_1E623CC68();
      sub_1E65E6A68();
      v52 = v91;
      type metadata accessor for BrowsingIdentity(0);
      v63 = v38;
      sub_1E623DC74(&qword_1ED074900, type metadata accessor for BrowsingIdentity);
      v64 = v79;
      v65 = v83;
      sub_1E65E6AD8();
      (*(v84 + 8))(v35, v65);
      (*(v93 + 8))(v15, v63);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v53 = v100;
      sub_1E623DC0C(v64, v100, type metadata accessor for AppAction);
    }

    else
    {
      LOBYTE(v106) = 0;
      sub_1E623CCBC();
      v51 = v34;
      sub_1E65E6A68();
      v52 = v91;
      (*(v80 + 8))(v51, v81);
      (*(v93 + 8))(v15, v38);
      swift_unknownObjectRelease();
      v53 = v100;
      swift_storeEnumTagMultiPayload();
    }

    v54 = v99;
  }

  else if (v41 == 2)
  {
    LOBYTE(v106) = 2;
    sub_1E623CC14();
    v55 = v36;
    sub_1E65E6A68();
    v56 = v86;
    v57 = sub_1E65E6AB8();
    v58 = v93;
    v66 = v57;
    (*(v85 + 8))(v55, v56);
    (*(v58 + 8))(v15, v38);
    swift_unknownObjectRelease();
    v67 = v77;
    *v77 = v66 & 1;
    swift_storeEnumTagMultiPayload();
    v53 = v100;
    sub_1E623DC0C(v67, v100, type metadata accessor for AppAction);
    v54 = v99;
    v52 = v91;
  }

  else
  {
    if (v41 == 3)
    {
      LOBYTE(v106) = 3;
      sub_1E623CBC0();
      v42 = v90;
      sub_1E65E6A68();
      sub_1E5DF6CE4();
      v43 = v87;
      sub_1E65E6AD8();
      v44 = v93;
      (*(v88 + 8))(v42, v43);
      (*(v44 + 8))(v15, v38);
      swift_unknownObjectRelease();
      v68 = v78;
      *v78 = v106;
    }

    else
    {
      LOBYTE(v106) = 4;
      sub_1E623CB18();
      v59 = v37;
      sub_1E65E6A68();
      v60 = v38;
      type metadata accessor for CGRect(0);
      LOBYTE(v103) = 0;
      sub_1E623DC74(&qword_1ED076F00, type metadata accessor for CGRect);
      v61 = v82;
      sub_1E65E6AD8();
      v62 = v93;
      v96 = v107;
      v97 = v106;
      LOBYTE(v103) = 1;
      v69 = sub_1E65E6AB8();
      v70 = v89;
      v71 = v69;
      LOBYTE(v103) = 2;
      sub_1E5F8BF70();
      sub_1E65E6AD8();
      v72 = v105;
      type metadata accessor for UIEdgeInsets(0);
      v102 = 3;
      sub_1E623DC74(&qword_1ED0751D8, type metadata accessor for UIEdgeInsets);
      sub_1E65E6AD8();
      v90 = v104;
      v94 = v103;
      v101 = 4;
      sub_1E623DBB8();
      sub_1E65E6A98();
      (*(v70 + 8))(v59, v61);
      (*(v62 + 8))(v15, v60);
      swift_unknownObjectRelease();
      v73 = v102;
      v68 = v76;
      v74 = v96;
      *v76 = v97;
      *(v68 + 16) = v74;
      *(v68 + 32) = v71 & 1;
      *(v68 + 40) = v72;
      v75 = v90;
      *(v68 + 48) = v94;
      *(v68 + 64) = v75;
      *(v68 + 80) = v73;
    }

    swift_storeEnumTagMultiPayload();
    v53 = v100;
    sub_1E623DC0C(v68, v100, type metadata accessor for AppAction);
    v54 = v99;
    v52 = v91;
  }

  sub_1E623DC0C(v53, v52, type metadata accessor for AppAction);
  v49 = v54;
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

unint64_t sub_1E623DBB8()
{
  result = qword_1ED076F08;
  if (!qword_1ED076F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F08);
  }

  return result;
}

uint64_t sub_1E623DC0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E623DC74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Blackbeard9AppActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowsingIdentity(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppAction();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v49 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F40, &qword_1E65F8F80);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v49 - v24;
  v26 = &v49 + *(v23 + 56) - v24;
  sub_1E623CAB4(a1, &v49 - v24);
  sub_1E623CAB4(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1E623CAB4(v25, v12);
        v28 = LOBYTE(v12[2].f64[0]);
        v29 = v12[2].f64[1];
        v30 = v12[4];
        v51 = v12[3];
        v52 = v30;
        v31 = LOBYTE(v12[5].f64[0]);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v55 = *v12->f64;
          v56 = *v26;
          v32 = v26[32];
          v33 = *(v26 + 5);
          v34 = *(v26 + 4);
          v49 = *(v26 + 3);
          v50 = v34;
          v35 = v26[80];
          if (!CGRectEqualToRect(v55, v56) || v28 != v32 || v29 != v33 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v51, v49), vceqq_f64(v52, v50)))) & 1) == 0)
          {
            goto LABEL_60;
          }

          if (v31 == 12)
          {
            if (v35 != 12)
            {
              goto LABEL_60;
            }
          }

          else if (v35 == 12 || (sub_1E65E07D8() & 1) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_56;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_56;
      }

      goto LABEL_26;
    }

    sub_1E623CAB4(v25, v15);
    v36 = *v15;
    v37 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1E5E0476C(v36, v37);
      goto LABEL_26;
    }

    v38 = 0x65726F6C707865;
    v39 = *v26;
    v40 = *(v26 + 1);
    if (v37 > 2)
    {
      if (v37 == 3)
      {
        v41 = 0xE600000000000000;
        v42 = 0x686372616573;
        goto LABEL_38;
      }

      if (v37 != 4)
      {
        if (v37 == 5)
        {
          v41 = 0xE500000000000000;
          v42 = 0x736E616C70;
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v41 = 0xE600000000000000;
      v42 = 0x7478654E7075;
    }

    else
    {
      if (!v37)
      {
        v41 = 0xE700000000000000;
        v42 = 0x65726F6C707865;
        goto LABEL_38;
      }

      if (v37 != 1)
      {
        if (v37 == 2)
        {
          v41 = 0xE700000000000000;
          v42 = 0x7972617262696CLL;
          goto LABEL_38;
        }

LABEL_35:
        v53 = 0x7974696C61646F6DLL;
        v54 = 0xE90000000000003ALL;
        MEMORY[0x1E694D7C0](v36, v37);
        sub_1E5E0476C(v36, v37);
        v38 = 0x65726F6C707865;
        v42 = v53;
        v41 = v54;
        goto LABEL_38;
      }

      v41 = 0xE600000000000000;
      v42 = 0x756F59726F66;
    }

LABEL_38:
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v45 = 0xE600000000000000;
          v38 = 0x686372616573;
          goto LABEL_52;
        case 4:
          v45 = 0xE600000000000000;
          v38 = 0x7478654E7075;
          goto LABEL_52;
        case 5:
          v45 = 0xE500000000000000;
          v38 = 0x736E616C70;
          goto LABEL_52;
      }
    }

    else
    {
      switch(v40)
      {
        case 0:
          v45 = 0xE700000000000000;
          goto LABEL_52;
        case 1:
          v45 = 0xE600000000000000;
          v38 = 0x756F59726F66;
          goto LABEL_52;
        case 2:
          v45 = 0xE700000000000000;
          v38 = 0x7972617262696CLL;
LABEL_52:
          if (v42 == v38 && v41 == v45)
          {
          }

          else
          {
            v47 = sub_1E65E6C18();

            if ((v47 & 1) == 0)
            {
LABEL_60:
              sub_1E5E006D4(v25, type metadata accessor for AppAction);
              goto LABEL_27;
            }
          }

LABEL_56:
          sub_1E5E006D4(v25, type metadata accessor for AppAction);
          v44 = 1;
          return v44 & 1;
      }
    }

    v53 = 0x7974696C61646F6DLL;
    v54 = 0xE90000000000003ALL;
    v46 = v42;
    MEMORY[0x1E694D7C0](v39, v40, 0x65726F6C707865);
    sub_1E5E0476C(v39, v40);
    v42 = v46;
    v38 = v53;
    v45 = v54;
    goto LABEL_52;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E623CAB4(v25, v20);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1E623DC0C(v26, v7, type metadata accessor for BrowsingIdentity);
      v44 = _s10Blackbeard16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(v20, v7);
      sub_1E5E006D4(v7, type metadata accessor for BrowsingIdentity);
      sub_1E5E006D4(v20, type metadata accessor for BrowsingIdentity);
      sub_1E5E006D4(v25, type metadata accessor for AppAction);
      return v44 & 1;
    }

    sub_1E5E006D4(v20, type metadata accessor for BrowsingIdentity);
    goto LABEL_26;
  }

  sub_1E623CAB4(v25, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_26:
    sub_1E623EE70(v25);
LABEL_27:
    v44 = 0;
    return v44 & 1;
  }

  v43 = *v18 ^ *v26;
  sub_1E5E006D4(v25, type metadata accessor for AppAction);
  v44 = v43 ^ 1;
  return v44 & 1;
}

void sub_1E623E358(uint64_t a1)
{
  if (!qword_1EE2D4540)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for CGRect(255);
    type metadata accessor for UIEdgeInsets(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F10, &qword_1E65F88C8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D4540);
    }
  }
}

unint64_t sub_1E623E50C()
{
  result = qword_1ED076F18;
  if (!qword_1ED076F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F18);
  }

  return result;
}

unint64_t sub_1E623E564()
{
  result = qword_1ED076F20;
  if (!qword_1ED076F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F20);
  }

  return result;
}

unint64_t sub_1E623E5BC()
{
  result = qword_1ED076F28;
  if (!qword_1ED076F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F28);
  }

  return result;
}

unint64_t sub_1E623E614()
{
  result = qword_1ED076F30;
  if (!qword_1ED076F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F30);
  }

  return result;
}

unint64_t sub_1E623E66C()
{
  result = qword_1ED076F38;
  if (!qword_1ED076F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F38);
  }

  return result;
}

unint64_t sub_1E623E6C4()
{
  result = qword_1EE2D74D8;
  if (!qword_1EE2D74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74D8);
  }

  return result;
}

unint64_t sub_1E623E71C()
{
  result = qword_1EE2D74E0;
  if (!qword_1EE2D74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74E0);
  }

  return result;
}

unint64_t sub_1E623E774()
{
  result = qword_1EE2D7478;
  if (!qword_1EE2D7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7478);
  }

  return result;
}

unint64_t sub_1E623E7CC()
{
  result = qword_1EE2D7480;
  if (!qword_1EE2D7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7480);
  }

  return result;
}

unint64_t sub_1E623E824()
{
  result = qword_1EE2D7498;
  if (!qword_1EE2D7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7498);
  }

  return result;
}

unint64_t sub_1E623E87C()
{
  result = qword_1EE2D74A0;
  if (!qword_1EE2D74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74A0);
  }

  return result;
}

unint64_t sub_1E623E8D4()
{
  result = qword_1EE2D7488;
  if (!qword_1EE2D7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7488);
  }

  return result;
}

unint64_t sub_1E623E92C()
{
  result = qword_1EE2D7490;
  if (!qword_1EE2D7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7490);
  }

  return result;
}

unint64_t sub_1E623E984()
{
  result = qword_1EE2D74A8;
  if (!qword_1EE2D74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74A8);
  }

  return result;
}

unint64_t sub_1E623E9DC()
{
  result = qword_1EE2D74B0;
  if (!qword_1EE2D74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74B0);
  }

  return result;
}

unint64_t sub_1E623EA34()
{
  result = qword_1EE2D74C0;
  if (!qword_1EE2D74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74C0);
  }

  return result;
}

unint64_t sub_1E623EA8C()
{
  result = qword_1EE2D74C8;
  if (!qword_1EE2D74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D74C8);
  }

  return result;
}

uint64_t sub_1E623EAE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xEB00000000646568;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E6614DF0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6614E10 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6614E30 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x647055656E656373 && a2 == 0xEB00000000657461)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E623ECA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646E756F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617274726F507369 && a2 == 0xEA00000000007469 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C6163 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6614E50 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E623EE70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F40, &qword_1E65F8F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E623EEE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v62 = a5;
  v64 = a4;
  v71 = a1;
  v72 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = v57 - v9;
  v10 = sub_1E65D7848();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC0, &qword_1E65FAB40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = (v57 - v15);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v60 = *(v58 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v65 = (v57 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FE0, &qword_1E65F9198);
  v68 = *(v27 - 8);
  v69 = v27;
  v28 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v57 - v29;
  v57[1] = *v5;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v31 = v71;
  v73 = v71;
  v74 = a2;
  sub_1E65E4D78();
  (*(v23 + 8))(v26, v22);
  v32 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65F32F0;
  *v21 = v31;
  *(v21 + 1) = a2;
  v34 = v31;
  v21[16] = 1;
  swift_storeEnumTagMultiPayload();

  v35 = v62;
  v36 = sub_1E649226C(v21, v64, v62);
  sub_1E5DFE50C(v21, &qword_1ED073950, &unk_1E65F4360);
  *(inited + 32) = v36;
  v63 = inited + 32;
  *v21 = v34;
  *(v21 + 1) = a2;
  v21[16] = 1;
  v37 = v35;
  swift_storeEnumTagMultiPayload();
  v57[0] = a2;

  v57[2] = v32;
  v38 = sub_1E6492AD8(v21, v72, v35);
  v39 = v30;
  sub_1E5DFE50C(v21, &qword_1ED073950, &unk_1E65F4360);
  *(inited + 40) = v38;
  swift_getKeyPath();
  v40 = v61;
  v41 = v58;
  sub_1E65E4EC8();
  v42 = v59;

  v64 = v39;
  sub_1E62DA2C8(v40, v42);
  (*(v66 + 8))(v40, v67);
  v43 = *(v60 + 48);
  if (v43(v42, 1, v41) == 1)
  {
    v44 = v65;
    v45 = v57[0];
    *v65 = v71;
    v44[1] = v45;
    *(v44 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    v46 = v43(v42, 1, v41);

    if (v46 != 1)
    {
      sub_1E5DFE50C(v42, &qword_1ED077DC0, &qword_1E65FAB40);
    }
  }

  else
  {
    v44 = v65;
    sub_1E5FAB460(v42, v65, &unk_1ED0776E0, &qword_1E65EDC00);
  }

  v47 = sub_1E6200DD8(v44, v72, v37);
  if (qword_1ED071988 != -1)
  {
    swift_once();
  }

  v48 = qword_1ED0962F8;

  v49 = sub_1E63886EC(v48, v47, sub_1E5E278AC, 0, sub_1E5F88C58, 0);
  v50 = sub_1E65E60A8();
  v51 = v70;
  (*(*(v50 - 8) + 56))(v70, 1, 1, v50);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v47;

  sub_1E64B80F8(0, 0, v51, &unk_1E65F91E8, v52);

  sub_1E5DFE50C(v44, &unk_1ED0776E0, &qword_1E65EDC00);
  *(inited + 48) = v49;
  sub_1E5F9AF8C(inited);
  v54 = v53;
  swift_setDeallocating();
  v55 = *(inited + 16);
  swift_arrayDestroy();
  (*(v68 + 8))(v64, v69);
  return v54;
}

char *sub_1E623F674(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v133 = a4;
  v158 = a3;
  v126 = a1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F88, &qword_1E65F90B8);
  v150 = *(v149 - 8);
  v8 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v145 = &v112 - v9;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v148 = *(v147 - 8);
  v10 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v142 = &v112 - v11;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v146 = *(v144 - 8);
  v12 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v141 = &v112 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F90, &qword_1E65F90C0);
  v138 = *(v137 - 8);
  v14 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v134 = &v112 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F98, &qword_1E65F90C8);
  v140 = *(v139 - 8);
  v16 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v112 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FA0, &qword_1E65F90D0);
  v19 = *(v18 - 8);
  v143 = v18 - 8;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v136 = &v112 - v21;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v22 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = (&v112 - v23);
  v155 = sub_1E65D76F8();
  v123 = *(v155 - 8);
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v159 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v129 = *(v130 - 8);
  v25 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v156 = &v112 - v26;
  v27 = type metadata accessor for AppComposer();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v121 = (&v112 - v33);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v127 = *(v157 - 8);
  v34 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v153 = &v112 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v116 = *(v36 - 8);
  v154 = *(v116 + 64);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v114 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v112 - v39;
  v151 = &v112 - v39;
  *v40 = a1;
  *(v40 + 1) = a2;
  v122 = a2;
  v40[16] = 1;
  swift_storeEnumTagMultiPayload();
  v125 = *v5;
  sub_1E5E1DEAC(v5, v30);
  v41 = *(v28 + 80);
  v42 = ((v41 + 16) & ~v41) + v29;
  v43 = (v41 + 16) & ~v41;
  v44 = v41 | 7;
  v45 = swift_allocObject();
  sub_1E5E1FA80(v30, v45 + v43);
  sub_1E5E1DEAC(v5, v30);
  v46 = swift_allocObject();
  sub_1E5E1FA80(v30, v46 + v43);
  v152 = v5;
  sub_1E5E1DEAC(v5, v30);
  v117 = v42;
  v118 = v44;
  v47 = swift_allocObject();
  v119 = v43;
  sub_1E5E1FA80(v30, v47 + v43);
  v48 = swift_allocObject();
  *(v48 + 16) = &unk_1E65F90E8;
  *(v48 + 24) = v47;
  v115 = v30;
  sub_1E5E1DEAC(v5, v30);
  v49 = swift_allocObject();
  sub_1E5E1FA80(v30, v49 + v43);
  v50 = sub_1E604BABC();

  v128 = v50;
  sub_1E65DED58();
  sub_1E65DEAC8();
  v51 = v151;
  v52 = v114;
  sub_1E5DFD1CC(v151, v114, &qword_1ED072AA8, &unk_1E65FA900);
  v53 = v123;
  v54 = *(v123 + 16);
  v120 = v123 + 16;
  v121 = v54;
  v55 = v159;
  v56 = v155;
  v54(v159, v158, v155);
  v116 = *(v116 + 80);
  v57 = (v116 + 16) & ~v116;
  v113 = v57 + v154;
  v58 = (v57 + v154 + *(v53 + 80)) & ~*(v53 + 80);
  v59 = v58 + v124;
  v60 = swift_allocObject();
  sub_1E5FAB460(v52, v60 + v57, &qword_1ED072AA8, &unk_1E65FA900);
  (*(v53 + 32))(v60 + v58, v55, v56);
  *(v60 + v59) = 0;
  v61 = v52;
  sub_1E5DFD1CC(v51, v52, &qword_1ED072AA8, &unk_1E65FA900);
  v62 = swift_allocObject();
  sub_1E5FAB460(v52, v62 + v57, &qword_1ED072AA8, &unk_1E65FA900);
  type metadata accessor for AppFeature();
  sub_1E624525C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v124 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170);
  sub_1E65E4DE8();
  v63 = v115;
  sub_1E5E1DEAC(v152, v115);
  v64 = v133;
  v65 = *v133;
  v66 = v133[3];
  v67 = v133[5];
  v113 = v133[7];
  v123 = v133[9];
  v68 = v61;
  sub_1E5DFD1CC(v51, v61, &qword_1ED072AA8, &unk_1E65FA900);
  v69 = (v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + v116 + 80) & ~v116;
  v71 = swift_allocObject();
  sub_1E5E1FA80(v63, v71 + v119);
  v72 = (v71 + v69);
  v73 = *(v64 + 3);
  v72[2] = *(v64 + 2);
  v72[3] = v73;
  v72[4] = *(v64 + 4);
  v74 = *(v64 + 1);
  *v72 = *v64;
  v72[1] = v74;
  sub_1E5FAB460(v68, v71 + v70, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1E6245394;
  *(v75 + 24) = v71;

  v76 = v153;
  v77 = v156;
  v78 = v157;
  v154 = sub_1E65E4F08();

  (*(v129 + 8))(v77, v130);
  (*(v127 + 8))(v76, v78);
  sub_1E5DFE50C(v151, &qword_1ED072AA8, &unk_1E65FA900);
  v79 = v126;
  v80 = v131;
  v81 = v122;
  *v131 = v126;
  *(v80 + 8) = v81;
  *(v80 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v82 = v81;

  v83 = v158;
  v84 = v152;
  v85 = sub_1E6200DD8(v80, v158, v64);
  sub_1E5DFE50C(v80, &unk_1ED0776E0, &qword_1E65EDC00);
  v121(v159, v83, v155);
  v160 = v84;
  v161 = v79;
  v162 = v82;
  v163 = v83;
  v164 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D70, &qword_1E65F9100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FA8, &qword_1E65F9108);
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077D80, &qword_1E65EDC48);
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v88 = sub_1E604C584();
  v89 = sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
  v165 = v86;
  v166 = v87;
  v167 = v88;
  v168 = v89;
  swift_getOpaqueTypeConformance2();
  sub_1E6245084();
  v90 = v134;
  sub_1E65E45C8();
  v91 = sub_1E5FED46C(&qword_1ED076FC8, &qword_1ED076F90, &qword_1E65F90C0);
  v92 = sub_1E62438F0();
  v93 = v135;
  v94 = v137;
  sub_1E65E47F8();
  (*(v138 + 8))(v90, v94);
  v165 = v94;
  v166 = &type metadata for NavigationBarButtonStyle;
  v167 = v91;
  v168 = v92;
  swift_getOpaqueTypeConformance2();
  sub_1E6245140();
  v95 = v136;
  v96 = v139;
  sub_1E65E4948();
  (*(v140 + 8))(v93, v96);
  LODWORD(v96) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FD0, &qword_1E65F9118) + 52);
  v97 = v154;

  v98 = v141;
  v99 = v97;
  sub_1E65DEE28();
  sub_1E604C89C();

  v100 = v142;
  sub_1E65DE568();
  v101 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
  v102 = v145;
  v103 = v144;
  MEMORY[0x1E69482C0](v98, v144, v101);
  v165 = v103;
  v166 = v101;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110);
  v104 = v100;
  v105 = v149;
  v106 = v147;
  sub_1E65E08A8();
  (*(v150 + 8))(v102, v105);
  (*(v148 + 8))(v104, v106);
  (*(v146 + 8))(v98, v103);
  v107 = swift_allocObject();
  *(v107 + 16) = v99;
  *(v107 + 24) = v85;
  v108 = (v95 + *(v143 + 44));
  *v108 = sub_1E6245194;
  v108[1] = v107;
  v109 = type metadata accessor for BarButtonItem();
  v108[2] = 0;
  v108[3] = 0;
  v110 = objc_allocWithZone(v109);
  return sub_1E625BFB4(v159, v95);
}

char *sub_1E62408B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v178 = a4;
  v224 = a3;
  v171 = a1;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077C90, &qword_1E65F8F88);
  v207 = *(v208 - 8);
  v7 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v205 = v160 - v8;
  v204 = sub_1E65DED38();
  v206 = *(v204 - 8);
  v9 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v203 = v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v202 = *(v201 - 8);
  v11 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v200 = v160 - v12;
  v197 = sub_1E65E3F88();
  v198 = *(v197 - 8);
  v13 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v196 = v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v181 = *(v15 - 8);
  v180 = *(v181 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v179 = v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v222 = v160 - v18;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v186 = *(v188 - 8);
  v187 = *(v186 + 64);
  v19 = MEMORY[0x1EEE9AC00](v188);
  v185 = v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v223 = v160 - v21;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v184 = *(v177 - 8);
  v183 = *(v184 + 64);
  v22 = MEMORY[0x1EEE9AC00](v177);
  v182 = v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v232 = (v160 - v24);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F48, &qword_1E65F8F90);
  v192 = *(v191 - 8);
  v25 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v189 = v160 - v26;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F50, &qword_1E65F8F98);
  v194 = *(v193 - 8);
  v27 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v190 = v160 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F58, &qword_1E65F8FA0);
  v30 = *(v29 - 8);
  v195 = v29 - 8;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29 - 8);
  v199 = v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v226 = v160 - v34;
  v230 = sub_1E65D76F8();
  v225 = *(v230 - 8);
  v220 = *(v225 + 64);
  v35 = MEMORY[0x1EEE9AC00](v230);
  v219 = v160 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v231 = v160 - v37;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v173 = *(v174 - 8);
  v38 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v214 = v160 - v39;
  v40 = type metadata accessor for AppComposer();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40 - 8);
  v218 = v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v160 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v217 = v160 - v48;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v172 = *(v212 - 8);
  v49 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v213 = v160 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v210 = *(v51 - 8);
  v211 = *(v210 + 64);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v209 = v160 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v55 = v160 - v54;
  v227 = v160 - v54;
  *v55 = a1;
  *(v55 + 1) = a2;
  v169 = a2;
  v55[16] = 1;
  swift_storeEnumTagMultiPayload();
  v170 = *v4;
  sub_1E5E1DEAC(v4, v45);
  v56 = *(v41 + 80);
  v57 = ((v56 + 16) & ~v56) + v42;
  v58 = (v56 + 16) & ~v56;
  v59 = v56 | 7;
  v60 = swift_allocObject();
  sub_1E5E1FA80(v45, v60 + v58);
  sub_1E5E1DEAC(v4, v45);
  v61 = swift_allocObject();
  sub_1E5E1FA80(v45, v61 + v58);
  v233 = v4;
  sub_1E5E1DEAC(v4, v45);
  v234 = v57;
  v228 = v59;
  v62 = swift_allocObject();
  v229 = v58;
  v215 = v45;
  sub_1E5E1FA80(v45, v62 + v58);
  v63 = swift_allocObject();
  *(v63 + 16) = &unk_1E65F7190;
  *(v63 + 24) = v62;
  sub_1E5E1DEAC(v4, v45);
  v64 = swift_allocObject();
  sub_1E5E1FA80(v45, v64 + v58);
  v65 = sub_1E604BABC();

  v221 = v65;
  sub_1E65DED58();
  sub_1E65DEAC8();
  v66 = v209;
  sub_1E5DFD1CC(v227, v209, &qword_1ED072AA8, &unk_1E65FA900);
  v67 = v225;
  v68 = *(v225 + 16);
  v217 = (v225 + 16);
  v216 = v68;
  v69 = v230;
  v70 = v231;
  v68(v231, v224, v230);
  v161 = *(v210 + 80);
  v71 = (v161 + 16) & ~v161;
  v210 = v71 + v211;
  v176 = v161 | 7;
  v166 = *(v67 + 80);
  v72 = (v71 + v211 + v166) & ~v166;
  v73 = v72 + v220;
  v74 = swift_allocObject();
  sub_1E5FAB460(v66, v74 + v71, &qword_1ED072AA8, &unk_1E65FA900);
  v75 = *(v67 + 32);
  v167 = v67 + 32;
  v168 = v75;
  v75(v74 + v72, v70, v69);
  *(v74 + v73) = 0;
  v76 = v227;
  sub_1E5DFD1CC(v227, v66, &qword_1ED072AA8, &unk_1E65FA900);
  v77 = swift_allocObject();
  sub_1E5FAB460(v66, v77 + v71, &qword_1ED072AA8, &unk_1E65FA900);
  v176 = type metadata accessor for AppFeature();
  v175 = sub_1E624525C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v160[1] = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170);
  sub_1E65E4DE8();
  v78 = v215;
  sub_1E5E1DEAC(v233, v215);
  v79 = v178;
  v162 = *v178;
  v163 = v178[3];
  v164 = v178[5];
  v165 = v178[7];
  v210 = v178[9];
  v80 = v76;
  v81 = v209;
  sub_1E5DFD1CC(v80, v209, &qword_1ED072AA8, &unk_1E65FA900);
  v82 = (v234 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + v161 + 80) & ~v161;
  v84 = swift_allocObject();
  sub_1E5E1FA80(v78, v84 + v229);
  v85 = (v84 + v82);
  v86 = v79[3];
  v85[2] = v79[2];
  v85[3] = v86;
  v85[4] = v79[4];
  v87 = v79[1];
  *v85 = *v79;
  v85[1] = v87;
  sub_1E5FAB460(v81, v84 + v83, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1E62423E8;
  *(v88 + 24) = v84;

  v89 = v213;
  v90 = v214;
  v91 = v212;
  v211 = sub_1E65E4F08();

  (*(v173 + 8))(v90, v174);
  (*(v172 + 8))(v89, v91);
  sub_1E5DFE50C(v227, &qword_1ED072AA8, &unk_1E65FA900);
  v92 = v233;
  sub_1E5E1DEAC(v233, v78);
  v93 = v230;
  v94 = v224;
  v95 = v216;
  v216(v231, v224, v230);
  v96 = v232;
  v97 = v169;
  *v232 = v171;
  v96[1] = v97;
  *(v96 + 16) = 1;
  swift_storeEnumTagMultiPayload();

  v98 = v222;
  sub_1E6184404(v222);
  v99 = v92;
  v100 = v218;
  sub_1E5E1DEAC(v99, v218);
  v101 = v98;
  v102 = v179;
  sub_1E5DFD1CC(v101, v179, &qword_1ED073950, &unk_1E65F4360);
  v103 = v219;
  v95(v219, v94, v93);
  v104 = (v234 + *(v181 + 80)) & ~*(v181 + 80);
  v105 = (v180 + v166 + v104) & ~v166;
  v106 = (v220 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  sub_1E5E1FA80(v100, v107 + v229);
  sub_1E5FAB460(v102, v107 + v104, &qword_1ED073950, &unk_1E65F4360);
  v168(v107 + v105, v103, v93);
  v108 = (v107 + v106);
  v109 = v79[3];
  v108[2] = v79[2];
  v108[3] = v109;
  v108[4] = v79[4];
  v110 = v79[1];
  *v108 = *v79;
  v108[1] = v110;
  v111 = (v107 + ((v106 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v111 = nullsub_1;
  v111[1] = 0;
  swift_unknownObjectRetain();

  v112 = v223;
  sub_1E65DE518();
  sub_1E5DFE50C(v222, &qword_1ED073950, &unk_1E65F4360);
  v113 = v218;
  sub_1E5E1DEAC(v233, v218);
  v114 = v182;
  sub_1E5DFD1CC(v232, v182, &qword_1ED073958, &qword_1E65EDCD0);
  v115 = (v234 + *(v184 + 80)) & ~*(v184 + 80);
  v116 = swift_allocObject();
  v117 = v229;
  sub_1E5E1FA80(v113, v116 + v229);
  sub_1E5FAB460(v114, v116 + v115, &qword_1ED073958, &qword_1E65EDCD0);
  v118 = v186;
  v119 = v185;
  v120 = v188;
  (*(v186 + 16))(v185, v112, v188);
  v121 = (*(v118 + 80) + 16) & ~*(v118 + 80);
  v122 = swift_allocObject();
  (*(v118 + 32))(v122 + v121, v119, v120);
  sub_1E5E1DEAC(v233, v113);
  v123 = swift_allocObject();
  sub_1E5E1FA80(v113, v123 + v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F60, &qword_1E65F8FA8);
  sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0);
  swift_getOpaqueTypeConformance2();
  v124 = v189;
  sub_1E65DE8A8();
  (*(v118 + 8))(v223, v120);
  sub_1E5DFE50C(v232, &qword_1ED073958, &qword_1E65EDCD0);
  v125 = v196;
  sub_1E65E3F78();
  v126 = sub_1E5FED46C(&qword_1ED076F68, &qword_1ED076F48, &qword_1E65F8F90);
  v127 = sub_1E624525C(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
  v128 = v190;
  v129 = v191;
  v130 = v197;
  sub_1E65E47D8();
  (*(v198 + 8))(v125, v130);
  (*(v192 + 8))(v124, v129);
  v237 = v129;
  v238 = v130;
  v239 = v126;
  v240 = v127;
  swift_getOpaqueTypeConformance2();
  sub_1E62438F0();
  v131 = v226;
  v132 = v193;
  sub_1E65E47F8();
  (*(v194 + 8))(v128, v132);
  LODWORD(v126) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F78, &qword_1E65F8FB0) + 52);
  v133 = v211;

  v134 = v200;
  sub_1E65DEE28();
  v135 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120);
  v136 = v131;
  v137 = v201;
  MEMORY[0x1E69482C0](v134, v201, v135);
  (*(v202 + 8))(v134, v137);
  v138 = (v131 + *(v195 + 44));
  *v138 = sub_1E6243944;
  v138[1] = v133;
  v139 = type metadata accessor for DynamicBarButtonItem();
  v138[2] = 0;
  v138[3] = 0;
  v140 = objc_allocWithZone(v139);
  v141 = v215;
  v142 = *v215;
  v143 = v203;
  sub_1E65DED28();
  sub_1E624525C(&qword_1EE2D6820, MEMORY[0x1E699CD98]);
  v144 = v205;
  v145 = v204;
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v207 + 8))(v144, v208);
  (*(v206 + 8))(v143, v145);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  v147 = *(v146 + 48);
  v148 = *(v146 + 52);
  swift_allocObject();
  *&v140[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver] = sub_1E65E4D18();
  v149 = v219;
  v150 = v230;
  v151 = v231;
  v216(v219, v231, v230);
  v152 = v199;
  sub_1E5ED071C(v136, v199);
  v153 = sub_1E625BFDC(v149, v152);
  v154 = OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver;
  v155 = *&v153[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver];
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = v153;

  sub_1E65E4D08();

  v157 = *&v153[v154];
  v235 = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E624525C(&qword_1EE2D6840, MEMORY[0x1E699CD20]);
  sub_1E65E4D08();

  v158 = *&v153[v154];

  sub_1E65E4CF8();

  sub_1E624395C(v141);

  sub_1E5ED0864(v226);
  (*(v225 + 8))(v151, v150);
  return v156;
}

uint64_t sub_1E62423EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FC0, &qword_1E65F9110);
  sub_1E5FED46C(&qword_1ED076FB8, &qword_1ED076FC0, &qword_1E65F9110);
  return sub_1E65E4AF8();
}

uint64_t sub_1E6242498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X8>)
{
  v72 = a5;
  v100 = a4;
  v71 = a3;
  v81 = a2;
  v98 = a1;
  v91 = a6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v87 = *(v85 - 8);
  v86 = *(v87 + 64);
  v8 = MEMORY[0x1EEE9AC00](v85);
  v84 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = (&v71 - v10);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v102 = *(v90 - 8);
  v11 = v102[8];
  v12 = MEMORY[0x1EEE9AC00](v90);
  v89 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v71 - v14;
  v92 = sub_1E65D76F8();
  v105 = *(v92 - 8);
  v15 = v105[8];
  MEMORY[0x1EEE9AC00](v92);
  v104 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppComposer();
  v78 = *(v16 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v77 = *(v19 - 8);
  v20 = *(v77 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v73 = (&v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v71 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v101 = *(v83 - 8);
  v24 = v101[8];
  v25 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v103 = &v71 - v27;
  *v23 = a2;
  *(v23 + 1) = a3;
  v23[16] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DEAC(v98, v18);
  sub_1E5DFD1CC(v23, &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v28 = v105;
  v29 = v105[2];
  v79 = v105 + 2;
  v80 = v29;
  v30 = v92;
  v29(v104, v100, v92);
  v31 = v72;
  v32 = v72[3];
  v93 = *v72;
  v94 = v32;
  v33 = v72[7];
  v95 = v72[5];
  v96 = v33;
  v97 = v72[9];
  v34 = *(v78 + 80);
  v35 = (v34 + 16) & ~v34;
  v78 = v35 + v17;
  v75 = v35;
  v36 = (v35 + v17 + *(v77 + 80)) & ~*(v77 + 80);
  v76 = *(v28 + 80);
  v37 = (v20 + v76 + v36) & ~v76;
  v74 = v34 | v76 | 7;
  v77 = v15 + 7;
  v38 = (v15 + 7 + v37) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_1E5E1FA80(v18, v39 + v35);
  sub_1E5FAB460(v73, v39 + v36, &qword_1ED073950, &unk_1E65F4360);
  v40 = v105[4];
  v105 += 4;
  v73 = v40;
  v40(v39 + v37, v104, v30);
  v41 = (v39 + v38);
  v42 = v31[3];
  v41[2] = v31[2];
  v41[3] = v42;
  v41[4] = v31[4];
  v43 = v31[1];
  *v41 = *v31;
  v41[1] = v43;
  v44 = (v39 + ((v38 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v44 = nullsub_1;
  v44[1] = 0;
  sub_1E604BABC();
  v45 = v71;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  sub_1E65DE518();
  sub_1E5DFE50C(v23, &qword_1ED073950, &unk_1E65F4360);
  v46 = v99;
  *v99 = v81;
  v46[1] = v45;
  *(v46 + 16) = 1;
  v47 = v46;
  swift_storeEnumTagMultiPayload();
  v48 = v18;
  sub_1E5E1DEAC(v98, v18);
  v49 = v84;
  sub_1E5DFD1CC(v47, v84, &unk_1ED0776E0, &qword_1E65EDC00);
  v50 = v104;
  v51 = v92;
  v80(v104, v100, v92);
  v52 = (v78 + *(v87 + 80)) & ~*(v87 + 80);
  v53 = (v86 + v76 + v52) & ~v76;
  v54 = (v77 + v53) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  sub_1E5E1FA80(v48, v55 + v75);
  sub_1E5FAB460(v49, v55 + v52, &unk_1ED0776E0, &qword_1E65EDC00);
  v73(v55 + v53, v50, v51);
  v56 = (v55 + v54);
  v57 = v31[3];
  v56[2] = v31[2];
  v56[3] = v57;
  v56[4] = v31[4];
  v58 = v31[1];
  *v56 = *v31;
  v56[1] = v58;
  sub_1E604C89C();
  swift_unknownObjectRetain();

  v59 = v88;
  sub_1E65DE4E8();
  sub_1E5DFE50C(v99, &unk_1ED0776E0, &qword_1E65EDC00);
  v60 = v101[2];
  v61 = v82;
  v62 = v83;
  v60(v82, v103, v83);
  v63 = v102[2];
  v65 = v89;
  v64 = v90;
  v63(v89, v59, v90);
  v66 = v91;
  v60(v91, v61, v62);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FD8, &qword_1E65F9190);
  v63(&v66[*(v67 + 48)], v65, v64);
  v68 = v102[1];
  v68(v59, v64);
  v69 = v101[1];
  v69(v103, v62);
  v68(v65, v64);
  return (v69)(v61, v62);
}

uint64_t sub_1E6242DE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - v2;
  v4 = sub_1E65E4548();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E49F8();
  sub_1E65E4498();
  sub_1E65E44B8();

  (*(v5 + 104))(v8, *MEMORY[0x1E6980EA8], v4);
  v10 = sub_1E65E4578();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v12 = sub_1E65E49C8();
  v13 = swift_getKeyPath();
  v17[2] = v9;
  v17[3] = v9;
  v17[4] = KeyPath;
  v17[5] = v10;
  v17[6] = v13;
  v17[7] = v12;
  v14 = *MEMORY[0x1E697E6E8];
  v15 = sub_1E65E3DD8();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_1E624525C(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
  result = sub_1E65E5B98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D80, &qword_1E65EDC48);
    sub_1E604C584();
    v17[1] = KeyPath;
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E65E4848();
    sub_1E5DFE50C(v3, &unk_1ED0776B0, &unk_1E65EDE50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E624310C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_1E64B80F8(0, 0, v7, &unk_1E65F9128, v9);
}

uint64_t sub_1E6243224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E6243244, 0, 0);
}

uint64_t sub_1E6243244()
{
  *(v0 + 60) = 0;
  *(v0 + 56) = 0;
  *(v0 + 62) = 1;
  *(v0 + 32) = sub_1E65E6058();
  *(v0 + 40) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62432EC, v2, v1);
}

uint64_t sub_1E62432EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  sub_1E65E4EE8();

  return MEMORY[0x1EEE6DFA0](sub_1E6243360, 0, 0);
}

uint64_t sub_1E6243360()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = 0;
  *(v0 + 48) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62433F0, v3, v2);
}

uint64_t sub_1E62433F0()
{
  v1 = v0[6];
  v2 = v0[3];

  sub_1E65E4EE8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E624345C()
{
  v0 = sub_1E65DEBD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63969B4();
  (*(v1 + 104))(v4, *MEMORY[0x1E699CD10], v0);
  return sub_1E65DEBA8();
}

uint64_t sub_1E624354C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1E64B80F8(0, 0, v5, &unk_1E65F90B0, v7);
}

uint64_t sub_1E6243678()
{
  *(v0 + 36) = 0;
  *(v0 + 32) = 0;
  *(v0 + 38) = 1;
  sub_1E65E6058();
  *(v0 + 24) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202C14, v2, v1);
}

uint64_t sub_1E624371C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E64495A4(v0 + v2, v5);
}

uint64_t sub_1E62437F4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E64495A8(v2);
}

uint64_t sub_1E6243870(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1E6448834(a1, v4);
}

unint64_t sub_1E62438F0()
{
  result = qword_1ED076F70;
  if (!qword_1ED076F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076F70);
  }

  return result;
}

uint64_t sub_1E624395C(uint64_t a1)
{
  v2 = type metadata accessor for AppComposer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E62439B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6243658(a1, v4, v5, v6);
}

uint64_t sub_1E6243A6C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6000CF4(a1, v1 + v5);
}

uint64_t sub_1E6243B44(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6034BC0(a1, v5);
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v8, *(v8 + 8), *(v8 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 2)
    {
      v14 = *(v10 + 8);

      v15 = *(v10 + 32);
    }

    else if (v11 == 1)
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v13 = sub_1E65D76A8();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }

    v16 = v10 + *(type metadata accessor for RemoveLibraryActionLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 == 2)
    {
      v20 = *(v16 + 8);

      v21 = *(v16 + 32);
    }

    else if (v17 == 1)
    {
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v19 = sub_1E65D76A8();
      (*(*(v19 - 8) + 8))(v16 + v18, v19);
    }
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v2 = *(v1 + 64);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 == 2)
    {
      v9 = *(v5 + 8);

      v10 = *(v5 + 32);
    }

    else if (v6 == 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v8 = sub_1E65D76A8();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }

    v11 = v5 + *(type metadata accessor for RemoveLibraryActionLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 == 2)
    {
      v15 = *(v11 + 8);

      v16 = *(v11 + 32);
    }

    else if (v12 == 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v14 = sub_1E65D76A8();
      (*(*(v14 - 8) + 8))(v11 + v13, v14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E62440DC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E60012AC(a1, a2, v6);
}

uint64_t objectdestroy_25Tm_0()
{
  v135 = type metadata accessor for AppComposer();
  v133 = *(*(v135 - 1) + 80);
  v1 = (v133 + 16) & ~v133;
  v130 = (*(*(v135 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900) - 8);
  v132 = *(v2 + 80);
  v131 = *(v2 + 64);
  v134 = v0;
  v127 = v0 + v1;
  v3 = *(v0 + v1);

  v4 = (v0 + v1 + v135[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v129 = type metadata accessor for AccountService();
  v128 = *(v129[-1].Description + 1);
  v128(&v4[v7], v129);
  v8 = v6[7];
  v126 = type metadata accessor for AppStateService();
  v125 = *(v126[-1].Description + 1);
  v125(&v4[v8], v126);
  v9 = v6[8];
  v124 = type metadata accessor for ArchivedSessionService();
  v123 = *(v124[-1].Description + 1);
  v123(&v4[v9], v124);
  v10 = v6[9];
  v122 = type metadata accessor for AssetService();
  v121 = *(v122[-1].Description + 1);
  v121(&v4[v10], v122);
  v11 = v6[10];
  v120 = type metadata accessor for AwardsService();
  v119 = *(v120[-1].Description + 1);
  v119(&v4[v11], v120);
  v12 = v6[11];
  v118 = type metadata accessor for BookmarkService();
  v117 = *(v118[-1].Description + 1);
  v117(&v4[v12], v118);
  v13 = v6[12];
  v116 = type metadata accessor for CatalogService();
  v115 = *(v116[-1].Description + 1);
  v115(&v4[v13], v116);
  v14 = v6[13];
  v114 = type metadata accessor for ConfigurationService();
  v113 = *(v114[-1].Description + 1);
  v113(&v4[v14], v114);
  v15 = v6[14];
  v112 = type metadata accessor for ContentAvailabilityService();
  v111 = *(v112[-1].Description + 1);
  v111(&v4[v15], v112);
  v16 = v6[15];
  v110 = type metadata accessor for EngagementService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v16], v110);
  v17 = v6[16];
  v108 = type metadata accessor for HealthDataService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v17], v108);
  v18 = v6[17];
  v106 = type metadata accessor for InteropService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v18], v106);
  v19 = v6[18];
  v104 = type metadata accessor for LocalizationService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v19], v104);
  v20 = v6[19];
  v102 = type metadata accessor for MarketingService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v20], v102);
  v21 = v6[20];
  v100 = type metadata accessor for MetricService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v21], v100);
  v22 = v6[21];
  v98 = type metadata accessor for PersonalizationService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v22], v98);
  v23 = v6[22];
  v96 = type metadata accessor for PlayerService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v23], v96);
  v24 = v6[23];
  v94 = type metadata accessor for PrivacyPreferenceService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v24], v94);
  v25 = v6[24];
  v92 = type metadata accessor for RecommendationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v25], v92);
  v26 = v6[25];
  v90 = type metadata accessor for RemoteBrowsingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v26], v90);
  v27 = v6[26];
  v88 = type metadata accessor for SearchService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v27], v88);
  v28 = v6[27];
  v86 = type metadata accessor for ServiceSubscriptionService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v28], v86);
  v29 = v6[28];
  v79 = type metadata accessor for SessionService();
  v84 = *(v79[-1].Description + 1);
  v84(&v4[v29], v79);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v83 = *(v31[-1].Description + 1);
  v83(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v82 = *(v33[-1].Description + 1);
  v82(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v81 = *(v35[-1].Description + 1);
  v81(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v80 = *(QueueService[-1].Description + 1);
  v80(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v78 = *(v44[-1].Description + 1);
  v78(&v4[v43], v44);
  v45 = *(v127 + v135[6]);

  v46 = (v127 + v135[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v128(&v49[v6[6]], v129);
  v125(&v49[v6[7]], v126);
  v123(&v49[v6[8]], v124);
  v121(&v49[v6[9]], v122);
  v119(&v49[v6[10]], v120);
  v117(&v49[v6[11]], v118);
  v115(&v49[v6[12]], v116);
  v113(&v49[v6[13]], v114);
  v111(&v49[v6[14]], v112);
  v109(&v49[v6[15]], v110);
  v107(&v49[v6[16]], v108);
  v105(&v49[v6[17]], v106);
  v103(&v49[v6[18]], v104);
  v101(&v49[v6[19]], v102);
  v99(&v49[v6[20]], v100);
  v97(&v49[v6[21]], v98);
  v95(&v49[v6[22]], v96);
  v93(&v49[v6[23]], v94);
  v91(&v49[v6[24]], v92);
  v89(&v49[v6[25]], v90);
  v87(&v49[v6[26]], v88);
  v85(&v49[v6[27]], v86);
  v84(&v49[v6[28]], v79);
  v83(&v49[v6[29]], v31);
  v82(&v49[v6[30]], v33);
  v81(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v80(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v78(&v49[v6[36]], v44);
  v56 = *(v127 + v135[8]);
  swift_unknownObjectRelease();
  if (*(v127 + v135[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v127 + v135[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = *(v134 + v130);
  swift_unknownObjectRelease();
  v59 = *(v134 + v130 + 24);

  v60 = *(v134 + v130 + 40);

  v61 = *(v134 + v130 + 56);

  v62 = *(v134 + v130 + 72);

  v63 = v134 + ((v130 + v132 + 80) & ~v132);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v63, *(v63 + 8), *(v63 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v65 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v66 = swift_getEnumCaseMultiPayload();
    if (v66 == 2)
    {
      v69 = *(v65 + 8);

      v70 = *(v65 + 32);
    }

    else if (v66 == 1)
    {
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v68 = sub_1E65D76A8();
      (*(*(v68 - 8) + 8))(v65 + v67, v68);
    }

    v71 = v65 + *(type metadata accessor for RemoveLibraryActionLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      v75 = *(v71 + 8);

      v76 = *(v71 + 32);
    }

    else if (v72 == 1)
    {
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v74 = sub_1E65D76A8();
      (*(*(v74 - 8) + 8))(v71 + v73, v74);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_1E6245084()
{
  result = qword_1ED076FB0;
  if (!qword_1ED076FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076FA8, &qword_1E65F9108);
    sub_1E5FED46C(&qword_1ED076FB8, &qword_1ED076FC0, &qword_1E65F9110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076FB0);
  }

  return result;
}

unint64_t sub_1E6245140()
{
  result = qword_1ED077D00;
  if (!qword_1ED077D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077D00);
  }

  return result;
}

uint64_t sub_1E624519C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6243224(a1, v4, v5, v7, v6);
}

uint64_t sub_1E624525C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E62452D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6202B5C(a1, v4, v5, v6);
}

uint64_t sub_1E624539C()
{
  v1[6] = v0;
  v2 = type metadata accessor for EngagementService();
  v1[7] = v2;
  Description = v2[-1].Description;
  v1[8] = Description;
  v4 = Description[8] + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E624545C, 0, 0);
}

uint64_t sub_1E624545C()
{
  v1 = *(v0 + 56);
  v2 = (*(v0 + 48) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
  *(v0 + 80) = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router;
  *(v0 + 88) = 0;
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = byte_1F5FA87A0;
  *(v0 + 120) = byte_1F5FA87A0;
  v6 = *__swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v7 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v8 = v7 + *(type metadata accessor for AppComposer() + 20);
  v9 = type metadata accessor for AppEnvironment();
  (*(v4 + 16))(v3, v6 + v8 + *(v9 + 60), v1);
  v10 = EngagementService.registerPlacement.getter();
  *(v0 + 96) = v11;
  (*(v4 + 8))(v3, v1);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_1E6245604;

  return v15(v5);
}

uint64_t sub_1E6245604(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v9 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = sub_1E6245930;
  }

  else
  {
    v7 = *(v4 + 96);

    v6 = sub_1E6245730;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E6245730()
{
  v1 = *(v0 + 88) + 1;
  if (*(v0 + 88) == 2)
  {
    v2 = *(v0 + 72);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 88) = v1;
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = (*(v0 + 48) + *(v0 + 80));
    v9 = *(&unk_1F5FA8780 + v1 + 32);
    *(v0 + 120) = v9;
    v10 = *__swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v11 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v12 = v11 + *(type metadata accessor for AppComposer() + 20);
    v13 = type metadata accessor for AppEnvironment();
    (*(v7 + 16))(v5, v10 + v12 + *(v13 + 60), v6);
    v14 = EngagementService.registerPlacement.getter();
    *(v0 + 96) = v15;
    (*(v7 + 8))(v5, v6);
    v18 = (v14 + *v14);
    v16 = v14[1];
    v17 = swift_task_alloc();
    *(v0 + 104) = v17;
    *v17 = v0;
    v17[1] = sub_1E6245604;

    return v18(v9);
  }
}

uint64_t sub_1E6245930()
{
  v38 = v0;
  v1 = *(v0 + 96);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6338();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v10 = 136315394;
    v12 = sub_1E65DB7F8();
    v14 = sub_1E5DFD4B0(v12, v13, &v37);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v15 = *(v0 + 16);
    v16 = MEMORY[0x1E694E6D0](*(v0 + 24), *(v0 + 32));
    v18 = sub_1E5DFD4B0(v16, v17, &v37);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to register placement %s with error %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 88) + 1;
  if (*(v0 + 88) == 2)
  {
    v20 = *(v0 + 72);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    *(v0 + 88) = v19;
    v23 = *(v0 + 72);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);
    v26 = (*(v0 + 48) + *(v0 + 80));
    v27 = *(&unk_1F5FA8780 + v19 + 32);
    *(v0 + 120) = v27;
    v28 = *__swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v29 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v30 = v29 + *(type metadata accessor for AppComposer() + 20);
    v31 = type metadata accessor for AppEnvironment();
    (*(v25 + 16))(v23, v28 + v30 + *(v31 + 60), v24);
    v32 = EngagementService.registerPlacement.getter();
    *(v0 + 96) = v33;
    (*(v25 + 8))(v23, v24);
    v36 = (v32 + *v32);
    v34 = v32[1];
    v35 = swift_task_alloc();
    *(v0 + 104) = v35;
    *v35 = v0;
    v35[1] = sub_1E6245604;

    return v36(v27);
  }
}

uint64_t sub_1E6245CCC(uint64_t a1)
{
  v3 = sub_1E65E2948();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D9758();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v31[1] = v1;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1E601BDE0(0, v10, 0);
  v11 = v40;
  v12 = a1 + 56;
  v13 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v15 = result;
  v16 = 0;
  v32 = a1 + 64;
  v33 = v10;
  v34 = a1 + 56;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v19 = v15 >> 6;
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 36);
    v38 = v16;
    v39 = v20;
    v21 = v36;
    sub_1E5E1D6F4(*(a1 + 48) + *(v37 + 72) * v15, v36, MEMORY[0x1E699F490]);
    sub_1E5FBE400(v9);
    sub_1E624D428(v21, MEMORY[0x1E699F490]);
    v40 = v11;
    v23 = *(v11 + 16);
    v22 = *(v11 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1E601BDE0(v22 > 1, v23 + 1, 1);
      v11 = v40;
    }

    *(v11 + 16) = v23 + 1;
    result = sub_1E5E1E458(v9, v11 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, MEMORY[0x1E69CC2A8]);
    v17 = 1 << *(a1 + 32);
    if (v15 >= v17)
    {
      goto LABEL_22;
    }

    v12 = v34;
    v24 = *(v34 + 8 * v19);
    if ((v24 & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v15 & 0x3F));
    if (v25)
    {
      v17 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v18 = v33;
    }

    else
    {
      v26 = v19 << 6;
      v27 = v19 + 1;
      v18 = v33;
      v28 = (v32 + 8 * v19);
      while (v27 < (v17 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1E5F87098(v15, v39, 0);
          v17 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v15, v39, 0);
    }

LABEL_4:
    v16 = v38 + 1;
    v15 = v17;
    if (v38 + 1 == v18)
    {
      return v11;
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
  return result;
}

uint64_t sub_1E6246074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t (*a7)(), int a8, uint64_t a9, uint64_t a10)
{
  v100 = a8;
  v124 = a7;
  v95 = a6;
  v96 = a5;
  v121 = a4;
  v99 = a3;
  v117 = a2;
  v122 = a9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076FE8, &qword_1E65F9208);
  v102 = *(v103 - 8);
  v11 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v94 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v119 = *(v16 - 8);
  v120 = v16;
  v17 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v123 = (&v90 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v115 = &v90 - v24;
  v25 = sub_1E65D76F8();
  v26 = *(v25 - 8);
  v113 = v25;
  v114 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1E65E29E8();
  v97 = *(v98 - 8);
  v29 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v125 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AppComposer();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31 - 8);
  v112 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v110 = (&v90 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v109 = &v90 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v107 = &v90 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v90 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v90 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v90 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v90 - v50;
  v52 = sub_1E65E2A68();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v111 = &v90 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1E65E2818();
  v92 = *(v93 - 8);
  v55 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v126 = &v90 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *a1;
  sub_1E5E1D6F4(a1, v51, type metadata accessor for AppComposer);
  v57 = *(v32 + 80);
  v58 = (v57 + 16) & ~v57;
  v108 = swift_allocObject();
  v91 = v51;
  sub_1E5E1E458(v51, v108 + v58, type metadata accessor for AppComposer);
  sub_1E5E1D6F4(a1, v49, type metadata accessor for AppComposer);
  v106 = swift_allocObject();
  sub_1E5E1E458(v49, v106 + v58, type metadata accessor for AppComposer);
  sub_1E5E1D6F4(a1, v46, type metadata accessor for AppComposer);
  v105 = swift_allocObject();
  sub_1E5E1E458(v46, v105 + v58, type metadata accessor for AppComposer);
  sub_1E5E1D6F4(a1, v43, type metadata accessor for AppComposer);
  v104 = swift_allocObject();
  sub_1E5E1E458(v43, v104 + v58, type metadata accessor for AppComposer);
  v59 = v107;
  sub_1E5E1D6F4(a1, v107, type metadata accessor for AppComposer);
  v60 = swift_allocObject();
  sub_1E5E1E458(v59, v60 + v58, type metadata accessor for AppComposer);
  v61 = v109;
  sub_1E5E1D6F4(a1, v109, type metadata accessor for AppComposer);
  v62 = swift_allocObject();
  sub_1E5E1E458(v61, v62 + v58, type metadata accessor for AppComposer);
  v63 = v110;
  sub_1E5E1D6F4(a1, v110, type metadata accessor for AppComposer);
  v64 = swift_allocObject();
  sub_1E5E1E458(v63, v64 + v58, type metadata accessor for AppComposer);
  v110 = a1;
  v65 = a1;
  v67 = v112;
  v66 = v113;
  sub_1E5E1D6F4(v65, v112, type metadata accessor for AppComposer);
  v109 = v57;
  v68 = swift_allocObject();
  sub_1E5E1E458(v67, v68 + v58, type metadata accessor for AppComposer);
  v69 = v114;
  v70 = v115;
  sub_1E65E2A58();
  sub_1E65E2808();
  sub_1E5DFD1CC(v117, v70, &unk_1ED077760, &unk_1E66011D0);
  v71 = *(v69 + 48);
  if (v71(v70, 1, v66) == 1)
  {
    sub_1E65D76E8();
    if (v71(v70, 1, v66) != 1)
    {
      sub_1E5DFE50C(v70, &unk_1ED077760, &unk_1E66011D0);
    }
  }

  else
  {
    (*(v69 + 32))(v116, v70, v66);
  }

  sub_1E5DFD1CC(v121, v123, &unk_1ED077750, &unk_1E66011C0);
  v72 = sub_1E65E2CF8();
  v73 = 1;
  v74 = v124;
  (*(*(v72 - 8) + 48))(v124, 1, v72);
  v75 = swift_projectBox();
  v76 = v118;
  v77 = v119;
  v78 = v120;
  (*(v119 + 16))(v118, v75, v120);
  sub_1E65DDC48();
  (*(v77 + 8))(v76, v78);
  if (!v127[0])
  {
    v73 = 2;
  }

  v79 = sub_1E64F7464(9 - v73, 0);
  result = sub_1E624CA64(v127, (v79 + 4), 9 - v73, v73, 8);
  if (result == 9 - v73)
  {
    v122 = a10;
    sub_1E5DFD1CC(v74, v94, &qword_1ED072B60, &unk_1E65FA490);

    sub_1E65E2968();
    v124 = type metadata accessor for AppComposer;
    v81 = v110;
    v82 = v91;
    sub_1E5E1D6F4(v110, v91, type metadata accessor for AppComposer);
    v83 = swift_allocObject();
    v123 = type metadata accessor for AppComposer;
    sub_1E5E1E458(v82, v83 + v58, type metadata accessor for AppComposer);
    type metadata accessor for AppFeature();
    sub_1E624D3E0(&qword_1EE2DBD90, type metadata accessor for AppFeature);
    sub_1E624D3E0(&qword_1ED076FF0, MEMORY[0x1E699F470]);
    v84 = v101;
    v85 = v93;
    sub_1E65E4DE8();
    sub_1E5E1D6F4(v81, v82, v124);
    v86 = swift_allocObject();
    sub_1E5E1E458(v82, v86 + v58, v123);
    v88 = v125;
    v87 = v126;
    v89 = sub_1E65E4F08();

    (*(v102 + 8))(v84, v103);
    (*(v97 + 8))(v88, v98);
    (*(v92 + 8))(v87, v85);
    return v89;
  }

  else
  {
    __break(1u);
  }

  return result;
}