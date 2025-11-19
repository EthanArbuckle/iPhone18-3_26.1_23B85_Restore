uint64_t sub_24AC8F1EC()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 440);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);
  v5 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);

  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 328);
  v9 = *(v0 + 304);
  v10 = *(v0 + 288);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24AC8F2C8()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  v2[61] = v0;

  v5 = v2[59];
  if (v0)
  {
    v6 = v2[46];
    v7 = v2[35];

    v8 = sub_24AC8E8E4;
  }

  else
  {
    v7 = v2[35];

    v8 = sub_24AC8E0B0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC8F418(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[37] = v4;
  v5 = *(v4 - 8);
  v2[38] = v5;
  v6 = *(v5 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v2[42] = v7;
  v8 = *(v7 - 8);
  v2[43] = v8;
  v9 = *(v8 + 64) + 15;
  v2[44] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v2[45] = v10;
  v11 = *(v10 - 8);
  v2[46] = v11;
  v12 = *(v11 + 64) + 15;
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC8F5F8, v1, 0);
}

uint64_t sub_24AC8F5F8()
{
  v49 = v0;
  v1 = v0[35];
  sub_24AC81B94(v48);
  if (LOBYTE(v48[0]) == 5 || (v2 = v0[35], sub_24AC81B94(v48), LOBYTE(v48[0]) > 5u))
  {
    v14 = v0[34];
    v15 = MEMORY[0x277D84F90];
    v0[30] = MEMORY[0x277D84F90];
    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = v0[46];
      v18 = v0[43];
      v48[0] = v15;
      sub_24ACD0AB0();
      v19 = objc_opt_self();
      v20 = *(v17 + 16);
      v17 += 16;
      v46 = v20;
      v47 = v19;
      v21 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v44 = (v18 + 8);
      v45 = *(v17 + 56);
      v22 = (v17 - 8);
      do
      {
        v23 = v0[47];
        v25 = v0[44];
        v24 = v0[45];
        v26 = v0[42];
        v46(v23, v21, v24);
        sub_24ACCFFE0();
        v27 = sub_24ACD03D0();
        v28 = [v47 UUIDWithNSUUID_];

        (*v44)(v25, v26);
        (*v22)(v23, v24);
        sub_24ACD0A90();
        v29 = *(v48[0] + 16);
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v21 += v45;
        --v16;
      }

      while (v16);
      v15 = v48[0];
    }

    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v30 = sub_24ACD0490();
    __swift_project_value_buffer(v30, qword_2814AD8C0);

    v31 = sub_24ACD0470();
    v32 = sub_24ACD0900();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48[0] = v34;
      *v33 = 136315138;
      v35 = sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
      v36 = MEMORY[0x24C22CE70](v15, v35);
      v38 = sub_24AC29E20(v36, v37, v48);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_24AC18000, v31, v32, "Calling CBCentralManager.retrieveConnectedPeripherals() with services: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C22DC60](v34, -1, -1);
      MEMORY[0x24C22DC60](v33, -1, -1);
    }

    v40 = *(v0[35] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    v0[48] = v40;
    if (v40)
    {
      v41 = v40;
      sub_24AC919E4(v15);

      v42 = sub_24ACD06F0();
      v0[49] = v42;

      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_24AC8FB48;
      v43 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5E0, &qword_24ACD5920);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24AC8B08C;
      v0[13] = &block_descriptor_37;
      v0[14] = v43;
      [v41 retrieveConnectedPeripheralsWithServices:v42 completion:v0 + 10];
      v39 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v39);
  }

  else
  {
    v3 = v0[35];
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    v5 = v4;
    sub_24AC81B94(v48);
    *v5 = v48[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v6 = v0[47];
    v7 = v0[44];
    v9 = v0[40];
    v8 = v0[41];
    v10 = v0[39];
    v11 = v0[36];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24AC8FB48()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AC8FC3C, v1, 0);
}

uint64_t sub_24AC8FC3C()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[31];
  v0[50] = v3;

  if (v3 >> 62)
  {
LABEL_47:
    v92 = sub_24ACD0B30();
    v0[51] = v92;
    if (v92)
    {
      goto LABEL_3;
    }

LABEL_48:
    v8 = MEMORY[0x277D84F90];
LABEL_49:
    v93 = v0[50];
    v94 = v0[47];
    v95 = v0[44];
    v97 = v0[40];
    v96 = v0[41];
    v98 = v0[39];
    v99 = v0[36];

    v100 = v0[1];

    return v100(v8);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[51] = v4;
  if (!v4)
  {
    goto LABEL_48;
  }

LABEL_3:
  v5 = v0[35];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  v0[52] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  v0[53] = v6;
  v0[54] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[55] = v8;
    v16 = v0[50];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C22D1B0](v7);
    }

    else
    {
      if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v17 = *(v16 + 8 * v7 + 32);
    }

    v0[56] = v17;
    v0[57] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v18 = v0[52];
    v19 = v0[44];
    v20 = v0[41];
    v21 = v0[35];
    v22 = v17;
    v23 = [v22 identifier];
    sub_24ACD03F0();

    v24 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v25 = *(v21 + v18);
    if (!*(v25 + 16))
    {
      break;
    }

    v26 = v0[41];
    v27 = *(v21 + v18);

    v28 = sub_24AC2AC60(v26);
    if ((v29 & 1) == 0)
    {

      break;
    }

    v9 = v28;
    v10 = v0[41];
    v12 = v0[37];
    v11 = v0[38];

    v13 = *(*(v25 + 56) + 8 * v9);
    v14 = *(v11 + 8);

    v14(v10, v12);
LABEL_5:

    MEMORY[0x24C22CE30](v15);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v68 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    sub_24ACD0730();

LABEL_8:

    v7 = v0[57];
    v8 = v0[30];
    if (v7 == v0[51])
    {
      goto LABEL_49;
    }
  }

  v30 = v0[53];
  v31 = v0[44];
  v33 = v0[40];
  v32 = v0[41];
  v34 = v0[37];
  v35 = v0[38];
  v36 = v0[35];
  v37 = *(v35 + 8);
  v0[58] = v37;
  v0[59] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v32, v34);
  v38 = [v22 identifier];

  sub_24ACD03F0();
  sub_24ACD0000();
  v39 = *(v36 + v30);
  if (!*(v39 + 16))
  {
    goto LABEL_21;
  }

  v40 = v0[40];
  v41 = *(v36 + v30);

  v42 = sub_24AC2AC60(v40);
  if (v43)
  {
    v44 = v0[40];
    v45 = v0[37];
    v46 = *(*(v39 + 56) + 8 * v42);

    v37(v44, v45);
    goto LABEL_5;
  }

LABEL_21:
  v37(v0[40], v0[37]);
  if (![v22 delegate])
  {
    goto LABEL_28;
  }

  type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  if (swift_dynamicCastClass() && swift_weakLoadStrong())
  {

    MEMORY[0x24C22CE30](v47);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v70 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    sub_24ACD0730();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
LABEL_28:
  v48 = v0[52];
  v49 = v0[44];
  v50 = v0[39];
  v51 = v0[35];
  v52 = v0[36];
  v53 = sub_24ACD0090();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  v54 = [v22 identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  v55 = *(v51 + v48);
  if (*(v55 + 16))
  {
    v56 = v0[39];
    v57 = *(v51 + v48);

    v58 = sub_24AC2AC60(v56);
    if ((v59 & 1) == 0)
    {

      goto LABEL_31;
    }

LABEL_33:
    v63 = *(*(v55 + 56) + 8 * v58);

    v64 = v0[59];
    v65 = v0[36];
    (v0[58])(v0[39], v0[37]);
    sub_24AC212F4(v65, &qword_27EF9E048, &qword_24ACD5910);

    MEMORY[0x24C22CE30](v66);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v69 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    v67 = v0[56];
    sub_24ACD0730();

    goto LABEL_8;
  }

LABEL_31:
  v60 = v0[35];
  v55 = *(v60 + v0[53]);
  if (!*(v55 + 16))
  {
    goto LABEL_37;
  }

  v61 = v0[39];

  v58 = sub_24AC2AC60(v61);
  if (v62)
  {
    goto LABEL_33;
  }

  v60 = v0[35];
LABEL_37:
  v71 = v0[54];
  if (*(*(v60 + v71) + 16))
  {
    v72 = v0[39];
    v73 = *(v60 + v71);

    sub_24AC2AC60(v72);
    LOBYTE(v72) = v74;

    if (v72)
    {
      v75 = v0[39];
      v76 = v0[35];
      v77 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
      v78 = swift_task_alloc();
      v0[63] = v78;
      *(v78 + 16) = v76;
      *(v78 + 24) = v75;
      v79 = *(MEMORY[0x277D85A40] + 4);
      v80 = swift_task_alloc();
      v0[64] = v80;
      *v80 = v0;
      v80[1] = sub_24AC91894;
      v81 = sub_24ACA261C;
      v82 = v0 + 33;
      v83 = v76;
      v84 = v77;
      goto LABEL_42;
    }

    v71 = v0[54];
    v60 = v0[35];
  }

  v85 = v0[39];
  v86 = v0[36];
  swift_beginAccess();
  v87 = *(v60 + v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = *(v60 + v71);
  *(v60 + v71) = 0x8000000000000000;
  sub_24AC63DEC(MEMORY[0x277D84F90], v85, isUniquelyReferenced_nonNull_native);
  *(v60 + v71) = v102;
  swift_endAccess();
  v89 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
  v78 = swift_task_alloc();
  v0[60] = v78;
  *(v78 + 16) = v60;
  *(v78 + 24) = v85;
  *(v78 + 32) = v22;
  *(v78 + 40) = v86;
  *(v78 + 48) = 1;
  *(v78 + 56) = 0;
  *(v78 + 64) = 0;
  *(v78 + 72) = 1;
  v90 = *(MEMORY[0x277D85A40] + 4);
  v91 = swift_task_alloc();
  v0[61] = v91;
  *v91 = v0;
  v91[1] = sub_24AC9050C;
  v81 = sub_24ACA2608;
  v82 = v0 + 32;
  v83 = v60;
  v84 = v89;
LABEL_42:

  return MEMORY[0x2822008A0](v82, v83, v84, 0xD000000000000055, 0x800000024ACDA2F0, v81, v78, v24);
}

uint64_t sub_24AC9050C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  v2[62] = v0;

  v5 = v2[60];
  if (v0)
  {
    v6 = v2[50];
    v7 = v2[35];

    v8 = sub_24AC917B0;
  }

  else
  {
    v7 = v2[35];

    v8 = sub_24AC90F7C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC9065C()
{
  v1 = *(v0 + 264);
  v2 = &qword_24ACD5910;
LABEL_2:
  v3 = *(v0 + 472);
  v4 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 312), *(v0 + 296));
  sub_24AC212F4(v4, &qword_27EF9E048, v2);

  MEMORY[0x24C22CE30](v5);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24ACD0720();
  }

  v6 = *(v0 + 448);
  sub_24ACD0730();

  while (1)
  {

    v14 = *(v0 + 456);
    v15 = *(v0 + 240);
    if (v14 == *(v0 + 408))
    {
      break;
    }

    *(v0 + 440) = v15;
    v16 = *(v0 + 400);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C22D1B0](v14);
    }

    else
    {
      if (v14 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v7 = *(v16 + 8 * v14 + 32);
    }

    *(v0 + 448) = v7;
    *(v0 + 456) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
    }

    v17 = *(v0 + 416);
    v18 = *(v0 + 352);
    v19 = *(v0 + 328);
    v20 = *(v0 + 280);
    v21 = v7;
    v22 = [v21 identifier];
    sub_24ACD03F0();

    v97 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v23 = *(v20 + v17);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 328);
      v25 = *(v20 + v17);

      v26 = sub_24AC2AC60(v24);
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 328);
        v31 = *(v0 + 296);
        v30 = *(v0 + 304);

        v32 = *(*(v23 + 56) + 8 * v28);
        v33 = *(v30 + 8);

        v33(v29, v31);
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 424);
    v35 = *(v0 + 352);
    v37 = *(v0 + 320);
    v36 = *(v0 + 328);
    v38 = *(v0 + 296);
    v39 = *(v0 + 304);
    v40 = v2;
    v41 = *(v0 + 280);
    v42 = *(v39 + 8);
    *(v0 + 464) = v42;
    *(v0 + 472) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v36, v38);
    v43 = [v21 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v44 = *(v41 + v34);
    v2 = v40;
    if (*(v44 + 16))
    {
      v45 = *(v0 + 320);

      v46 = sub_24AC2AC60(v45);
      if ((v47 & 1) == 0)
      {

        goto LABEL_22;
      }

      v48 = *(v0 + 320);
      v49 = *(v0 + 296);
      v50 = *(*(v44 + 56) + 8 * v46);

      v42(v48, v49);
LABEL_18:

      MEMORY[0x24C22CE30](v51);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v42(*(v0 + 320), *(v0 + 296));
      if (![v21 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v55 = *(v0 + 416);
        v56 = *(v0 + 352);
        v57 = *(v0 + 312);
        v58 = *(v0 + 280);
        v59 = *(v0 + 288);
        v60 = sub_24ACD0090();
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v61 = [v21 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        v62 = *(v58 + v55);
        if (*(v62 + 16))
        {
          v63 = *(v0 + 312);

          v64 = sub_24AC2AC60(v63);
          if ((v65 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:
          v69 = *(*(v62 + 56) + 8 * v64);

          goto LABEL_2;
        }

LABEL_32:
        v66 = *(v0 + 280);
        v62 = *(v66 + *(v0 + 424));
        if (*(v62 + 16))
        {
          v67 = *(v0 + 312);

          v64 = sub_24AC2AC60(v67);
          if (v68)
          {
            goto LABEL_34;
          }

          v66 = *(v0 + 280);
        }

        v80 = *(v0 + 432);
        if (*(*(v66 + v80) + 16))
        {
          v81 = *(v0 + 312);
          v82 = *(v66 + v80);

          sub_24AC2AC60(v81);
          LOBYTE(v81) = v83;

          v66 = *(v0 + 280);
          if (v81)
          {
            v84 = *(v0 + 312);
            v85 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
            v86 = swift_task_alloc();
            *(v0 + 504) = v86;
            *(v86 + 16) = v66;
            *(v86 + 24) = v84;
            v87 = *(MEMORY[0x277D85A40] + 4);
            v88 = swift_task_alloc();
            *(v0 + 512) = v88;
            *v88 = v0;
            v88[1] = sub_24AC91894;
            v11 = sub_24ACA261C;
            v7 = (v0 + 264);
            v10 = 0x800000024ACDA2F0;
            v16 = v66;
            v8 = v85;
            v9 = 0xD000000000000055;
            v12 = v86;
LABEL_44:
            v13 = v97;

            return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
          }

          v80 = *(v0 + 432);
        }

        v89 = *(v0 + 312);
        v90 = *(v0 + 288);
        swift_beginAccess();
        v91 = *(v66 + v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = *(v66 + v80);
        *(v66 + v80) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v89, isUniquelyReferenced_nonNull_native);
        *(v66 + v80) = v98;
        swift_endAccess();
        v93 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
        v94 = swift_task_alloc();
        *(v0 + 480) = v94;
        *(v94 + 16) = v66;
        *(v94 + 24) = v89;
        *(v94 + 32) = v21;
        *(v94 + 40) = v90;
        *(v94 + 48) = 1;
        *(v94 + 56) = 0;
        *(v94 + 64) = 0;
        *(v94 + 72) = 1;
        v95 = *(MEMORY[0x277D85A40] + 4);
        v96 = swift_task_alloc();
        *(v0 + 488) = v96;
        *v96 = v0;
        v96[1] = sub_24AC9050C;
        v11 = sub_24ACA2608;
        v7 = (v0 + 256);
        v10 = 0x800000024ACDA2F0;
        v16 = v66;
        v8 = v93;
        v9 = 0xD000000000000055;
        v12 = v94;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v52);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v0 + 400);
  v72 = *(v0 + 376);
  v73 = *(v0 + 352);
  v75 = *(v0 + 320);
  v74 = *(v0 + 328);
  v76 = *(v0 + 312);
  v77 = *(v0 + 288);

  v78 = *(v0 + 8);

  return v78(v15);
}

uint64_t sub_24AC90E98()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 472);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 312), *(v0 + 296));
  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);

  v6 = *(v0 + 376);
  v7 = *(v0 + 352);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 312);
  v11 = *(v0 + 288);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AC90F7C()
{
  v1 = *(v0 + 256);
  v2 = &qword_24ACD5910;
LABEL_2:
  v3 = *(v0 + 472);
  v4 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 312), *(v0 + 296));
  sub_24AC212F4(v4, &qword_27EF9E048, v2);

  MEMORY[0x24C22CE30](v5);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24ACD0720();
  }

  v6 = *(v0 + 448);
  sub_24ACD0730();

  while (1)
  {

    v14 = *(v0 + 456);
    v15 = *(v0 + 240);
    if (v14 == *(v0 + 408))
    {
      break;
    }

    *(v0 + 440) = v15;
    v16 = *(v0 + 400);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C22D1B0](v14);
    }

    else
    {
      if (v14 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v7 = *(v16 + 8 * v14 + 32);
    }

    *(v0 + 448) = v7;
    *(v0 + 456) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
    }

    v17 = *(v0 + 416);
    v18 = *(v0 + 352);
    v19 = *(v0 + 328);
    v20 = *(v0 + 280);
    v21 = v7;
    v22 = [v21 identifier];
    sub_24ACD03F0();

    v97 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v23 = *(v20 + v17);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 328);
      v25 = *(v20 + v17);

      v26 = sub_24AC2AC60(v24);
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 328);
        v31 = *(v0 + 296);
        v30 = *(v0 + 304);

        v32 = *(*(v23 + 56) + 8 * v28);
        v33 = *(v30 + 8);

        v33(v29, v31);
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 424);
    v35 = *(v0 + 352);
    v37 = *(v0 + 320);
    v36 = *(v0 + 328);
    v38 = *(v0 + 296);
    v39 = *(v0 + 304);
    v40 = v2;
    v41 = *(v0 + 280);
    v42 = *(v39 + 8);
    *(v0 + 464) = v42;
    *(v0 + 472) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v36, v38);
    v43 = [v21 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v44 = *(v41 + v34);
    v2 = v40;
    if (*(v44 + 16))
    {
      v45 = *(v0 + 320);

      v46 = sub_24AC2AC60(v45);
      if ((v47 & 1) == 0)
      {

        goto LABEL_22;
      }

      v48 = *(v0 + 320);
      v49 = *(v0 + 296);
      v50 = *(*(v44 + 56) + 8 * v46);

      v42(v48, v49);
LABEL_18:

      MEMORY[0x24C22CE30](v51);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v42(*(v0 + 320), *(v0 + 296));
      if (![v21 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v55 = *(v0 + 416);
        v56 = *(v0 + 352);
        v57 = *(v0 + 312);
        v58 = *(v0 + 280);
        v59 = *(v0 + 288);
        v60 = sub_24ACD0090();
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v61 = [v21 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        v62 = *(v58 + v55);
        if (*(v62 + 16))
        {
          v63 = *(v0 + 312);

          v64 = sub_24AC2AC60(v63);
          if ((v65 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:
          v69 = *(*(v62 + 56) + 8 * v64);

          goto LABEL_2;
        }

LABEL_32:
        v66 = *(v0 + 280);
        v62 = *(v66 + *(v0 + 424));
        if (*(v62 + 16))
        {
          v67 = *(v0 + 312);

          v64 = sub_24AC2AC60(v67);
          if (v68)
          {
            goto LABEL_34;
          }

          v66 = *(v0 + 280);
        }

        v80 = *(v0 + 432);
        if (*(*(v66 + v80) + 16))
        {
          v81 = *(v0 + 312);
          v82 = *(v66 + v80);

          sub_24AC2AC60(v81);
          LOBYTE(v81) = v83;

          if (v81)
          {
            v84 = *(v0 + 312);
            v85 = *(v0 + 280);
            v86 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
            v87 = swift_task_alloc();
            *(v0 + 504) = v87;
            *(v87 + 16) = v85;
            *(v87 + 24) = v84;
            v88 = *(MEMORY[0x277D85A40] + 4);
            v89 = swift_task_alloc();
            *(v0 + 512) = v89;
            *v89 = v0;
            v89[1] = sub_24AC91894;
            v11 = sub_24ACA261C;
            v7 = (v0 + 264);
            v10 = 0x800000024ACDA2F0;
            v16 = v85;
            v8 = v86;
LABEL_44:
            v9 = 0xD000000000000055;
            v12 = v87;
            v13 = v97;

            return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
          }

          v80 = *(v0 + 432);
          v66 = *(v0 + 280);
        }

        v90 = *(v0 + 312);
        v91 = *(v0 + 288);
        swift_beginAccess();
        v92 = *(v66 + v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = *(v66 + v80);
        *(v66 + v80) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v90, isUniquelyReferenced_nonNull_native);
        *(v66 + v80) = v98;
        swift_endAccess();
        v94 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
        v87 = swift_task_alloc();
        *(v0 + 480) = v87;
        *(v87 + 16) = v66;
        *(v87 + 24) = v90;
        *(v87 + 32) = v21;
        *(v87 + 40) = v91;
        *(v87 + 48) = 1;
        *(v87 + 56) = 0;
        *(v87 + 64) = 0;
        *(v87 + 72) = 1;
        v95 = *(MEMORY[0x277D85A40] + 4);
        v96 = swift_task_alloc();
        *(v0 + 488) = v96;
        *v96 = v0;
        v96[1] = sub_24AC9050C;
        v11 = sub_24ACA2608;
        v7 = (v0 + 256);
        v10 = 0x800000024ACDA2F0;
        v16 = v66;
        v8 = v94;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v52);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v0 + 400);
  v72 = *(v0 + 376);
  v73 = *(v0 + 352);
  v75 = *(v0 + 320);
  v74 = *(v0 + 328);
  v76 = *(v0 + 312);
  v77 = *(v0 + 288);

  v78 = *(v0 + 8);

  return v78(v15);
}

uint64_t sub_24AC917B0()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 312), *(v0 + 296));
  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);

  v6 = *(v0 + 376);
  v7 = *(v0 + 352);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 312);
  v11 = *(v0 + 288);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AC91894()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  v2[65] = v0;

  v5 = v2[63];
  if (v0)
  {
    v6 = v2[50];
    v7 = v2[35];

    v8 = sub_24AC90E98;
  }

  else
  {
    v7 = v2[35];

    v8 = sub_24AC9065C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

char *sub_24AC919E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24ACD0B30();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_24AC64D68(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C22D1B0](i, a1);
        sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_24AC64D68((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_24AC1BFB8(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24AC64D68((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_24AC1BFB8(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AC91BEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214BC;

  return sub_24AC9F2E4();
}

uint64_t sub_24AC91C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC91D20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC91D40, v1, 0);
}

uint64_t sub_24AC91D40()
{
  v1 = *(v0 + 24);
  sub_24AC81B94(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AC91DA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for CentralManager(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_24ACA25F8;

  return sub_24AC81DE4(0, (v1 + 16));
}

uint64_t sub_24AC91E64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC91F30, v1, 0);
}

uint64_t sub_24AC91F30()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24ACD0820();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC9202C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC20274;

  return sub_24AC85D58(a1, a2, a3, a4);
}

uint64_t sub_24AC920EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC87484(a1);
}

uint64_t sub_24AC92180(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC88E54(a1);
}

uint64_t sub_24AC92214(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC8B110(a1);
}

uint64_t sub_24AC922A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC8D1B8(a1);
}

uint64_t sub_24AC9236C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24AC923F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24ACC4098();
}

