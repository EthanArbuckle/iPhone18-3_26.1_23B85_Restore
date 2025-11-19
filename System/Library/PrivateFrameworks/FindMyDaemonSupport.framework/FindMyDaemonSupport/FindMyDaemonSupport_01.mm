uint64_t sub_24AE5B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AE5B8A0, a4, 0);
}

uint64_t sub_24AE5B8A0()
{
  v1 = v0[2];
  sub_24AE5B904(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AE5B904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE6C8, &qword_24AE85EB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_24AE83EA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v38 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  if (qword_280D7A020 != -1)
  {
    swift_once();
  }

  v16 = sub_24AE83ED0();
  __swift_project_value_buffer(v16, qword_280D7A9A8);
  v37 = *(v10 + 16);
  v37(v15, a2, v9);
  v17 = sub_24AE83EB0();
  v18 = sub_24AE84210();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = a2;
    v22 = v21;
    v40[0] = v21;
    *v20 = 136446210;
    sub_24AE6098C();
    v23 = sub_24AE84510();
    v36 = v3;
    v25 = v24;
    (*(v10 + 8))(v15, v9);
    v26 = sub_24AE53C28(v23, v25, v40);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_24AE43000, v17, v18, "Storing connectionStateContinuation for %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    a2 = v34;
    MEMORY[0x24C233A80](v27, -1, -1);
    v28 = v20;
    v8 = v35;
    MEMORY[0x24C233A80](v28, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  v29 = v38;
  v37(v38, a2, v9);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v31 = *(v30 - 8);
  (*(v31 + 16))(v8, v39, v30);
  (*(v31 + 56))(v8, 0, 1, v30);
  swift_beginAccess();
  sub_24AE4FC68(v8, v29);
  return swift_endAccess();
}

uint64_t sub_24AE5BC9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  return sub_24AE44D88(v3);
}

uint64_t sub_24AE5BCE8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;

  return sub_24AE44D88(v3);
}

uint64_t sub_24AE5BD34(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;

  return sub_24AE44D88(v3);
}

uint64_t sub_24AE5BD80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;

  return sub_24AE44D88(v3);
}

uint64_t sub_24AE5BDCC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;

  return sub_24AE44D88(v3);
}

uint64_t sub_24AE5BE18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;

  return sub_24AE44D88(v3);
}

void sub_24AE5BE64(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v6, v7);
  v8 = objc_allocWithZone(MEMORY[0x277CEEA00]);
  v9 = sub_24AE83FA0();

  v10 = sub_24AE83FA0();

  v11 = [v8 initWithTopic:v9 identifier:v10];

  [*(v2 + 112) requestTokenForInfo_];
}

void sub_24AE5BFA0()
{
  v1 = *(v0 + 112);
  v2 = sub_24AE83FA0();
  v3 = sub_24AE83FA0();
  [v1 requestTokenForTopic:v2 identifier:v3];
}

uint64_t APNSManager.deinit()
{
  v1 = *(v0 + 136);
  sub_24AE44D88(*(v0 + 128));
  v2 = *(v0 + 152);
  sub_24AE44D88(*(v0 + 144));
  v3 = *(v0 + 168);
  sub_24AE44D88(*(v0 + 160));
  v4 = *(v0 + 184);
  sub_24AE44D88(*(v0 + 176));
  v5 = *(v0 + 200);
  sub_24AE44D88(*(v0 + 192));
  v6 = *(v0 + 216);
  sub_24AE44D88(*(v0 + 208));
  v7 = *(v0 + 224);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t APNSManager.__deallocating_deinit()
{
  APNSManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE5C0C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE5C0E0, v1, 0);
}

uint64_t sub_24AE5C0E0()
{
  v1 = v0[3];
  sub_24AE5A9BC(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AE5C140(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE5C160, v1, 0);
}

uint64_t sub_24AE5C160()
{
  v1 = v0[3];
  sub_24AE5ABA0(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AE5C1C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C1E4, v2, 0);
}

uint64_t sub_24AE5C1E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 192);
  v3 = *(v2 + 200);
  *(v2 + 192) = v0[2];
  *(v2 + 200) = v1;

  sub_24AE44D88(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE5C25C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C280, v2, 0);
}

uint64_t sub_24AE5C280()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 144);
  v3 = *(v2 + 152);
  *(v2 + 144) = v0[2];
  *(v2 + 152) = v1;

  sub_24AE44D88(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE5C2F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C31C, v2, 0);
}

uint64_t sub_24AE5C31C()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 160);
  v3 = *(v2 + 168);
  *(v2 + 160) = v0[2];
  *(v2 + 168) = v1;

  sub_24AE44D88(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE5C394(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C3B8, v2, 0);
}

uint64_t sub_24AE5C3B8()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 176);
  v3 = *(v2 + 184);
  *(v2 + 176) = v0[2];
  *(v2 + 184) = v1;

  sub_24AE44D88(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE5C430(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE5C450, v1, 0);
}

uint64_t sub_24AE5C450()
{
  v1 = *(v0 + 24);
  sub_24AE5BE64(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AE5C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE5C4D8, v4, 0);
}

uint64_t sub_24AE5C4D8()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[6] + 112);
  v6 = sub_24AE83FA0();
  v7 = sub_24AE83FA0();
  [v5 requestTokenForTopic:v6 identifier:v7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AE5C580()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE838, &unk_24AE86388);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5C6B4, v0, 0);
}

uint64_t sub_24AE5C6B4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  swift_beginAccess();
  *(v3 + 232) = 1;
  swift_beginAccess();
  v4 = *(v3 + 224);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;
  v25 = (v2 + 8);
  v26 = v4;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = *(v0 + 112);
      v15 = *(v0 + 88);
      v14 = *(v0 + 96);
      v16 = *(v0 + 72);
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(v1 + 16))(v13, *(v26 + 56) + *(v1 + 72) * (v17 | (v12 << 6)), v14);
      *(v0 + 144) = 1;
      sub_24AE84140();
      (*(v1 + 8))(v13, v14);
      result = (*v25)(v15, v16);
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v18 = *(v0 + 64);

  v19 = *(v18 + 128);
  *(v0 + 120) = v19;
  if (v19)
  {
    *(v0 + 128) = *(*(v0 + 64) + 136);

    v27 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_24AE5C9A4;

    return v27();
  }

  else
  {
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_24AE5C9A4()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE5CAB4, v2, 0);
}

uint64_t sub_24AE5CAB4()
{
  v1 = v0[16];
  sub_24AE44D88(v0[15]);
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AE5CB28(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 145) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE838, &unk_24AE86388);
  *(v2 + 72) = v3;
  v4 = *(v3 - 8);
  *(v2 + 80) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  *(v2 + 96) = v6;
  v7 = *(v6 - 8);
  *(v2 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5CC60, v1, 0);
}

uint64_t sub_24AE5CC60()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 145);
  swift_beginAccess();
  v28 = v4;
  *(v3 + 232) = v4;
  swift_beginAccess();
  v5 = *(v3 + 224);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v27 = (v2 + 8);
  v29 = v5;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = *(v0 + 112);
      v16 = *(v0 + 88);
      v15 = *(v0 + 96);
      v17 = *(v0 + 72);
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      (*(v1 + 16))(v14, *(v29 + 56) + *(v1 + 72) * (v18 | (v13 << 6)), v15);
      *(v0 + 144) = v28;
      sub_24AE84140();
      (*(v1 + 8))(v14, v15);
      result = (*v27)(v16, v17);
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v19 = *(v0 + 64);

  v20 = *(v19 + 208);
  *(v0 + 120) = v20;
  if (v20)
  {
    *(v0 + 128) = *(*(v0 + 64) + 216);

    v30 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v0 + 136) = v22;
    *v22 = v0;
    v22[1] = sub_24AE5CF5C;
    v23 = *(v0 + 145);

    return v30(v23);
  }

  else
  {
    v24 = *(v0 + 112);
    v25 = *(v0 + 88);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_24AE5CF5C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE60C48, v2, 0);
}

uint64_t sub_24AE5D06C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AE5D08C, v1, 0);
}

uint64_t sub_24AE5D08C()
{
  v20 = v0;
  v1 = *(v0[5] + 16);
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    APNSManager.IncomingMessage.init(apsIncomingMessage:)(v2, &v17);
    v7 = v0[6];
    v8 = v17;
    v9 = v18;
    v10 = v19;
    v0[8] = v18;
    v0[9] = v10;
    v11 = *(v7 + 192);
    v0[10] = v11;
    if (v11)
    {
      v0[11] = *(v7 + 200);
      v0[2] = v8;
      v0[3] = v9;
      v0[4] = v10;

      v16 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      v0[12] = v13;
      *v13 = v0;
      v13[1] = sub_24AE5D430;

      return v16(v0 + 2);
    }
  }

  else
  {
    if (qword_280D7A020 != -1)
    {
      swift_once();
    }

    v3 = sub_24AE83ED0();
    __swift_project_value_buffer(v3, qword_280D7A9A8);
    v4 = sub_24AE83EB0();
    v5 = sub_24AE84230();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AE43000, v4, v5, "Expected UnsafeSendableBox<APSIncomingMessage> to have contents!", v6, 2u);
      MEMORY[0x24C233A80](v6, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24AE5D430()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 48);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_24AE5D580, v4, 0);
}

uint64_t sub_24AE5D580()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  sub_24AE44D88(v1);
  v3 = *(v0 + 8);

  return v3();
}

void APNSManager.IncomingMessage.init(apsIncomingMessage:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 topic];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24AE83FB0();
    v8 = v7;

    v9 = [v3 userInfo];
    if (v9 && (v10 = sub_24AE83F50(), v9, v11 = sub_24AE5D7C0(v10), , v11))
    {

      *a2 = v6;
      a2[1] = v8;
      a2[2] = v11;
    }

    else
    {
      sub_24AE5F464();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t APNSManager.Error.hashValue.getter()
{
  sub_24AE845F0();
  MEMORY[0x24C233390](0);
  return sub_24AE84610();
}

uint64_t APNSManager.IncomingMessage.topic.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_24AE5D7C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE860, &qword_24AE86410);
    v2 = sub_24AE84470();
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        sub_24AE60740(*(a1 + 48) + 40 * v13, v32);
        sub_24AE476DC(*(a1 + 56) + 32 * v13, v33 + 8);
        v30[0] = v33[0];
        v30[1] = v33[1];
        v31 = v34;
        v29[0] = v32[0];
        v29[1] = v32[1];
        sub_24AE60740(v29, v24);
        if (!swift_dynamicCast())
        {
          sub_24AE567BC(v29, &qword_27EFBE868, &qword_24AE86418);

          goto LABEL_23;
        }

        v14 = v23[0];
        v15 = v23[1];
        sub_24AE476DC(v30 + 8, v23);
        sub_24AE567BC(v29, &qword_27EFBE868, &qword_24AE86418);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        sub_24AE6079C(v22, v24);
        sub_24AE6079C(v24, v25);
        *&v26 = v14;
        *(&v26 + 1) = v15;
        sub_24AE6079C(v25, v27);
        v16 = v26;
        sub_24AE6079C(v27, v28);
        sub_24AE6079C(v28, &v26);
        result = sub_24AE475AC(v16, *(&v16 + 1));
        v17 = result;
        if (v18)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v16;

          v11 = (v2[7] + 32 * v17);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_24AE6079C(&v26, v11);
          v8 = v12;
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
          *(v2[6] + 16 * result) = v16;
          result = sub_24AE6079C(&v26, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_27;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

      memset(v22, 0, sizeof(v22));
      sub_24AE567BC(v22, &unk_27EFBE870, &qword_24AE86420);
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

uint64_t APNSManager.IncomingMessage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE84390();

  MEMORY[0x24C232D80](v1, v2);
  MEMORY[0x24C232D80](0x6E4972657375203BLL, 0xEC000000203A6F66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
  v4 = sub_24AE83F60();
  MEMORY[0x24C232D80](v4);

  MEMORY[0x24C232D80](62, 0xE100000000000000);
  return 0x203A6369706F743CLL;
}

uint64_t sub_24AE5DC1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_280D79C60 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_280D7A978);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

id sub_24AE5DCE0()
{
  v1 = v0;
  if (qword_27EFBE318 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE83ED0();
  __swift_project_value_buffer(v2, qword_27EFBE780);
  v3 = sub_24AE83EB0();
  v4 = sub_24AE84250();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AE43000, v3, v4, "APNSManager deinit", v5, 2u);
    MEMORY[0x24C233A80](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for APNSManager.PushDelegateTrampoline();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_24AE5DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AE5DE3C, a4, 0);
}

uint64_t sub_24AE5DE3C()
{
  v1 = v0[2];
  v2 = *(v1 + 144);
  v0[5] = v2;
  if (v2)
  {
    v0[6] = *(v1 + 152);

    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_24AE5DF84;
    v6 = v0[3];
    v5 = v0[4];

    return v9(v6, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24AE5DF84()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE5E094, v2, 0);
}

uint64_t sub_24AE5E094()
{
  v1 = v0[6];
  sub_24AE44D88(v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AE5E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_24AE5E344, a4, 0);
}

uint64_t sub_24AE5E344()
{
  v1 = v0[2];
  v2 = *(v1 + 160);
  v0[9] = v2;
  if (v2)
  {
    v0[10] = *(v1 + 168);

    v13 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_24AE5E494;
    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[5];
    v8 = v0[6];
    v10 = v0[3];
    v9 = v0[4];

    return v13(v10, v9, v7, v8, v5, v6);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24AE5E494()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v6 = *v0;

  sub_24AE44D88(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24AE5E6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE858, &qword_24AE863E8) - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for APNSAppTokenInfo();
  v7[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE5E7C8, 0, 0);
}

uint64_t sub_24AE5E7C8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = [v2 topic];
  v4 = sub_24AE83FB0();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v7 = [v2 identifier];
  v8 = sub_24AE83FB0();
  v10 = v9;

  v1[2] = v8;
  v1[3] = v10;
  v11 = [v2 expirationDate];
  if (v11)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 56);
    v14 = v11;
    sub_24AE83E50();

    v15 = 0;
  }

  else
  {
    v13 = *(v0 + 56);
    v15 = 1;
  }

  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v18 = *(v0 + 88);
  v19 = *(v0 + 64);
  v20 = sub_24AE83E60();
  (*(*(v20 - 8) + 56))(v18, v15, 1, v20);
  sub_24AE603F0(v18, v16 + *(v17 + 24));
  *(v0 + 40) = v17;
  *(v0 + 48) = &off_285E376C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_24AE604C4(v16, boxed_opaque_existential_1);

  return MEMORY[0x2822009F8](sub_24AE5E964, v19, 0);
}

uint64_t sub_24AE5E964()
{
  v1 = v0[8];
  v2 = *(v1 + 176);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = *(v1 + 184);

    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_24AE5EAC0;
    v6 = v0[9];
    v5 = v0[10];

    return v8(v6, v5, v0 + 2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    return MEMORY[0x2822009F8](sub_24AE5EC74, 0, 0);
  }
}

