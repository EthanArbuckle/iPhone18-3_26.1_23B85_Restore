void static SystemInfo.lockState.getter(char *a1@<X8>)
{
  v2 = MKBGetDeviceLockState();
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v3 = 5;
      goto LABEL_17;
    }

    if (v2 == 2)
    {
      v3 = 4;
      goto LABEL_17;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 3;
      goto LABEL_17;
    }

    if (v2 == 1)
    {
      if (MKBDeviceUnlockedSinceBoot())
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_17;
    }
  }

  v4 = v2;
  if (qword_27EFBE328 != -1)
  {
    swift_once();
  }

  v5 = sub_24AE83ED0();
  __swift_project_value_buffer(v5, qword_27EFBFED0);
  v6 = sub_24AE83EB0();
  v7 = sub_24AE84230();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_24AE43000, v6, v7, "MKBGetDeviceLockState() returned %d", v8, 8u);
    MEMORY[0x24C233A80](v8, -1, -1);
  }

  v3 = 0;
LABEL_17:
  *a1 = v3;
}

uint64_t dispatch thunk of XPCClientConnectionPool.add(connection:)(uint64_t a1)
{
  v4 = *(*v1 + 288);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE451AC;

  return v8(a1);
}

uint64_t sub_24AE44AF0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  return MEMORY[0x2822009F8](sub_24AE44B38, v1, 0);
}

uint64_t sub_24AE44B38()
{
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE910, &qword_24AE86A70);
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFBE918, &qword_24AE86A78);
  v3 = swift_allocObject();
  v0[17] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = [v1 invalidationHandler];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v4 = swift_allocObject();
    v4[2] = sub_24AE6D8EC;
    v4[3] = v6;
    v7 = sub_24AE6D8FC;
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];
  *(v3 + 16) = v7;
  *(v3 + 24) = v4;
  sub_24AE44D88(0);
  *(v2 + 16) = v10;
  swift_beginAccess();
  v11 = *(v8 + 160);
  v0[18] = v11;
  v0[12] = v11;
  v12 = swift_task_alloc();
  v0[19] = v12;
  v13 = *(v9 + 80);
  v0[20] = v13;
  v12[2] = v13;
  v14 = *(v9 + 88);
  v0[21] = v14;
  v12[3] = v14;
  v12[4] = v10;
  v15 = *(MEMORY[0x277D08A50] + 4);

  v16 = v10;
  v17 = swift_task_alloc();
  v0[22] = v17;
  v18 = *(v14 + 8);
  v19 = sub_24AE84200();
  WitnessTable = swift_getWitnessTable();
  *v17 = v0;
  v17[1] = sub_24AE452A8;

  return MEMORY[0x28215ED40](v0 + 11, &unk_24AE86A88, v12, v19, WitnessTable);
}

uint64_t sub_24AE44D88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AE44D98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE44DD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE44E08(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE451A8;

  return sub_24AE44F88(a1, v6, v4, v5);
}

uint64_t sub_24AE44EB8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v0[6] = sub_24AE44FBC();
  v0[7] = sub_24AE83D20();
  v4 = *(MEMORY[0x277D089B8] + 4);
  v7 = (*MEMORY[0x277D089B8] + MEMORY[0x277D089B8]);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_24AE45008;

  return v7();
}

uint64_t sub_24AE44F88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_24AE44EB8, 0, 0);
}

unint64_t sub_24AE44FBC()
{
  result = qword_280D79850;
  if (!qword_280D79850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D79850);
  }

  return result;
}

uint64_t sub_24AE45008(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_24AE45128, 0, 0);
}

uint64_t sub_24AE4512C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];
  v4 = sub_24AE842A0();

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_24AE451AC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_24AE452A8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[18];
    v6 = v2[19];
    v7 = v2[14];

    MEMORY[0x2822009F8](sub_24AE453F0, v7, 0);
  }
}

uint64_t sub_24AE453F0()
{
  v1 = v0[11];
  if (v1)
  {
    if (qword_280D79860 != -1)
    {
      swift_once();
    }

    v2 = v0[13];
    v3 = sub_24AE83ED0();
    __swift_project_value_buffer(v3, qword_280D79868);
    v4 = v2;
    v5 = sub_24AE83EB0();
    v6 = sub_24AE84210();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[16];
    v8 = v0[17];
    if (v7)
    {
      v10 = v0[13];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_24AE43000, v5, v6, "Already have a session for %@", v11, 0xCu);
      sub_24AE6D86C(v12);
      MEMORY[0x24C233A80](v12, -1, -1);
      MEMORY[0x24C233A80](v11, -1, -1);
    }

    v14 = v0[1];

    return v14(v1);
  }

  else
  {
    v17 = v0[20];
    v16 = v0[21];
    v18 = v0[13];
    swift_getAssociatedTypeWitness();
    sub_24AE83DD0();
    v19 = v18;
    v20 = sub_24AE83DC0();
    v0[23] = v20;
    if (v20)
    {
      v21 = *(MEMORY[0x277D08990] + 4);
      v22 = v20;

      v23 = swift_task_alloc();
      v0[24] = v23;
      *v23 = v0;
      v23[1] = sub_24AE45810;
      v24 = v0[20];
      v25 = v0[21];

      return MEMORY[0x28215EBC0](v22);
    }

    else
    {
      if (qword_280D79860 != -1)
      {
        swift_once();
      }

      v26 = v0[13];
      v27 = sub_24AE83ED0();
      __swift_project_value_buffer(v27, qword_280D79868);
      v28 = v26;
      v29 = sub_24AE83EB0();
      v30 = sub_24AE84230();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v0[13];
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v31;
        *v33 = v31;
        v34 = v31;
        _os_log_impl(&dword_24AE43000, v29, v30, "Failed to make XPCSession from %@", v32, 0xCu);
        sub_24AE6D86C(v33);
        MEMORY[0x24C233A80](v33, -1, -1);
        MEMORY[0x24C233A80](v32, -1, -1);
      }

      v36 = v0[20];
      v35 = v0[21];
      v38 = v0[16];
      v37 = v0[17];

      type metadata accessor for XPCClientConnectionPool.Error();
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();

      v39 = v0[1];

      return v39();
    }
  }
}

uint64_t sub_24AE45810(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = v1;

  v7 = v4[14];
  if (v1)
  {
    v8 = sub_24AE6BD0C;
  }

  else
  {
    v4[26] = a1;
    v8 = sub_24AE4594C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AE4594C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = swift_allocObject();
  v13 = *(v0 + 10);
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v13;
  *(v6 + 32) = v5;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  v0[6] = sub_24AE6D8D4;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AE62714;
  v0[5] = &block_descriptor_2;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  [v3 setInvalidationHandler_];
  _Block_release(v7);
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_24AE46064;
  v10 = v0[26];
  v11 = v0[14];

  return sub_24AE45BC0(v10);
}

uint64_t sub_24AE45AF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE45B28()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AE45BC0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  return MEMORY[0x2822009F8](sub_24AE45C08, v1, 0);
}

uint64_t sub_24AE45C08()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  swift_beginAccess();
  v4 = *(v1 + 160);
  v5 = *(v2 + 80);
  v6 = *(*(v2 + 88) + 8);

  v7 = sub_24AE841B0();

  v0[15] = v3;
  swift_beginAccess();
  sub_24AE84200();
  swift_unknownObjectRetain();
  sub_24AE841C0();
  v8 = v0[14];
  swift_endAccess();
  swift_unknownObjectRelease();
  if (qword_280D79860 != -1)
  {
    swift_once();
  }

  v9 = v0[17];
  v10 = sub_24AE83ED0();
  __swift_project_value_buffer(v10, qword_280D79868);

  v11 = sub_24AE83EB0();
  v12 = sub_24AE84210();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[17];
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = v7;
    *(v15 + 12) = 2048;
    swift_beginAccess();
    v16 = *(v1 + 160);

    v17 = sub_24AE841B0();

    *(v15 + 14) = v17;

    _os_log_impl(&dword_24AE43000, v11, v12, "Session count: %ld -> %ld", v15, 0x16u);
    MEMORY[0x24C233A80](v15, -1, -1);
  }

  else
  {
    v18 = v0[17];
  }

  swift_beginAccess();
  v19 = *(v1 + 160);

  v20 = sub_24AE841B0();

  if (v20 == 1 && (v21 = v0[17], v22 = *(v21 + 112), (v0[19] = v22) != 0))
  {
    v0[20] = *(v21 + 120);
    sub_24AE45FA0(v22);
    v27 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[21] = v24;
    *v24 = v0;
    v24[1] = sub_24AE6C160;

    return v27();
  }

  else
  {
    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_24AE45FA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AE45FE8()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];

  v4 = v0[26];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_24AE46064()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE45FE8, v2, 0);
}

uint64_t sub_24AE46174()
{
  if (qword_280D7A740 != -1)
  {
    swift_once();
  }

  v1 = off_280D7A748;
  os_unfair_lock_lock(off_280D7A748 + 6);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1 + 6);
  if (MEMORY[0x24C2329E0]())
  {
    if (!v2)
    {
      type metadata accessor for Daemon();
      swift_allocObject();
      v3 = swift_task_alloc();
      *(v0 + 16) = v3;
      *v3 = v0;
      v3[1] = sub_24AE5548C;

      return sub_24AE692A0(v3, 0xE800000000000000);
    }
  }

  else if (!v2)
  {
    return sub_24AE84440();
  }

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t daemon.getter()
{
  if (qword_280D7A7F8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D7A800;

  return MEMORY[0x2822009F8](sub_24AE46174, v0, 0);
}

uint64_t sub_24AE463AC()
{
  v1 = v0[6];
  v0[9] = (*(v0[4] + 16))(v0[2]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_24AE46490;
  v3 = v0[5];
  v4 = v0[3];

  return sub_24AE46690(v4, v3);
}

uint64_t sub_24AE46490(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];

    return MEMORY[0x2822009F8](sub_24AE71D68, v7, v8);
  }

  else
  {
    v9 = v4[9];

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t ActorServiceDaemon.getService<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(a3 + 8) + 24);
  v8 = sub_24AE840E0();
  v5[7] = v8;
  v5[8] = v7;

  return MEMORY[0x2822009F8](sub_24AE463AC, v8, v7);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(a3 + 8) + 24);
  v8 = sub_24AE840E0();

  return MEMORY[0x2822009F8](sub_24AE71AD0, v8, v7);
}

uint64_t sub_24AE46690(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_24AE46700, v2, 0);
}

uint64_t sub_24AE466D8()
{
  sub_24AE46AE4();
}

uint64_t sub_24AE46700()
{
  v46 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    while (v4 < *(v2 + 16))
    {
      v6 = *(v0 + 128);
      v5 = *(v0 + 136);
      v43 = *(v2 + 16 * v4 + 32);
      v45 = v43;
      swift_unknownObjectRetain();
      if (sub_24AE46B18(&v45))
      {
        v14 = *(v0 + 128);

        *(v0 + 88) = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_7;
        }

        *(v0 + 152) = *(v0 + 120);
        v15 = qword_280D7A5E0;
        swift_unknownObjectRetain();
        if (v15 == -1)
        {
LABEL_12:
          sub_24AE846A0();
          if (*(v0 + 104))
          {
            v16 = *(v0 + 112);
            v17 = *(v0 + 144);
            v18 = *(v0 + 104);
            ObjectType = swift_getObjectType();
            v44 = *(v16 + 24);
            v20 = v44(ObjectType, v16);
            v22 = v21;
            swift_beginAccess();
            if (*(*(v17 + 128) + 16))
            {
              v23 = *(v17 + 128);

              sub_24AE475AC(v20, v22);
              v25 = v24;

              if (v25)
              {
                v26 = *(v0 + 136);
                v27 = *(v0 + 144);
                v28 = *(v0 + 128);

                v29 = v44(ObjectType, v16);
                v31 = v30;
                v32 = (*(v26 + 24))(v28, v26);
                v34 = v33;
                swift_beginAccess();
                sub_24AE81974(&v45, v29, v31, v32, v34);
                swift_endAccess();
              }
            }

            swift_unknownObjectRelease();
          }

          v35 = *(v0 + 128);
          v36 = *(v0 + 136);
          v37 = *(v36 + 24);
          *(v0 + 160) = v37;
          *(v0 + 168) = (v36 + 24) & 0xFFFFFFFFFFFFLL | 0x69BB000000000000;
          v38 = v37(v35);
          v40 = v39;
          *(v0 + 176) = v39;
          v41 = swift_task_alloc();
          *(v0 + 184) = v41;
          *v41 = v0;
          v41[1] = sub_24AE46D60;
          v42 = *(v0 + 144);

          return sub_24AE46EB0(v38, v40);
        }

LABEL_21:
        swift_once();
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_6:

LABEL_7:
  v7 = *(v0 + 128);
  v8 = sub_24AE846C0();
  v10 = v9;
  sub_24AE834AC();
  swift_allocError();
  *v11 = v8;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AE46B18(__int128 *a1)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRelease();
    return v2;
  }

  return result;
}

uint64_t sub_24AE46B9C()
{
  v1 = v0[7];
  swift_beginAccess();
  if (*(*(v1 + 128) + 16) && (v3 = v0[5], v2 = v0[6], , sub_24AE475AC(v3, v2), LOBYTE(v2) = v4, , (v2 & 1) != 0))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    sub_24AE83BE4(&qword_280D7A510, v5, type metadata accessor for ActorServiceCollection);
    v9 = swift_task_alloc();
    v0[8] = v9;
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;
    v10 = *(MEMORY[0x277D85A40] + 4);
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_24AE7620C;

    return MEMORY[0x2822008A0]();
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24AE46D60()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {
    v4 = v3[18];

    return MEMORY[0x2822009F8](sub_24AE76394, v4, 0);
  }

  else
  {
    v5 = v3[22];
    v6 = v3[19];
    swift_unknownObjectRelease();

    v7 = v3[1];
    v8 = v3[19];

    return v7(v8);
  }
}

uint64_t sub_24AE46EB0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_24AE46B9C, v2, 0);
}

uint64_t sub_24AE46F28()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[20];
  v3 = *(v1 + 80);
  v4 = *(*(v1 + 88) + 8);

  LOBYTE(v4) = sub_24AE841E0();

  return v4 & 1;
}