unint64_t sub_24AC924B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E700, &qword_24ACD5E08);
    v2 = sub_24ACD0B60();
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
        sub_24AC2B370(*(a1 + 48) + 40 * v14, v29);
        sub_24AC2B940(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_24AC2B370(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_24AC2B940(v27 + 8, v22);
        sub_24AC212F4(v26, &qword_27EF9E768, &qword_24ACD5EC8);
        v23 = v20;
        sub_24AC1BFB8(v22, v24);
        v15 = v23;
        sub_24AC1BFB8(v24, v25);
        sub_24AC1BFB8(v25, &v23);
        result = sub_24AC2AB50(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_24AC1BFB8(&v23, v12);
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
          result = sub_24AC1BFB8(&v23, (v2[7] + 32 * result));
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

      sub_24AC212F4(v26, &qword_27EF9E768, &qword_24ACD5EC8);

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

void sub_24AC92794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD68, &qword_24ACD37B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_24AC2AC60(v33);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      (*(v11 + 16))(v14, a1, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_24AC1D55C(0, v19[2] + 1, 1, v19);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = sub_24AC1D55C(v20 > 1, v21 + 1, 1, v19);
      }

      v19[2] = v21 + 1;
      (*(v11 + 32))(v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v14, v10);
      swift_beginAccess();
      v22 = *(v3 + v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v3 + v15);
      *(v3 + v15) = 0x8000000000000000;
      sub_24AC63DEC(v19, v33, isUniquelyReferenced_nonNull_native);
      *(v3 + v15) = v34;
      swift_endAccess();
      return;
    }
  }

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v24 = sub_24ACD0490();
  __swift_project_value_buffer(v24, qword_2814AD8C0);
  (*(v6 + 16))(v9, v33, v5);
  v25 = sub_24ACD0470();
  v26 = sub_24ACD0920();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136446210;
    sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100);
    v29 = sub_24ACD0C20();
    v31 = v30;
    (*(v6 + 8))(v9, v5);
    v32 = sub_24AC29E20(v29, v31, &v35);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_24AC18000, v25, v26, "Expected peripheralCreationInProgress[%{public}s] to have a value!", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C22DC60](v28, -1, -1);
    MEMORY[0x24C22DC60](v27, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_24AC92BEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v46 = a7;
  v47 = a8;
  v41 = a5;
  v43 = a4;
  v44 = a9;
  v45 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v37 = v12;
  v13 = *(v12 - 8);
  v42 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v38 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v39 = *(v16 - 8);
  v17 = *(v39 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v37 - v22;
  v40 = &v37 - v22;
  sub_24AC92794(a1, a3);
  v24 = sub_24ACD07C0();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  sub_24AC2B5DC(v41, v19, &qword_27EF9E048, &qword_24ACD5910);
  (*(v13 + 16))(v15, a3, v12);
  v25 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
  v26 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v27 = v26 + v17;
  v28 = (v26 + v17) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v13 + 80) + v29 + 9) & ~*(v13 + 80);
  v31 = swift_allocObject();
  v31[2] = a2;
  v31[3] = v25;
  v32 = v43;
  v31[4] = a2;
  v31[5] = v32;
  sub_24ACA1C8C(v19, v31 + v26);
  *(v31 + v27) = v45;
  v33 = v47;
  *(v31 + v28 + 8) = v46;
  v34 = v31 + v29;
  *v34 = v33;
  v34[8] = v44 & 1;
  (*(v13 + 32))(v31 + v30, v38, v37);

  swift_retain_n();
  v35 = v32;
  sub_24AC7EA6C(0, 0, v40, &unk_24ACD5DD0, v31);
}

uint64_t sub_24AC92F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 313) = v20;
  *(v8 + 208) = v19;
  *(v8 + 216) = v21;
  *(v8 + 312) = a7;
  *(v8 + 192) = a6;
  *(v8 + 200) = a8;
  *(v8 + 176) = a4;
  *(v8 + 184) = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD68, &qword_24ACD37B0);
  *(v8 + 224) = v10;
  v11 = *(v10 - 8);
  *(v8 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  *(v8 + 248) = v13;
  v14 = *(v13 - 8);
  *(v8 + 256) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC930E8, a4, 0);
}

uint64_t sub_24AC930E8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 313);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6F8, &qword_24ACD5DD8);
  inited = swift_initStackObject();
  *(v0 + 280) = inited;
  *(inited + 16) = v6;
  sub_24AC2B5DC(v4, v1, &qword_27EF9E048, &qword_24ACD5910);
  v8 = type metadata accessor for Peripheral();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v6;

  v12 = swift_task_alloc();
  *(v0 + 288) = v12;
  *v12 = v0;
  v12[1] = sub_24AC93230;
  v13 = *(v0 + 272);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = *(v0 + 312);
  v17 = *(v0 + 176);

  return sub_24AC2D50C(v17, inited, v13, v16, v14, v15, v2 & 1);
}

uint64_t sub_24AC93230(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v8 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  v5 = v3[22];
  if (v1)
  {
    v6 = sub_24AC93610;
  }

  else
  {
    v6 = sub_24AC93348;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC93348()
{
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[22];
  v6 = *(v3 + 16);
  v6(v2, v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, v4);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  swift_beginAccess();
  swift_retain_n();
  v8 = *(v5 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v5 + v7);
  *(v5 + v7) = 0x8000000000000000;
  sub_24AC635A0(v1, v2, isUniquelyReferenced_nonNull_native);
  (*(v3 + 8))(v2, v4);
  *(v5 + v7) = v35;
  swift_endAccess();
  v10 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (*(v11 + 16))
  {
    v12 = v0[27];
    v13 = *(v5 + v10);

    v14 = sub_24AC2AC60(v12);
    if (v15)
    {
      v34 = v6;
      v16 = *(*(v11 + 56) + 8 * v14);

      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v0[29];
        v21 = *(v18 + 16);
        v19 = v18 + 16;
        v20 = v21;
        v22 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
        v23 = *(v19 + 56);
        do
        {
          v24 = v0[37];
          v25 = v0[30];
          v26 = v0[28];
          v20(v25, v22, v26);
          v0[21] = v24;

          sub_24ACD0760();
          (*(v19 - 8))(v25, v26);
          v22 += v23;
          --v17;
        }

        while (v17);
      }

      v6 = v34;
    }

    else
    {
    }
  }

  v27 = v0[37];
  v28 = v0[33];
  v6(v28, v0[27], v0[31]);
  swift_beginAccess();
  sub_24AC7F940(0, v28);
  swift_endAccess();

  v30 = v0[33];
  v29 = v0[34];
  v31 = v0[30];

  v32 = v0[1];

  return v32();
}

uint64_t sub_24AC93610()
{
  v1 = v0[38];
  v2 = v0[22];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  v6 = v1;
  if (v5)
  {
    v7 = v0[27];

    v8 = sub_24AC2AC60(v7);
    if (v9)
    {
      v10 = *(*(v4 + 56) + 8 * v8);

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v0[29];
        v15 = *(v12 + 16);
        v14 = v12 + 16;
        v13 = v15;
        v16 = v10 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
        v17 = *(v14 + 56);
        do
        {
          v18 = v0[38];
          v19 = v0[30];
          v20 = v0[28];
          v13(v19, v16, v20);
          v0[20] = v18;
          v21 = v18;
          sub_24ACD0750();
          (*(v14 - 8))(v19, v20);
          v16 += v17;
          --v11;
        }

        while (v11);
      }
    }
  }

  v22 = v0[38];
  v23 = v0[33];
  (*(v0[32] + 16))(v23, v0[27], v0[31]);
  swift_beginAccess();
  sub_24AC7F940(0, v23);
  swift_endAccess();

  v25 = v0[33];
  v24 = v0[34];
  v26 = v0[30];

  v27 = v0[1];

  return v27();
}

uint64_t sub_24AC93820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_24ACD07C0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  sub_24AC7EA6C(0, 0, v9, a4, v11);
}

uint64_t sub_24AC93940()
{
  v1 = *(v0 + 16);
  sub_24AC939A0();
  v2 = *(v0 + 8);

  return v2();
}

void *sub_24AC939A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v10 = sub_24ACD0490();
  __swift_project_value_buffer(v10, qword_2814AD8C0);
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24AC18000, v11, v12, "Cancelling connectionEvents stream", v13, 2u);
    MEMORY[0x24C22DC60](v13, -1, -1);
  }

  v14 = sub_24ACD0470();
  v15 = sub_24ACD0930();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24AC18000, v14, v15, "Calling CBCentralManager.registerForConnectionEvents() with nil", v16, 2u);
    MEMORY[0x24C22DC60](v16, -1, -1);
  }

  result = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (result)
  {
    [result registerForConnectionEventsWithOptions_];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v19 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream;
    swift_beginAccess();
    sub_24AC463C4(v9, v1 + v19, &unk_27EF9E548, &qword_24ACD5870);
    swift_endAccess();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
    swift_beginAccess();
    sub_24AC463C4(v5, v1 + v21, &unk_27EF9E558, qword_24ACD5878);
    swift_endAccess();
    v22 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask;
    if (*(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask))
    {
      v23 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
      sub_24ACD0830();

      v24 = *(v1 + v22);
    }

    *(v1 + v22) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC93D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  v5[7] = v10;
  v11 = *(v10 - 8);
  v5[8] = v11;
  v12 = *(v11 + 64) + 15;
  v5[9] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  v5[10] = v13;
  v14 = *(v13 - 8);
  v5[11] = v14;
  v15 = *(v14 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC93EDC, a4, 0);
}