uint64_t sub_24AE5EAC0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 64);
  v6 = *v0;

  sub_24AE44D88(v3);

  return MEMORY[0x2822009F8](sub_24AE5EC0C, v4, 0);
}

uint64_t sub_24AE5EC0C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_24AE5EC74, 0, 0);
}

uint64_t sub_24AE5EC74()
{
  v1 = v0[11];
  sub_24AE60528(v0[13]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24AE5EDF8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AE4A504;

  return sub_24AE5D06C(a2);
}

uint64_t sub_24AE5EF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_24AE4A7E0;

  return sub_24AE5CB28(a5);
}

uint64_t sub_24AE5F108()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AE4A7E0;

  return sub_24AE5C580();
}

uint64_t sub_24AE5F36C()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A978);
  __swift_project_value_buffer(v0, qword_280D7A978);
  return sub_24AE83EC0();
}

uint64_t sub_24AE5F3EC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24AE5F41C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_24AE5F464()
{
  result = qword_27EFBE7B0;
  if (!qword_27EFBE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE7B0);
  }

  return result;
}

unint64_t sub_24AE5F4BC()
{
  result = qword_27EFBE7C0;
  if (!qword_27EFBE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFBE7C0);
  }

  return result;
}

uint64_t dispatch thunk of APNSManager.__allocating_init(environmentName:delegatePort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(v4 + 384) + **(v4 + 384));
  v10 = *(*(v4 + 384) + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24AE56890;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of APNSManager.enabledTopics.getter()
{
  v2 = *(*v0 + 392);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AE5548C;

  return v6();
}

uint64_t sub_24AE5FA1C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 >> 60 != 15 && a4 && a6)
    {
      v17 = result;
      v18 = sub_24AE84120();
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v17;
      v19[5] = a1;
      v19[6] = a2;
      v19[7] = a3;
      v19[8] = a4;
      v19[9] = a5;
      v19[10] = a6;
      sub_24AE6033C(a1, a2);

      sub_24AE6E000(0, 0, v15, &unk_24AE863F8, v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24AE5FBD0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 >> 60 == 15 || !a3)
    {
    }

    else
    {
      v11 = result;
      v12 = sub_24AE84120();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = a3;
      v13[5] = v11;
      v13[6] = a1;
      v13[7] = a2;
      sub_24AE6033C(a1, a2);
      v14 = a3;
      sub_24AE6E000(0, 0, v9, &unk_24AE863E0, v13);
    }
  }

  return result;
}

uint64_t sub_24AE5FD48(void *a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v3 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE848, &qword_24AE863B0);
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      sub_24AE83CB0();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = a1;

      MEMORY[0x24C232A30]("APNSManager.didReceive", 22, 2, &unk_24AE863C0, v5);
    }
  }

  return result;
}

void sub_24AE5FE6C(const char *a1)
{
  if (qword_27EFBE318 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE83ED0();
  __swift_project_value_buffer(v2, qword_27EFBE780);
  oslog = sub_24AE83EB0();
  v3 = sub_24AE84230();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, oslog, v3, a1, v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }
}

uint64_t sub_24AE5FF5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_24AE5FFA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AE4A7E0;

  return sub_24AE5F108();
}

uint64_t objectdestroy_51Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24AE600A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE5EF4C(a1, v4, v5, v6, v7);
}

uint64_t sub_24AE60168()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AE4A7E0;

  return sub_24AE5EDF8(v2, v3);
}

uint64_t sub_24AE60200(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AE60214(a1, a2);
  }

  return a1;
}

uint64_t sub_24AE60214(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AE60268(uint64_t a1)
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
  v10[1] = sub_24AE4A7E0;

  return sub_24AE5E6F8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24AE6033C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AE60350(a1, a2);
  }

  return a1;
}

uint64_t sub_24AE60350(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for APNSAppTokenInfo()
{
  result = qword_27EFBE880;
  if (!qword_27EFBE880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AE603F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE858, &qword_24AE863E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24AE604C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APNSAppTokenInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AE60528(uint64_t a1)
{
  v2 = type metadata accessor for APNSAppTokenInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AE60584(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24AE4A7E0;

  return sub_24AE5E310(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_24AE60678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AE4A7E0;

  return sub_24AE5DE18(a1, v4, v5, v6, v7, v8);
}

_OWORD *sub_24AE6079C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24AE607AC(uint64_t a1)
{
  v3 = *(sub_24AE83EA0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24AE5B2BC(a1, v4, v5);
}

uint64_t sub_24AE60820(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24AE83EA0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AE4A7E0;

  return sub_24AE5B87C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_24AE6098C()
{
  result = qword_280D7A030;
  if (!qword_280D7A030)
  {
    sub_24AE83EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7A030);
  }

  return result;
}

uint64_t sub_24AE609E4(uint64_t a1)
{
  v4 = *(sub_24AE83EA0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AE4A504;

  return sub_24AE5B49C(a1, v6, v7, v8, v1 + v5);
}

void sub_24AE60B04()
{
  sub_24AE60B80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24AE60B80()
{
  if (!qword_27EFBE890)
  {
    sub_24AE83E60();
    v0 = sub_24AE842F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFBE890);
    }
  }
}

uint64_t sub_24AE60BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE858, &qword_24AE863E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ActorServiceProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = sub_24AE844F0();
  MEMORY[0x24C232D80](v4);

  MEMORY[0x24C232D80](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C233290](a1, v3);
  MEMORY[0x24C232D80](v5);

  MEMORY[0x24C232D80](62, 0xE100000000000000);
  return 60;
}

uint64_t dispatch thunk of ActorServiceProtocol.initialLaunchProcessing()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A7E0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActorServiceProtocol.migrate(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t dispatch thunk of ActorServiceProtocol.firstLaunchSinceReboot()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A504;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActorServiceProtocol.startup()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A7E0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActorServiceProtocol.run()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A504;

  return v9(a1, a2);
}

uint64_t withArrayOfCStrings<A>(_:_:)(uint64_t a1, void (*a2)(char *))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    sub_24AE61B4C(0, v2, 0);
    v5 = v25;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = sub_24AE83FD0();

      v10 = strdup((v9 + 32));

      v12 = *(v25 + 16);
      v11 = *(v25 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_24AE61B4C((v11 > 1), v12 + 1, 1);
      }

      *(v25 + 16) = v13;
      *(v25 + 8 * v12 + 32) = v10;
      v6 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v13 = *(MEMORY[0x277D84F90] + 16);
    v5 = MEMORY[0x277D84F90];
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  sub_24AE61B1C(0, v13, 0);
  v14 = *(v3 + 2);
  v15 = 32;
  do
  {
    v16 = *(v5 + v15);
    v17 = *(v3 + 3);
    if (v14 >= v17 >> 1)
    {
      sub_24AE61B1C((v17 > 1), v14 + 1, 1);
    }

    *(v3 + 2) = v14 + 1;
    *&v3[8 * v14 + 32] = v16;
    v15 += 8;
    ++v14;
    --v13;
  }

  while (v13);
LABEL_12:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24AE616B4(0, *(v3 + 2) + 1, 1, v3);
  }

  v19 = *(v3 + 2);
  v18 = *(v3 + 3);
  if (v19 >= v18 >> 1)
  {
    v3 = sub_24AE616B4((v18 > 1), v19 + 1, 1, v3);
  }

  *(v3 + 2) = v19 + 1;
  *&v3[8 * v19 + 32] = 0;
  a2(v3);

  v20 = *(v5 + 16);
  if (v20)
  {
    v21 = (v5 + 32);
    do
    {
      v22 = *v21++;
      free(v22);
      --v20;
    }

    while (v20);
  }
}

char *sub_24AE61584(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A8, &qword_24AE869E0);
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

char *sub_24AE616B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8B8, &qword_24AE86528);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_24AE617DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE898, &qword_24AE86520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24AE61934(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_24AE61B1C(char *a1, int64_t a2, char a3)
{
  result = sub_24AE61B7C(a1, a2, a3, *v3, &qword_27EFBE8B8, &qword_24AE86528);
  *v3 = result;
  return result;
}

char *sub_24AE61B4C(char *a1, int64_t a2, char a3)
{
  result = sub_24AE61B7C(a1, a2, a3, *v3, &qword_27EFBE8C0, &qword_24AE86530);
  *v3 = result;
  return result;
}

char *sub_24AE61B7C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void sub_24AE61CAC(uint64_t *a1@<X8>)
{

  sub_24AE62164(sub_24AE61C78, v1, &v12);

  v3 = v12;
  if (qword_280D7A0B8 != -1)
  {
    swift_once();
  }

  v4 = sub_24AE83ED0();
  __swift_project_value_buffer(v4, qword_280D7A9D8);

  v5 = sub_24AE83EB0();
  v6 = sub_24AE84250();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    type metadata accessor for Daemon();

    v9 = sub_24AE83FC0();
    v11 = sub_24AE53C28(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24AE43000, v5, v6, "Signal Handling activated for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C233A80](v8, -1, -1);
    MEMORY[0x24C233A80](v7, -1, -1);
  }

  *a1 = v3;
}

void SignalHandling.activateSignalHandling()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = *(v6 + 16);
  v12(&v27 - v10, v3, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v6 + 32))(v14 + v13, v11, a1);
  static SignalHandling.trapSignals(handler:)(sub_24AE62968, v14, &v30);

  v15 = v30;
  if (qword_280D7A0B8 != -1)
  {
    swift_once();
  }

  v16 = sub_24AE83ED0();
  __swift_project_value_buffer(v16, qword_280D7A9D8);
  v12(v9, v3, a1);
  v17 = sub_24AE83EB0();
  v18 = sub_24AE84250();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    v12(v11, v9, a1);
    v22 = sub_24AE83FC0();
    v24 = v23;
    (*(v6 + 8))(v9, a1);
    v25 = sub_24AE53C28(v22, v24, &v30);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_24AE43000, v17, v18, "Signal Handling activated for %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C233A80](v21, -1, -1);
    v26 = v20;
    v15 = v28;
    MEMORY[0x24C233A80](v26, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, a1);
  }

  *v29 = v15;
}

uint64_t sub_24AE62164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a1;
  v20 = a3;
  v19 = sub_24AE83F00();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AE83F30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  sub_24AE629D0();
  sub_24AE84270();
  swift_getObjectType();
  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  *(v13 + 24) = a2;
  *(v13 + 32) = 15;
  aBlock[4] = sub_24AE62C28;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AE62714;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  sub_24AE83F20();
  sub_24AE62758();
  sub_24AE84280();
  _Block_release(v14);
  (*(v4 + 8))(v7, v19);
  (*(v9 + 8))(v12, v8);

  sub_24AE84290();
  v15 = swift_unknownObjectRetain();
  MEMORY[0x24C232E10](v15);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24AE840C0();
  }

  sub_24AE840D0();
  result = swift_unknownObjectRelease();
  *v20 = v22;
  return result;
}

uint64_t static SignalHandling.trapSignals(handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a1;
  v20 = a3;
  v19 = sub_24AE83F00();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AE83F30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84F90];
  sub_24AE629D0();
  sub_24AE84270();
  swift_getObjectType();
  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  *(v13 + 24) = a2;
  *(v13 + 32) = 15;
  aBlock[4] = sub_24AE62A1C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AE62714;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  sub_24AE83F20();
  sub_24AE62758();
  sub_24AE84280();
  _Block_release(v14);
  (*(v4 + 8))(v7, v19);
  (*(v9 + 8))(v12, v8);

  sub_24AE84290();
  v15 = swift_unknownObjectRetain();
  MEMORY[0x24C232E10](v15);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24AE840C0();
  }

  sub_24AE840D0();
  result = swift_unknownObjectRelease();
  *v20 = v22;
  return result;
}

uint64_t sub_24AE62714(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24AE62758()
{
  sub_24AE83F00();
  sub_24AE62B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8E0, &qword_24AE865A0);
  sub_24AE62B74();
  return sub_24AE84300();
}

uint64_t sub_24AE627E0()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A9D8);
  __swift_project_value_buffer(v0, qword_280D7A9D8);
  return sub_24AE83EC0();
}

void sub_24AE62888(int a1)
{
  if (qword_280D7A0B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE83ED0();
  __swift_project_value_buffer(v2, qword_280D7A9D8);
  v3 = sub_24AE83EB0();
  v4 = sub_24AE84250();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_24AE43000, v3, v4, "Daemon exiting after receiving signal %d", v5, 8u);
    MEMORY[0x24C233A80](v5, -1, -1);
  }

  exit(0);
}

unint64_t sub_24AE629D0()
{
  result = qword_280D7A060;
  if (!qword_280D7A060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D7A060);
  }

  return result;
}

uint64_t sub_24AE62A60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AE62AA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AE62B1C()
{
  result = qword_280D7A088;
  if (!qword_280D7A088)
  {
    sub_24AE83F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7A088);
  }

  return result;
}

unint64_t sub_24AE62B74()
{
  result = qword_280D7A078;
  if (!qword_280D7A078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFBE8E0, &qword_24AE865A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7A078);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t (*sub_24AE62C2C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24AE65F10(v6, a2, a3);
  return sub_24AE675E8;
}

uint64_t (*sub_24AE62CB4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24AE65FBC(v6, a2, a3);
  return sub_24AE675E8;
}

uint64_t (*sub_24AE62D3C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24AE66068(v6, a2, a3);
  return sub_24AE675E8;
}

uint64_t (*sub_24AE62DC4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_24AE66114(v6, a2, a3);
  return sub_24AE62E4C;
}

void sub_24AE62E50(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_24AE62E9C()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79B08);
  v1 = __swift_project_value_buffer(v0, qword_280D79B08);
  if (qword_280D79898 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D798A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t XPCAlarmEventHandler.__allocating_init(eventStreamHandler:)(uint64_t a1)
{
  v2 = swift_allocObject();
  XPCAlarmEventHandler.init(eventStreamHandler:)(a1);
  return v2;
}

uint64_t XPCAlarmEventHandler.init(eventStreamHandler:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  *(v1 + 112) = MEMORY[0x277D84F90];
  *(v1 + 128) = sub_24AE55FF0(v3);
  *(v1 + 136) = sub_24AE561E8(v3);
  *(v1 + 144) = sub_24AE55FF0(v3);
  *(v1 + 152) = sub_24AE561E8(v3);
  *(v1 + 160) = sub_24AE563E0(v3);
  *(v1 + 168) = 0;
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_24AE63078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE680, &unk_24AE85E70) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8E8, qword_24AE865C0);
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v8 = *(v7 + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE688, &unk_24AE87270);
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v11 = *(v10 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE631F4, v3, 0);
}

