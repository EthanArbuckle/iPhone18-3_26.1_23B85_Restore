uint64_t sub_1D2EC9660(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D2E7EA2C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D2EC9674(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D2EE3C98();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D2EE3C48();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D2EE3DC8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D2EC96F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D2EE3C98();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D2EE3C48();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D2EC9794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396B0, &qword_1D2EF59A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16CallIntelligence13ModelProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D2EC981C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D2EC9878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t PlannerManager.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396E0, &unk_1D2EF5A60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = sub_1D2EE3EB8();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2EE4478();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v47 = a1;
  *(a1 + 8) = 1;
  sub_1D2EE4468();
  sub_1D2EE42D8();
  (*(v15 + 16))(v19, v21, v14);
  v22 = v48;
  v23 = sub_1D2EE42A8();
  if (v22)
  {
    return (*(v15 + 8))(v21, v14);
  }

  v43 = v13;
  v44 = v9;
  v48 = v14;
  v45 = v10;
  *v47 = v23;
  v25 = qword_1EC737C68;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1D2EE4618();
  __swift_project_value_buffer(v26, qword_1EC7466D0);
  v27 = sub_1D2EE45F8();
  v28 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D2E46000, v27, v28, "Subscribing for updates", v29, 2u);
    MEMORY[0x1D38AF660](v29, -1, -1);
  }

  v30 = v5;
  v47[2] = sub_1D2EE42C8();
  v31 = sub_1D2EE45F8();
  v32 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1D2E46000, v31, v32, "Starting session", v33, 2u);
    MEMORY[0x1D38AF660](v33, -1, -1);
  }

  v34 = v43;
  sub_1D2EE3EA8();
  sub_1D2EE3E68();
  v35 = sub_1D2EE4408();
  (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
  v36 = v44;
  sub_1D2EE4298();
  v37 = v48;

  sub_1D2E5D0B8(v30, &qword_1EC7396E0, &unk_1D2EF5A60);
  v38 = v46;
  v39 = v37;
  v40 = v45;
  (*(v46 + 8))(v34, v45);
  (*(v15 + 8))(v21, v39);
  (*(v38 + 56))(v36, 0, 1, v40);
  v41 = type metadata accessor for PlannerManager();
  return sub_1D2ECCAF4(v36, v47 + *(v41 + 28));
}

uint64_t PlannerManager.sendMessage(query:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D2EE43F8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1D2EE43B8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = sub_1D2EE42F8();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_1D2EE4398();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECA0A8, 0, 0);
}

uint64_t sub_1D2ECA0A8()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Invoking Planner via IntelligenceFlow", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[19];
  v6 = v0[4];

  v7 = *(type metadata accessor for PlannerManager() + 28);
  sub_1D2ECCB64(v6 + v7, v5);
  v8 = sub_1D2EE3EB8();
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v5, 1, v8);
  sub_1D2E5D0B8(v5, &qword_1EC738A70, &qword_1D2EF20F0);
  if (v10 != 1 && (v11 = v0[4], *v11) && v11[2])
  {
    v64 = v9;
    v65 = v7;
    v66 = v6;
    v62 = *v11;
    v12 = sub_1D2EE45F8();
    v13 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D2E46000, v12, v13, "Constructing client request message", v14, 2u);
      MEMORY[0x1D38AF660](v14, -1, -1);
    }

    v63 = v0[17];
    v15 = v0[13];
    v16 = v0[14];
    v17 = v0[12];
    v19 = v0[3];
    v18 = v0[4];
    v20 = v0[2];

    sub_1D2EE42E8();
    (*(v15 + 104))(v16, *MEMORY[0x1E69A8E30], v17);
    v21 = *(v18 + 8);
    sub_1D2EE4388();
    v22 = sub_1D2EE45F8();
    v23 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D2E46000, v22, v23, "Constructing client message", v24, 2u);
      MEMORY[0x1D38AF660](v24, -1, -1);
    }

    v25 = v0[16];
    v26 = v0[17];
    v27 = v0[15];
    v28 = v0[11];
    v29 = v0[8];
    v30 = v0[9];

    (*(v25 + 16))(v28, v26, v27);
    (*(v30 + 104))(v28, *MEMORY[0x1E69A8EB8], v29);
    v31 = sub_1D2EE45F8();
    v32 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D2E46000, v31, v32, "Constructing planner query", v33, 2u);
      MEMORY[0x1D38AF660](v33, -1, -1);
    }

    v34 = v0[18];

    sub_1D2ECCB64(v66 + v65, v34);
    result = v64(v34, 1, v8);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v36 = v0[18];
    v37 = v0[7];
    (*(v0[9] + 16))(v0[10], v0[11], v0[8]);
    sub_1D2EE43E8();
    v38 = sub_1D2EE45F8();
    v39 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D2E46000, v38, v39, "Sending message to Planner", v40, 2u);
      MEMORY[0x1D38AF660](v40, -1, -1);
    }

    v41 = v0[7];

    sub_1D2EE42B8();
    v54 = v0[16];
    v53 = v0[17];
    v55 = v0[15];
    v56 = v0[11];
    v57 = v0[8];
    v58 = v0[9];
    v60 = v0[6];
    v59 = v0[7];
    v61 = v0[5];

    (*(v60 + 8))(v59, v61);
    (*(v58 + 8))(v56, v57);
    (*(v54 + 8))(v53, v55);
  }

  else
  {
    v42 = sub_1D2EE45F8();
    v43 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D2E46000, v42, v43, "Invalid planner state. Returning.", v44, 2u);
      MEMORY[0x1D38AF660](v44, -1, -1);
    }
  }

  v46 = v0[18];
  v45 = v0[19];
  v47 = v0[17];
  v48 = v0[14];
  v50 = v0[10];
  v49 = v0[11];
  v51 = v0[7];

  v52 = v0[1];

  return v52();
}

void sub_1D2ECA73C()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1D2EE3EB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v13 = sub_1D2EE4618();
  __swift_project_value_buffer(v13, qword_1EC7466D0);
  v14 = sub_1D2EE45F8();
  v15 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v7;
    v17 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1D2E46000, v14, v15, "Attempting to end smart actions planner session", v16, 2u);
    v18 = v17;
    v2 = v1;
    v7 = v24;
    MEMORY[0x1D38AF660](v18, -1, -1);
  }

  if (*v3)
  {
    v19 = type metadata accessor for PlannerManager();
    sub_1D2ECCB64(v3 + *(v19 + 28), v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1D2E5D0B8(v7, &qword_1EC738A70, &qword_1D2EF20F0);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);

      sub_1D2EE4288();
      if (v2)
      {
        (*(v9 + 8))(v12, v8);
      }

      else
      {
        v20 = sub_1D2EE45F8();
        v21 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1D2E46000, v20, v21, "Smart actions planner session ended", v22, 2u);
          MEMORY[0x1D38AF660](v22, -1, -1);
        }

        (*(v9 + 8))(v12, v8);
      }
    }
  }
}

uint64_t PlannerManager.processResponses(onMessageEvent:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D2EE43A8();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_1D2EE4318();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = sub_1D2EE4458();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v13 = sub_1D2EE4338();
  v3[18] = v13;
  v14 = *(v13 - 8);
  v3[19] = v14;
  v15 = *(v14 + 64) + 15;
  v3[20] = swift_task_alloc();
  v16 = sub_1D2EE4358();
  v3[21] = v16;
  v17 = *(v16 - 8);
  v3[22] = v17;
  v18 = *(v17 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v19 = sub_1D2EE4378();
  v3[25] = v19;
  v20 = *(v19 - 8);
  v3[26] = v20;
  v21 = *(v20 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v22 = sub_1D2EE43B8();
  v3[29] = v22;
  v23 = *(v22 - 8);
  v3[30] = v23;
  v24 = *(v23 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v25 = sub_1D2EE4428();
  v3[34] = v25;
  v26 = *(v25 - 8);
  v3[35] = v26;
  v27 = *(v26 + 64) + 15;
  v3[36] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396E8, qword_1D2EF5A80) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v29 = sub_1D2EE43D8();
  v3[38] = v29;
  v30 = *(v29 - 8);
  v3[39] = v30;
  v31 = *(v30 + 64) + 15;
  v3[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECAEC4, 0, 0);
}

uint64_t sub_1D2ECAEC4()
{
  v1 = *(*(v0 + 40) + 16);
  *(v0 + 328) = v1;
  if (v1)
  {
    v2 = *(v0 + 320);

    sub_1D2EE43C8();
    *(v0 + 352) = *MEMORY[0x1E69A8EB8];
    *(v0 + 356) = *MEMORY[0x1E69A8EC0];
    *(v0 + 360) = *MEMORY[0x1E69A8EB0];
    *(v0 + 364) = *MEMORY[0x1E69A8E88];
    *(v0 + 368) = *MEMORY[0x1E69A8E28];
    *(v0 + 372) = *MEMORY[0x1E69A8EA0];
    *(v0 + 376) = *MEMORY[0x1E69A8E98];
    *(v0 + 380) = *MEMORY[0x1E69A8E90];
    *(v0 + 384) = *MEMORY[0x1E69A8EA8];
    *(v0 + 388) = *MEMORY[0x1E69A8E38];
    v3 = sub_1D2ECCBD4();
    v4 = *(MEMORY[0x1E69E85A8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 336) = v5;
    *v5 = v0;
    v5[1] = sub_1D2ECB208;
    v6 = *(v0 + 320);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);

    return MEMORY[0x1EEE6D8C8](v7, v8, v3);
  }

  else
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v9 = sub_1D2EE4618();
    __swift_project_value_buffer(v9, qword_1EC7466D0);
    v10 = sub_1D2EE45F8();
    v11 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D2E46000, v10, v11, "Subscription handle is nil. Can't initiate async sequence processing.", v12, 2u);
      MEMORY[0x1D38AF660](v12, -1, -1);
    }

    v13 = *(v0 + 320);
    v15 = *(v0 + 288);
    v14 = *(v0 + 296);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);
    v25 = *(v0 + 160);
    v26 = *(v0 + 136);
    v27 = *(v0 + 128);
    v28 = *(v0 + 120);
    v29 = *(v0 + 96);
    v30 = *(v0 + 88);
    v31 = *(v0 + 64);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1D2ECB208()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_1D2ECC8AC;
  }

  else
  {
    v3 = sub_1D2ECB31C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2ECB31C()
{
  v288 = v0;
  v1 = v0;
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v1 + 272);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v1 + 328);
    (*(*(v1 + 312) + 8))(*(v1 + 320), *(v1 + 304));

LABEL_3:
    v6 = *(v1 + 320);
    v8 = *(v1 + 288);
    v7 = *(v1 + 296);
    v10 = *(v1 + 256);
    v9 = *(v1 + 264);
    v11 = *(v1 + 248);
    v12 = v1;
    v13 = *(v1 + 224);
    v14 = v12[27];
    v16 = v12[23];
    v15 = v12[24];
    v246 = v12[20];
    v249 = v12[17];
    v253 = v12[16];
    v258 = v12[15];
    v265 = v12[12];
    v272 = v12[11];
    v280 = v12[8];

    v17 = v12[1];
LABEL_4:

    return v17();
  }

  v19 = *(v1 + 352);
  v20 = *(v1 + 264);
  v21 = *(v1 + 232);
  v22 = *(v1 + 240);
  (*(v3 + 32))(*(v1 + 288), v2, v4);
  sub_1D2EE4418();
  v23 = (*(v22 + 88))(v20, v21);
  if (v23 != v19)
  {
    if (v23 == *(v1 + 356))
    {
      v35 = *(v1 + 264);
      v37 = *(v1 + 56);
      v36 = *(v1 + 64);
      v38 = *(v1 + 48);
      (*(*(v1 + 240) + 96))(v35, *(v1 + 232));
      (*(v37 + 32))(v36, v35, v38);
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v39 = sub_1D2EE4618();
      __swift_project_value_buffer(v39, qword_1EC7466D0);
      v40 = sub_1D2EE45F8();
      v41 = sub_1D2EE4DA8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1D2E46000, v40, v41, "Planner session terminated message received", v42, 2u);
        MEMORY[0x1D38AF660](v42, -1, -1);
      }

      v43 = *(v1 + 356);
      v44 = *(v1 + 240);
      v45 = *(v1 + 248);
      v46 = *(v1 + 232);
      v47 = *(v1 + 56);
      v48 = *(v1 + 64);
      v49 = *(v1 + 48);
      v50 = *(v1 + 32);
      v273 = *(v1 + 24);
      v281 = *(v1 + 344);

      (*(v47 + 16))(v45, v48, v49);
      (*(v44 + 104))(v45, v43, v46);
      v51 = v281;
      v273(v45);
      v52 = *(v1 + 328);
      v53 = *(v1 + 312);
      v274 = *(v1 + 304);
      v282 = *(v1 + 320);
      v54 = *(v1 + 280);
      v259 = *(v1 + 272);
      v266 = *(v1 + 288);
      v55 = *(v1 + 240);
      v56 = *(v1 + 248);
      v57 = *(v1 + 232);
      v58 = *(v1 + 56);
      v59 = *(v1 + 64);
      v60 = *(v1 + 48);

      (*(v55 + 8))(v56, v57);
      (*(v58 + 8))(v59, v60);
      (*(v54 + 8))(v266, v259);
      (*(v53 + 8))(v282, v274);
      if (!v51)
      {
        goto LABEL_3;
      }