uint64_t sub_24AC93EDC()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  swift_allocObject();
  swift_weakInit();
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v6);
  sub_24ACD0820();

  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v9 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
  v10 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject;
  v0[13] = v9;
  v0[14] = v10;
  v0[15] = 0;
  v11 = v0[2];
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_24AC940A8;
  v14 = v0[12];
  v15 = v0[10];

  return MEMORY[0x2822003E8](v0 + 17, v11, v9, v15);
}

uint64_t sub_24AC940A8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC941B8, v2, 0);
}

uint64_t sub_24AC941B8()
{
  v33 = v0;
  v1 = *(v0 + 136);
  if (v1 != 7)
  {
    v5 = *(v0 + 120);
    sub_24ACD0850();
    if (v5)
    {
      v6 = *(v0 + 72);
      v7 = *(v0 + 48);
      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

      v4 = *(v0 + 8);
      goto LABEL_5;
    }

    if ((v1 - 5) <= 1)
    {
      if (qword_2814AD8B0 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 24);
      v10 = sub_24ACD0490();
      __swift_project_value_buffer(v10, qword_2814AD8C0);

      v11 = sub_24ACD0470();
      v12 = sub_24ACD0930();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 24);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v32 = v15;
        *v14 = 136446210;
        type metadata accessor for CBConnectionEventMatchingOption(0);
        sub_24AC9FA1C(&qword_2814ACFC0, type metadata accessor for CBConnectionEventMatchingOption);
        v16 = sub_24ACD0510();
        v18 = sub_24AC29E20(v16, v17, &v32);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_24AC18000, v11, v12, "Calling CBCentralManager.registerForConnectionEvents(): %{public}s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x24C22DC60](v15, -1, -1);
        MEMORY[0x24C22DC60](v14, -1, -1);
      }

      v23 = *(*(v0 + 16) + *(v0 + 112));
      if (!v23)
      {
        __break(1u);
        return MEMORY[0x2822003E8](v19, v20, v21, v22);
      }

      v24 = *(v0 + 24);
      type metadata accessor for CBConnectionEventMatchingOption(0);
      sub_24AC9FA1C(&qword_2814ACFC0, type metadata accessor for CBConnectionEventMatchingOption);
      v25 = v23;
      v26 = sub_24ACD04F0();
      [v25 registerForConnectionEventsWithOptions_];
    }

    *(v0 + 120) = 0;
    v27 = *(v0 + 104);
    v28 = *(v0 + 16);
    v29 = *(MEMORY[0x277D85798] + 4);
    v30 = swift_task_alloc();
    *(v0 + 128) = v30;
    *v30 = v0;
    v30[1] = sub_24AC940A8;
    v31 = *(v0 + 96);
    v22 = *(v0 + 80);
    v19 = v0 + 136;
    v20 = v28;
    v21 = v27;

    return MEMORY[0x2822003E8](v19, v20, v21, v22);
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  v4 = *(v0 + 8);
LABEL_5:

  return v4();
}

uint64_t sub_24AC94588(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD68, &qword_24ACD37B0);
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC946F4, v1, 0);
}

uint64_t sub_24AC946F4()
{
  v93 = v0;
  v1 = v0;
  if (qword_2814AD8B0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v4 = sub_24ACD0490();
  __swift_project_value_buffer(v4, qword_2814AD8C0);

  v5 = v3;
  v6 = sub_24ACD0470();
  v7 = sub_24ACD0930();

  v91 = v1;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v1 + 128);
    v8 = *(v1 + 136);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v92 = v12;
    *v10 = 136446722;
    v13 = sub_24AC816B0();
    v15 = sub_24AC29E20(v13, v14, &v92);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    *(v10 + 22) = 2082;
    sub_24AC81B94((v91 + 248));
    v18 = sub_24ACD05A0();
    v20 = sub_24AC29E20(v18, v19, &v92);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_24AC18000, v6, v7, "%{public}s Invalidating due to %{public}@. Power state: %{public}s", v10, 0x20u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    v21 = v11;
    v1 = v91;
    MEMORY[0x24C22DC60](v21, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  v22 = *(v1 + 192);
  v23 = *(v1 + 168);
  v24 = *(v1 + 176);
  v25 = *(v1 + 136);
  v26 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v25 + v26, v22, &qword_27EF9E540, &qword_24ACD5868);
  v27 = (*(v24 + 48))(v22, 1, v23);
  v28 = *(v1 + 192);
  if (v27)
  {
    sub_24AC212F4(*(v1 + 192), &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v30 = *(v1 + 176);
    v29 = *(v1 + 184);
    v31 = *(v1 + 168);
    v32 = *(v1 + 128);
    (*(v30 + 16))(v29, *(v1 + 192), v31);
    sub_24AC212F4(v28, &qword_27EF9E540, &qword_24ACD5868);
    *(v1 + 120) = v32;
    v33 = v32;
    sub_24ACD08A0();
    (*(v30 + 8))(v29, v31);
  }

  v34 = *(v1 + 152);
  v35 = *(v1 + 136);
  v36 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  v83 = v36;
  v84 = v35;
  v37 = *(v35 + v36);
  v38 = *(v37 + 64);
  v86 = v37 + 64;
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v85 = (63 - v40) >> 6;
  v88 = v34;
  v42 = (v34 + 8);

  v44 = 0;
  v87 = v43;
  while (v41)
  {
LABEL_15:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v47 = *(v43 + 56);
    v48 = (v44 << 9) | (8 * v46);
    v49 = *(v47 + v48);
    v50 = *(v49 + 16);
    if (v50)
    {
      v89 = *(v47 + v48);
      v90 = v41;
      v51 = v49 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
      v52 = *(v88 + 72);
      v53 = *(v88 + 16);

      do
      {
        v54 = *(v1 + 160);
        v55 = *(v1 + 144);
        v56 = *(v91 + 128);
        v53(v54, v51, v55);
        *(v91 + 112) = v56;
        v57 = v56;
        v1 = v91;
        v58 = v57;
        sub_24ACD0750();
        (*v42)(v54, v55);
        v51 += v52;
        --v50;
      }

      while (v50);

      v43 = v87;
      v41 = v90;
    }
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v45 >= v85)
    {
      break;
    }

    v41 = *(v86 + 8 * v45);
    ++v44;
    if (v41)
    {
      v44 = v45;
      goto LABEL_15;
    }
  }

  v59 = *(v1 + 136);

  v60 = *(v84 + v83);
  v61 = MEMORY[0x277D84F98];
  *(v84 + v83) = MEMORY[0x277D84F98];

  v62 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  *(v1 + 200) = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  swift_beginAccess();
  v63 = *(v59 + v62);
  *(v1 + 208) = v63;
  v64 = *(v63 + 32);
  *(v1 + 249) = v64;
  v65 = -1;
  v66 = -1 << v64;
  if (-(-1 << v64) < 64)
  {
    v65 = ~(-1 << -v66);
  }

  v67 = v65 & *(v63 + 64);

  if (v67)
  {
    v69 = 0;
LABEL_26:
    *(v1 + 216) = v67;
    *(v1 + 224) = v69;
    *(v1 + 232) = *(*(v68 + 56) + ((v69 << 9) | (8 * __clz(__rbit64(v67)))));

    v71 = swift_task_alloc();
    *(v1 + 240) = v71;
    *v71 = v1;
    v71[1] = sub_24AC94D88;
    v72 = *(v1 + 128);

    return sub_24AC39224(v72);
  }

  else
  {
    v70 = 0;
    while (((63 - v66) >> 6) - 1 != v70)
    {
      v69 = v70 + 1;
      v67 = *(v68 + 8 * v70++ + 72);
      if (v67)
      {
        goto LABEL_26;
      }
    }

    v74 = *(v1 + 192);
    v75 = *(v1 + 200);
    v76 = *(v1 + 184);
    v77 = *(v1 + 160);
    v78 = *(v1 + 136);

    v79 = *(v78 + v75);
    *(v78 + v75) = v61;

    v80 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
    swift_beginAccess();
    v81 = *(v78 + v80);
    *(v78 + v80) = v61;

    v82 = *(v1 + 8);

    return v82();
  }
}

uint64_t sub_24AC94D88()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC94E98, v2, 0);
}

uint64_t sub_24AC94E98()
{
  v1 = *(v0 + 232);

  v3 = *(v0 + 224);
  v4 = (*(v0 + 216) - 1) & *(v0 + 216);
  if (v4)
  {
    v5 = *(v0 + 208);
LABEL_7:
    *(v0 + 216) = v4;
    *(v0 + 224) = v3;
    *(v0 + 232) = *(*(v5 + 56) + ((v3 << 9) | (8 * __clz(__rbit64(v4)))));

    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_24AC94D88;
    v8 = *(v0 + 128);

    return sub_24AC39224(v8);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= (((1 << *(v0 + 249)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v0 + 208);
      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 160);
    v14 = *(v0 + 136);

    v15 = *(v14 + v10);
    v16 = MEMORY[0x277D84F98];
    *(v14 + v10) = MEMORY[0x277D84F98];

    v17 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
    swift_beginAccess();
    v18 = *(v14 + v17);
    *(v14 + v17) = v16;

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_24AC95064(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E688, &unk_24ACD5CD0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC951A4, v1, 0);
}

uint64_t sub_24AC951A4()
{
  v118 = v0;
  v1 = v0[5];
  *(v0[6] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state) = v1;
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v36 = v0[6];
        v37 = sub_24ACD0490();
        __swift_project_value_buffer(v37, qword_2814AD8C0);

        v38 = sub_24ACD0470();
        v39 = sub_24ACD0930();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = v0[6];
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v117 = v42;
          *v41 = 136446210;
          v43 = sub_24AC816B0();
          v45 = sub_24AC29E20(v43, v44, &v117);

          *(v41 + 4) = v45;
          v0 = v116;
          _os_log_impl(&dword_24AC18000, v38, v39, "%{public}s state is .unauthorized.", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x24C22DC60](v42, -1, -1);
          MEMORY[0x24C22DC60](v41, -1, -1);
        }

        type metadata accessor for CentralManager.Error();
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
        v12 = swift_allocError();
        v0[20] = v12;
        swift_storeEnumTagMultiPayload();
        v13 = swift_task_alloc();
        v0[21] = v13;
        *v13 = v0;
        v14 = sub_24AC96478;
        goto LABEL_44;
      case 4:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v66 = v0[6];
        v67 = sub_24ACD0490();
        __swift_project_value_buffer(v67, qword_2814AD8C0);

        v68 = sub_24ACD0470();
        v69 = sub_24ACD0930();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = v0[6];
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v117 = v72;
          *v71 = 136446210;
          v73 = sub_24AC816B0();
          v75 = sub_24AC29E20(v73, v74, &v117);

          *(v71 + 4) = v75;
          v0 = v116;
          _os_log_impl(&dword_24AC18000, v68, v69, "%{public}s state is .poweredOff.", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x24C22DC60](v72, -1, -1);
          MEMORY[0x24C22DC60](v71, -1, -1);
        }

        type metadata accessor for CentralManager.Error();
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
        v12 = swift_allocError();
        v0[22] = v12;
        swift_storeEnumTagMultiPayload();
        v13 = swift_task_alloc();
        v0[23] = v13;
        *v13 = v0;
        v14 = sub_24AC965A4;
        goto LABEL_44;
      case 5:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v15 = v0[6];
        v16 = sub_24ACD0490();
        __swift_project_value_buffer(v16, qword_2814AD8C0);

        v17 = sub_24ACD0470();
        v18 = sub_24ACD0930();

        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_52;
        }

        v19 = v0[6];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v117 = v21;
        *v20 = 136446210;
        v22 = sub_24AC816B0();
        v24 = sub_24AC29E20(v22, v23, &v117);

        *(v20 + 4) = v24;
        v0 = v116;
        v25 = "%{public}s state is .poweredOn.";
        goto LABEL_33;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        if (qword_2814AD8B0 != -1)
        {
LABEL_73:
          swift_once();
        }

        v26 = v0[6];
        v27 = sub_24ACD0490();
        __swift_project_value_buffer(v27, qword_2814AD8C0);

        v28 = sub_24ACD0470();
        v29 = sub_24ACD0930();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = v0[6];
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v117 = v32;
          *v31 = 136446210;
          v33 = sub_24AC816B0();
          v35 = sub_24AC29E20(v33, v34, &v117);

          *(v31 + 4) = v35;
          v0 = v116;
          _os_log_impl(&dword_24AC18000, v28, v29, "%{public}s state is .unknown.", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x24C22DC60](v32, -1, -1);
          MEMORY[0x24C22DC60](v31, -1, -1);
        }

        type metadata accessor for CentralManager.Error();
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
        v12 = swift_allocError();
        v0[14] = v12;
        swift_storeEnumTagMultiPayload();
        v13 = swift_task_alloc();
        v0[15] = v13;
        *v13 = v0;
        v14 = sub_24AC960F4;
        goto LABEL_44;
      case 1:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v56 = v0[6];
        v57 = sub_24ACD0490();
        __swift_project_value_buffer(v57, qword_2814AD8C0);

        v58 = sub_24ACD0470();
        v59 = sub_24ACD0930();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = v0[6];
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v117 = v62;
          *v61 = 136446210;
          v63 = sub_24AC816B0();
          v65 = sub_24AC29E20(v63, v64, &v117);

          *(v61 + 4) = v65;
          v0 = v116;
          _os_log_impl(&dword_24AC18000, v58, v59, "%{public}s state is .resetting.", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x24C22DC60](v62, -1, -1);
          MEMORY[0x24C22DC60](v61, -1, -1);
        }

        type metadata accessor for CentralManager.Error();
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
        v12 = swift_allocError();
        v0[16] = v12;
        swift_storeEnumTagMultiPayload();
        v13 = swift_task_alloc();
        v0[17] = v13;
        *v13 = v0;
        v14 = sub_24AC96220;
        goto LABEL_44;
      case 2:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v2 = v0[6];
        v3 = sub_24ACD0490();
        __swift_project_value_buffer(v3, qword_2814AD8C0);

        v4 = sub_24ACD0470();
        v5 = sub_24ACD0930();

        if (os_log_type_enabled(v4, v5))
        {
          v6 = v0[6];
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v117 = v8;
          *v7 = 136446210;
          v9 = sub_24AC816B0();
          v11 = sub_24AC29E20(v9, v10, &v117);

          *(v7 + 4) = v11;
          v0 = v116;
          _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s state is .unsupported.", v7, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v8);
          MEMORY[0x24C22DC60](v8, -1, -1);
          MEMORY[0x24C22DC60](v7, -1, -1);
        }

        type metadata accessor for CentralManager.Error();
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
        v12 = swift_allocError();
        v0[18] = v12;
        swift_storeEnumTagMultiPayload();
        v13 = swift_task_alloc();
        v0[19] = v13;
        *v13 = v0;
        v14 = sub_24AC9634C;
LABEL_44:
        v13[1] = v14;
        v76 = v0[6];

        return sub_24AC94588(v12);
    }
  }

  if (qword_2814AD8F0 != -1)
  {
    swift_once();
    v1 = v0[5];
  }

  if (qword_2814AEE28 != v1)
  {
    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v78 = v0[6];
    v79 = sub_24ACD0490();
    __swift_project_value_buffer(v79, qword_2814AD8C0);

    v17 = sub_24ACD0470();
    v80 = sub_24ACD0910();

    if (!os_log_type_enabled(v17, v80))
    {
      goto LABEL_52;
    }

    v82 = v0[5];
    v81 = v0[6];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v117 = v21;
    *v20 = 136446466;
    v83 = sub_24AC816B0();
    v85 = sub_24AC29E20(v83, v84, &v117);

    *(v20 + 4) = v85;
    v0 = v116;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v82;
    v25 = "%{public}s Unknown CBCentralManager state: %ld";
    v52 = v80;
    v53 = v17;
    v54 = v20;
    v55 = 22;
    goto LABEL_51;
  }

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v46 = v0[6];
  v47 = sub_24ACD0490();
  __swift_project_value_buffer(v47, qword_2814AD8C0);

  v17 = sub_24ACD0470();
  v18 = sub_24ACD0930();

  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_52;
  }

  v48 = v0[6];
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v117 = v21;
  *v20 = 136446210;
  v49 = sub_24AC816B0();
  v51 = sub_24AC29E20(v49, v50, &v117);

  *(v20 + 4) = v51;
  v0 = v116;
  v25 = "%{public}s state is .restricted.";
LABEL_33:
  v52 = v18;
  v53 = v17;
  v54 = v20;
  v55 = 12;