uint64_t sub_24AE631F4()
{
  v69 = v0;
  v1 = v0[14];
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = *(v1 + 128);

    v6 = sub_24AE475AC(v4, v3);
    if (v7)
    {
LABEL_6:
      (*(v0[20] + 16))(v0[22], *(v2 + 56) + *(v0[20] + 72) * v6, v0[19]);

      goto LABEL_13;
    }

    v1 = v0[14];
  }

  swift_beginAccess();
  v2 = *(v1 + 144);
  if (*(v2 + 16))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = *(v1 + 144);

    v6 = sub_24AE475AC(v9, v8);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  if (qword_280D79B00 != -1)
  {
    swift_once();
  }

  v12 = v0[13];
  v13 = sub_24AE83ED0();
  __swift_project_value_buffer(v13, qword_280D79B08);

  v14 = sub_24AE83EB0();
  v15 = sub_24AE84250();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[12];
    v16 = v0[13];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v68 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    *(v18 + 14) = sub_24AE53C28(v17, v16, &v68);
    _os_log_impl(&dword_24AE43000, v14, v15, "Creating base AsyncStream for XPCAlarm with stream name: %{private,mask.hash}s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C233A80](v19, -1, -1);
    MEMORY[0x24C233A80](v18, -1, -1);
  }

  v64 = v0[21];
  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[17];
  v23 = v0[18];
  v24 = v0[16];
  v65 = v0[15];
  v66 = v0[22];
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];
  v28 = swift_task_alloc();
  v28[2] = v25;
  v28[3] = v27;
  v28[4] = v26;
  (*(v22 + 104))(v23, *MEMORY[0x277D85778], v24);
  sub_24AE84170();

  v29 = *(v20 + 16);
  v29(v66, v64, v21);
  v29(v65, v66, v21);
  (*(v20 + 56))(v65, 0, 1, v21);
  swift_beginAccess();

  sub_24AE4FE9C(v65, v27, v26);
  swift_endAccess();
  (*(v20 + 8))(v64, v21);
LABEL_13:
  v31 = v0[17];
  v30 = v0[18];
  v32 = v0[16];
  v34 = v0[13];
  v33 = v0[14];
  v35 = v0[11];
  v36 = v0[12];
  v37 = swift_task_alloc();
  v37[2] = v33;
  v37[3] = v36;
  v37[4] = v34;
  (*(v31 + 104))(v30, *MEMORY[0x277D85778], v32);
  sub_24AE84170();

  swift_beginAccess();
  v38 = *(v33 + 160);
  if (*(v38 + 16))
  {
    v40 = v0[12];
    v39 = v0[13];
    v41 = *(v33 + 160);

    v42 = sub_24AE475AC(v40, v39);
    if (v43)
    {
      v44 = *(*(v38 + 56) + 8 * v42);

      v45 = *(v44 + 16);

      goto LABEL_18;
    }
  }

  v45 = 0;
LABEL_18:
  if (qword_280D79B00 != -1)
  {
    swift_once();
  }

  v46 = v0[13];
  v47 = sub_24AE83ED0();
  __swift_project_value_buffer(v47, qword_280D79B08);

  v48 = sub_24AE83EB0();
  v49 = sub_24AE84250();

  v50 = os_log_type_enabled(v48, v49);
  v51 = v0[22];
  v52 = v0[19];
  v53 = v0[20];
  if (v50)
  {
    v67 = v45;
    v55 = v0[12];
    v54 = v0[13];
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v68 = v57;
    *v56 = 136315394;
    *(v56 + 4) = sub_24AE53C28(v55, v54, &v68);
    *(v56 + 12) = 2048;
    *(v56 + 14) = v67;
    _os_log_impl(&dword_24AE43000, v48, v49, "Creating sub AsyncStream for XPCAlarm name: [%s], count: %ld", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x24C233A80](v57, -1, -1);
    MEMORY[0x24C233A80](v56, -1, -1);
  }

  (*(v53 + 8))(v51, v52);
  v59 = v0[21];
  v58 = v0[22];
  v60 = v0[18];
  v61 = v0[15];

  v62 = v0[1];

  return v62();
}

uint64_t sub_24AE637F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE690, &unk_24AE85E80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE698, &qword_24AE87280);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_24AE500A0(v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24AE63948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE698, &qword_24AE87280);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31[-1] - v11;
  swift_beginAccess();
  if (*(*(a2 + 160) + 16) && (v13 = *(a2 + 160), , sub_24AE475AC(a3, a4), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = sub_24AE62F64();
    v18 = sub_24AE62D3C(v31, a3, a4);
    if (*v17)
    {
      v19 = v17;
      (*(v9 + 16))(v12, a1, v8);
      v20 = *v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_24AE617B8(0, v20[2] + 1, 1, v20);
        *v19 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_24AE617B8(v22 > 1, v23 + 1, 1, v20);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8B0, &unk_24AE866E0);
    v25 = *(v9 + 72);
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24AE85CE0;
    (*(v9 + 16))(v27 + v26, a1, v8);
    swift_beginAccess();

    v28 = *(a2 + 160);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *(a2 + 160);
    *(a2 + 160) = 0x8000000000000000;
    sub_24AE803D0(v27, a3, a4, v29);

    *(a2 + 160) = v31[0];
    return swift_endAccess();
  }
}

uint64_t sub_24AE63C7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE63C9C, v1, 0);
}

uint64_t sub_24AE63C9C()
{
  if (MEMORY[0x24C2329E0]())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[3];
    v4 = *(v3 + 112);
    v8 = v0[2];

    sub_24AE65D18(v4);
    v5 = *(v3 + 112);
    *(v3 + 112) = v8;

    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_24AE675E4;
    v7 = v0[3];

    return sub_24AE63F9C();
  }
}

uint64_t sub_24AE63DA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE63DC8, v1, 0);
}

uint64_t sub_24AE63DC8()
{
  if (MEMORY[0x24C2329E0]())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[3];
    v4 = *(v3 + 112);
    *(v3 + 112) = v0[2];

    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_24AE63EA8;
    v6 = v0[3];

    return sub_24AE63F9C();
  }
}

uint64_t sub_24AE63EA8()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AE63F9C()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE760, &unk_24AE85DD0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v1[10] = *(v5 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE640EC, v0, 0);
}

uint64_t sub_24AE640EC()
{
  v1 = v0[5];
  if (*(v1 + 168))
  {
    v3 = v0[11];
    v2 = v0[12];
    v5 = v0[6];
    v4 = v0[7];

    v6 = v0[1];

    return v6();
  }

  else
  {
    *(v1 + 168) = 1;
    v8 = *(v1 + 120);
    v0[13] = v8;

    return MEMORY[0x2822009F8](sub_24AE641C4, v8, 0);
  }
}

uint64_t sub_24AE641C4()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {

    v3 = sub_24AE475AC(0x6C7070612E6D6F63, 0xEF6D72616C612E65);
    if (v4)
    {
      (*(v0[9] + 16))(v0[7], *(v2 + 56) + *(v0[9] + 72) * v3, v0[8]);
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

  v6 = v0[5];
  (*(v0[9] + 56))(v0[7], v5, 1, v0[8]);

  return MEMORY[0x2822009F8](sub_24AE642E0, v6, 0);
}

uint64_t sub_24AE642E0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AE567BC(v3, &qword_27EFBE760, &unk_24AE85DD0);
    return sub_24AE84440();
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    v8 = v0[5];
    v7 = v0[6];
    v20 = v0[10];
    v21 = v7;
    v22 = *(v2 + 32);
    v22(v5, v3, v1);
    v9 = sub_24AE84120();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = v6;
    (*(v2 + 16))(v6, v5, v1);
    v12 = sub_24AE67510(&unk_280D79AF0, v11, type metadata accessor for XPCAlarmEventHandler);
    v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v12;
    v22(v14 + v13, v10, v1);
    *(v14 + ((v20 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
    swift_retain_n();
    sub_24AE6E000(0, 0, v21, &unk_24AE866B8, v14);

    (*(v2 + 8))(v5, v1);
    v16 = v0[11];
    v15 = v0[12];
    v18 = v0[6];
    v17 = v0[7];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_24AE645A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE5F0, &unk_24AE86090);
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v10 = *(v9 + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE646B8, a5, 0);
}

uint64_t sub_24AE646B8()
{
  v1 = v0[27];
  v2 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  sub_24AE84150();
  v4 = sub_24AE67510(&unk_280D79AF0, v3, type metadata accessor for XPCAlarmEventHandler);
  v0[28] = v4;
  v5 = v0[22];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_24AE647CC;
  v8 = v0[27];
  v9 = v0[25];

  return MEMORY[0x2822003E8](v0 + 17, v5, v4, v9);
}

uint64_t sub_24AE647CC()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE648DC, v2, 0);
}

uint64_t sub_24AE648DC()
{
  v80 = v0;
  v1 = *(v0 + 136);
  if (!v1)
  {
    v65 = *(v0 + 192);
    v66 = *(v0 + 184);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v67 = *(v0 + 8);

    return v67();
  }

  v69 = (v0 + 80);
  v76 = *(v0 + 144);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_10:
    v13 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_24AE476DC(*(v1 + 56) + ((v10 << 11) | (32 * v13)), v0 + 16);
    sub_24AE6079C((v0 + 16), (v0 + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
    isUniquelyReferenced_nonNull_native = swift_dynamicCast();
    if (isUniquelyReferenced_nonNull_native)
    {
      v14 = v78[20];
      if (v14)
      {
        v73 = v78[19];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_24AE61584(0, *(v11 + 16) + 1, 1, v11);
          v11 = isUniquelyReferenced_nonNull_native;
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v71 = v16 + 1;
          v19 = v11;
          v20 = *(v11 + 16);
          isUniquelyReferenced_nonNull_native = sub_24AE61584((v15 > 1), v16 + 1, 1, v19);
          v17 = v71;
          v16 = v20;
          v11 = isUniquelyReferenced_nonNull_native;
        }

        *(v11 + 16) = v17;
        v18 = v11 + 16 * v16;
        *(v18 + 32) = v73;
        *(v18 + 40) = v14;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v12 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v12);
    ++v10;
    if (v4)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  v21 = v78;
  v22 = v78[22];

  v23 = sub_24AE673A4(v11);

  v24 = *(v22 + 112);

  v26 = sub_24AE668D8(v25, v23);

  v27 = v26 + 56;
  v28 = -1 << *(v26 + 32);
  if (-v28 < 64)
  {
    v29 = ~(-1 << -v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v26 + 56);
  isUniquelyReferenced_nonNull_native = swift_beginAccess();
  v31 = 0;
  v32 = (63 - v28) >> 6;
  v70 = v26;
  if (!v30)
  {
    goto LABEL_23;
  }

  do
  {
    while (1)
    {
LABEL_27:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = (*(v26 + 48) + ((v31 << 10) | (16 * v34)));
      v37 = *v35;
      v36 = v35[1];
      v38 = *(v21[22] + 160);
      v39 = *(v38 + 16);

      if (!v39)
      {
        goto LABEL_32;
      }

      v40 = sub_24AE475AC(v37, v36);
      if ((v41 & 1) == 0)
      {
        break;
      }

      v42 = v21[24];
      v74 = *(*(v38 + 56) + 8 * v40);
      v75 = v21[23];

      v43 = sub_24AE84120();
      v72 = v37;
      v44 = *(v43 - 8);
      (*(v44 + 56))(v42, 1, 1, v43);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v76;
      v45[5] = v74;
      v45[6] = v72;
      v45[7] = v36;
      sub_24AE5A304(v42, v75);
      LODWORD(v42) = (*(v44 + 48))(v75, 1, v43);

      v46 = v78[23];
      if (v42 == 1)
      {
        sub_24AE567BC(v78[23], &qword_27EFBE620, &qword_24AE860B0);
      }

      else
      {
        sub_24AE84110();
        (*(v44 + 8))(v46, v43);
      }

      v55 = v45[2];
      v56 = v45[3];
      swift_unknownObjectRetain();

      if (v55)
      {
        swift_getObjectType();
        v57 = sub_24AE840E0();
        v59 = v58;
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = 0;
        v59 = 0;
      }

      sub_24AE567BC(v78[24], &qword_27EFBE620, &qword_24AE860B0);
      if (v59 | v57)
      {
        *v69 = 0;
        v69[1] = 0;
        v78[12] = v57;
        v78[13] = v59;
      }

      v26 = v70;
      swift_task_create();

      v21 = v78;
      if (!v30)
      {
        goto LABEL_23;
      }
    }

LABEL_32:
    if (qword_280D79B00 != -1)
    {
      swift_once();
    }

    v47 = sub_24AE83ED0();
    __swift_project_value_buffer(v47, qword_280D79B08);

    v48 = sub_24AE83EB0();
    v49 = sub_24AE84240();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v37;
      v53 = v51;
      v79 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_24AE53C28(v52, v36, &v79);
      _os_log_impl(&dword_24AE43000, v48, v49, "Received alarm event for stream%{public}s with no subscribers!", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x24C233A80](v53, -1, -1);
      v54 = v50;
      v21 = v78;
      MEMORY[0x24C233A80](v54, -1, -1);
    }
  }

  while (v30);
LABEL_23:
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v32)
    {

      v60 = v21[28];
      v61 = v21[22];
      v62 = *(MEMORY[0x277D85798] + 4);
      v63 = swift_task_alloc();
      v21[29] = v63;
      *v63 = v21;
      v63[1] = sub_24AE647CC;
      v64 = v21[27];
      v9 = v21[25];
      isUniquelyReferenced_nonNull_native = v77;
      v7 = v61;
      v8 = v60;

      return MEMORY[0x2822003E8](isUniquelyReferenced_nonNull_native, v7, v8, v9);
    }

    v30 = *(v27 + 8 * v33);
    ++v31;
    if (v30)
    {
      v31 = v33;
      goto LABEL_27;
    }
  }

LABEL_51:
  __break(1u);
  return MEMORY[0x2822003E8](isUniquelyReferenced_nonNull_native, v7, v8, v9);
}

uint64_t sub_24AE6503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8F0, &unk_24AE866D0);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE698, &qword_24AE87280);
  v7[18] = v11;
  v12 = *(v11 - 8);
  v7[19] = v12;
  v13 = *(v12 + 64) + 15;
  v7[20] = swift_task_alloc();
  v14 = swift_task_alloc();
  v7[21] = v14;
  *v14 = v7;
  v14[1] = sub_24AE651A4;

  return daemon.getter();
}

uint64_t sub_24AE651A4(uint64_t a1)
{
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_24AE652A8, a1, 0);
}

uint64_t sub_24AE652A8()
{
  v1 = *(*(v0 + 176) + 128);
  *(v0 + 184) = v1;
  return MEMORY[0x2822009F8](sub_24AE652CC, v1, 0);
}

uint64_t sub_24AE652CC()
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

    return MEMORY[0x2822009F8](sub_24AE65588, 0, 0);
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

  sub_24AE67510(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection);
  v24 = swift_task_alloc();
  v0[29] = v24;
  v24[2] = v23;
  v24[3] = v15;
  v24[4] = v14;
  v25 = *(MEMORY[0x277D85A40] + 4);
  v26 = swift_task_alloc();
  v0[30] = v26;
  *v26 = v0;
  v26[1] = sub_24AE65748;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AE65588()
{
  v2 = v0[11];
  v1 = v0[12];
  sub_24AE83CB0();
  sub_24AE83C90();
  v0[10] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9B0, &qword_24AE85E10);
  swift_task_localValuePush();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[19];
    v19 = *(v4 + 16);
    v5 = v0[12] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = (v0[16] + 8);
    v18 = *(v4 + 72);
    v6 = (v4 + 8);
    do
    {
      v7 = v0[20];
      v9 = v0[17];
      v8 = v0[18];
      v11 = v0[14];
      v10 = v0[15];
      v12 = v0[13];
      v19(v7, v5, v8);
      v0[8] = v12;
      v0[9] = v11;

      sub_24AE84140();
      (*v17)(v9, v10);
      (*v6)(v7, v8);
      v5 += v18;
      --v3;
    }

    while (v3);
  }

  v13 = v0[20];
  v14 = v0[17];
  swift_task_localValuePop();

  v15 = v0[1];

  return v15();
}