uint64_t sub_24AE46FC8()
{
  v61 = v0;
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[10];
    if (*(v1 + 16) && (v3 = sub_24AE475AC(0x746E657645435058, 0xEC000000656D614ELL), (v4 & 1) != 0))
    {
      sub_24AE476DC(*(v1 + 56) + 32 * v3, (v0 + 2));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
      if (swift_dynamicCast())
      {
        v5 = v0[17];
        v6 = v0[11];
        v7 = v0[12];
        sub_24AE83D40();

        v57 = v2;
        sub_24AE83D50();
        if (qword_280D79CA0 != -1)
        {
          swift_once();
        }

        v9 = v0[16];
        v8 = v0[17];
        v11 = v0[14];
        v10 = v0[15];
        v12 = sub_24AE83ED0();
        __swift_project_value_buffer(v12, qword_280D79CB0);
        (*(v10 + 16))(v9, v8, v11);
        v13 = sub_24AE83EB0();
        v14 = sub_24AE84250();
        v15 = os_log_type_enabled(v13, v14);
        v17 = v0[15];
        v16 = v0[16];
        v18 = v0[14];
        if (v15)
        {
          v19 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v60 = v58;
          *v19 = 136446210;
          sub_24AE564F0(&qword_280D7A040, 255, MEMORY[0x277D089A0]);
          v20 = sub_24AE84510();
          v22 = v21;
          v56 = v14;
          v23 = *(v17 + 8);
          v23(v16, v18);
          v24 = sub_24AE53C28(v20, v22, &v60);

          *(v19 + 4) = v24;
          _os_log_impl(&dword_24AE43000, v13, v56, "XPCEventStream notification: %{public}s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x24C233A80](v58, -1, -1);
          MEMORY[0x24C233A80](v19, -1, -1);
        }

        else
        {

          v23 = *(v17 + 8);
          v23(v16, v18);
        }

        v46 = v0[17];
        v47 = v0[14];
        v48 = v0[13];
        v49 = v0[15] + 8;
        sub_24AE52CC0(v46, v57, &unk_285E371E0, &unk_24AE85DF8, "Received notification %{public}s with no subscribers!", 0x8002200010002);

        v23(v46, v47);
        v50 = v0[26];
        v51 = v0[13];
        v52 = *(MEMORY[0x277D85798] + 4);
        v53 = swift_task_alloc();
        v0[27] = v53;
        *v53 = v0;
        v53[1] = sub_24AE51970;
        v54 = v0[20];
        v55 = v0[18];

        return MEMORY[0x2822003E8](v0 + 9, v51, v50, v55);
      }
    }

    else
    {
    }

    if (qword_280D79CA0 != -1)
    {
      swift_once();
    }

    v25 = sub_24AE83ED0();
    __swift_project_value_buffer(v25, qword_280D79CB0);
    v26 = sub_24AE83EB0();
    v27 = sub_24AE84230();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[23];
    v59 = v0[24];
    v30 = v0[22];
    v31 = v0[19];
    v32 = v0[20];
    v33 = v0[18];
    if (v28)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v60 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_24AE53C28(0x746E657645435058, 0xEC000000656D614ELL, &v60);
      _os_log_impl(&dword_24AE43000, v26, v27, "Event missing %s key!", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C233A80](v35, -1, -1);
      MEMORY[0x24C233A80](v34, -1, -1);
    }

    else
    {
    }

    (*(v31 + 8))(v32, v33);
    (*(v29 + 8))(v59, v30);
  }

  else
  {
    v37 = v0[23];
    v36 = v0[24];
    v38 = v0[22];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v37 + 8))(v36, v38);
  }

  v39 = v0[24];
  v40 = v0[20];
  v41 = v0[21];
  v43 = v0[16];
  v42 = v0[17];

  v44 = v0[1];

  return v44();
}

unint64_t sub_24AE475AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AE845F0();
  sub_24AE83FE0();
  v6 = sub_24AE84610();

  return sub_24AE47624(a1, a2, v6);
}

unint64_t sub_24AE47624(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AE84540())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24AE476DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AE47758@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24AE477DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE47820()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AE47898()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE478D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 232);
  return result;
}

uint64_t sub_24AE47918(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 232) = v2;
  return result;
}

uint64_t sub_24AE4796C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE479AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  sub_24AE60214(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE479FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_24AE60214(v0[5], v0[6]);
  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AE47A54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_24AE60214(v0[5], v0[6]);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AE47A9C()
{
  v1 = sub_24AE83EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AE47B60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24AE83EA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AE47CC4()
{
  v1 = sub_24AE83EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AE47D90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE858, &qword_24AE863E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AE47E4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE858, &qword_24AE863E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AE47F14()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AE47F94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_24AE47FD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AE480B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE48104()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE4813C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_24AE46AE4();
}

uint64_t sub_24AE48178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24AE6B49C(v4);
}

__n128 sub_24AE481B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24AE481C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AE48210()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE48260()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE48298()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AE482FC()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE48334()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE48380()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE483C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];
  swift_unknownObjectRelease();
  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AE48410()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE48450()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE48490()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[15];

  v6 = v0[17];

  v7 = v0[20];

  v8 = v0[25];

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_24AE48558()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A990);
  v1 = __swift_project_value_buffer(v0, qword_280D7A990);
  if (qword_280D79C58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D7A960);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t FirstUnlockService.name.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

void *FirstUnlockService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000012;
  v0[15] = 0x800000024AE850B0;
  v0[16] = MEMORY[0x277D84F90];
  return v0;
}

void *FirstUnlockService.init()()
{
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000012;
  v0[15] = 0x800000024AE850B0;
  v0[16] = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_24AE48718()
{
  v11 = v0;
  static SystemInfo.lockState.getter(&v10);
  if (v10 == 1)
  {
    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_24AE488B4;
    v2 = v0[2];

    return sub_24AE48A24();
  }

  else
  {
    if (qword_280D79DE0 != -1)
    {
      swift_once();
    }

    v4 = sub_24AE83ED0();
    __swift_project_value_buffer(v4, qword_280D7A990);
    v5 = sub_24AE83EB0();
    v6 = sub_24AE84250();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24AE43000, v5, v6, "Device is already unlocked -- not registering", v7, 2u);
      MEMORY[0x24C233A80](v7, -1, -1);
    }

    v8 = v0[2];
    sub_24AE49398();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24AE488B4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE489C4, v2, 0);
}

uint64_t sub_24AE489C4()
{
  v1 = *(v0 + 16);
  sub_24AE49398();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AE48A24()
{
  v1[2] = v0;
  v2 = sub_24AE83D90();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE3F8, &qword_24AE85218) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE408, &qword_24AE85228);
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE48BEC, v0, 0);
}

uint64_t sub_24AE48BEC()
{
  if (qword_280D79DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_24AE83ED0();
  v0[13] = __swift_project_value_buffer(v1, qword_280D7A990);
  v2 = sub_24AE83EB0();
  v3 = sub_24AE84250();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, v2, v3, "Registering listener for Darwin notification: kMobileKeyBagFirstUnlockNotificationID", v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  sub_24AE83DB0();
  v5 = *(MEMORY[0x277D089B0] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_24AE48D68;
  v7 = v0[9];

  return MEMORY[0x28215EC48](v7, 0xD000000000000025, 0x800000024AE87F40);
}

uint64_t sub_24AE48D68()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE48E78, v2, 0);
}

uint64_t sub_24AE48E78()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_24AE84150();
  (*(v3 + 8))(v2, v4);
  v6 = sub_24AE4A640(&unk_280D79DD0, v5, type metadata accessor for FirstUnlockService);
  v0[15] = v6;
  v7 = v0[2];
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_24AE48F94;
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[6];

  return MEMORY[0x2822003E8](v12, v7, v6, v11);
}

uint64_t sub_24AE48F94()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE490A4, v2, 0);
}

uint64_t sub_24AE490A4()
{
  v30 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13];
    (*(v3 + 32))(v0[5], v1, v2);
    v9 = sub_24AE83EB0();
    v10 = sub_24AE84220();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      sub_24AE4A640(&qword_280D7A040, 255, MEMORY[0x277D089A0]);
      v17 = sub_24AE84510();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_24AE53C28(v17, v19, &v29);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_24AE43000, v9, v10, "Process first unlock event: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C233A80](v16, -1, -1);
      MEMORY[0x24C233A80](v15, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v21 = v0[2];
    sub_24AE49398();
    v22 = v0[15];
    v23 = v0[2];
    v24 = *(MEMORY[0x277D85798] + 4);
    v25 = swift_task_alloc();
    v0[16] = v25;
    *v25 = v0;
    v25[1] = sub_24AE48F94;
    v26 = v0[12];
    v27 = v0[10];
    v28 = v0[6];

    return MEMORY[0x2822003E8](v28, v23, v22, v27);
  }
}

void sub_24AE49398()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE3F0, &qword_24AE85210);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v26 - v5;
  static SystemInfo.lockState.getter(&v27);
  if (v27 == 1)
  {
    if (qword_280D79DE0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AE83ED0();
    __swift_project_value_buffer(v7, qword_280D7A990);
    v26 = sub_24AE83EB0();
    v8 = sub_24AE84250();
    if (os_log_type_enabled(v26, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AE43000, v26, v8, "still locked -- keep listening", v9, 2u);
      MEMORY[0x24C233A80](v9, -1, -1);
    }

    v10 = v26;
  }

  else
  {
    if (qword_280D79DE0 != -1)
    {
      swift_once();
    }

    v11 = sub_24AE83ED0();
    __swift_project_value_buffer(v11, qword_280D7A990);
    v12 = sub_24AE83EB0();
    v13 = sub_24AE84250();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24AE43000, v12, v13, "*** First Unlock Event ***", v14, 2u);
      MEMORY[0x24C233A80](v14, -1, -1);
    }

    v15 = sub_24AE83EB0();
    v16 = sub_24AE84250();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(v1[16].isa + 2);

      _os_log_impl(&dword_24AE43000, v15, v16, "Notifying %ld clients of first unlock", v17, 0xCu);
      MEMORY[0x24C233A80](v17, -1, -1);
    }

    else
    {
    }

    isa = v1[16].isa;
    v19 = *(isa + 2);
    if (v19)
    {
      v26 = v1;
      v22 = *(v3 + 16);
      v20 = v3 + 16;
      v21 = v22;
      v23 = isa + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v24 = *(v20 + 56);

      do
      {
        v21(v6, v23, v2);
        sub_24AE84100();
        (*(v20 - 8))(v6, v2);
        v23 += v24;
        --v19;
      }

      while (v19);

      v1 = v26;
      v25 = v26[16].isa;
    }

    v1[16].isa = MEMORY[0x277D84F90];
  }
}

uint64_t sub_24AE49764()
{
  v9 = v0;
  static SystemInfo.lockState.getter(&v8);
  if (v8 == 1)
  {
    v2 = v0[2];
    sub_24AE4A640(&unk_280D79DD0, v1, type metadata accessor for FirstUnlockService);
    v3 = *(MEMORY[0x277D859E0] + 4);
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_24AE498C4;
    v5 = v0[2];

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AE498C4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE48510, v2, 0);
}

uint64_t sub_24AE499D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE3F0, &qword_24AE85210);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = *(a2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 128) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_24AE6153C(0, v9[2] + 1, 1, v9);
    *(a2 + 128) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_24AE6153C(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 128) = v9;
  return result;
}

uint64_t FirstUnlockService.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t FirstUnlockService.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE49BD0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_24AE49C00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AE49C8C;

  return sub_24AE486F8();
}

uint64_t sub_24AE49C8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AE49D84(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  UnlockService = type metadata accessor for FirstUnlockService();
  v5 = sub_24AE844F0();
  MEMORY[0x24C232D80](v5);

  MEMORY[0x24C232D80](8250, 0xE200000000000000);
  v6 = MEMORY[0x24C233290](UnlockService, a2);
  MEMORY[0x24C232D80](v6);

  MEMORY[0x24C232D80](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AE49E40()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A960);
  __swift_project_value_buffer(v0, qword_280D7A960);
  return sub_24AE83EC0();
}

uint64_t sub_24AE49EEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_24AE4A640(&qword_280D79DC8, a2, type metadata accessor for FirstUnlockService);
  result = sub_24AE4A640(&unk_280D79DD0, v3, type metadata accessor for FirstUnlockService);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of FirstUnlockService.initialLaunchProcessing()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AE4A7E0;

  return v6();
}

uint64_t dispatch thunk of FirstUnlockService.migrate(from:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AE4A7E0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FirstUnlockService.firstLaunchSinceReboot()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AE4A7E0;

  return v6();
}

uint64_t dispatch thunk of FirstUnlockService.run()()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AE4A7E0;

  return v6();
}

uint64_t dispatch thunk of FirstUnlockService.waitForFirstUnlock()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AE4A504;

  return v6();
}

uint64_t sub_24AE4A504()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24AE4A640(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24AE4A744(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AE4A764(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_280D7A068)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280D7A068);
    }
  }
}

unint64_t SystemInfo.DeviceLockState.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24AE4A800()
{
  v1 = *v0;
  sub_24AE845F0();
  MEMORY[0x24C233390](v1);
  return sub_24AE84610();
}

uint64_t sub_24AE4A848()
{
  v1 = *v0;
  sub_24AE845F0();
  MEMORY[0x24C233390](v1);
  return sub_24AE84610();
}

unint64_t sub_24AE4A948()
{
  result = qword_27EFBE4D0;
  if (!qword_27EFBE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE4D0);
  }

  return result;
}

uint64_t _s15DeviceLockStateOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s15DeviceLockStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AE4AAEC()
{
  result = qword_280D79BB8;
  if (!qword_280D79BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D79BB8);
  }

  return result;
}

uint64_t sub_24AE4AB48()
{
  sub_24AE845F0();
  MEMORY[0x24C233390](0);
  return sub_24AE84610();
}

uint64_t sub_24AE4ABB4()
{
  sub_24AE845F0();
  MEMORY[0x24C233390](0);
  return sub_24AE84610();
}

uint64_t sub_24AE4AC1C()
{
  if (*v0)
  {
    result = 0x534F63616DLL;
  }

  else
  {
    result = 5459817;
  }

  *v0;
  return result;
}