LABEL_51:
  _os_log_impl(&dword_24AC18000, v53, v52, v25, v54, v55);
  __swift_destroy_boxed_opaque_existential_0(v21);
  MEMORY[0x24C22DC60](v21, -1, -1);
  MEMORY[0x24C22DC60](v20, -1, -1);
LABEL_52:

  v86 = v0[11];
  v87 = v0[8];
  v88 = v0[6];
  v89 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations;
  swift_beginAccess();
  v90 = *(v88 + v89);
  v93 = *(v90 + 64);
  v92 = v90 + 64;
  v91 = v93;
  v94 = -1;
  v95 = -1 << *(*(v88 + v89) + 32);
  if (-v95 < 64)
  {
    v94 = ~(-1 << -v95);
  }

  v96 = v94 & v91;
  v97 = (63 - v95) >> 6;
  v114 = v86;
  v115 = *(v88 + v89);
  v112 = (v86 + 8);
  v113 = (v87 + 8);

  v98 = 0;
  while (v96)
  {
    v0 = v116;
LABEL_66:
    v106 = v0[12];
    v105 = v0[13];
    v107 = v0[10];
    v99 = v0[5];
    (*(v114 + 16))(v105, *(v115 + 56) + *(v114 + 72) * (__clz(__rbit64(v96)) | (v98 << 6)), v107);
    (*(v114 + 32))(v106, v105, v107);
    if (v99 >= 6)
    {
      if (qword_2814AD8F0 != -1)
      {
        swift_once();
      }

      if (qword_2814AEE28 == v0[5])
      {
        LOBYTE(v99) = 6;
      }

      else
      {
        LOBYTE(v99) = 0;
      }
    }

    v96 &= v96 - 1;
    v100 = v0[12];
    v102 = v0[9];
    v101 = v0[10];
    v103 = v0[7];
    *(v0 + 192) = v99;
    sub_24ACD07F0();
    (*v113)(v102, v103);
    (*v112)(v100, v101);
  }

  v0 = v116;
  while (1)
  {
    v104 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v104 >= v97)
    {
      break;
    }

    v96 = *(v92 + 8 * v104);
    ++v98;
    if (v96)
    {
      v98 = v104;
      goto LABEL_66;
    }
  }

  v109 = v116[12];
  v108 = v116[13];
  v110 = v116[9];

  v111 = v116[1];

  return v111();
}

uint64_t sub_24AC960F4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24ACA25F0, v3, 0);
}

uint64_t sub_24AC96220()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24ACA25F0, v3, 0);
}

uint64_t sub_24AC9634C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24ACA25F0, v3, 0);
}

uint64_t sub_24AC96478()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24ACA25F0, v3, 0);
}

uint64_t sub_24AC965A4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24AC966D0, v3, 0);
}

uint64_t sub_24AC966D0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v28 = v1;
  v29 = v5;
  v26 = (v1 + 8);
  v27 = (v2 + 8);

  v12 = 0;
  while (v9)
  {
LABEL_13:
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 80);
    v13 = *(v0 + 40);
    (*(v28 + 16))(v19, *(v29 + 56) + *(v28 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v21);
    (*(v28 + 32))(v20, v19, v21);
    if (v13 >= 6)
    {
      if (qword_2814AD8F0 != -1)
      {
        swift_once();
      }

      if (qword_2814AEE28 == *(v0 + 40))
      {
        LOBYTE(v13) = 6;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    v9 &= v9 - 1;
    v14 = *(v0 + 96);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 56);
    *(v0 + 192) = v13;
    sub_24ACD07F0();
    (*v27)(v16, v17);
    result = (*v26)(v14, v15);
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v18);
    ++v12;
    if (v9)
    {
      v12 = v18;
      goto LABEL_13;
    }
  }

  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 72);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24AC96934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[66] = v3;
  v4[65] = a3;
  v4[63] = a1;
  v4[64] = a2;
  v4[67] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v4[68] = v5;
  v6 = *(v5 - 8);
  v4[69] = v6;
  v7 = *(v6 + 64) + 15;
  v4[70] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868) - 8) + 64) + 15;
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6B8, &qword_24ACD5D78) - 8) + 64) + 15;
  v4[73] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8) - 8) + 64) + 15;
  v4[74] = swift_task_alloc();
  v11 = sub_24ACD0090();
  v4[75] = v11;
  v12 = *(v11 - 8);
  v4[76] = v12;
  v13 = *(v12 + 64) + 15;
  v4[77] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v15 = sub_24ACD0360();
  v4[80] = v15;
  v16 = *(v15 - 8);
  v4[81] = v16;
  v17 = *(v16 + 64) + 15;
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v18 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  v4[84] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v4[85] = v19;
  v20 = *(v19 - 8);
  v4[86] = v20;
  v4[87] = *(v20 + 64);
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC96CA0, v3, 0);
}

uint64_t sub_24AC96CA0()
{
  v171 = v0;
  if (qword_27EF9DC60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = sub_24ACD0490();
  *(v0 + 728) = v3;
  __swift_project_value_buffer(v3, qword_27EF9E528);
  v4 = v2;

  v5 = sub_24ACD0470();
  v6 = sub_24ACD0900();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 520);
    v9 = *(v0 + 504);
    v8 = *(v0 + 512);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v170 = v12;
    *v10 = 138412802;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
    v14 = sub_24ACD0510();
    v16 = sub_24AC29E20(v14, v15, &v170);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v7;
    _os_log_impl(&dword_24AC18000, v5, v6, "didDiscover: %@ advertisementData: %s, rssi: %ld", v10, 0x20u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  v17 = *(v0 + 512);
  v18 = *MEMORY[0x277CBDD40];
  v19 = sub_24ACD0590();
  if (!*(v17 + 16))
  {

LABEL_14:
    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 512);
    __swift_project_value_buffer(v3, qword_2814AD8C0);

    v48 = sub_24ACD0470();
    v49 = sub_24ACD0910();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 512);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v170 = v52;
      *v51 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
      v53 = sub_24ACD0510();
      v55 = sub_24AC29E20(v53, v54, &v170);

      *(v51 + 4) = v55;
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C22DC60](v52, -1, -1);
      MEMORY[0x24C22DC60](v51, -1, -1);
    }

    v56 = *(v0 + 720);
    v57 = *(v0 + 712);
    v58 = *(v0 + 704);
    v59 = *(v0 + 672);
    v60 = *(v0 + 664);
    v61 = *(v0 + 656);
    v62 = *(v0 + 632);
    v63 = *(v0 + 624);
    v64 = *(v0 + 616);
    v65 = *(v0 + 592);
    v161 = *(v0 + 584);
    v163 = *(v0 + 576);
    v165 = *(v0 + 568);
    v166 = *(v0 + 560);

    v66 = *(v0 + 8);

    return v66();
  }

  v21 = *(v0 + 512);
  v22 = sub_24AC2AB50(v19, v20);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_14;
  }

  v25 = *(v0 + 512);
  sub_24AC2B940(*(v25 + 56) + 32 * v22, v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v160 = v25;
  v26 = *(v0 + 720);
  v27 = *(v0 + 672);
  v28 = *(v0 + 664);
  v29 = *(v0 + 528);
  v30 = *(v0 + 488);
  v31 = [*(v0 + 504) identifier];
  sub_24ACD03F0();

  v164 = type metadata accessor for Peripheral();
  sub_24ACD0000();
  sub_24ACD0310();
  v32 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  *(v0 + 736) = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  swift_beginAccess();
  v162 = v29;
  v33 = *(v29 + v32);
  if (*(v33 + 16))
  {
    v34 = *(v0 + 720);
    v35 = *(v29 + v32);

    v36 = sub_24AC2AC60(v34);
    if (v37)
    {
      v38 = *(*(v33 + 56) + 8 * v36);
      swift_retain_n();

      v39 = sub_24ACD0470();
      v40 = sub_24ACD08F0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v170 = v42;
        *v41 = 136315138;

        v43 = sub_24AC39074();
        v45 = v44;

        v46 = sub_24AC29E20(v43, v45, &v170);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_24AC18000, v39, v40, "centralManager didDiscover existing: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x24C22DC60](v42, -1, -1);
        MEMORY[0x24C22DC60](v41, -1, -1);
      }

      goto LABEL_55;
    }
  }

  v68 = *(v0 + 528);
  v69 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  v159 = v68;
  v70 = *(v68 + v69);
  if (*(v70 + 16))
  {
    v71 = *(v0 + 720);

    v72 = sub_24AC2AC60(v71);
    if (v73)
    {
      v38 = *(*(v70 + 56) + 8 * v72);
      swift_retain_n();

      v74 = sub_24ACD0470();
      v75 = sub_24ACD08F0();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v170 = v77;
        *v76 = 136315138;

        v78 = sub_24AC39074();
        v80 = v79;

        v81 = sub_24AC29E20(v78, v80, &v170);

        *(v76 + 4) = v81;
        _os_log_impl(&dword_24AC18000, v74, v75, "centralManager didDiscover connected peripheral: %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x24C22DC60](v77, -1, -1);
        MEMORY[0x24C22DC60](v76, -1, -1);
      }

      goto LABEL_54;
    }
  }

  v82 = *MEMORY[0x277CBDCE0];
  v83 = sub_24ACD0590();
  if (!*(v17 + 16))
  {
    goto LABEL_36;
  }

  v85 = *(v0 + 512);
  v86 = sub_24AC2AB50(v83, v84);
  v88 = v87;

  if ((v88 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_24AC2B940(*(v160 + 56) + 32 * v86, v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v90 = *(v0 + 432);
  v89 = *(v0 + 440);
  v91 = *MEMORY[0x277CBDCE8];
  v92 = sub_24ACD0590();
  if (!*(v17 + 16))
  {
    sub_24AC46698(v90, v89);
LABEL_36:

    goto LABEL_37;
  }

  v158 = v90;
  v167 = v89;
  v94 = *(v0 + 512);
  v95 = sub_24AC2AB50(v92, v93);
  v97 = v96;

  if (v97 & 1) != 0 && (sub_24AC2B940(*(v160 + 56) + 32 * v95, v0 + 48), (swift_dynamicCast()))
  {
    v98 = *(v0 + 624);
    v99 = *(v0 + 608);
    v100 = *(v0 + 600);
    v101 = *(v0 + 496);
    sub_24ACD0070();
    if ((*(v99 + 48))(v98, 1, v100) != 1)
    {
      v169 = *(v0 + 632);
      v155 = *(v0 + 616);
      v156 = *(v0 + 600);
      v157 = *(*(v0 + 608) + 32);
      v157(v155, *(v0 + 624), v156);
      v157(v169, v155, v156);
      v105 = 0;
      goto LABEL_42;
    }

    sub_24AC212F4(*(v0 + 624), &qword_27EF9E048, &qword_24ACD5910);
  }

  else
  {
    sub_24AC46698(v158, v167);
  }

LABEL_37:
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_2814AD8C0);
  v102 = sub_24ACD0470();
  v103 = sub_24ACD08F0();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_24AC18000, v102, v103, "No MAC address available from advertisementData", v104, 2u);
    MEMORY[0x24C22DC60](v104, -1, -1);
  }

  v105 = 1;
LABEL_42:
  (*(*(v0 + 608) + 56))(*(v0 + 632), v105, 1, *(v0 + 600));
  v106 = *MEMORY[0x277CBDCF0];
  v107 = sub_24ACD0590();
  if (!*(v17 + 16))
  {

LABEL_47:
    v113 = 0;
    goto LABEL_48;
  }

  v109 = *(v0 + 512);
  v110 = sub_24AC2AB50(v107, v108);
  v112 = v111;

  if ((v112 & 1) == 0)
  {
    goto LABEL_47;
  }

  sub_24AC2B940(*(v160 + 56) + 32 * v110, v0 + 112);
  if (!swift_dynamicCast())
  {
    goto LABEL_47;
  }

  v113 = *(v0 + 457);
LABEL_48:
  v114 = *(v0 + 712);
  v115 = *(v0 + 672);
  v116 = *(v0 + 512);
  v117 = [*(v0 + 504) identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  v118 = *(v162 + v32);
  if (*(v118 + 16))
  {
    v119 = *(v0 + 712);
    v120 = *(v162 + v32);

    v121 = sub_24AC2AC60(v119);
    if (v122)
    {
LABEL_53:
      v38 = *(*(v118 + 56) + 8 * v121);

      v126 = *(v0 + 632);
      (*(*(v0 + 688) + 8))(*(v0 + 712), *(v0 + 680));
      sub_24AC212F4(v126, &qword_27EF9E048, &qword_24ACD5910);
LABEL_54:

LABEL_55:
      *(v0 + 792) = v38;

      return MEMORY[0x2822009F8](sub_24AC986E8, v38, 0);
    }
  }

  v118 = *(v159 + v69);
  if (*(v118 + 16))
  {
    v123 = *(v0 + 712);
    v124 = *(v159 + v69);

    v121 = sub_24AC2AC60(v123);
    if (v125)
    {
      goto LABEL_53;
    }
  }

  v127 = *(v0 + 528);
  v128 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  if (*(*(v127 + v128) + 16) && (v129 = *(v0 + 712), v130 = *(v127 + v128), , sub_24AC2AC60(v129), LOBYTE(v129) = v131, , (v129 & 1) != 0))
  {
    v132 = *(v0 + 712);
    v133 = *(v0 + 528);
    v134 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
    v135 = swift_task_alloc();
    *(v0 + 768) = v135;
    *(v135 + 16) = v133;
    *(v135 + 24) = v132;
    v136 = *(MEMORY[0x277D85A40] + 4);
    v137 = swift_task_alloc();
    *(v0 + 776) = v137;
    *v137 = v0;
    v137[1] = sub_24AC985C0;
    v138 = sub_24ACA261C;
    v139 = v0 + 480;
    v140 = v133;
    v141 = v134;
    v142 = v135;
  }

  else
  {
    v143 = *(v0 + 712);
    v168 = v116;
    v144 = *(v0 + 632);
    v145 = *(v0 + 528);
    v146 = *(v0 + 520);
    v147 = v113;
    v148 = *(v0 + 504);
    swift_beginAccess();
    v149 = *(v127 + v128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170 = *(v127 + v128);
    *(v127 + v128) = 0x8000000000000000;
    sub_24AC63DEC(MEMORY[0x277D84F90], v143, isUniquelyReferenced_nonNull_native);
    *(v127 + v128) = v170;
    swift_endAccess();
    v151 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
    v152 = swift_task_alloc();
    *(v0 + 744) = v152;
    *(v152 + 16) = v145;
    *(v152 + 24) = v143;
    *(v152 + 32) = v148;
    *(v152 + 40) = v144;
    *(v152 + 48) = v147;
    *(v152 + 56) = v168;
    *(v152 + 64) = v146;
    *(v152 + 72) = 0;
    v153 = *(MEMORY[0x277D85A40] + 4);
    v154 = swift_task_alloc();
    *(v0 + 752) = v154;
    *v154 = v0;
    v154[1] = sub_24AC97BD0;
    v138 = sub_24ACA2608;
    v139 = v0 + 464;
    v140 = v145;
    v141 = v151;
    v142 = v152;
  }

  return MEMORY[0x2822008A0](v139, v140, v141, 0xD000000000000055, 0x800000024ACDA2F0, v138, v142, v164);
}

uint64_t sub_24AC97BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v9 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v4 = *(v2 + 528);
    v5 = sub_24AC98208;
  }

  else
  {
    v6 = *(v2 + 744);
    v7 = *(v2 + 528);

    v5 = sub_24AC9815C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC97CF8()
{
  v1 = v0[60];
  v2 = v0[79];
  (*(v0[86] + 8))(v0[89], v0[85]);
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);
  v0[99] = v1;

  return MEMORY[0x2822009F8](sub_24AC986E8, v1, 0);
}