uint64_t sub_24AE65748()
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

    v10 = sub_24AE65B24;
    v11 = v8;
  }

  else
  {
    v12 = v2[23];

    v10 = sub_24AE658C8;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_24AE658C8()
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

        sub_24AE67510(&qword_280D7A510, 255, type metadata accessor for ActorServiceCollection);
        v17 = swift_task_alloc();
        v0[29] = v17;
        v17[2] = v16;
        v17[3] = v14;
        v17[4] = v13;
        v18 = *(MEMORY[0x277D85A40] + 4);
        v19 = swift_task_alloc();
        v0[30] = v19;
        *v19 = v0;
        v19[1] = sub_24AE65748;

        return MEMORY[0x2822008A0]();
      }
    }
  }

  v20 = v0[24];
  v21 = v0[22];

  return MEMORY[0x2822009F8](sub_24AE65588, 0, 0);
}

uint64_t sub_24AE65B24()
{
  v1 = *(v0 + 216);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24AE65B8C, 0, 0);
}

uint64_t sub_24AE65B8C()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];

  v4 = v0[1];
  v5 = v0[31];

  return v4();
}

void *XPCAlarmEventHandler.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  v6 = v0[19];

  v7 = v0[20];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCAlarmEventHandler.__deallocating_deinit()
{
  XPCAlarmEventHandler.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE65C98()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D798A0);
  __swift_project_value_buffer(v0, qword_280D798A0);
  return sub_24AE83EC0();
}

uint64_t sub_24AE65D18(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AE61584(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

void *sub_24AE65E0C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_24AE617DC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t (*sub_24AE65F10(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_24AE6687C(v8);
  v8[9] = sub_24AE66224(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24AE675EC;
}

uint64_t (*sub_24AE65FBC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_24AE6687C(v8);
  v8[9] = sub_24AE663A8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24AE675EC;
}

uint64_t (*sub_24AE66068(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_24AE6687C(v8);
  v8[9] = sub_24AE66500(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24AE675EC;
}

uint64_t (*sub_24AE66114(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_24AE668A4(v8);
  v8[9] = sub_24AE66658(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_24AE661C0;
}

void sub_24AE661C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24AE66224(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24AE475AC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_24AE807E8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24AE7EF28(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_24AE475AC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24AE84570();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_24AE6637C;
}

void (*sub_24AE663A8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24AE475AC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_24AE80868();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24AE7EF84(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_24AE475AC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24AE84570();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_24AE6637C;
}

void (*sub_24AE66500(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24AE475AC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_24AE80C20();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24AE7F44C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_24AE475AC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24AE84570();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_24AE6637C;
}

void (*sub_24AE66658(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24AE475AC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_24AE80C34();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24AE7F460(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_24AE475AC(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24AE84570();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_24AE6637C;
}

void sub_24AE667B0(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_24AE6758C(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  v12 = *v4;

  free(v4);
}

uint64_t (*sub_24AE6687C(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24AE675E0;
}

uint64_t (*sub_24AE668A4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24AE668CC;
}

uint64_t sub_24AE668D8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_24AE66A78(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_24AE67558(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x24C233A80](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_24AE66A78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_24AE845F0();

          sub_24AE83FE0();
          v14 = sub_24AE84610();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_24AE84540() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_24AE66C58(v26, a2, v25, a4);
}

uint64_t sub_24AE66C58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8F8, &unk_24AE87260);
  result = sub_24AE84370();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_24AE845F0();

    sub_24AE83FE0();
    result = sub_24AE84610();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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

uint64_t dispatch thunk of XPCAlarmEventHandler.asyncStream(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 304);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AE4A7E0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:)(uint64_t a1)
{
  v4 = *(*v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A7E0;

  return v8(a1);
}

uint64_t dispatch thunk of XPCAlarmEventHandler.processEvents(with:)(uint64_t a1)
{
  v4 = *(*v1 + 320);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A7E0;

  return v8(a1);
}

uint64_t sub_24AE67278(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AE4A504;

  return sub_24AE645A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24AE673A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C232F30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AE81824(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24AE6743C(uint64_t a1)
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
  v10[1] = sub_24AE4A504;

  return sub_24AE6503C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24AE67510(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24AE67558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24AE66A78(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24AE675F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE908, &unk_24AE869F0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_280D7A748 = result;
  return result;
}

uint64_t sub_24AE67634()
{
  type metadata accessor for DaemonActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_280D7A800 = v0;
  return result;
}

uint64_t static DaemonActor.shared.getter()
{
  if (qword_280D7A7F8 != -1)
  {
    swift_once();
  }
}

uint64_t DaemonActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE6771C()
{
  if (qword_280D7A7F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24AE67778(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DaemonActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_24AE677B0(uint64_t *a1, uint64_t a2)
{
  if ((MEMORY[0x24C2329E0]() & 1) == 0 && *a1)
  {
    v5 = *a1;

    sub_24AE84390();

    v6 = sub_24AE69C58();
    MEMORY[0x24C232D80](v6);

    result = sub_24AE84440();
    __break(1u);
  }

  else
  {

    *a1 = a2;
  }

  return result;
}

uint64_t Daemon.identifier.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t Daemon.__allocating_init(identifier:profile:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  type metadata accessor for Daemon();
  swift_allocObject();
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_24AE67A04;

  return sub_24AE69D6C(a1, a2, a3, a4, 0, a5, a6);
}

uint64_t sub_24AE67A04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_24AE67BA0;
    v8 = 0;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_24AE67B38;
    v8 = a1;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_24AE67B38()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t sub_24AE67BA0()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t Daemon.__allocating_init(identifier:profile:registerAlarmEvent:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a7;
  swift_allocObject();
  v15 = swift_task_alloc();
  *(v7 + 24) = v15;
  *v15 = v7;
  v15[1] = sub_24AE67D10;

  return sub_24AE69D6C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24AE67D10(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t Daemon.init(identifier:profile:registerAlarmEvent:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a7;
  v15 = swift_task_alloc();
  *(v7 + 24) = v15;
  *v15 = v7;
  v15[1] = sub_24AE6ABA4;

  return sub_24AE69D6C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t Daemon.__allocating_init(mockServices:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AE67FD4;

  return Daemon.init(mockServices:)(a1);
}

uint64_t sub_24AE67FD4(uint64_t a1)
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

uint64_t Daemon.init(mockServices:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AE680F4, 0, 0);
}

uint64_t sub_24AE680F4()
{
  v1 = v0[3];
  swift_defaultActor_initialize();
  type metadata accessor for ActorServiceCollection();
  v2 = swift_allocObject();
  v3 = swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F90];
  *(v2 + 120) = 0;
  v4 = MEMORY[0x277D84FA0];
  *(v2 + 128) = MEMORY[0x277D84F98];
  *(v2 + 136) = v4;
  *(v1 + 128) = v2;
  *(v1 + 184) = 0;
  if ((MEMORY[0x24C2329E0](v3) & 1) == 0)
  {
    return sub_24AE84440();
  }

  v5 = v0[2];
  v6 = v0[3];
  v6[14] = 1262702413;
  v6[15] = 0xE400000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v6[21] = &unk_24AE86748;
  v6[22] = v7;
  type metadata accessor for XPCEventStreamHandler();
  swift_allocObject();
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_24AE682B4;
  v9 = MEMORY[0x277D84F90];

  return sub_24AE6FC24(v9);
}

uint64_t sub_24AE682B4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_24AE683B4, 0, 0);
}

uint64_t sub_24AE683B4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v2[17] = v1;
  type metadata accessor for DarwinNotificationHandler();
  v3 = swift_allocObject();

  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F90];
  v3[15] = sub_24AE54E80(MEMORY[0x277D84F90]);
  v3[16] = sub_24AE55078(v4);
  v3[17] = sub_24AE54E80(v4);
  v3[18] = sub_24AE55078(v4);
  v3[19] = sub_24AE55270(v4);
  v3[14] = v1;
  v2[18] = v3;
  v5 = v2[17];
  type metadata accessor for DistributedNotificationHandler();
  v6 = swift_allocObject();

  swift_defaultActor_initialize();
  v6[15] = sub_24AE55BEC(v4);
  v6[16] = sub_24AE55DE4(v4);
  v6[17] = sub_24AE55BEC(v4);
  v6[18] = sub_24AE55DE4(v4);
  v6[19] = sub_24AE55FDC(v4);
  v6[14] = v5;
  v2[19] = v6;
  v2[20] = 0;

  return MEMORY[0x2822009F8](sub_24AE6850C, v2, 0);
}

uint64_t sub_24AE6850C()
{
  if (qword_280D7A740 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = off_280D7A748;
  os_unfair_lock_lock(off_280D7A748 + 6);
  sub_24AE6A54C(v2 + 2);
  os_unfair_lock_unlock(v2 + 6);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_24AE68628;
  v4 = *(v0 + 24);

  return sub_24AE68888();
}

uint64_t sub_24AE68628()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  sub_24AE6A6B0(&qword_280D7A928, type metadata accessor for Daemon);
  if (v0)
  {
    v4 = v3[3];
    swift_getObjectType();
    v6 = sub_24AE840E0();

    return MEMORY[0x2822009F8](sub_24AE687C0, v6, v5);
  }

  else
  {
    v7 = v3[1];
    v8 = v3[3];

    return v7(v8);
  }
}

uint64_t sub_24AE687C0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_24AE68824()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_24AE688A8()
{
  v20 = v0;
  if (qword_280D7A090 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_24AE83ED0();
  __swift_project_value_buffer(v2, qword_280D7A9C0);

  v3 = sub_24AE83EB0();
  v4 = sub_24AE84250();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;

    v9 = sub_24AE69C58();
    v11 = v10;

    v12 = sub_24AE53C28(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AE43000, v3, v4, "Starting daemon: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C233A80](v8, -1, -1);
    MEMORY[0x24C233A80](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[6];
  v0[5] = MEMORY[0x277D84F90];
  v14 = *(v13 + 176);
  v18 = (*(v13 + 168) + **(v13 + 168));
  v15 = *(*(v13 + 168) + 4);
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_24AE68B04;

  return v18();
}

uint64_t sub_24AE68B04(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_24AE68C1C, v3, 0);
}

uint64_t sub_24AE68C1C()
{
  v1 = *(v0 + 48);
  sub_24AE65E0C(*(v0 + 64));
  v2 = *(v1 + 128);
  v3 = *(v0 + 40);
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;

  return MEMORY[0x2822009F8](sub_24AE68C94, v2, 0);
}

uint64_t sub_24AE68C94()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  swift_beginAccess();
  v4 = *(v2 + 112);
  *(v2 + 112) = v1;

  return MEMORY[0x2822009F8](sub_24AE68D24, v3, 0);
}

uint64_t sub_24AE68D24()
{
  v1 = *(v0[6] + 144);
  v2 = sub_24AE526E4();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_24AE68DC8;

  return sub_24AE50C50(v2);
}

uint64_t sub_24AE68DC8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24AE68EF4, v3, 0);
}

uint64_t sub_24AE68EF4()
{
  v1 = *(v0[6] + 152);
  v2 = sub_24AE59D54();
  v0[13] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_24AE68F98;

  return sub_24AE57978(v2);
}

uint64_t sub_24AE68F98()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v4;
  v5[1] = sub_24AE690F4;
  v6 = *(v1 + 72);

  return sub_24AE765D0();
}

uint64_t sub_24AE690F4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE69204, v2, 0);
}

uint64_t sub_24AE69204()
{
  v1 = *(*(v0 + 48) + 136);
  *(v0 + 128) = v1;
  return MEMORY[0x2822009F8](sub_24AE69228, v1, 0);
}

uint64_t sub_24AE69228()
{
  v1 = *(*(v0 + 128) + 112);

  sub_24AE6E764(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AE692A0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_24AE692C0, 0, 0);
}

uint64_t sub_24AE692C0()
{
  v1 = v0[3];
  swift_defaultActor_initialize();
  type metadata accessor for ActorServiceCollection();
  v2 = swift_allocObject();
  v3 = swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F90];
  *(v2 + 120) = 0;
  v4 = MEMORY[0x277D84FA0];
  *(v2 + 128) = MEMORY[0x277D84F98];
  *(v2 + 136) = v4;
  *(v1 + 128) = v2;
  *(v1 + 184) = 0;
  if ((MEMORY[0x24C2329E0](v3) & 1) == 0)
  {
    return sub_24AE84440();
  }

  v5 = v0[2];
  v6 = v0[3];

  v6[14] = 0xD000000000000016;
  v6[15] = 0x800000024AE888B0;
  v6[21] = &unk_24AE869E8;
  v6[22] = 0;
  type metadata accessor for XPCEventStreamHandler();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_24AE69478;
  v8 = MEMORY[0x277D84F90];

  return sub_24AE6FC24(v8);
}

uint64_t sub_24AE69478(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_24AE69578, 0, 0);
}

uint64_t sub_24AE69578()
{
  v1 = v0[5];
  v2 = v0[3];
  v2[17] = v1;
  type metadata accessor for DarwinNotificationHandler();
  v3 = swift_allocObject();

  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F90];
  v3[15] = sub_24AE54E80(MEMORY[0x277D84F90]);
  v3[16] = sub_24AE55078(v4);
  v3[17] = sub_24AE54E80(v4);
  v3[18] = sub_24AE55078(v4);
  v3[19] = sub_24AE55270(v4);
  v3[14] = v1;
  v2[18] = v3;
  v5 = v2[17];
  type metadata accessor for DistributedNotificationHandler();
  v6 = swift_allocObject();

  swift_defaultActor_initialize();
  v6[15] = sub_24AE55BEC(v4);
  v6[16] = sub_24AE55DE4(v4);
  v6[17] = sub_24AE55BEC(v4);
  v6[18] = sub_24AE55DE4(v4);
  v6[19] = sub_24AE55FDC(v4);
  v6[14] = v5;
  v2[19] = v6;
  v2[20] = 0;
  v7 = v0[1];
  v8 = v0[3];

  return v7(v8);
}

void static Daemon.resetMock()()
{
  if (MEMORY[0x24C2329E0]())
  {
    if (qword_280D7A740 != -1)
    {
      swift_once();
    }

    v0 = off_280D7A748;
    os_unfair_lock_lock(off_280D7A748 + 6);
    v1 = *(v0 + 2);

    *(v0 + 2) = 0;

    os_unfair_lock_unlock(v0 + 6);
  }

  else
  {
    sub_24AE84440();
    __break(1u);
  }
}

uint64_t sub_24AE697E0()
{
  v1 = v0[6];
  v0[5] = MEMORY[0x277D84F90];
  v2 = *(v1 + 176);
  v6 = (*(v1 + 168) + **(v1 + 168));
  v3 = *(*(v1 + 168) + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_24AE698D8;

  return v6();
}

uint64_t sub_24AE698D8(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_24AE699F0, v3, 0);
}

uint64_t sub_24AE699F0()
{
  v1 = *(v0 + 48);
  sub_24AE65E0C(*(v0 + 64));
  v2 = *(v1 + 128);
  v3 = *(v0 + 40);
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;

  return MEMORY[0x2822009F8](sub_24AE69A68, v2, 0);
}

uint64_t sub_24AE69A68()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  swift_beginAccess();
  v4 = *(v2 + 112);
  *(v2 + 112) = v1;

  return MEMORY[0x2822009F8](sub_24AE48510, v3, 0);
}

void *Daemon.deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  v6 = v0[20];

  v7 = v0[22];

  v8 = v0[23];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE69B90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AE4A504;

  return sub_24AE697C0();
}

uint64_t sub_24AE69C58()
{
  v1 = type metadata accessor for Daemon();
  v2 = sub_24AE6A6B0(&qword_280D7A920, type metadata accessor for Daemon);
  v3 = sub_24AE844F0();
  MEMORY[0x24C232D80](v3);

  MEMORY[0x24C232D80](8250, 0xE200000000000000);
  v4 = MEMORY[0x24C233290](v1, v2);
  MEMORY[0x24C232D80](v4);

  MEMORY[0x24C232D80](2112058, 0xE300000000000000);
  MEMORY[0x24C232D80](*(v0 + 112), *(v0 + 120));
  MEMORY[0x24C232D80](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AE69D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a2;
  *(v8 + 48) = a6;
  *(v8 + 112) = a5;
  *(v8 + 32) = a1;
  *(v8 + 72) = *v7;

  return MEMORY[0x2822009F8](sub_24AE69E0C, 0, 0);
}

uint64_t sub_24AE69E0C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 112);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  swift_defaultActor_initialize();
  type metadata accessor for ActorServiceCollection();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 112) = MEMORY[0x277D84F90];
  *(v8 + 120) = 0;
  v9 = MEMORY[0x277D84FA0];
  *(v8 + 128) = MEMORY[0x277D84F98];
  *(v8 + 136) = v9;
  v2[15] = v6;
  v2[16] = v8;
  v2[22] = v3;
  v2[23] = 0;
  v2[14] = v7;
  v2[21] = v4;
  sub_24AE6A6B0(&qword_280D7A918, type metadata accessor for Daemon);

  static ActorDaemon.enterSandbox(identifier:)(v7, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A8, &qword_24AE869E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24AE866F0;
  *(v10 + 32) = 0xD00000000000001ALL;
  *(v10 + 40) = 0x800000024AE880C0;
  *(v10 + 48) = 0xD00000000000001CLL;
  *(v10 + 56) = 0x800000024AE88220;
  if (v5 == 1)
  {
    v10 = sub_24AE61584(1, 3, 1, v10);
    *(v10 + 16) = 3;
    *(v10 + 64) = 0x6C7070612E6D6F63;
    *(v10 + 72) = 0xEF6D72616C612E65;
  }

  *(v0 + 80) = v10;
  type metadata accessor for XPCEventStreamHandler();
  swift_allocObject();

  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_24AE6A074;

  return sub_24AE6FC24(v10);
}

uint64_t sub_24AE6A074(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_24AE6A194, 0, 0);
}

uint64_t sub_24AE6A194()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v3[17] = v1;
  type metadata accessor for DarwinNotificationHandler();
  v4 = swift_allocObject();

  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F90];
  v4[15] = sub_24AE54E80(MEMORY[0x277D84F90]);
  v4[16] = sub_24AE55078(v5);
  v4[17] = sub_24AE54E80(v5);
  v4[18] = sub_24AE55078(v5);
  v4[19] = sub_24AE55270(v5);
  v4[14] = v1;
  v3[18] = v4;
  v6 = v3[17];
  type metadata accessor for DistributedNotificationHandler();
  v7 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v7 + 120) = sub_24AE55BEC(v5);
  *(v7 + 128) = sub_24AE55DE4(v5);
  *(v7 + 136) = sub_24AE55BEC(v5);
  *(v7 + 144) = sub_24AE55DE4(v5);
  *(v7 + 152) = sub_24AE55FDC(v5);
  *(v7 + 112) = v6;
  v3[19] = v7;
  v0[2] = 0x6C7070612E6D6F63;
  v0[3] = 0xEF6D72616C612E65;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 2;
  LOBYTE(v7) = sub_24AE6FA28(sub_24AE6AB64, v8, v2);
  v0[13] = 0;

  v9 = v0[8];
  if (v7)
  {
    v10 = v3[17];
    type metadata accessor for XPCAlarmEventHandler();
    swift_allocObject();

    *(v9 + 160) = XPCAlarmEventHandler.init(eventStreamHandler:)(v11);
    v12 = sub_24AE6A3C4;
  }

  else
  {
    *(v9 + 160) = 0;
    v12 = sub_24AE6AB9C;
  }

  return MEMORY[0x2822009F8](v12, v9, 0);
}

void sub_24AE6A3C4()
{
  v9 = v0;
  v1 = v0[8];
  sub_24AE61CAC(&v8);
  v2 = *(v1 + 184);
  *(v1 + 184) = v8;

  if (qword_280D7A740 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v4 = v0[8];
  v5 = off_280D7A748;
  os_unfair_lock_lock(off_280D7A748 + 6);
  sub_24AE6AB84(v5 + 2);
  os_unfair_lock_unlock(v5 + 6);
  if (!v3)
  {
    v6 = v0[1];
    v7 = v0[8];

    v6(v7);
  }
}

uint64_t sub_24AE6A4B8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AE5548C;

  return sub_24AE68824();
}

uint64_t sub_24AE6A5D4(uint64_t a1)
{
  result = sub_24AE6A6B0(&qword_280D7A918, type metadata accessor for Daemon);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AE6A62C(uint64_t a1)
{
  *(a1 + 16) = sub_24AE6A6B0(&qword_280D7A920, type metadata accessor for Daemon);
  result = sub_24AE6A6B0(&qword_280D7A928, type metadata accessor for Daemon);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_24AE6A6B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of Daemon.__allocating_init(identifier:profile:registerAlarmEvent:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(v7 + 176);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_24AE451AC;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of Daemon.__allocating_init(mockServices:)(uint64_t a1)
{
  v4 = *(v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE451A8;

  return v8(a1);
}

uint64_t dispatch thunk of Daemon.populateServices()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AE4A504;

  return v6();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AE6AABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AE6AB04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t ActorDaemon.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_24AE844F0();
  MEMORY[0x24C232D80](v5);

  MEMORY[0x24C232D80](8250, 0xE200000000000000);
  v6 = MEMORY[0x24C233290](a1, v4);
  MEMORY[0x24C232D80](v6);

  MEMORY[0x24C232D80](2112058, 0xE300000000000000);
  v7 = (*(a2 + 32))(a1, a2);
  MEMORY[0x24C232D80](v7);

  MEMORY[0x24C232D80](62, 0xE100000000000000);
  return 60;
}

uint64_t dispatch thunk of ActorDaemon.startup()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A7E0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActorDaemon.initialLaunchProcessing()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A7E0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActorDaemon.migrate(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 88);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AE4A7E0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ActorDaemon.firstLaunchSinceReboot()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 96);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A504;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActorDaemon.run()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 104);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A504;

  return v9(a1, a2);
}

uint64_t sub_24AE6B2B8()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A9C0);
  __swift_project_value_buffer(v0, qword_280D7A9C0);
  return sub_24AE83EC0();
}

uint64_t sub_24AE6B32C()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_27EFBFED0);
  __swift_project_value_buffer(v0, qword_27EFBFED0);
  return sub_24AE83EC0();
}

uint64_t sub_24AE6B398()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D79868);
  v1 = __swift_project_value_buffer(v0, qword_280D79868);
  if (qword_280D79888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D7A948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AE6B460(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_24AE44D88(v3);
}

uint64_t sub_24AE6B474(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return sub_24AE44D88(v3);
}

uint64_t sub_24AE6B488(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return sub_24AE44D88(v3);
}

uint64_t sub_24AE6B49C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_24AE6B4E4(uint64_t a1, uint64_t a2)
{
  sub_24AE45FA0(a1);
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  return sub_24AE44D88(v5);
}

uint64_t sub_24AE6B52C(uint64_t a1, uint64_t a2)
{
  sub_24AE45FA0(a1);
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  return sub_24AE44D88(v5);
}

uint64_t sub_24AE6B574(uint64_t a1, uint64_t a2)
{
  sub_24AE45FA0(a1);
  v5 = *(v2 + 144);
  v6 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;

  return sub_24AE44D88(v5);
}

uint64_t XPCClientConnectionPool.__allocating_init()()
{
  v0 = swift_allocObject();
  XPCClientConnectionPool.init()();
  return v0;
}

uint64_t *XPCClientConnectionPool.init()()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  *(v0 + 7) = 0u;
  v2 = *(v1 + 80);
  v3 = *(*(v1 + 88) + 8);
  v0[20] = sub_24AE83F40();
  return v0;
}