uint64_t sub_24AE4AC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 5459817 && a2 == 0xE300000000000000;
  if (v5 || (sub_24AE84540() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x534F63616DLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE84540();

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

uint64_t sub_24AE4AD30(uint64_t a1)
{
  v2 = sub_24AE4B198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE4AD6C(uint64_t a1)
{
  v2 = sub_24AE4B198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AE4ADB4(uint64_t a1)
{
  v2 = sub_24AE4B240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE4ADF0(uint64_t a1)
{
  v2 = sub_24AE4B240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AE4AE2C(uint64_t a1)
{
  v2 = sub_24AE4B1EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE4AE68(uint64_t a1)
{
  v2 = sub_24AE4B1EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceVersion.Platform.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE4D8, &qword_24AE853A0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE4E0, &qword_24AE853A8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE4E8, &qword_24AE853B0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE4B198();
  sub_24AE84630();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24AE4B1EC();
    v18 = v22;
    sub_24AE844D0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24AE4B240();
    sub_24AE844D0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AE4B198()
{
  result = qword_27EFBE4F0;
  if (!qword_27EFBE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE4F0);
  }

  return result;
}

unint64_t sub_24AE4B1EC()
{
  result = qword_27EFBE4F8;
  if (!qword_27EFBE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE4F8);
  }

  return result;
}

unint64_t sub_24AE4B240()
{
  result = qword_27EFBE500;
  if (!qword_27EFBE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE500);
  }

  return result;
}

uint64_t DeviceVersion.Platform.hashValue.getter()
{
  v1 = *v0;
  sub_24AE845F0();
  MEMORY[0x24C233390](v1);
  return sub_24AE84610();
}

uint64_t DeviceVersion.Platform.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE508, &qword_24AE853B8);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE510, &qword_24AE853C0);
  v32 = *(v8 - 8);
  v9 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE518, &qword_24AE853C8);
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE4B198();
  v17 = v37;
  sub_24AE84620();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_24AE844C0();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_24AE843B0();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE520, &qword_24AE853D0) + 48);
    *v25 = &type metadata for DeviceVersion.Platform;
    sub_24AE844A0();
    sub_24AE843A0();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_24AE4B1EC();
    sub_24AE84490();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_24AE4B240();
    sub_24AE84490();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

unint64_t sub_24AE4B820()
{
  result = qword_27EFBE528;
  if (!qword_27EFBE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE528);
  }

  return result;
}

uint64_t static DeviceVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24AE84540();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_24AE4B8D8()
{
  if (*v0)
  {
    result = 0x6D726F6674616C70;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_24AE4B918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000024AE87FD0 == a2 || (sub_24AE84540() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24AE84540();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24AE4BA00(uint64_t a1)
{
  v2 = sub_24AE4C424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AE4BA3C(uint64_t a1)
{
  v2 = sub_24AE4C424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE530, &qword_24AE853D8);
  v28 = *(v4 - 8);
  v5 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = v1[3];
  v25 = v1[2];
  v26 = v8;
  v27 = v1[4];
  v9 = v1[1];
  v23 = *v1;
  v24 = v9;
  v13 = *(v1 + 80);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE4C3C8(&v23, &v18);
  sub_24AE4C424();
  sub_24AE84630();
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v18 = v23;
  v19 = v24;
  v17 = 0;
  sub_24AE4C478();
  sub_24AE844E0();
  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v16[0] = v18;
  v16[1] = v19;
  sub_24AE4C4CC(v16);
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_24AE4C520();
    sub_24AE844E0();
  }

  return (*(v28 + 8))(v7, v4);
}

uint64_t DeviceVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE550, &qword_24AE853E0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AE4C424();
  sub_24AE84620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v11 = v19;
  v36 = 0;
  sub_24AE4C574();
  sub_24AE844B0();
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v29 = v24;
  v30 = v25;
  v34 = 1;
  sub_24AE4C5C8();
  sub_24AE844B0();
  (*(v10 + 8))(v8, v4);
  v12 = v35;
  v13 = v32;
  v20[2] = v31;
  v20[3] = v32;
  v14 = v33;
  v20[4] = v33;
  v16 = v29;
  v15 = v30;
  v20[0] = v29;
  v20[1] = v30;
  v21 = v35;
  *(v11 + 32) = v31;
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  *(v11 + 80) = v12;
  *v11 = v16;
  *(v11 + 16) = v15;
  sub_24AE4C61C(v20, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v22[2] = v31;
  v22[3] = v32;
  v22[4] = v33;
  v22[0] = v29;
  v22[1] = v30;
  v23 = v12;
  return sub_24AE4C654(v22);
}

BOOL sub_24AE4BF68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return (_s19FindMyDaemonSupport13DeviceVersionV1loiySbAC_ACtFZ_0(v7, v9) & 1) == 0;
}

BOOL sub_24AE4BFD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return (_s19FindMyDaemonSupport13DeviceVersionV1loiySbAC_ACtFZ_0(v9, v7) & 1) == 0;
}

uint64_t sub_24AE4C048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s19FindMyDaemonSupport13DeviceVersionV1loiySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_24AE4C0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24AE84540();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t DeviceVersion.debugDescription.getter()
{
  v1 = *(v0 + 80);
  MEMORY[0x24C232D80](*v0, *(v0 + 8));
  MEMORY[0x24C232D80](47, 0xE100000000000000);
  sub_24AE84430();
  return 0;
}

uint64_t sub_24AE4C18C()
{
  v1 = *(v0 + 80);
  MEMORY[0x24C232D80](*v0, *(v0 + 8));
  MEMORY[0x24C232D80](47, 0xE100000000000000);
  sub_24AE84430();
  return 0;
}

uint64_t _s19FindMyDaemonSupport13DeviceVersionV1loiySbAC_ACtFZ_0(uint64_t result, __int128 *a2)
{
  v2 = *(result + 48);
  v29 = *(result + 32);
  v30 = v2;
  v3 = *(result + 64);
  v4 = *(result + 16);
  v27 = *result;
  v28 = v4;
  v5 = *(result + 80);
  v6 = a2[3];
  v34 = a2[2];
  v35 = v6;
  v36 = a2[4];
  v7 = *a2;
  v33 = a2[1];
  v31 = v3;
  v32 = v7;
  if (v5 == *(a2 + 80))
  {
    v10 = *(result + 48);
    v22 = *(result + 32);
    v23 = v10;
    v24 = *(result + 64);
    v11 = *(result + 16);
    v20 = *result;
    v21 = v11;
    v12 = a2[3];
    v17 = a2[2];
    v18 = v12;
    v19 = a2[4];
    v13 = a2[1];
    v15 = *a2;
    v16 = v13;
    sub_24AE4C3C8(&v27, v26);
    sub_24AE4C3C8(&v32, v26);
    MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 = _s19FindMyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0(&v20, &v15);
    v25[2] = v17;
    v25[3] = v18;
    v25[4] = v19;
    v25[0] = v15;
    v25[1] = v16;
    sub_24AE4C4CC(v25);
    v26[2] = v22;
    v26[3] = v23;
    v26[4] = v24;
    v26[0] = v20;
    v26[1] = v21;
    sub_24AE4C4CC(v26);
    return MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 & 1;
  }

  v8 = v28;
  if (!v5)
  {
    v9 = v33 - 2;
    if (!__OFSUB__(v33, 2))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v8 = v28 - 2;
  if (__OFSUB__(v28, 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v33;
LABEL_7:
  if (v8 != v9)
  {
    MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 = v8 < v9;
    return MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 & 1;
  }

  if (__PAIR128__(v29, *(&v28 + 1)) == __PAIR128__(v34, *(&v33 + 1)) || (sub_24AE84540() & 1) != 0)
  {
    MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 = v5 ^ 1;
    return MyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0 & 1;
  }

  return sub_24AE84540();
}

unint64_t sub_24AE4C424()
{
  result = qword_27EFBE538;
  if (!qword_27EFBE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE538);
  }

  return result;
}

unint64_t sub_24AE4C478()
{
  result = qword_27EFBE540;
  if (!qword_27EFBE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE540);
  }

  return result;
}

unint64_t sub_24AE4C520()
{
  result = qword_27EFBE548;
  if (!qword_27EFBE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE548);
  }

  return result;
}

unint64_t sub_24AE4C574()
{
  result = qword_27EFBE558;
  if (!qword_27EFBE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE558);
  }

  return result;
}

unint64_t sub_24AE4C5C8()
{
  result = qword_27EFBE560;
  if (!qword_27EFBE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE560);
  }

  return result;
}

unint64_t sub_24AE4C688()
{
  result = qword_27EFBE568;
  if (!qword_27EFBE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE568);
  }

  return result;
}

unint64_t sub_24AE4C6E0()
{
  result = qword_27EFBE570;
  if (!qword_27EFBE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE570);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24AE4C758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_24AE4C7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceVersion.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeviceVersion.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_24AE4C910(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24AE4C9A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AE4CA84()
{
  result = qword_27EFBE578;
  if (!qword_27EFBE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE578);
  }

  return result;
}

unint64_t sub_24AE4CADC()
{
  result = qword_27EFBE580;
  if (!qword_27EFBE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE580);
  }

  return result;
}

unint64_t sub_24AE4CB34()
{
  result = qword_27EFBE588;
  if (!qword_27EFBE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE588);
  }

  return result;
}

unint64_t sub_24AE4CB8C()
{
  result = qword_27EFBE590;
  if (!qword_27EFBE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE590);
  }

  return result;
}

unint64_t sub_24AE4CBE4()
{
  result = qword_27EFBE598;
  if (!qword_27EFBE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE598);
  }

  return result;
}

unint64_t sub_24AE4CC3C()
{
  result = qword_27EFBE5A0;
  if (!qword_27EFBE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5A0);
  }

  return result;
}

unint64_t sub_24AE4CC94()
{
  result = qword_27EFBE5A8;
  if (!qword_27EFBE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5A8);
  }

  return result;
}

unint64_t sub_24AE4CCEC()
{
  result = qword_27EFBE5B0;
  if (!qword_27EFBE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5B0);
  }

  return result;
}

unint64_t sub_24AE4CD44()
{
  result = qword_27EFBE5B8;
  if (!qword_27EFBE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5B8);
  }

  return result;
}

unint64_t sub_24AE4CD9C()
{
  result = qword_27EFBE5C0;
  if (!qword_27EFBE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5C0);
  }

  return result;
}

unint64_t sub_24AE4CDF4()
{
  result = qword_27EFBE5C8;
  if (!qword_27EFBE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5C8);
  }

  return result;
}

void __swiftcall SystemVersionNumber.init(string:)(FindMyDaemonSupport::SystemVersionNumber_optional *__return_ptr retstr, Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v47 = retstr;
  v4 = sub_24AE842D0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20]();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v45 = countAndFlagsBits;
  v46 = object;
  v10 = sub_24AE83FA0();
  v11 = [v9 initWithString_];

  v12 = *MEMORY[0x277CC9E90];
  v13 = v5[13];
  v13(v8, v12, v4);
  v44 = sub_24AE842E0();
  v15 = v14;
  v16 = v5[1];
  v16(v8, v4);
  if ((v15 & 1) != 0 || (v17 = sub_24AE842C0(), !v18))
  {

    goto LABEL_6;
  }

  v19 = v18;
  v43 = v17;
  v13(v8, v12, v4);
  v20 = sub_24AE842E0();
  v22 = v21;
  v16(v8, v4);
  if (v22)
  {

LABEL_6:

    v23 = v47;
    *&v47->value.childType.is_nil = 0u;
    v23->value.suffix = 0u;
    *&v23->value.baseNumber = 0u;
    *&v23->value.baseLetter._object = 0u;
    v23->value.rawValue = 0u;
    return;
  }

  if (v20 >= 1000)
  {
    v24 = v20 / 0x3E8uLL;
  }

  else
  {
    v24 = 0;
  }

  if (v20 >= 1000)
  {
    v25 = v20 % 0x3E8uLL;
  }

  else
  {
    v25 = v20;
  }

  v42 = v25;
  v61 = v20 < 1000;
  v26 = v46;

  v27 = sub_24AE842C0();
  v29 = v28;
  v30 = v45;
  sub_24AE842B0();
  v31 = sub_24AE84020();

  if (v31)
  {

    goto LABEL_6;
  }

  v49._countAndFlagsBits = v30;
  v49._object = v26;
  v32 = v43;
  v33 = v44;
  *&v50 = v44;
  *(&v50 + 1) = v43;
  *&v51 = v19;
  *(&v51 + 1) = v24;
  v34 = v61;
  LOBYTE(v52) = v61;
  *(&v52 + 1) = *v60;
  DWORD1(v52) = *&v60[3];
  v35 = v42;
  *(&v52 + 1) = v42;
  v53.value._countAndFlagsBits = v27;
  v53.value._object = v29;
  v36 = v49;
  v37 = v50;
  v38 = v53;
  v39 = v47;
  v40 = v51;
  *&v47->value.childType.is_nil = v52;
  v39->value.suffix = v38;
  *&v39->value.baseNumber = v37;
  *&v39->value.baseLetter._object = v40;
  v39->value.rawValue = v36;
  v54[0] = v30;
  v54[1] = v26;
  v54[2] = v33;
  v54[3] = v32;
  v54[4] = v19;
  v54[5] = v24;
  v55 = v34;
  *&v56[3] = *&v60[3];
  *v56 = *v60;
  v57 = v35;
  v58 = v27;
  v59 = v29;
  sub_24AE4C3C8(&v49, &v48);
  sub_24AE4C4CC(v54);
}

