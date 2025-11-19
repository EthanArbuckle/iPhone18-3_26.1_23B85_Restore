uint64_t sub_2518E8210(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2518EFAF8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if (a3)
    {
      v38 = a5;
      v16 = a3;
      sub_2518EFAC8();
      v17 = a3;
      v18 = sub_2518EFAE8();
      v19 = sub_2518F0318();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37 = a6;
        v21 = v20;
        v36 = swift_slowAlloc();
        v40[0] = v36;
        *v21 = 136315138;
        ErrorValue = swift_getErrorValue();
        v34 = &v34;
        v35 = v19;
        MEMORY[0x28223BE20](ErrorValue);
        (*(v24 + 16))(&v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
        v25 = sub_2518F0118();
        v27 = sub_2518EBED8(v25, v26, v40);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_2518B7000, v18, v35, "Unable to look up medication using MRC: %s", v21, 0xCu);
        v28 = v36;
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x253086D30](v28, -1, -1);
        v29 = v21;
        a6 = v37;
        MEMORY[0x253086D30](v29, -1, -1);
      }

      else
      {
      }

      (*(v11 + 8))(v13, v10);
      a5 = v38;
    }

    sub_2518EF6B8();

    if (a2)
    {
      if (a2 >> 62)
      {
        result = sub_2518F0648();
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_10:
          if ((a2 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x253086400](0, a2);
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v30 = *(a2 + 32);
          }

          v31 = v30;
          swift_beginAccess();

          v32 = v31;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = *(v15 + 176);
          *(v15 + 176) = 0x8000000000000000;
          sub_2518DF330(v32, a5, a6, isUniquelyReferenced_nonNull_native);

          *(v15 + 176) = v39;
          swift_endAccess();
        }
      }
    }

    *(v15 + 168) = 0;

    sub_2518EF6C8();
  }

  return result;
}

uint64_t sub_2518E85EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2518EFAF8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_2518F0278();
  v4[13] = sub_2518F0268();
  v7 = sub_2518F0218();
  v4[14] = v7;
  v4[15] = v6;

  return MEMORY[0x2822009F8](sub_2518E86E0, v7, v6);
}