uint64_t sub_24AC97DA4()
{
  v1 = v0[96];

  v2 = v0[98];
  v3 = v0[90];
  v4 = v0[85];
  v5 = v0[83];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[79];
  v9 = *(v0[86] + 8);
  v9(v0[89], v4);
  (*(v6 + 8))(v5, v7);
  v9(v3, v4);
  sub_24AC212F4(v8, &qword_27EF9E048, &qword_24ACD5910);
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[91], qword_2814AD8C0);
  v10 = v2;
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0910();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_24ACD0210();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_24AC18000, v11, v12, "didDiscover error: %@", v13, 0xCu);
    sub_24AC212F4(v14, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v14, -1, -1);
    MEMORY[0x24C22DC60](v13, -1, -1);
  }

  v16 = v0[71];
  v17 = v0[69];
  v18 = v0[68];
  v19 = v0[66];

  v20 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v19 + v20, v16, &qword_27EF9E540, &qword_24ACD5868);
  v21 = (*(v17 + 48))(v16, 1, v18);
  v22 = v0[71];
  if (v21)
  {

    sub_24AC212F4(v22, &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v23 = v0[70];
    v24 = v0[69];
    v25 = v0[68];
    (*(v24 + 16))(v23, v0[71], v25);
    sub_24AC212F4(v22, &qword_27EF9E540, &qword_24ACD5868);
    v0[59] = v2;
    sub_24ACD08A0();
    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[84];
  v30 = v0[83];
  v31 = v0[82];
  v32 = v0[79];
  v33 = v0[78];
  v34 = v0[77];
  v35 = v0[74];
  v38 = v0[73];
  v39 = v0[72];
  v40 = v0[71];
  v41 = v0[70];

  v36 = v0[1];

  return v36();
}

uint64_t sub_24AC9815C()
{
  v1 = v0[58];
  v2 = v0[79];
  (*(v0[86] + 8))(v0[89], v0[85]);
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);
  v0[99] = v1;

  return MEMORY[0x2822009F8](sub_24AC986E8, v1, 0);
}

uint64_t sub_24AC98208()
{
  v1 = v0[93];

  v2 = v0[95];
  v3 = v0[90];
  v4 = v0[85];
  v5 = v0[83];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[79];
  v9 = *(v0[86] + 8);
  v9(v0[89], v4);
  (*(v6 + 8))(v5, v7);
  v9(v3, v4);
  sub_24AC212F4(v8, &qword_27EF9E048, &qword_24ACD5910);
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[91], qword_2814AD8C0);
  v10 = v2;
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0910();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_24ACD0210();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_24AC18000, v11, v12, "didDiscover error: %@", v13, 0xCu);
    sub_24AC212F4(v14, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v14, -1, -1);
    MEMORY[0x24C22DC60](v13, -1, -1);
  }

  v16 = v0[71];
  v17 = v0[69];
  v18 = v0[68];
  v19 = v0[66];

  v20 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v19 + v20, v16, &qword_27EF9E540, &qword_24ACD5868);
  v21 = (*(v17 + 48))(v16, 1, v18);
  v22 = v0[71];
  if (v21)
  {

    sub_24AC212F4(v22, &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v23 = v0[70];
    v24 = v0[69];
    v25 = v0[68];
    (*(v24 + 16))(v23, v0[71], v25);
    sub_24AC212F4(v22, &qword_27EF9E540, &qword_24ACD5868);
    v0[59] = v2;
    sub_24ACD08A0();
    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[84];
  v30 = v0[83];
  v31 = v0[82];
  v32 = v0[79];
  v33 = v0[78];
  v34 = v0[77];
  v35 = v0[74];
  v38 = v0[73];
  v39 = v0[72];
  v40 = v0[71];
  v41 = v0[70];

  v36 = v0[1];

  return v36();
}

uint64_t sub_24AC985C0()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v9 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v4 = *(v2 + 528);
    v5 = sub_24AC97DA4;
  }

  else
  {
    v6 = *(v2 + 768);
    v7 = *(v2 + 528);

    v5 = sub_24AC97CF8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC986E8()
{
  v1 = v0[99];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[64];
  (*(v3 + 16))(v2, v0[83], v4);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v8, v2, v4);
  swift_endAccess();
  v9 = v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  swift_beginAccess();
  *v9 = v6;
  *(v9 + 8) = 0;
  v10 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = v7;

  return MEMORY[0x2822009F8](sub_24AC98844, v5, 0);
}

uint64_t sub_24AC98844()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 736);
  v3 = *(v0 + 720);
  v4 = *(v0 + 528);
  swift_beginAccess();
  v5 = *(v4 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(v4 + v2);
  *(v4 + v2) = 0x8000000000000000;
  sub_24AC635A0(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v2) = v75;
  swift_endAccess();
  v7 = (v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval);
  if ((*(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval + 16) & 1) == 0)
  {
    v8 = *(v0 + 720);
    v9 = *(v0 + 704);
    v10 = *(v0 + 696);
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 592);
    v14 = *(v0 + 528);
    v69 = v7[1];
    v72 = *(v0 + 536);
    v66 = *v7;
    v15 = sub_24ACD07C0();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    (*(v11 + 16))(v9, v8, v12);
    v16 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
    v17 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 2) = v14;
    *(v19 + 3) = v16;
    *(v19 + 4) = v66;
    *(v19 + 5) = v69;
    *(v19 + 6) = v14;
    (*(v11 + 32))(&v19[v17], v9, v12);
    *&v19[v18] = v72;
    swift_retain_n();
    v20 = sub_24AC7F080(0, 0, v13, &unk_24ACD5D90, v19);
    v21 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectTasks;
    swift_beginAccess();
    v22 = *(v14 + v21);
    if (*(v22 + 16))
    {
      v23 = *(v0 + 720);
      v24 = *(v14 + v21);

      v25 = sub_24AC2AC60(v23);
      if (v26)
      {
        v27 = *(*(v22 + 56) + 8 * v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
        sub_24ACD0830();
      }

      else
      {
      }
    }

    v28 = *(v0 + 720);
    swift_beginAccess();

    v29 = *(v14 + v21);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v14 + v21);
    *(v14 + v21) = 0x8000000000000000;
    sub_24AC63FC0(v20, v28, v30);
    *(v14 + v21) = v76;
    swift_endAccess();
  }

  v31 = *(v0 + 576);
  v32 = *(v0 + 552);
  v33 = *(v0 + 544);
  v34 = *(v0 + 528);
  v35 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v34 + v35, v31, &qword_27EF9E540, &qword_24ACD5868);
  v36 = (*(v32 + 48))(v31, 1, v33);
  v37 = *(v0 + 792);
  v38 = *(v0 + 720);
  v39 = *(v0 + 688);
  v40 = *(v0 + 680);
  v41 = *(v0 + 664);
  v42 = *(v0 + 648);
  v43 = *(v0 + 640);
  if (v36)
  {
    v44 = *(v0 + 576);
    v45 = *(v0 + 792);

    (*(v42 + 8))(v41, v43);
    (*(v39 + 8))(v38, v40);
    sub_24AC212F4(v44, &qword_27EF9E540, &qword_24ACD5868);
    v46 = 1;
  }

  else
  {
    v67 = *(v0 + 584);
    v70 = *(v0 + 680);
    v73 = *(v0 + 720);
    v47 = *(v0 + 576);
    v48 = *(v0 + 560);
    v49 = *(v0 + 552);
    v50 = *(v0 + 544);
    (*(v49 + 16))(v48, v47, v50);
    sub_24AC212F4(v47, &qword_27EF9E540, &qword_24ACD5868);
    *(v0 + 448) = v37;
    *(v0 + 456) = 0;
    sub_24ACD0890();
    (*(v49 + 8))(v48, v50);
    (*(v42 + 8))(v41, v43);
    (*(v39 + 8))(v73, v70);
    v46 = 0;
  }

  v51 = *(v0 + 584);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E6C0, &qword_24ACD5D80);
  (*(*(v52 - 8) + 56))(v51, v46, 1, v52);
  sub_24AC212F4(v51, &qword_27EF9E6B8, &qword_24ACD5D78);
  v53 = *(v0 + 720);
  v54 = *(v0 + 712);
  v55 = *(v0 + 704);
  v56 = *(v0 + 672);
  v57 = *(v0 + 664);
  v58 = *(v0 + 656);
  v59 = *(v0 + 632);
  v60 = *(v0 + 624);
  v61 = *(v0 + 616);
  v62 = *(v0 + 592);
  v65 = *(v0 + 584);
  v68 = *(v0 + 576);
  v71 = *(v0 + 568);
  v74 = *(v0 + 560);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_24AC98E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v11 = *(v10 + 64) + 15;
  v7[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868) - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6B8, &qword_24ACD5D78) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v7[22] = v14;
  v15 = *(v14 - 8);
  v7[23] = v15;
  v16 = *(v15 + 64) + 15;
  v7[24] = swift_task_alloc();
  v17 = sub_24ACD0AF0();
  v7[25] = v17;
  v18 = *(v17 - 8);
  v7[26] = v18;
  v19 = *(v18 + 64) + 15;
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC99048, a6, 0);
}

uint64_t sub_24AC99048()
{
  v1 = v0[27];
  sub_24ACD0CB0();
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_24AC99108;
  v3 = v0[27];
  v5 = v0[13];
  v4 = v0[14];

  return sub_24AC59658(v5, v4, 0, 0, 1);
}

uint64_t sub_24AC99108()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 232) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 120);
  if (v0)
  {
    v9 = sub_24AC99760;
  }

  else
  {
    v9 = sub_24AC99290;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AC99290()
{
  v51 = v0;
  v1 = *(v0 + 232);
  sub_24ACD0850();
  if (v1)
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 192);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 152);

    v7 = *(v0 + 8);
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (*(v10 + 16))
    {
      v11 = *(v0 + 128);
      v12 = *(v8 + v9);

      v13 = sub_24AC2AC60(v11);
      if (v14)
      {
        v15 = *(*(v10 + 56) + 8 * v13);

        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v16 = sub_24ACD0490();
        __swift_project_value_buffer(v16, qword_2814AD8C0);

        v17 = sub_24ACD0470();
        v18 = sub_24ACD0930();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = *(v0 + 104);
          v48 = *(v0 + 112);
          v20 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50[0] = v49;
          *v20 = 136315394;

          v21 = sub_24AC39074();
          v23 = v22;

          v24 = sub_24AC29E20(v21, v23, v50);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          v25 = sub_24ACD0E40();
          v27 = sub_24AC29E20(v25, v26, v50);

          *(v20 + 14) = v27;
          _os_log_impl(&dword_24AC18000, v17, v18, "Garbage collecting %s after %s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C22DC60](v49, -1, -1);
          MEMORY[0x24C22DC60](v20, -1, -1);
        }

        v28 = *(v0 + 192);
        v29 = *(v0 + 160);
        v30 = *(v0 + 136);
        v31 = *(v0 + 144);
        v32 = *(v0 + 120);
        (*(*(v0 + 184) + 16))(v28, *(v0 + 128), *(v0 + 176));
        swift_beginAccess();
        sub_24AC7F518(0, v28, sub_24AC635A0, sub_24AC5E814);
        swift_endAccess();
        v33 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
        swift_beginAccess();
        sub_24AC2B5DC(v32 + v33, v29, &qword_27EF9E540, &qword_24ACD5868);
        if ((*(v31 + 48))(v29, 1, v30))
        {
          v34 = *(v0 + 160);

          sub_24AC212F4(v34, &qword_27EF9E540, &qword_24ACD5868);
          v35 = 1;
        }

        else
        {
          v36 = *(v0 + 160);
          v38 = *(v0 + 144);
          v37 = *(v0 + 152);
          v39 = *(v0 + 136);
          (*(v38 + 16))(v37, v36, v39);
          sub_24AC212F4(v36, &qword_27EF9E540, &qword_24ACD5868);
          *(v0 + 88) = v15;
          *(v0 + 96) = 1;
          sub_24ACD0890();
          (*(v38 + 8))(v37, v39);
          v35 = 0;
        }

        v40 = *(v0 + 168);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E6C0, &qword_24ACD5D80);
        (*(*(v41 - 8) + 56))(v40, v35, 1, v41);
        sub_24AC212F4(v40, &qword_27EF9E6B8, &qword_24ACD5D78);
      }

      else
      {
      }
    }

    v42 = *(v0 + 216);
    v43 = *(v0 + 192);
    v45 = *(v0 + 160);
    v44 = *(v0 + 168);
    v46 = *(v0 + 152);

    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_24AC99760()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AC99800(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC99928, v1, 0);
}

uint64_t sub_24AC99928()
{
  v36 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  type metadata accessor for Peripheral();
  sub_24ACD0000();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (*(v6 + 16))
  {
    v7 = *(v0 + 96);

    v8 = sub_24AC2AC60(v7);
    if (v9)
    {
      v11 = *(v0 + 88);
      v10 = *(v0 + 96);
      v12 = *(v0 + 80);
      *(v0 + 104) = *(*(v6 + 56) + 8 * v8);
      v13 = *(v11 + 8);

      v13(v10, v12);

      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = sub_24AC99CCC;

      return sub_24AC80CDC();
    }
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 40);
  v17 = sub_24ACD0490();
  __swift_project_value_buffer(v17, qword_2814AD8C0);
  v18 = v16;
  v19 = sub_24ACD0470();
  v20 = sub_24ACD0910();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 56);
    v24 = *(v0 + 40);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v25 = 136315138;
    v27 = [v24 identifier];
    sub_24ACD03F0();

    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v28 = sub_24ACD0C20();
    v30 = v29;
    (*(v22 + 8))(v21, v23);
    v31 = sub_24AC29E20(v28, v30, &v35);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_24AC18000, v19, v20, "Unable to find Peripheral for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x24C22DC60](v26, -1, -1);
    MEMORY[0x24C22DC60](v25, -1, -1);
  }

  v32 = *(v0 + 96);
  v33 = *(v0 + 72);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_24AC99CCC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x2822009F8](sub_24AC99DE4, v5, 0);
}

uint64_t sub_24AC99DE4()
{
  v15 = v0;
  if (qword_27EF9DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E528);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0930();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_24AC29E20(v7, v6, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_24AC18000, v3, v4, "didConnect: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C22DC60](v9, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  else
  {
  }

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_24AC99FC0;
  v12 = v0[13];

  return sub_24AC3A08C();
}

uint64_t sub_24AC99FC0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC9A0D0, v2, 0);
}

uint64_t sub_24AC9A0D0()
{
  v1 = v0[13];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC9A144(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24ACD0420();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC9A27C, v2, 0);
}

uint64_t sub_24AC9A27C()
{
  v66 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = [*(v0 + 64) identifier];
  sub_24ACD03F0();

  type metadata accessor for Peripheral();
  sub_24ACD0000();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (*(v6 + 16))
  {
    v7 = *(v0 + 136);
    v8 = *(v3 + v5);

    v9 = sub_24AC2AC60(v7);
    if (v10)
    {
      v11 = *(v0 + 136);
      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = *(v0 + 72);
      v15 = *(*(v6 + 56) + 8 * v9);
      *(v0 + 144) = v15;
      v16 = *(v13 + 8);

      v16(v11, v12);

      if (v14)
      {
        v17 = *(v0 + 72);
        v18 = v17;
        if (qword_27EF9DC60 != -1)
        {
          swift_once();
        }

        v19 = sub_24ACD0490();
        __swift_project_value_buffer(v19, qword_27EF9E528);

        v20 = v17;
        v21 = sub_24ACD0470();
        v22 = sub_24ACD0910();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = v64;
          *v23 = 136315394;

          v24 = sub_24AC39074();
          v26 = v25;

          v27 = sub_24AC29E20(v24, v26, &v65);

          *(v23 + 4) = v27;
          *(v23 + 12) = 2112;
          v28 = v17;
          v29 = _swift_stdlib_bridgeErrorToNSError();
          *(v23 + 14) = v29;
          *v63 = v29;
          _os_log_impl(&dword_24AC18000, v21, v22, "didFailToConnect: %s ERROR: %@", v23, 0x16u);
          sub_24AC212F4(v63, &qword_27EF9E6A0, &qword_24ACD5590);
          MEMORY[0x24C22DC60](v63, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x24C22DC60](v64, -1, -1);
          MEMORY[0x24C22DC60](v23, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        if (qword_27EF9DC60 != -1)
        {
          swift_once();
        }

        v51 = sub_24ACD0490();
        __swift_project_value_buffer(v51, qword_27EF9E528);

        v52 = sub_24ACD0470();
        v53 = sub_24ACD0910();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v65 = v55;
          *v54 = 136315138;

          v56 = sub_24AC39074();
          v58 = v57;

          v59 = sub_24AC29E20(v56, v58, &v65);

          *(v54 + 4) = v59;
          _os_log_impl(&dword_24AC18000, v52, v53, "didFailToConnect: %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v55);
          MEMORY[0x24C22DC60](v55, -1, -1);
          MEMORY[0x24C22DC60](v54, -1, -1);
        }
      }

      v60 = *(v0 + 128);
      (*(*(v0 + 120) + 16))(v60, v15 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, *(v0 + 112));
      swift_beginAccess();
      sub_24AC7F518(0, v60, sub_24AC635A0, sub_24AC5E814);
      swift_endAccess();
      v61 = swift_task_alloc();
      *(v0 + 152) = v61;
      *v61 = v0;
      v61[1] = sub_24AC9A9B0;
      v62 = *(v0 + 72);

      return sub_24AC3A510(v62);
    }
  }

  (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 64);
  v31 = sub_24ACD0490();
  __swift_project_value_buffer(v31, qword_2814AD8C0);
  v32 = v30;
  v33 = sub_24ACD0470();
  v34 = sub_24ACD0910();

  if (os_log_type_enabled(v33, v34))
  {
    v36 = *(v0 + 96);
    v35 = *(v0 + 104);
    v37 = *(v0 + 88);
    v38 = *(v0 + 64);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v65 = v40;
    *v39 = 136315138;
    v41 = [v38 0x278FFD678];
    sub_24ACD03F0();

    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v42 = sub_24ACD0C20();
    v44 = v43;
    (*(v36 + 8))(v35, v37);
    v45 = sub_24AC29E20(v42, v44, &v65);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_24AC18000, v33, v34, "Unable to find Peripheral for %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C22DC60](v40, -1, -1);
    MEMORY[0x24C22DC60](v39, -1, -1);
  }

  v47 = *(v0 + 128);
  v46 = *(v0 + 136);
  v48 = *(v0 + 104);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_24AC9A9B0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC9AAC0, v2, 0);
}