uint64_t sub_24AE6B660(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = *v2;
  return MEMORY[0x2822009F8](sub_24AE6B6AC, v2, 0);
}

uint64_t sub_24AE6B6AC()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 160);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = v0[14];
    if (v2 < 0)
    {
      v4 = *(v1 + 160);
    }

    sub_24AE84320();
    v5 = *(v3 + 80);
    v6 = *(*(v3 + 88) + 8);
    sub_24AE841F0();
    result = v0[2];
    v8 = v0[3];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[6];
    v0[16] = v8;
    v0[17] = v9;
    v0[15] = result;
    if (result < 0)
    {
      if (!sub_24AE84330())
      {
LABEL_21:
        v24 = v0[16];
        v25 = v0[17];
        v26 = v0[15];
        sub_24AE6D84C();
        v27 = v0[1];

        return v27();
      }

      v23 = *(v0[14] + 80);
      sub_24AE84530();
      swift_unknownObjectRelease();
      v19 = v0[10];
      v16 = v10;
      v18 = v11;
LABEL_15:
      v0[19] = v16;
      v0[20] = v18;
      v0[18] = v19;
      if (v19)
      {
        v28 = (v0[11] + *v0[11]);
        v20 = *(v0[11] + 4);
        v21 = swift_task_alloc();
        v0[21] = v21;
        *v21 = v0;
        v21[1] = sub_24AE6B954;
        v22 = v0[12];

        return v28(v19);
      }

      goto LABEL_21;
    }

    v12 = v9 + 64;
  }

  else
  {
    v13 = -1;
    v14 = -1 << *(v2 + 32);
    v8 = v2 + 56;
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v11 = v13 & *(v2 + 56);
    v0[16] = v8;
    v0[17] = ~v14;
    v0[15] = v2;
    v12 = 63 - v14;

    v10 = 0;
  }

  v15 = v11;
  v16 = v10;
  if (v11)
  {
LABEL_14:
    v18 = (v15 - 1) & v15;
    v19 = *(*(result + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    swift_unknownObjectRetain();
    goto LABEL_15;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= (v12 >> 6))
    {
      goto LABEL_21;
    }

    v15 = *(v8 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE6B954()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE6BA64, v2, 0);
}

uint64_t sub_24AE6BA64()
{
  v1 = v0[18];
  result = swift_unknownObjectRelease();
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[15];
  if (v5 < 0)
  {
    if (!sub_24AE84330())
    {
LABEL_14:
      v15 = v0[16];
      v16 = v0[17];
      v17 = v0[15];
      sub_24AE6D84C();
      v18 = v0[1];

      return v18();
    }

    v11 = *(v0[14] + 80);
    sub_24AE84530();
    swift_unknownObjectRelease();
    v10 = v0[10];
    v7 = v3;
    v9 = v4;
LABEL_10:
    v0[19] = v7;
    v0[20] = v9;
    v0[18] = v10;
    if (v10)
    {
      v19 = (v0[11] + *v0[11]);
      v12 = *(v0[11] + 4);
      v13 = swift_task_alloc();
      v0[21] = v13;
      *v13 = v0;
      v13[1] = sub_24AE6B954;
      v14 = v0[12];

      return v19(v10);
    }

    goto LABEL_14;
  }

  v6 = v0[20];
  v7 = v0[19];
  if (v4)
  {
LABEL_7:
    v9 = (v6 - 1) & v6;
    v10 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v6)))));
    swift_unknownObjectRetain();
    goto LABEL_10;
  }

  v8 = v0[19];
  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= ((v0[17] + 64) >> 6))
    {
      goto LABEL_14;
    }

    v6 = *(v0[16] + 8 * v7);
    ++v8;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE6BC74()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[20];
  v3 = *(v1 + 80);
  v4 = *(*(v1 + 88) + 8);

  v5 = sub_24AE841B0();

  return v5;
}

uint64_t sub_24AE6BD0C()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];

  v4 = v0[25];
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AE6BD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_24AE84120();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a2;
    v11[5] = v9;
    v11[6] = a3;

    sub_24AE6E000(0, 0, v7, &unk_24AE86CA0, v11);
  }

  return result;
}

uint64_t sub_24AE6BED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AE6BEF8, 0, 0);
}

uint64_t sub_24AE6BEF8()
{
  v1 = *(v0[2] + 16);
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_24AE6BFD8;
    v4 = v0[3];

    return sub_24AE6C288(v2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AE6BFD8()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AE6C0D4, 0, 0);
}

uint64_t sub_24AE6C0D4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);

    v2(v4);
    sub_24AE44D88(v2);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AE6C160()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v6 = *v0;

  sub_24AE44D88(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24AE6C288(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24AE6C320;

  return sub_24AE6C60C(a1);
}

uint64_t sub_24AE6C320(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = a1;

  if (a1)
  {
    v6 = swift_task_alloc();
    *(v3 + 40) = v6;
    *v6 = v5;
    v6[1] = sub_24AE6C49C;
    v7 = *(v3 + 16);

    return sub_24AE6C960(a1);
  }

  else
  {
    v9 = *(v5 + 8);

    return v9();
  }
}

uint64_t sub_24AE6C49C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE6C5AC, v2, 0);
}

uint64_t sub_24AE6C5AC()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AE6C60C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return MEMORY[0x2822009F8](sub_24AE6C654, v1, 0);
}

uint64_t sub_24AE6C654()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24AE6C6DC, 0, 0);
}

uint64_t sub_24AE6C6DC()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[6] = v0[10];
  v3 = swift_task_alloc();
  v0[11] = v3;
  v3[2] = *(v1 + 80);
  v4 = *(v1 + 88);
  v3[3] = v4;
  v3[4] = v2;
  v5 = *(MEMORY[0x277D08A50] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = *(v4 + 8);
  v8 = sub_24AE84200();
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_24AE6C804;

  return MEMORY[0x28215ED40](v0 + 5, &unk_24AE86C88, v3, v8, WitnessTable);
}