LABEL_20:
      v61 = *(v1 + 320);
      v63 = *(v1 + 288);
      v62 = *(v1 + 296);
      v65 = *(v1 + 256);
      v64 = *(v1 + 264);
      v66 = *(v1 + 248);
      v67 = v1;
      v68 = *(v1 + 224);
      v69 = v67[27];
      v70 = v67[23];
      v71 = v67[24];
      v245 = v67[20];
      v247 = v67[17];
      v250 = v67[16];
      v254 = v67[15];
      v260 = v67[12];
      v267 = v67[11];
      v275 = v67[8];

      v17 = v67[1];
      goto LABEL_4;
    }

    if (v23 == *(v1 + 360))
    {
      v72 = *(v1 + 264);
      v73 = *(v1 + 224);
      v74 = *(v1 + 200);
      v75 = *(v1 + 208);
      (*(*(v1 + 240) + 96))(v72, *(v1 + 232));
      (*(v75 + 32))(v73, v72, v74);
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v76 = *(v1 + 216);
      v77 = *(v1 + 224);
      v78 = *(v1 + 200);
      v79 = *(v1 + 208);
      v80 = sub_1D2EE4618();
      __swift_project_value_buffer(v80, qword_1EC7466D0);
      (*(v79 + 16))(v76, v77, v78);
      v81 = sub_1D2EE45F8();
      v82 = sub_1D2EE4DA8();
      v83 = os_log_type_enabled(v81, v82);
      v85 = *(v1 + 280);
      v84 = *(v1 + 288);
      v86 = *(v1 + 272);
      v87 = *(v1 + 216);
      v283 = *(v1 + 224);
      v89 = *(v1 + 200);
      v88 = *(v1 + 208);
      if (v83)
      {
        v268 = *(v1 + 272);
        v90 = swift_slowAlloc();
        v276 = v1;
        v91 = swift_slowAlloc();
        v287[0] = v91;
        *v90 = 136315138;
        v92 = sub_1D2EE4368();
        v261 = v84;
        v94 = v93;
        v95 = *(v88 + 8);
        v95(v87, v89);
        v96 = sub_1D2E685B0(v92, v94, v287);

        *(v90 + 4) = v96;
        _os_log_impl(&dword_1D2E46000, v81, v82, "Planner returned raw plan: %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        v97 = v91;
        v1 = v276;
        MEMORY[0x1D38AF660](v97, -1, -1);
        MEMORY[0x1D38AF660](v90, -1, -1);

        v95(v283, v89);
        (*(v85 + 8))(v261, v268);
      }

      else
      {

        v122 = *(v88 + 8);
        v122(v87, v89);
        v122(v283, v89);
        (*(v85 + 8))(v84, v86);
      }

      goto LABEL_51;
    }

    if (v23 == *(v1 + 364))
    {
      v98 = *(v1 + 264);
      v99 = *(v1 + 96);
      v100 = *(v1 + 72);
      v101 = *(v1 + 80);
      (*(*(v1 + 240) + 96))(v98, *(v1 + 232));
      (*(v101 + 32))(v99, v98, v100);
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v102 = *(v1 + 88);
      v103 = *(v1 + 96);
      v104 = *(v1 + 72);
      v105 = *(v1 + 80);
      v106 = sub_1D2EE4618();
      __swift_project_value_buffer(v106, qword_1EC7466D0);
      v284 = *(v105 + 16);
      v284(v102, v103, v104);
      v107 = sub_1D2EE45F8();
      v108 = sub_1D2EE4DA8();
      v109 = os_log_type_enabled(v107, v108);
      v110 = v1;
      v113 = v1 + 80;
      v112 = *(v1 + 80);
      v111 = *(v113 + 8);
      v114 = v110;
      v115 = *(v110 + 72);
      if (v109)
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v287[0] = v117;
        *v116 = 136315138;
        v118 = sub_1D2EE4308();
        v120 = v119;
        v277 = *(v112 + 8);
        v277(v111, v115);
        v121 = sub_1D2E685B0(v118, v120, v287);

        *(v116 + 4) = v121;
        _os_log_impl(&dword_1D2E46000, v107, v108, "Action will execute tool: %s", v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v117);
        MEMORY[0x1D38AF660](v117, -1, -1);
        MEMORY[0x1D38AF660](v116, -1, -1);
      }

      else
      {

        v277 = *(v112 + 8);
        v277(v111, v115);
      }

      v1 = v114;
      v128 = *(v114 + 344);
      v129 = *(v114 + 364);
      v130 = *(v114 + 256);
      v131 = *(v114 + 232);
      v132 = *(v114 + 240);
      v134 = *(v114 + 24);
      v133 = *(v114 + 32);
      v284(v130, *(v114 + 96), *(v114 + 72));
      (*(v132 + 104))(v130, v129, v131);
      v134(v130);
      if (v128)
      {
        v135 = *(v114 + 328);
        v136 = *(v114 + 312);
        v262 = *(v114 + 304);
        v269 = *(v114 + 320);
        v255 = *(v114 + 288);
        v137 = *(v114 + 272);
        v138 = *(v114 + 280);
        v139 = *(v114 + 256);
        v141 = *(v114 + 232);
        v140 = *(v114 + 240);
        v142 = *(v114 + 72);
        v143 = *(v114 + 80) + 8;
        v144 = *(v114 + 96);

        (*(v140 + 8))(v139, v141);
        v277(v144, v142);
        (*(v138 + 8))(v255, v137);
        v1 = v114;
        (*(v136 + 8))(v269, v262);
        goto LABEL_20;
      }

      v159 = *(v114 + 280);
      v158 = *(v1 + 288);
      v160 = *(v1 + 272);
      v161 = *(v1 + 96);
      v162 = *(v1 + 72);
      v163 = *(v1 + 80) + 8;
      (*(*(v1 + 240) + 8))(*(v1 + 256), *(v1 + 232));
      v277(v161, v162);
LABEL_50:
      (*(v159 + 8))(v158, v160);
      goto LABEL_51;
    }

    if (v23 == *(v1 + 368))
    {
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v123 = sub_1D2EE4618();
      __swift_project_value_buffer(v123, qword_1EC7466D0);
      v124 = sub_1D2EE45F8();
      v125 = sub_1D2EE4DA8();
      if (!os_log_type_enabled(v124, v125))
      {
        goto LABEL_46;
      }

      v126 = swift_slowAlloc();
      *v126 = 0;
      v127 = "Client action needed. Unhandled";
    }

    else if (v23 == *(v1 + 372))
    {
      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v145 = sub_1D2EE4618();
      __swift_project_value_buffer(v145, qword_1EC7466D0);
      v124 = sub_1D2EE45F8();
      v125 = sub_1D2EE4DD8();
      if (!os_log_type_enabled(v124, v125))
      {
        goto LABEL_46;
      }

      v126 = swift_slowAlloc();
      *v126 = 0;
      v127 = "Safety mode exception received which indicates planner processing is complete";
    }

    else
    {
      if (v23 == *(v1 + 376))
      {
        v170 = *(v1 + 264);
        v171 = *(v1 + 192);
        v172 = *(v1 + 168);
        v173 = *(v1 + 176);
        (*(*(v1 + 240) + 96))(v170, *(v1 + 232));
        (*(v173 + 32))(v171, v170, v172);
        if (qword_1EC737C68 != -1)
        {
          swift_once();
        }

        v174 = sub_1D2EE4618();
        __swift_project_value_buffer(v174, qword_1EC7466D0);
        v175 = sub_1D2EE45F8();
        v176 = sub_1D2EE4DA8();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          *v177 = 0;
          _os_log_impl(&dword_1D2E46000, v175, v176, "Planner sent action summary update", v177, 2u);
          MEMORY[0x1D38AF660](v177, -1, -1);
        }

        v179 = *(v1 + 184);
        v178 = *(v1 + 192);
        v181 = *(v1 + 168);
        v180 = *(v1 + 176);

        (*(v180 + 16))(v179, v178, v181);
        v182 = sub_1D2EE45F8();
        v183 = sub_1D2EE4DA8();
        v184 = os_log_type_enabled(v182, v183);
        v186 = *(v1 + 280);
        v185 = *(v1 + 288);
        v187 = *(v1 + 272);
        v188 = *(v1 + 184);
        v189 = *(v1 + 192);
        v191 = *(v1 + 168);
        v190 = *(v1 + 176);
        if (v184)
        {
          v285 = *(v1 + 288);
          v270 = *(v1 + 192);
          v193 = *(v1 + 152);
          v192 = *(v1 + 160);
          v251 = *(v1 + 144);
          v248 = *(v1 + 168);
          v194 = swift_slowAlloc();
          v278 = v1;
          v195 = swift_slowAlloc();
          v287[0] = v195;
          *v194 = 136315138;
          v256 = v183;
          sub_1D2EE4348();
          v196 = sub_1D2EE4328();
          v263 = v187;
          v198 = v197;
          (*(v193 + 8))(v192, v251);
          v199 = *(v190 + 8);
          v199(v188, v248);
          v200 = sub_1D2E685B0(v196, v198, v287);

          *(v194 + 4) = v200;
          _os_log_impl(&dword_1D2E46000, v182, v256, "Summary update details: %s", v194, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v195);
          v201 = v195;
          v1 = v278;
          MEMORY[0x1D38AF660](v201, -1, -1);
          MEMORY[0x1D38AF660](v194, -1, -1);

          v199(v270, v248);
          (*(v186 + 8))(v285, v263);
        }

        else
        {

          v203 = *(v190 + 8);
          v203(v188, v191);
          v203(v189, v191);
          (*(v186 + 8))(v185, v187);
        }

        goto LABEL_51;
      }

      if (v23 == *(v1 + 380))
      {
        if (qword_1EC737C68 != -1)
        {
          swift_once();
        }

        v202 = sub_1D2EE4618();
        __swift_project_value_buffer(v202, qword_1EC7466D0);
        v25 = sub_1D2EE45F8();
        v26 = sub_1D2EE4DA8();
        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_13;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = "Planner prompt data message received";
        goto LABEL_12;
      }

      if (v23 == *(v1 + 384))
      {
        v204 = *(v1 + 264);
        v205 = *(v1 + 136);
        v206 = *(v1 + 104);
        v207 = *(v1 + 112);
        (*(*(v1 + 240) + 96))(v204, *(v1 + 232));
        (*(v207 + 32))(v205, v204, v206);
        if (qword_1EC737C68 != -1)
        {
          swift_once();
        }

        v208 = sub_1D2EE4618();
        __swift_project_value_buffer(v208, qword_1EC7466D0);
        v209 = sub_1D2EE45F8();
        v210 = sub_1D2EE4DA8();
        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          *v211 = 0;
          _os_log_impl(&dword_1D2E46000, v209, v210, "Planner sent action resolution update", v211, 2u);
          MEMORY[0x1D38AF660](v211, -1, -1);
        }

        v213 = *(v1 + 128);
        v212 = *(v1 + 136);
        v214 = *(v1 + 112);
        v215 = *(v1 + 120);
        v216 = *(v1 + 104);

        v217 = *(v214 + 16);
        v217(v213, v212, v216);
        v217(v215, v212, v216);
        v218 = sub_1D2EE45F8();
        v219 = sub_1D2EE4DA8();
        v220 = os_log_type_enabled(v218, v219);
        v222 = *(v1 + 280);
        v221 = *(v1 + 288);
        v223 = *(v1 + 272);
        v224 = *(v1 + 128);
        v225 = *(v1 + 136);
        v226 = v1;
        v229 = v1 + 112;
        v228 = *(v1 + 112);
        v227 = *(v229 + 8);
        v279 = v226;
        v286 = v221;
        v230 = *(v226 + 104);
        if (v220)
        {
          v271 = v225;
          v231 = swift_slowAlloc();
          v257 = swift_slowAlloc();
          v287[0] = v257;
          *v231 = 136315394;
          v252 = v219;
          v232 = sub_1D2EE4328();
          v264 = v223;
          v234 = v233;
          v235 = *(v228 + 8);
          v235(v224, v230);
          v236 = sub_1D2E685B0(v232, v234, v287);

          *(v231 + 4) = v236;
          *(v231 + 12) = 2080;
          MEMORY[0x1D38ADEC0](v237);
          sub_1D2EE4628();
          v238 = sub_1D2EE49C8();
          v240 = v239;

          v235(v227, v230);
          v241 = sub_1D2E685B0(v238, v240, v287);

          *(v231 + 14) = v241;
          _os_log_impl(&dword_1D2E46000, v218, v252, "Action resolved tool: %s, Parameters:%s", v231, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38AF660](v257, -1, -1);
          MEMORY[0x1D38AF660](v231, -1, -1);

          v235(v271, v230);
          (*(v222 + 8))(v286, v264);
        }

        else
        {

          v243 = *(v228 + 8);
          v243(v227, v230);
          v243(v224, v230);
          v243(v225, v230);
          (*(v222 + 8))(v286, v223);
        }

        v1 = v279;
        goto LABEL_51;
      }

      if (v23 == *(v1 + 388))
      {
        if (qword_1EC737C68 != -1)
        {
          swift_once();
        }

        v242 = sub_1D2EE4618();
        __swift_project_value_buffer(v242, qword_1EC7466D0);
        v25 = sub_1D2EE45F8();
        v26 = sub_1D2EE4DD8();
        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_13;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = "Action was executed which is unexpected";
        goto LABEL_12;
      }

      if (qword_1EC737C68 != -1)
      {
        swift_once();
      }

      v244 = sub_1D2EE4618();
      __swift_project_value_buffer(v244, qword_1EC7466D0);
      v124 = sub_1D2EE45F8();
      v125 = sub_1D2EE4DA8();
      if (!os_log_type_enabled(v124, v125))
      {
        goto LABEL_46;
      }

      v126 = swift_slowAlloc();
      *v126 = 0;
      v127 = "Unhandled message type. Returning";
    }

    _os_log_impl(&dword_1D2E46000, v124, v125, v127, v126, 2u);
    MEMORY[0x1D38AF660](v126, -1, -1);
LABEL_46:
    v146 = *(v1 + 344);
    v147 = *(v1 + 40);

    sub_1D2ECA73C();
    if (v146)
    {
      v149 = *(v1 + 320);
      v148 = *(v1 + 328);
      v151 = *(v1 + 304);
      v150 = *(v1 + 312);
      v153 = *(v1 + 280);
      v152 = *(v1 + 288);
      v155 = *(v1 + 264);
      v154 = *(v1 + 272);
      v156 = *(v1 + 232);
      v157 = *(v1 + 240);

      (*(v153 + 8))(v152, v154);
      (*(v150 + 8))(v149, v151);
      (*(v157 + 8))(v155, v156);
      goto LABEL_20;
    }

    v158 = *(v1 + 264);
    v160 = *(v1 + 232);
    v159 = *(v1 + 240);
    (*(*(v1 + 280) + 8))(*(v1 + 288), *(v1 + 272));
    goto LABEL_50;
  }

  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v24 = sub_1D2EE4618();
  __swift_project_value_buffer(v24, qword_1EC7466D0);
  v25 = sub_1D2EE45F8();
  v26 = sub_1D2EE4DA8();
  if (!os_log_type_enabled(v25, v26))
  {
    goto LABEL_13;
  }

  v27 = swift_slowAlloc();
  *v27 = 0;
  v28 = "Request sent to Planner";
LABEL_12:
  _os_log_impl(&dword_1D2E46000, v25, v26, v28, v27, 2u);
  MEMORY[0x1D38AF660](v27, -1, -1);
LABEL_13:
  v30 = *(v1 + 280);
  v29 = *(v1 + 288);
  v32 = *(v1 + 264);
  v31 = *(v1 + 272);
  v33 = *(v1 + 232);
  v34 = *(v1 + 240);

  (*(v30 + 8))(v29, v31);
  (*(v34 + 8))(v32, v33);
LABEL_51:
  v164 = sub_1D2ECCBD4();
  v165 = *(MEMORY[0x1E69E85A8] + 4);
  v166 = swift_task_alloc();
  *(v1 + 336) = v166;
  *v166 = v1;
  v166[1] = sub_1D2ECB208;
  v167 = *(v1 + 320);
  v168 = *(v1 + 296);
  v169 = *(v1 + 304);

  return MEMORY[0x1EEE6D8C8](v168, v169, v164);
}

uint64_t sub_1D2ECC8AC()
{
  *(v0 + 16) = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECC940, 0, 0);
}

uint64_t sub_1D2ECC940()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];

  (*(v4 + 8))(v2, v3);
  v24 = v0[43];
  v5 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[31];
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[23];
  v13 = v0[24];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[11];
  v23 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t type metadata accessor for PlannerManager()
{
  result = qword_1EC7396F8;
  if (!qword_1EC7396F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2ECCAF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2ECCB64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2ECCBD4()
{
  result = qword_1EC7396F0;
  if (!qword_1EC7396F0)
  {
    sub_1D2EE43D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7396F0);
  }

  return result;
}

void sub_1D2ECCC54()
{
  sub_1D2ECCD4C(319, &qword_1EC739708, MEMORY[0x1E69A8E10]);
  if (v0 <= 0x3F)
  {
    sub_1D2ECCD4C(319, &qword_1EC739710, MEMORY[0x1E69A8EF8]);
    if (v1 <= 0x3F)
    {
      sub_1D2ECCD4C(319, &qword_1EC739718, MEMORY[0x1E69695A8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D2ECCD4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2EE4E58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2ECCDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D2E7D770;

  return v11(a1, a2, a3);
}

uint64_t type metadata accessor for SmartActionsServer()
{
  result = qword_1EDECFAF8;
  if (!qword_1EDECFAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D2ECCF3C()
{
  result = type metadata accessor for ContainerProvider();
  if (v1 <= 0x3F)
  {
    result = sub_1D2ECD010(319, qword_1EDECFB98);
    if (v2 <= 0x3F)
    {
      result = sub_1D2ECD010(319, qword_1EDECF988);
      if (v3 <= 0x3F)
      {
        result = sub_1D2ECD06C();
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

uint64_t sub_1D2ECD010(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D2ECD06C()
{
  result = qword_1EDECF798;
  if (!qword_1EDECF798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDECF798);
  }

  return result;
}

uint64_t sub_1D2ECD0B8()
{
  v1[3] = v0;
  v2 = type metadata accessor for SmartActionsServer();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECD1B8, 0, 0);
}

uint64_t sub_1D2ECD1B8()
{
  v33 = v0;
  if ([*(v0[3] + *(v0[4] + 28)) smartVoicemailActionsEnabled])
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v1 = sub_1D2EE4618();
    __swift_project_value_buffer(v1, qword_1EC7466D0);
    v2 = sub_1D2EE45F8();
    v3 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D2E46000, v2, v3, "Loading smart actions database", v4, 2u);
      MEMORY[0x1D38AF660](v4, -1, -1);
    }

    v5 = v0[3];

    v10 = sub_1D2EBE7FC();

    v11 = sub_1D2EE45F8();
    v12 = sub_1D2EE4DD8();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      if (v10)
      {
        v0[2] = v10;
        sub_1D2EE4828();

        v16 = sub_1D2EE4AA8();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = sub_1D2E685B0(v16, v18, &v32);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1D2E46000, v11, v12, "Finished loading container %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D38AF660](v15, -1, -1);
      MEMORY[0x1D38AF660](v14, -1, -1);
    }

    v21 = v0[7];
    v20 = v0[8];
    v23 = v0[5];
    v22 = v0[6];
    v24 = v0[3];
    v25 = sub_1D2EE4CB8();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    sub_1D2ED4AFC(v24, v21, type metadata accessor for SmartActionsServer);
    v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    sub_1D2ED4B64(v21, v27 + v26, type metadata accessor for SmartActionsServer);
    sub_1D2E8CB18(0, 0, v20, &unk_1D2EF5B60, v27);

    sub_1D2E5D0B8(v20, &qword_1EC739040, &qword_1D2EF2460);
  }

  else
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EC7466D0);
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "Skipping setup as feature flag is disabled", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }
  }

  v29 = v0[7];
  v28 = v0[8];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1D2ECD5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PersistenceConfiguration();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D2E5D0B8(v8, &qword_1EC739490, qword_1D2EF4B90);
  }

  else
  {
    sub_1D2ED4B64(v8, v13, type metadata accessor for PersistenceConfiguration);
    v14 = type metadata accessor for ContainerProvider();
    v15 = *(v3 + *(v14 + 20));
    MEMORY[0x1EEE9AC00](v14);
    *(&v18 - 2) = v3;
    *(&v18 - 1) = v13;
    os_unfair_lock_lock((v15 + 24));
    sub_1D2ED4EA8((v15 + 16), &v19);
    os_unfair_lock_unlock((v15 + 24));
    if (v2)
    {
      return sub_1D2ED4A38(v13, type metadata accessor for PersistenceConfiguration);
    }

    sub_1D2ED4A38(v13, type metadata accessor for PersistenceConfiguration);
  }

  v17 = type metadata accessor for SmartAction();
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

uint64_t sub_1D2ECD85C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for PersistenceConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D2E5D0B8(v6, &qword_1EC739490, qword_1D2EF4B90);
  }

  else
  {
    sub_1D2ED4B64(v6, v11, type metadata accessor for PersistenceConfiguration);
    v12 = type metadata accessor for ContainerProvider();
    v13 = *(v2 + *(v12 + 20));
    MEMORY[0x1EEE9AC00](v12);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v11;
    os_unfair_lock_lock((v13 + 24));
    sub_1D2ED4EA8((v13 + 16), &v16);
    os_unfair_lock_unlock((v13 + 24));
    if (!v1)
    {
    }

    sub_1D2ED4A38(v11, type metadata accessor for PersistenceConfiguration);
  }

  return 0;
}

uint64_t sub_1D2ECDA58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D2EE3EB8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for SmartActionQuery() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECDB44, 0, 0);
}

uint64_t sub_1D2ECDB44()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_1D2ED4AFC(v0[2], v1, type metadata accessor for SmartActionQuery);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EC7466D0);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D2E46000, v5, v6, "Invalid query all for fetching smart action data items", v7, 2u);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }
  }

  else
  {
    v8 = v0[6];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[3];
    (*(v10 + 32))(v8, v0[7], v9);
    sub_1D2ECD85C();
    (*(v10 + 8))(v8, v9);
  }

  v13 = v0[6];
  v12 = v0[7];

  v14 = v0[1];
  v15 = MEMORY[0x1E69E7CC0];

  return v14(v15);
}

uint64_t sub_1D2ECDD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = *(*(type metadata accessor for SmartActionQuery() - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v8 = *(type metadata accessor for SmartAction() - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = sub_1D2EE3EB8();
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v12 = *(v11 + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ECDEC8, 0, 0);
}

uint64_t sub_1D2ECDEC8()
{
  v58 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 104) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2 || ((v3 = *(v0 + 128), (v3 & 0x2000000000000000) != 0) ? (v4 = HIBYTE(v3) & 0xF) : (v4 = *(v0 + 120) & 0xFFFFFFFFFFFFLL), v4))
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
      v56 = *(v0 + 112);
    }

    v5 = *(v0 + 128);
    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EC7466D0);

    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DA8();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      v12 = *(v0 + 104);
      v11 = *(v0 + 112);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v57[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1D2E685B0(v10, v9, v57);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_1D2E685B0(v12, v11, v57);
      _os_log_impl(&dword_1D2E46000, v7, v8, "Processing action for %s: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38AF660](v14, -1, -1);
      MEMORY[0x1D38AF660](v13, -1, -1);
    }

    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    v17 = *(v0 + 144);
    (*(v16 + 16))(v17, *(v0 + 96), v15);
    (*(v16 + 56))(v17, 0, 1, v15);
    sub_1D2ECD85C();
    sub_1D2ED4A38(*(v0 + 144), type metadata accessor for SmartActionQuery);
    goto LABEL_26;
  }

  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 192);
  v19 = *(v0 + 200);
  v20 = *(v0 + 184);
  v21 = *(v0 + 96);
  v22 = sub_1D2EE4618();
  __swift_project_value_buffer(v22, qword_1EC7466D0);
  (*(v18 + 16))(v19, v21, v20);
  v23 = sub_1D2EE45F8();
  v24 = sub_1D2EE4DA8();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 192);
  v27 = *(v0 + 200);
  v28 = *(v0 + 184);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v57[0] = v30;
    *v29 = 136315138;
    sub_1D2ED4E60(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v31 = sub_1D2EE5258();
    v33 = v32;
    (*(v26 + 8))(v27, v28);
    v34 = sub_1D2E685B0(v31, v33, v57);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1D2E46000, v23, v24, "Processing action for recommendationId: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1D38AF660](v30, -1, -1);
    MEMORY[0x1D38AF660](v29, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v27, v28);
  }

  v35 = *(v0 + 136);
  sub_1D2ECD85C();
  v36 = MEMORY[0x1E69E7CC0];

  v37 = sub_1D2EE45F8();
  v38 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = *(v36 + 16);

    _os_log_impl(&dword_1D2E46000, v37, v38, "Processing action count: %ld", v39, 0xCu);
    MEMORY[0x1D38AF660](v39, -1, -1);
  }

  else
  {
  }

  if (!*(v36 + 16))
  {

LABEL_26:
    v50 = *(v0 + 200);
    v51 = *(v0 + 168);
    v52 = *(v0 + 176);
    v53 = *(v0 + 160);
    v54 = *(v0 + 144);

    v55 = *(v0 + 8);

    return v55();
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 176);
  v42 = *(*(v0 + 152) + 80);
  sub_1D2ED4AFC(v36 + ((v42 + 32) & ~v42), v40, type metadata accessor for SmartAction);

  sub_1D2ED4B64(v40, v41, type metadata accessor for SmartAction);
  type metadata accessor for SmartActionsController();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 208) = swift_initStackObject();
  *(v0 + 56) = SmartActionsController.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392D0, &qword_1D2EF4528);
  v43 = *(sub_1D2EE3EF8() - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D2EF3D10;
  sub_1D2EE3EE8();
  *(v0 + 64) = v46;
  v47 = swift_task_alloc();
  *(v0 + 216) = v47;
  *v47 = v0;
  v47[1] = sub_1D2ECE5F4;
  v48 = *(v0 + 176);

  return sub_1D2ED68CC(v48);
}