BOOL sub_24AE4D1C4(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[2];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    if (a2[3] != a1[3] || a2[4] != a1[4])
    {
      v6 = a1;
      v7 = a2[3];
      v8 = a2;
      v9 = a2[4];
      v10 = sub_24AE84540();
      a2 = v8;
      v11 = v10;
      a1 = v6;
      if ((v11 & 1) == 0)
      {
        v18 = sub_24AE84540();
        return (v18 & 1) == 0;
      }
    }

    v12 = a2[7];
    v13 = a1[7];
    v4 = v12 < v13;
    if (v12 == v13)
    {
      if (a2[9])
      {
        v14 = a2[8];
        v15 = a2[9];
        v16 = a1[9];
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
        v16 = a1[9];
        if (v16)
        {
LABEL_10:
          v17 = v16;
          if (v14 != a1[8])
          {
            goto LABEL_20;
          }

LABEL_18:
          if (v15 == v17)
          {
            v18 = 0;
LABEL_21:

            return (v18 & 1) == 0;
          }

LABEL_20:
          v18 = sub_24AE84540();
          goto LABEL_21;
        }
      }

      v17 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v18 = v4;
  return (v18 & 1) == 0;
}

BOOL sub_24AE4D318(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    if (a1[3] != a2[3] || a1[4] != a2[4])
    {
      v6 = a1;
      v7 = a1[3];
      v8 = a2;
      v9 = sub_24AE84540();
      a2 = v8;
      v10 = v9;
      a1 = v6;
      if ((v10 & 1) == 0)
      {
        v18 = sub_24AE84540();
        return (v18 & 1) == 0;
      }
    }

    v11 = a1[7];
    v12 = a2[7];
    v4 = v11 < v12;
    if (v11 == v12)
    {
      v13 = a1[9];
      if (v13)
      {
        v14 = a1[8];
        v15 = v13;
        v16 = a2[9];
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
        v16 = a2[9];
        if (v16)
        {
LABEL_10:
          v17 = v16;
          if (v14 != a2[8])
          {
            goto LABEL_20;
          }

LABEL_18:
          if (v15 == v17)
          {
            v18 = 0;
LABEL_21:

            return (v18 & 1) == 0;
          }

LABEL_20:
          v18 = sub_24AE84540();
          goto LABEL_21;
        }
      }

      v17 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v18 = v4;
  return (v18 & 1) == 0;
}

uint64_t sub_24AE4D468(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[2];
  v4 = v2 < v3;
  if (v2 != v3)
  {
    goto LABEL_12;
  }

  if (a2[3] == a1[3] && a2[4] == a1[4])
  {
    goto LABEL_7;
  }

  v6 = a1;
  v7 = a2[3];
  v8 = a2;
  v9 = a2[4];
  v10 = sub_24AE84540();
  a2 = v8;
  v11 = v10;
  a1 = v6;
  if (v11)
  {
LABEL_7:
    v12 = a2[7];
    v13 = a1[7];
    v4 = v12 < v13;
    if (v12 == v13)
    {
      if (a2[9])
      {
        v14 = a2[8];
        v15 = a2[9];
        v16 = a1[9];
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
        v16 = a1[9];
        if (v16)
        {
LABEL_10:
          v17 = v16;
          if (v14 != a1[8])
          {
            goto LABEL_22;
          }

LABEL_20:
          if (v15 == v17)
          {
            v18 = 0;
LABEL_23:

            return v18 & 1;
          }

LABEL_22:
          v18 = sub_24AE84540();
          goto LABEL_23;
        }
      }

      v17 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_12:
    v18 = v4;
    return v18 & 1;
  }

  return sub_24AE84540();
}

uint64_t SystemVersionNumber.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall SystemVersionNumber.init(rawValue:)(FindMyDaemonSupport::SystemVersionNumber_optional *__return_ptr retstr, Swift::String rawValue)
{
  SystemVersionNumber.init(string:)(&v5, rawValue);
  v3 = *&v5.value.childType.is_nil;
  *&retstr->value.baseLetter._object = *&v5.value.baseLetter._object;
  *&retstr->value.childType.is_nil = v3;
  retstr->value.suffix = v5.value.suffix;
  v4 = *&v5.value.baseNumber;
  retstr->value.rawValue = v5.value.rawValue;
  *&retstr->value.baseNumber = v4;
}

void __swiftcall SystemVersionNumber.init(stringLiteral:)(FindMyDaemonSupport::SystemVersionNumber *__return_ptr retstr, Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;

  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  SystemVersionNumber.init(string:)(&v10, v5);
  v7 = v10;
  v6 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (v11)
  {

    retstr->rawValue._countAndFlagsBits = v7;
    retstr->rawValue._object = v6;
    v8 = v17;
    *&retstr->baseNumber = v16;
    *&retstr->baseLetter._object = v8;
    v9 = v19;
    *&retstr->childType.is_nil = v18;
    retstr->suffix = v9;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_24AE4D6D0@<Q0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  SystemVersionNumber.init(string:)(&v5, *a1);
  v3 = *&v5.value.childType.is_nil;
  *(a2 + 32) = *&v5.value.baseLetter._object;
  *(a2 + 48) = v3;
  *(a2 + 64) = v5.value.suffix;
  result = *&v5.value.baseNumber;
  *a2 = v5.value.rawValue;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24AE4D720@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_24AE4D7DC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5._countAndFlagsBits = v4;
  v5._object = v3;
  SystemVersionNumber.init(string:)(&v10, v5);
  v7 = v10;
  v6 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (v11)
  {

    *a2 = v7;
    *(a2 + 8) = v6;
    v8 = v17;
    *(a2 + 16) = v16;
    *(a2 + 32) = v8;
    v9 = v19;
    *(a2 + 48) = v18;
    *(a2 + 64) = v9;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_24AE4D864(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_24AE4D1C4(v8, v9);
}

BOOL sub_24AE4D8C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_24AE4D318(v8, v9);
}

uint64_t sub_24AE4D91C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_24AE4D468(v8, v9) & 1;
}

uint64_t sub_24AE4D978(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE84540();
  }
}

uint64_t SystemVersionNumber.description.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v12 = *(v0 + 56);
  v5 = *(v0 + 72);
  if ((*(v0 + 48) & 1) == 0)
  {
    v13 = *(v0 + 40);
    v6 = sub_24AE84510();
    v7 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v7 = 0xE000000000000000;
  if (v5)
  {
LABEL_3:
    sub_24AE83F80();
    v5 = 0;
  }

LABEL_5:
  v9 = sub_24AE84510();
  MEMORY[0x24C232D80](v9);

  sub_24AE83F80();
  MEMORY[0x24C232D80](v6, v7);

  v10 = sub_24AE84510();
  MEMORY[0x24C232D80](v10);

  MEMORY[0x24C232D80](v5, 0xE000000000000000);

  return 0;
}

uint64_t _s19FindMyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v2 != v3)
  {
    goto LABEL_23;
  }

  v6 = a1[7];
  v5 = a1[8];
  v7 = a1[9];
  v9 = a2[7];
  v8 = a2[8];
  v10 = a2[9];
  if (a1[3] == a2[3] && a1[4] == a2[4] || (v11 = a1[3], (sub_24AE84540() & 1) != 0))
  {
    v4 = v6 < v9;
    if (v6 == v9)
    {
      if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      if (v10)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      if (v12 == v14 && v13 == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_24AE84540();
      }

      return v17 & 1;
    }

LABEL_23:
    v17 = v4;
    return v17 & 1;
  }

  return sub_24AE84540();
}

unint64_t sub_24AE4DC84()
{
  result = qword_27EFBE5D0;
  if (!qword_27EFBE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5D0);
  }

  return result;
}

unint64_t sub_24AE4DCE8()
{
  result = qword_27EFBE5D8;
  if (!qword_27EFBE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE5D8);
  }

  return result;
}

unint64_t sub_24AE4DD58()
{
  result = qword_280D79B28[0];
  if (!qword_280D79B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D79B28);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24AE4DDC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24AE4DE10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AE4DE74()
{
  result = qword_280D79B20;
  if (!qword_280D79B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D79B20);
  }

  return result;
}

uint64_t dispatch thunk of APNSConnector.set(enabledTopics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AE4A7E0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of APNSConnector.set(opportunisticTopics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AE4A7E0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of APNSConnector.setDidReceive(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AE4A7E0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSConnector.setDidReceivePublicToken(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AE4A7E0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSConnector.setDidReceiveTokenForTopic(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AE4A7E0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSConnector.setDidReceiveTokenForInfo(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AE4A7E0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSConnector.requestToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AE4A7E0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of APNSConnector.requestToken(for:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24AE4A504;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24AE4E888()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79CB0);
  v1 = __swift_project_value_buffer(v0, qword_280D79CB0);
  if (qword_280D79C28 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D79C38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *DarwinNotificationHandler.__allocating_init(eventStreamHandler:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v2[15] = sub_24AE54E80(MEMORY[0x277D84F90]);
  v2[16] = sub_24AE55078(v3);
  v2[17] = sub_24AE54E80(v3);
  v2[18] = sub_24AE55078(v3);
  v2[19] = sub_24AE563F4(v3, &qword_27EFBE720, &qword_24AE85F30);
  v2[14] = a1;
  return v2;
}

void *DarwinNotificationHandler.init(eventStreamHandler:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v1[15] = sub_24AE54E80(MEMORY[0x277D84F90]);
  v1[16] = sub_24AE55078(v3);
  v1[17] = sub_24AE54E80(v3);
  v1[18] = sub_24AE55078(v3);
  v1[19] = sub_24AE563F4(v3, &qword_27EFBE720, &qword_24AE85F30);
  v1[14] = a1;
  return v1;
}

void sub_24AE4EACC(uint64_t a1@<X8>)
{
  v2 = sub_24AE83FA0();
  sub_24AE4EB18(v2, a1);
}

uint64_t sub_24AE4EB18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE5E0, &qword_24AE85CF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v67 = v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE5E8, qword_24AE85CF8);
  v72 = *(v8 - 8);
  v9 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v71 = v66 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v11 = *(v75 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x28223BE20])();
  v69 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = v66 - v15;
  v16 = sub_24AE83FB0();
  v18 = v17;
  swift_beginAccess();
  v19 = v3[15];
  v20 = *(v19 + 16);
  v70 = a1;
  v73 = v11;
  if (v20)
  {

    v21 = sub_24AE475AC(v16, v18);
    if (v22)
    {
      v23 = v21;

      (*(v11 + 16))(v74, *(v19 + 56) + *(v11 + 72) * v23, v75);
LABEL_8:

      v29 = v71;
      v30 = v72;
      goto LABEL_15;
    }
  }

  swift_beginAccess();
  v24 = v3[17];
  if (*(v24 + 16))
  {
    v25 = v3[17];

    v26 = sub_24AE475AC(v16, v18);
    if (v27)
    {
      v28 = v26;

      (*(v11 + 16))(v74, *(v24 + 56) + *(v11 + 72) * v28, v75);
      goto LABEL_8;
    }
  }

  if (qword_280D79CA0 != -1)
  {
    swift_once();
  }

  v31 = sub_24AE83ED0();
  __swift_project_value_buffer(v31, qword_280D79CB0);

  v32 = sub_24AE83EB0();
  v33 = sub_24AE84250();

  v34 = os_log_type_enabled(v32, v33);
  v35 = MEMORY[0x277D85778];
  v66[1] = a2;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v77 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_24AE53C28(v16, v18, &v77);
    _os_log_impl(&dword_24AE43000, v32, v33, "Creating base AsyncStream for DarwinNotification name: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x24C233A80](v37, -1, -1);
    MEMORY[0x24C233A80](v36, -1, -1);
  }

  v38 = sub_24AE83D90();
  MEMORY[0x28223BE20](v38);
  v66[-4] = v3;
  v66[-3] = v16;
  v66[-2] = v18;
  v39 = *v35;
  v29 = v71;
  v30 = v72;
  v40 = *(v72 + 104);
  v66[0] = v8;
  v40(v71, v39, v8);
  v41 = v69;
  sub_24AE84170();
  v42 = v73;
  v43 = v74;
  v44 = *(v73 + 16);
  v68 = v18;
  v45 = v75;
  v44(v74, v41, v75);
  v46 = v67;
  v44(v67, v43, v45);
  (*(v42 + 56))(v46, 0, 1, v45);
  swift_beginAccess();

  v47 = v46;
  v8 = v66[0];
  sub_24AE4F458(v47, v16, v68);
  swift_endAccess();

  v48 = CFNotificationCenterGetDarwinNotifyCenter();
  v49 = v70;
  CFNotificationCenterAddObserver(v48, v3, sub_24AE528B4, v70, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v50 = v45;
  v18 = v68;
  (*(v42 + 8))(v69, v50);
LABEL_15:
  v51 = sub_24AE83D90();
  MEMORY[0x28223BE20](v51);
  v66[-4] = v3;
  v66[-3] = v16;
  v66[-2] = v18;
  (*(v30 + 104))(v29, *MEMORY[0x277D85778], v8);
  sub_24AE84170();
  swift_beginAccess();
  v52 = v3[19];
  if (*(v52 + 16))
  {
    v53 = v3[19];

    v54 = sub_24AE475AC(v16, v18);
    v55 = 0x280D79000uLL;
    if (v56)
    {
      v57 = *(*(v52 + 56) + 8 * v54);

      v58 = *(v57 + 16);
    }

    else
    {

      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
    v55 = 0x280D79000;
  }

  if (*(v55 + 3232) != -1)
  {
    swift_once();
  }

  v59 = sub_24AE83ED0();
  __swift_project_value_buffer(v59, qword_280D79CB0);

  v60 = sub_24AE83EB0();
  v61 = sub_24AE84250();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v76 = v63;
    *v62 = 136315394;
    v64 = sub_24AE53C28(v16, v18, &v76);

    *(v62 + 4) = v64;
    *(v62 + 12) = 2048;
    *(v62 + 14) = v58;
    _os_log_impl(&dword_24AE43000, v60, v61, "Creating sub AsyncStream for DarwinNotification name: [%s], count: %ld", v62, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x24C233A80](v63, -1, -1);
    MEMORY[0x24C233A80](v62, -1, -1);
  }

  else
  {
  }

  return (*(v73 + 8))(v74, v75);
}

uint64_t sub_24AE4F308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE648, &unk_24AE85E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_24AE4F65C(v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE4F458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE5E0, &qword_24AE85CF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE5E0, &qword_24AE85CF0);
    sub_24AE54430(a2, a3, &qword_27EFBE400, &qword_24AE85220, sub_24AE807A0, v9);

    return sub_24AE567BC(v9, &qword_27EFBE5E0, &qword_24AE85CF0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_24AE7FD58(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_24AE4F65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE648, &unk_24AE85E30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE648, &unk_24AE85E30);
    sub_24AE54430(a2, a3, &qword_27EFBE630, &unk_24AE87250, sub_24AE807C4, v9);

    return sub_24AE567BC(v9, &qword_27EFBE648, &unk_24AE85E30);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_24AE7FD7C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_24AE4F860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE750, &qword_24AE85F60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6E0, &unk_24AE85ED0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE750, &qword_24AE85F60);
    sub_24AE54430(a2, a3, &qword_27EFBE6E0, &unk_24AE85ED0, sub_24AE80820, v10);

    return sub_24AE567BC(v10, &qword_27EFBE750, &qword_24AE85F60);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24AE7FF7C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24AE4FA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE638, &qword_24AE85E18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE638, &qword_24AE85E18);
    sub_24AE54430(a2, a3, &qword_27EFBE640, &qword_24AE85E20, sub_24AE80844, v10);

    return sub_24AE567BC(v10, &qword_27EFBE638, &qword_24AE85E18);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24AE7FFA0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24AE4FC68(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6C8, &qword_24AE85EB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE6C8, &qword_24AE85EB8);
    sub_24AE545C8(a2, v8);
    v14 = sub_24AE83EA0();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_24AE567BC(v8, &qword_27EFBE6C8, &qword_24AE85EB8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24AE80178(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_24AE83EA0();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_24AE4FE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE680, &unk_24AE85E70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE688, &unk_24AE87270);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE680, &unk_24AE85E70);
    sub_24AE54430(a2, a3, &qword_27EFBE688, &unk_24AE87270, sub_24AE80BD8, v10);

    return sub_24AE567BC(v10, &qword_27EFBE680, &unk_24AE85E70);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24AE80388(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24AE500A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE690, &unk_24AE85E80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE698, &qword_24AE87280);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE690, &unk_24AE85E80);
    sub_24AE54430(a2, a3, &qword_27EFBE698, &qword_24AE87280, sub_24AE80BFC, v10);

    return sub_24AE567BC(v10, &qword_27EFBE690, &unk_24AE85E80);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24AE803AC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24AE502A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_24AE803E4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_24AE475AC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_24AE80C34();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_24AE54AD4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_24AE5039C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE650, &unk_24AE85E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE658, &qword_24AE86D90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_24AE567BC(a1, &qword_27EFBE650, &unk_24AE85E40);
    sub_24AE54430(a2, a3, &qword_27EFBE658, &qword_24AE86D90, sub_24AE8140C, v10);

    return sub_24AE567BC(v10, &qword_27EFBE650, &unk_24AE85E40);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_24AE803F8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_24AE505A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v31[-1] - v11;
  swift_beginAccess();
  if (*(*(a2 + 152) + 16) && (v13 = *(a2 + 152), , sub_24AE475AC(a3, a4), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = sub_24AE4E950();
    v18 = sub_24AE62C2C(v31, a3, a4);
    if (*v17)
    {
      v19 = v17;
      (*(v9 + 16))(v12, a1, v8);
      v20 = *v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_24AE61560(0, v20[2] + 1, 1, v20);
        *v19 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_24AE61560(v22 > 1, v23 + 1, 1, v20);
        *v19 = v20;
      }

      v20[2] = v23 + 1;
      (*(v9 + 32))(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v12, v8);
      (v18)(v31, 0);
      return (v16)(v32, 0);
    }

    else
    {
      (v18)(v31, 0);
      return (v16)(v32, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE718, &qword_24AE85F08);
    v25 = *(v9 + 72);
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24AE85CE0;
    (*(v9 + 16))(v27 + v26, a1, v8);
    swift_beginAccess();

    v28 = *(a2 + 152);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *(a2 + 152);
    *(a2 + 152) = 0x8000000000000000;
    sub_24AE7FF68(v27, a3, a4, v29);

    *(a2 + 152) = v31[0];
    return swift_endAccess();
  }
}

uint64_t sub_24AE508D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE50978, v4, 0);
}

uint64_t sub_24AE50978()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_24AE83FA0();
  sub_24AE4EB18(v7, v1);

  v8 = sub_24AE83D80();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = sub_24AE83D70();

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_24AE50A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE50AE0, v3, 0);
}