void sub_24AE6C804()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    MEMORY[0x2822009F8](sub_24AE6C948, 0, 0);
  }
}

uint64_t sub_24AE6C960(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  return MEMORY[0x2822009F8](sub_24AE6C9A8, v1, 0);
}

uint64_t sub_24AE6C9A8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  swift_beginAccess();
  v4 = *(v2 + 160);
  v0[19] = *(v1 + 80);
  v0[20] = *(*(v1 + 88) + 8);

  v0[21] = sub_24AE841B0();

  v0[15] = v3;
  swift_beginAccess();
  sub_24AE84200();
  sub_24AE841D0();
  v5 = v0[14];
  swift_endAccess();
  swift_unknownObjectRelease();
  v6 = *(v2 + 144);
  v0[22] = v6;
  if (v6)
  {
    v0[23] = *(v0[17] + 152);
    sub_24AE45FA0(v6);
    v36 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_24AE6CEBC;
    v9 = v0[16];

    return v36(v9);
  }

  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[17];
  swift_beginAccess();
  v14 = *(v13 + 160);

  v15 = sub_24AE841E0();

  if (qword_280D79860 != -1)
  {
    swift_once();
  }

  v16 = v0[17];
  v17 = sub_24AE83ED0();
  __swift_project_value_buffer(v17, qword_280D79868);

  v18 = sub_24AE83EB0();
  v19 = sub_24AE84210();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v15;
    v21 = v0[21];
    v37 = v0[20];
    v22 = v0[19];
    v23 = v0[17];
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = v21;
    LOBYTE(v21) = v20;
    *(v24 + 12) = 2048;
    swift_beginAccess();
    v25 = *(v23 + 160);

    v26 = sub_24AE841B0();

    *(v24 + 14) = v26;

    _os_log_impl(&dword_24AE43000, v18, v19, "Session count: %ld -> %ld", v24, 0x16u);
    MEMORY[0x24C233A80](v24, -1, -1);

    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = v0[17];

    if ((v15 & 1) == 0)
    {
LABEL_17:
      v35 = v0[1];

      return v35();
    }
  }

  v28 = sub_24AE83EB0();
  v29 = sub_24AE84210();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_24AE43000, v28, v29, "Final session removed", v30, 2u);
    MEMORY[0x24C233A80](v30, -1, -1);
  }

  v31 = v0[17];

  v32 = *(v31 + 128);
  v0[25] = v32;
  if (!v32)
  {
    goto LABEL_17;
  }

  v0[26] = *(v0[17] + 136);
  sub_24AE45FA0(v32);
  v38 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  v0[27] = v34;
  *v34 = v0;
  v34[1] = sub_24AE6D360;

  return v38();
}

uint64_t sub_24AE6CEBC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 136);
  v6 = *v0;

  sub_24AE44D88(v3);

  return MEMORY[0x2822009F8](sub_24AE6D008, v4, 0);
}

uint64_t sub_24AE6D008()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  swift_beginAccess();
  v4 = *(v3 + 160);

  v5 = sub_24AE841E0();

  if (qword_280D79860 != -1)
  {
    swift_once();
  }

  v6 = v0[17];
  v7 = sub_24AE83ED0();
  __swift_project_value_buffer(v7, qword_280D79868);

  v8 = sub_24AE83EB0();
  v9 = sub_24AE84210();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[20];
    v11 = v0[21];
    v12 = v0[19];
    v13 = v0[17];
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v11;
    *(v14 + 12) = 2048;
    swift_beginAccess();
    v15 = *(v13 + 160);

    v16 = sub_24AE841B0();

    *(v14 + 14) = v16;

    _os_log_impl(&dword_24AE43000, v8, v9, "Session count: %ld -> %ld", v14, 0x16u);
    MEMORY[0x24C233A80](v14, -1, -1);

    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = v0[17];

    if ((v5 & 1) == 0)
    {
LABEL_13:
      v26 = v0[1];

      return v26();
    }
  }

  v18 = sub_24AE83EB0();
  v19 = sub_24AE84210();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24AE43000, v18, v19, "Final session removed", v20, 2u);
    MEMORY[0x24C233A80](v20, -1, -1);
  }

  v21 = v0[17];

  v22 = *(v21 + 128);
  v0[25] = v22;
  if (!v22)
  {
    goto LABEL_13;
  }

  v0[26] = *(v0[17] + 136);
  sub_24AE45FA0(v22);
  v27 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[27] = v24;
  *v24 = v0;
  v24[1] = sub_24AE6D360;

  return v27();
}

uint64_t sub_24AE6D360()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v6 = *v0;

  sub_24AE44D88(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t *XPCClientConnectionPool.deinit()
{
  v1 = v0[15];
  sub_24AE44D88(v0[14]);
  v2 = v0[17];
  sub_24AE44D88(v0[16]);
  v3 = v0[19];
  sub_24AE44D88(v0[18]);
  v4 = v0[20];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCClientConnectionPool.__deallocating_deinit()
{
  XPCClientConnectionPool.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE6D4F4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_24AE842F0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24AE6D5B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_24AE6D5DC, 0, 0);
}

uint64_t sub_24AE6D5DC()
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
  v5[1] = sub_24AE6D6AC;

  return v7();
}

uint64_t sub_24AE6D6AC(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_24AE4512C, 0, 0);
}

uint64_t sub_24AE6D7CC()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A948);
  __swift_project_value_buffer(v0, qword_280D7A948);
  return sub_24AE83EC0();
}

uint64_t sub_24AE6D86C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE850, &qword_24AE863D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AE6D8D4()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_24AE6BD84(v0[4], v0[5], v0[6]);
}

uint64_t sub_24AE6D8FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t dispatch thunk of XPCClientConnectionPool.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AE4A7E0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCClientConnectionPool.remove(connection:)(uint64_t a1)
{
  v4 = *(*v1 + 296);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A7E0;

  return v8(a1);
}

uint64_t sub_24AE6DD00(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_24AE842F0();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AE6DDD0(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE451AC;

  return sub_24AE6D5B4(a1, v6, v4, v5);
}

uint64_t sub_24AE6DE80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AE4A504;

  return sub_24AE6BED4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AE6DFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_24AE6E000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_24AE5A304(a3, v26 - v10);
  v12 = sub_24AE84120();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AE70408(v11);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_24AE70408(a3);

      return v24;
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

  sub_24AE70408(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t XPCEventStreamHandler.__allocating_init(streams:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_24AE6E384;

  return sub_24AE6FC24(a1);
}

uint64_t sub_24AE6E384(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_24AE6E49C()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A9F0);
  v1 = __swift_project_value_buffer(v0, qword_280D7A9F0);
  if (qword_280D7A098 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D7A0A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t XPCEventStreamHandler.init(streams:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_24AE706B0;

  return sub_24AE6FC24(a1);
}

uint64_t sub_24AE6E614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE650, &unk_24AE85E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE658, &qword_24AE86D90);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_24AE5039C(v10, a3, a4);
  return swift_endAccess();
}

void sub_24AE6E764(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v3;
    v7 = swift_beginAccess();
    v8 = 0;
    v35 = v38;
    v9 = (a1 + 40);
    *&v10 = 136446210;
    v33 = v10;
    do
    {
      v17 = *(v9 - 1);
      v18 = *v9;
      v19 = v2[17];
      aBlock = v17;
      v37 = v18;
      MEMORY[0x28223BE20](v7);
      v32[2] = &aBlock;

      v20 = sub_24AE6FA28(sub_24AE70600, v32, v19);

      if (v20)
      {
        if (qword_280D7A730 != -1)
        {
          swift_once();
        }

        v21 = sub_24AE83ED0();
        __swift_project_value_buffer(v21, qword_280D7A9F0);

        v22 = sub_24AE83EB0();
        v23 = sub_24AE84240();

        if (os_log_type_enabled(v22, v23))
        {
          v11 = swift_slowAlloc();
          v34 = v8;
          v12 = v6;
          v13 = v11;
          v14 = swift_slowAlloc();
          aBlock = v14;
          *v13 = v33;
          v15 = sub_24AE53C28(v17, v18, &aBlock);

          *(v13 + 4) = v15;
          _os_log_impl(&dword_24AE43000, v22, v23, "Already registered %{public}s!", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x24C233A80](v14, -1, -1);
          v16 = v13;
          v6 = v12;
          v8 = v34;
          MEMORY[0x24C233A80](v16, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        swift_beginAccess();
        v24 = v2[17];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2[17] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_24AE61584(0, *(v24 + 2) + 1, 1, v24);
          v2[17] = v24;
        }

        v27 = *(v24 + 2);
        v26 = *(v24 + 3);
        if (v27 >= v26 >> 1)
        {
          v24 = sub_24AE61584((v26 > 1), v27 + 1, 1, v24);
        }

        *(v24 + 2) = v27 + 1;
        v28 = &v24[16 * v27];
        *(v28 + 4) = v17;
        *(v28 + 5) = v18;
        v2[17] = v24;
        swift_endAccess();
        v29 = swift_allocObject();
        v29[2] = v2;
        v29[3] = v17;
        v29[4] = v18;
        v29[5] = v6;
        v38[2] = sub_24AE70658;
        v38[3] = v29;
        aBlock = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38[0] = sub_24AE6F1F8;
        v38[1] = &block_descriptor_3;
        v30 = _Block_copy(&aBlock);

        v31 = sub_24AE83FD0();

        xpc_set_event_stream_handler((v31 + 32), 0, v30);

        _Block_release(v30);
      }

      v9 += 2;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_24AE6EB4C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v25 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x24C233BC0]();
  if (v7 != sub_24AE83EF0())
  {
    if (qword_280D7A730 != -1)
    {
      swift_once();
    }

    v8 = sub_24AE83ED0();
    __swift_project_value_buffer(v8, qword_280D7A9F0);
    swift_unknownObjectRetain();
    v9 = sub_24AE83EB0();
    v10 = sub_24AE84230();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24[0] = v12;
      *v11 = 136446210;
      v24[6] = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE9B8, &unk_24AE86D98);
      v13 = sub_24AE83FC0();
      v15 = sub_24AE53C28(v13, v14, v24);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24AE43000, v9, v10, "Expected XPC_TYPE_DICTIONARY -- got %{public}s!", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C233A80](v12, -1, -1);
      MEMORY[0x24C233A80](v11, -1, -1);
    }

    v16 = 0;
    goto LABEL_9;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = &v25;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24AE7066C;
  *(v18 + 24) = v17;
  v24[4] = sub_24AE70674;
  v24[5] = v18;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_24AE6DFA8;
  v24[3] = &block_descriptor_40;
  v19 = _Block_copy(v24);

  xpc_dictionary_apply(a1, v19);
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {

    v23 = sub_24AE6EF94(v22);

    sub_24AE6F258(v23, a3, a4);

    v16 = sub_24AE7066C;
LABEL_9:

    return sub_24AE44D88(v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_24AE6EE70(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = MEMORY[0x24C233BC0](a2);
  if (v5 == sub_24AE83EE0() && xpc_string_get_string_ptr(a2))
  {
    v11 = sub_24AE84000();
    v13 = v12;
    v14 = sub_24AE84000();
    v16 = v15;
    v17 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a3;
    *a3 = 0x8000000000000000;
    sub_24AE8041C(v14, v16, v11, v13, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v6 = sub_24AE84000();
    v8 = v7;

    v9 = *a3;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a3;
    *a3 = 0x8000000000000000;
    sub_24AE8041C(v6, v8, v6, v8, v10);
  }

  *a3 = v20;
  return 1;
}

unint64_t sub_24AE6EF94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE860, &qword_24AE86410);
    v2 = sub_24AE84470();
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
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
        swift_dynamicCast();
        sub_24AE6079C(&v27, v29);
        sub_24AE6079C(v29, v30);
        sub_24AE6079C(v30, &v28);
        result = sub_24AE475AC(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_24AE6079C(&v28, v12);
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
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_24AE6079C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24AE6F1F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_24AE6F258(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  if (qword_280D7A730 != -1)
  {
    swift_once();
  }

  v12 = sub_24AE83ED0();
  __swift_project_value_buffer(v12, qword_280D7A9F0);

  v13 = sub_24AE83EB0();
  v14 = sub_24AE84220();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v15 = 136315394;
    *(v15 + 4) = sub_24AE53C28(a2, a3, &v25);
    *(v15 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE610, &unk_24AE85DE0);
    v16 = sub_24AE83F60();
    v18 = sub_24AE53C28(v16, v17, &v25);

    *(v15 + 14) = v18;
    _os_log_impl(&dword_24AE43000, v13, v14, "processIncoming stream event for %s: %{public}s", v15, 0x16u);
    v19 = v24;
    swift_arrayDestroy();
    MEMORY[0x24C233A80](v19, -1, -1);
    MEMORY[0x24C233A80](v15, -1, -1);
  }

  v20 = sub_24AE84120();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = sub_24AE702E0();
  v22 = swift_allocObject();
  v22[2] = v4;
  v22[3] = v21;
  v22[4] = v4;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a1;
  swift_retain_n();

  sub_24AE6E000(0, 0, v11, &unk_24AE86D60, v22);
}

uint64_t sub_24AE6F53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24AE6F564, a4, 0);
}

uint64_t sub_24AE6F564()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_24AE83CB0();
  v4 = swift_task_alloc();
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  sub_24AE83C60();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AE6F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v26 = a3;
  v27 = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE9A0, &qword_24AE86D88);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE658, &qword_24AE86D90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_24AE83CB0();
  sub_24AE83C90();
  v30 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9B0, &qword_24AE85E10);
  swift_task_localValuePush();
  swift_beginAccess();
  v18 = *(a2 + 128);
  if (*(v18 + 16))
  {
    v19 = *(a2 + 128);

    v20 = sub_24AE475AC(v26, v27);
    if (v21)
    {
      (*(v11 + 16))(v15, *(v18 + 56) + *(v11 + 72) * v20, v10);

      (*(v11 + 32))(v17, v15, v10);
      v28 = v24;
      v29 = a1;

      sub_24AE84140();
      (*(v23 + 8))(v9, v25);
      (*(v11 + 8))(v17, v10);
    }

    else
    {
    }
  }

  swift_task_localValuePop();
}

void *XPCEventStreamHandler.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCEventStreamHandler.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE6F9A0()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A0A0);
  __swift_project_value_buffer(v0, qword_280D7A0A0);
  return sub_24AE83EC0();
}

uint64_t sub_24AE6FA28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24AE6FAD4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AE49C8C;

  return v7(a1);
}

uint64_t sub_24AE6FBCC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE84540() & 1;
  }
}

uint64_t sub_24AE6FC24(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE9C8, &unk_24AE86DA8);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE600, &unk_24AE860A0);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE6FD64, 0, 0);
}