uint64_t sub_1D2ECE5F4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    sub_1D2ED49E4(v2 + 16);
    v5 = sub_1D2ECE7E4;
  }

  else
  {

    sub_1D2ED49E4(v2 + 16);
    v5 = sub_1D2ECE730;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2ECE730()
{
  sub_1D2ED4A38(v0[22], type metadata accessor for SmartAction);
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D2ECE7E4()
{
  sub_1D2ED4A38(v0[22], type metadata accessor for SmartAction);
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D2ECE8C0()
{
  v1 = v0[2];
  v2 = type metadata accessor for SmartActionsServer();
  v3 = __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 24));
  v4 = *v3;
  v5 = v3[1];
  v0[3] = v5;
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  os_unfair_lock_lock((v5 + 24));
  sub_1D2E82478((v5 + 16));
  v0[4] = 0;
  os_unfair_lock_unlock((v5 + 24));

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1D2ECE9F0;
  v8 = v0[2];

  return sub_1D2ECEB84(v8);
}

uint64_t sub_1D2ECE9F0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2ECEAEC, 0, 0);
}

void sub_1D2ECEAEC()
{
  v1 = v0[3];
  v2 = v0[4];
  os_unfair_lock_lock((v1 + 24));
  sub_1D2EA38A8((v1 + 16));
  os_unfair_lock_unlock((v0[3] + 24));
  if (!v2)
  {
    v3 = v0[1];

    v3();
  }
}

uint64_t sub_1D2ECEBA4()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[7] = __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Syncing with FaceTimeMessageStore", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D2ECECF4;
  v6 = v0[6];

  return sub_1D2ECF0B0();
}

uint64_t sub_1D2ECECF4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2ECEE28, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D2ECEE28()
{
  v24 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v22 = v0[9];
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = v0[2];
    v8 = v0[3];
    v9 = sub_1D2EE4E58();
    v10 = *(v9 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    v13 = *(v8 - 8);
    (*(v13 + 16))(v12, v7, v8);
    (*(v13 + 56))(v12, 0, 1, v8);
    v14 = sub_1D2EE2754(v12, v8);
    v16 = v15;
    (*(v10 + 8))(v12, v9);

    v17 = sub_1D2E685B0(v14, v16, &v23);

    *(v6 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error syncing with FaceTimeMessageStore: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D38AF660](v21, -1, -1);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  else
  {
    v18 = v0[9];
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D2ECF0D0()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[7] = __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Loading tracked/untracked voicemails", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = sub_1D2ED06C4();
  v0[8] = v6;
  if (v6)
  {
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_1D2ECF494;
    v9 = v0[6];

    return sub_1D2ED0F20();
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D2ECF494(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_1D2ECFB68;
  }

  else
  {
    v5 = sub_1D2ECF5A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2ECF5A8()
{
  v1 = v0[10];
  v2 = v0[8];
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v13 = v0[10];

    sub_1D2ED1EA4(v2);
    v4 = v13;
  }

  else
  {
    v3 = v0[10];

    v4 = sub_1D2ED20C0(v2, v1);
  }

  v0[12] = v4;
  if (*(v1 + 16) <= *(v2 + 16) >> 3)
  {
    v14 = v0[8];
    sub_1D2ED1EA4(v0[10]);

    v5 = v14;
  }

  else
  {
    v5 = sub_1D2ED20C0(v0[10], v0[8]);
  }

  v0[13] = v5;
  v6 = v0[7];

  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *(v4 + 16);

    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v5 + 16);

    _os_log_impl(&dword_1D2E46000, v7, v8, "#newUUIDsToTrack=%ld, #uuidsToUntrack=%ld", v9, 0x16u);
    MEMORY[0x1D38AF660](v9, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D2ECF7B4;
  v11 = v0[6];

  return sub_1D2ED19E8(v4);
}

uint64_t sub_1D2ECF7B4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D2ECFDE4;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1D2ECF8D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D2ECF8D0()
{
  v25 = v0;
  v1 = v0[15];
  v2 = v0[6];
  sub_1D2ED1C9C(v0[13]);
  v3 = v0[13];

  if (v1)
  {
    v4 = v0[7];
    v5 = v1;
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DD8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v8 = 136315138;
      swift_getErrorValue();
      v9 = v0[2];
      v10 = v0[3];
      v11 = sub_1D2EE4E58();
      v12 = *(v11 - 8);
      v13 = *(v12 + 64) + 15;
      v14 = swift_task_alloc();
      v22 = v7;
      v15 = *(v10 - 8);
      (*(v15 + 16))(v14, v9, v10);
      (*(v15 + 56))(v14, 0, 1, v10);
      v16 = sub_1D2EE2754(v14, v10);
      v18 = v17;
      (*(v12 + 8))(v14, v11);

      v19 = sub_1D2E685B0(v16, v18, &v24);

      *(v8 + 4) = v19;
      _os_log_impl(&dword_1D2E46000, v6, v22, "Error syncing with FaceTimeMessageStore: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D38AF660](v23, -1, -1);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    swift_willThrow();
    v20 = v0[1];
  }

  else
  {
    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_1D2ECFB68()
{
  v24 = v0;
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[7];
  v4 = v2;
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v7 = 136315138;
    swift_getErrorValue();
    v8 = v0[2];
    v9 = v0[3];
    v10 = sub_1D2EE4E58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    v21 = v6;
    v14 = *(v9 - 8);
    (*(v14 + 16))(v13, v8, v9);
    (*(v14 + 56))(v13, 0, 1, v9);
    v15 = sub_1D2EE2754(v13, v9);
    v17 = v16;
    (*(v11 + 8))(v13, v10);

    v18 = sub_1D2E685B0(v15, v17, &v23);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v5, v21, "Error syncing with FaceTimeMessageStore: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D38AF660](v22, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  swift_willThrow();
  v19 = v0[1];

  return v19();
}

uint64_t sub_1D2ECFDE4()
{
  v25 = v0;
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[15];
  v4 = v0[7];
  v5 = v3;
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v8 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v10 = v0[3];
    v11 = sub_1D2EE4E58();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64) + 15;
    v14 = swift_task_alloc();
    v22 = v7;
    v15 = *(v10 - 8);
    (*(v15 + 16))(v14, v9, v10);
    (*(v15 + 56))(v14, 0, 1, v10);
    v16 = sub_1D2EE2754(v14, v10);
    v18 = v17;
    (*(v12 + 8))(v14, v11);

    v19 = sub_1D2E685B0(v16, v18, &v24);

    *(v8 + 4) = v19;
    _os_log_impl(&dword_1D2E46000, v6, v22, "Error syncing with FaceTimeMessageStore: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38AF660](v23, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  swift_willThrow();
  v20 = v0[1];

  return v20();
}

uint64_t sub_1D2ED0068(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D2ED0088, 0, 0);
}

uint64_t sub_1D2ED0088()
{
  type metadata accessor for SmartActionsController();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_allocObject();
  *(v0 + 56) = SmartActionsController.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392D0, &qword_1D2EF4528);
  v1 = *(sub_1D2EE3EF8() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2EF3D10;
  sub_1D2EE3EE8();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1D2ED01FC;
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);

  return sub_1D2ED6038(v7, v6);
}

uint64_t sub_1D2ED01FC(uint64_t a1)
{
  v4 = *(*v2 + 120);
  v5 = *v2;
  *(v5 + 128) = v1;

  sub_1D2ED49E4(v5 + 16);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2ED034C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1D2ED034C()
{
  v25 = v0;
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EC7466D0);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v7 = 136315138;
    swift_getErrorValue();
    v8 = v0[9];
    v9 = v0[10];
    v10 = sub_1D2EE4E58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    v14 = *(v9 - 8);
    (*(v14 + 16))(v13, v8, v9);
    (*(v14 + 56))(v13, 0, 1, v9);
    v15 = sub_1D2EE2754(v13, v9);
    v17 = v16;
    (*(v11 + 8))(v13, v10);

    v18 = sub_1D2E685B0(v15, v17, &v24);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Failed to generate actions with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D38AF660](v23, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v19 = v0[16];
  swift_willThrow();
  v20 = v0[1];
  v21 = v0[16];

  return v20();
}

uint64_t sub_1D2ED0600@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 1);
  v12 = *a1;
  v6 = PredictedRawAction.appBundleIdentifier.getter();
  v8 = v7;
  v9 = *(type metadata accessor for NewSmartAction() + 32);
  v10 = sub_1D2EE3EB8();
  (*(*(v10 - 8) + 16))(a3 + v9, a2, v10);
  *a3 = 0;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v5;
}

NSObject *sub_1D2ED06C4()
{
  v1 = v0;
  v2 = sub_1D2EE3EB8();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739740, &qword_1D2EF5B98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739748, &qword_1D2EF5BA0);
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = v49 - v13;
  if (qword_1EC737C68 != -1)
  {
LABEL_28:
    swift_once();
  }

  v14 = sub_1D2EE4618();
  __swift_project_value_buffer(v14, qword_1EC7466D0);
  v15 = sub_1D2EE45F8();
  v16 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D2E46000, v15, v16, "Loading tracked voicemails", v17, 2u);
    MEMORY[0x1D38AF660](v17, -1, -1);
  }

  v18 = sub_1D2EBE7FC();
  if (!v1)
  {
    if (v18)
    {
      v20 = v18;
      v51 = 0;
      v21 = sub_1D2EE47F8();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();

      v24 = sub_1D2EE4808();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739750, &qword_1D2EF5BA8);
      (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
      type metadata accessor for StoredReference();
      v26 = sub_1D2ED4E60(&qword_1EC7394A8, type metadata accessor for StoredReference);
      v15 = MEMORY[0x1E69E7CC0];
      v27 = v53;
      v28 = v26;
      sub_1D2EE4838();
      v29 = v51;
      v30 = sub_1D2EE47E8();
      v51 = v29;
      if (v29)
      {
        (*(v52 + 8))(v27, v11);
      }

      else
      {
        v31 = v30;
        v59 = v28;
        v49[1] = v24;
        v49[2] = v20;
        v50 = v11;

        v32 = sub_1D2EE45F8();
        LOBYTE(v28) = sub_1D2EE4DD8();
        v33 = v31 >> 62;
        if (!os_log_type_enabled(v32, v28))
        {

          goto LABEL_15;
        }

        v34 = swift_slowAlloc();
        *v34 = 134349056;
        if (v33)
        {
          goto LABEL_47;
        }

        for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D2EE50B8())
        {
          *(v34 + 4) = i;

          _os_log_impl(&dword_1D2E46000, v32, v28, "Loading %{public}ld tracked voicemails", v34, 0xCu);
          MEMORY[0x1D38AF660](v34, -1, -1);

LABEL_15:
          v61 = v15;
          if (v33)
          {
            v11 = sub_1D2EE50B8();
            v56 = v6;
            if (v11)
            {
LABEL_17:
              v10 = 0;
              v55 = v31 & 0xC000000000000001;
              v36 = v31;
              v6 = (v31 & 0xFFFFFFFFFFFFFF8);
              v1 = &unk_1D2EF5BB0;
              while (1)
              {
                if (v55)
                {
                  v37 = MEMORY[0x1D38AEA70](v10, v36);
                  v38 = (v10 + 1);
                  if (__OFADD__(v10, 1))
                  {
LABEL_25:
                    __break(1u);
LABEL_26:
                    v33 = v61;
                    v31 = v36;
                    v15 = MEMORY[0x1E69E7CC0];
                    goto LABEL_31;
                  }
                }

                else
                {
                  if (v10 >= *(v6 + 2))
                  {
                    __break(1u);
                    goto LABEL_28;
                  }

                  v37 = *(v36 + 8 * v10 + 32);

                  v38 = (v10 + 1);
                  if (__OFADD__(v10, 1))
                  {
                    goto LABEL_25;
                  }
                }

                v60 = v37;
                swift_getKeyPath();
                sub_1D2ED4E60(&qword_1EC7394E0, type metadata accessor for StoredReference);
                sub_1D2EE3F98();

                swift_getKeyPath();
                sub_1D2EC2C0C();
                sub_1D2EE4898();

                sub_1D2EE5028();
                v39 = *(v61 + 16);
                sub_1D2EE5058();
                sub_1D2EE5068();
                sub_1D2EE5038();
                ++v10;
                if (v38 == v11)
                {
                  goto LABEL_26;
                }
              }
            }
          }

          else
          {
            v11 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v56 = v6;
            if (v11)
            {
              goto LABEL_17;
            }
          }

          v33 = v15;
LABEL_31:

          v40 = v50;
          v28 = v53;
          if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
          {
            v34 = sub_1D2EE50B8();
            if (!v34)
            {
LABEL_44:

              v42 = MEMORY[0x1E69E7CC0];
              goto LABEL_45;
            }
          }

          else
          {
            v34 = *(v33 + 16);
            if (!v34)
            {
              goto LABEL_44;
            }
          }

          v61 = v15;
          v32 = &v61;
          sub_1D2EDCA38(0, v34 & ~(v34 >> 63), 0);
          if ((v34 & 0x8000000000000000) == 0)
          {
            break;
          }

          __break(1u);
LABEL_47:
          ;
        }

        v41 = 0;
        v42 = v61;
        v43 = v33;
        v54 = v58 + 32;
        v55 = v33 & 0xC000000000000001;
        do
        {
          v44 = v34;
          if (v55)
          {
            v45 = MEMORY[0x1D38AEA70](v41, v43);
          }

          else
          {
            v45 = *(v43 + 8 * v41 + 32);
          }

          v60 = v45;
          swift_getKeyPath();
          sub_1D2ED4E60(&qword_1EC7394E0, type metadata accessor for StoredReference);

          sub_1D2EE3F98();

          swift_getKeyPath();
          sub_1D2ED4E60(&qword_1EC737CC8, MEMORY[0x1E69695A8]);
          v46 = v56;
          sub_1D2EE4898();

          v61 = v42;
          v48 = *(v42 + 16);
          v47 = *(v42 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1D2EDCA38(v47 > 1, v48 + 1, 1);
            v42 = v61;
          }

          ++v41;
          *(v42 + 16) = v48 + 1;
          (*(v58 + 32))(v42 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v48, v46, v57);
          v34 = v44;
          v43 = v33;
        }

        while (v44 != v41);

        v40 = v50;
        v28 = v53;
LABEL_45:
        v15 = sub_1D2ED4CC4(v42);

        (*(v52 + 8))(v28, v40);
      }
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

uint64_t sub_1D2ED0F20()
{
  v1[3] = v0;
  v2 = sub_1D2EE3EB8();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_1D2EE44F8();
  v1[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_1D2EE4558();
  v1[10] = v7;
  v8 = *(v7 - 8);
  v1[11] = v8;
  v9 = *(v8 + 64) + 15;
  v1[12] = swift_task_alloc();
  v10 = sub_1D2EE4578();
  v1[13] = v10;
  v11 = *(v10 - 8);
  v1[14] = v11;
  v12 = *(v11 + 64) + 15;
  v1[15] = swift_task_alloc();
  v13 = sub_1D2EE4588();
  v1[16] = v13;
  v14 = *(v13 - 8);
  v1[17] = v14;
  v15 = *(v14 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED113C, 0, 0);
}

uint64_t sub_1D2ED113C()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[20] = __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Loading FTMS voicemails", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[10];
  v20 = v0[9];
  v21 = v0[15];
  v12 = v0[8];
  v22 = v0[3];

  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1F4E914F0;
  *v6 = v13;
  (*(v7 + 104))(v6, *MEMORY[0x1E699BFF0], v8);
  (*(v7 + 16))(v5, v6, v8);
  (*(v9 + 104))(v10, *MEMORY[0x1E699BFC8], v11);
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1D2ED4E60(&qword_1EC739720, MEMORY[0x1E699BF08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739728, &qword_1D2EF5B40);
  sub_1D2ED4A98();
  sub_1D2EE4EB8();
  sub_1D2EE4568();
  v14 = type metadata accessor for SmartActionsServer();
  v15 = *__swift_project_boxed_opaque_existential_1((v22 + *(v14 + 20)), *(v22 + *(v14 + 20) + 24));
  v16 = *(MEMORY[0x1E699BF80] + 4);
  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_1D2ED1424;
  v18 = v0[15];

  return MEMORY[0x1EEE03C00](v18);
}

uint64_t sub_1D2ED1424(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_1D2ED18F0;
  }

  else
  {
    v5 = sub_1D2ED1538;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2ED1538()
{
  v47 = v1;
  v2 = v1[22];
  v3 = v1[20];

  v4 = sub_1D2EE45F8();
  LOBYTE(v5) = sub_1D2EE4DD8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[22];
  if (!v6)
  {
    v10 = v1[22];

    goto LABEL_6;
  }

  v0 = swift_slowAlloc();
  *v0 = 134349056;
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D2EE50B8())
  {
    v9 = v1[22];
    *(v0 + 4) = i;

    _os_log_impl(&dword_1D2E46000, v4, v5, "Loading %{public}ld FTMS voicemails", v0, 0xCu);
    MEMORY[0x1D38AF660](v0, -1, -1);
LABEL_6:

    v11 = v1[22];
    if (v11 >> 62)
    {
      if (v11 < 0)
      {
        v29 = v1[22];
      }

      v5 = sub_1D2EE50B8();
      if (!v5)
      {
LABEL_23:
        v30 = v1[22];

        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_24;
      }
    }

    else
    {
      v5 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    v46 = MEMORY[0x1E69E7CC0];
    v4 = &v46;
    sub_1D2EDCA38(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_28:
    if (v1[22] < 0)
    {
      v41 = v1[22];
    }
  }

  v12 = v46;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v14 = v1[5];
    do
    {
      v15 = v1[7];
      MEMORY[0x1D38AEA70](v13, v1[22]);
      sub_1D2EE44D8();
      swift_unknownObjectRelease();
      v46 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D2EDCA38(v16 > 1, v17 + 1, 1);
        v12 = v46;
      }

      v18 = v1[7];
      v19 = v1[4];
      ++v13;
      *(v12 + 16) = v17 + 1;
      (*(v14 + 32))(v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v17, v18, v19);
    }

    while (v5 != v13);
  }

  else
  {
    v20 = v1[5];
    v21 = (v1[22] + 32);
    do
    {
      v22 = v1[6];
      v23 = *v21;
      sub_1D2EE44D8();

      v46 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D2EDCA38(v24 > 1, v25 + 1, 1);
        v12 = v46;
      }

      v26 = v1[6];
      v27 = v1[4];
      *(v12 + 16) = v25 + 1;
      (*(v20 + 32))(v12 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v25, v26, v27);
      ++v21;
      --v5;
    }

    while (v5);
  }

  v28 = v1[22];

LABEL_24:
  v31 = v1[18];
  v32 = v1[19];
  v33 = v1[16];
  v34 = v1[17];
  v36 = v1[14];
  v35 = v1[15];
  v38 = v1[12];
  v37 = v1[13];
  v42 = v1[9];
  v43 = v1[7];
  v44 = v1[6];
  v45 = sub_1D2ED4CC4(v12);

  (*(v36 + 8))(v35, v37);
  (*(v34 + 8))(v32, v33);

  v39 = v1[1];

  return v39(v45);
}

uint64_t sub_1D2ED18F0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[12];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];
  v10 = v0[23];

  return v9();
}

uint64_t sub_1D2ED19E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for PersistenceConfiguration();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED1AE0, 0, 0);
}