uint64_t sub_24AE50AE0()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_24AE4EB18(*(v0 + 16), *(v0 + 48));
  v4 = sub_24AE83D80();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_24AE83D70();

  v8 = *(v0 + 8);

  return v8(v7);
}

void *DarwinNotificationHandler.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  v6 = v0[19];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DarwinNotificationHandler.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  v6 = v0[19];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE50C50(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE5E8, qword_24AE85CF8);
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE50D90, v1, 0);
}

uint64_t sub_24AE50D90()
{
  v58 = v0;
  v1 = v0[11];
  v48 = *(v1 + 16);
  if (!v48)
  {
LABEL_18:
    v42 = v0[12];
    result = swift_beginAccess();
    if (*(*(v42 + 120) + 16) == v48)
    {
      v43 = v0[12];
      result = swift_beginAccess();
      if (*(*(v43 + 128) + 16) == v48)
      {
        v45 = v0[18];
        v44 = v0[19];
        v46 = v0[15];

        v47 = v0[1];

        return v47();
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v2 = v0[17];
  v3 = v0[14];
  v54 = v0[12];
  sub_24AE83D90();
  v53 = *MEMORY[0x277D85778];
  v51 = (v2 + 16);
  v52 = (v3 + 104);
  v49 = (v2 + 8);
  v50 = v2;
  v4 = (v1 + 40);
  v5 = v48;
  while (1)
  {
    v55 = v4;
    v56 = v5;
    v10 = *(v4 - 1);
    v11 = *v4;
    v12 = qword_280D79CA0;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_24AE83ED0();
    __swift_project_value_buffer(v13, qword_280D79CB0);

    v14 = sub_24AE83EB0();
    v15 = sub_24AE84250();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v57 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_24AE53C28(v10, v11, &v57);
      _os_log_impl(&dword_24AE43000, v14, v15, "Creating base AsyncStream for registered Darwin notification name: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C233A80](v17, -1, -1);
      MEMORY[0x24C233A80](v16, -1, -1);
    }

    v19 = v0[18];
    v18 = v0[19];
    v21 = v0[15];
    v20 = v0[16];
    v23 = v0[12];
    v22 = v0[13];
    v24 = swift_task_alloc();
    v24[2] = v23;
    v24[3] = v10;
    v24[4] = v11;
    (*v52)(v21, v53, v22);
    sub_24AE84170();

    swift_beginAccess();
    (*v51)(v19, v18, v20);
    v25 = *(v54 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v54 + 120);
    v27 = v57;
    *(v54 + 120) = 0x8000000000000000;
    v29 = sub_24AE475AC(v10, v11);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    result = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v33 = v28;
    if (*(v27 + 24) < result)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AE807A0();
    }

LABEL_15:
    v36 = v0[18];
    v37 = v0[16];
    if (v33)
    {

      v6 = v57;
      (*(v50 + 40))(v57[7] + *(v50 + 72) * v29, v36, v37);
    }

    else
    {
      v6 = v57;
      v57[(v29 >> 6) + 8] |= 1 << v29;
      v38 = (v6[6] + 16 * v29);
      *v38 = v10;
      v38[1] = v11;
      result = (*(v50 + 32))(v6[7] + *(v50 + 72) * v29, v36, v37);
      v39 = v6[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_27;
      }

      v6[2] = v41;
    }

    v7 = v0[19];
    v8 = v0[16];
    v9 = *(v54 + 120);
    *(v54 + 120) = v6;

    swift_endAccess();
    (*v49)(v7, v8);
    v4 = v55 + 2;
    v5 = v56 - 1;
    if (v56 == 1)
    {
      goto LABEL_18;
    }
  }

  sub_24AE7EF04(result, isUniquelyReferenced_nonNull_native);
  v34 = sub_24AE475AC(v10, v11);
  if ((v33 & 1) == (v35 & 1))
  {
    v29 = v34;
    goto LABEL_15;
  }

  return sub_24AE84570();
}

uint64_t sub_24AE51288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE648, &unk_24AE85E30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_24AE4F65C(v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE513D8()
{
  v1[13] = v0;
  v2 = sub_24AE83D90();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE5F0, &unk_24AE86090);
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE760, &unk_24AE85DD0) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  v1[22] = v9;
  v10 = *(v9 - 8);
  v1[23] = v10;
  v11 = *(v10 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE515AC, v0, 0);
}

uint64_t sub_24AE515AC()
{
  if (MEMORY[0x24C2329E0]())
  {
    v1 = v0[24];
    v2 = v0[20];
    v3 = v0[21];
    v5 = v0[16];
    v4 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *(v0[13] + 112);
    v0[25] = v8;

    return MEMORY[0x2822009F8](sub_24AE51688, v8, 0);
  }
}

uint64_t sub_24AE51688()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {

    v3 = sub_24AE475AC(0xD00000000000001ALL, 0x800000024AE880C0);
    if (v4)
    {
      (*(v0[23] + 16))(v0[21], *(v2 + 56) + *(v0[23] + 72) * v3, v0[22]);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[13];
  (*(v0[23] + 56))(v0[21], v5, 1, v0[22]);

  return MEMORY[0x2822009F8](sub_24AE5179C, v6, 0);
}

uint64_t sub_24AE5179C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AE567BC(v3, &qword_27EFBE760, &unk_24AE85DD0);
    return sub_24AE84440();
  }

  else
  {
    v5 = v0[20];
    (*(v2 + 32))(v0[24], v3, v1);
    sub_24AE84150();
    v7 = sub_24AE564F0(qword_280D7A398, v6, type metadata accessor for DarwinNotificationHandler);
    v0[26] = v7;
    v8 = v0[13];
    v9 = *(MEMORY[0x277D85798] + 4);
    v10 = swift_task_alloc();
    v0[27] = v10;
    *v10 = v0;
    v10[1] = sub_24AE51970;
    v11 = v0[20];
    v12 = v0[18];

    return MEMORY[0x2822003E8](v0 + 9, v8, v7, v12);
  }
}

uint64_t sub_24AE51970()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE46FC8, v2, 0);
}

uint64_t sub_24AE51A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_24AE83D90();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE628, &unk_24AE85E00);
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v16 = swift_task_alloc();
  v6[21] = v16;
  *v16 = v6;
  v16[1] = sub_24AE51C44;

  return daemon.getter();
}

uint64_t sub_24AE51C44(uint64_t a1)
{
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_24AE51D48, a1, 0);
}

uint64_t sub_24AE51D48()
{
  v1 = *(*(v0 + 176) + 128);
  *(v0 + 184) = v1;
  return MEMORY[0x2822009F8](sub_24AE51D6C, v1, 0);
}

uint64_t sub_24AE51D6C()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[24] = v2;
  v3 = *(v2 + 16);
  v0[25] = v3;
  if (!v3)
  {
    v22 = v0[22];
LABEL_12:

    return MEMORY[0x2822009F8](sub_24AE52028, 0, 0);
  }

  v4 = v0[23];

  swift_beginAccess();
  v0[26] = 0;
  v5 = v0[24];
  if (!*(v5 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v20 = v0[24];
    v21 = v0[22];

    goto LABEL_12;
  }

  v6 = 0;
  while (1)
  {
    v7 = v0[23];
    v8 = v5 + 16 * v6;
    v0[27] = *(v8 + 32);
    v9 = *(v8 + 40);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);
    swift_unknownObjectRetain();
    v12 = v11(ObjectType, v9);
    v14 = v13;
    v0[28] = v13;
    if (*(*(v7 + 128) + 16))
    {
      break;
    }

LABEL_7:

    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[25];
    swift_unknownObjectRelease();
    if (v18 + 1 == v19)
    {
      goto LABEL_10;
    }

    v6 = v0[26] + 1;
    v0[26] = v6;
    v5 = v0[24];
    if (v6 >= *(v5 + 16))
    {
      goto LABEL_9;
    }
  }

  v15 = v12;

  sub_24AE475AC(v15, v14);
  if ((v16 & 1) == 0)
  {

    goto LABEL_7;
  }

  v23 = v0[23];

  sub_24AE564F0(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection);
  v24 = swift_task_alloc();
  v0[29] = v24;
  v24[2] = v23;
  v24[3] = v15;
  v24[4] = v14;
  v25 = *(MEMORY[0x277D85A40] + 4);
  v26 = swift_task_alloc();
  v0[30] = v26;
  *v26 = v0;
  v26[1] = sub_24AE52210;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AE52028()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_24AE83CB0();
  sub_24AE83C90();
  v0[8] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9B0, &qword_24AE85E10);
  swift_task_localValuePush();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[19];
    v22 = *(v4 + 16);
    v5 = v0[10] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = (v0[13] + 16);
    v21 = *(v4 + 72);
    v18 = (v4 + 8);
    v19 = (v0[16] + 8);
    do
    {
      v6 = v0[20];
      v8 = v0[17];
      v7 = v0[18];
      v10 = v0[14];
      v9 = v0[15];
      v12 = v0[11];
      v11 = v0[12];
      v22(v6, v5, v7);
      (*v20)(v10, v12, v11);
      sub_24AE84140();
      (*v19)(v8, v9);
      (*v18)(v6, v7);
      v5 += v21;
      --v3;
    }

    while (v3);
  }

  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[14];
  swift_task_localValuePop();

  v16 = v0[1];

  return v16();
}

uint64_t sub_24AE52210()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[29];
  v6 = v2[28];
  if (v0)
  {
    v9 = v2 + 23;
    v8 = v2[23];
    v7 = v9[1];

    v10 = sub_24AE525EC;
    v11 = v8;
  }

  else
  {
    v12 = v2[23];

    v10 = sub_24AE52390;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_24AE52390()
{
  while (1)
  {
    v2 = v0[26];
    v1 = v0[27];
    v3 = v0[25];
    swift_unknownObjectRelease();
    if (v2 + 1 == v3)
    {
      break;
    }

    v4 = v0[26] + 1;
    v0[26] = v4;
    v5 = v0[24];
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    v6 = v0[23];
    v7 = v5 + 16 * v4;
    v0[27] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    v13 = v12;
    v0[28] = v12;
    if (*(*(v6 + 128) + 16))
    {
      v14 = v11;

      sub_24AE475AC(v14, v13);
      if (v15)
      {
        v16 = v0[23];

        sub_24AE564F0(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection);
        v17 = swift_task_alloc();
        v0[29] = v17;
        v17[2] = v16;
        v17[3] = v14;
        v17[4] = v13;
        v18 = *(MEMORY[0x277D85A40] + 4);
        v19 = swift_task_alloc();
        v0[30] = v19;
        *v19 = v0;
        v19[1] = sub_24AE52210;

        return MEMORY[0x2822008A0]();
      }
    }
  }

  v20 = v0[24];
  v21 = v0[22];

  return MEMORY[0x2822009F8](sub_24AE52028, 0, 0);
}

uint64_t sub_24AE525EC()
{
  v1 = *(v0 + 216);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24AE52654, 0, 0);
}

uint64_t sub_24AE52654()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