uint64_t sub_2518E86E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_2518E87D8;

    return sub_2518E8BF4();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2518E87D8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_2518E8988;
  }

  else
  {
    v5 = sub_2518E8914;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2518E8914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2518E8988()
{
  v23 = v0;
  v1 = v0[18];

  sub_2518EFAC8();
  v2 = v1;
  v3 = sub_2518EFAE8();
  v4 = sub_2518F0318();

  if (os_log_type_enabled(v3, v4))
  {
    v19 = v0[18];
    v5 = v0[11];
    v20 = v0[10];
    v21 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = *(v0[6] - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = sub_2518F0118();
    v11 = v10;

    v12 = sub_2518EBED8(v9, v11, &v22);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2518B7000, v3, v4, "Unable to read transcript: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253086D30](v7, -1, -1);
    MEMORY[0x253086D30](v6, -1, -1);

    (*(v5 + 8))(v21, v20);
  }

  else
  {
    v13 = v0[18];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_2518E8BF4()
{
  v1[33] = v0;
  v2 = sub_2518EF618();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  sub_2518C6EE0();
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();
  v4 = sub_2518EFAF8();
  v1[40] = v4;
  v1[41] = *(v4 - 8);
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2518E8D6C, 0, 0);
}

uint64_t sub_2518E8D6C()
{
  v27 = v0;
  v0[43] = *(v0[33] + 56);
  sub_2518EF6B8();
  swift_beginAccess();
  v1 = sub_2518E9860();
  v3 = v2;
  v0[44] = v1;
  v0[45] = v2;
  swift_endAccess();
  if (!v3)
  {
LABEL_5:
    sub_2518EF6C8();

    v5 = v0[1];

    return v5();
  }

  if (sub_2518F0158() < 4 || (v4 = v0[33], (*(v4 + 96) & 1) != 0))
  {

    goto LABEL_5;
  }

  v0[46] = *(v4 + 88);
  *(v4 + 113) = 1;
  sub_2518EF6C8();
  sub_2518EFAC8();

  v7 = sub_2518EFAE8();
  v8 = sub_2518F0308();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[41];
  v10 = v0[42];
  v12 = v0[40];
  if (v9)
  {
    v24 = v0[40];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136446210;
    v0[30] = v1;
    v0[31] = v3;

    v15 = sub_2518F0108();
    v23 = v10;
    v17 = sub_2518EBED8(v15, v16, &v26);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2518B7000, v7, v8, "Processing new transcript: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x253086D30](v14, -1, -1);
    MEMORY[0x253086D30](v13, -1, -1);

    (*(v11 + 8))(v23, v24);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = v0[38];
  v19 = v0[39];
  v20 = v0[37];
  v25 = *(v0[33] + 40);
  v21 = sub_2518F0088();
  v0[47] = v21;
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_2518E916C;
  swift_continuation_init();
  v0[17] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_2518BC1A8(0, &qword_27F464858);
  sub_2518C6F60();
  sub_2518F0228();
  (*(v18 + 32))(boxed_opaque_existential_0, v19, v20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2518E6154;
  v0[13] = &block_descriptor_4;
  [v25 resolveMedicationsUsing:v21 resultLimit:10 completionHandler:?];
  (*(v18 + 8))(boxed_opaque_existential_0, v20);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2518E916C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {

    v2 = sub_2518E9744;
  }

  else
  {
    v2 = sub_2518E9284;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2518E9284()
{
  v24 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v22 = *(v0 + 360);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  *(v0 + 392) = v7;

  sub_2518E9B9C(v7);
  v8 = [v7 usedNgrams];
  v9 = sub_2518F01B8();

  v10 = sub_2518EEC2C(v9);

  sub_2518EF6B8();
  sub_2518EF608();
  sub_2518EF5D8();
  v12 = v11;
  (*(v3 + 8))(v4, v6);
  *(v5 + 104) = v12;
  *(v5 + 112) = 0;
  swift_beginAccess();
  sub_2518EC4B0(&v23, v2, v22);
  swift_endAccess();

  swift_beginAccess();
  v13 = *(v5 + 184);
  if (*(v13 + 16) <= *(v10 + 16) >> 3)
  {
    v23 = v10;

    sub_2518ED8C4(v13);

    v14 = v23;
  }

  else
  {

    v14 = sub_2518ED9F0(v13, v10);
  }

  v15 = v12 - *(v0 + 368);
  swift_beginAccess();

  sub_2518E98D4(v16);
  swift_endAccess();
  if (v15 <= 2.0)
  {
    v17 = *(v10 + 16);
  }

  else
  {
    v17 = *(v10 + 16);
    if (*(*(v0 + 264) + 200) >= 6)
    {
      if (!v17 || (v18 = *(v14 + 16), v18 / v17 < 0.1))
      {

        *(*(v0 + 264) + 208) = 1;
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  if (!v17)
  {

    goto LABEL_16;
  }

  v18 = *(v14 + 16);
LABEL_12:

  if (v18 == v17)
  {
LABEL_16:

    goto LABEL_17;
  }

  v19 = *(v10 + 16);

  if (v18 / v19 > 0.9)
  {
    sub_2518E99D8();
  }

LABEL_17:
  *(*(v0 + 264) + 113) = 0;
  sub_2518EF6C8();
  v20 = swift_task_alloc();
  *(v0 + 400) = v20;
  *v20 = v0;
  v20[1] = sub_2518E95AC;

  return sub_2518E8BF4();
}

uint64_t sub_2518E95AC()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_2518E97D4;
  }

  else
  {
    v2 = sub_2518E96C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2518E96C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2518E9744()
{
  v1 = *(v0 + 376);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2518E97D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2518E9860()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + 16 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_2518EE95C(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2518E98D4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2518EC4B0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2518E99D8()
{
  v1 = v0;
  v2 = sub_2518EF618();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 208) = 0;
  *(v1 + 200) = 0;
  swift_beginAccess();
  *(v1 + 120) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v1 + 184) = MEMORY[0x277D84FA0];

  v6 = *(v1 + 40);
  aBlock[4] = sub_2518EB504;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2518E64AC;
  aBlock[3] = &block_descriptor_71_1;
  v7 = _Block_copy(aBlock);
  [v6 resetResolverWithCompletionHandler_];
  _Block_release(v7);
  sub_2518EF608();
  sub_2518EF5D8();
  v9 = v8;
  result = (*(v3 + 8))(v5, v2);
  *(v1 + 88) = v9;
  *(v1 + 96) = 0;
  return result;
}

uint64_t sub_2518E9B9C(void *a1)
{
  sub_2518EF6B8();
  v3 = *(v1 + 200);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 200) = v5;
    if (!*(v1 + 192))
    {
      *(v1 + 192) = a1;
      v11 = a1;
      return sub_2518EF6C8();
    }

    v6 = [a1 resolvedIds];
    sub_2518BC1A8(0, &qword_27F464868);
    v7 = sub_2518F01B8();

    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  v8 = sub_2518F0648();
LABEL_5:

  if (v8)
  {
    v9 = *(v1 + 192);
    *(v1 + 192) = a1;
    v10 = a1;
  }

  return sub_2518EF6C8();
}

uint64_t sub_2518E9C90(int a1)
{
  v4 = v1;
  LODWORD(v109) = a1;
  v5 = sub_2518EF648();
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x28223BE20](v5);
  v98 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2518EF618();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v1 + 56);
  sub_2518EF6B8();
  sub_2518EF608();
  sub_2518EF5D8();
  v12 = v11;
  v13 = *(v8 + 8);
  v89 = v10;
  v90 = v8 + 8;
  v91 = v7;
  v88 = v13;
  v13(v10, v7);
  swift_beginAccess();
  v14 = *(v1 + 176);
  v15 = *(v14 + 16);
  v101 = v1;
  if (v15)
  {
    v16 = sub_2518EBE34(v15, 0);
    v17 = sub_2518EE808(v117, (v16 + 32), v15, v14);
    v4 = v118;

    sub_2518EEDFC();
    if (v17 != v15)
    {
      __break(1u);
      goto LABEL_90;
    }

    v4 = v101;
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }
  }

  if ((v16 & 0x4000000000000000) != 0)
  {
    goto LABEL_83;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_84;
  }

  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
LABEL_90:
      v18 = MEMORY[0x253086400](0, v16);
    }

    else
    {
      if (!*(v16 + 16))
      {
        __break(1u);
        goto LABEL_92;
      }

      v18 = *(v16 + 32);
    }

    v96 = v18;

    [*(v4 + 64) invalidate];
    v19 = *(v4 + 64);
    *(v4 + 64) = 0;

    v20 = *(v4 + 208);
    if (*(v4 + 96))
    {
      v2 = 0.0;
    }

    else
    {
      v2 = *(v4 + 88);
    }

    if (*(v4 + 112))
    {
      v3 = 0.0;
    }

    else
    {
      v3 = *(v4 + 104);
    }

    v85 = *(v4 + 200);
    v116 = 1;
    v115 = 1;
    v114 = 1;
    v84 = 1;
    v86 = 1;
    v87 = v20;
    if (qword_27F464550 != -1)
    {
      swift_once();
    }

    v95 = qword_27F464B60;
    (*(v99 + 16))(v98, v4 + OBJC_IVAR____TtC25HealthMedicationsVisionUI33MedicationDataScanningCoordinator_sessionId, v100);
    swift_beginAccess();
    v21 = *(v4 + 136);
    v22 = *(v21 + 16);
    if (v22)
    {
      v94 = sub_2518EBD98(*(v21 + 16), 0);
      v23 = sub_2518EE6B0(v117, v94 + 4, v22, v21);

      sub_2518EEDFC();
      if (v23 == v22)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    v94 = MEMORY[0x277D84F90];
LABEL_23:
    v24 = v101;
    swift_beginAccess();
    v25 = *(v24 + 128);
    v26 = *(v25 + 16);
    if (v26)
    {
      v93 = sub_2518EBD98(*(v25 + 16), 0);
      v27 = sub_2518EE6B0(v117, v93 + 4, v26, v25);

      sub_2518EEDFC();
      if (v27 == v26)
      {
        goto LABEL_27;
      }

      __break(1u);
    }

    v93 = MEMORY[0x277D84F90];
LABEL_27:
    v28 = v101;
    swift_beginAccess();
    v29 = *(v28 + 144);
    v30 = *(v29 + 16);
    v15 = MEMORY[0x277D84F90];
    if (v30)
    {
      v92 = sub_2518EBD98(*(v29 + 16), 0);
      v31 = sub_2518EE6B0(v117, v92 + 4, v30, v29);

      sub_2518EEDFC();
      if (v31 == v30)
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    v92 = v15;
LABEL_31:
    v32 = [v96 specificProduct];
    v33 = [v32 identifier];

    v34 = [v33 numberRepresentation];
    v35 = [v34 stringValue];

    v36 = sub_2518F00B8();
    v81 = v37;
    v82 = v36;

    v14 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_lock;
    sub_2518EF6B8();
    v83 = v14;
    if (!(v15 >> 62))
    {
      v38 = 0;
      v39 = v15 + 32;
      v14 = 1;
      goto LABEL_33;
    }

LABEL_92:
    v39 = MEMORY[0x277D84F90];
    v38 = sub_2518F0648();
    result = sub_2518F0648();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      if (v38 >= 10)
      {
        v73 = 10;
      }

      else
      {
        v73 = v38;
      }

      if (v38 >= 0)
      {
        v38 = v73;
      }

      else
      {
        v38 = 10;
      }

      result = sub_2518F0648();
      if (result < v38)
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        swift_unknownObjectRelease_n();
LABEL_103:
        sub_2518DE400(v15, v39, v38, v14);
        v14 = v74;
LABEL_39:
        swift_unknownObjectRelease();
        goto LABEL_40;
      }
    }

    if (v38)
    {
      if (v38 < 1)
      {
        __break(1u);
        return result;
      }

      sub_2518BC1A8(0, &qword_27F464868);
      v75 = 0;
      do
      {
        v76 = v75 + 1;
        sub_2518F06E8();
        v75 = v76;
      }

      while (v38 != v76);
    }

    v15 = sub_2518F0798();
    v39 = v77;
    v38 = v78;
    v14 = v79;
    if ((v79 & 1) == 0)
    {
      goto LABEL_103;
    }

LABEL_33:
    sub_2518F0928();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
    }

    v41 = *(v40 + 16);

    if (__OFSUB__(v14 >> 1, v38))
    {
      goto LABEL_101;
    }

    if (v41 != (v14 >> 1) - v38)
    {
      goto LABEL_102;
    }

    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v14)
    {
      v14 = MEMORY[0x277D84F90];
      goto LABEL_39;
    }

LABEL_40:
    v4 = objc_opt_self();
    if (([v4 isAppleInternalInstall] & 1) == 0)
    {

      v94 = MEMORY[0x277D84F90];
    }

    if (([v4 isAppleInternalInstall] & 1) == 0)
    {

      v93 = MEMORY[0x277D84F90];
    }

    if (([v4 isAppleInternalInstall] & 1) == 0)
    {

      v92 = MEMORY[0x277D84F90];
    }

    if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
    {
      v42 = sub_2518F0648();
    }

    else
    {
      v42 = *(v14 + 16);
    }

    v43 = MEMORY[0x277D84F90];
    if (!v42)
    {
LABEL_78:

      v65 = v89;
      sub_2518EF608();
      sub_2518EF5D8();
      v67 = v66;
      v88(v65, v91);
      v117[0] = v94;
      v117[1] = v93;
      v117[2] = v92;
      v117[3] = v43;
      v118 = v82;
      v119 = v81;
      v120 = v67;
      v121 = MEMORY[0x277D84F90];
      v122 = v87;
      v123 = v2;
      v124 = v12;
      v125 = v3;
      v126 = v85;
      v127 = 0;
      v128 = 1;
      v129 = 0;
      v130 = v84;
      v131 = 0;
      v132 = v86;
      *v133 = v111;
      *&v133[3] = *(&v111 + 3);
      v134 = MEMORY[0x277D84F90];
      v135 = MEMORY[0x277D84F90];
      v68 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
      v69 = v95;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = *(v69 + v68);
      *(v69 + v68) = 0x8000000000000000;
      v71 = v98;
      sub_2518DF024(v117, v98, isUniquelyReferenced_nonNull_native);
      *(v69 + v68) = v110;
      swift_endAccess();
      sub_2518EF6C8();
      (*(v99 + 8))(v71, v100);
      swift_getKeyPath();
      swift_getKeyPath();
      v111 = v96;
      v112 = 0;
      v113 = 0;

      sub_2518EFDC8();
      return sub_2518EF6C8();
    }

    v16 = 0;
    v104 = v14 + 32;
    v105 = v14 & 0xC000000000000001;
    v102 = v42;
    v103 = v14;
    while (1)
    {
      if (v105)
      {
        v44 = MEMORY[0x253086400](v16, v14);
        v45 = __OFADD__(v16++, 1);
        if (v45)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_82;
        }

        v44 = *(v104 + 8 * v16);
        v45 = __OFADD__(v16++, 1);
        if (v45)
        {
          goto LABEL_81;
        }
      }

      v106 = v44;
      v107 = v16;
      v16 = [v44 subHgIds];
      sub_2518BC1A8(0, &qword_27F464A40);
      v4 = sub_2518F01B8();

      if (v4 >> 62)
      {
        break;
      }

      v46 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v108 = v43;
      if (v46)
      {
        goto LABEL_56;
      }

LABEL_72:
      v49 = MEMORY[0x277D84F90];
LABEL_73:

      v58 = v106;
      v4 = [v106 primaryHgId];
      [v58 maxJaccardSimilarity];
      v60 = v59;

      v43 = v108;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v14 = v103;
      if ((v61 & 1) == 0)
      {
        v43 = sub_2518DC728(0, *(v43 + 2) + 1, 1, v43);
      }

      v62 = v102;
      v15 = *(v43 + 2);
      v63 = *(v43 + 3);
      if (v15 >= v63 >> 1)
      {
        v43 = sub_2518DC728((v63 > 1), v15 + 1, 1, v43);
      }

      *(v43 + 2) = v15 + 1;
      v64 = &v43[24 * v15];
      *(v64 + 4) = v4;
      *(v64 + 10) = v60;
      *(v64 + 6) = v49;
      v16 = v107;
      if (v107 == v62)
      {
        goto LABEL_78;
      }
    }

    v46 = sub_2518F0648();
    v108 = v43;
    if (!v46)
    {
      goto LABEL_72;
    }

LABEL_56:
    v47 = 0;
    v109 = v4 & 0xC000000000000001;
    v48 = v4 & 0xFFFFFFFFFFFFFF8;
    v49 = MEMORY[0x277D84F90];
    v15 = v4;
    v14 = v46;
    while (1)
    {
      if (v109)
      {
        v50 = MEMORY[0x253086400](v47, v4);
      }

      else
      {
        if (v47 >= *(v48 + 16))
        {
          goto LABEL_80;
        }

        v50 = *(v4 + 8 * v47 + 32);
      }

      v16 = v50;
      v51 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v52 = [v50 hgId];
      [v16 jaccardSimilarity];
      v54 = v53;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_2518DC860(0, *(v49 + 2) + 1, 1, v49);
      }

      v56 = *(v49 + 2);
      v55 = *(v49 + 3);
      v16 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v49 = sub_2518DC860((v55 > 1), v56 + 1, 1, v49);
      }

      *(v49 + 2) = v16;
      v57 = &v49[16 * v56];
      *(v57 + 4) = v52;
      *(v57 + 10) = v54;
      ++v47;
      v4 = v15;
      if (v51 == v14)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  while (sub_2518F0648());
LABEL_84:

  if ((v109 & 1) != 0 || *(v4 + 208) == 1 && v12 - *(v4 + 168) >= 0.5)
  {
    sub_2518EA8DC(v12);
  }

  return sub_2518EF6C8();
}

int64_t sub_2518EA8DC(double a1)
{
  v3 = sub_2518EF618();
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2518EF648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 64) invalidate];
  v9 = *(v1 + 64);
  *(v1 + 64) = 0;

  v80 = *(v1 + 208);
  if (*(v1 + 96))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *(v1 + 88);
  }

  if (*(v1 + 112))
  {
    v11 = 0.0;
  }

  else
  {
    v11 = *(v1 + 104);
  }

  v79 = *(v1 + 200);
  v105 = 1;
  v104 = 1;
  v103 = 1;
  v77 = 1;
  v78 = 1;
  if (qword_27F464550 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v88 = qword_27F464B60;
    v12 = *(v6 + 16);
    v84 = v5;
    v12(v8, v1 + OBJC_IVAR____TtC25HealthMedicationsVisionUI33MedicationDataScanningCoordinator_sessionId, v5);
    swift_beginAccess();
    v89 = v1;
    v13 = *(v1 + 136);
    v14 = *(v13 + 16);
    v94 = v8;
    v95 = v6;
    if (v14)
    {
      v87 = sub_2518EBD98(v14, 0);
      v15 = sub_2518EE6B0(&v106, v87 + 4, v14, v13);
      v16 = v106;
      v17 = v107;
      v6 = v109;
      v8 = v110;

      sub_2518EEDFC();
      if (v15 != v14)
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        swift_unknownObjectRelease_n();
LABEL_36:
        sub_2518DE400(v13, v16, v15, v17);
        v35 = v34;
LABEL_43:
        swift_unknownObjectRelease();
        goto LABEL_44;
      }

      v8 = v94;
      v6 = v95;
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
    }

    v18 = v89;
    swift_beginAccess();
    v13 = *(v18 + 128);
    v19 = *(v13 + 16);
    if (v19)
    {
      v86 = sub_2518EBD98(*(v13 + 16), 0);
      v15 = sub_2518EE6B0(&v106, v86 + 4, v19, v13);
      v16 = v106;
      v17 = v107;
      v6 = v109;
      v8 = v110;

      sub_2518EEDFC();
      if (v15 != v19)
      {
        goto LABEL_100;
      }

      v8 = v94;
      v6 = v95;
    }

    else
    {
      v86 = MEMORY[0x277D84F90];
    }

    v20 = v89;
    swift_beginAccess();
    v13 = *(v20 + 144);
    v21 = *(v13 + 16);
    if (v21)
    {
      v85 = sub_2518EBD98(*(v13 + 16), 0);
      v15 = sub_2518EE6B0(&v106, v85 + 4, v21, v13);
      v16 = v106;
      v17 = v107;
      v6 = v109;
      v8 = v110;

      sub_2518EEDFC();
      if (v15 != v21)
      {
        goto LABEL_101;
      }

      v8 = v94;
      v6 = v95;
    }

    else
    {
      v85 = MEMORY[0x277D84F90];
    }

    v22 = *(v89 + 192);
    v76 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_lock;
    v23 = v22;
    sub_2518EF6B8();
    if (v22)
    {
      v24 = [v23 resolvedIds];
      sub_2518BC1A8(0, &qword_27F464868);
      v25 = sub_2518F01B8();

      v26 = v25 >> 62;
      if (!(v25 >> 62))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
      v26 = MEMORY[0x277D84F90] >> 62;
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_22:
        result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= 0xA)
        {
          v28 = 10;
        }

        else
        {
          v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result < v28)
        {
          break;
        }

        goto LABEL_26;
      }
    }

    v71 = v23;
    v72 = sub_2518F0648();
    if (sub_2518F0648() < 0)
    {
      __break(1u);
      goto LABEL_90;
    }

    v73 = v72 >= 0xA ? 10 : v72;
    v28 = v72 >= 0 ? v73 : 10;
    result = sub_2518F0648();
    v23 = v71;
    if (result < v28)
    {
      break;
    }