uint64_t sub_1D2ED1AE0()
{
  v14 = v0;
  if (*(v0[2] + 16))
  {
    v1 = v0[5];
    v2 = v0[6];
    v3 = v0[4];
    sub_1D2EBF3B8(v0[3], v3);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_1D2E5D0B8(v0[4], &qword_1EC739490, qword_1D2EF4B90);
    }

    else
    {
      v4 = v0[7];
      v5 = v0[3];
      sub_1D2ED4B64(v0[4], v4, type metadata accessor for PersistenceConfiguration);
      v6 = *(v5 + *(type metadata accessor for ContainerProvider() + 20));
      v7 = swift_task_alloc();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      os_unfair_lock_lock((v6 + 24));
      sub_1D2ED4EA8((v6 + 16), &v13);
      os_unfair_lock_unlock((v6 + 24));
      v8 = v0[7];

      sub_1D2ED4A38(v8, type metadata accessor for PersistenceConfiguration);
    }
  }

  v9 = v0[7];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2ED1C9C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PersistenceConfiguration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_1D2EBF3B8(v1, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1D2E5D0B8(v7, &qword_1EC739490, qword_1D2EF4B90);
    }

    else
    {
      sub_1D2ED4B64(v7, v13, type metadata accessor for PersistenceConfiguration);
      v14 = type metadata accessor for ContainerProvider();
      v15 = *(v1 + *(v14 + 20));
      MEMORY[0x1EEE9AC00](v14);
      *(&v16 - 2) = v1;
      *(&v16 - 1) = v13;
      os_unfair_lock_lock((v15 + 24));
      sub_1D2ED4EA8((v15 + 16), &v17);
      os_unfair_lock_unlock((v15 + 24));
      if (!v2)
      {
      }

      return sub_1D2ED4A38(v13, type metadata accessor for PersistenceConfiguration);
    }
  }

  return result;
}

uint64_t sub_1D2ED1EA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1D2EE3EB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1D2E5D0B8(v6, &qword_1EC738A70, &qword_1D2EF20F0))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1D2ED2B24(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D2ED20C0(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v69 - v10);
  v12 = sub_1D2EE3EB8();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v69 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_1D2E5D0B8(v32, &qword_1EC738A70, &qword_1D2EF20F0);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
    v35 = sub_1D2EE49E8();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8]);
    v39 = sub_1D2EE4A08();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_1D2E5D0B8(v26, &qword_1EC738A70, &qword_1D2EF20F0);
        a2 = sub_1D2ED35FC(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_1D2EE49E8();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_1D2EE4A08();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_1D2EE4A08();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_1D2ED3128(v68, v69, v84, v26, &v93);

  MEMORY[0x1D38AF660](v68, -1, -1);
LABEL_52:
  sub_1D2ED4CBC();
LABEL_54:
  v63 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1D2ED2B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
  v35 = a1;
  v13 = sub_1D2EE49E8();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8]);
      v22 = sub_1D2EE4A08();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D2ED3924();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1D2ED3E78(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1D2ED2DCC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D2EE3EB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739738, &qword_1D2EF5B90);
  result = sub_1D2EE4F88();
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
      sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
      result = sub_1D2EE49E8();
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

uint64_t sub_1D2ED3128(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_1D2EE3EB8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1D2E5D0B8(v12, &qword_1EC738A70, &qword_1D2EF20F0);
          v48 = v64;

          return sub_1D2ED35FC(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
        v38 = sub_1D2EE49E8();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8]);
        v46 = sub_1D2EE4A08();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D2ED35FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1D2EE3EB8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739738, &qword_1D2EF5B90);
  result = sub_1D2EE4F98();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
    result = sub_1D2EE49E8();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1D2ED3924()
{
  v1 = v0;
  v2 = sub_1D2EE3EB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739738, &qword_1D2EF5B90);
  v7 = *v0;
  v8 = sub_1D2EE4F78();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1D2ED3B5C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D2EE3EB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739738, &qword_1D2EF5B90);
  v10 = sub_1D2EE4F88();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
      result = sub_1D2EE49E8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1D2ED3E78(int64_t a1)
{
  v3 = sub_1D2EE3EB8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1D2EE4ED8();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
        v27 = sub_1D2EE49E8();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_1D2ED4180(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = sub_1D2EE49E8();
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
      sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8]);
      v23 = sub_1D2EE4A08();
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
    sub_1D2ED4460(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1D2ED4460(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D2ED2DCC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D2ED3924();
      goto LABEL_12;
    }

    sub_1D2ED3B5C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
  v15 = sub_1D2EE49E8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8]);
      v23 = sub_1D2EE4A08();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D2EE52A8();
  __break(1u);
  return result;
}

void sub_1D2ED4704()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2EE4618();
  __swift_project_value_buffer(v0, qword_1EC7466D0);
  oslog = sub_1D2EE45F8();
  v1 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D2E46000, oslog, v1, "Handling ping for SmartActions", v2, 2u);
    MEMORY[0x1D38AF660](v2, -1, -1);
  }
}

uint64_t sub_1D2ED47EC()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for PersistenceConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1D2E5D0B8(v6, &qword_1EC739490, qword_1D2EF4B90);
  }

  sub_1D2ED4B64(v6, v11, type metadata accessor for PersistenceConfiguration);
  v13 = type metadata accessor for ContainerProvider();
  v14 = *(v2 + *(v13 + 20));
  MEMORY[0x1EEE9AC00](v13);
  *(&v15 - 2) = v2;
  *(&v15 - 1) = v11;
  os_unfair_lock_lock((v14 + 24));
  sub_1D2EBF4F4((v14 + 16), &v16);
  os_unfair_lock_unlock((v14 + 24));
  if (!v1)
  {
  }

  return sub_1D2ED4A38(v11, type metadata accessor for PersistenceConfiguration);
}

uint64_t sub_1D2ED4A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2ED4A98()
{
  result = qword_1EC739730;
  if (!qword_1EC739730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC739728, &qword_1D2EF5B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739730);
  }

  return result;
}

uint64_t sub_1D2ED4AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2ED4B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2ED4BCC(uint64_t a1)
{
  v4 = *(type metadata accessor for SmartActionsServer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E5BA34;

  return sub_1D2ECE8A0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D2ED4CC4(uint64_t a1)
{
  v2 = sub_1D2EE3EB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1D38AE810](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1D2ED4180(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1D2ED4E60(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1D2ED4EC0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1D2EE3EF8() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1D2ED7E98();
  }

  while ((sub_1D2EE4A08() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_1D2ED4F98(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v144 = a2;
  v145 = a3;
  v136 = sub_1D2EE3EB8();
  v4 = *(v136 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v135 = v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA0, &qword_1D2EF5D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v125 - v9;
  v11 = type metadata accessor for SmartAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = MEMORY[0x1E69E7CC0];
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    v130 = 0x80000001D2EE8D00;
    v128 = 0x80000001D2EE8D20;
    v126 = 0x80000001D2EE8D60;
    v125[1] = 0x80000001D2EE8EF0;
    v125[2] = 0x80000001D2EE8F10;
    v127 = 0x80000001D2EE8F30;
    v129 = 0x80000001D2EE8F50;
    v133 = (v4 + 16);
    v137 = MEMORY[0x1E69E7CC0];
    v132 = (v4 + 8);
    v131 = xmmword_1D2EF5C00;
    v134 = v10;
    v139 = v11;
    v142 = v18;
    v143 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      sub_1D2E51E80(v17, v15);
      v19 = *&v15[*(v11 + 36)];
      if (!*(v19 + 16))
      {
        goto LABEL_3;
      }

      v20 = *&v15[*(v11 + 36)];
      v21 = sub_1D2E4FC44(0x656C746974, 0xE500000000000000);
      if ((v22 & 1) == 0)
      {
        goto LABEL_9;
      }

      v23 = (*(v19 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v154 = v144;
      v155 = v145;
      v140 = v24;
      v152 = v24;
      v153 = v25;
      v26 = sub_1D2EE3F78();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      sub_1D2E4EED4();

      sub_1D2EE4E88();
      v141 = v27;
      v29 = v28;
      sub_1D2E5D0B8(v10, &qword_1EC738CA0, &qword_1D2EF5D80);
      if (v29)
      {
LABEL_8:

        v18 = v142;
LABEL_9:
        if (*(v19 + 16))
        {
          v30 = sub_1D2E4FC44(0x656C746974, 0xE500000000000000);
          if (v31)
          {
            v32 = (*(v19 + 56) + 16 * v30);
            v33 = *v32;
            v34 = v32[1];
            v154 = *v32;
            v155 = v34;
            v152 = 32;
            v153 = 0xE100000000000000;
            sub_1D2E4EED4();

            v35 = sub_1D2EE4E68();
            if (v35[2])
            {
              v141 = v33;
              v36 = v35[4];
              v37 = v35[5];

              v154 = v144;
              v155 = v145;
              v140 = v36;
              v152 = v36;
              v153 = v37;
              v38 = sub_1D2EE3F78();
              (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
              sub_1D2EE4E88();
              v40 = v39;
              v42 = v41;
              sub_1D2E5D0B8(v10, &qword_1EC738CA0, &qword_1D2EF5D80);
              if ((v42 & 1) == 0)
              {
                v43 = sub_1D2ED7748(*&v143[*(v139 + 32)], *&v143[*(v139 + 32) + 8]);
                if (v44)
                {
                  v141 = v44;
                  v45 = v43;

                  v46 = v145;
                  v47 = sub_1D2EE4B48();
                  v48 = sub_1D2EE4B48();
                  if (__OFSUB__(v48, v47))
                  {
                    __break(1u);
                    goto LABEL_67;
                  }

                  v138 = v47;
                  v49 = *v133;
                  v50 = v135;
                  v51 = v136;
                  v137 = v48 - v47;
                  v49(v135, v143, v136);
                  v52 = type metadata accessor for SmartActionMenuItem();
                  v53 = objc_allocWithZone(v52);
                  v49(&v53[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_recommendationId], v50, v51);
                  v54 = &v53[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_actionDescription];
                  v55 = v141;
                  *v54 = v45;
                  v54[1] = v55;
                  v56 = &v53[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_iconType];
                  *v56 = 0;
                  *(v56 + 1) = 0xE000000000000000;
                  v149.receiver = v53;
                  v149.super_class = v52;
                  v57 = objc_msgSendSuper2(&v149, sel_init);
                  (*v132)(v50, v51);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739760, &qword_1D2EF5D88);
                  v58 = swift_allocObject();
                  *(v58 + 16) = v131;
                  *(v58 + 32) = v57;
                  v59 = type metadata accessor for SmartActionDataItem();
                  v60 = objc_allocWithZone(v59);
                  v61 = &v60[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_textRange];
                  v62 = v137;
                  *v61 = v138;
                  *(v61 + 1) = v62;
                  v63 = &v60[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_title];
                  *v63 = v140;
                  *(v63 + 1) = v37;
                  *&v60[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_menuItems] = v58;
                  v148.receiver = v60;
                  v148.super_class = v59;
                  v64 = objc_msgSendSuper2(&v148, sel_init);
                  goto LABEL_34;
                }
              }

              v15 = v143;
              v33 = v141;
            }

            else
            {
            }

            v154 = v33;
            v155 = v34;
            v152 = 32;
            v153 = 0xE100000000000000;
            v89 = sub_1D2EE4E68();

            v90 = *(v89 + 16);
            if (v90)
            {
              v91 = (v89 + 16 + 16 * v90);
              v92 = *v91;
              v93 = v91[1];

              v154 = v144;
              v155 = v145;
              v141 = v92;
              v152 = v92;
              v153 = v93;
              v94 = sub_1D2EE3F78();
              (*(*(v94 - 8) + 56))(v10, 1, 1, v94);
              sub_1D2EE4E88();
              LOBYTE(v92) = v95;
              sub_1D2E5D0B8(v10, &qword_1EC738CA0, &qword_1D2EF5D80);
              v11 = v139;
              if ((v92 & 1) != 0 || (v96 = sub_1D2ED7748(*&v15[*(v139 + 32)], *&v15[*(v139 + 32) + 8]), !v97))
              {
                sub_1D2E51EE4(v15);
              }

              else
              {
                v98 = v96;
                v99 = v97;
                v100 = sub_1D2EE4B48();
                result = sub_1D2EE4B48();
                if (__OFSUB__(result, v100))
                {
                  __break(1u);
                  return result;
                }

                v140 = v100;
                v102 = *v133;
                v103 = v135;
                v104 = v136;
                v138 = (result - v100);
                v102(v135, v143, v136);
                v105 = type metadata accessor for SmartActionMenuItem();
                v106 = objc_allocWithZone(v105);
                v137 = v99;
                v107 = v98;
                v108 = v106;
                v102(&v106[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_recommendationId], v103, v104);
                v109 = &v108[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_actionDescription];
                v110 = v137;
                *v109 = v107;
                *(v109 + 1) = v110;
                v111 = &v108[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_iconType];
                *v111 = 0;
                *(v111 + 1) = 0xE000000000000000;
                v151.receiver = v108;
                v151.super_class = v105;
                v112 = objc_msgSendSuper2(&v151, sel_init);
                (*v132)(v103, v104);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739760, &qword_1D2EF5D88);
                v113 = swift_allocObject();
                *(v113 + 16) = v131;
                *(v113 + 32) = v112;
                v114 = type metadata accessor for SmartActionDataItem();
                v115 = objc_allocWithZone(v114);
                v116 = &v115[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_textRange];
                v117 = v138;
                *v116 = v140;
                *(v116 + 1) = v117;
                v118 = &v115[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_title];
                *v118 = v141;
                *(v118 + 1) = v93;
                *&v115[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_menuItems] = v113;
                v150.receiver = v115;
                v150.super_class = v114;
                v64 = objc_msgSendSuper2(&v150, sel_init);
LABEL_34:
                v119 = v64;
                MEMORY[0x1D38AE650]();
                if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v122 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_1D2EE4C08();
                }

                sub_1D2EE4C18();

                v137 = v156;
                v15 = v143;
                sub_1D2E51EE4(v143);
                v10 = v134;
                v11 = v139;
              }
            }

            else
            {
              sub_1D2E51EE4(v15);

              v11 = v139;
            }

            v18 = v142;
            goto LABEL_4;
          }
        }

LABEL_3:
        sub_1D2E51EE4(v15);
        goto LABEL_4;
      }

      v138 = v25;
      v65 = &v15[*(v11 + 32)];
      v66 = *v65;
      v67 = *(v65 + 1);
      v68 = *v65 == 0xD000000000000013 && v130 == v67;
      if (v68 || (sub_1D2EE5288() & 1) != 0)
      {
        v137 = 0xD000000000000011;
        p_super_class = &v154;
      }

      else if (v66 == 0xD000000000000012 && v128 == v67 || (sub_1D2EE5288() & 1) != 0)
      {
        v137 = 0xD000000000000017;
        p_super_class = &v152;
      }

      else
      {
        if (v66 == 0x6C7070612E6D6F63 && v67 == 0xEE007370616D2E65 || (sub_1D2EE5288() & 1) != 0)
        {
          v137 = 0x6572696420746547;
          v70 = 0xEE00736E6F697463;
          goto LABEL_23;
        }

        if (v66 == 0xD000000000000011 && v126 == v67 || (sub_1D2EE5288() & 1) != 0)
        {
          v137 = 0xD000000000000010;
          p_super_class = &v151;
        }

        else
        {
          if (v66 != 0x6C7070612E6D6F63 || v67 != 0xEF656E6F68702E65)
          {
            v120 = sub_1D2EE5288();
            v15 = v143;
            if ((v120 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v137 = 0xD000000000000011;
          p_super_class = &v150.super_class;
        }
      }

      v70 = *(p_super_class - 32);
LABEL_23:
      v71 = sub_1D2EE4B48();
      v72 = sub_1D2EE4B48();
      v73 = v72 - v71;
      if (__OFSUB__(v72, v71))
      {
        __break(1u);
        goto LABEL_65;
      }

      v141 = v16;
      v74 = *v133;
      v75 = v135;
      v76 = v136;
      (*v133)(v135, v143, v136);
      v77 = type metadata accessor for SmartActionMenuItem();
      v78 = objc_allocWithZone(v77);
      v74(&v78[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_recommendationId], v75, v76);
      v79 = &v78[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_actionDescription];
      *v79 = v137;
      v79[1] = v70;
      v80 = &v78[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_iconType];
      *v80 = 0;
      *(v80 + 1) = 0xE000000000000000;
      v147.receiver = v78;
      v147.super_class = v77;
      v81 = objc_msgSendSuper2(&v147, sel_init);
      (*v132)(v75, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739760, &qword_1D2EF5D88);
      v82 = swift_allocObject();
      *(v82 + 16) = v131;
      *(v82 + 32) = v81;
      v83 = type metadata accessor for SmartActionDataItem();
      v84 = objc_allocWithZone(v83);
      v85 = &v84[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_textRange];
      *v85 = v71;
      v85[1] = v73;
      v86 = &v84[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_title];
      v87 = v138;
      *v86 = v140;
      *(v86 + 1) = v87;
      *&v84[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_menuItems] = v82;
      v146.receiver = v84;
      v146.super_class = v83;
      v88 = objc_msgSendSuper2(&v146, sel_init);
      MEMORY[0x1D38AE650]();
      if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v121 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D2EE4C08();
      }

      sub_1D2EE4C18();

      v137 = v156;
      v15 = v143;
      sub_1D2E51EE4(v143);
      v10 = v134;
      v11 = v139;
      v18 = v142;
      v16 = v141;
LABEL_4:
      v17 += v18;
      if (!--v16)
      {
        goto LABEL_57;
      }
    }
  }

  v137 = MEMORY[0x1E69E7CC0];
LABEL_57:
  if (qword_1EC737C68 != -1)
  {
LABEL_65:
    swift_once();
  }

  v123 = sub_1D2EE4618();
  __swift_project_value_buffer(v123, qword_1EC7466D0);
  v46 = v137;

  v47 = sub_1D2EE45F8();
  v40 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v47, v40))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    if (v46 >> 62)
    {
LABEL_67:
      v124 = sub_1D2EE50B8();
    }

    else
    {
      v124 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v45 + 4) = v124;

    _os_log_impl(&dword_1D2E46000, v47, v40, "Constructing data items for smart actions returned: %ld items", v45, 0xCu);
    MEMORY[0x1D38AF660](v45, -1, -1);
  }

  else
  {
  }

  return v46;
}

uint64_t sub_1D2ED6038(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1D2EE3EF8();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738598, &unk_1D2EF2600) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v8 = sub_1D2EE3F58();
  v3[20] = v8;
  v9 = *(v8 - 8);
  v3[21] = v9;
  v10 = *(v9 + 64) + 15;
  v3[22] = swift_task_alloc();
  v11 = sub_1D2EE3F78();
  v3[23] = v11;
  v12 = *(v11 - 8);
  v3[24] = v12;
  v13 = *(v12 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED61F8, 0, 0);
}

uint64_t sub_1D2ED61F8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 128);
  v42 = *(v0 + 120);
  sub_1D2EE3F38();
  sub_1D2EE3F68();
  (*(v2 + 8))(v1, v3);
  sub_1D2EE3F48();
  (*(v6 + 8))(v4, v5);
  sub_1D2E5D050(v7, v8, &qword_1EC738598, &unk_1D2EF2600);
  v10 = (*(v9 + 48))(v8, 1, v42);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  if (v10 == 1)
  {
    sub_1D2E5D0B8(*(v0 + 152), &qword_1EC738598, &unk_1D2EF2600);
    sub_1D2E5D0B8(v11, &qword_1EC738598, &unk_1D2EF2600);
LABEL_11:
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v24 = sub_1D2EE4618();
    __swift_project_value_buffer(v24, qword_1EC7466D0);
    v25 = sub_1D2EE45F8();
    v26 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D2E46000, v25, v26, "Processing smart app actions validation failure.", v27, 2u);
      MEMORY[0x1D38AF660](v27, -1, -1);
    }

    v28 = *(v0 + 200);
    v29 = *(v0 + 176);
    v31 = *(v0 + 144);
    v30 = *(v0 + 152);
    v32 = *(v0 + 136);

    v33 = *(v0 + 8);
    v34 = MEMORY[0x1E69E7CC0];

    return v33(v34);
  }

  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  (*(v14 + 32))(v13, *(v0 + 144), v15);
  v17 = sub_1D2ED4EC0(v13, *(v16 + 48));
  (*(v14 + 8))(v13, v15);
  sub_1D2E5D0B8(v12, &qword_1EC738598, &unk_1D2EF2600);
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = *(v0 + 104);
  if ((v18 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v19 = *(v0 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    sub_1D2E5D050(*(v0 + 112), v0 + 56, &qword_1EC7396B0, &qword_1D2EF59A0);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    sub_1D2ED7DD4(v0 + 56, v0 + 16);
    v20 = swift_task_alloc();
    *(v0 + 208) = v20;
    *v20 = v0;
    v20[1] = sub_1D2ED661C;
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);

    return sub_1D2EC6220(v22, v21);
  }

  else
  {
    sub_1D2EBC018();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    v36 = *(v0 + 200);
    v37 = *(v0 + 176);
    v39 = *(v0 + 144);
    v38 = *(v0 + 152);
    v40 = *(v0 + 136);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1D2ED661C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 208);
  v7 = *v3;
  v5[27] = a2;
  v5[28] = v2;

  if (v2)
  {
    v8 = sub_1D2ED6824;
  }

  else
  {
    v5[29] = a1;
    v8 = sub_1D2ED6744;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D2ED6744()
{
  v1 = v0[28];
  v2 = sub_1D2EC6D48(v0[29], v0[27]);
  v3 = v0[27];
  sub_1D2ED7E44((v0 + 2));

  v4 = v0[25];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];

  v10 = v0[1];
  if (!v1)
  {
    v9 = v2;
  }

  return v10(v9);
}

uint64_t sub_1D2ED6824()
{
  sub_1D2ED7E44((v0 + 2));
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D2ED68CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2ED68EC, 0, 0);
}