uint64_t sub_24AE526E4()
{
  v0 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  sub_24AE83FD0();
  v1 = xpc_copy_event();

  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24AE557E4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_24AE557EC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AE6DFA8;
  aBlock[3] = &block_descriptor;
  v4 = _Block_copy(aBlock);

  xpc_dictionary_apply(v1, v4);
  swift_unknownObjectRelease();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v0 = v8;

    v1 = sub_24AE557E4;
LABEL_4:

    sub_24AE44D88(v1);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE528B4(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v8 = result;

    if (a3)
    {
      v9 = sub_24AE83FB0();
      v11 = v10;
      sub_24AE83CB0();
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = v11;
      v12[4] = a2;
      v13 = a3;
      v14 = v8;
      v15 = a5;

      MEMORY[0x24C232A30]("UnregisteredDarwinNotification", 30, 2, &unk_24AE85F18, v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AE529C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24AE83D90();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE52A8C, 0, 0);
}

uint64_t sub_24AE52A8C()
{
  sub_24AE83CB0();
  v1 = sub_24AE83C80();
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[7];
    v4 = v0[3];
    v3 = v0[4];
    v5 = v0[2];

    sub_24AE83D40();

    sub_24AE83D50();

    return MEMORY[0x2822009F8](sub_24AE52B9C, v3, 0);
  }

  else
  {
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AE52B9C()
{
  v1 = v0[4];
  sub_24AE52CC0(v0[7], v0[8], &unk_285E372A8, &unk_24AE85F28, "Received unexpected unregistered notification: [%s]", 0x8002000010002);

  return MEMORY[0x2822009F8](sub_24AE52C34, 0, 0);
}

uint64_t sub_24AE52C34()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

void sub_24AE52CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, int8x8_t a6)
{
  v46 = a4;
  v47 = a5;
  v44[1] = a3;
  v45 = a2;
  v8 = v6;
  v48 = sub_24AE83D90();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v48);
  v13 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v44 - v18;
  v20 = sub_24AE83D60();
  v22 = v21;
  swift_beginAccess();
  v23 = *(v6 + 152);
  if (*(v23 + 16) && (v24 = *(v8 + 152), , v25 = sub_24AE475AC(v20, v22), v27 = v26, , (v27 & 1) != 0))
  {
    v28 = *(*(v23 + 56) + 8 * v25);

    v29 = sub_24AE84120();
    (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
    v30 = v48;
    (*(v10 + 16))(v15, a1, v48);
    v31 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v45;
    *(v32 + 5) = v28;
    (*(v10 + 32))(&v32[v31], v15, v30);

    sub_24AE56898(0, 0, v19, v46, v32);
  }

  else
  {

    v33 = v48;
    if (qword_280D79CA0 != -1)
    {
      swift_once();
    }

    v34 = sub_24AE83ED0();
    __swift_project_value_buffer(v34, qword_280D79CB0);
    (*(v10 + 16))(v13, a1, v33);
    v35 = sub_24AE83EB0();
    v36 = sub_24AE84240();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = vuzp1_s8(a6, v39).u32[0];
      sub_24AE564F0(&qword_280D7A040, 255, MEMORY[0x277D089A0]);
      v40 = sub_24AE84510();
      v42 = v41;
      (*(v10 + 8))(v13, v33);
      v43 = sub_24AE53C28(v40, v42, &v49);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_24AE43000, v35, v36, v47, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C233A80](v38, -1, -1);
      MEMORY[0x24C233A80](v37, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v33);
    }
  }
}

uint64_t sub_24AE53104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_24AE83D90();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE628, &unk_24AE85E00);
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v16 = swift_task_alloc();
  v6[21] = v16;
  *v16 = v6;
  v16[1] = sub_24AE532C8;

  return daemon.getter();
}

uint64_t sub_24AE532C8(uint64_t a1)
{
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_24AE533CC, a1, 0);
}

uint64_t sub_24AE533CC()
{
  v1 = *(*(v0 + 176) + 128);
  *(v0 + 184) = v1;
  return MEMORY[0x2822009F8](sub_24AE533F0, v1, 0);
}

uint64_t sub_24AE533F0()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[24] = v2;
  v3 = *(v2 + 16);
  v0[25] = v3;
  if (!v3)
  {
    v22 = v0[22];
LABEL_12:

    return MEMORY[0x2822009F8](sub_24AE56884, 0, 0);
  }

  v4 = v0[23];

  swift_beginAccess();
  v0[26] = 0;
  v5 = v0[24];
  if (!*(v5 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v20 = v0[24];
    v21 = v0[22];

    goto LABEL_12;
  }

  v6 = 0;
  while (1)
  {
    v7 = v0[23];
    v8 = v5 + 16 * v6;
    v0[27] = *(v8 + 32);
    v9 = *(v8 + 40);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);
    swift_unknownObjectRetain();
    v12 = v11(ObjectType, v9);
    v14 = v13;
    v0[28] = v13;
    if (*(*(v7 + 128) + 16))
    {
      break;
    }

LABEL_7:

    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[25];
    swift_unknownObjectRelease();
    if (v18 + 1 == v19)
    {
      goto LABEL_10;
    }

    v6 = v0[26] + 1;
    v0[26] = v6;
    v5 = v0[24];
    if (v6 >= *(v5 + 16))
    {
      goto LABEL_9;
    }
  }

  v15 = v12;

  sub_24AE475AC(v15, v14);
  if ((v16 & 1) == 0)
  {

    goto LABEL_7;
  }

  v23 = v0[23];

  sub_24AE564F0(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection);
  v24 = swift_task_alloc();
  v0[29] = v24;
  v24[2] = v23;
  v24[3] = v15;
  v24[4] = v14;
  v25 = *(MEMORY[0x277D85A40] + 4);
  v26 = swift_task_alloc();
  v0[30] = v26;
  *v26 = v0;
  v26[1] = sub_24AE536AC;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AE536AC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[29];
  v6 = v2[28];
  if (v0)
  {
    v9 = v2 + 23;
    v8 = v2[23];
    v7 = v9[1];

    v10 = sub_24AE53A88;
    v11 = v8;
  }

  else
  {
    v12 = v2[23];

    v10 = sub_24AE5382C;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_24AE5382C()
{
  while (1)
  {
    v2 = v0[26];
    v1 = v0[27];
    v3 = v0[25];
    swift_unknownObjectRelease();
    if (v2 + 1 == v3)
    {
      break;
    }

    v4 = v0[26] + 1;
    v0[26] = v4;
    v5 = v0[24];
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    v6 = v0[23];
    v7 = v5 + 16 * v4;
    v0[27] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    v13 = v12;
    v0[28] = v12;
    if (*(*(v6 + 128) + 16))
    {
      v14 = v11;

      sub_24AE475AC(v14, v13);
      if (v15)
      {
        v16 = v0[23];

        sub_24AE564F0(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection);
        v17 = swift_task_alloc();
        v0[29] = v17;
        v17[2] = v16;
        v17[3] = v14;
        v17[4] = v13;
        v18 = *(MEMORY[0x277D85A40] + 4);
        v19 = swift_task_alloc();
        v0[30] = v19;
        *v19 = v0;
        v19[1] = sub_24AE536AC;

        return MEMORY[0x2822008A0]();
      }
    }
  }

  v20 = v0[24];
  v21 = v0[22];

  return MEMORY[0x2822009F8](sub_24AE56884, 0, 0);
}

uint64_t sub_24AE53A88()
{
  v1 = *(v0 + 216);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24AE56888, 0, 0);
}

uint64_t sub_24AE53AF0()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79C38);
  __swift_project_value_buffer(v0, qword_280D79C38);
  return sub_24AE83EC0();
}

uint64_t sub_24AE53B70(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = sub_24AE84000();
  v6 = v5;
  v7 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24AE61584(0, *(v7 + 2) + 1, 1, v7);
    *a3 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24AE61584((v9 > 1), v10 + 1, 1, v7);
    *a3 = v7;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = v4;
  *(v11 + 5) = v6;
  return 1;
}

uint64_t sub_24AE53C28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AE53CF4(v11, 0, 0, 1, a1, a2);
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
    sub_24AE476DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AE53CF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AE53E00(a5, a6);
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
    result = sub_24AE843C0();
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

uint64_t sub_24AE53E00(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AE53E4C(a1, a2);
  sub_24AE53F7C(&unk_285E36CC0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AE53E4C(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AE54068(v5, 0);
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

  result = sub_24AE843C0();
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
        v10 = sub_24AE84010();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AE54068(v10, 0);
        result = sub_24AE84380();
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

uint64_t sub_24AE53F7C(uint64_t result)
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

  result = sub_24AE540DC(result, v12, 1, v3);
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

void *sub_24AE54068(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE710, &qword_24AE85F00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AE540DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE710, &qword_24AE85F00);
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

unint64_t sub_24AE541D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24AE83EA0();
  sub_24AE564F0(&qword_280D7A038, 255, MEMORY[0x277CC95F0]);
  v5 = sub_24AE83F70();

  return sub_24AE5426C(a1, v5);
}

unint64_t sub_24AE5426C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24AE83EA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24AE564F0(&qword_280D7A940, 255, MEMORY[0x277CC95F0]);
      v16 = sub_24AE83F90();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_24AE54430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_24AE475AC(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_24AE54C84(v15, v18, a3, a4);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_24AE545C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_24AE541D0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AE8087C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_24AE83EA0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_24AE54780(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_24AE54780(int64_t a1, uint64_t a2)
{
  v4 = sub_24AE83EA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_24AE84310();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_24AE564F0(&qword_280D7A038, 255, MEMORY[0x277CC95F0]);
      v24 = sub_24AE83F70();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AE54AD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AE84310() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24AE845F0();

      sub_24AE83FE0();
      v13 = sub_24AE84610();

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

unint64_t sub_24AE54C84(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_24AE84310() + 1) & ~v7;
    while (1)
    {
      v13 = *(a2 + 40);
      v14 = (*(a2 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      sub_24AE845F0();

      sub_24AE83FE0();
      v17 = sub_24AE84610();

      v18 = v17 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v18 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v5);
      v21 = (v19 + 16 * v8);
      if (v5 != v8 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v24 = v23 * v5;
      result = v22 + v23 * v5;
      v25 = v23 * v8;
      v26 = v22 + v23 * v8 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24AE54E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE738, &qword_24AE85F48);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE740, &unk_24AE85F50);
    v8 = sub_24AE84470();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v10, v6, &qword_27EFBE738, &qword_24AE85F48);
      v13 = *v6;
      v12 = v6[1];
      result = sub_24AE475AC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE400, &qword_24AE85220);
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

unint64_t sub_24AE55078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE728, &qword_24AE85F38);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE730, &qword_24AE85F40);
    v8 = sub_24AE84470();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v10, v6, &qword_27EFBE728, &qword_24AE85F38);
      v13 = *v6;
      v12 = v6[1];
      result = sub_24AE475AC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE630, &unk_24AE87250);
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

uint64_t dispatch thunk of DarwinNotificationHandler.asyncStream(name:)()
{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

uint64_t dispatch thunk of DarwinNotificationHandler.listen(name:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 280);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_24AE5548C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_24AE5548C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DarwinNotificationHandler.listen(name:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 288);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AE56890;

  return v12(a1, a2, a3);
}

uint64_t sub_24AE556C8(uint64_t a1)
{
  v4 = *(sub_24AE83D90() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AE4A504;

  return sub_24AE51A80(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_24AE557FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE670, &qword_24AE85E60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE678, &qword_24AE85E68);
    v8 = sub_24AE84470();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v10, v6, &qword_27EFBE670, &qword_24AE85E60);
      v13 = *v6;
      v12 = v6[1];
      result = sub_24AE475AC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
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

unint64_t sub_24AE559F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE660, &qword_24AE85E50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE668, &qword_24AE85E58);
    v8 = sub_24AE84470();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v10, v6, &qword_27EFBE660, &qword_24AE85E50);
      v13 = *v6;
      v12 = v6[1];
      result = sub_24AE475AC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE658, &qword_24AE86D90);
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

unint64_t sub_24AE55BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE700, &qword_24AE85EF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE708, &qword_24AE85EF8);
    v8 = sub_24AE84470();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v10, v6, &qword_27EFBE700, &qword_24AE85EF0);
      v13 = *v6;
      v12 = v6[1];
      result = sub_24AE475AC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6E0, &unk_24AE85ED0);
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

unint64_t sub_24AE55DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6F0, &qword_24AE85EE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6F8, &qword_24AE85EE8);
    v8 = sub_24AE84470();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v10, v6, &qword_27EFBE6F0, &qword_24AE85EE0);
      v13 = *v6;
      v12 = v6[1];
      result = sub_24AE475AC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
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

unint64_t sub_24AE55FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6B8, &qword_24AE85EA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6C0, &qword_24AE85EB0);
    v8 = sub_24AE84470();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v10, v6, &qword_27EFBE6B8, &qword_24AE85EA8);
      v13 = *v6;
      v12 = v6[1];
      result = sub_24AE475AC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE688, &unk_24AE87270);
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

unint64_t sub_24AE561E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6A8, &qword_24AE85E98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6B0, &qword_24AE85EA0);
    v8 = sub_24AE84470();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AE5681C(v10, v6, &qword_27EFBE6A8, &qword_24AE85E98);
      v13 = *v6;
      v12 = v6[1];
      result = sub_24AE475AC(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE698, &qword_24AE87280);
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

unint64_t sub_24AE563F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24AE84470();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_24AE475AC(v7, v8);
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

uint64_t sub_24AE564F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AE5653C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AE4A504;

  return sub_24AE529C8(v2, v3, v4);
}