uint64_t sub_24AE6FD64()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v2[15] = sub_24AE557FC(MEMORY[0x277D84F90]);
  v2[16] = sub_24AE559F4(v3);
  v2[17] = v3;
  v2[14] = v1;

  return MEMORY[0x2822009F8](sub_24AE6FE08, v2, 0);
}

unint64_t sub_24AE6FE08()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[11];
    v4 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9D8, &qword_24AE86DB8);
    v46 = *MEMORY[0x277D85778];
    v44 = (v3 + 16);
    v45 = (v4 + 104);
    v42 = (v3 + 8);
    v43 = v3;
    v5 = (v1 + 40);
    do
    {
      v13 = v0[12];
      v12 = v0[13];
      v14 = v0[9];
      v47 = v2;
      v48 = v0[10];
      v15 = v0[6];
      v16 = v0[7];
      v18 = *(v5 - 1);
      v17 = *v5;
      v19 = swift_task_alloc();
      v19[2] = v15;
      v19[3] = v18;
      v19[4] = v17;
      (*v45)(v14, v46, v16);

      sub_24AE84170();

      swift_beginAccess();
      (*v44)(v13, v12, v48);
      v20 = *(v15 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v15 + 120);
      v49 = v22;
      *(v15 + 120) = 0x8000000000000000;
      result = sub_24AE475AC(v18, v17);
      v25 = v22[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v29 = v24;
      if (v22[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = result;
          sub_24AE807FC();
          result = v36;
        }
      }

      else
      {
        sub_24AE7EF3C(v28, isUniquelyReferenced_nonNull_native);
        result = sub_24AE475AC(v18, v17);
        if ((v29 & 1) != (v30 & 1))
        {

          return sub_24AE84570();
        }
      }

      v31 = v0[12];
      v32 = v0[10];
      if (v29)
      {
        v6 = result;

        v7 = v49;
        (*(v43 + 40))(v49[7] + *(v43 + 72) * v6, v31, v32);
      }

      else
      {
        v7 = v49;
        v49[(result >> 6) + 8] |= 1 << result;
        v33 = (v49[6] + 16 * result);
        *v33 = v18;
        v33[1] = v17;
        result = (*(v43 + 32))(v49[7] + *(v43 + 72) * result, v31, v32);
        v34 = v49[2];
        v27 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v49[2] = v35;
      }

      v8 = v0[13];
      v9 = v0[10];
      v10 = v0[6];
      v11 = *(v10 + 120);
      *(v10 + 120) = v7;

      swift_endAccess();
      (*v42)(v8, v9);
      v5 += 2;
      v2 = v47 - 1;
    }

    while (v47 != 1);
  }

  v38 = v0[12];
  v37 = v0[13];
  v39 = v0[9];

  v40 = v0[1];
  v41 = v0[6];

  return v40(v41);
}

uint64_t dispatch thunk of XPCEventStreamHandler.__allocating_init(streams:)(uint64_t a1)
{
  v4 = *(v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE5548C;

  return v8(a1);
}

unint64_t sub_24AE702E0()
{
  result = qword_280D79CD0;
  if (!qword_280D79CD0)
  {
    type metadata accessor for XPCEventStreamHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D79CD0);
  }

  return result;
}

uint64_t sub_24AE70334(uint64_t a1)
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
  v10[1] = sub_24AE4A504;

  return sub_24AE6F53C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24AE70408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AE70470(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A7E0;

  return sub_24AE6FAD4(a1, v5);
}

uint64_t sub_24AE70528(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A504;

  return sub_24AE6FAD4(a1, v5);
}

uint64_t sub_24AE70600(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AE84540() & 1;
  }
}

uint64_t sub_24AE70674()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t ActorServiceDaemon.startupIsDone()(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(a2 + 8) + 24);
  v6 = sub_24AE840E0();

  return MEMORY[0x2822009F8](sub_24AE70734, v6, v5);
}

uint64_t sub_24AE70734()
{
  v1 = v0[10];
  v2 = (*(v0[9] + 16))(v0[8]);
  v0[11] = v2;

  return MEMORY[0x2822009F8](sub_24AE707B4, v2, 0);
}

uint64_t sub_24AE707B4()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[12] = v2;
  v3 = *(v2 + 16);
  v0[13] = v3;
  if (!v3)
  {
    v23 = v0[11];
LABEL_12:

    v24 = v0[1];

    return v24();
  }

  v4 = v0[11];

  swift_beginAccess();
  v0[14] = 0;
  v5 = v0[12];
  if (!*(v5 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v22 = v0[11];
    v21 = v0[12];

    goto LABEL_12;
  }

  v6 = 0;
  while (1)
  {
    v7 = v0[11];
    v8 = v5 + 16 * v6;
    v0[15] = *(v8 + 32);
    v9 = *(v8 + 40);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);
    swift_unknownObjectRetain();
    v12 = v11(ObjectType, v9);
    v14 = v13;
    v0[16] = v13;
    if (*(*(v7 + 128) + 16))
    {
      break;
    }

LABEL_7:

    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];
    swift_unknownObjectRelease();
    if (v19 + 1 == v20)
    {
      goto LABEL_10;
    }

    v6 = v0[14] + 1;
    v0[14] = v6;
    v5 = v0[12];
    if (v6 >= *(v5 + 16))
    {
      goto LABEL_9;
    }
  }

  v15 = v12;
  v16 = *(v7 + 128);

  sub_24AE475AC(v15, v14);
  if ((v17 & 1) == 0)
  {

    goto LABEL_7;
  }

  v26 = v0[11];

  sub_24AE74C04();
  v27 = swift_task_alloc();
  v0[17] = v27;
  v27[2] = v26;
  v27[3] = v15;
  v27[4] = v14;
  v28 = *(MEMORY[0x277D85A40] + 4);
  v29 = swift_task_alloc();
  v0[18] = v29;
  *v29 = v0;
  v29[1] = sub_24AE70CC0;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24AE70A30()
{
  while (1)
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[13];
    swift_unknownObjectRelease();
    if (v2 + 1 == v3)
    {
      break;
    }

    v4 = v0[14] + 1;
    v0[14] = v4;
    v5 = v0[12];
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    v6 = v0[11];
    v7 = v5 + 16 * v4;
    v0[15] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    v13 = v12;
    v0[16] = v12;
    if (*(*(v6 + 128) + 16))
    {
      v14 = v11;

      sub_24AE475AC(v14, v13);
      if (v15)
      {
        v16 = v0[11];

        sub_24AE74C04();
        v17 = swift_task_alloc();
        v0[17] = v17;
        v17[2] = v16;
        v17[3] = v14;
        v17[4] = v13;
        v18 = *(MEMORY[0x277D85A40] + 4);
        v19 = swift_task_alloc();
        v0[18] = v19;
        *v19 = v0;
        v19[1] = sub_24AE70CC0;

        return MEMORY[0x2822008A0]();
      }
    }
  }

  v21 = v0[11];
  v20 = v0[12];

  v22 = v0[1];

  return v22();
}

uint64_t sub_24AE70C50()
{
  v1 = v0[15];
  v2 = v0[11];

  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_24AE70CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v2[19] = v0;

  v5 = v2[17];
  v6 = v2[16];
  if (v0)
  {
    v9 = v2 + 11;
    v8 = v2[11];
    v7 = v9[1];

    v10 = sub_24AE70C50;
    v11 = v8;
  }

  else
  {
    v12 = v2[11];

    v10 = sub_24AE70A30;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t ActorServiceDaemon.startup()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(a2 + 8);
  v3[6] = v4;
  v5 = *(v4 + 24);
  v7 = sub_24AE840E0();
  v3[7] = v7;
  v3[8] = v6;

  return MEMORY[0x2822009F8](sub_24AE70EC0, v7, v6);
}

uint64_t sub_24AE70EC0()
{
  v25 = v0;
  if (qword_280D7A090 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_24AE83ED0();
  __swift_project_value_buffer(v2, qword_280D7A9C0);
  swift_unknownObjectRetain();
  v3 = sub_24AE83EB0();
  v4 = sub_24AE84250();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v0[2] = v6;
    v10 = *(v5 + 16);
    v11 = sub_24AE84510();
    v13 = v12;
    swift_unknownObjectRelease();
    v14 = sub_24AE53C28(v11, v13, &v24);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_24AE43000, v3, v4, "Starting daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C233A80](v9, -1, -1);
    MEMORY[0x24C233A80](v8, -1, -1);
  }

  else
  {
    v15 = v0[5];

    swift_unknownObjectRelease();
  }

  v22 = (v0[4] + 24);
  v23 = (*v22 + **v22);
  v16 = (*v22)[1];
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_24AE7113C;
  v18 = v0[4];
  v19 = v0[5];
  v20 = v0[3];

  return v23(v20, v18);
}

uint64_t sub_24AE7113C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24AE7125C, v4, v3);
}

uint64_t sub_24AE7125C()
{
  v1 = v0[5];
  v0[10] = (*(v0[6] + 56))(v0[3]);
  v2 = sub_24AE526E4();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_24AE7131C;

  return sub_24AE50C50(v2);
}

uint64_t sub_24AE7131C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24AE7147C, v6, v5);
}

uint64_t sub_24AE7147C()
{
  v1 = v0[5];
  v0[13] = (*(v0[6] + 64))(v0[3]);
  v2 = sub_24AE59D54();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_24AE7153C;

  return sub_24AE57978(v2);
}

uint64_t sub_24AE7153C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24AE7169C, v6, v5);
}

uint64_t sub_24AE7169C()
{
  v1 = v0[5];
  v0[16] = (*(v0[4] + 16))(v0[3]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_24AE7174C;

  return sub_24AE765D0();
}

uint64_t sub_24AE7174C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24AE71890, v5, v4);
}

uint64_t sub_24AE71890()
{
  v1 = v0[5];
  v2 = (*(v0[6] + 48))(v0[3]);
  v0[18] = v2;

  return MEMORY[0x2822009F8](sub_24AE71910, v2, 0);
}

uint64_t sub_24AE71910()
{
  v1 = *(*(v0 + 144) + 112);

  sub_24AE6E764(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AE71990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for Daemon();
  *v8 = v4;
  v8[1] = sub_24AE56890;

  return ActorServiceDaemon.getService<A>()(v9, a1, a4, a2);
}

uint64_t sub_24AE71AD0()
{
  v1 = v0[6];
  v0[7] = (*(v0[4] + 16))(v0[2]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_24AE71B90;
  v3 = v0[5];
  v4 = v0[3];

  return sub_24AE75C58(v4, v3);
}

uint64_t sub_24AE71B90(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_24AE71CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for Daemon();
  *v8 = v4;
  v8[1] = sub_24AE755DC;

  return ActorServiceDaemon.getService<A>()(v9, a1, a4, a2);
}

uint64_t sub_24AE71D68()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_24AE71DCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AE4A7E0;

  return sub_24AE68888();
}

uint64_t sub_24AE71E8C()
{
  v1 = *(*(v0 + 16) + 128);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24AE755D8;

  return sub_24AE7BB94();
}

uint64_t ActorServiceDaemon.initialLaunchProcessing()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(a2 + 8) + 24);
  v6 = sub_24AE840E0();

  return MEMORY[0x2822009F8](sub_24AE71F9C, v6, v5);
}

uint64_t sub_24AE71F9C()
{
  v1 = v0[4];
  v0[5] = (*(v0[3] + 16))(v0[2]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_24AE755D0;

  return sub_24AE7BB94();
}

uint64_t sub_24AE7204C(_OWORD *a1, __int128 *a2)
{
  *(v3 + 176) = v2;
  v4 = a1[3];
  *(v3 + 48) = a1[2];
  *(v3 + 64) = v4;
  v5 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a2;
  *(v3 + 112) = a2[1];
  *(v3 + 128) = v6;
  v9 = a2[4];
  *(v3 + 144) = v7;
  *(v3 + 160) = v9;
  *(v3 + 80) = a1[4];
  *(v3 + 96) = v8;
  return MEMORY[0x2822009F8](sub_24AE72098, v2, 0);
}

uint64_t sub_24AE72098()
{
  v1 = *(*(v0 + 176) + 128);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_24AE72138;

  return sub_24AE7C3AC((v0 + 16), (v0 + 96));
}

uint64_t sub_24AE72138()
{
  v1 = *(*v0 + 184);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ActorServiceDaemon.migrate(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = *(*(a4 + 8) + 24);
  v8 = sub_24AE840E0();

  return MEMORY[0x2822009F8](sub_24AE722B0, v8, v7);
}

uint64_t sub_24AE722B0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  *(v0 + 216) = (*(*(v0 + 200) + 16))(*(v0 + 192));
  *(v0 + 16) = *v3;
  v4 = v3[4];
  v6 = v3[1];
  v5 = v3[2];
  *(v0 + 64) = v3[3];
  *(v0 + 80) = v4;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v8 = v2[1];
  v7 = v2[2];
  v9 = v2[4];
  *(v0 + 144) = v2[3];
  *(v0 + 160) = v9;
  *(v0 + 112) = v8;
  *(v0 + 128) = v7;
  *(v0 + 96) = *v2;
  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  *v10 = v0;
  v10[1] = sub_24AE723A8;

  return sub_24AE7C3AC((v0 + 16), (v0 + 96));
}

uint64_t sub_24AE723A8()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24AE724D8()
{
  v1 = *(*(v0 + 16) + 128);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24AE755D8;

  return sub_24AE7CFAC();
}

uint64_t ActorServiceDaemon.firstLaunchSinceReboot()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(a2 + 8) + 24);
  v6 = sub_24AE840E0();

  return MEMORY[0x2822009F8](sub_24AE725E8, v6, v5);
}

uint64_t sub_24AE725E8()
{
  v1 = v0[4];
  v0[5] = (*(v0[3] + 16))(v0[2]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_24AE72698;

  return sub_24AE7CFAC();
}

uint64_t sub_24AE72698()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24AE727A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AE4A7E0;

  return sub_24AE72848();
}

uint64_t sub_24AE72868()
{
  sub_24AE83CB0();
  v1 = *(MEMORY[0x277D08900] + 4);
  v2 = swift_task_alloc();
  *(v0 + 1384) = v2;
  *v2 = v0;
  v2[1] = sub_24AE72938;
  v3 = *(v0 + 1336);

  return MEMORY[0x28215EAD8]();
}

uint64_t sub_24AE72938()
{
  v2 = *v1;
  v3 = *(*v1 + 1384);
  v4 = *v1;
  *(*v1 + 1432) = v0;

  v5 = *(v2 + 1336);
  if (v0)
  {
    v6 = sub_24AE72D04;
  }

  else
  {
    v6 = sub_24AE72A64;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AE72A64()
{
  v1 = v0[167];
  v2 = swift_allocObject();
  v0[185] = v2;
  *(v2 + 16) = &unk_24AE86ED8;
  *(v2 + 24) = v1;

  swift_asyncLet_begin();
  v3 = swift_allocObject();
  v0[191] = v3;
  *(v3 + 16) = &unk_24AE86EF0;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();
  v4 = *(v1 + 128);
  v5 = swift_task_alloc();
  v0[197] = v5;
  *v5 = v0;
  v5[1] = sub_24AE72BC8;

  return sub_24AE78DA8();
}

uint64_t sub_24AE72BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 1576);
  v6 = *v1;
  *(*v1 + 1584) = v0;

  if (v0)
  {

    return MEMORY[0x282200920](v2 + 656, v4, sub_24AE72E18, v2 + 1296);
  }

  else
  {

    return MEMORY[0x282200928](v2 + 16);
  }
}