uint64_t sub_1D2ED68EC()
{
  sub_1D2ED6E1C(*(v0 + 16));
  if (v1)
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EC7466D0);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D2E46000, v5, v6, "Creating Siri spotlight context", v7, 2u);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }

    v8 = [objc_allocWithZone(MEMORY[0x1E69CE1C8]) init];
    v9 = sub_1D2EE45F8();
    v10 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D2E46000, v9, v10, "Initializing Siri spotlight context source", v11, 2u);
      MEMORY[0x1D38AF660](v11, -1, -1);
    }

    [v8 setSource_];
    v12 = sub_1D2EE45F8();
    v13 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D2E46000, v12, v13, "Saving context utterance", v14, 2u);
      MEMORY[0x1D38AF660](v14, -1, -1);
    }

    v15 = sub_1D2EE4A38();

    [v8 setUtteranceText_];

    v16 = sub_1D2EE45F8();
    v17 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D2E46000, v16, v17, "Creating Siri spotlight source", v18, 2u);
      MEMORY[0x1D38AF660](v18, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E69CE1D0]) init];
    v20 = sub_1D2EE45F8();
    v21 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D2E46000, v20, v21, "Activating Siri spotlight source", v22, 2u);
      MEMORY[0x1D38AF660](v22, -1, -1);
    }

    [v19 activateWithContext_];
    v23 = sub_1D2EE45F8();
    v24 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D2E46000, v23, v24, "Siri query processed", v25, 2u);
      MEMORY[0x1D38AF660](v25, -1, -1);
    }

    v26 = *(v0 + 8);

    return v26(0, 0);
  }

  else
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v27 = sub_1D2EE4618();
    __swift_project_value_buffer(v27, qword_1EC7466D0);
    v28 = sub_1D2EE45F8();
    v29 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D2E46000, v28, v29, "Missing / unhandled app bundle id. Returning..", v30, 2u);
      MEMORY[0x1D38AF660](v30, -1, -1);
    }

    sub_1D2EBC018();
    swift_allocError();
    *v31 = 4;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D2ED6E1C(uint64_t a1)
{
  v2 = type metadata accessor for SmartAction();
  v3 = *(a1 + *(v2 + 36));
  if (!*(v3 + 16) || (v4 = v2, v5 = sub_1D2E4FC44(0x656C746974, 0xE500000000000000), (v6 & 1) == 0))
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v27 = sub_1D2EE4618();
    __swift_project_value_buffer(v27, qword_1EC7466D0);
    v28 = sub_1D2EE45F8();
    v29 = sub_1D2EE4DB8();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Cannot generate user query without parameter title. Returning..";
    goto LABEL_24;
  }

  v7 = (*(v3 + 56) + 16 * v5);
  v9 = *v7;
  v8 = v7[1];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v34 = sub_1D2EE4618();
    __swift_project_value_buffer(v34, qword_1EC7466D0);
    v28 = sub_1D2EE45F8();
    v29 = sub_1D2EE4DB8();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Cannot generate user query because title is empty. Returning..";
LABEL_24:
    _os_log_impl(&dword_1D2E46000, v28, v29, v31, v30, 2u);
    MEMORY[0x1D38AF660](v30, -1, -1);
LABEL_25:

    sub_1D2EBC018();
    swift_allocError();
    *v32 = 12;
    return swift_willThrow();
  }

  v11 = (a1 + *(v4 + 32));
  v12 = *v11;
  v13 = v11[1];
  v14 = *v11 == 0xD000000000000013 && 0x80000001D2EE8D00 == v13;
  if (v14 || (sub_1D2EE5288() & 1) != 0)
  {

    sub_1D2EE4FB8();

    v57 = 0xD00000000000001DLL;
    v58 = 0x80000001D2EE8ED0;
    MEMORY[0x1D38AE570](v9, v8);

    if (!*(v3 + 16))
    {
      return v57;
    }

    v15 = sub_1D2E4FC44(0x69745F6D61726170, 0xEA0000000000656DLL);
    if (v16)
    {
      v17 = (*(v3 + 56) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      strcpy(v56, ", at time ");
      BYTE3(v56[1]) = 0;
      HIDWORD(v56[1]) = -369098752;

      MEMORY[0x1D38AE570](v18, v19);

      MEMORY[0x1D38AE570](v56[0], v56[1]);
    }

    if (!*(v3 + 16))
    {
      return v57;
    }

    v20 = 0x6F6C5F6D61726170;
    v21 = 0xEE006E6F69746163;
    goto LABEL_16;
  }

  v35 = v12 == 0xD000000000000012 && 0x80000001D2EE8D20 == v13;
  if (v35 || (sub_1D2EE5288() & 1) != 0)
  {

    sub_1D2EE4FB8();

    v57 = 0xD000000000000023;
    v58 = 0x80000001D2EE8E80;
    MEMORY[0x1D38AE570](v9, v8);

    if (!*(v3 + 16))
    {
      return v57;
    }

    v36 = sub_1D2E4FC44(0xD00000000000001CLL, 0x80000001D2EE8B20);
    if (v37)
    {
      v38 = (*(v3 + 56) + 16 * v36);
      v39 = *v38;
      v40 = v38[1];
      strcpy(v56, ", at time ");
      BYTE3(v56[1]) = 0;
      HIDWORD(v56[1]) = -369098752;

      MEMORY[0x1D38AE570](v39, v40);

      MEMORY[0x1D38AE570](v56[0], v56[1]);
    }

    if (!*(v3 + 16))
    {
      return v57;
    }

    v41 = sub_1D2E4FC44(0xD000000000000019, 0x80000001D2EE8B40);
    if (v42)
    {
      v43 = (*(v3 + 56) + 16 * v41);
      v44 = *v43;
      v45 = v43[1];

      sub_1D2EE4FB8();

      v56[0] = 0xD000000000000014;
      v56[1] = 0x80000001D2EE8EB0;
      MEMORY[0x1D38AE570](v44, v45);

      MEMORY[0x1D38AE570](0xD000000000000014, 0x80000001D2EE8EB0);
    }

    if (!*(v3 + 16))
    {
      return v57;
    }

    v20 = 0xD00000000000001ELL;
    v21 = 0x80000001D2EE8B60;
LABEL_16:
    v22 = sub_1D2E4FC44(v20, v21);
    if ((v23 & 1) == 0)
    {
      return v57;
    }

    v24 = (*(v3 + 56) + 16 * v22);
    v25 = *v24;
    v26 = v24[1];

    sub_1D2EE4FB8();

    strcpy(v56, ", at location ");
    HIBYTE(v56[1]) = -18;
    goto LABEL_18;
  }

  if (v12 == 0xD000000000000012 && 0x80000001D2EE8D40 == v13 || (sub_1D2EE5288() & 1) != 0)
  {

    sub_1D2EE4FB8();

    v57 = 0xD00000000000001FLL;
    v58 = 0x80000001D2EE8DE0;
    MEMORY[0x1D38AE570](v9, v8);

    if (!*(v3 + 16))
    {
      return v57;
    }

    v46 = sub_1D2E4FC44(0xD000000000000012, 0x80000001D2EE8E00);
    if (v47)
    {
      v48 = (*(v3 + 56) + 16 * v46);
      v49 = *v48;
      v50 = v48[1];

      sub_1D2EE4FB8();

      v56[0] = 0xD000000000000014;
      v56[1] = 0x80000001D2EE8E60;
      MEMORY[0x1D38AE570](v49, v50);

      MEMORY[0x1D38AE570](0xD000000000000014, 0x80000001D2EE8E60);
    }

    if (!*(v3 + 16))
    {
      return v57;
    }

    v51 = sub_1D2E4FC44(0xD000000000000013, 0x80000001D2EE8E20);
    if ((v52 & 1) == 0)
    {
      return v57;
    }

    v53 = (*(v3 + 56) + 16 * v51);
    v25 = *v53;
    v26 = v53[1];

    sub_1D2EE4FB8();

    v56[0] = 0xD000000000000015;
    v56[1] = 0x80000001D2EE8E40;
LABEL_18:
    MEMORY[0x1D38AE570](v25, v26);

    MEMORY[0x1D38AE570](v56[0], v56[1]);
LABEL_19:

    return v57;
  }

  if (v12 == 0x6C7070612E6D6F63 && v13 == 0xEE007370616D2E65 || (sub_1D2EE5288() & 1) != 0)
  {
    v58 = 0xE000000000000000;

    sub_1D2EE4FB8();

    v54 = 0x80000001D2EE8DC0;
    v57 = 0xD000000000000012;
LABEL_62:
    v58 = v54;
    MEMORY[0x1D38AE570](v9, v8);
    goto LABEL_19;
  }

  if (v12 == 0xD000000000000011 && 0x80000001D2EE8D60 == v13 || (sub_1D2EE5288() & 1) != 0)
  {
    v57 = 0;
    v58 = 0xE000000000000000;

    sub_1D2EE4FB8();

    v54 = 0x80000001D2EE8DA0;
    v55 = 0xD000000000000017;
LABEL_61:
    v57 = v55;
    goto LABEL_62;
  }

  if (v12 == 0x6C7070612E6D6F63 && v13 == 0xEF656E6F68702E65 || (sub_1D2EE5288() & 1) != 0)
  {
    v57 = 0;
    v58 = 0xE000000000000000;

    sub_1D2EE4FB8();

    v54 = 0x80000001D2EE8D80;
    v55 = 0xD000000000000015;
    goto LABEL_61;
  }

  return 0;
}

unint64_t sub_1D2ED7748(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001D2EE8D00 == a2;
  if (v3 || (sub_1D2EE5288() & 1) != 0)
  {
    return 0xD000000000000011;
  }

  if (a1 == 0xD000000000000012 && 0x80000001D2EE8D20 == a2 || (sub_1D2EE5288() & 1) != 0)
  {
    return 0xD000000000000017;
  }

  result = 0x6572696420746547;
  if (a1 != 0x6C7070612E6D6F63 || a2 != 0xEE007370616D2E65)
  {
    v6 = sub_1D2EE5288();
    result = 0x6572696420746547;
    if ((v6 & 1) == 0)
    {
      if (a1 == 0xD000000000000011 && 0x80000001D2EE8D60 == a2 || (sub_1D2EE5288() & 1) != 0)
      {
        return 0xD000000000000010;
      }

      if ((a1 != 0x6C7070612E6D6F63 || a2 != 0xEF656E6F68702E65) && (sub_1D2EE5288() & 1) == 0)
      {
        return 0;
      }

      return 0xD000000000000011;
    }
  }

  return result;
}

CallIntelligence::SmartAppActionsError_optional __swiftcall SmartAppActionsError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2EE5118();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SmartAppActionsError.rawValue.getter()
{
  result = 0x6C70207974706D45;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6F727265204D4C4CLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x74756F656D6954;
      break;
    case 8:
      result = 0x65646E75204D4C4CLL;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xB:
      result = 0xD00000000000001BLL;
      break;
    case 0xC:
      result = 0x696D20656C746954;
      break;
    case 0xD:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D2ED7B6C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SmartAppActionsError.rawValue.getter();
  v4 = v3;
  if (v2 == SmartAppActionsError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D2EE5288();
  }

  return v7 & 1;
}

unint64_t sub_1D2ED7C0C()
{
  result = qword_1EC739758;
  if (!qword_1EC739758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739758);
  }

  return result;
}

uint64_t sub_1D2ED7C60()
{
  v1 = *v0;
  sub_1D2EE5338();
  SmartAppActionsError.rawValue.getter();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2ED7CC8()
{
  v2 = *v0;
  SmartAppActionsError.rawValue.getter();
  sub_1D2EE4AC8();
}

uint64_t sub_1D2ED7D2C()
{
  v1 = *v0;
  sub_1D2EE5338();
  SmartAppActionsError.rawValue.getter();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

unint64_t sub_1D2ED7D9C@<X0>(unint64_t *a1@<X8>)
{
  result = SmartAppActionsError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2ED7DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396B0, &qword_1D2EF59A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2ED7E98()
{
  result = qword_1EC7392C8;
  if (!qword_1EC7392C8)
  {
    sub_1D2EE3EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7392C8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D2ED7F0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2ED7F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2ED7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D2E5D050(a3, v27 - v11, &qword_1EC739040, &qword_1D2EF2460);
  v13 = sub_1D2EE4CB8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D2E5D0B8(v12, &qword_1EC739040, &qword_1D2EF2460);
  }

  else
  {
    sub_1D2EE4CA8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D2EE4C28();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D2EE4AB8() + 32;
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

      sub_1D2E5D0B8(a3, &qword_1EC739040, &qword_1D2EF2460);

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

  sub_1D2E5D0B8(a3, &qword_1EC739040, &qword_1D2EF2460);
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

uint64_t sub_1D2ED82B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v6 = type metadata accessor for NewSmartAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D2EDC9D4(0, v11, 0);
  v12 = v21;
  for (i = (a3 + 40); ; i += 2)
  {
    v14 = *i;
    v19[0] = *(i - 8);
    v20 = v14;

    (v18[0])(v19);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D2EDC9D4(v15 > 1, v16 + 1, 1);
      v12 = v21;
    }

    *(v12 + 16) = v16 + 1;
    sub_1D2EDDD54(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for NewSmartAction);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2ED8478(uint64_t a1)
{
  sub_1D2EE5338();
  sub_1D2EE3EB8();
  sub_1D2EDDD0C(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
  sub_1D2EE49F8();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1D2EE4AC8();
  return sub_1D2EE5378();
}

uint64_t sub_1D2ED8520(uint64_t a1, uint64_t a2)
{
  sub_1D2EE3EB8();
  sub_1D2EDDD0C(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
  sub_1D2EE49F8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_1D2EE4AC8();
}

uint64_t sub_1D2ED85BC(uint64_t a1, uint64_t a2)
{
  sub_1D2EE5338();
  sub_1D2EE3EB8();
  sub_1D2EDDD0C(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
  sub_1D2EE49F8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1D2EE4AC8();
  return sub_1D2EE5378();
}

uint64_t sub_1D2ED8660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D2EE3E88() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1D2EE5288();
}

uint64_t sub_1D2ED86E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1D2EDDC44(a1, v1 + OBJC_IVAR____TtC16CallIntelligence15VoicemailClient_smartActionsServer, type metadata accessor for SmartActionsServer);
  sub_1D2EE4548();
  *(v1 + 16) = sub_1D2EE4538();

  sub_1D2EE4518();

  v8 = sub_1D2EE4CB8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_1D2EA4398(0, 0, v7, &unk_1D2EF5F18, v9);

  sub_1D2EDDCAC(a1, type metadata accessor for SmartActionsServer);
  return v2;
}

uint64_t sub_1D2ED8878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1D2EE44F8();
  v4[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = sub_1D2EE4558();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = sub_1D2EE4588();
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = sub_1D2EE4578();
  v4[12] = v13;
  v14 = *(v13 - 8);
  v4[13] = v14;
  v15 = *(v14 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED8A20, 0, 0);
}

uint64_t sub_1D2ED8A20()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0[3] + 16);
  (*(v0[10] + 104))(v0[11], *MEMORY[0x1E699BFD8], v0[9]);
  (*(v4 + 104))(v2, *MEMORY[0x1E699BFC8], v3);
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1D2EDDD0C(&qword_1EC739720, MEMORY[0x1E699BF08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739728, &qword_1D2EF5B40);
  sub_1D2ED4A98();
  sub_1D2EE4EB8();
  sub_1D2EE4568();
  v8 = *(MEMORY[0x1E699BF68] + 4);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1D2ED8BE4;
  v10 = v0[14];

  return MEMORY[0x1EEE03BD8](v10);
}

uint64_t sub_1D2ED8BE4()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *v1;
  v6[16] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2ED8DB4, 0, 0);
  }

  else
  {
    v7 = v6[14];
    v8 = v6[11];
    v9 = v6[8];
    v10 = v6[5];

    v11 = v6[1];

    return v11();
  }
}

uint64_t sub_1D2ED8DB4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_1D2ED8E44(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D2EE3EB8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for SendableMessageWraper(0);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED8F60, 0, 0);
}

uint64_t sub_1D2ED8F60()
{
  v1 = *(v0 + 24);
  v2 = sub_1D2EDD404(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  *(v0 + 88) = v3;
  if (v3)
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    *(v0 + 96) = OBJC_IVAR____TtC16CallIntelligence15VoicemailClient_smartActionsServer;
    v8 = *(v4 + 80);
    *(v0 + 160) = v8;
    v9 = *(v4 + 72);
    *(v0 + 120) = 0;
    *(v0 + 128) = v2;
    *(v0 + 104) = v9;
    *(v0 + 112) = v2;
    v10 = *(v0 + 80);
    sub_1D2EDDC44(v6 + ((v8 + 32) & ~v8), v10, type metadata accessor for SendableMessageWraper);
    v11 = (v10 + *(v5 + 20));
    v12 = *v11;
    v13 = v11[1];
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    *v14 = v0;
    v14[1] = sub_1D2ED90E0;

    return sub_1D2ED0068(v12, v13);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);
    v18 = v2;

    v19 = *(v0 + 8);

    return v19(v18);
  }
}

uint64_t sub_1D2ED90E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_1D2ED9208;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_1D2ED94C8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D2ED9208()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EC7466D0);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error processing voicemail%@", v8, 0xCu);
    sub_1D2E5D0B8(v9, &qword_1EC7392E8, &unk_1D2EF63D0);
    MEMORY[0x1D38AF660](v9, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 120) + 1;
  sub_1D2EDDCAC(*(v0 + 80), type metadata accessor for SendableMessageWraper);
  if (v15 == v14)
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);

    v18 = *(v0 + 8);

    return v18(v12);
  }

  else
  {
    v20 = *(v0 + 120) + 1;
    *(v0 + 120) = v20;
    *(v0 + 128) = v12;
    *(v0 + 112) = v13;
    v21 = *(v0 + 96);
    v22 = *(v0 + 80);
    v23 = *(v0 + 64);
    v24 = *(v0 + 32);
    sub_1D2EDDC44(*(v0 + 24) + ((*(v0 + 160) + 32) & ~*(v0 + 160)) + *(v0 + 104) * v20, v22, type metadata accessor for SendableMessageWraper);
    v25 = (v22 + *(v23 + 20));
    v26 = *v25;
    v27 = v25[1];
    v28 = swift_task_alloc();
    *(v0 + 136) = v28;
    *v28 = v0;
    v28[1] = sub_1D2ED90E0;

    return sub_1D2ED0068(v26, v27);
  }
}