uint64_t objectdestroyTm()
{
  v1 = sub_24AE83D90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AE566B8(uint64_t a1)
{
  v4 = *(sub_24AE83D90() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AE4A7E0;

  return sub_24AE53104(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_24AE567BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AE5681C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AE56898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24AE5A304(a3, v24 - v10);
  v12 = sub_24AE84120();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AE567BC(v11, &qword_27EFBE620, &qword_24AE860B0);
  }

  else
  {
    sub_24AE84110();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24AE840E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24AE83FD0() + 32;

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

      sub_24AE567BC(a3, &qword_27EFBE620, &qword_24AE860B0);

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

  sub_24AE567BC(a3, &qword_27EFBE620, &qword_24AE860B0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24AE56B34()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79C80);
  v1 = __swift_project_value_buffer(v0, qword_280D79C80);
  if (qword_280D79BF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D79C08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *DistributedNotificationHandler.__allocating_init(eventStreamHandler:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v2[15] = sub_24AE55BEC(MEMORY[0x277D84F90]);
  v2[16] = sub_24AE55DE4(v3);
  v2[17] = sub_24AE55BEC(v3);
  v2[18] = sub_24AE55DE4(v3);
  v2[19] = sub_24AE55FDC(v3);
  v2[14] = a1;
  return v2;
}

void *DistributedNotificationHandler.init(eventStreamHandler:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v1[15] = sub_24AE55BEC(MEMORY[0x277D84F90]);
  v1[16] = sub_24AE55DE4(v3);
  v1[17] = sub_24AE55BEC(v3);
  v1[18] = sub_24AE55DE4(v3);
  v1[19] = sub_24AE55FDC(v3);
  v1[14] = a1;
  return v1;
}

uint64_t sub_24AE56D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v65 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE750, &qword_24AE85F60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE758, &unk_24AE85F68);
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6E0, &unk_24AE85ED0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v63 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v61 - v19;
  swift_beginAccess();
  v21 = *(v3 + 120);
  v22 = *(v21 + 16);
  v66 = v20;
  if (v22)
  {

    v23 = sub_24AE475AC(v67, a2);
    if (v24)
    {
LABEL_6:
      v27 = v14;
      (*(v15 + 16))(v20, *(v21 + 56) + *(v15 + 72) * v23, v14);

      v29 = v64;
      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v21 = *(v4 + 136);
  if (*(v21 + 16))
  {
    v25 = *(v4 + 136);

    v23 = sub_24AE475AC(v67, a2);
    if (v26)
    {
      goto LABEL_6;
    }
  }

  v62 = v14;
  if (qword_280D79C70 != -1)
  {
    swift_once();
  }

  v30 = sub_24AE83ED0();
  __swift_project_value_buffer(v30, qword_280D79C80);

  v31 = sub_24AE83EB0();
  v32 = sub_24AE84250();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v69 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_24AE53C28(v67, a2, &v69);
    _os_log_impl(&dword_24AE43000, v31, v32, "Creating base AsyncStream for DistributedNotification name: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x24C233A80](v34, -1, -1);
    MEMORY[0x24C233A80](v33, -1, -1);
  }

  v29 = v64;
  v61[1] = v10;
  MEMORY[0x28223BE20](v35);
  v36 = v67;
  v61[-4] = v4;
  v61[-3] = v36;
  v61[-2] = a2;
  (*(v29 + 104))(v13, *v37);
  v64 = a2;
  v38 = v63;
  sub_24AE84170();
  v39 = *(v15 + 16);
  v40 = v15;
  v41 = v66;
  v42 = v4;
  v43 = v62;
  v39(v66, v38, v62);
  v44 = v41;
  v15 = v40;
  v39(v9, v44, v43);
  (*(v40 + 56))(v9, 0, 1, v43);
  swift_beginAccess();

  sub_24AE4F860(v9, v67, v64);
  swift_endAccess();
  v45 = v38;
  a2 = v64;
  v27 = v43;
  v46 = v43;
  v4 = v42;
  v28 = (*(v40 + 8))(v45, v46);
LABEL_13:
  MEMORY[0x28223BE20](v28);
  v47 = v67;
  v61[-4] = v4;
  v61[-3] = v47;
  v61[-2] = a2;
  (*(v29 + 104))(v13, *v48);
  sub_24AE84170();
  swift_beginAccess();
  v49 = *(v4 + 152);
  if (*(v49 + 16))
  {
    v50 = *(v4 + 152);

    v51 = sub_24AE475AC(v67, a2);
    if (v52)
    {
      v53 = *(*(v49 + 56) + 8 * v51);

      v54 = *(v53 + 16);

      goto LABEL_18;
    }
  }

  v54 = 0;
LABEL_18:
  if (qword_280D79C70 != -1)
  {
    swift_once();
  }

  v55 = sub_24AE83ED0();
  __swift_project_value_buffer(v55, qword_280D79C80);

  v56 = sub_24AE83EB0();
  v57 = sub_24AE84250();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_24AE53C28(v67, a2, &v68);
    *(v58 + 12) = 2048;
    *(v58 + 14) = v54;
    _os_log_impl(&dword_24AE43000, v56, v57, "Creating sub AsyncStream for DistributedNotification name: [%s], count: %ld", v58, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C233A80](v59, -1, -1);
    MEMORY[0x24C233A80](v58, -1, -1);
  }

  return (*(v15 + 8))(v66, v27);
}

uint64_t sub_24AE57438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE638, &qword_24AE85E18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_24AE4FA64(v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE57588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31[-1] - v11;
  swift_beginAccess();
  if (*(*(a2 + 152) + 16) && (v13 = *(a2 + 152), , sub_24AE475AC(a3, a4), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = sub_24AE4E950();
    v18 = sub_24AE62CB4(v31, a3, a4);
    if (*v17)
    {
      v19 = v17;
      (*(v9 + 16))(v12, a1, v8);
      v20 = *v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_24AE61690(0, v20[2] + 1, 1, v20);
        *v19 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_24AE61690(v22 > 1, v23 + 1, 1, v20);
        *v19 = v20;
      }

      v20[2] = v23 + 1;
      (*(v9 + 32))(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v12, v8);
      (v18)(v31, 0);
      return (v16)(v32, 0);
    }

    else
    {
      (v18)(v31, 0);
      return (v16)(v32, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE770, &qword_24AE860E8);
    v25 = *(v9 + 72);
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24AE85CE0;
    (*(v9 + 16))(v27 + v26, a1, v8);
    swift_beginAccess();

    v28 = *(a2 + 152);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *(a2 + 152);
    *(a2 + 152) = 0x8000000000000000;
    sub_24AE7FFC4(v27, a3, a4, v29);

    *(a2 + 152) = v31[0];
    return swift_endAccess();
  }
}

void *DistributedNotificationHandler.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  v6 = v0[19];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DistributedNotificationHandler.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  v6 = v0[19];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE57978(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE758, &unk_24AE85F68);
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6E0, &unk_24AE85ED0);
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE57AB8, v1, 0);
}

uint64_t sub_24AE57AB8()
{
  v54 = v0;
  v1 = v0[11];
  v46 = *(v1 + 16);
  if (!v46)
  {
LABEL_18:
    v40 = v0[12];
    result = swift_beginAccess();
    if (*(*(v40 + 120) + 16) == v46)
    {
      v41 = v0[12];
      result = swift_beginAccess();
      if (*(*(v41 + 128) + 16) == v46)
      {
        v43 = v0[18];
        v42 = v0[19];
        v44 = v0[15];

        v45 = v0[1];

        return v45();
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v50 = v0[12];
  v49 = *MEMORY[0x277D85778];
  v48 = (v0[14] + 104);
  v47 = v0[17];
  v2 = (v1 + 40);
  v3 = *(v1 + 16);
  while (1)
  {
    v52 = v3;
    v8 = *(v2 - 1);
    v9 = *v2;
    v51 = v2;
    v10 = qword_280D79C70;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_24AE83ED0();
    __swift_project_value_buffer(v11, qword_280D79C80);

    v12 = sub_24AE83EB0();
    v13 = sub_24AE84250();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v53 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_24AE53C28(v8, v9, &v53);
      _os_log_impl(&dword_24AE43000, v12, v13, "Creating base AsyncStream for registered Distributed notification name: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C233A80](v15, -1, -1);
      MEMORY[0x24C233A80](v14, -1, -1);
    }

    v17 = v0[18];
    v16 = v0[19];
    v19 = v0[15];
    v18 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = swift_task_alloc();
    v22[2] = v21;
    v22[3] = v8;
    v22[4] = v9;
    (*v48)(v19, v49, v20);
    sub_24AE84170();

    swift_beginAccess();
    (*(v47 + 16))(v17, v16, v18);
    v23 = *(v50 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v50 + 120);
    v25 = v53;
    *(v50 + 120) = 0x8000000000000000;
    v27 = sub_24AE475AC(v8, v9);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    result = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v31 = v26;
    if (*(v25 + 24) < result)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AE80820();
    }

LABEL_15:
    v34 = v0[18];
    v35 = v0[16];
    if (v31)
    {

      v4 = v53;
      (*(v47 + 40))(v53[7] + *(v47 + 72) * v27, v34, v35);
    }

    else
    {
      v4 = v53;
      v53[(v27 >> 6) + 8] |= 1 << v27;
      v36 = (v4[6] + 16 * v27);
      *v36 = v8;
      v36[1] = v9;
      result = (*(v47 + 32))(v4[7] + *(v47 + 72) * v27, v34, v35);
      v37 = v4[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_27;
      }

      v4[2] = v39;
    }

    v5 = v0[19];
    v6 = v0[16];
    v7 = *(v50 + 120);
    *(v50 + 120) = v4;

    swift_endAccess();
    (*(v47 + 8))(v5, v6);
    v2 = v51 + 2;
    v3 = v52 - 1;
    if (v52 == 1)
    {
      goto LABEL_18;
    }
  }

  sub_24AE7EF60(result, isUniquelyReferenced_nonNull_native);
  v32 = sub_24AE475AC(v8, v9);
  if ((v31 & 1) == (v33 & 1))
  {
    v27 = v32;
    goto LABEL_15;
  }

  return sub_24AE84570();
}

uint64_t sub_24AE57FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE638, &qword_24AE85E18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_24AE4FA64(v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE58100()
{
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE5F0, &unk_24AE86090);
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE760, &unk_24AE85DD0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  v1[27] = v6;
  v7 = *(v6 - 8);
  v1[28] = v7;
  v8 = *(v7 + 64) + 15;
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5826C, v0, 0);
}

uint64_t sub_24AE5826C()
{
  if (MEMORY[0x24C2329E0]())
  {
    v1 = v0[29];
    v2 = v0[25];
    v3 = v0[26];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = *(v0[22] + 112);
    v0[30] = v6;

    return MEMORY[0x2822009F8](sub_24AE58328, v6, 0);
  }
}

uint64_t sub_24AE58328()
{
  v1 = v0[30];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {

    v3 = sub_24AE475AC(0xD00000000000001CLL, 0x800000024AE88220);
    if (v4)
    {
      (*(v0[28] + 16))(v0[26], *(v2 + 56) + *(v0[28] + 72) * v3, v0[27]);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[22];
  (*(v0[28] + 56))(v0[26], v5, 1, v0[27]);

  return MEMORY[0x2822009F8](sub_24AE5843C, v6, 0);
}

uint64_t sub_24AE5843C()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AE567BC(v3, &qword_27EFBE760, &unk_24AE85DD0);
    return sub_24AE84440();
  }

  else
  {
    v5 = v0[25];
    (*(v2 + 32))(v0[29], v3, v1);
    sub_24AE84150();
    v7 = sub_24AE5A374(qword_280D7A210, v6, type metadata accessor for DistributedNotificationHandler);
    v0[31] = v7;
    v8 = v0[22];
    v9 = *(MEMORY[0x277D85798] + 4);
    v10 = swift_task_alloc();
    v0[32] = v10;
    *v10 = v0;
    v10[1] = sub_24AE58610;
    v11 = v0[25];
    v12 = v0[23];

    return MEMORY[0x2822003E8](v0 + 15, v8, v7, v12);
  }
}

uint64_t sub_24AE58610()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE58720, v2, 0);
}

uint64_t sub_24AE58720()
{
  v46 = v0;
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[16];
    if (*(v1 + 16) && (v3 = sub_24AE475AC(0x746E657645435058, 0xEC000000656D614ELL), (v4 & 1) != 0))
    {
      sub_24AE476DC(*(v1 + 56) + 32 * v3, (v0 + 2));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
      if (swift_dynamicCast())
      {
        v5 = v0[17];
        v6 = v0[18];
        v7 = qword_280D79C70;

        if (v7 != -1)
        {
          swift_once();
        }

        v8 = sub_24AE83ED0();
        __swift_project_value_buffer(v8, qword_280D79C80);

        v9 = sub_24AE83EB0();
        v10 = sub_24AE84250();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v45 = v12;
          *v11 = 136446210;
          v0[19] = 91;
          v0[20] = 0xE100000000000000;
          v0[12] = v5;
          v0[13] = v6;
          v0[14] = v2;
          sub_24AE5A0AC();
          v43 = v5;
          v13 = v2;

          v14 = sub_24AE844F0();
          MEMORY[0x24C232D80](v14);

          MEMORY[0x24C232D80](8250, 0xE200000000000000);
          MEMORY[0x24C232D80](v43, v6);
          MEMORY[0x24C232D80](0x3A6E787420, 0xE500000000000000);
          v0[21] = v2;
          sub_24AE83CB0();
          sub_24AE5A374(&qword_280D79BB0, 255, MEMORY[0x277D08908]);
          v15 = sub_24AE84510();
          MEMORY[0x24C232D80](v15);

          MEMORY[0x24C232D80](93, 0xE100000000000000);

          v16 = sub_24AE53C28(v0[19], v0[20], &v45);

          *(v11 + 4) = v16;
          v2 = v13;
          v5 = v43;
          _os_log_impl(&dword_24AE43000, v9, v10, "XPCEventStream notification: %{public}s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v12);
          MEMORY[0x24C233A80](v12, -1, -1);
          MEMORY[0x24C233A80](v11, -1, -1);
        }

        v17 = v0[22];
        v0[9] = v5;
        v0[10] = v6;
        v0[11] = v2;
        sub_24AE58D1C(v0 + 9, v2);

        v18 = v0[31];
        v19 = v0[22];
        v20 = *(MEMORY[0x277D85798] + 4);
        v21 = swift_task_alloc();
        v0[32] = v21;
        *v21 = v0;
        v21[1] = sub_24AE58610;
        v22 = v0[25];
        v23 = v0[23];

        return MEMORY[0x2822003E8](v0 + 15, v19, v18, v23);
      }
    }

    else
    {
    }

    if (qword_280D79C70 != -1)
    {
      swift_once();
    }

    v24 = sub_24AE83ED0();
    __swift_project_value_buffer(v24, qword_280D79C80);
    v25 = sub_24AE83EB0();
    v26 = sub_24AE84230();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[28];
    v44 = v0[29];
    v29 = v0[27];
    v30 = v0[24];
    v31 = v0[25];
    v32 = v0[23];
    if (v27)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_24AE53C28(0x746E657645435058, 0xEC000000656D614ELL, &v45);
      _os_log_impl(&dword_24AE43000, v25, v26, "Event missing %s key!", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C233A80](v34, -1, -1);
      MEMORY[0x24C233A80](v33, -1, -1);
    }

    else
    {
    }

    (*(v30 + 8))(v31, v32);
    (*(v28 + 8))(v44, v29);
  }

  else
  {
    v36 = v0[28];
    v35 = v0[29];
    v37 = v0[27];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v36 + 8))(v35, v37);
  }

  v38 = v0[29];
  v39 = v0[25];
  v40 = v0[26];

  v41 = v0[1];

  return v41();
}