LABEL_26:
    v75 = v23;
    if ((v25 & 0xC000000000000001) != 0 && v28)
    {
      sub_2518BC1A8(0, &qword_27F464868);

      v29 = 0;
      do
      {
        v30 = v29 + 1;
        sub_2518F06E8();
        v29 = v30;
      }

      while (v28 != v30);
    }

    else
    {
    }

    if (v26)
    {
      v13 = sub_2518F0798();
      v16 = v31;
      v15 = v32;
      v17 = v33;

      if ((v17 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v15 = 0;
      v13 = v25 & 0xFFFFFFFFFFFFFF8;
      v16 = (v25 & 0xFFFFFFFFFFFFFF8) + 32;
      v17 = (2 * v28) | 1;
      if ((v17 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    sub_2518F0928();
    swift_unknownObjectRetain_n();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x277D84F90];
    }

    v37 = *(v36 + 16);

    if (__OFSUB__(v17 >> 1, v15))
    {
      goto LABEL_102;
    }

    if (v37 != (v17 >> 1) - v15)
    {
      goto LABEL_103;
    }

    v35 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v35)
    {
      v35 = MEMORY[0x277D84F90];
      goto LABEL_43;
    }

LABEL_44:
    v5 = objc_opt_self();
    if (([v5 isAppleInternalInstall] & 1) == 0)
    {

      v87 = MEMORY[0x277D84F90];
    }

    if (([v5 isAppleInternalInstall] & 1) == 0)
    {

      v86 = MEMORY[0x277D84F90];
    }

    if (([v5 isAppleInternalInstall] & 1) == 0)
    {

      v85 = MEMORY[0x277D84F90];
    }

    if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
    {
      v38 = sub_2518F0648();
    }

    else
    {
      v38 = *(v35 + 16);
    }

    v39 = MEMORY[0x277D84F90];
    if (!v38)
    {
LABEL_82:

      v60 = v81;
      sub_2518EF608();
      sub_2518EF5D8();
      v62 = v61;
      (*(v82 + 8))(v60, v83);
      v106 = v87;
      v107 = v86;
      v108 = v85;
      v109 = v39;
      v110 = 0;
      v111 = 0;
      v112 = v62;
      v113 = MEMORY[0x277D84F90];
      v114 = v80;
      v115 = v10;
      v116 = a1;
      v117 = v11;
      v118 = v79;
      v119 = 0;
      v120 = 1;
      v121 = 0;
      v122 = v77;
      v123 = 0;
      v124 = v78;
      *&v125[3] = *(&v101 + 3);
      *v125 = v101;
      v126 = MEMORY[0x277D84F90];
      v127 = MEMORY[0x277D84F90];
      v63 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
      v64 = v88;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = *(v64 + v63);
      *(v64 + v63) = 0x8000000000000000;
      sub_2518DF024(&v106, v8, isUniquelyReferenced_nonNull_native);
      *(v64 + v63) = v100;
      swift_endAccess();
      sub_2518EF6C8();

      (*(v6 + 8))(v8, v84);
      v66 = *(v89 + 192);
      if (v66)
      {
        v25 = v66;
        v67 = [v25 resolvedIds];
        sub_2518BC1A8(0, &qword_27F464868);
        v68 = sub_2518F01B8();

        if (v68 >> 62)
        {
          v69 = sub_2518F0648();
        }

        else
        {
          v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v69)
        {
          v70 = *(v89 + 128);
          swift_getKeyPath();
          swift_getKeyPath();
          *&v101 = v66;
          *(&v101 + 1) = v70;
          v102 = 1;

          return sub_2518EFDC8();
        }

LABEL_90:
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v101 = xmmword_2518F2D10;
      v102 = 2;

      return sub_2518EFDC8();
    }

    v1 = 0;
    v92 = v35 + 32;
    v93 = v35 & 0xC000000000000001;
    v90 = v38;
    v91 = v35;
    while (1)
    {
      if (v93)
      {
        v40 = MEMORY[0x253086400](v1, v35);
        v41 = __OFADD__(v1++, 1);
        if (v41)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v1 >= *(v35 + 16))
        {
          goto LABEL_96;
        }

        v40 = *(v92 + 8 * v1);
        v41 = __OFADD__(v1++, 1);
        if (v41)
        {
          goto LABEL_95;
        }
      }

      v96 = v40;
      v97 = v1;
      v1 = [v40 subHgIds];
      sub_2518BC1A8(0, &qword_27F464A40);
      v5 = sub_2518F01B8();

      if (v5 >> 62)
      {
        break;
      }

      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v98 = v39;
      if (v6)
      {
        goto LABEL_60;
      }

LABEL_76:
      v44 = MEMORY[0x277D84F90];
LABEL_77:

      v53 = v96;
      v5 = [v96 primaryHgId];
      [v53 maxJaccardSimilarity];
      v55 = v54;

      v39 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2518DC728(0, *(v39 + 2) + 1, 1, v39);
      }

      v8 = v94;
      v6 = v95;
      v56 = v90;
      v58 = *(v39 + 2);
      v57 = *(v39 + 3);
      if (v58 >= v57 >> 1)
      {
        v39 = sub_2518DC728((v57 > 1), v58 + 1, 1, v39);
      }

      *(v39 + 2) = v58 + 1;
      v59 = &v39[24 * v58];
      *(v59 + 4) = v5;
      *(v59 + 10) = v55;
      *(v59 + 6) = v44;
      v1 = v97;
      v35 = v91;
      if (v97 == v56)
      {
        goto LABEL_82;
      }
    }

    v6 = sub_2518F0648();
    v98 = v39;
    if (!v6)
    {
      goto LABEL_76;
    }

LABEL_60:
    v42 = 0;
    v99 = v5 & 0xC000000000000001;
    v43 = v5 & 0xFFFFFFFFFFFFFF8;
    v44 = MEMORY[0x277D84F90];
    v8 = v5;
    while (1)
    {
      if (v99)
      {
        v45 = MEMORY[0x253086400](v42, v5);
      }

      else
      {
        if (v42 >= *(v43 + 16))
        {
          goto LABEL_94;
        }

        v45 = *(v5 + 8 * v42 + 32);
      }

      v1 = v45;
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v47 = [v45 hgId];
      [v1 jaccardSimilarity];
      v49 = v48;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_2518DC860(0, *(v44 + 2) + 1, 1, v44);
      }

      v51 = *(v44 + 2);
      v50 = *(v44 + 3);
      v1 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v44 = sub_2518DC860((v50 > 1), v51 + 1, 1, v44);
      }

      *(v44 + 2) = v1;
      v52 = &v44[16 * v51];
      *(v52 + 4) = v47;
      *(v52 + 10) = v49;
      ++v42;
      v5 = v8;
      if (v46 == v6)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_2518EB504(char a1, void *a2)
{
  v4 = sub_2518EFAF8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_2518EFAC8();
    v9 = a2;
    v10 = sub_2518EFAE8();
    v11 = sub_2518F0318();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      result = swift_slowAlloc();
      v18 = result;
      *v12 = 136315138;
      if (!a2)
      {
        __break(1u);
        return result;
      }

      v13 = result;

      swift_getErrorValue();
      v14 = sub_2518F0958();
      v16 = sub_2518EBED8(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2518B7000, v10, v11, "Failed to reset resolver, error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x253086D30](v13, -1, -1);
      MEMORY[0x253086D30](v12, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_25HealthMedicationsVisionUI38MedicationDataScanningCoordinatorStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2518EB768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2518EB7B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2518EB7F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2518EB81C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_2518BC1A8(0, &qword_27F4649E8);
    v5 = sub_2518F01B8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_2518EB8D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_2518F0978();

    sub_2518F0148();
    v16 = sub_2518F09A8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_2518F0918() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

double sub_2518EBA8C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2518EFDB8();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2518EBB14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2518C6DD4(v1, v2, v3);
  return sub_2518EFDC8();
}

uint64_t sub_2518EBBA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2518EBCA0;

  return v6(a1);
}

uint64_t sub_2518EBCA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_2518EBD98(uint64_t a1, uint64_t a2)
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

  sub_2518EEE1C(0, &qword_27F464DC8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

void *sub_2518EBE34(uint64_t a1, uint64_t a2)
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

  sub_2518EEE1C(0, &qword_27F464660, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_2518EBED8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2518EBFA4(v11, 0, 0, 1, a1, a2);
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
    sub_2518C7038(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2518EBFA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2518EC0B0(a5, a6);
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
    result = sub_2518F0718();
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

uint64_t sub_2518EC0B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_2518EC0FC(a1, a2);
  sub_2518EC22C(&unk_2863C6BD0);
  return v3;
}

uint64_t sub_2518EC0FC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2518EC318(v5, 0);
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

  result = sub_2518F0718();
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
        v10 = sub_2518F0178();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2518EC318(v10, 0);
        result = sub_2518F06C8();
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

uint64_t sub_2518EC22C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2518EC3A4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2518EC318(uint64_t a1, uint64_t a2)
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

  sub_2518EEE1C(0, &qword_27F464F90, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2518EC3A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2518EEE1C(0, &qword_27F464F90, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_2518EC4B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2518F0978();
  sub_2518F0148();
  v8 = sub_2518F09A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2518F0918() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2518ECF0C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2518EC600(void *a1, void *a2)
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

    v9 = sub_2518F0658();

    if (v9)
    {

      sub_2518BC1A8(0, &qword_27F464A00);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_2518F0648();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2518EC838(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_2518ECC6C();
    }

    v18 = v8;
    sub_2518ECE88(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2518BC1A8(0, &qword_27F464A00);
  v11 = sub_2518F0498();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_2518ED08C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2518F04A8();

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

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_2518EC838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2518EF3A0();
    v2 = sub_2518F0698();
    v14 = v2;
    sub_2518F0638();
    if (sub_2518F0668())
    {
      sub_2518BC1A8(0, &qword_27F464A00);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_2518ECC6C();
        }

        v2 = v14;
        result = sub_2518F0498();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_2518F0668());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2518ECA18()
{
  v1 = v0;
  v2 = *v0;
  sub_2518EEE6C();
  result = sub_2518F0688();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2518F0978();
      sub_2518F0148();
      result = sub_2518F09A8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2518ECC6C()
{
  v1 = v0;
  v2 = *v0;
  sub_2518EF3A0();
  result = sub_2518F0688();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_2518F0498();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_2518ECE88(uint64_t a1, uint64_t a2)
{
  sub_2518F0498();
  result = sub_2518F0628();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2518ECF0C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2518ECA18();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2518ED1FC();
      goto LABEL_16;
    }

    sub_2518ED490();
  }

  v10 = *v4;
  sub_2518F0978();
  sub_2518F0148();
  result = sub_2518F09A8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2518F0918();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2518F0938();
  __break(1u);
  return result;
}

void sub_2518ED08C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2518ECC6C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_2518ED34C();
      goto LABEL_12;
    }

    sub_2518ED6BC();
  }

  v8 = *v3;
  v9 = sub_2518F0498();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2518BC1A8(0, &qword_27F464A00);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2518F04A8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2518F0938();
  __break(1u);
}

void *sub_2518ED1FC()
{
  v1 = v0;
  sub_2518EEE6C();
  v2 = *v0;
  v3 = sub_2518F0678();
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

id sub_2518ED34C()
{
  v1 = v0;
  sub_2518EF3A0();
  v2 = *v0;
  v3 = sub_2518F0678();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_2518ED490()
{
  v1 = v0;
  v2 = *v0;
  sub_2518EEE6C();
  result = sub_2518F0688();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_2518F0978();

      sub_2518F0148();
      result = sub_2518F09A8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2518ED6BC()
{
  v1 = v0;
  v2 = *v0;
  sub_2518EF3A0();
  result = sub_2518F0688();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_2518F0498();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2518ED8C4(uint64_t result)
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

        sub_2518EDF60(v12, v13);

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

uint64_t sub_2518ED9F0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
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
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
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
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_2518F0978();

    sub_2518F0148();
    v23 = sub_2518F09A8();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_2518F0918() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_2518EE2D4(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_2518F0978();

            sub_2518F0148();
            v41 = sub_2518F09A8();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_2518F0918() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_2518EE09C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x253086D30](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_2518EEDFC();
    return v5;
  }

  result = MEMORY[0x253086D30](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2518EDF60(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2518F0978();
  sub_2518F0148();
  v6 = sub_2518F09A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2518F0918() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2518ED1FC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2518EE4EC(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_2518EE09C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
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
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_2518EE2D4(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_2518F0978();

        sub_2518F0148();
        v19 = sub_2518F09A8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_2518F0918() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_2518EE2D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2518EEE6C();
  result = sub_2518F06A8();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2518F0978();

    sub_2518F0148();
    result = sub_2518F09A8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

unint64_t sub_2518EE4EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2518F0618();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2518F0978();

        sub_2518F0148();
        v10 = sub_2518F09A8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_2518EE6B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

void *sub_2518EE808(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2518EE970(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      sub_2518BC1A8(0, &qword_27F464978);
      return sub_2518F04A8() & 1;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }
      }

      else if (a6 != 2 || a4 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        return a6 == 2 && !(a5 | a4);
      }

      if (a6 != 2 || a4 != 1)
      {
        return 0;
      }
    }

    return !a5;
  }

  if (a6 != 1)
  {
    return 0;
  }

  sub_2518BC1A8(0, &qword_27F464978);
  if ((sub_2518F04A8() & 1) == 0)
  {
    return 0;
  }

  return sub_2518EB8D4(a2, a5);
}

uint64_t sub_2518EEAEC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2518F0648())
  {
    v4 = sub_2518BC1A8(0, &qword_27F464A00);
    v5 = sub_2518CBCEC();
    result = MEMORY[0x253085FF0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x253086400](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2518EC600(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2518F0648();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2518EEC2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253085FF0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2518EC4B0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2518EECC4()
{
  v1 = v0;
  v2 = sub_2518EF618();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EF608();
  sub_2518EF5D8();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  sub_2518EF6B8();
  v9 = *(v1 + 80);
  v8 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = v7 - *(v1 + 72);
  result = sub_2518EF6C8();
  if (v11 > 2.0)
  {
    return sub_2518E9C90((v7 >= v9) | v10 & 1u | (v7 - v8 >= 5.0));
  }

  return result;
}

void sub_2518EEE1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2518EEE6C()
{
  if (!qword_27F464F98)
  {
    v0 = sub_2518F06B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464F98);
    }
  }
}

uint64_t block_copy_helper_69_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2518EEEDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2518EEF4C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void sub_2518EEFA8()
{
  if (!qword_27F464848)
  {
    sub_2518F0298();
    v0 = sub_2518F05D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464848);
    }
  }
}

uint64_t objectdestroy_74Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_2518EF084(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2518C6BB0;

  return sub_2518E85EC(a1, v4, v5, v6);
}

uint64_t sub_2518EF138(uint64_t a1, uint64_t a2)
{
  sub_2518EEFA8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2518EF19C(uint64_t a1)
{
  sub_2518EEFA8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2518EF1F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2518EF230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2518EF4EC;

  return sub_2518EBBA8(a1, v4);
}

uint64_t sub_2518EF2E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2518C6BB0;

  return sub_2518EBBA8(a1, v4);
}

void sub_2518EF3A0()
{
  if (!qword_27F464FA8)
  {
    sub_2518BC1A8(255, &qword_27F464A00);
    sub_2518CBCEC();
    v0 = sub_2518F06B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464FA8);
    }
  }
}

void sub_2518EF414()
{
  if (!qword_27F464FB0)
  {
    sub_2518EF47C();
    v0 = sub_2518EFD08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464FB0);
    }
  }
}

void sub_2518EF47C()
{
  if (!qword_27F464FB8)
  {
    type metadata accessor for HKConceptAttributeType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F464FB8);
    }
  }
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}