uint64_t sub_1D2ED94C8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_1D2ED82B0(sub_1D2E7DADC, v8, v1);

  v10 = *(v6 + 16);
  v10(v5, v4, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v3;
  v12 = sub_1D2E4FE14(v5);
  v14 = *(v3 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v2) = v13;
  if (*(*(v0 + 112) + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_20:
    v46 = v12;
    sub_1D2EDC5E8();
    v12 = v46;
    goto LABEL_8;
  }

  v18 = *(v0 + 56);
  sub_1D2EDBB2C(v17, isUniquelyReferenced_nonNull_native);
  v19 = *(v0 + 16);
  v12 = sub_1D2E4FE14(v18);
  if ((v2 & 1) != (v20 & 1))
  {
    v21 = *(v0 + 40);

    return sub_1D2EE52B8();
  }

LABEL_8:
  v23 = *(v0 + 16);
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);
  v26 = *(v0 + 40);
  if (v2)
  {
    v27 = v23[7];
    v28 = *(v27 + 8 * v12);
    *(v27 + 8 * v12) = v9;

    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v23[(v12 >> 6) + 8] |= 1 << v12;
    v29 = v12;
    v10(v23[6] + *(v25 + 72) * v12, v24, v26);
    *(v23[7] + 8 * v29) = v9;
    result = (*(v25 + 8))(v24, v26);
    v30 = v23[2];
    v16 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v16)
    {
      __break(1u);
      return result;
    }

    v23[2] = v31;
  }

  v32 = *(v0 + 88);
  v33 = *(v0 + 120) + 1;
  sub_1D2EDDCAC(*(v0 + 80), type metadata accessor for SendableMessageWraper);
  if (v33 == v32)
  {
    v34 = *(v0 + 80);
    v35 = *(v0 + 56);

    v36 = *(v0 + 8);

    return v36(v23);
  }

  else
  {
    v37 = *(v0 + 120) + 1;
    *(v0 + 120) = v37;
    *(v0 + 128) = v23;
    *(v0 + 112) = v23;
    v38 = *(v0 + 96);
    v39 = *(v0 + 80);
    v40 = *(v0 + 64);
    v41 = *(v0 + 32);
    sub_1D2EDDC44(*(v0 + 24) + ((*(v0 + 160) + 32) & ~*(v0 + 160)) + *(v0 + 104) * v37, v39, type metadata accessor for SendableMessageWraper);
    v42 = (v39 + *(v40 + 20));
    v43 = *v42;
    v44 = v42[1];
    v45 = swift_task_alloc();
    *(v0 + 136) = v45;
    *v45 = v0;
    v45[1] = sub_1D2ED90E0;

    return sub_1D2ED0068(v43, v44);
  }
}

uint64_t sub_1D2ED9858(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v109 = &v83 - v6;
  v105 = type metadata accessor for PersistenceConfiguration();
  v7 = *(v105 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739780, &qword_1D2EF5E88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v83 - v12;
  v14 = sub_1D2EE3EB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v93 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v99 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v83 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739788, &qword_1D2EF5E90);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v91 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v83 - v26;
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v100 = v29 & *(a1 + 64);
  v103 = v2 + OBJC_IVAR____TtC16CallIntelligence15VoicemailClient_smartActionsServer;
  v84 = (v28 + 63) >> 6;
  v96 = (v15 + 32);
  v97 = (v15 + 16);
  v88 = v15;
  v30 = (v15 + 8);
  v31 = v13;
  v98 = v30;
  v104 = (v7 + 48);
  v92 = a1;

  v33 = 0;
  *&v34 = 136315394;
  v85 = v34;
  v102 = v13;
  v86 = a1 + 64;
  v101 = v14;
  while (1)
  {
    v36 = v100;
    if (!v100)
    {
      break;
    }

    v37 = v31;
    v94 = v33;
    v38 = v33;
LABEL_15:
    v100 = (v36 - 1) & v36;
    v42 = __clz(__rbit64(v36)) | (v38 << 6);
    v43 = v92;
    v44 = v88;
    v45 = v87;
    v46 = v101;
    (*(v88 + 16))(v87, *(v92 + 48) + *(v88 + 72) * v42, v101);
    v47 = *(*(v43 + 56) + 8 * v42);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739790, &qword_1D2EF5E98);
    v49 = *(v48 + 48);
    v50 = *(v44 + 32);
    v51 = v91;
    v50(v91, v45, v46);
    *(v51 + v49) = v47;
    (*(*(v48 - 8) + 56))(v51, 0, 1, v48);

    v41 = v93;
LABEL_16:
    v52 = v90;
    sub_1D2EDDBB4(v51, v90);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739790, &qword_1D2EF5E98);
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {
    }

    v54 = *(v52 + *(v53 + 48));
    v55 = v99;
    v56 = v52;
    v57 = v101;
    (*v96)(v99, v56, v101);
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v58 = sub_1D2EE4618();
    __swift_project_value_buffer(v58, qword_1EC7466D0);
    (*v97)(v41, v55, v57);
    swift_bridgeObjectRetain_n();
    v59 = sub_1D2EE45F8();
    v60 = sub_1D2EE4DA8();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v103;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v110 = v64;
      *v63 = v85;
      sub_1D2EDDD0C(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
      v65 = sub_1D2EE5258();
      v66 = v41;
      v68 = v67;
      v95 = *v98;
      v95(v66, v57);
      v69 = sub_1D2E685B0(v65, v68, &v110);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2048;
      v70 = *(v54 + 16);

      *(v63 + 14) = v70;

      _os_log_impl(&dword_1D2E46000, v59, v60, "Message %s has %ld smart app suggestions", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1D38AF660](v64, -1, -1);
      v31 = v102;
      MEMORY[0x1D38AF660](v63, -1, -1);

      v71 = v89;
      v72 = *(v54 + 16);
      if (v72)
      {
        goto LABEL_23;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v95 = *v98;
      v95(v41, v57);
      v71 = v89;
      v31 = v37;
      v72 = *(v54 + 16);
      if (v72)
      {
LABEL_23:
        result = type metadata accessor for NewSmartAction();
        v73 = result;
        v74 = 0;
        v75 = *(result - 8);
        v108 = v54 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
        v107 = v75 + 56;
        while (v74 < *(v54 + 16))
        {
          sub_1D2EDDC44(v108 + *(v75 + 72) * v74, v31, type metadata accessor for NewSmartAction);
          (*(v75 + 56))(v31, 0, 1, v73);
          sub_1D2E5D0B8(v31, &qword_1EC739780, &qword_1D2EF5E88);
          v76 = v109;
          sub_1D2E5D050(v62, v109, &qword_1EC739490, qword_1D2EF4B90);
          if ((*v104)(v76, 1, v105) == 1)
          {
            result = sub_1D2E5D0B8(v109, &qword_1EC739490, qword_1D2EF4B90);
          }

          else
          {
            sub_1D2EDDD54(v109, v71, type metadata accessor for PersistenceConfiguration);
            v77 = type metadata accessor for ContainerProvider();
            v78 = *(v62 + *(v77 + 20));
            MEMORY[0x1EEE9AC00](v77);
            *(&v83 - 2) = v79;
            *(&v83 - 1) = v71;
            os_unfair_lock_lock((v78 + 24));
            v80 = v106;
            sub_1D2EBF4F4((v78 + 16), &v110);
            v106 = v80;
            v81 = (v78 + 24);
            if (v80)
            {
              os_unfair_lock_unlock(v81);

              v95(v99, v101);
              return sub_1D2EDDCAC(v71, type metadata accessor for PersistenceConfiguration);
            }

            os_unfair_lock_unlock(v81);

            result = sub_1D2EDDCAC(v71, type metadata accessor for PersistenceConfiguration);
            v62 = v103;
            v31 = v102;
          }

          if (v72 == ++v74)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

LABEL_4:

    v95(v99, v101);
    v35 = type metadata accessor for NewSmartAction();
    result = (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
    v27 = v86;
    v33 = v94;
  }

  if (v84 <= v33 + 1)
  {
    v39 = v33 + 1;
  }

  else
  {
    v39 = v84;
  }

  v40 = v39 - 1;
  v41 = v93;
  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v84)
    {
      v37 = v31;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739790, &qword_1D2EF5E98);
      v51 = v91;
      (*(*(v82 - 8) + 56))(v91, 1, 1, v82);
      v100 = 0;
      v94 = v40;
      goto LABEL_16;
    }

    v36 = *(v27 + 8 * v38);
    ++v33;
    if (v36)
    {
      v37 = v31;
      v94 = v38;
      goto LABEL_15;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D2EDA2DC()
{
  v1 = v0[2];

  sub_1D2EDDCAC(v0 + OBJC_IVAR____TtC16CallIntelligence15VoicemailClient_smartActionsServer, type metadata accessor for SmartActionsServer);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2EDA384()
{
  result = type metadata accessor for SmartActionsServer();
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

uint64_t sub_1D2EDA424(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v8 = sub_1D2EE4618();
  __swift_project_value_buffer(v8, qword_1EC7466D0);

  v9 = sub_1D2EE45F8();
  v10 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    if (a1 >> 62)
    {
      v12 = sub_1D2EE50B8();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v12;

    _os_log_impl(&dword_1D2E46000, v9, v10, "Received %ld messages to process from FaceTimeMessageStore", v11, 0xCu);
    MEMORY[0x1D38AF660](v11, -1, -1);
  }

  else
  {
  }

  v13 = sub_1D2EDD6F0(a1);

  v14 = sub_1D2EE45F8();
  v15 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v13[2];

    _os_log_impl(&dword_1D2E46000, v14, v15, "Filtered down to %ld with a transcript", v16, 0xCu);
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  else
  {
  }

  v17 = sub_1D2EE4CB8();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v18[5] = v13;

  sub_1D2ED7FB0(0, 0, v7, &unk_1D2EF5E58, v18);
}

uint64_t sub_1D2EDA6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D2EDA70C, 0, 0);
}

uint64_t sub_1D2EDA70C()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[4] = __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Extracting actions from messages", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1D2EDA860;
  v7 = v0[2];
  v6 = v0[3];

  return sub_1D2ED8E44(v6);
}

uint64_t sub_1D2EDA860(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2EDA960, 0, 0);
}

uint64_t sub_1D2EDA960()
{
  v1 = v0[4];
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Proceeding to store predictions to db", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[6];
  v6 = v0[2];

  sub_1D2ED9858(v5);

  v7 = v0[4];
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D2E46000, v8, v9, "Add Messages async task complete", v10, 2u);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

size_t sub_1D2EDABE8(unint64_t a1)
{
  v19 = sub_1D2EE3EB8();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v7 = sub_1D2EE50B8();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_12:
    sub_1D2EDADDC(v8);
  }

  v17 = v1;
  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1D2EDCA38(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v8 = v20;
    v11 = a1;
    v18 = a1 & 0xC000000000000001;
    v12 = a1;
    do
    {
      if (v18)
      {
        v13 = MEMORY[0x1D38AEA70](v10, v11);
      }

      else
      {
        v13 = *(v11 + 8 * v10 + 32);
      }

      v14 = v13;
      sub_1D2EE44D8();

      v20 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D2EDCA38(v15 > 1, v16 + 1, 1);
        v8 = v20;
      }

      ++v10;
      *(v8 + 16) = v16 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v6, v19);
      v11 = v12;
    }

    while (v7 != v10);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2EDADDC(uint64_t a1)
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EC7466D0);

  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1D2E46000, v3, v4, "Deleting %ld messages from SmartActions table", v5, 0xCu);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  else
  {
  }

  return sub_1D2ED47EC();
}

uint64_t sub_1D2EDB0AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v6 = sub_1D2EE4BE8();

  a5(v6);
}

uint64_t sub_1D2EDB12C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2E75F64;

  return v7(a1);
}

uint64_t sub_1D2EDB224(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1D2EDB284@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1D2EDB2B4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_1D2EDB328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397A8, &qword_1D2EF5EB0);
  v40 = a2;
  result = sub_1D2EE50D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1D2EE5338();
      sub_1D2EE4AC8();
      result = sub_1D2EE5378();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D2EDB5E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397F0, &qword_1D2EF5F08);
  v40 = a2;
  result = sub_1D2EE50D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v41 = *(v27 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1D2EE5338();
      sub_1D2EE4AC8();
      result = sub_1D2EE5378();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v28;
      *(v19 + 8) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D2EDB8A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397E8, &qword_1D2EF5F00);
  result = sub_1D2EE50D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1D2EE5338();
      MEMORY[0x1D38AEDD0](v21);
      result = sub_1D2EE5378();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1D2EDBB2C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739798, &qword_1D2EF5EA0);
  v43 = a2;
  result = sub_1D2EE50D8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1D2EDDD0C(&qword_1EC737CA8, MEMORY[0x1E69695A8]);
      result = sub_1D2EE49E8();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1D2EDBF08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739810, &qword_1D2EF5FA0);
  v39 = a2;
  result = sub_1D2EE50D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1D2EE5338();
      sub_1D2EE4AC8();
      result = sub_1D2EE5378();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1D2EDC1AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397A8, &qword_1D2EF5EB0);
  v2 = *v0;
  v3 = sub_1D2EE50C8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1D2EDC324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397F0, &qword_1D2EF5F08);
  v2 = *v0;
  v3 = sub_1D2EE50C8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
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

void *sub_1D2EDC49C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397E8, &qword_1D2EF5F00);
  v2 = *v0;
  v3 = sub_1D2EE50C8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_1D2EDC5E8()
{
  v1 = v0;
  v34 = sub_1D2EE3EB8();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739798, &qword_1D2EF5EA0);
  v4 = *v0;
  v5 = sub_1D2EE50C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1D2EDC868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739810, &qword_1D2EF5FA0);
  v2 = *v0;
  v3 = sub_1D2EE50C8();
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

        result = v20;
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

size_t sub_1D2EDC9D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2EDCB80(a1, a2, a3, *v3, &qword_1EC7397A0, &qword_1D2EF5EA8, type metadata accessor for NewSmartAction);
  *v3 = result;
  return result;
}

char *sub_1D2EDCA18(char *a1, int64_t a2, char a3)
{
  result = sub_1D2EDCA7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D2EDCA38(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2EDCB80(a1, a2, a3, *v3, &qword_1EC739778, &unk_1D2EF5E40, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1D2EDCA7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397D8, &qword_1D2EF5EE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1D2EDCB80(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1D2EDCD5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397E0, &unk_1D2EF5EF0);
    v3 = sub_1D2EE50E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2E5D050(v4, v13, &qword_1EC739318, &qword_1D2EF4620);
      result = sub_1D2E4FD64(v13);
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
      result = sub_1D2EB5B88(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1D2EDCE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397C0, &qword_1D2EF5EC8);
    v3 = sub_1D2EE50E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2E5D050(v4, &v13, &qword_1EC739408, &qword_1D2EF5ED0);
      v5 = v13;
      v6 = v14;
      result = sub_1D2E4FC44(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D2E4C014(&v15, v3[7] + 40 * result);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D2EDCFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397B0, &qword_1D2EF5EB8);
    v3 = sub_1D2EE50E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2E5D050(v4, &v13, &qword_1EC7397B8, &qword_1D2EF5EC0);
      v5 = v13;
      v6 = v14;
      result = sub_1D2E4FC44(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D2EB5B88(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1D2EDD0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397A8, &qword_1D2EF5EB0);
    v3 = sub_1D2EE50E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D2E4FC44(v5, v6);
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

unint64_t sub_1D2EDD210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397F0, &qword_1D2EF5F08);
    v3 = sub_1D2EE50E8();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D2E4FC44(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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

unint64_t sub_1D2EDD324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397E8, &qword_1D2EF5F00);
    v3 = sub_1D2EE50E8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D2E4FDA8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D2EDD404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397C8, &qword_1D2EF5ED8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739798, &qword_1D2EF5EA0);
    v8 = sub_1D2EE50E8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D2E5D050(v10, v6, &qword_1EC7397C8, &qword_1D2EF5ED8);
      result = sub_1D2E4FE14(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D2EE3EB8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_1D2EDD5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739810, &qword_1D2EF5FA0);
    v3 = sub_1D2EE50E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D2E4FC44(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_1D2EDD6F0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397D0, &qword_1D2EF5EE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_1D2EE45A8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SendableMessageWraper(0);
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v38 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2EE50B8())
  {
    v17 = 0;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v44 = a1 & 0xC000000000000001;
    v42 = (v7 + 6);
    v33 = (v7 + 1);
    v34 = (v7 + 4);
    v7 = MEMORY[0x1E69E7CC0];
    v36 = v5;
    v37 = a1;
    v35 = i;
    while (1)
    {
      if (v44)
      {
        v18 = MEMORY[0x1D38AEA70](v17, a1);
      }

      else
      {
        if (v17 >= *(v43 + 16))
        {
          goto LABEL_18;
        }

        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      sub_1D2EE44E8();
      if ((*v42)(v5, 1, v6) == 1)
      {

        sub_1D2E5D0B8(v5, &qword_1EC7397D0, &qword_1D2EF5EE0);
      }

      else
      {
        v21 = v15;
        v22 = v6;
        v23 = v41;
        (*v34)(v41, v5, v22);
        v24 = v38;
        sub_1D2EE44D8();
        v25 = sub_1D2EE4598();
        v27 = v26;

        v28 = v23;
        v6 = v22;
        v15 = v21;
        (*v33)(v28, v6);
        v29 = (v24 + *(v40 + 20));
        *v29 = v25;
        v29[1] = v27;
        sub_1D2EDDD54(v24, v21, type metadata accessor for SendableMessageWraper);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D2EC8560(0, v7[2] + 1, 1, v7);
        }

        v31 = v7[2];
        v30 = v7[3];
        v5 = v36;
        a1 = v37;
        i = v35;
        if (v31 >= v30 >> 1)
        {
          v7 = sub_1D2EC8560(v30 > 1, v31 + 1, 1, v7);
        }

        v7[2] = v31 + 1;
        sub_1D2EDDD54(v15, v7 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31, type metadata accessor for SendableMessageWraper);
      }

      ++v17;
      if (v20 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D2EDDAF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E5BA34;

  return sub_1D2EDA6EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2EDDBB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739788, &qword_1D2EF5E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EDDC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EDDCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2EDDD0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2EDDD54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EDDDBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2ED8878(a1, v4, v5, v6);
}

uint64_t sub_1D2EDDE98()
{
  result = sub_1D2EE3EB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2EDDF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EDDF78, 0, 0);
}

uint64_t sub_1D2EDDF78()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  v0[16] = v2;
  if (!v2)
  {
LABEL_8:
    v16 = v0[1];

    return v16();
  }

  v3 = 0;
  while (1)
  {
    v0[17] = v3;
    v4 = v0[13];
    v5 = (v1 + 32 * v3);
    v6 = v5[4];
    v0[18] = v5[5];
    v7 = v5[6];
    v0[19] = v5[7];

    v0[20] = v7(v4);
    v0[21] = v8;
    if (v9)
    {
      goto LABEL_6;
    }

    v10 = v0[14];
    v11 = sub_1D2EE4048();
    v0[22] = v11;
    if (v11)
    {
      break;
    }

    sub_1D2EDE5A0(v0[20], v0[21], 0);
LABEL_6:
    v12 = v0[18];
    v13 = v0[19];
    v15 = v0[16];
    v14 = v0[17];

    if (v14 + 1 == v15)
    {
      goto LABEL_8;
    }

    v3 = v0[17] + 1;
    v1 = v0[15];
  }

  v18 = *(MEMORY[0x1E69937A8] + 4);
  v19 = v11;
  v20 = swift_task_alloc();
  v0[23] = v20;
  *v20 = v0;
  v20[1] = sub_1D2EDE134;
  v21 = v0[14];
  v22.n128_u64[0] = 0;

  return MEMORY[0x1EEDF2D08](v19, v22);
}

uint64_t sub_1D2EDE134(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2EDE254, 0, 0);
}

uint64_t sub_1D2EDE254()
{
  *(v0 + 88) = 0x73736563637573;
  v1 = *(v0 + 192);
  *(v0 + 96) = 0xE700000000000000;
  sub_1D2EE4F68();
  if (*(v1 + 16) && (v2 = *(v0 + 192), v3 = sub_1D2E4FD64(v0 + 16), (v4 & 1) != 0))
  {
    sub_1D2E68F60(*(*(v0 + 192) + 56) + 32 * v3, v0 + 56);
    sub_1D2E5073C(v0 + 16);

    if (swift_dynamicCast())
    {
      v5 = *(v0 + 200);
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v6 = *(v0 + 192);

    sub_1D2E5073C(v0 + 16);
    v5 = 2;
  }

  if (qword_1EC737C70 != -1)
  {
    swift_once();
  }

  v7 = sub_1D2EE4618();
  __swift_project_value_buffer(v7, qword_1EC7466E8);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v11 = v5 != 2 && (v5 & 1) != 0;
    *(v10 + 4) = v11;
    v12 = v9;
    v13 = v10;
    _os_log_impl(&dword_1D2E46000, v8, v12, "ABC rule conditions met. Report triggered=%{BOOL}d", v10, 8u);
    MEMORY[0x1D38AF660](v13, -1, -1);
  }

  while (2)
  {
    sub_1D2EDE5A0(*(v0 + 160), *(v0 + 168), 0);
    do
    {
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);

      if (v16 + 1 == v17)
      {
        v32 = *(v0 + 8);

        return v32();
      }

      v18 = *(v0 + 136) + 1;
      *(v0 + 136) = v18;
      v19 = *(v0 + 104);
      v20 = (*(v0 + 120) + 32 * v18);
      v21 = v20[4];
      *(v0 + 144) = v20[5];
      v22 = v20[6];
      *(v0 + 152) = v20[7];

      *(v0 + 160) = v22(v19);
      *(v0 + 168) = v23;
    }

    while ((v24 & 1) != 0);
    v25 = *(v0 + 112);
    v26 = sub_1D2EE4048();
    *(v0 + 176) = v26;
    if (!v26)
    {
      continue;
    }

    break;
  }

  v27 = *(MEMORY[0x1E69937A8] + 4);
  v28 = v26;
  v29 = swift_task_alloc();
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = sub_1D2EDE134;
  v30 = *(v0 + 112);
  v31.n128_u64[0] = 0;

  return MEMORY[0x1EEDF2D08](v28, v31);
}