uint64_t DistributedNotification.init(name:transaction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_24AE58D1C(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  swift_beginAccess();
  v12 = *(v2 + 152);
  if (*(v12 + 16))
  {

    v13 = sub_24AE475AC(v10, v9);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v16 = sub_24AE84120();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = a2;
      v17[5] = v15;
      v17[6] = v10;
      v17[7] = v9;
      v17[8] = v11;

      sub_24AE56898(0, 0, v8, &unk_24AE860C0, v17);

      return;
    }
  }

  if (qword_280D79C70 != -1)
  {
    swift_once();
  }

  v18 = sub_24AE83ED0();
  __swift_project_value_buffer(v18, qword_280D79C80);

  v19 = sub_24AE83EB0();
  v20 = sub_24AE84240();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136446210;
    v29 = v11;
    v30 = 91;
    v31 = 0xE100000000000000;
    v32 = v22;
    v27 = v10;
    v28 = v9;
    sub_24AE5A0AC();

    v23 = sub_24AE844F0();
    MEMORY[0x24C232D80](v23);

    MEMORY[0x24C232D80](8250, 0xE200000000000000);
    MEMORY[0x24C232D80](v10, v9);
    MEMORY[0x24C232D80](0x3A6E787420, 0xE500000000000000);
    v27 = v11;
    sub_24AE83CB0();
    sub_24AE5A374(&qword_280D79BB0, 255, MEMORY[0x277D08908]);
    v24 = sub_24AE84510();
    MEMORY[0x24C232D80](v24);

    MEMORY[0x24C232D80](93, 0xE100000000000000);

    v25 = sub_24AE53C28(v30, v31, &v32);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_24AE43000, v19, v20, "Received notification %{public}s with no subscribers!", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C233A80](v22, -1, -1);
    MEMORY[0x24C233A80](v21, -1, -1);
  }
}

uint64_t sub_24AE590F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE768, &qword_24AE860C8);
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE640, &qword_24AE85E20);
  v8[20] = v12;
  v13 = *(v12 - 8);
  v8[21] = v13;
  v14 = *(v13 + 64) + 15;
  v8[22] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[23] = v15;
  *v15 = v8;
  v15[1] = sub_24AE5925C;

  return daemon.getter();
}

uint64_t sub_24AE5925C(uint64_t a1)
{
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_24AE59360, a1, 0);
}

uint64_t sub_24AE59360()
{
  v1 = *(*(v0 + 192) + 128);
  *(v0 + 200) = v1;
  return MEMORY[0x2822009F8](sub_24AE59384, v1, 0);
}

uint64_t sub_24AE59384()
{
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[26] = v2;
  v3 = *(v2 + 16);
  v0[27] = v3;
  if (!v3)
  {
    v22 = v0[24];
LABEL_12:

    return MEMORY[0x2822009F8](sub_24AE59640, 0, 0);
  }

  v4 = v0[25];

  swift_beginAccess();
  v0[28] = 0;
  v5 = v0[26];
  if (!*(v5 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v20 = v0[26];
    v21 = v0[24];

    goto LABEL_12;
  }

  v6 = 0;
  while (1)
  {
    v7 = v0[25];
    v8 = v5 + 16 * v6;
    v0[29] = *(v8 + 32);
    v9 = *(v8 + 40);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);
    swift_unknownObjectRetain();
    v12 = v11(ObjectType, v9);
    v14 = v13;
    v0[30] = v13;
    if (*(*(v7 + 128) + 16))
    {
      break;
    }

LABEL_7:

    v18 = v0[28];
    v17 = v0[29];
    v19 = v0[27];
    swift_unknownObjectRelease();
    if (v18 + 1 == v19)
    {
      goto LABEL_10;
    }

    v6 = v0[28] + 1;
    v0[28] = v6;
    v5 = v0[26];
    if (v6 >= *(v5 + 16))
    {
      goto LABEL_9;
    }
  }

  v15 = v12;

  sub_24AE475AC(v15, v14);
  if ((v16 & 1) == 0)
  {

    goto LABEL_7;
  }

  v23 = v0[25];

  sub_24AE5A374(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection);
  v24 = swift_task_alloc();
  v0[31] = v24;
  v24[2] = v23;
  v24[3] = v15;
  v24[4] = v14;
  v25 = *(MEMORY[0x277D85A40] + 4);
  v26 = swift_task_alloc();
  v0[32] = v26;
  *v26 = v0;
  v26[1] = sub_24AE59814;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AE59640()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_24AE83CB0();
  sub_24AE83C90();
  v0[11] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9B0, &qword_24AE85E10);
  swift_task_localValuePush();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[21];
    v20 = *(v4 + 16);
    v5 = v0[13] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = (v0[18] + 8);
    v19 = *(v4 + 72);
    v17 = (v4 + 8);
    do
    {
      v6 = v0[22];
      v8 = v0[19];
      v7 = v0[20];
      v10 = v0[16];
      v9 = v0[17];
      v11 = v0[14];
      v12 = v0[15];
      v20(v6, v5, v7);
      v0[8] = v11;
      v0[9] = v12;
      v0[10] = v10;

      sub_24AE84140();
      (*v18)(v8, v9);
      (*v17)(v6, v7);
      v5 += v19;
      --v3;
    }

    while (v3);
  }

  v13 = v0[22];
  v14 = v0[19];
  swift_task_localValuePop();

  v15 = v0[1];

  return v15();
}

uint64_t sub_24AE59814()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];
  v6 = v2[30];
  if (v0)
  {
    v9 = v2 + 25;
    v8 = v2[25];
    v7 = v9[1];

    v10 = sub_24AE59BF0;
    v11 = v8;
  }

  else
  {
    v12 = v2[25];

    v10 = sub_24AE59994;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_24AE59994()
{
  while (1)
  {
    v2 = v0[28];
    v1 = v0[29];
    v3 = v0[27];
    swift_unknownObjectRelease();
    if (v2 + 1 == v3)
    {
      break;
    }

    v4 = v0[28] + 1;
    v0[28] = v4;
    v5 = v0[26];
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    v6 = v0[25];
    v7 = v5 + 16 * v4;
    v0[29] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    v13 = v12;
    v0[30] = v12;
    if (*(*(v6 + 128) + 16))
    {
      v14 = v11;

      sub_24AE475AC(v14, v13);
      if (v15)
      {
        v16 = v0[25];

        sub_24AE5A374(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection);
        v17 = swift_task_alloc();
        v0[31] = v17;
        v17[2] = v16;
        v17[3] = v14;
        v17[4] = v13;
        v18 = *(MEMORY[0x277D85A40] + 4);
        v19 = swift_task_alloc();
        v0[32] = v19;
        *v19 = v0;
        v19[1] = sub_24AE59814;

        return MEMORY[0x2822008A0]();
      }
    }
  }

  v20 = v0[26];
  v21 = v0[24];

  return MEMORY[0x2822009F8](sub_24AE59640, 0, 0);
}

uint64_t sub_24AE59BF0()
{
  v1 = *(v0 + 232);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24AE59C58, 0, 0);
}

uint64_t sub_24AE59C58()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[19];

  v4 = v0[1];
  v5 = v0[33];

  return v4();
}

uint64_t sub_24AE59CD4()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79C08);
  __swift_project_value_buffer(v0, qword_280D79C08);
  return sub_24AE83EC0();
}

uint64_t sub_24AE59D54()
{
  v0 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  sub_24AE83FD0();
  v1 = xpc_copy_event();

  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24AE557E4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_24AE557EC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AE6DFA8;
  aBlock[3] = &block_descriptor_0;
  v4 = _Block_copy(aBlock);

  xpc_dictionary_apply(v1, v4);
  swift_unknownObjectRelease();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v0 = v8;

    v1 = sub_24AE557E4;
LABEL_4:

    sub_24AE44D88(v1);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t DistributedNotification.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DistributedNotification.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE5A0AC();
  v4 = sub_24AE844F0();
  MEMORY[0x24C232D80](v4);

  MEMORY[0x24C232D80](8250, 0xE200000000000000);
  MEMORY[0x24C232D80](v1, v2);
  MEMORY[0x24C232D80](0x3A6E787420, 0xE500000000000000);
  sub_24AE83CB0();
  sub_24AE5A374(&qword_280D79BB0, 255, MEMORY[0x277D08908]);
  v5 = sub_24AE84510();
  MEMORY[0x24C232D80](v5);

  MEMORY[0x24C232D80](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_24AE5A0AC()
{
  result = qword_280D79938[0];
  if (!qword_280D79938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D79938);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AE5A190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24AE5A1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AE5A228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AE4A504;

  return sub_24AE590F0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AE5A304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AE5A374(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AE5A410(char a1)
{
  result = swift_beginAccess();
  *(v1 + 232) = a1;
  return result;
}

uint64_t APNSManager.__allocating_init(environmentName:delegatePort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE5548C;

  return APNSManager.init(environmentName:delegatePort:)(a1, a2, a3, a4);
}

uint64_t APNSManager.init(environmentName:delegatePort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_24AE83F10();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5A638, 0, 0);
}

uint64_t sub_24AE5A638()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  swift_defaultActor_initialize();
  *(v3 + 200) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 120) = 0u;
  v9 = MEMORY[0x277D84F98];
  *(v3 + 216) = 0;
  *(v3 + 224) = v9;
  *(v3 + 232) = 0;
  sub_24AE5FF5C(0, &unk_280D79BE8, 0x277D85C78);
  (*(v2 + 104))(v1, *MEMORY[0x277D851C8], v4);
  v10 = sub_24AE84260();
  (*(v2 + 8))(v1, v4);
  v11 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v12 = sub_24AE83FA0();
  v13 = sub_24AE83FA0();
  v14 = [v11 initWithEnvironmentName:v12 namedDelegatePort:v13 queue:v10];

  if (v14)
  {
    v18 = v0[7];
    v19 = v0[8];
    v20 = v0[5];

    *(v19 + 112) = v14;
    v15 = sub_24AE5A7E0;
    v16 = v19;
    v17 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_24AE5A7E0()
{
  super_class = v0[5].super_class;
  receiver = v0[4].receiver;
  v3 = type metadata accessor for APNSManager.PushDelegateTrampoline();
  v4 = objc_allocWithZone(v3);
  swift_weakInit();
  swift_weakAssign();
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v5 = objc_msgSendSuper2(v0 + 1, sel_init);
  v6 = *(receiver + 15);
  *(receiver + 15) = v5;
  v7 = v5;

  v8 = *(receiver + 14);
  [v8 setDelegate_];

  v9 = v0->super_class;
  v10 = v0[4].receiver;

  return v9(v10);
}

id sub_24AE5A924()
{
  result = [*(*(v0 + 16) + 112) enabledTopics];
  if (result)
  {
    v2 = result;
    v3 = sub_24AE840A0();

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24AE5A9BC(uint64_t a1)
{
  v2 = v1;
  if (qword_280D7A020 != -1)
  {
    swift_once();
  }

  v4 = sub_24AE83ED0();
  __swift_project_value_buffer(v4, qword_280D7A9A8);

  v5 = sub_24AE83EB0();
  v6 = sub_24AE84250();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AE53C28(0xD000000000000013, 0x800000024AE882E0, &v14);
    *(v7 + 12) = 2082;
    v9 = MEMORY[0x24C232E40](a1, MEMORY[0x277D837D0]);
    v11 = sub_24AE53C28(v9, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AE43000, v5, v6, "%s %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C233A80](v8, -1, -1);
    MEMORY[0x24C233A80](v7, -1, -1);
  }

  v12 = *(v2 + 112);
  v13 = sub_24AE84090();
  [v12 _setEnabledTopics_];
}

void sub_24AE5ABA0(uint64_t a1)
{
  v2 = v1;
  if (qword_280D7A020 != -1)
  {
    swift_once();
  }

  v4 = sub_24AE83ED0();
  __swift_project_value_buffer(v4, qword_280D7A9A8);

  v5 = sub_24AE83EB0();
  v6 = sub_24AE84250();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AE53C28(0xD000000000000019, 0x800000024AE88300, &v14);
    *(v7 + 12) = 2082;
    v9 = MEMORY[0x24C232E40](a1, MEMORY[0x277D837D0]);
    v11 = sub_24AE53C28(v9, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AE43000, v5, v6, "%s %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C233A80](v8, -1, -1);
    MEMORY[0x24C233A80](v7, -1, -1);
  }

  v12 = *(v2 + 112);
  v13 = sub_24AE84090();
  [v12 _setOpportunisticTopics_];
}

uint64_t sub_24AE5AD84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE7A8, &unk_24AE86118);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  swift_allocObject();
  swift_weakInit();
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v0);
  sub_24AE84170();
}

uint64_t sub_24AE5AEB8(uint64_t a1)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_24AE83EA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    sub_24AE83E90();
    v30 = v3;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v1;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    sub_24AE84130();
    v21 = sub_24AE84120();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_24AE6E000(0, 0, v37, &unk_24AE86430, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_24AE5B2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24AE83EA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_24AE84120();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_24AE6E000(0, 0, v11, &unk_24AE86448, v14);
}

uint64_t sub_24AE5B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24AE5B4BC, a4, 0);
}

uint64_t sub_24AE5B4BC()
{
  v1 = v0[2];
  sub_24AE5B51C(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AE5B51C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6C8, &qword_24AE85EB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_24AE83EA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  if (qword_280D7A020 != -1)
  {
    swift_once();
  }

  v14 = sub_24AE83ED0();
  __swift_project_value_buffer(v14, qword_280D7A9A8);
  v32 = *(v8 + 16);
  v32(v13, a1, v7);
  v15 = sub_24AE83EB0();
  v16 = sub_24AE84210();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = v1;
    v20 = v19;
    v34[0] = v19;
    *v18 = 136446210;
    sub_24AE6098C();
    v21 = sub_24AE84510();
    v30 = v6;
    v23 = v22;
    (*(v8 + 8))(v13, v7);
    v24 = sub_24AE53C28(v21, v23, v34);
    v6 = v30;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_24AE43000, v15, v16, "Removing connectionStateContinuation for %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C233A80](v20, -1, -1);
    v25 = v18;
    a1 = v29;
    MEMORY[0x24C233A80](v25, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v26 = v33;
  v32(v33, a1, v7);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  swift_beginAccess();
  sub_24AE4FC68(v6, v26);
  return swift_endAccess();
}