uint64_t sub_24AC9AAC0()
{
  v1 = v0[18];

  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC9AB3C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_24ACD0420();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC9AC74, v2, 0);
}

uint64_t sub_24AC9AC74()
{
  v70 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = [*(v0 + 88) identifier];
  sub_24ACD03F0();

  type metadata accessor for Peripheral();
  sub_24ACD0000();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (*(v6 + 16))
  {
    v7 = *(v0 + 160);
    v8 = *(v3 + v5);

    v9 = sub_24AC2AC60(v7);
    if (v10)
    {
      v11 = *(v0 + 160);
      v12 = *(v0 + 136);
      v13 = *(v0 + 144);
      v14 = *(v0 + 96);
      v15 = *(*(v6 + 56) + 8 * v9);
      *(v0 + 168) = v15;
      v16 = *(v13 + 8);

      v16(v11, v12);

      if (v14)
      {
        v17 = *(v0 + 96);
        v18 = v17;
        if (qword_27EF9DC60 != -1)
        {
          swift_once();
        }

        v19 = sub_24ACD0490();
        __swift_project_value_buffer(v19, qword_27EF9E528);

        v20 = v17;
        v21 = sub_24ACD0470();
        v22 = sub_24ACD0930();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v69 = v25;
          *v23 = 136315394;

          v26 = sub_24AC39074();
          v28 = v27;

          v29 = sub_24AC29E20(v26, v28, &v69);

          *(v23 + 4) = v29;
          *(v23 + 12) = 2112;
          v30 = v17;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v23 + 14) = v31;
          *v24 = v31;
          _os_log_impl(&dword_24AC18000, v21, v22, "didDisconnectPeripheral: %s, ERROR: %@", v23, 0x16u);
          sub_24AC212F4(v24, &qword_27EF9E6A0, &qword_24ACD5590);
          MEMORY[0x24C22DC60](v24, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x24C22DC60](v25, -1, -1);
          MEMORY[0x24C22DC60](v23, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        if (qword_27EF9DC60 != -1)
        {
          swift_once();
        }

        v53 = sub_24ACD0490();
        __swift_project_value_buffer(v53, qword_27EF9E528);

        v54 = sub_24ACD0470();
        v55 = sub_24ACD0930();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v69 = v57;
          *v56 = 136315138;

          v58 = sub_24AC39074();
          v60 = v59;

          v61 = sub_24AC29E20(v58, v60, &v69);

          *(v56 + 4) = v61;
          _os_log_impl(&dword_24AC18000, v54, v55, "didDisconnectPeripheral: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x24C22DC60](v57, -1, -1);
          MEMORY[0x24C22DC60](v56, -1, -1);
        }
      }

      v62 = *(v0 + 152);
      v63 = *(v0 + 136);
      v68 = *(v0 + 104);
      v64 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
      v65 = *(*(v0 + 144) + 16);
      v65(v62, v15 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, v63);
      swift_beginAccess();
      sub_24AC7F518(0, v62, sub_24AC635A0, sub_24AC5E814);
      swift_endAccess();
      v65(v62, v15 + v64, v63);
      swift_beginAccess();
      sub_24AC7F518(0, v62, sub_24AC635A0, sub_24AC5E814);
      swift_endAccess();
      type metadata accessor for CentralManager.Error();
      sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      v66 = swift_allocError();
      *(v0 + 176) = v66;
      swift_storeEnumTagMultiPayload();
      v67 = swift_task_alloc();
      *(v0 + 184) = v67;
      *v67 = v0;
      v67[1] = sub_24AC9B488;

      return sub_24AC39224(v66);
    }
  }

  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 88);
  v33 = sub_24ACD0490();
  __swift_project_value_buffer(v33, qword_2814AD8C0);
  v34 = v32;
  v35 = sub_24ACD0470();
  v36 = sub_24ACD0910();

  if (os_log_type_enabled(v35, v36))
  {
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);
    v39 = *(v0 + 112);
    v40 = *(v0 + 88);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v69 = v42;
    *v41 = 136315138;
    v43 = [v40 identifier];
    sub_24ACD03F0();

    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v44 = sub_24ACD0C20();
    v46 = v45;
    (*(v38 + 8))(v37, v39);
    v47 = sub_24AC29E20(v44, v46, &v69);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_24AC18000, v35, v36, "Unable to find Peripheral for %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x24C22DC60](v42, -1, -1);
    MEMORY[0x24C22DC60](v41, -1, -1);
  }

  v49 = *(v0 + 152);
  v48 = *(v0 + 160);
  v50 = *(v0 + 128);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_24AC9B488()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[24] = v5;
  *v5 = v4;
  v5[1] = sub_24AC9B604;
  v6 = v1[21];
  v7 = v1[12];

  return sub_24AC3AB10(v7);
}

uint64_t sub_24AC9B604()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC9B714, v2, 0);
}

uint64_t sub_24AC9B714()
{
  v1 = v0[21];

  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC9B790(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  v4 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC9B954, v2, 0);
}

uint64_t sub_24AC9B954()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &unk_27EF9E558, qword_24ACD5878);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v0[13], &unk_27EF9E558, qword_24ACD5878);
  }

  else
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[9];
    v23 = v8;
    v24 = v0[10];
    v12 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    (*(v7 + 32))(v6, v0[13]);
    v15 = [v13 identifier];
    sub_24ACD03F0();

    type metadata accessor for Peripheral();
    sub_24ACD0000();
    sub_24ACD00C0();
    v16 = swift_task_alloc();
    v16[2] = v14;
    v16[3] = v9;
    v16[4] = v6;
    v16[5] = v12;
    sub_24ACD00A0();

    (*(v10 + 8))(v9, v24);
    (*(v7 + 8))(v6, v23);
  }

  v17 = v0[16];
  v18 = v0[12];
  v19 = v0[13];
  v20 = v0[9];

  v21 = v0[1];

  return v21();
}

void sub_24AC9BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a1;
  v69 = a3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A8, &qword_24ACD5D00);
  v7 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v9 = &v57 - v8;
  v63 = type metadata accessor for CentralManager.ConnectedState(0);
  v10 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6B0, &qword_24ACD5D08);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v64 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  if (a2 == 1)
  {
    v61 = a4;
    v62 = v9;
    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v35 = sub_24ACD0490();
    __swift_project_value_buffer(v35, qword_2814AD8C0);
    v59 = *(v17 + 16);
    v59(v21, v69, v16);
    v36 = sub_24ACD0470();
    v37 = sub_24ACD0900();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v57 = v38;
      v58 = swift_slowAlloc();
      v71 = v58;
      *v38 = 136446210;
      sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100);
      v39 = sub_24ACD0C20();
      v60 = v4;
      v41 = v40;
      (*(v17 + 8))(v21, v16);
      v42 = sub_24AC29E20(v39, v41, &v71);

      v43 = v57;
      *(v57 + 1) = v42;
      v44 = v43;
      _os_log_impl(&dword_24AC18000, v36, v37, "Yielding connection event for %{public}s", v43, 0xCu);
      v45 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x24C22DC60](v45, -1, -1);
      MEMORY[0x24C22DC60](v44, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v21, v16);
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    v61 = a4;
    v62 = v9;
    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v24 = sub_24ACD0490();
    __swift_project_value_buffer(v24, qword_2814AD8C0);
    v59 = *(v17 + 16);
    v59(v23, v69, v16);
    v25 = sub_24ACD0470();
    v26 = sub_24ACD0900();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v57 = v27;
      v58 = swift_slowAlloc();
      v71 = v58;
      *v27 = 136446210;
      sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100);
      v28 = sub_24ACD0C20();
      v60 = v4;
      v30 = v29;
      (*(v17 + 8))(v23, v16);
      v31 = sub_24AC29E20(v28, v30, &v71);

      v32 = v57;
      *(v57 + 1) = v31;
      v33 = v32;
      _os_log_impl(&dword_24AC18000, v25, v26, "Yielding disconnection event for %{public}s", v32, 0xCu);
      v34 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x24C22DC60](v34, -1, -1);
      MEMORY[0x24C22DC60](v33, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v23, v16);
    }

LABEL_18:
    v59(v12, v69, v16);
    swift_storeEnumTagMultiPayload();
    v54 = *(v65 + 48);
    v55 = v62;
    *v62 = v68;
    sub_24ACA16E0(v12, v55 + v54);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
    v56 = v64;
    sub_24ACD07F0();
    (*(v66 + 8))(v56, v67);
    return;
  }

  if (qword_27EF9DC60 != -1)
  {
    swift_once();
  }

  v46 = sub_24ACD0490();
  __swift_project_value_buffer(v46, qword_27EF9E528);
  v47 = sub_24ACD0470();
  v48 = sub_24ACD0920();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v71 = v50;
    *v49 = 136315138;
    v70 = a2;
    type metadata accessor for CBConnectionEvent(0);
    v51 = sub_24ACD05A0();
    v53 = sub_24AC29E20(v51, v52, &v71);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_24AC18000, v47, v48, "Unhandled CBConnectionEvent: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x24C22DC60](v50, -1, -1);
    MEMORY[0x24C22DC60](v49, -1, -1);
  }
}

uint64_t sub_24AC9C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC9C35C, 0, 0);
}

uint64_t sub_24AC9C35C()
{
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v3 = [*(v0 + 32) state];
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    v4[1] = sub_24AC9C45C;

    return sub_24AC95064(v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24AC9C45C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24ACA2614, 0, 0);
}

uint64_t sub_24AC9C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC9C604, 0, 0);
}

uint64_t sub_24AC9C604()
{
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 48);
    v4 = sub_24AC47D84(*(v0 + 40));
    *(v0 + 64) = v4;
    v5 = [v3 integerValue];
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_24AC9C72C;
    v7 = *(v0 + 32);

    return sub_24AC96934(v7, v4, v5);
  }

  else
  {
    **(v0 + 16) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24AC9C72C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24AC9C860, 0, 0);
}

uint64_t sub_24AC9C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC9C964, 0, 0);
}

uint64_t sub_24AC9C964()
{
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_24AC9CA54;
    v4 = *(v0 + 32);

    return sub_24AC99800(v4);
  }

  else
  {
    **(v0 + 16) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24AC9CA54()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC9CB6C, 0, 0);
}

uint64_t sub_24AC9CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24AC9CC4C, 0, 0);
}

uint64_t sub_24AC9CC4C()
{
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_24AC9CD3C;
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);

    return sub_24AC9A144(v5, v4);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24AC9CD3C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC9CE54, 0, 0);
}

uint64_t sub_24AC9CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24AC9CEC0, 0, 0);
}

uint64_t sub_24AC9CEC0()
{
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_24AC9CFB0;
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);

    return sub_24AC9AB3C(v5, v4);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24AC9CFB0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24ACA2618, 0, 0);
}

void sub_24AC9D0E8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a5;
  sub_24ACA11EC(v13, a5, a6, a7);
}

uint64_t sub_24AC9D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24AC9D1AC, 0, 0);
}

uint64_t sub_24AC9D1AC()
{
  v1 = *(v0 + 24);
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_24AC9CFB0;
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);

    return sub_24AC9B790(v5, v4);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

id sub_24AC9D34C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateTrampoline_CBCentralManagerPrivateDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AC9D3D0()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

FindMyBluetooth::CentralManager::State_optional __swiftcall CentralManager.State.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 0xA)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_24ACD5ED2[rawValue];
  }

  return rawValue;
}

uint64_t sub_24AC9D478()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](qword_24ACD5EE0[v1]);
  return sub_24ACD0D50();
}

uint64_t sub_24AC9D500()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](qword_24ACD5EE0[v1]);
  return sub_24ACD0D50();
}

uint64_t sub_24AC9D5FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24ACD0490();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_24ACD0480();
}

uint64_t sub_24AC9D698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24ACD0490();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24AC9D730(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC9D828;

  return v7(a1);
}

uint64_t sub_24AC9D828()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AC9D920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_24AC2ABC8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AC5EEE4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_24ACD0420();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_24AC9E118(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_24AC9DAD8(int64_t a1, uint64_t a2)
{
  v43 = sub_24ACD0420();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24ACD09B0();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_24AC9FA1C(&qword_2814AE200, MEMORY[0x277CC95F0]);
      v26 = sub_24ACD0520();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_24AC9DDF8(int64_t a1, uint64_t a2)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - v8;
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24ACD09B0();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_24AC2B6A8(&qword_27EF9DFC0, &qword_27EF9E040, qword_24ACD4100);
      v26 = sub_24ACD0520();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_24AC9E118(int64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
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
    v14 = sub_24ACD09B0();
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
      sub_24AC9FA1C(&qword_2814AE200, MEMORY[0x277CC95F0]);
      v24 = sub_24ACD0520();
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
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10) - 8) + 72);
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