uint64_t sub_1D2EDE5A0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D2EDE5D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739268, &unk_1D2EF43B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21[-1] - v4;
  v6 = type metadata accessor for AudioHistEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if ((*(v12 + 8))(v11, v12) == 0xD000000000000037 && 0x80000001D2EE7580 == v13)
  {
  }

  else
  {
    v15 = sub_1D2EE5288();

    if ((v15 & 1) == 0)
    {
      return 3;
    }
  }

  sub_1D2E6912C(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739820, &unk_1D2EF5FF0);
  v17 = swift_dynamicCast();
  v18 = *(v7 + 56);
  if (v17)
  {
    v18(v5, 0, 1, v6);
    sub_1D2EDF244(v5, v10, type metadata accessor for AudioHistEvent);
    if ((v10[19] & 1) != 0 || v10[18] < 0.9 || (*(v10 + 217) & 1) != 0 || *(v10 + 219) != 4)
    {
      sub_1D2EDF2AC(v10, type metadata accessor for AudioHistEvent);
      return 2;
    }

    else
    {
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_1D2EE4FB8();
      MEMORY[0x1D38AE570](0x6F7250636973756DLL, 0xED0000203D3E2062);
      sub_1D2EE4D58();
      MEMORY[0x1D38AE570](0xD000000000000017, 0x80000001D2EE9090);
      v19 = v21[0];
      sub_1D2EDF2AC(v10, type metadata accessor for AudioHistEvent);
      return v19;
    }
  }

  else
  {
    v18(v5, 1, 1, v6);
    sub_1D2E5D0B8(v5, &qword_1EC739268, &unk_1D2EF43B8);
    return 0;
  }
}

uint64_t sub_1D2EDE93C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739268, &unk_1D2EF43B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22[-v4 - 8];
  v6 = type metadata accessor for AudioHistEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if ((*(v12 + 8))(v11, v12) == 0xD000000000000037 && 0x80000001D2EE7580 == v13)
  {
  }

  else
  {
    v15 = sub_1D2EE5288();

    if ((v15 & 1) == 0)
    {
      return 3;
    }
  }

  sub_1D2E6912C(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739820, &unk_1D2EF5FF0);
  v17 = swift_dynamicCast();
  v18 = *(v7 + 56);
  if (v17)
  {
    v18(v5, 0, 1, v6);
    sub_1D2EDF244(v5, v10, type metadata accessor for AudioHistEvent);
    v19 = v10[219];
    if (v19 == 3 || v19 == 4)
    {
      sub_1D2EDF2AC(v10, type metadata accessor for AudioHistEvent);
      return 1;
    }

    else
    {
      v22[0] = v10[219];
      v20 = sub_1D2EE4AA8();
      sub_1D2EDF2AC(v10, type metadata accessor for AudioHistEvent);
      return v20;
    }
  }

  else
  {
    v18(v5, 1, 1, v6);
    sub_1D2E5D0B8(v5, &qword_1EC739268, &unk_1D2EF43B8);
    return 0;
  }
}

uint64_t sub_1D2EDEC20(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739818, &qword_1D2EF5FE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for ReturnToCallPredictorEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if ((*(v12 + 8))(v11, v12) == 0xD000000000000030 && 0x80000001D2EE7080 == v13)
  {
  }

  else
  {
    v15 = sub_1D2EE5288();

    if ((v15 & 1) == 0)
    {
      return 3;
    }
  }

  sub_1D2E6912C(a1, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739820, &unk_1D2EF5FF0);
  v17 = swift_dynamicCast();
  v18 = *(v7 + 56);
  if (v17)
  {
    v18(v5, 0, 1, v6);
    sub_1D2EDF244(v5, v10, type metadata accessor for ReturnToCallPredictorEvent);
    if ((v10[240] & 1) != 0 || *(v10 + 29) < 0x191uLL || v10[225] != 8)
    {
      sub_1D2EDF2AC(v10, type metadata accessor for ReturnToCallPredictorEvent);
      return 2;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D2EE4FB8();

      v22 = 0xD000000000000014;
      v23 = 0x80000001D2EE9070;
      v21 = 400;
      v19 = sub_1D2EE5258();
      MEMORY[0x1D38AE570](v19);

      v20 = v22;
      sub_1D2EDF2AC(v10, type metadata accessor for ReturnToCallPredictorEvent);
      return v20;
    }
  }

  else
  {
    v18(v5, 1, 1, v6);
    sub_1D2E5D0B8(v5, &qword_1EC739818, &qword_1D2EF5FE8);
    return 0;
  }
}

uint64_t sub_1D2EDEF60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739818, &qword_1D2EF5FE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22[-v4 - 8];
  v6 = type metadata accessor for ReturnToCallPredictorEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if ((*(v12 + 8))(v11, v12) == 0xD000000000000030 && 0x80000001D2EE7080 == v13)
  {
  }

  else
  {
    v15 = sub_1D2EE5288();

    if ((v15 & 1) == 0)
    {
      return 3;
    }
  }

  sub_1D2E6912C(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739820, &unk_1D2EF5FF0);
  v17 = swift_dynamicCast();
  v18 = *(v7 + 56);
  if (v17)
  {
    v18(v5, 0, 1, v6);
    sub_1D2EDF244(v5, v10, type metadata accessor for ReturnToCallPredictorEvent);
    v19 = v10[225];
    if (v19 == 3 || v19 == 8)
    {
      sub_1D2EDF2AC(v10, type metadata accessor for ReturnToCallPredictorEvent);
      return 1;
    }

    else
    {
      v22[0] = v10[225];
      v20 = sub_1D2EE4AA8();
      sub_1D2EDF2AC(v10, type metadata accessor for ReturnToCallPredictorEvent);
      return v20;
    }
  }

  else
  {
    v18(v5, 1, 1, v6);
    sub_1D2E5D0B8(v5, &qword_1EC739818, &qword_1D2EF5FE8);
    return 0;
  }
}

uint64_t sub_1D2EDF244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EDF2AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2EDF30C()
{
  v1 = v0;
  v2 = sub_1D2EDD5EC(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (*(v1 + 152))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *(v1 + 144);
  }

  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v7 = [v6 initWithDouble_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v7, v3, v4, isUniquelyReferenced_nonNull_native);

  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  if (*(v1 + 168))
  {
    v11 = 0.0;
  }

  else
  {
    v11 = *(v1 + 160);
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v13 = [v12 initWithDouble_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v13, v9, v10, v14);

  v15 = *(v1 + 48);
  v16 = *(v1 + 56);
  if (*(v1 + 184))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *(v1 + 176);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v19 = [v18 initWithDouble_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v19, v15, v16, v20);

  v21 = *(v1 + 64);
  v22 = *(v1 + 72);
  if (*(v1 + 200))
  {
    v23 = 0.0;
  }

  else
  {
    v23 = *(v1 + 192);
  }

  v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v25 = [v24 initWithDouble_];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v25, v21, v22, v26);

  v27 = *(v1 + 80);
  v28 = *(v1 + 88);
  if (*(v1 + 216))
  {
    v29 = 0.0;
  }

  else
  {
    v29 = *(v1 + 208);
  }

  v30 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v31 = [v30 initWithDouble_];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v31, v27, v28, v32);

  v33 = *(v1 + 96);
  v34 = *(v1 + 104);
  v35 = *(v1 + 217);
  v36 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v37 = [v36 initWithBool_];
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v37, v33, v34, v38);

  v39 = *(v1 + 218);
  if (v39 != 3)
  {
    v40 = *(v1 + 112);
    v41 = *(v1 + 120);
    v42 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v43 = [v42 initWithUnsignedChar_];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v43, v40, v41, v44);
  }

  v45 = *(v1 + 219);
  if (v45 != 4)
  {
    v47 = *(v1 + 128);
    v46 = *(v1 + 136);
    v48 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v49 = [v48 initWithUnsignedChar_];
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v49, v47, v46, v50);
  }

  return v2;
}

unsigned __int8 *sub_1D2EDF6C8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D2EDF6E0()
{
  v1 = *v0;
  sub_1D2EE5338();
  sub_1D2EE5358();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EDF728()
{
  v1 = *v0;
  sub_1D2EE5338();
  sub_1D2EE5358();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EDF76C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2EDFA7C(*a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AudioHistEvent()
{
  result = qword_1EC739828;
  if (!qword_1EC739828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EDF81C()
{
  sub_1D2EDF93C(319, &qword_1EC739838);
  if (v0 <= 0x3F)
  {
    sub_1D2EDF93C(319, &qword_1EC739840);
    if (v1 <= 0x3F)
    {
      sub_1D2EDF93C(319, &qword_1EC739848);
      if (v2 <= 0x3F)
      {
        sub_1D2EE3E48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2EDF93C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D2EE4E58();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D2EDF99C()
{
  result = qword_1EC739850;
  if (!qword_1EC739850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739850);
  }

  return result;
}

unint64_t sub_1D2EDF9F4()
{
  result = qword_1EC739858;
  if (!qword_1EC739858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739858);
  }

  return result;
}

uint64_t sub_1D2EDFA48()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D2EDFA7C(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1D2EDFAC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - v4;
  if (qword_1EC737C70 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EC7466E8);
  sub_1D2EE01D4(v0, &aBlock);
  sub_1D2EE01D4(v0, &v38);
  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315394;
    v11 = *(&v35 + 1);
    v12 = v36;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v35 + 1));
    v13 = (*(v12 + 1))(v11, v12);
    v15 = v14;
    sub_1D2E8E940(&aBlock);
    v16 = sub_1D2E685B0(v13, v15, &v33);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    v17 = *(&v39 + 1);
    v18 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    (*(v18 + 16))(v17, v18);
    sub_1D2EE0328();
    v19 = sub_1D2EE49C8();
    v21 = v20;

    sub_1D2E8E940(&v38);
    v22 = sub_1D2E685B0(v19, v21, &v33);

    *(v9 + 14) = v22;
    _os_log_impl(&dword_1D2E46000, v7, v8, "CoreAnalytics submission %s: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v10, -1, -1);
    MEMORY[0x1D38AF660](v9, -1, -1);
  }

  else
  {

    sub_1D2E8E940(&v38);
    sub_1D2E8E940(&aBlock);
  }

  v23 = v1[3];
  v24 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v23);
  (*(v24 + 8))(v23, v24);
  v25 = sub_1D2EE4A38();

  sub_1D2EE01D4(v1, &v38);
  v26 = swift_allocObject();
  v27 = v39;
  *(v26 + 16) = v38;
  *(v26 + 32) = v27;
  *(v26 + 48) = v40;
  v36 = sub_1D2EE020C;
  v37 = v26;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_1D2EDFF24;
  *(&v35 + 1) = &block_descriptor_3;
  v28 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v28);

  v29 = sub_1D2EE4CB8();
  (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
  sub_1D2EE01D4(v1, &aBlock);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v31 = v35;
  *(v30 + 32) = aBlock;
  *(v30 + 48) = v31;
  *(v30 + 64) = v36;
  sub_1D2E8CB18(0, 0, v5, &unk_1D2EF61D0, v30);

  return sub_1D2E82AB8(v5);
}

id sub_1D2EDFF24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1D2EE0328();
    v5 = sub_1D2EE49A8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1D2EDFFD0()
{
  v1 = sub_1D2EE4058();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_1D2EE4028();
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D2EE00C4;
  v6 = v0[2];

  return sub_1D2EDDF54(v6, v4, &unk_1F4E91688);
}

uint64_t sub_1D2EE00C4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D2EE020C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2EE0278(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2E5BA34;

  return sub_1D2EDFFB0(a1, v4, v5, v1 + 32);
}

unint64_t sub_1D2EE0328()
{
  result = qword_1EC739860;
  if (!qword_1EC739860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC739860);
  }

  return result;
}

uint64_t sub_1D2EE0374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D2EE03BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ReturnToCallPredictorEvent()
{
  result = qword_1EC739868;
  if (!qword_1EC739868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EE0488()
{
  sub_1D2EDF93C(319, &qword_1EC739878);
  if (v0 <= 0x3F)
  {
    sub_1D2EDF93C(319, &qword_1EC739880);
    if (v1 <= 0x3F)
    {
      sub_1D2EDF93C(319, &qword_1EC739888);
      if (v2 <= 0x3F)
      {
        sub_1D2EDF93C(319, &qword_1EC739890);
        if (v3 <= 0x3F)
        {
          sub_1D2EDF93C(319, &qword_1EC739898);
          if (v4 <= 0x3F)
          {
            sub_1D2EDF93C(319, &qword_1EC7398A0);
            if (v5 <= 0x3F)
            {
              sub_1D2EE3E48();
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

unint64_t sub_1D2EE0654()
{
  v1 = v0;
  v2 = sub_1D2EDD5EC(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 192);
  if (v3 != 2)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v7 = [v6 initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v7, v4, v5, isUniquelyReferenced_nonNull_native);
  }

  if ((*(v1 + 208) & 1) == 0)
  {
    v9 = *(v1 + 200);
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v13 = [v12 initWithInteger_];
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v13, v10, v11, v14);
  }

  if ((*(v1 + 224) & 1) == 0)
  {
    v15 = *(v1 + 216);
    v16 = *(v1 + 48);
    v17 = *(v1 + 56);
    v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v19 = [v18 initWithUnsignedLongLong_];
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v19, v16, v17, v20);
  }

  v21 = *(v1 + 225);
  if (v21 <= 3)
  {
    v23 = 2;
    if (v21 != 2)
    {
      v23 = 3;
    }

    v24 = 1;
    if (!*(v1 + 225))
    {
      v24 = *(v1 + 225);
    }

    if (*(v1 + 225) <= 1u)
    {
      v22 = v24;
    }

    else
    {
      v22 = v23;
    }
  }

  else if (*(v1 + 225) <= 5u)
  {
    if (v21 == 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }
  }

  else if (v21 == 6)
  {
    v22 = 6;
  }

  else
  {
    if (v21 != 7)
    {
      goto LABEL_24;
    }

    v22 = 7;
  }

  v25 = *(v1 + 64);
  v26 = *(v1 + 72);
  v27 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v28 = [v27 initWithInteger_];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v28, v25, v26, v29);

LABEL_24:
  v30 = *(v1 + 226);
  if (v30 != 2)
  {
    v31 = *(v1 + 80);
    v32 = *(v1 + 88);
    v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v34 = [v33 initWithBool_];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v34, v31, v32, v35);
  }

  if ((*(v1 + 240) & 1) == 0)
  {
    v36 = *(v1 + 232);
    v37 = *(v1 + 96);
    v38 = *(v1 + 104);
    v39 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v40 = [v39 initWithUnsignedLongLong_];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v40, v37, v38, v41);
  }

  v42 = *(v1 + 256);
  if (v42 != 255)
  {
    v43 = *(v1 + 112);
    v44 = *(v1 + 120);
    v45 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v46 = [v45 initWithInteger_];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v46, v43, v44, v47);
  }

  v48 = *(v1 + 257);
  if (v48 == 3)
  {
    if (*(v1 + 272))
    {
      goto LABEL_32;
    }

LABEL_36:
    v67 = *(v1 + 264);
    v68 = *(v1 + 144);
    v69 = *(v1 + 152);
    v70 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v71 = [v70 initWithInteger_];
    v72 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v71, v68, v69, v72);

    if (*(v1 + 288))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v62 = *(v1 + 128);
  v63 = *(v1 + 136);
  v64 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v65 = [v64 initWithInteger_];
  v66 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v65, v62, v63, v66);

  if ((*(v1 + 272) & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  if ((*(v1 + 288) & 1) == 0)
  {
LABEL_33:
    v49 = *(v1 + 280);
    v50 = *(v1 + 176);
    v51 = *(v1 + 184);
    v52 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v53 = [v52 initWithInteger_];
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v53, v50, v51, v54);
  }

LABEL_34:
  v55 = *(v1 + 160);
  v56 = *(v1 + 168);
  v57 = *(v1 + *(type metadata accessor for ReturnToCallPredictorEvent() + 108));
  v58 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v59 = [v58 initWithDouble_];
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v59, v55, v56, v60);

  return v2;
}

uint64_t *sub_1D2EE0BB8@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D2EE0BD4()
{
  result = qword_1EC7398A8;
  if (!qword_1EC7398A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7398A8);
  }

  return result;
}

uint64_t sub_1D2EE0C2C@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for ReturnToCallPredictorEvent();
  v7 = a2 + *(v6 + 104);
  result = sub_1D2EE3E38();
  *a2 = 0xD000000000000030;
  *(a2 + 8) = 0x80000001D2EE7080;
  *(a2 + 16) = 0x69685F6568636163;
  *(a2 + 24) = 0xE900000000000074;
  *(a2 + 32) = 0x69735F6568636163;
  *(a2 + 40) = 0xEA0000000000657ALL;
  *(a2 + 48) = 0xD000000000000010;
  *(a2 + 56) = 0x80000001D2EE70C0;
  strcpy((a2 + 64), "failure_reason");
  *(a2 + 79) = -18;
  *(a2 + 80) = 0xD000000000000015;
  *(a2 + 88) = 0x80000001D2EE70E0;
  *(a2 + 96) = 0xD000000000000012;
  *(a2 + 104) = 0x80000001D2EE7100;
  *(a2 + 112) = 0x746C75736572;
  *(a2 + 120) = 0xE600000000000000;
  *(a2 + 128) = 0x7463615F72657375;
  *(a2 + 136) = 0xEB000000006E6F69;
  strcpy((a2 + 144), "utterance_size");
  *(a2 + 159) = -18;
  *(a2 + 160) = 0xD000000000000010;
  *(a2 + 168) = 0x80000001D2EE7120;
  *(a2 + 176) = 0x6574636172616863;
  *(a2 + 184) = 0xEF746E756F635F72;
  *(a2 + 192) = 2;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  *(a2 + 216) = 0;
  *(a2 + 224) = 1;
  *(a2 + 225) = a1;
  *(a2 + 226) = 2;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  *(a2 + 248) = 0;
  *(a2 + 256) = 1023;
  *(a2 + 264) = 0;
  *(a2 + 272) = 1;
  *(a2 + 280) = 0;
  *(a2 + 288) = 1;
  *(a2 + *(v6 + 108)) = a3;
  return result;
}

uint64_t sub_1D2EE0E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for ReturnToCallPredictorEvent();
  v6 = a2 + *(v5 + 104);
  result = sub_1D2EE3E38();
  *a2 = 0xD000000000000030;
  *(a2 + 8) = 0x80000001D2EE7080;
  *(a2 + 16) = 0x69685F6568636163;
  *(a2 + 24) = 0xE900000000000074;
  *(a2 + 32) = 0x69735F6568636163;
  *(a2 + 40) = 0xEA0000000000657ALL;
  *(a2 + 48) = 0xD000000000000010;
  *(a2 + 56) = 0x80000001D2EE70C0;
  strcpy((a2 + 64), "failure_reason");
  *(a2 + 79) = -18;
  *(a2 + 80) = 0xD000000000000015;
  *(a2 + 88) = 0x80000001D2EE70E0;
  *(a2 + 96) = 0xD000000000000012;
  *(a2 + 104) = 0x80000001D2EE7100;
  *(a2 + 112) = 0x746C75736572;
  *(a2 + 120) = 0xE600000000000000;
  *(a2 + 128) = 0x7463615F72657375;
  *(a2 + 136) = 0xEB000000006E6F69;
  strcpy((a2 + 144), "utterance_size");
  *(a2 + 159) = -18;
  *(a2 + 160) = 0xD000000000000010;
  *(a2 + 168) = 0x80000001D2EE7120;
  *(a2 + 176) = 0x6574636172616863;
  *(a2 + 184) = 0xEF746E756F635F72;
  *(a2 + 192) = 2;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  *(a2 + 216) = 0;
  *(a2 + 224) = 1;
  *(a2 + 225) = 520;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  *(a2 + 248) = 0;
  *(a2 + 256) = -1;
  *(a2 + 257) = v4;
  *(a2 + 264) = 0;
  *(a2 + 272) = 1;
  *(a2 + 280) = 0;
  *(a2 + 288) = 1;
  *(a2 + *(v5 + 108)) = 0;
  return result;
}

uint64_t sub_1D2EE101C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v9 = *(a1 + 184);
  v10 = *(a1 + 192);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  v16 = *(a1 + 216);
  v15 = *(a1 + 217);
  v13 = a3 + *(type metadata accessor for AudioHistEvent() + 84);
  result = sub_1D2EE3E38();
  *a3 = 0xD000000000000037;
  *(a3 + 8) = 0x80000001D2EE7580;
  *(a3 + 16) = 0xD000000000000011;
  *(a3 + 24) = 0x80000001D2EE75C0;
  *(a3 + 32) = 0xD000000000000014;
  *(a3 + 40) = 0x80000001D2EE75E0;
  *(a3 + 48) = 0xD000000000000011;
  *(a3 + 56) = 0x80000001D2EE7600;
  *(a3 + 64) = 0xD000000000000013;
  *(a3 + 72) = 0x80000001D2EE7620;
  *(a3 + 80) = 0xD000000000000012;
  *(a3 + 88) = 0x80000001D2EE7640;
  *(a3 + 96) = 0x6F6365725F706974;
  *(a3 + 104) = 0xEF6465646E656D6DLL;
  *(a3 + 112) = 0x726573755F706974;
  *(a3 + 120) = 0xEF6E6F697463615FLL;
  strcpy((a3 + 128), "failure_reason");
  *(a3 + 143) = -18;
  *(a3 + 144) = v4;
  *(a3 + 152) = v5;
  *(a3 + 160) = v6;
  *(a3 + 168) = v7;
  *(a3 + 176) = v8;
  *(a3 + 184) = v9;
  *(a3 + 192) = v10;
  *(a3 + 200) = v11;
  *(a3 + 208) = v12;
  *(a3 + 216) = v16;
  *(a3 + 217) = v15;
  *(a3 + 218) = a2;
  *(a3 + 219) = 4;
  return result;
}