uint64_t sub_24AE72DA8()
{
  v1 = v0[191];
  v2 = v0[185];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AE72E6C()
{
  v1 = v0[191];
  v2 = v0[185];

  v3 = v0[198];
  v4 = v0[1];

  return v4();
}

uint64_t ActorServiceDaemon.run()(uint64_t a1, uint64_t a2)
{
  v3[179] = v2;
  v3[173] = a2;
  v3[167] = a1;
  v4 = *(*(a2 + 8) + 24);
  v6 = sub_24AE840E0();
  v3[185] = v6;
  v3[191] = v5;

  return MEMORY[0x2822009F8](sub_24AE72F60, v6, v5);
}

uint64_t sub_24AE72F60()
{
  v1 = v0[179];
  v2 = v0[173];
  v3 = v0[167];
  sub_24AE83CB0();
  v4 = swift_task_alloc();
  v0[197] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D08900] + 4);
  v6 = swift_task_alloc();
  v0[198] = v6;
  *v6 = v0;
  v6[1] = sub_24AE73064;

  return MEMORY[0x28215EAD8]();
}

uint64_t sub_24AE73064()
{
  v2 = *v1;
  v3 = *(*v1 + 1584);
  v9 = *v1;
  *(*v1 + 1592) = v0;

  if (v0)
  {
    v4 = v2[191];
    v5 = v2[185];
    v6 = sub_24AE7359C;
  }

  else
  {
    v7 = v2[197];

    v4 = v2[191];
    v5 = v2[185];
    v6 = sub_24AE73188;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24AE73188()
{
  v1 = v0[179];
  v2 = v0[173];
  v3 = v0[167];
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_allocObject();
  v0[200] = v5;
  *(v5 + 16) = &unk_24AE86E18;
  *(v5 + 24) = v4;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v7 = swift_allocObject();
  v0[201] = v7;
  *(v7 + 16) = &unk_24AE86E38;
  *(v7 + 24) = v6;
  swift_unknownObjectRetain();
  swift_asyncLet_begin();
  v0[202] = (*(v2 + 16))(v3, v2);
  v8 = swift_task_alloc();
  v0[203] = v8;
  *v8 = v0;
  v8[1] = sub_24AE7335C;

  return sub_24AE78DA8();
}

uint64_t sub_24AE7335C()
{
  v2 = *v1;
  v3 = *(*v1 + 1624);
  v8 = *v1;
  *(*v1 + 1632) = v0;

  if (!v0)
  {
    v6 = v2[202];

    JUMPOUT(0x24AE84A80);
  }

  v4 = v2[191];
  v5 = v2[185];

  return MEMORY[0x2822009F8](sub_24AE73600, v5, v4);
}

uint64_t sub_24AE7352C()
{
  v1 = v0[201];
  v2 = v0[200];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AE7359C()
{
  v1 = v0[197];

  v2 = v0[199];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AE73600()
{
  v1 = *(v0 + 1616);

  return MEMORY[0x282200920](v0 + 656, v2, sub_24AE73668, v0 + 1296);
}

uint64_t sub_24AE736BC()
{
  v1 = v0[201];
  v2 = v0[200];

  v3 = v0[204];
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AE7372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE5548C;

  return ActorServiceDaemon.getService<A>()(a3, a1, a4, a2);
}

uint64_t sub_24AE737E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE67FD4;

  return ActorServiceDaemon.getService<A>()(a3, a1, a4, a2);
}

uint64_t sub_24AE738A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_24AE738C8, 0, 0);
}

uint64_t sub_24AE738C8()
{
  v1 = v0[4];
  sub_24AE83CB0();
  v0[6] = sub_24AE83C90();
  v0[2] = v1;
  v2 = *(MEMORY[0x277D85A70] + 4);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24AE739F4;
  v4 = v0[5];
  v5 = v0[3];

  return MEMORY[0x282200908](v5, v0 + 2, &unk_24AE86F08, v4, 0, 0, 0xD00000000000002CLL, 0x800000024AE88A00);
}

uint64_t sub_24AE739F4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AE73B6C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24AE73B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_24AE73BAC, 0, 0);
}

uint64_t sub_24AE73BAC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_24AE83CB0();
  v8 = *(v0 + 48);
  *(v0 + 64) = sub_24AE83C90();
  *(v0 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x277D85A70] + 4);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_24AE73D04;
  v6 = *(v0 + 24);

  return MEMORY[0x282200908](v6, v0 + 16, &unk_24AE86F48, v3, 0, 0, 0xD00000000000002CLL, 0x800000024AE88A00);
}

uint64_t sub_24AE73D04()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(v6 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AE73E98, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_24AE73EB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AE4A504;

  return sub_24AE68888();
}

uint64_t sub_24AE73F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = *(v6 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AE4A7E0;

  return v11(a3, v6);
}

uint64_t sub_24AE74090()
{
  v1 = *(*(v0 + 16) + 144);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24AE755D8;

  return sub_24AE513D8();
}

uint64_t sub_24AE74124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *(a3 + 8);
  v3[4] = v4;
  v3[5] = *(v4 + 56);
  v3[6] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0x9EC8000000000000;
  v5 = *(v4 + 24);
  v7 = sub_24AE840E0();

  return MEMORY[0x2822009F8](sub_24AE741BC, v7, v6);
}

uint64_t sub_24AE741BC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *(v0 + 56) = (*(v0 + 40))(*(v0 + 24), *(v0 + 32));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_24AE755D4;

  return sub_24AE513D8();
}

uint64_t sub_24AE74260(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AE49C8C;

  return v6();
}

uint64_t sub_24AE74368()
{
  v1 = *(*(v0 + 16) + 152);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24AE743FC;

  return sub_24AE58100();
}

uint64_t sub_24AE743FC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AE744F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *(a3 + 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = (v4 + 64) & 0xFFFFFFFFFFFFLL | 0x9DA8000000000000;
  v5 = *(v4 + 24);
  v7 = sub_24AE840E0();

  return MEMORY[0x2822009F8](sub_24AE74588, v7, v6);
}

uint64_t sub_24AE74588()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *(v0 + 56) = (*(v0 + 40))(*(v0 + 24), *(v0 + 32));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_24AE7462C;

  return sub_24AE58100();
}

uint64_t sub_24AE7462C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t ActorServiceDaemon.runForever()(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9E0, &qword_24AE86E50);
  v3[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9E8, &qword_24AE86E58);
  v3[5] = v7;
  v8 = *(v7 - 8);
  v3[6] = v8;
  v9 = *(v8 + 64) + 15;
  v3[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE9F0, &unk_24AE86E60);
  v3[8] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = *(*(a2 + 8) + 24);
  v13 = sub_24AE840E0();
  v3[11] = v13;
  v3[12] = v12;

  return MEMORY[0x2822009F8](sub_24AE748AC, v13, v12);
}

uint64_t sub_24AE748AC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277D85778], v0[5]);
  sub_24AE84170();
  sub_24AE84150();
  v4 = v0[10];
  v5 = v0[2];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_24AE749CC;
  v8 = v0[3];
  v9 = v0[4];

  return MEMORY[0x2822003E8](v0 + 14, v5, v4, v8);
}

uint64_t sub_24AE749CC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24AE74AEC, v4, v3);
}

uint64_t sub_24AE74AEC()
{
  if (*(v0 + 112))
  {
    return sub_24AE84440();
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_24AE749CC;
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return MEMORY[0x2822003E8](v0 + 112, v3, v2, v6);
}

unint64_t sub_24AE74C04()
{
  result = qword_280D7A510;
  if (!qword_280D7A510)
  {
    type metadata accessor for ActorServiceCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7A510);
  }

  return result;
}

uint64_t sub_24AE74C5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AE4A7E0;

  return sub_24AE73B84(a1, a2, v8, v6, v7);
}

uint64_t sub_24AE74D20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AE4A7E0;

  return sub_24AE74124(v4, v2, v3);
}

uint64_t sub_24AE74DC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A7E0;

  return sub_24AE74260(a1, v5);
}

uint64_t sub_24AE74E80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AE4A7E0;

  return sub_24AE744F0(v4, v2, v3);
}

uint64_t dispatch thunk of ActorServiceDaemon.populateServices()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A504;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActorServiceDaemon.getService<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AE5548C;

  return v13(a1, a2, a3, a4);
}

{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AE451AC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_24AE752B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AE4A504;

  return sub_24AE738A4(a1, a2, v2);
}

uint64_t sub_24AE75360()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AE4A7E0;

  return sub_24AE74070(v0);
}

uint64_t sub_24AE753F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AE4A7E0;

  return sub_24AE74348(v0);
}

uint64_t sub_24AE75480()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AE4A7E0;

  return sub_24AE73EB0();
}

uint64_t sub_24AE7551C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A7E0;

  return sub_24AE73F54(a1, v6, v4, v5);
}

uint64_t ActorServiceCollection.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  v1 = MEMORY[0x277D84F98];
  *(v0 + 120) = 0;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  return v0;
}

uint64_t static ActorDaemon.enterSandbox(identifier:)(uint64_t a1, unint64_t a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24AE83E30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v28[-v10];
  v12 = NSTemporaryDirectory();
  sub_24AE83FB0();

  sub_24AE83E00();

  sub_24AE83E20();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_24AE83E10();
  v29[0] = 0;
  v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v29];

  if (v16)
  {
    v17 = v29[0];
  }

  else
  {
    v18 = v29[0];
    v19 = sub_24AE83DF0();

    swift_willThrow();
  }

  sub_24AE83FD0();
  v20 = _set_user_dir_suffix();

  if (v20)
  {
    if (qword_280D7A090 != -1)
    {
      swift_once();
    }

    v21 = sub_24AE83ED0();
    __swift_project_value_buffer(v21, qword_280D7A9C0);

    v22 = sub_24AE83EB0();
    v23 = sub_24AE84250();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_24AE53C28(a1, a2, v29);
      _os_log_impl(&dword_24AE43000, v22, v23, "Setting user directory suffix: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C233A80](v25, -1, -1);
      MEMORY[0x24C233A80](v24, -1, -1);
    }

    result = (v13)(v11, v4);
    v27 = *MEMORY[0x277D85DE8];
  }

  else
  {
    result = sub_24AE84440();
    __break(1u);
  }

  return result;
}

uint64_t sub_24AE759E4()
{
  v0 = sub_24AE83ED0();
  __swift_allocate_value_buffer(v0, qword_280D7A598);
  v1 = __swift_project_value_buffer(v0, qword_280D7A598);
  if (qword_280D7A090 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D7A9C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AE75AAC()
{
  v0 = sub_24AE83D10();
  __swift_allocate_value_buffer(v0, qword_280D7A5C0);
  __swift_project_value_buffer(v0, qword_280D7A5C0);
  return sub_24AE83D00();
}

uint64_t sub_24AE75B5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA10, &qword_24AE87168);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_24AE84690();
  qword_280D7A5D8 = result;
  return result;
}

uint64_t ActorServiceCollection.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  v1 = MEMORY[0x277D84F98];
  *(v0 + 120) = 0;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  return v0;
}

uint64_t sub_24AE75BFC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_24AE75C58(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_24AE75C7C, v2, 0);
}

uint64_t sub_24AE75C7C()
{
  v20 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      v18 = *(v2 + 16 * v5 + 32);
      v19 = v18;
      swift_unknownObjectRetain();
      if (sub_24AE46B18(&v19))
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (v3 == ++v5)
      {
        goto LABEL_6;
      }
    }

    v9 = *(v0 + 64);

    *(v0 + 40) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_7;
    }

    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    *(v0 + 88) = *(v0 + 56);
    v12 = *(v11 + 24);
    *(v0 + 96) = v12;
    *(v0 + 104) = (v11 + 24) & 0xFFFFFFFFFFFFLL | 0x69BB000000000000;
    v13 = v12(v10);
    v15 = v14;
    *(v0 + 112) = v14;
    v16 = swift_task_alloc();
    *(v0 + 120) = v16;
    *v16 = v0;
    v16[1] = sub_24AE75E78;
    v17 = *(v0 + 80);

    return sub_24AE46EB0(v13, v15);
  }

  else
  {
LABEL_6:

LABEL_7:
    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_24AE75E78()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](sub_24AE75FBC, v4, 0);
  }

  else
  {
    v5 = v3[14];
    v6 = v3[11];

    v7 = v3[1];

    return v7(v6);
  }
}

uint64_t sub_24AE75FBC()
{
  v26 = v0;
  v1 = v0[14];

  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[11];
  v4 = sub_24AE83ED0();
  __swift_project_value_buffer(v4, qword_280D7A598);
  swift_unknownObjectRetain();
  v5 = v2;
  v6 = sub_24AE83EB0();
  v7 = sub_24AE84230();
  swift_unknownObjectRelease();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  if (v8)
  {
    v23 = v0[12];
    v24 = v0[13];
    v10 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136446466;
    v16 = v23(v12, v11);
    v18 = sub_24AE53C28(v16, v17, &v25);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2114;
    v19 = sub_24AE83DE0();
    *(v13 + 14) = v19;
    *v14 = v19;
    _os_log_impl(&dword_24AE43000, v6, v7, "Error during getService for %{public}s: %{public}@", v13, 0x16u);
    sub_24AE567BC(v14, &qword_27EFBE850, &qword_24AE863D0);
    MEMORY[0x24C233A80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C233A80](v15, -1, -1);
    MEMORY[0x24C233A80](v13, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = v0[11];

    swift_unknownObjectRelease();
  }

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_24AE7620C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_24AE76330;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);

    v5 = sub_24AE47EFC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AE76330()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_24AE76394()
{
  v27 = v0;
  v1 = v0[22];

  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = v0[19];
  v4 = sub_24AE83ED0();
  __swift_project_value_buffer(v4, qword_280D7A598);
  swift_unknownObjectRetain();
  v5 = v2;
  v6 = sub_24AE83EB0();
  v7 = sub_24AE84230();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[20];
    v24 = v0[21];
    v25 = v0[24];
    v9 = v0[19];
    v11 = v0[16];
    v10 = v0[17];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136446466;
    v15 = v8(v11, v10);
    v17 = sub_24AE53C28(v15, v16, &v26);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = sub_24AE83DE0();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&dword_24AE43000, v6, v7, "Error during getService for %{public}s: %{public}@", v12, 0x16u);
    sub_24AE567BC(v13, &qword_27EFBE850, &qword_24AE863D0);
    MEMORY[0x24C233A80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C233A80](v14, -1, -1);
    MEMORY[0x24C233A80](v12, -1, -1);
  }

  v19 = v0[24];
  v20 = v0[19];
  swift_willThrow();
  swift_unknownObjectRelease_n();
  v21 = v0[24];
  v22 = v0[1];

  return v22();
}