_OWORD *sub_24AC9E468(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_24AC2AB50(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_24AC1BFB8(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_24AC5E670();
    goto LABEL_7;
  }

  sub_24AC5C328(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_24AC2AB50(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D839B0]);
  sub_24AC9E9A0(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_24AC9E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277CC9318];
  v31 = MEMORY[0x277CC9318];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_24AC2AB50(a3, a4);
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
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_24AC1BFB8(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_24AC5E670();
    goto LABEL_7;
  }

  sub_24AC5C328(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_24AC2AB50(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_24AC9EA24(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_24AC9E7A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_24AC2B8F8(0, &qword_27EF9E708, 0x277CCABB0);
  v31 = v10;
  *&v30 = a1;
  v11 = *a5;
  v13 = sub_24AC2AB50(a2, a3);
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
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_24AC1BFB8(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_24AC5E670();
    goto LABEL_7;
  }

  sub_24AC5C328(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_24AC2AB50(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_24ACD0C80();
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
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_24AC9EAA8(v13, a2, a3, *v28, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_24AC9E9A0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24AC1BFB8(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_24AC9EA24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277CC9318];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_24AC1BFB8(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_24AC9EAA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_24AC2B8F8(0, &qword_27EF9E708, 0x277CCABB0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_24AC1BFB8(&v15, (a5[7] + 32 * a1));
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

uint64_t sub_24AC9EB5C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24AC9EC50;

  return v6(v2 + 32);
}

uint64_t sub_24AC9EC50()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_24AC9ED64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
    v3 = sub_24ACD0B60();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AC2B5DC(v4, &v13, qword_27EF9E180, &qword_24ACD3790);
      v5 = v13;
      v6 = v14;
      result = sub_24AC2AB50(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24AC1BFB8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24AC9EE94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E760, &qword_24ACD5EC0);
    v3 = sub_24ACD0B60();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_24AC46630(v7, v8);
      result = sub_24AC2AB50(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AC9EFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E300, &qword_24ACD5DC0);
  v3 = sub_24ACD0B60();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_24AC2ADA0(v4);
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
    *(v3[6] + result) = v4;
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
    sub_24AC46630(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_24AC2ADA0(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24AC9F0B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6D0, &qword_24ACD5DA0);
    v3 = sub_24ACD0B60();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AC2B5DC(v4, v13, &qword_27EF9E6D8, &qword_24ACD5DA8);
      result = sub_24AC2AC84(v13);
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
      result = sub_24AC1BFB8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24AC9F1F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24ACD0B60();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_24AC2ADE8(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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

uint64_t sub_24AC9F300()
{
  if (qword_27EF9DC58 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF9E518;
  *(v0 + 32) = qword_27EF9E518;

  return MEMORY[0x2822009F8](sub_24AC9F398, v1, 0);
}

uint64_t sub_24AC9F398()
{
  v1 = *(v0 + 32);
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 16) = 2;
    *(v0 + 24) = 0;
    v4 = type metadata accessor for CentralManager(0);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_24AC9F498;

    return sub_24AC81DE4(1, (v0 + 16));
  }
}

uint64_t sub_24AC9F498(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_24AC9F5B0, v3, 0);
}

uint64_t sub_24AC9F5B0()
{
  v1 = v0[6];
  v2 = v0[4];
  swift_weakAssign();
  v3 = v0[6];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_24AC9F648(uint64_t a1)
{
  v2 = sub_24ACD0420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v13 = sub_24AC9ED64(MEMORY[0x277D84F90]);
  if (a1)
  {
    v14 = *MEMORY[0x277CBDE68];
    v15 = sub_24ACD0590();
    v17 = v16;
    v43 = v12;
    sub_24ACBD8E0();
    v18 = sub_24ACD0D60();
    v45 = sub_24AC2B8F8(0, &qword_27EF9E708, 0x277CCABB0);
    *&v44 = v18;
    sub_24AC1BFB8(&v44, v41);
    LOBYTE(v18) = swift_isUniquelyReferenced_nonNull_native();
    v40 = v13;
    v19 = v42;
    v20 = __swift_mutable_project_boxed_opaque_existential_0(v41, v42);
    v21 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v23 = (v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    sub_24AC9E7A4(*v23, v15, v17, v18, &v40);

    __swift_destroy_boxed_opaque_existential_0(v41);
    return 0;
  }

  else
  {
    v26 = *(v12 + 16);
    result = MEMORY[0x277D84F90];
    if (v26)
    {
      v35[0] = v13;
      *&v44 = MEMORY[0x277D84F90];
      v39 = v2;
      sub_24ACD0AB0();
      v27 = objc_opt_self();
      v29 = *(v8 + 16);
      v28 = v8 + 16;
      v37 = v29;
      v38 = v27;
      v30 = v12 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
      v31 = *(v28 + 56);
      v35[1] = v28;
      v36 = v31;
      do
      {
        v37(v11, v30, v7);
        sub_24ACCFFE0();
        v32 = sub_24ACD03D0();
        v33 = [v38 UUIDWithNSUUID_];

        (*(v3 + 8))(v6, v39);
        (*(v28 - 8))(v11, v7);
        sub_24ACD0A90();
        v34 = *(v44 + 16);
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v30 += v36;
        --v26;
      }

      while (v26);
      return v44;
    }
  }

  return result;
}

uint64_t sub_24AC9FA1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AC9FA64(uint64_t a1)
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
  v10[1] = sub_24AC214AC;

  return sub_24AC869B8(a1, v4, v5, v6, v7, v9, v8);
}

void sub_24AC9FB3C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  sub_24AC92794(a1, v2);
}

uint64_t sub_24AC9FBD8(void *a1)
{
  a1[1] = sub_24AC9FA1C(&unk_2814AD880, type metadata accessor for CentralManager);
  a1[2] = sub_24AC9FA1C(&qword_2814AD858, type metadata accessor for CentralManager);
  result = sub_24AC9FA1C(&unk_2814AD860, type metadata accessor for CentralManager);
  a1[3] = result;
  return result;
}

unint64_t sub_24AC9FD14()
{
  result = qword_2814AD8E0;
  if (!qword_2814AD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD8E0);
  }

  return result;
}

void sub_24AC9FD70()
{
  sub_24AC79374(319, &qword_2814AE250, type metadata accessor for CentralManager);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_24AC542BC(319, &qword_2814ACFE8, &unk_27EF9E5B8, &qword_24ACD58D8);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_24AC542BC(319, &qword_2814AD000, &qword_27EF9E578, qword_24ACD8D30);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_24AC542BC(319, &qword_2814AD008, &qword_27EF9E580, &qword_24ACD5890);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of CentralManager.stateStream()(uint64_t a1)
{
  v4 = *(*v1 + 584);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 608);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_24AC214AC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CentralManager.retrievePeripheral(macAddress:)(uint64_t a1)
{
  v4 = *(*v1 + 616);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2A800;

  return v8(a1);
}

uint64_t dispatch thunk of CentralManager.retrievePeripherals(serialNumbers:)(uint64_t a1)
{
  v4 = *(*v1 + 624);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 632);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of CentralManager.retrievePeripherals(identifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 640);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of CentralManager.retrieveConnectedPeripherals(services:)(uint64_t a1)
{
  v4 = *(*v1 + 648);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for CentralManager.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CentralManager.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24ACA0A7C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ACA0AB4()
{
  sub_24ACA0B14();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24ACA0B14()
{
  if (!qword_2814AE268)
  {
    sub_24AC79374(0, &qword_2814AE260, type metadata accessor for Peripheral);
    if (!v1)
    {
      atomic_store(v0, &qword_2814AE268);
    }
  }
}

uint64_t getEnumTagSinglePayload for Logger(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Logger(_WORD *result, int a2, int a3)
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

uint64_t sub_24ACA0C60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC9C338(a1, v4, v5, v7, v6);
}

uint64_t sub_24ACA0D20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return sub_24AC9EB5C(a1, v5);
}

uint64_t sub_24ACA0DD8(void *a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = sub_24ACD04C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v3[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_24ACD04D0();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = sub_24ACD07C0();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v3;
    v20[5] = a1;
    v20[6] = a2;
    v20[7] = a3;
    v21 = v3;
    v22 = a1;

    v23 = a3;
    sub_24AC7ED6C(0, 0, v10, &unk_24ACD5D68, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA0FF4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_24ACD04C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v3[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_24ACD04D0();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = sub_24ACD07C0();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v3;
    v19[5] = a1;
    v20 = v3;
    v21 = a1;
    sub_24AC7ED6C(0, 0, v9, a3, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA11EC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_24ACD04C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v4[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_24ACD04D0();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = sub_24ACD07C0();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v4;
    v21[5] = a1;
    v21[6] = a2;
    v22 = v4;
    v23 = a1;
    v24 = a2;
    sub_24AC7ED6C(0, 0, v11, a4, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA13F4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_24ACD04C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v2[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_24ACD04D0();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = sub_24ACD07C0();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v2;
    v18[5] = a1;
    v18[6] = a2;
    v19 = v2;
    v20 = a2;
    sub_24AC7ED6C(0, 0, v8, &unk_24ACD5CF0, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA15F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC9D188(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24ACA16E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CentralManager.ConnectedState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACA1744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC9CE9C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_151Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24ACA185C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC9CC28(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_125Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24ACA196C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC20274;

  return sub_24AC9C940(a1, v4, v5, v7, v6);
}

uint64_t sub_24ACA1A2C(uint64_t a1)
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
  v10[1] = sub_24AC214AC;

  return sub_24AC9C5DC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24ACA1B38(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC20274;

  return sub_24AC98E40(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_24ACA1C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACA1CFC(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100) - 8);
  v10 = (v8 + *(v9 + 80) + 9) & ~*(v9 + 80);
  v20 = v1[3];
  v21 = v1[2];
  v11 = v1[4];
  v12 = v1[5];
  v13 = *(v1 + v6);
  v14 = *(v1 + v7 + 8);
  v15 = v1 + v8;
  v16 = *(v1 + v8);
  v17 = v15[8];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_24AC214AC;

  return sub_24AC92F58(a1, v21, v20, v11, v12, v1 + v5, v13, v14);
}

uint64_t block_copy_helper_220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ACA1EE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC86D30(a1, v4, v5, v6, v7);
}

uint64_t sub_24ACA1FE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC86614(a1, v4, v5, v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t objectdestroy_224Tm(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  a2(v2[5]);

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t sub_24ACA2184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC93D3C(a1, v4, v5, v6, v7);
}

uint64_t sub_24ACA224C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC93920(a1, v4, v5, v6);
}

uint64_t sub_24ACA2300(uint64_t a1)
{
  v3 = *(sub_24ACD0420() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24AC83CE4(a1, v4, v5);
}

uint64_t sub_24ACA2374(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24ACD0420() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC214AC;

  return sub_24AC84350(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24ACA24E0(uint64_t a1)
{
  v4 = *(sub_24ACD0420() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC83EC4(a1, v6, v7, v8, v1 + v5);
}

uint64_t CBDiscoveryProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v16 = v2;
  v11 = *(a2 + 8);
  v12 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v12);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v13 = MEMORY[0x24C22D370](a1, v11);
  MEMORY[0x24C22CD50](v13);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v16 = v2;
  sub_24ACD0A30();
  sub_24ACD0C30();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v17;
}

uint64_t dispatch thunk of static CBDiscoveryProtocol.devices(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2A800;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CBDiscoveryProtocol.scan(config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AC214AC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CBDiscoveryProtocol.registerProximityPairingBuffer(rssiThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AC20274;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CBDiscoveryProtocol.setScanRate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC20274;

  return v11(a1, a2, a3);
}

uint64_t sub_24ACA2CB0()
{
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v13 = v0;
  v1 = type metadata accessor for Characteristic();
  v2 = sub_24ACA6F0C(&qword_27EF9E268, type metadata accessor for Characteristic);
  v3 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v4 = MEMORY[0x24C22D370](v1, v2);
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v5 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x7265706F7270202CLL, 0xEF203D2073656974);
  v6 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  sub_24AC1C24C([v6 properties], &v13);
  v7 = Characteristic.Properties.description.getter();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](0xD000000000000010, 0x800000024ACD9DF0);
  v8 = [v6 isNotifying];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x24C22CD50](v10, v11);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v14;
}

uint64_t sub_24ACA2F10()
{
  v1 = v0;
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v2 = type metadata accessor for MockCharacteristic();
  v3 = sub_24ACA6F0C(&qword_27EF9E280, type metadata accessor for MockCharacteristic);
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C22D370](v2, v3);
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v6 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](0x7265706F7270202CLL, 0xEF203D2073656974);
  v12 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties);
  v7 = Characteristic.Properties.description.getter();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](0xD000000000000010, 0x800000024ACD9DF0);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C22CD50](v9, v10);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ACA319C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t MockCharacteristic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACA32C4()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ACA3308(char a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_24ACA33B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

void sub_24ACA3418(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

id sub_24ACA34B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

__n128 sub_24ACA350C(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24AC56E90(v4, v5, v6);
  return result;
}

void sub_24ACA35DC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

uint64_t MockCharacteristic.__allocating_init(service:identifier:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  swift_allocObject();
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_24AC572C8;

  return (sub_24ACA6064)(a1, a2, a3);
}

uint64_t MockCharacteristic.init(service:identifier:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_24AC663CC;

  return (sub_24ACA6064)(a1, a2, a3);
}

uint64_t sub_24ACA3854(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = (v4 + *a3);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  return a4(v6, v7);
}

uint64_t sub_24ACA38B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder);
  v7 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder);
  v8 = v6[1];
  *v6 = &unk_24ACD5F88;
  v6[1] = v5;

  return sub_24AC1BFC8(v7);
}

uint64_t sub_24ACA393C(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC9D828;

  return v9(a1, a2);
}

uint64_t sub_24ACA3A40(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24ACA3A60, v1, 0);
}

uint64_t sub_24ACA3A60()
{
  v1 = v0[6];
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24ACA3B88, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24ACA3B88()
{
  v2 = v0[6];
  v1 = v0[7];
  v0[8] = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24ACA3C04, v2, 0);
}

uint64_t sub_24ACA3C04()
{
  v1 = v0[8];
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ACA3D30, v1, 0);
  }

  else
  {
    v2 = v0[7];
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24ACA3D30()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v0 + 112) = *(v1 + v3);

  return MEMORY[0x2822009F8](sub_24ACA3DC8, v2, 0);
}

void sub_24ACA3DC8()
{
  if (*(v0 + 112) != 3)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 48);
  if ((*(v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties) & 2) == 0)
  {
    v11 = *(v0 + 56);
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v2 = 2;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  *(v0 + 72) = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  v5 = *(v1 + v4);
  if (v5 == 2 || v5 == 1)
  {
LABEL_4:
    v12 = *(v0 + 56);
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_5;
  }

  *(v1 + v4) = 1;
  v6 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder);
  v7 = *v6;
  *(v0 + 80) = *v6;
  *(v0 + 88) = v6[1];
  if (v7)
  {

    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_24ACA414C;
    v10 = *(v0 + 40);

    v13(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24ACA414C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_24ACA430C;
  }

  else
  {
    v6 = sub_24ACA4278;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24ACA4278()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  sub_24AC1BFC8(v1);
  *(v6 + v4) = 0;
  v7 = v0[1];

  return v7();
}

uint64_t sub_24ACA430C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  sub_24AC1BFC8(v0[10]);
  *(v6 + v4) = 0;
  swift_willThrow();

  v7 = v0[13];
  v8 = v0[1];

  return v8();
}

uint64_t sub_24ACA43BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACA4488, v1, 0);
}

uint64_t sub_24ACA4488()
{
  v1 = v0[6];
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24ACA45B8, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[9];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24ACA45B8()
{
  v1 = v0[10];
  v2 = v0[6];
  v0[11] = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24ACA4638, v2, 0);
}

uint64_t sub_24ACA4638()
{
  v1 = v0[11];
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ACA476C, v1, 0);
  }

  else
  {
    v2 = v0[10];
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v3 = v0[9];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24ACA476C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v0 + 128) = *(v1 + v3);

  return MEMORY[0x2822009F8](sub_24ACA4804, v2, 0);
}

void sub_24ACA4804()
{
  if (*(v0 + 128) != 3)
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_5;
  }

  v1 = *(v0 + 48);
  if ((*(v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties) & 4) == 0)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v4 = 4;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v7 = *(v0 + 72);

    v8 = *(v0 + 8);

    v8();
    return;
  }

  v9 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback);
  v10 = *v9;
  *(v0 + 96) = *v9;
  *(v0 + 104) = v9[1];
  if (v10)
  {
    v11 = *(v0 + 72);
    v12 = *(v0 + 40);

    sub_24ACD06E0();
    v16 = (v10 + *v10);
    v13 = v10[1];
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_24ACA4AA4;
    v15 = *(v0 + 72);

    v16(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24ACA4AA4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[9];
  v8 = v2[8];
  v9 = v2[7];
  v10 = v2[6];
  (*(v8 + 8))(v7, v9);
  sub_24AC1BFC8(v6);
  if (v0)
  {
    v11 = sub_24ACA4CD4;
  }

  else
  {
    v11 = sub_24ACA4C5C;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_24ACA4C5C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACA4CD4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[15];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24ACA4D48(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACA4E18, v2, 0);
}

uint64_t sub_24ACA4E18()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = (v1 + 40);
  v4 = *(v1 + 16);
  do
  {
    v5 = *(v3 - 1);
    v6 = *v3 >> 62;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_11;
      }

      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      if (!v6)
      {
        if ((*v3 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_4;
      }

      v7 = v5;
      v8 = v5 >> 32;
    }

    if (v7 == v8)
    {
      goto LABEL_11;
    }

LABEL_4:
    v3 += 2;
    --v4;
  }

  while (v4);
  v12 = v0[10];
  if (!swift_weakLoadStrong())
  {
LABEL_11:
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_12;
  }

  v13 = v0[10];

  v14 = *(v13 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties);
  if ((v14 & 8) == 0)
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    v16 = 8;
    goto LABEL_21;
  }

  if ((v14 & 0x20) == 0)
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    v16 = 32;
LABEL_21:
    *v15 = v16;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[13];

    v10 = v0[1];

    return v10();
  }

  v17 = v0[10];
  result = swift_beginAccess();
  v18 = *(v17 + 112);
  v19 = (v1 + 40);
  while (2)
  {
    v20 = *(v19 - 1);
    v21 = *v19 >> 62;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v25 = v20 + 16;
        v23 = *(v20 + 16);
        v24 = *(v25 + 8);
        v22 = __OFSUB__(v24, v23);
        v20 = v24 - v23;
        if (v22)
        {
          goto LABEL_41;
        }

        goto LABEL_24;
      }

      if (v18 < 0)
      {
LABEL_35:
        type metadata accessor for CentralManager.Error();
        sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
        swift_allocError();
        *v26 = v18;
        goto LABEL_12;
      }
    }

    else
    {
      if (v21)
      {
        v22 = __OFSUB__(HIDWORD(v20), v20);
        LODWORD(v20) = HIDWORD(v20) - v20;
        if (v22)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        v20 = v20;
      }

      else
      {
        v20 = BYTE6(*v19);
      }

LABEL_24:
      if (v18 < v20)
      {
        goto LABEL_35;
      }
    }

    v19 += 2;
    if (--v2)
    {
      continue;
    }

    break;
  }

  v27 = v0[13];
  v28 = v0[9];
  v29 = v0[10];
  sub_24ACD06E0();
  v30 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  v0[14] = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  *(v29 + v30) = 2;
  v31 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  v0[15] = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *(v29 + v31) = 1;
  v32 = v29 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder;
  v33 = *(v29 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder);
  v0[16] = v33;
  v0[17] = *(v32 + 8);
  if (!v33)
  {
    goto LABEL_42;
  }

  v38 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  v0[18] = v35;
  *v35 = v0;
  v35[1] = sub_24ACA52F8;
  v36 = v0[13];
  v37 = v0[8];

  return v38(v37, v36);
}

uint64_t sub_24ACA52F8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_24ACA54B4;
  }

  else
  {
    v6 = v2[17];
    v7 = v2[10];
    sub_24AC1BFC8(v2[16]);
    v5 = sub_24ACA5420;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24ACA5420()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  (*(v0[12] + 8))(v0[13], v0[11]);
  *(v3 + v2) = 0;
  *(v3 + v1) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACA54B4()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  sub_24AC1BFC8(v0[16]);
  *(v8 + v4) = 0;
  *(v8 + v3) = 0;
  swift_willThrow();
  (*(v6 + 8))(v5, v7);
  v9 = v0[19];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24ACA556C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24ACA558C, v1, 0);
}

uint64_t sub_24ACA558C()
{
  v1 = v0[6];
  if (!swift_weakLoadStrong())
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_5;
  }

  v2 = v0[6];

  if ((*(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties) & 0x20) == 0)
  {
    type metadata accessor for CentralManager.Error();
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v3 = 32;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  v6 = v0[6];
  v7 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  v0[7] = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  *(v6 + v7) = 2;
  v8 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  v0[8] = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *(v6 + v8) = 1;
  v9 = v6 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder;
  v10 = *(v6 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder);
  v0[9] = v10;
  v0[10] = *(v9 + 8);
  if (v10)
  {

    v14 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_24ACA582C;
    v13 = v0[5];

    return v14(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA582C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_24ACA59D4;
  }

  else
  {
    v6 = sub_24ACA5958;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24ACA5958()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_24AC1BFC8(v0[9]);
  *(v4 + v2) = 0;
  *(v4 + v3) = 0;
  v5 = v0[1];

  return v5();
}

uint64_t sub_24ACA59D4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_24AC1BFC8(v0[9]);
  *(v4 + v2) = 0;
  *(v4 + v3) = 0;
  v5 = v0[12];
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t MockCharacteristic.deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();
  v3 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder + 8);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder));
  v4 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback + 8);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback));
  v5 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder + 8);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder));
  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior + 16));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockCharacteristic.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();
  v3 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder + 8);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder));
  v4 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback + 8);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback));
  v5 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder + 8);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder));
  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior + 16));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24ACA5C24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACA5CDC()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24ACA5D54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24ACA3A40(a1);
}