uint64_t sub_1D2EE11EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D2EE1234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D2EE1290(uint64_t a1@<X8>)
{
  v2 = v1;
  if ((sub_1D2E6A298(v1[6]) & 1) == 0)
  {
    if (qword_1EDECF8A8 != -1)
    {
      swift_once();
    }

    v63 = sub_1D2EE4618();
    __swift_project_value_buffer(v63, qword_1EDED2D38);
    v64 = sub_1D2EE45F8();
    v65 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1D2E46000, v64, v65, "Trial experiments disabled by server bag - returning default Hold Assist Configuration", v66, 2u);
      MEMORY[0x1D38AF660](v66, -1, -1);
    }

    goto LABEL_71;
  }

  if (qword_1EDECF8A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2D38);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Subscribing to trial", v7, 2u);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v8 = [objc_opt_self() clientWithIdentifier_];
  if (!v8)
  {
    v67 = sub_1D2EE45F8();
    v68 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1D2E46000, v67, v68, "TRIClient is nil", v69, 2u);
      MEMORY[0x1D38AF660](v69, -1, -1);
    }

    v59 = xmmword_1D2EF6320;
    v60 = xmmword_1D2EF6330;
    v56 = xmmword_1D2EF6340;
    v34 = 0.5;
    if (!v1[3])
    {
      v55 = vdupq_n_s64(0xAuLL);
LABEL_72:
      v62 = 5;
      v61 = 30;
      v36 = 0.6;
      v37 = 0.3;
      v33 = 1000;
      v40 = 0.5;
      goto LABEL_73;
    }

    v70 = v1[2];
    sub_1D2EE213C(&v118);
    if (sub_1D2EE2650(&v118) == 1)
    {
      v55 = vdupq_n_s64(0xAuLL);
      v62 = 5;
      v61 = 30;
      v36 = 0.6;
      v37 = 0.3;
      v33 = 1000;
      v40 = 0.5;
      v59 = xmmword_1D2EF6320;
      v56 = xmmword_1D2EF6340;
      v60 = xmmword_1D2EF6330;
      goto LABEL_73;
    }

    v101 = v119;
    v34 = *(&v120 + 1);
    v33 = v120;
    v104 = v121;
    v36 = *(&v122 + 1);
    v37 = *&v122;
    v107 = v123;
    v110 = v118;
    v40 = *&v124[8];
    v61 = *v124;
    v62 = *&v124[16];
    v89 = sub_1D2EE45F8();
    v90 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_1D2E46000, v89, v90, "Returning config from default path", v91, 2u);
      MEMORY[0x1D38AF660](v91, -1, -1);
    }

LABEL_65:
    v59 = v107;
    v56 = v110;
    v60 = v104;
    v55 = v101;
    goto LABEL_73;
  }

  v9 = v8;
  [v9 refresh];
  v10 = *v1;
  v11 = v1[1];
  v12 = sub_1D2EE4A38();
  v13 = [v9 experimentIdentifiersWithNamespaceName_];

  if (!v13)
  {
    v71 = sub_1D2EE45F8();
    v72 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1D2E46000, v71, v72, "experimentIds is nil, no active experiment", v73, 2u);
      MEMORY[0x1D38AF660](v73, -1, -1);
    }

    if (v1[3])
    {
      v74 = v1[2];
      sub_1D2EE213C(&v118);
      if (sub_1D2EE2650(&v118) != 1)
      {
        v101 = v119;
        v34 = *(&v120 + 1);
        v33 = v120;
        v104 = v121;
        v36 = *(&v122 + 1);
        v37 = *&v122;
        v107 = v123;
        v110 = v118;
        v40 = *&v124[8];
        v61 = *v124;
        v62 = *&v124[16];
        v75 = sub_1D2EE45F8();
        v76 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_1D2E46000, v75, v76, "Returning config from default path", v77, 2u);
          MEMORY[0x1D38AF660](v77, -1, -1);
        }

        goto LABEL_64;
      }
    }

    goto LABEL_55;
  }

  v14 = v13;
  v15 = sub_1D2EE45F8();
  v16 = sub_1D2EE4DD8();

  v102 = v14;
  if (os_log_type_enabled(v15, v16))
  {
    v108 = v9;
    v17 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v118.i64[0] = v105;
    *v17 = 136315138;
    v18 = v14;
    v19 = [v18 description];
    v20 = sub_1D2EE4A68();
    v22 = v21;

    v23 = sub_1D2E685B0(v20, v22, v118.i64);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1D2E46000, v15, v16, "experimentIds: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x1D38AF660](v105, -1, -1);
    v24 = v17;
    v9 = v108;
    MEMORY[0x1D38AF660](v24, -1, -1);
  }

  v25 = v2[4];
  v26 = v2[5];
  v27 = sub_1D2EE4A38();
  v28 = sub_1D2EE4A38();
  v29 = [v9 levelForFactor:v27 withNamespaceName:v28];

  if (!v29)
  {
    v85 = sub_1D2EE45F8();
    v86 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1D2E46000, v85, v86, "Invalid Trial level", v87, 2u);
      MEMORY[0x1D38AF660](v87, -1, -1);
    }

    if (v2[3])
    {
      v88 = v2[2];
      sub_1D2EE213C(&v118);
      if (sub_1D2EE2650(&v118) != 1)
      {
        v101 = v119;
        v34 = *(&v120 + 1);
        v33 = v120;
        v104 = v121;
        v36 = *(&v122 + 1);
        v37 = *&v122;
        v107 = v123;
        v110 = v118;
        v40 = *&v124[8];
        v61 = *v124;
        v62 = *&v124[16];
        v92 = sub_1D2EE45F8();
        v93 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_1D2E46000, v92, v93, "Returning config from default path", v94, 2u);
          MEMORY[0x1D38AF660](v94, -1, -1);
        }

        goto LABEL_63;
      }
    }

LABEL_55:
LABEL_71:
    v59 = xmmword_1D2EF6320;
    v60 = xmmword_1D2EF6330;
    v56 = xmmword_1D2EF6340;
    v55 = vdupq_n_s64(0xAuLL);
    v34 = 0.5;
    goto LABEL_72;
  }

  v30 = [v29 fileValue];
  if (!v30 || (v31 = v30, v32 = [v30 path], v31, !v32))
  {
    v78 = sub_1D2EE45F8();
    v79 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1D2E46000, v78, v79, "Invalid Asset Path. Treatment ended.", v80, 2u);
      MEMORY[0x1D38AF660](v80, -1, -1);
    }

    if (!v2[3])
    {
      goto LABEL_70;
    }

    v81 = v2[2];
    sub_1D2EE213C(&v118);
    if (sub_1D2EE2650(&v118) == 1)
    {
      goto LABEL_70;
    }

    v101 = v119;
    v34 = *(&v120 + 1);
    v33 = v120;
    v104 = v121;
    v36 = *(&v122 + 1);
    v37 = *&v122;
    v107 = v123;
    v110 = v118;
    v40 = *&v124[8];
    v61 = *v124;
    v62 = *&v124[16];
    v82 = sub_1D2EE45F8();
    v83 = sub_1D2EE4DD8();
    if (!os_log_type_enabled(v82, v83))
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  sub_1D2EE4A68();

  if (!sub_1D2EE4AD8())
  {

    v95 = sub_1D2EE45F8();
    v96 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1D2E46000, v95, v96, "Invalid Asset Path. Treatment ended.", v97, 2u);
      MEMORY[0x1D38AF660](v97, -1, -1);
    }

    if (!v2[3] || (v98 = v2[2], sub_1D2EE213C(&v118), sub_1D2EE2650(&v118) == 1))
    {
LABEL_70:

      goto LABEL_71;
    }

    v101 = v119;
    v34 = *(&v120 + 1);
    v33 = v120;
    v104 = v121;
    v36 = *(&v122 + 1);
    v37 = *&v122;
    v107 = v123;
    v110 = v118;
    v40 = *&v124[8];
    v61 = *v124;
    v62 = *&v124[16];
    v82 = sub_1D2EE45F8();
    v83 = sub_1D2EE4DD8();
    if (!os_log_type_enabled(v82, v83))
    {
      goto LABEL_49;
    }

LABEL_48:
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_1D2E46000, v82, v83, "Returning config from default path", v84, 2u);
    MEMORY[0x1D38AF660](v84, -1, -1);
LABEL_49:

LABEL_63:
LABEL_64:

    goto LABEL_65;
  }

  v109 = v9;
  sub_1D2EE213C(&v111);
  v99 = v112;
  v100 = v111;
  v34 = *(&v113 + 1);
  v33 = v113;
  v35 = *(&v114 + 1);
  v106 = v114;
  v36 = *(&v115 + 1);
  v37 = *&v115;
  v38 = *(&v116 + 1);
  v103 = v116;
  v40 = *&v117[8];
  v39 = *v117;
  v41 = *&v117[16];

  v42 = sub_1D2EE45F8();
  v43 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v33;
    v45 = v38;
    v46 = v35;
    v47 = v39;
    v48 = v41;
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1D2E46000, v42, v43, "Returning Treatment config", v49, 2u);
    v50 = v49;
    v41 = v48;
    v39 = v47;
    v35 = v46;
    v38 = v45;
    v33 = v44;
    MEMORY[0x1D38AF660](v50, -1, -1);
  }

  v122 = v115;
  v123 = v116;
  *v124 = *v117;
  *&v124[9] = *&v117[9];
  v118 = v111;
  v119 = v112;
  v120 = v113;
  v121 = v114;
  v51 = sub_1D2EE2650(&v118);
  v52 = vdup_n_s32(v51 == 1);
  v53.i64[0] = v52.u32[0];
  v53.i64[1] = v52.u32[1];
  v54 = vcltzq_s64(vshlq_n_s64(v53, 0x3FuLL));
  v55 = vbslq_s8(v54, vdupq_n_s64(0xAuLL), v99);
  v56 = vbslq_s8(v54, xmmword_1D2EF6340, v100);
  if (v51 == 1)
  {
    v33 = 1000;
    v34 = 0.5;
    v37 = 0.3;
  }

  v57.i64[0] = v106;
  v57.i64[1] = v35;
  v58.i64[0] = v103;
  v58.i64[1] = v38;
  if (v51 == 1)
  {
    v36 = 0.6;
  }

  v59 = vbslq_s8(v54, xmmword_1D2EF6320, v58);
  v60 = vbslq_s8(v54, xmmword_1D2EF6330, v57);
  if (v51 == 1)
  {
    v61 = 30;
  }

  else
  {
    v61 = v39;
  }

  if (v51 == 1)
  {
    v40 = 0.5;
    v62 = 5;
  }

  else
  {
    v62 = v41;
  }

LABEL_73:
  *a1 = v56;
  *(a1 + 16) = v55;
  *(a1 + 32) = v33;
  *(a1 + 40) = v34;
  *(a1 + 48) = v60;
  *(a1 + 64) = v37;
  *(a1 + 72) = v36;
  *(a1 + 80) = v59;
  *(a1 + 96) = v61;
  *(a1 + 104) = v40;
  *(a1 + 112) = v62;
}

void sub_1D2EE1F50(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1D2EE4A38();
  v7 = sub_1D2EE4A38();
  v8 = [v5 pathForResource:v6 ofType:v7];

  if (v8)
  {
    v9 = sub_1D2EE4A68();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (qword_1EDECF8A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EDED2D38);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D2E46000, v13, v14, "Initialize CallIntelligenceTrialManager", v15, 2u);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  *a2 = 0xD000000000000038;
  a2[1] = 0x80000001D2EE90D0;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = 0xD000000000000014;
  a2[5] = 0x80000001D2EE9140;
  a2[6] = a1;
}

double sub_1D2EE213C@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_1D2EE3D88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE3D08();
  v7 = sub_1D2EE3DA8();
  v9 = v8;
  v10 = sub_1D2EE3CD8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1D2EE3CC8();
  sub_1D2E95DDC();
  sub_1D2EE3CB8();
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v43 = v51;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  if (qword_1EDECF8A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1D2EE4618();
  __swift_project_value_buffer(v17, qword_1EDED2D38);
  v18 = sub_1D2EE45F8();
  v27 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v18, v27))
  {
    v19 = swift_slowAlloc();
    v25 = v19;
    v26 = swift_slowAlloc();
    *&v29 = v26;
    *v19 = 136315138;
    v56 = v40;
    v57 = v41;
    *v58 = v42;
    *&v58[16] = v43;
    v52 = v36;
    v53 = v37;
    v54 = v38;
    v55 = v39;
    sub_1D2EE2700();
    v28 = v18;
    v20 = sub_1D2EE5258();
    v22 = sub_1D2E685B0(v20, v21, &v29);

    v23 = v25;
    *(v25 + 1) = v22;
    _os_log_impl(&dword_1D2E46000, v28, v27, "Loaded configuration: %s", v23, 0xCu);
    v24 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1D38AF660](v24, -1, -1);
    MEMORY[0x1D38AF660](v23, -1, -1);

    sub_1D2E7EA2C(v7, v9);
  }

  else
  {

    sub_1D2E7EA2C(v7, v9);
  }

  (*(v3 + 8))(v6, v2);
  v33 = v40;
  v34 = v41;
  v35[0] = v42;
  *&v35[1] = v43;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  v32 = v39;
  sub_1D2EE26F8(&v29);
  *v58 = v35[0];
  *&v58[9] = *(v35 + 9);
  v52 = v29;
  v53 = v30;
  v54 = v31;
  v55 = v32;
  v13 = v34;
  a1[4] = v33;
  a1[5] = v13;
  a1[6] = *v58;
  *(a1 + 105) = *&v58[9];
  v14 = v53;
  *a1 = v52;
  a1[1] = v14;
  result = *&v54;
  v16 = v55;
  a1[2] = v54;
  a1[3] = v16;
  return result;
}

uint64_t sub_1D2EE2650(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1D2EE266C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_1D2EE2690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392E8, &unk_1D2EF63D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2EE2700()
{
  result = qword_1EC7398B0;
  if (!qword_1EC7398B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7398B0);
  }

  return result;
}

uint64_t sub_1D2EE2754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2EE4E58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    return 7104878;
  }

  else
  {
    (*(v10 + 32))(v16, v9, a2);
    (*(v10 + 16))(v14, v16, a2);
    v18 = sub_1D2EE4AA8();
    (*(v10 + 8))(v16, a2);
    return v18;
  }
}

uint64_t sub_1D2EE2A38(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D2EE4618();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D2EE4608();
}

uint64_t sub_1D2EE2C28()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2EE2D70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D2EE2DCC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D2EE4A38();
  v2 = sub_1D2EE4A38();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D2EE3D48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D2EE2EC4()
{

  return swift_deallocClassInstance();
}

void sub_1D2EE3220()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D2EE4A38();
  v2 = sub_1D2EE4A38();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D2EE3D48();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D2EE35E8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D2EE4A38();
  v2 = sub_1D2EE4A38();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D2EE3D48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D2EE3704(uint64_t a1)
{
  v2 = sub_1D2EE3EF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7398C0, &qword_1D2EF6608);
    v10 = sub_1D2EE4F98();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D2EE3B64(&qword_1EC7392C0);
      v18 = sub_1D2EE49E8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1D2EE3B64(&qword_1EC7392C8);
          v25 = sub_1D2EE4A08();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D2EE39FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7398B8, &qword_1D2EF6600);
    v3 = sub_1D2EE4F98();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1D2EE5338();

      sub_1D2EE4AC8();
      result = sub_1D2EE5378();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1D2EE5288();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D2EE3B64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D2EE3EF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}