uint64_t sub_24ACA5DEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24ACA43BC(a1);
}

uint64_t sub_24ACA5E80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24ACA4D48(a1, a2);
}

uint64_t sub_24ACA5F28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24ACA556C(a1);
}

uint64_t sub_24ACA5FE0()
{
  v1 = *(v0 + 16);
  v2 = sub_24ACA2F10();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24ACA6064(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v6 = sub_24ACD0420();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a3;
  v4[10] = v12;
  v4[11] = v13;

  return MEMORY[0x2822009F8](sub_24ACA6198, 0, 0);
}

uint64_t sub_24ACA6198()
{
  v1 = v0[10];
  v2 = v0[9];
  v14 = v0[8];
  v15 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  swift_defaultActor_initialize();
  *(v5 + 112) = 247;
  swift_weakInit();
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying) = 0;
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState) = 0;
  v9 = (v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  *v12 = 10000000000000000;
  v12[1] = 0;
  v12[2] = 0;
  swift_weakAssign();
  (*(v4 + 16))(v3, v7, v6);
  type metadata accessor for Characteristic();
  sub_24ACD0000();
  (*(v2 + 32))(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id, v1, v14);
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties) = v15;

  return MEMORY[0x2822009F8](sub_24AC65B14, v5, 0);
}

uint64_t sub_24ACA6330(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC214AC;

  return sub_24ACA393C(a1, a2, v7);
}

uint64_t sub_24ACA63F8(uint64_t a1)
{
  *(a1 + 8) = sub_24ACA6F0C(&qword_27EF9E7F0, type metadata accessor for MockCharacteristic);
  result = sub_24ACA6F0C(&qword_27EF9E280, type metadata accessor for MockCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MockCharacteristic()
{
  result = qword_27EF9E800;
  if (!qword_27EF9E800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ACA6518()
{
  sub_24AC54264();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MockCharacteristic.__allocating_init(service:identifier:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*(v3 + 368) + **(v3 + 368));
  v8 = *(*(v3 + 368) + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC2A800;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MockCharacteristic.read()(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of MockCharacteristic.readUnderlying()()
{
  v2 = *(*v0 + 408);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC20274;

  return v6();
}

uint64_t dispatch thunk of MockCharacteristic.writeWithoutResponse(data:)(uint64_t a1)
{
  v4 = *(*v1 + 416);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of MockCharacteristic.write(data:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 424);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC214AC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MockCharacteristic.notify()(uint64_t a1)
{
  v4 = *(*v1 + 432);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t sub_24ACA6F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ControllerProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v16 = v2;
  v11 = *(a2 + 8);
  v12 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v12);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v13 = MEMORY[0x24C22D370](a1, v11);
  MEMORY[0x24C22CD50](v13);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v16 = v2;
  sub_24ACD0A30();
  sub_24ACD0C30();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v17;
}

uint64_t dispatch thunk of ControllerProtocol.unpair(device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC20274;

  return v11(a1, a2, a3);
}

uint64_t sub_24ACA7230()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E810, &qword_24ACD61D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - v4;
  v6 = sub_24ACD0460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  *&v56 = *v0;
  v14 = sub_24ACA7BBC();
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v16;
    sub_24AC4753C(v15, sub_24AC46D60, 0, isUniquelyReferenced_nonNull_native, &v56);

    v18 = v56;
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v19 = type metadata accessor for Peripheral.Options();
  sub_24AC2B5DC(v1 + *(v19 + 24), v5, &qword_27EF9E810, &qword_24ACD61D8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24ACA8228(v5);
    if (!*(v18 + 16))
    {
LABEL_16:

      return 0;
    }
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    if (qword_285E25940 == 4)
    {
      (*(v7 + 8))(v13, v6);
      if (!*(v18 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = *MEMORY[0x277CBDEC8];
      v51 = sub_24ACD0590();
      v52 = v21;
      if (qword_2814AD278 != -1)
      {
        swift_once();
      }

      v22 = sub_24ACD0490();
      __swift_project_value_buffer(v22, qword_2814AD280);
      (*(v7 + 16))(v11, v13, v6);
      v23 = sub_24ACD0470();
      v24 = sub_24ACD0930();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v48 = v25;
        v50 = swift_slowAlloc();
        *&v54 = v50;
        *v25 = 136315138;
        v49 = v24;
        v26 = sub_24ACD0450();
        v28 = v27;
        *&v56 = v26;
        *(&v56 + 1) = v27;
        sub_24AC467AC();
        v47 = sub_24ACD0180();
        v30 = v29;
        v31 = v11;
        v32 = *(v7 + 8);
        v32(v31, v6);
        sub_24AC46698(v26, v28);
        v33 = sub_24AC29E20(v47, v30, &v54);

        v34 = v48;
        *(v48 + 1) = v33;
        _os_log_impl(&dword_24AC18000, v23, v49, "Using temporary LTK: %s", v34, 0xCu);
        v35 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x24C22DC60](v35, -1, -1);
        MEMORY[0x24C22DC60](v34, -1, -1);
      }

      else
      {

        v36 = v11;
        v32 = *(v7 + 8);
        v32(v36, v6);
      }

      v37 = sub_24ACD0450();
      v57 = MEMORY[0x277CC9318];
      *&v56 = v37;
      *(&v56 + 1) = v38;
      sub_24AC1BFB8(&v56, &v54);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v18;
      v40 = v55;
      v41 = __swift_mutable_project_boxed_opaque_existential_0(&v54, v55);
      v42 = *(*(v40 - 8) + 64);
      MEMORY[0x28223BE20](v41);
      v44 = (&v47 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v45 + 16))(v44);
      sub_24AC9E5C0(*v44, v44[1], v51, v52, v39, &v53);

      v32(v13, v6);
      __swift_destroy_boxed_opaque_existential_0(&v54);
      v18 = v53;
      if (!*(v53 + 16))
      {
        goto LABEL_16;
      }
    }
  }

  return v18;
}

uint64_t sub_24ACA7788()
{
  v1 = 0;
  v2 = 0;
  v3 = *v0;
  v28 = *MEMORY[0x277CBDD68];
  v4 = MEMORY[0x277D84F98];
  v5 = MEMORY[0x277D839B0];
  do
  {
    v7 = v1;
    v8 = *(&unk_285E25970 + v2 + 4);
    if ((v8 & ~v3) == 0)
    {
      if (v8 == 1)
      {
        v9 = sub_24ACD0590();
        v11 = v10;
      }

      else
      {
        v11 = 0xE90000000000003ELL;
        v9 = 0x4E574F4E4B4E553CLL;
      }

      v37 = v5;
      LOBYTE(v36) = 1;
      sub_24AC1BFB8(&v36, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v4;
      v13 = *__swift_mutable_project_boxed_opaque_existential_0(v34, v35);
      v32 = v5;
      LOBYTE(v31[0]) = v13;
      v15 = sub_24AC2AB50(v9, v11);
      v16 = v4[2];
      v17 = (v14 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        result = sub_24ACD0C80();
        __break(1u);
        return result;
      }

      v19 = v14;
      if (v4[3] < v18)
      {
        sub_24AC5C328(v18, isUniquelyReferenced_nonNull_native);
        v20 = sub_24AC2AB50(v9, v11);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_25;
        }

        v15 = v20;
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_2:

        v4 = v33;
        v6 = (v33[7] + 32 * v15);
        __swift_destroy_boxed_opaque_existential_0(v6);
        sub_24AC1BFB8(v31, v6);
LABEL_3:
        __swift_destroy_boxed_opaque_existential_0(v34);
        goto LABEL_4;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v14)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_24AC5E670();
        if (v19)
        {
          goto LABEL_2;
        }
      }

LABEL_16:
      v4 = v33;
      v22 = *__swift_mutable_project_boxed_opaque_existential_0(v31, v32);
      v30 = v5;
      LOBYTE(v29) = v22;
      v4[(v15 >> 6) + 8] |= 1 << v15;
      v23 = (v4[6] + 16 * v15);
      *v23 = v9;
      v23[1] = v11;
      sub_24AC1BFB8(&v29, (v4[7] + 32 * v15));
      v24 = v4[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v4[2] = v26;
      __swift_destroy_boxed_opaque_existential_0(v31);
      goto LABEL_3;
    }

LABEL_4:
    v1 = 1;
    v2 = 1;
  }

  while ((v7 & 1) == 0);
  if (!v4[2])
  {

    return 0;
  }

  return v4;
}

uint64_t type metadata accessor for Peripheral.Options()
{
  result = qword_27EF9E878;
  if (!qword_27EF9E878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for Peripheral.Options();
  sub_24ACA7B54(a2, a4 + *(v7 + 20), &unk_27EF9E170, &qword_24ACD61D0);
  return sub_24ACA7B54(a3, a4 + *(v7 + 24), &qword_27EF9E810, &qword_24ACD61D8);
}

uint64_t sub_24ACA7B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24ACA7BBC()
{
  result = MEMORY[0x277D84F98];
  if ((qword_285E25968 & ~*v0) != 0 || qword_285E25940 == qword_285E25968)
  {
    goto LABEL_12;
  }

  v3 = MEMORY[0x277D84F98];
  if (qword_285E25968 == 1)
  {
    v4 = MEMORY[0x277CBDEA8];
  }

  else
  {
    if (qword_285E25968 != 4)
    {
      v8 = 0xE90000000000003ELL;
      v6 = 0x4E574F4E4B4E553CLL;
      goto LABEL_11;
    }

    v4 = MEMORY[0x277CBDEC8];
  }

  v5 = *v4;
  v6 = sub_24ACD0590();
  v8 = v7;
LABEL_11:
  v15 = MEMORY[0x277D839B0];
  LOBYTE(v14) = 1;
  sub_24AC1BFB8(&v14, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v3;
  v10 = __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
  sub_24AC9E468(*v10, v6, v8, isUniquelyReferenced_nonNull_native, &v11);

  __swift_destroy_boxed_opaque_existential_0(v12);
  result = v11;
LABEL_12:
  if (!*(result + 16))
  {

    return 0;
  }

  return result;
}

unint64_t sub_24ACA7D40()
{
  result = qword_27EF9E818;
  if (!qword_27EF9E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E818);
  }

  return result;
}

unint64_t sub_24ACA7D98()
{
  result = qword_27EF9E820;
  if (!qword_27EF9E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E820);
  }

  return result;
}

unint64_t sub_24ACA7E20()
{
  result = qword_27EF9E838;
  if (!qword_27EF9E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E838);
  }

  return result;
}

unint64_t sub_24ACA7E78()
{
  result = qword_27EF9E840;
  if (!qword_27EF9E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E840);
  }

  return result;
}

unint64_t sub_24ACA7ED0()
{
  result = qword_27EF9E848;
  if (!qword_27EF9E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E848);
  }

  return result;
}

unint64_t sub_24ACA7F28()
{
  result = qword_27EF9E850;
  if (!qword_27EF9E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E850);
  }

  return result;
}

uint64_t sub_24ACA7FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_24ACA8014()
{
  result = qword_27EF9E868;
  if (!qword_27EF9E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E868);
  }

  return result;
}

unint64_t sub_24ACA806C()
{
  result = qword_27EF9E870;
  if (!qword_27EF9E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E870);
  }

  return result;
}

void sub_24ACA80E8()
{
  sub_24ACA81B4(319, &qword_27EF9E888, type metadata accessor for PeripheralPairingInfo);
  if (v0 <= 0x3F)
  {
    sub_24ACA81B4(319, &qword_27EF9E890, MEMORY[0x277D08EE8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ACA81B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24ACD0970();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24ACA8228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E810, &qword_24ACD61D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PeripheralProtocol.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v3[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(a2 + 8) + 8);
  v12 = sub_24ACD0740();
  v3[13] = v12;
  v3[14] = v11;

  return MEMORY[0x2822009F8](sub_24ACA8420, v12, v11);
}

uint64_t sub_24ACA8420()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v19 = v0[6];
  v5 = v0[5];
  sub_24ACD0A20();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0[4] = v4;
  v6 = *(v19 + 16);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(v19 + 40))(v5);
  sub_24ACA8AF4();
  v9 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v9);

  (*(v2 + 8))(v1, v3);
  MEMORY[0x24C22CD50](0x203D2043414D202CLL, 0xE800000000000000);
  v10 = *(v19 + 48);
  v18 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_24ACA8698;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[5];

  return v18(v13, v16, v14);
}

uint64_t sub_24ACA8698()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24ACA87B8, v4, v3);
}

uint64_t sub_24ACA87B8()
{
  v2 = v0[8];
  v1 = v0[9];
  v12 = v0[6];
  v3 = sub_24ACD05A0();
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v4 = *(v12 + 64);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_24ACA8914;
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];

  return (v11)(v0 + 17, v9, v7);
}

uint64_t sub_24ACA8914()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24ACA8A34, v4, v3);
}

uint64_t sub_24ACA8A34()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  *(v0 + 137) = *(v0 + 136);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

unint64_t sub_24ACA8AF4()
{
  result = qword_27EF9E108;
  if (!qword_27EF9E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E040, qword_24ACD4100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E108);
  }

  return result;
}

uint64_t PeripheralProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_24ACD0A20();

  v17 = 60;
  v18 = 0xE100000000000000;
  v16 = v2;
  v10 = *(a2 + 16);
  v11 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v12 = MEMORY[0x24C22D370](a1, v10);
  MEMORY[0x24C22CD50](v12);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(a2 + 40))(a1, a2);
  sub_24ACA8AF4();
  v13 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v13);

  (*(v6 + 8))(v9, v5);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v17;
}

uint64_t dispatch thunk of PeripheralProtocol.macAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC20274;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.state.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.lastSeen.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.pairingInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC20274;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.connect()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 112);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.connect(useCase:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 120);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AC214AC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PeripheralProtocol.cancelConnection()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 128);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.cancelConnection(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.isPaired.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 144);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC2A800;

  return v9(a1, a2);
}