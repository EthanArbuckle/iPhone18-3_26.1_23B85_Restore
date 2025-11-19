uint64_t sub_2455D6C04(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[5];
      v10 = v7[3];
      v36 = v7[4];
      v37 = v9;
      v11 = v7[5];
      v38[0] = v7[6];
      *(v38 + 9) = *(v7 + 105);
      v12 = v7[1];
      v33[0] = *v7;
      v33[1] = v12;
      v13 = v7[3];
      v15 = *v7;
      v14 = v7[1];
      v34 = v7[2];
      v35 = v13;
      v30 = v36;
      v31 = v11;
      v32[0] = v7[6];
      *(v32 + 9) = *(v7 + 105);
      v26 = v15;
      v27 = v14;
      v28 = v34;
      v29 = v10;
      sub_2455A5D68(v33, &v19);
      v16 = a1(&v26);
      if (v3)
      {
        break;
      }

      v4 = v16;
      v23 = v30;
      v24 = v31;
      v25[0] = v32[0];
      *(v25 + 9) = *(v32 + 9);
      v19 = v26;
      v20 = v27;
      v21 = v28;
      v22 = v29;
      sub_2455A5DA0(&v19);
      v17 = v8-- == 0;
      v7 += 8;
      if ((v4 | v17))
      {
        return v4 & 1;
      }
    }

    v23 = v30;
    v24 = v31;
    v25[0] = v32[0];
    *(v25 + 9) = *(v32 + 9);
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    sub_2455A5DA0(&v19);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_2455D6D64(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*v1 + 768))();
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_15:
    v15 = v4;
    v6 = sub_2455E9F20();
    v4 = v15;
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  while (v6 != v7)
  {
    if (v8)
    {
      v10 = v4;
      v11 = MEMORY[0x245D6BBF0](v7, v4);
      swift_unknownObjectRelease();
      v4 = v10;
      if (v11 == a1)
      {
LABEL_12:

        v12 = (*(*v2 + 784))(v16);
        sub_2455D6F18(v7);

        v13 = v12(v16, 0);
        return (*(*v2 + 824))(v13);
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if (*(v4 + 8 * v7 + 32) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2455D6F18(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2455E41E8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2455D6FA8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15168, &qword_2455F1640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  v12 = a1;
  v13 = a2;
  v14 = v2;
  type metadata accessor for HIDDeviceClient.Notification(0);
  (*(v6 + 104))(v9, *MEMORY[0x277D858A0], v5);
  return sub_2455E9CB0();
}

uint64_t sub_2455D70D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = type metadata accessor for HIDDeviceClient.Notification(0);
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v26[1] = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15150, &qword_2455F1630);
  v26[0] = *(v27 - 8);
  v10 = *(v26[0] + 64);
  MEMORY[0x28223BE20](v27);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15148, &qword_2455F1628);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  (*(v12 + 16))(v26 - v14, a1, v11);
  v16 = type metadata accessor for HIDDeviceClient.StreamWrapper(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_batchedValues) = MEMORY[0x277D84F90];
  (*(v12 + 32))(v19 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_continuation, v15, v11);
  *(v19 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_reportIDsToMonitor) = a2;
  *(v19 + OBJC_IVAR____TtCC7CoreHID15HIDDeviceClient13StreamWrapper_elementsToMonitor) = a3;
  v20 = *(*a4 + 784);

  v21 = v20(v29);
  v23 = v22;
  MEMORY[0x245D6B9B0]();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2455E9BE0();
  }

  sub_2455E9BF0();
  v21(v29, 0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = v19;

  sub_2455E9C70();
  (*(*a4 + 816))(0, 1);
}

uint64_t sub_2455D7548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_2455E9C60();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_2455A989C(0, 0, v7, &unk_2455F1D80, v9);
}

uint64_t sub_2455D7660(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *a4 + 856;
  v5[4] = *v6;
  v5[5] = v6 & 0xFFFFFFFFFFFFLL | 0xB1FC000000000000;
  return MEMORY[0x2822009F8](sub_2455D76A4, a4, 0);
}

uint64_t sub_2455D76A4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  (*(v0 + 32))(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

void *sub_2455D7718@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = (*(**a1 + 872))(&v5, *a2, a2[1]);
  *a3 = v5;
  return result;
}

uint64_t sub_2455D7780(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a2;
  v8 = *a1;
  v6 = *(*v5 + 880);
  swift_unknownObjectRetain();

  return v6(&v8, v3, v4);
}

void sub_2455D7808(void *a1@<X8>)
{
  v3 = *(v1 + 296);
  v4 = sub_2455E9B60();
  v5 = IOHIDDeviceGetProperty(v3, v4);

  *a1 = v5;
}

uint64_t sub_2455D785C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 296);
  v4 = sub_2455E9B60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15170, qword_2455F1648);
  v5 = sub_2455E9D40();
  swift_unknownObjectRelease();
  IOHIDDeviceSetProperty(v3, v4, v5);

  return swift_unknownObjectRelease();
}

void (*sub_2455D78FC(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a2;
  v7[3] = a3;
  v9 = *(v3 + 296);
  v7[4] = v9;
  v10 = sub_2455E9B60();
  v11 = IOHIDDeviceGetProperty(v9, v10);

  *v8 = v11;
  return sub_2455D79B4;
}

void sub_2455D79B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = **a1;
    swift_unknownObjectRetain();
    v8 = sub_2455E9B60();
    v2[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15170, qword_2455F1648);
    v9 = sub_2455E9D40();
    swift_unknownObjectRelease();
    IOHIDDeviceSetProperty(v5, v8, v9);
    swift_unknownObjectRelease();

    v10 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = (*a1)[2];
    v12 = sub_2455E9B60();
    v2[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15170, qword_2455F1648);
    v13 = sub_2455E9D40();
    swift_unknownObjectRelease();
    IOHIDDeviceSetProperty(v5, v12, v13);
    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t sub_2455D7ACC(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = v7;
  *(v8 + 101) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 24) = a3;
  *(v8 + 102) = *a1;
  *(v8 + 103) = *a2;
  *(v8 + 104) = a2[1];
  return MEMORY[0x2822009F8](sub_2455D7B10, v7, 0);
}

uint64_t sub_2455D7B10()
{
  (*(**(v0 + 56) + 816))(0, 0);
  v15 = *(v0 + 102);
  v16 = *(v0 + 104);
  v1 = *(v0 + 48);
  v14 = *(v0 + 56);
  v2 = *(v0 + 101);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010) - 8);
  *(v6 + 80);
  v7 = *(v6 + 72);
  v8 = swift_slowAlloc();
  *(v0 + 64) = v8;
  sub_2455E6848(&qword_27EE15178, v9, type metadata accessor for HIDDeviceClient);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v3;
  *(v10 + 32) = v1;
  *(v10 + 40) = v2 & 1;
  *(v10 + 48) = v5;
  *(v10 + 56) = v4;
  *(v10 + 64) = v14;
  *(v10 + 72) = v15;
  *(v10 + 74) = v16;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_2455D7E5C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2455D7E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_2455D8020;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 56);

    v5 = sub_2455D7F84;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2455D7F84()
{
  v1 = *(v0 + 64);
  (*(**(v0 + 56) + 824))();
  MEMORY[0x245D6C8C0](v1, -1, -1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2455D8020()
{
  v2 = v0[8];
  v1 = v0[9];

  MEMORY[0x245D6C8C0](v2, -1, -1);
  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2455D8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t a8, char a9, __int16 a10)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  v17 = (*(*(v16 - 8) + 24))(a2, a1, v16);
  if ((a5 & 1) == 0)
  {
    sub_2455EA100();
    v17 = sub_2455EA100();
  }

  v19[2] = a8;
  v20 = a9;
  v21 = a10 & 0x1FF;
  v22 = a6;
  v23 = a7;
  v24 = MEMORY[0x28223BE20](v17);
  v25 = a2;
  v26 = a1;
  return sub_2455AC860(sub_2455E91E4, v19, a6, a7);
}

uint64_t sub_2455D8218(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = v5;
  *(v6 + 117) = a5;
  *(v6 + 40) = a3;
  *(v6 + 118) = *a1;
  *(v6 + 119) = *a2;
  *(v6 + 120) = a2[1];
  return MEMORY[0x2822009F8](sub_2455D8258, v5, 0);
}

uint64_t sub_2455D8258()
{
  (*(**(v0 + 56) + 816))(0, 0);
  v17 = *(v0 + 118);
  v18 = *(v0 + 120);
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v16 = *(v0 + 117);
  v3 = *(v0 + 40);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15180, &qword_2455F1668) - 8);
  *(v4 + 80);
  v5 = *(v4 + 72);
  v6 = swift_slowAlloc();
  *(v0 + 64) = v6;
  v7 = swift_slowAlloc();
  *(v0 + 72) = v7;
  (*(*v1 + 832))();
  v8 = swift_slowAlloc();
  *(v0 + 80) = v8;
  v10 = sub_2455E6848(&qword_27EE15178, v9, type metadata accessor for HIDDeviceClient);
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  *(v11 + 32) = v1;
  *(v11 + 40) = v3;
  *(v11 + 48) = v2;
  *(v11 + 56) = v16 & 1;
  *(v11 + 57) = v17;
  *(v11 + 59) = v18;
  *(v11 + 64) = v8;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_2455D8600;
  v14 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, v1, v10, 0xD00000000000002ALL, 0x80000002455F3200, sub_2455E68DC, v11, v14);
}

uint64_t sub_2455D8600()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_2455D8804;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 56);

    v5 = sub_2455D8728;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2455D8728()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  (*(**(v0 + 56) + 824))();
  MEMORY[0x245D6C8C0](v3, -1, -1);
  MEMORY[0x245D6C8C0](v2, -1, -1);
  MEMORY[0x245D6C8C0](v1, -1, -1);
  v6 = *(v0 + 8);

  return v6(v4, v5);
}

uint64_t sub_2455D8804()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  MEMORY[0x245D6C8C0](v4, -1, -1);
  MEMORY[0x245D6C8C0](v3, -1, -1);
  MEMORY[0x245D6C8C0](v2, -1, -1);
  v5 = v0[13];
  v6 = v0[1];

  return v6();
}

uint64_t HIDDeviceClient.ProvideElementUpdate.init(values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2455E9E70();
  result = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t static HIDDeviceClient.ProvideElementUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2455E9E80() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2455D8B8C(v5, v6);
}

uint64_t sub_2455D89C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v49 = v2;
  v50 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v36 = v5[4];
    v37 = v8;
    v38[0] = v5[6];
    v9 = v38[0];
    *(v38 + 9) = *(v5 + 105);
    v10 = v5[1];
    v33[0] = *v5;
    v33[1] = v10;
    v11 = v5[3];
    v34 = v5[2];
    v35 = v11;
    v26 = v33[0];
    v27 = v10;
    v28 = v34;
    v29 = v11;
    v30 = v36;
    v31 = v8;
    v32[0] = v9;
    *(v32 + 9) = *(v38 + 9);
    v12 = v6[5];
    v42 = v6[4];
    v43 = v12;
    v44[0] = v6[6];
    v13 = v44[0];
    *(v44 + 9) = *(v6 + 105);
    v14 = v6[1];
    v39[0] = *v6;
    v39[1] = v14;
    v15 = v6[3];
    v40 = v6[2];
    v41 = v15;
    v19 = v39[0];
    v20 = v14;
    v21 = v40;
    v22 = v15;
    v23 = v42;
    v24 = v12;
    v25[0] = v13;
    *(v25 + 9) = *(v44 + 9);
    sub_2455A5D68(v33, v18);
    sub_2455A5D68(v39, v18);
    sub_2455A700C();
    v16 = sub_2455E9B50();
    v45[4] = v23;
    v45[5] = v24;
    v46[0] = v25[0];
    *(v46 + 9) = *(v25 + 9);
    v45[0] = v19;
    v45[1] = v20;
    v45[2] = v21;
    v45[3] = v22;
    sub_2455A5DA0(v45);
    v47[4] = v30;
    v47[5] = v31;
    v48[0] = v32[0];
    *(v48 + 9) = *(v32 + 9);
    v47[0] = v26;
    v47[1] = v27;
    v47[2] = v28;
    v47[3] = v29;
    sub_2455A5DA0(v47);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 8;
    v6 += 8;
  }

  return 1;
}

uint64_t sub_2455D8B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDElement.Value();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_2455E661C(v14, v11, type metadata accessor for HIDElement.Value);
        sub_2455E661C(v15, v7, type metadata accessor for HIDElement.Value);
        sub_2455E6848(&qword_27EE14E90, 255, type metadata accessor for HIDElement.Value);
        v17 = sub_2455E9B50();
        sub_2455E6788(v7, type metadata accessor for HIDElement.Value);
        sub_2455E6788(v11, type metadata accessor for HIDElement.Value);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t HIDDeviceClient.ProvideElementUpdate.hash(into:)()
{
  v1 = type metadata accessor for HIDElement.Value();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2455E9E90();
  sub_2455E6848(&qword_27EE14E30, 255, MEMORY[0x277D85938]);
  sub_2455E9B00();
  v6 = *(v0 + *(type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0) + 20));
  result = MEMORY[0x245D6BE80](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_2455E661C(v9, v5, type metadata accessor for HIDElement.Value);
      sub_2455E6848(&qword_27EE15188, 255, type metadata accessor for HIDElement.Value);
      sub_2455E9B00();
      result = sub_2455E6788(v5, type metadata accessor for HIDElement.Value);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2455D8FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2455E9E80() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2455D8B8C(v7, v8);
}

uint64_t sub_2455D9010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2455E9E90();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2455D9090(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
}

uint64_t sub_2455D90E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t HIDDeviceClient.RequestElementUpdate.pollDevice.setter(char a1)
{
  result = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t HIDDeviceClient.RequestElementUpdate.init(elements:pollDevice:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2455E9E70();
  result = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t static HIDDeviceClient.RequestElementUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_2455E9E80() & 1) != 0 && (v4 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0), (sub_2455D89C8(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t HIDDeviceClient.RequestElementUpdate.hash(into:)()
{
  sub_2455E9E90();
  sub_2455E6848(&qword_27EE14E30, 255, MEMORY[0x277D85938]);
  sub_2455E9B00();
  v1 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v2 = *(v0 + *(v1 + 20));
  MEMORY[0x245D6BE80](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[3];
      v13[2] = v4[2];
      v13[3] = v7;
      v13[0] = v5;
      v13[1] = v6;
      v8 = v4[4];
      v9 = v4[5];
      v10 = v4[6];
      *&v14[9] = *(v4 + 105);
      v13[5] = v9;
      *v14 = v10;
      v13[4] = v8;
      memmove(__dst, v4, 0x79uLL);
      sub_2455A5D68(v13, v15);
      sub_2455A5F88();
      sub_2455E9B00();
      v15[4] = __dst[4];
      v15[5] = __dst[5];
      v16[0] = v18[0];
      *(v16 + 9) = *(v18 + 9);
      v15[0] = __dst[0];
      v15[1] = __dst[1];
      v15[2] = __dst[2];
      v15[3] = __dst[3];
      sub_2455A5DA0(v15);
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v11 = *(v0 + *(v1 + 24));
  return sub_2455EA0A0();
}

uint64_t sub_2455D946C(void (*a1)(_BYTE *))
{
  sub_2455EA080();
  a1(v3);
  return sub_2455EA0D0();
}

uint64_t sub_2455D94CC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_2455EA080();
  a3(v5);
  return sub_2455EA0D0();
}

uint64_t sub_2455D9530(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2455EA080();
  a4(v6);
  return sub_2455EA0D0();
}

uint64_t sub_2455D9574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2455E9E80() & 1) != 0 && (sub_2455D89C8(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2455D95E8(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2455D963C(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2455D9688(uint64_t a1, void *a2)
{
  v3 = v2;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15190, &qword_2455F1670);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15198, &qword_2455F1678);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2455ABC88(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if (v22)
  {
    v23(v16, 0, 1, v17);
    sub_2455E6F48(v16, v21, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    v24 = v40;
    v25 = v40;
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = *v3;
    sub_2455E5648(v24, 1, v21, isUniquelyReferenced_nonNull_native);
    *v3 = v41[0];
    v28 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate;
    v29 = v21;
    return sub_2455E6788(v29, v28);
  }

  v30 = v40;
  v23(v16, 1, 1, v17);
  sub_2455A7680(v16, &qword_27EE15198, &qword_2455F1678);
  sub_2455ABC88(a1, v41);
  v31 = swift_dynamicCast();
  v32 = *(v10 + 56);
  if (v31)
  {
    v32(v8, 0, 1, v9);
    v33 = v39;
    sub_2455E6F48(v8, v39, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
    v34 = v30;
    v35 = v3[1];
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = v3[1];
    sub_2455E5414(v30, 1, v33, v36);
    v3[1] = v41[0];
    v28 = type metadata accessor for HIDDeviceClient.RequestElementUpdate;
    v29 = v33;
    return sub_2455E6788(v29, v28);
  }

  v32(v8, 1, 1, v9);
  return sub_2455A7680(v8, &qword_27EE15190, &qword_2455F1670);
}

id HIDDeviceClient.HIDElementUpdateResult.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_2455E347C(a1, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 56) + 16 * v3;
  v6 = *v5;
  sub_2455E6FB0(*v5, *(v5 + 8));
  return v6;
}

{
  v2 = *(v1 + 8);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_2455E347C(a1, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 56) + 16 * v3;
  v6 = *v5;
  sub_2455E6FBC(*v5, *(v5 + 8));
  return v6;
}

unint64_t sub_2455D9B7C@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = sub_2455E6B10(MEMORY[0x277D84F90]);
  result = sub_2455E6D2C(v2);
  a1[1] = result;
  return result;
}

uint64_t sub_2455D9BD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2455D9BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v21 = *MEMORY[0x277D85DE8];
  *(v6 + 880) = v5;
  *(v6 + 301) = a5;
  *(v6 + 872) = a4;
  *(v6 + 864) = a3;
  *(v6 + 856) = a2;
  *(v6 + 848) = a1;
  v7 = *(*(sub_2455E9E90() - 8) + 64) + 15;
  *(v6 + 888) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15190, &qword_2455F1670) - 8) + 64) + 15;
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();
  v9 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  *(v6 + 912) = v9;
  v10 = *(v9 - 8);
  *(v6 + 920) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 928) = swift_task_alloc();
  *(v6 + 936) = swift_task_alloc();
  *(v6 + 944) = swift_task_alloc();
  *(v6 + 952) = swift_task_alloc();
  v12 = type metadata accessor for HIDElement.Value();
  *(v6 + 960) = v12;
  v13 = *(v12 - 8);
  *(v6 + 968) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 976) = swift_task_alloc();
  *(v6 + 984) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15198, &qword_2455F1678) - 8) + 64) + 15;
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  v16 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  *(v6 + 1008) = v16;
  v17 = *(v16 - 8);
  *(v6 + 1016) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 1024) = swift_task_alloc();
  *(v6 + 1032) = swift_task_alloc();
  *(v6 + 1040) = swift_task_alloc();
  v19 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2455D9E98, v5, 0);
}

uint64_t sub_2455D9E98()
{
  v352 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 301);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 688) = sub_2455E6B10(MEMORY[0x277D84F90]);
  *(v0 + 696) = sub_2455E6D2C(v3);
  v4 = 0.0;
  if ((v2 & 1) == 0)
  {
    v5 = *(v0 + 872);
    v6 = *(v0 + 864);
    v7 = sub_2455EA100() * 1000.0;
    sub_2455EA100();
    v4 = v7 + v8 / 1000000.0;
  }

  *(v0 + 1048) = v4;
  v9 = *(v0 + 880);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010) - 8);
  *(v10 + 80);
  v11 = *(v10 + 72);
  *(v0 + 1056) = swift_slowAlloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A8, &qword_2455F1690) - 8);
  *(v12 + 80);
  v13 = *(v12 + 72);
  *(v0 + 1064) = swift_slowAlloc();
  *(v0 + 1072) = swift_slowAlloc();
  v14 = (*(*v9 + 816))(0, 0);
  *(v0 + 1080) = 0;
  v15 = *(*(v0 + 856) + 16);
  *(v0 + 1088) = v15;
  if (!v15)
  {
    v100 = 0;
LABEL_38:
    v101 = *(v0 + 1072);
    v102 = *(v0 + 1064);
    v103 = *(v0 + 1056);
    v104 = *(v0 + 1040);
    v105 = *(v0 + 1032);
    v106 = *(v0 + 1024);
    v332 = *(v0 + 1000);
    v333 = *(v0 + 992);
    v335 = *(v0 + 984);
    v337 = *(v0 + 976);
    v339 = *(v0 + 952);
    v341 = *(v0 + 944);
    bytesa = *(v0 + 936);
    v344 = *(v0 + 928);
    v346 = *(v0 + 904);
    v348 = *(v0 + 896);
    v351 = *(v0 + 888);
    v107 = *(v0 + 848);
    (*(**(v0 + 880) + 824))(v14);
    v108 = *(v0 + 696);
    *v107 = *(v0 + 688);
    v107[1] = v108;

    MEMORY[0x245D6C8C0](v103, -1, -1);
    MEMORY[0x245D6C8C0](v102, -1, -1);
    MEMORY[0x245D6C8C0](v101, -1, -1);

    v109 = *(v0 + 688);
    v110 = *(v0 + 696);

    v111 = *(v0 + 8);
    v112 = *MEMORY[0x277D85DE8];

    return v111();
  }

  v16 = 0;
  v350 = (v0 + 776);
  v17 = (v0 + 744);
  v336 = (v0 + 792);
  v340 = (v0 + 824);
  bytes = (v0 + 287);
  v338 = (v0 + 840);
  v334 = (v0 + 808);
  while (1)
  {
    *(v0 + 1104) = v16;
    *(v0 + 1096) = v1;
    v21 = *(v0 + 1080);
    sub_2455ABC88(*(v0 + 856) + 40 * v16 + 32, v0 + 432);
    if (!v21)
    {
      break;
    }

    v22 = *(v0 + 1080);
    swift_willThrow();
    v23 = v22;
    v24 = *(v0 + 1080);
    v25 = *(v0 + 1016);
    v26 = *(v0 + 1008);
    v27 = *(v0 + 992);
    sub_2455ABC88(v0 + 432, v0 + 552);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v28 = swift_dynamicCast();
    v29 = *(v25 + 56);
    if (v28)
    {
      v30 = *(v0 + 1032);
      v31 = *(v0 + 1024);
      v32 = *(v0 + 992);
      v29(v32, 0, 1, *(v0 + 1008));
      sub_2455E6F48(v32, v30, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E661C(v30, v31, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v33 = v24;
      v34 = *(v0 + 688);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v0 + 688);
      *(v0 + 712) = v36;
      v37 = sub_2455E347C(v31, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
      v39 = *(v36 + 16);
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
      }

      v43 = v38;
      if (*(v36 + 24) >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v99 = v37;
          sub_2455E5BBC();
          v37 = v99;
        }
      }

      else
      {
        v44 = *(v0 + 1024);
        sub_2455E49CC(v42, isUniquelyReferenced_nonNull_native);
        v45 = *(v0 + 712);
        v37 = sub_2455E347C(v44, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
        if ((v43 & 1) != (v46 & 1))
        {
          v329 = *(v0 + 1008);
LABEL_228:
          v331 = *MEMORY[0x277D85DE8];

          return sub_2455EA020();
        }
      }

      v78 = *(v0 + 712);
      v79 = *(v0 + 1032);
      v80 = *(v0 + 1024);
      if (v43)
      {
        v81 = v78[7] + 16 * v37;
        v82 = *v81;
        v83 = *(v81 + 8);
        *v81 = v24;
        *(v81 + 8) = 1;
        sub_2455E711C(v82, v83);

        sub_2455E6788(v80, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        sub_2455E6788(v79, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v14 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      }

      else
      {
        v84 = *(v0 + 1016);
        v78[(v37 >> 6) + 8] |= 1 << v37;
        v85 = v37;
        sub_2455E661C(v80, v78[6] + *(v84 + 72) * v37, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v86 = v78[7] + 16 * v85;
        *v86 = v24;
        *(v86 + 8) = 1;

        sub_2455E6788(v80, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        sub_2455E6788(v79, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v14 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        v87 = v78[2];
        v41 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v41)
        {
          goto LABEL_234;
        }

        v78[2] = v88;
      }

      *(v0 + 688) = v78;
    }

    else
    {
      v58 = *(v0 + 992);
      v59 = *(v0 + 912);
      v60 = *(v0 + 896);
      v29(v58, 1, 1, *(v0 + 1008));
      sub_2455A7680(v58, &qword_27EE15198, &qword_2455F1678);
      sub_2455ABC88(v0 + 432, v0 + 592);
      if (swift_dynamicCast())
      {
        v61 = *(v0 + 936);
        v62 = *(v0 + 928);
        v63 = *(v0 + 896);
        (*(*(v0 + 920) + 56))(v63, 0, 1, *(v0 + 912));
        sub_2455E6F48(v63, v61, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E661C(v61, v62, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v64 = v24;
        v65 = *(v0 + 696);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v67 = *(v0 + 696);
        *(v0 + 728) = v67;
        v69 = sub_2455E347C(v62, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
        v70 = *(v67 + 16);
        v71 = (v68 & 1) == 0;
        v72 = v70 + v71;
        if (__OFADD__(v70, v71))
        {
          goto LABEL_233;
        }

        v73 = v68;
        if (*(v67 + 24) >= v72)
        {
          if ((v66 & 1) == 0)
          {
            sub_2455E5940();
          }
        }

        else
        {
          v74 = *(v0 + 928);
          sub_2455E44CC(v72, v66);
          v75 = *(v0 + 728);
          v76 = sub_2455E347C(v74, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
          if ((v73 & 1) != (v77 & 1))
          {
            v330 = *(v0 + 912);
            goto LABEL_228;
          }

          v69 = v76;
        }

        v89 = *(v0 + 728);
        v90 = *(v0 + 936);
        v91 = *(v0 + 928);
        if (v73)
        {
          v92 = v89[7] + 16 * v69;
          v93 = *v92;
          v94 = *(v92 + 8);
          *v92 = v24;
          *(v92 + 8) = 1;
          sub_2455E7110(v93, v94);

          sub_2455E6788(v91, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          sub_2455E6788(v90, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v14 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        }

        else
        {
          v95 = *(v0 + 920);
          v89[(v69 >> 6) + 8] |= 1 << v69;
          sub_2455E661C(v91, v89[6] + *(v95 + 72) * v69, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v96 = v89[7] + 16 * v69;
          *v96 = v24;
          *(v96 + 8) = 1;

          sub_2455E6788(v91, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          sub_2455E6788(v90, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v14 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
          v97 = v89[2];
          v41 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v41)
          {
            goto LABEL_235;
          }

          v89[2] = v98;
        }

        *(v0 + 696) = v89;
      }

      else
      {
        v18 = *(v0 + 920);
        v19 = *(v0 + 912);
        v20 = *(v0 + 896);

        __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        (*(v18 + 56))(v20, 1, 1, v19);
        v14 = sub_2455A7680(v20, &qword_27EE15190, &qword_2455F1670);
      }
    }

    v1 = *(v0 + 1096);
LABEL_7:
    v16 = *(v0 + 1104) + 1;
    if (v16 == *(v0 + 1088))
    {
      v100 = *(v0 + 1080);
      goto LABEL_38;
    }
  }

  v47 = *(v0 + 1016);
  v48 = *(v0 + 1008);
  v49 = *(v0 + 1000);
  sub_2455ABC88(v0 + 432, v0 + 472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v50 = swift_dynamicCast();
  v51 = *(v47 + 56);
  if (!v50)
  {
    v52 = *(v0 + 1000);
    v53 = *(v0 + 912);
    v54 = *(v0 + 904);
    v51(v52, 1, 1, *(v0 + 1008));
    sub_2455A7680(v52, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 512);
    if (swift_dynamicCast())
    {
      v303 = *(v0 + 952);
      v304 = *(v0 + 912);
      v305 = *(v0 + 904);
      (*(*(v0 + 920) + 56))(v305, 0, 1, v304);
      sub_2455E6F48(v305, v303, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v307 = *(v303 + *(v304 + 20));
      v308 = *(v307 + 16);
      v309 = MEMORY[0x277D84F90];
      if (v308)
      {
        *v17 = MEMORY[0x277D84F90];
        sub_2455E9E40();
        v310 = (v307 + 128);
        do
        {
          v311 = *v310;
          v310 += 16;
          v312 = v311;
          sub_2455E9E20();
          v313 = *(*v17 + 16);
          sub_2455E9E50();
          sub_2455E9E60();
          sub_2455E9E30();
          --v308;
        }

        while (v308);
        v309 = *v17;
      }

      *(v0 + 1136) = v309;
      v314 = *(v0 + 1072);
      v315 = *(v0 + 1064);
      v316 = *(v0 + 1048);
      v317 = *(v0 + 880);
      v318 = sub_2455E6848(&qword_27EE15178, v306, type metadata accessor for HIDDeviceClient);
      v319 = swift_task_alloc();
      *(v0 + 1144) = v319;
      v319[2] = v315;
      v319[3] = v317;
      v319[4] = v309;
      v319[5] = v314;
      v319[6] = v316;
      v320 = *(MEMORY[0x277D85A40] + 4);
      v321 = swift_task_alloc();
      *(v0 + 1152) = v321;
      v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
      *v321 = v0;
      v321[1] = sub_2455DD5A0;
      v323 = *MEMORY[0x277D85DE8];
      v169 = v322;
      v167 = sub_2455E6FC8;
      v162 = (v0 + 736);
      v166 = 0x80000002455F3230;
      goto LABEL_223;
    }

    v55 = *(v0 + 920);
    v56 = *(v0 + 912);
    v57 = *(v0 + 904);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    (*(v55 + 56))(v57, 1, 1, v56);
    v14 = sub_2455A7680(v57, &qword_27EE15190, &qword_2455F1670);
    goto LABEL_7;
  }

  v114 = *(v0 + 1040);
  v115 = *(v0 + 1008);
  v116 = *(v0 + 1000);
  v51(v116, 0, 1, v115);
  sub_2455E6F48(v116, v114, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  *(v0 + 776) = MEMORY[0x277D84F98];
  v349 = *(v114 + *(v115 + 20));
  v347 = *(v349 + 16);
  if (!v347)
  {
LABEL_222:
    v324 = *(v0 + 1056);
    v325 = *(v0 + 1048);
    v326 = *(v0 + 1040);
    v317 = *(v0 + 880);
    v318 = sub_2455E6848(&qword_27EE15178, v117, type metadata accessor for HIDDeviceClient);
    v319 = swift_task_alloc();
    *(v0 + 1112) = v319;
    v319[2] = v324;
    v319[3] = v317;
    v319[4] = v350;
    v319[5] = v325;
    v319[6] = v0 + 688;
    v319[7] = v326;
    v327 = *(MEMORY[0x277D85A40] + 4);
    v162 = swift_task_alloc();
    *(v0 + 1120) = v162;
    *v162 = v0;
    v162[1] = sub_2455DBA40;
    v328 = *MEMORY[0x277D85DE8];
    v167 = sub_2455E7134;
    v166 = 0x80000002455F3230;
    v169 = MEMORY[0x277D84F78] + 8;
LABEL_223:
    v163 = v317;
    v164 = v318;
    v165 = 0xD00000000000001ALL;
    v168 = v319;

    return MEMORY[0x2822008A0](v162, v163, v164, v165, v166, v167, v168, v169);
  }

  v118 = 0;
  v119 = (*(v0 + 984) + *(*(v0 + 960) + 24));
  v120 = *(*(v0 + 968) + 80);
  v345 = v349 + ((v120 + 32) & ~v120);
  v121 = MEMORY[0x277D84F98];
  v122 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v118 >= *(v349 + 16))
    {
      goto LABEL_232;
    }

    sub_2455E661C(v345 + *(*(v0 + 968) + 72) * v118, *(v0 + 984), type metadata accessor for HIDElement.Value);
    v123 = *v119;
    v124 = v119[1];
    v125 = v124 >> 62;
    if ((v124 >> 62) <= 1)
    {
      if (!v125)
      {
        v126 = *(v0 + 984);
        v127 = *(v0 + 960);
        *(v0 + 273) = v123;
        *(v0 + 281) = v124;
        *(v0 + 283) = BYTE2(v124);
        *(v0 + 284) = BYTE3(v124);
        *(v0 + 285) = BYTE4(v124);
        *(v0 + 286) = BYTE5(v124);
        v128 = *(v127 + 20);
        v129 = *(v126 + 96);
        v130 = sub_2455D04E0();
        v131 = *v119;
        v132 = v119[1];
        v133 = v132 >> 62;
        if ((v132 >> 62) > 1)
        {
          if (v133 == 2)
          {
            v155 = v131 + 16;
            v153 = *(v131 + 16);
            v154 = *(v155 + 8);
            v134 = v154 - v153;
            if (__OFSUB__(v154, v153))
            {
              goto LABEL_254;
            }
          }

          else
          {
            v134 = 0;
          }
        }

        else if (v133)
        {
          v41 = __OFSUB__(HIDWORD(v131), v131);
          v187 = HIDWORD(v131) - v131;
          if (v41)
          {
            goto LABEL_251;
          }

          v134 = v187;
        }

        else
        {
          v134 = BYTE6(v132);
        }

        v201 = IOHIDValueCreateWithBytes(0, v129, v130, (v0 + 273), v134);
        if (v201)
        {
          v190 = v201;
          if ((v122 & 0xC000000000000001) != 0)
          {
            if (v122 < 0)
            {
              v202 = v122;
            }

            else
            {
              v202 = v122 & 0xFFFFFFFFFFFFFF8;
            }

            v203 = sub_2455E9F20();
            if (__OFADD__(v203, 1))
            {
              goto LABEL_243;
            }

            v193 = (v0 + 776);
            *v350 = sub_2455E424C(v202, v203 + 1);
          }

          else
          {
            v193 = (v0 + 776);
            v244 = *v350;
          }

          v245 = swift_isUniquelyReferenced_nonNull_native();
          v246 = *v193;
          *v340 = *v193;
          v234 = sub_2455E34FC(v129);
          v248 = *(v246 + 16);
          v249 = (v247 & 1) == 0;
          v41 = __OFADD__(v248, v249);
          v250 = v248 + v249;
          if (v41)
          {
            goto LABEL_240;
          }

          v251 = v247;
          if (*(v246 + 24) >= v250)
          {
            if ((v245 & 1) == 0)
            {
              v300 = v234;
              sub_2455E5E38();
              v234 = v300;
            }
          }

          else
          {
            sub_2455E4F3C(v250, v245);
            v252 = *v340;
            v234 = sub_2455E34FC(v129);
            if ((v251 & 1) != (v253 & 1))
            {
              goto LABEL_227;
            }
          }

          v121 = *v340;
          if ((v251 & 1) == 0)
          {
            *(v121 + 8 * (v234 >> 6) + 64) |= 1 << v234;
            *(*(v121 + 48) + 8 * v234) = v129;
            *(*(v121 + 56) + 8 * v234) = v190;
            v254 = *(v121 + 16);
            v41 = __OFADD__(v254, 1);
            v243 = v254 + 1;
            if (v41)
            {
              goto LABEL_248;
            }

            goto LABEL_198;
          }

LABEL_196:
          v276 = *(v121 + 56);
          v277 = *(v276 + 8 * v234);
          *(v276 + 8 * v234) = v190;

LABEL_199:
          *v193 = v121;
LABEL_200:
          v122 = v121;
LABEL_44:
          ++v118;
          sub_2455E6788(*(v0 + 984), type metadata accessor for HIDElement.Value);
          if (v347 == v118)
          {
            goto LABEL_222;
          }

          continue;
        }

        if ((v121 & 0xC000000000000001) != 0)
        {
          if (v121 < 0)
          {
            v204 = v121;
          }

          else
          {
            v204 = v121 & 0xFFFFFFFFFFFFFF8;
          }

          v129 = v129;
          v205 = sub_2455E9F50();

          if (v205)
          {
            swift_unknownObjectRelease();

            v206 = sub_2455E9F20();
            v122 = sub_2455E424C(v204, v206);

            v207 = sub_2455E34FC(v129);
            v209 = v208;

            if ((v209 & 1) == 0)
            {
              goto LABEL_260;
            }

            goto LABEL_154;
          }

LABEL_43:

          goto LABEL_44;
        }

        v286 = sub_2455E34FC(v129);
        if ((v287 & 1) == 0)
        {
          goto LABEL_43;
        }

        v281 = v286;
        v282 = (v0 + 776);
        v288 = *v350;
        v289 = swift_isUniquelyReferenced_nonNull_native();
        v121 = *v350;
        *(v0 + 816) = *v350;
        if ((v289 & 1) == 0)
        {
          v285 = (v0 + 816);
          goto LABEL_216;
        }

LABEL_214:

        v298 = *(*(v121 + 56) + 8 * v281);
        sub_2455E5218(v281, v121);

        *v282 = v121;
        goto LABEL_200;
      }

      v140 = v123;
      if (v123 > v123 >> 32)
      {
        goto LABEL_236;
      }

      v141 = sub_2455E9910();
      if (v141)
      {
        v142 = v141;
        v143 = sub_2455E9940();
        if (__OFSUB__(v140, v143))
        {
          goto LABEL_238;
        }

        v144 = (v140 - v143 + v142);
      }

      else
      {
        v144 = 0;
      }

      v177 = *(v0 + 984);
      v178 = *(v0 + 960);
      sub_2455E9930();
      v179 = *(v178 + 20);
      v129 = *(v177 + 96);
      v162 = sub_2455D04E0();
      if (!v144)
      {
        goto LABEL_264;
      }

      v180 = *v119;
      v181 = v119[1];
      v182 = v181 >> 62;
      if ((v181 >> 62) > 1)
      {
        if (v182 == 2)
        {
          v186 = v180 + 16;
          v184 = *(v180 + 16);
          v185 = *(v186 + 8);
          v183 = v185 - v184;
          if (__OFSUB__(v185, v184))
          {
            goto LABEL_258;
          }
        }

        else
        {
          v183 = 0;
        }
      }

      else if (v182)
      {
        v41 = __OFSUB__(HIDWORD(v180), v180);
        v220 = HIDWORD(v180) - v180;
        if (v41)
        {
          goto LABEL_257;
        }

        v183 = v220;
      }

      else
      {
        v183 = BYTE6(v181);
      }

      v221 = IOHIDValueCreateWithBytes(0, v129, v162, v144, v183);
      v222 = v121 & 0xC000000000000001;
      if (v221)
      {
        v190 = v221;
        if (v222)
        {
          if (v121 < 0)
          {
            v223 = v121;
          }

          else
          {
            v223 = v121 & 0xFFFFFFFFFFFFFF8;
          }

          v224 = sub_2455E9F20();
          v193 = (v0 + 776);
          if (__OFADD__(v224, 1))
          {
            goto LABEL_246;
          }

          *v350 = sub_2455E424C(v223, v224 + 1);
        }

        else
        {
          v193 = (v0 + 776);
          v266 = *v350;
        }

        v267 = swift_isUniquelyReferenced_nonNull_native();
        v268 = *v193;
        *v334 = *v193;
        v234 = sub_2455E34FC(v129);
        v270 = *(v268 + 16);
        v271 = (v269 & 1) == 0;
        v41 = __OFADD__(v270, v271);
        v272 = v270 + v271;
        if (v41)
        {
          goto LABEL_242;
        }

        v273 = v269;
        if (*(v268 + 24) >= v272)
        {
          if ((v267 & 1) == 0)
          {
            v302 = v234;
            sub_2455E5E38();
            v234 = v302;
          }
        }

        else
        {
          sub_2455E4F3C(v272, v267);
          v274 = *v334;
          v234 = sub_2455E34FC(v129);
          if ((v273 & 1) != (v275 & 1))
          {
LABEL_227:
            type metadata accessor for IOHIDElement();
            goto LABEL_228;
          }
        }

        v121 = *v334;
        if (v273)
        {
          goto LABEL_196;
        }

        *(v121 + 8 * (v234 >> 6) + 64) |= 1 << v234;
        *(*(v121 + 48) + 8 * v234) = v129;
        *(*(v121 + 56) + 8 * v234) = v190;
        v278 = *(v121 + 16);
        v41 = __OFADD__(v278, 1);
        v243 = v278 + 1;
        if (v41)
        {
          goto LABEL_250;
        }

        goto LABEL_198;
      }

      if (v222)
      {
        if (v121 < 0)
        {
          v225 = v121;
        }

        else
        {
          v225 = v121 & 0xFFFFFFFFFFFFFF8;
        }

        v129 = v129;
        v226 = sub_2455E9F50();

        if (!v226)
        {
          goto LABEL_43;
        }

        swift_unknownObjectRelease();

        v227 = sub_2455E9F20();
        v122 = sub_2455E424C(v225, v227);

        v207 = sub_2455E34FC(v129);
        v229 = v228;

        if ((v229 & 1) == 0)
        {
          goto LABEL_262;
        }

LABEL_154:

        v230 = *(*(v122 + 56) + 8 * v207);
        sub_2455E5218(v207, v122);

        *v350 = v122;
LABEL_205:
        v121 = v122;
        goto LABEL_44;
      }

      v294 = sub_2455E34FC(v129);
      if ((v295 & 1) == 0)
      {
        goto LABEL_43;
      }

      v281 = v294;
      v282 = (v0 + 776);
      v296 = *v350;
      v297 = swift_isUniquelyReferenced_nonNull_native();
      v121 = *v350;
      *(v0 + 800) = *v350;
      if (v297)
      {
        goto LABEL_214;
      }

      v285 = (v0 + 800);
LABEL_216:
      sub_2455E5E38();
      v121 = *v285;
      goto LABEL_214;
    }

    break;
  }

  if (v125 != 2)
  {
    v145 = *(v0 + 984);
    v146 = *(v0 + 960);
    *bytes = 0;
    *(v0 + 293) = 0;
    v147 = *(v146 + 20);
    v129 = *(v145 + 96);
    v148 = sub_2455D04E0();
    v149 = *v119;
    v150 = v119[1];
    v151 = v150 >> 62;
    if ((v150 >> 62) > 1)
    {
      v152 = 0;
      if (v151 == 2)
      {
        v158 = v149 + 16;
        v156 = *(v149 + 16);
        v157 = *(v158 + 8);
        v152 = v157 - v156;
        if (__OFSUB__(v157, v156))
        {
          goto LABEL_253;
        }
      }
    }

    else if (v151)
    {
      v41 = __OFSUB__(HIDWORD(v149), v149);
      v188 = HIDWORD(v149) - v149;
      if (v41)
      {
        goto LABEL_252;
      }

      v152 = v188;
    }

    else
    {
      v152 = BYTE6(v150);
    }

    v189 = IOHIDValueCreateWithBytes(0, v129, v148, bytes, v152);
    if (v189)
    {
      v190 = v189;
      if ((v122 & 0xC000000000000001) != 0)
      {
        if (v122 < 0)
        {
          v191 = v122;
        }

        else
        {
          v191 = v122 & 0xFFFFFFFFFFFFFF8;
        }

        v192 = sub_2455E9F20();
        if (__OFADD__(v192, 1))
        {
          goto LABEL_244;
        }

        v193 = (v0 + 776);
        *v350 = sub_2455E424C(v191, v192 + 1);
      }

      else
      {
        v193 = (v0 + 776);
        v231 = *v350;
      }

      v232 = swift_isUniquelyReferenced_nonNull_native();
      v233 = *v193;
      *v338 = *v193;
      v234 = sub_2455E34FC(v129);
      v236 = *(v233 + 16);
      v237 = (v235 & 1) == 0;
      v41 = __OFADD__(v236, v237);
      v238 = v236 + v237;
      if (v41)
      {
        goto LABEL_239;
      }

      v239 = v235;
      if (*(v233 + 24) >= v238)
      {
        if ((v232 & 1) == 0)
        {
          v299 = v234;
          sub_2455E5E38();
          v234 = v299;
        }
      }

      else
      {
        sub_2455E4F3C(v238, v232);
        v240 = *v338;
        v234 = sub_2455E34FC(v129);
        if ((v239 & 1) != (v241 & 1))
        {
          goto LABEL_227;
        }
      }

      v121 = *v338;
      if ((v239 & 1) == 0)
      {
        *(v121 + 8 * (v234 >> 6) + 64) |= 1 << v234;
        *(*(v121 + 48) + 8 * v234) = v129;
        *(*(v121 + 56) + 8 * v234) = v190;
        v242 = *(v121 + 16);
        v41 = __OFADD__(v242, 1);
        v243 = v242 + 1;
        if (v41)
        {
          goto LABEL_247;
        }

        goto LABEL_198;
      }

      goto LABEL_196;
    }

    if ((v122 & 0xC000000000000001) != 0)
    {
      if (v122 < 0)
      {
        v194 = v122;
      }

      else
      {
        v194 = v122 & 0xFFFFFFFFFFFFFF8;
      }

      v129 = v129;
      v195 = sub_2455E9F50();

      if (v195)
      {
        swift_unknownObjectRelease();

        v196 = sub_2455E9F20();
        v121 = sub_2455E424C(v194, v196);

        v197 = sub_2455E34FC(v129);
        v199 = v198;

        if ((v199 & 1) == 0)
        {
          goto LABEL_259;
        }

        v200 = *(*(v121 + 56) + 8 * v197);
        sub_2455E5218(v197, v121);

        *v350 = v121;
        goto LABEL_200;
      }
    }

    else
    {
      v279 = sub_2455E34FC(v129);
      if (v280)
      {
        v281 = v279;
        v282 = (v0 + 776);
        v283 = *v350;
        v284 = swift_isUniquelyReferenced_nonNull_native();
        v121 = *v350;
        *(v0 + 832) = *v350;
        if ((v284 & 1) == 0)
        {
          v285 = (v0 + 832);
          goto LABEL_216;
        }

        goto LABEL_214;
      }
    }

    goto LABEL_205;
  }

  v135 = *(v123 + 16);
  v136 = sub_2455E9910();
  if (v136)
  {
    v137 = v136;
    v138 = sub_2455E9940();
    if (__OFSUB__(v135, v138))
    {
      goto LABEL_237;
    }

    v139 = (v135 - v138 + v137);
  }

  else
  {
    v139 = 0;
  }

  v159 = *(v0 + 984);
  v160 = *(v0 + 960);
  sub_2455E9930();
  v161 = *(v160 + 20);
  v129 = *(v159 + 96);
  v162 = sub_2455D04E0();
  if (v139)
  {
    v170 = *v119;
    v171 = v119[1];
    v172 = v171 >> 62;
    if ((v171 >> 62) > 1)
    {
      if (v172 == 2)
      {
        v176 = v170 + 16;
        v174 = *(v170 + 16);
        v175 = *(v176 + 8);
        v173 = v175 - v174;
        if (__OFSUB__(v175, v174))
        {
          goto LABEL_256;
        }
      }

      else
      {
        v173 = 0;
      }
    }

    else if (v172)
    {
      v41 = __OFSUB__(HIDWORD(v170), v170);
      v210 = HIDWORD(v170) - v170;
      if (v41)
      {
        goto LABEL_255;
      }

      v173 = v210;
    }

    else
    {
      v173 = BYTE6(v171);
    }

    v211 = IOHIDValueCreateWithBytes(0, v129, v162, v139, v173);
    v212 = v121 & 0xC000000000000001;
    if (v211)
    {
      v190 = v211;
      if (v212)
      {
        if (v121 < 0)
        {
          v213 = v121;
        }

        else
        {
          v213 = v121 & 0xFFFFFFFFFFFFFF8;
        }

        v214 = sub_2455E9F20();
        v193 = (v0 + 776);
        if (__OFADD__(v214, 1))
        {
          goto LABEL_245;
        }

        *v350 = sub_2455E424C(v213, v214 + 1);
      }

      else
      {
        v193 = (v0 + 776);
        v255 = *v350;
      }

      v256 = swift_isUniquelyReferenced_nonNull_native();
      v257 = *v193;
      *v336 = *v193;
      v234 = sub_2455E34FC(v129);
      v259 = *(v257 + 16);
      v260 = (v258 & 1) == 0;
      v41 = __OFADD__(v259, v260);
      v261 = v259 + v260;
      if (v41)
      {
        goto LABEL_241;
      }

      v262 = v258;
      if (*(v257 + 24) >= v261)
      {
        if ((v256 & 1) == 0)
        {
          v301 = v234;
          sub_2455E5E38();
          v234 = v301;
        }
      }

      else
      {
        sub_2455E4F3C(v261, v256);
        v263 = *v336;
        v234 = sub_2455E34FC(v129);
        if ((v262 & 1) != (v264 & 1))
        {
          goto LABEL_227;
        }
      }

      v121 = *v336;
      if (v262)
      {
        goto LABEL_196;
      }

      *(v121 + 8 * (v234 >> 6) + 64) |= 1 << v234;
      *(*(v121 + 48) + 8 * v234) = v129;
      *(*(v121 + 56) + 8 * v234) = v190;
      v265 = *(v121 + 16);
      v41 = __OFADD__(v265, 1);
      v243 = v265 + 1;
      if (v41)
      {
        goto LABEL_249;
      }

LABEL_198:
      *(v121 + 16) = v243;
      goto LABEL_199;
    }

    if (v212)
    {
      if (v121 < 0)
      {
        v215 = v121;
      }

      else
      {
        v215 = v121 & 0xFFFFFFFFFFFFFF8;
      }

      v129 = v129;
      v216 = sub_2455E9F50();

      if (!v216)
      {
        goto LABEL_43;
      }

      swift_unknownObjectRelease();

      v217 = sub_2455E9F20();
      v122 = sub_2455E424C(v215, v217);

      v207 = sub_2455E34FC(v129);
      v219 = v218;

      if ((v219 & 1) == 0)
      {
        goto LABEL_261;
      }

      goto LABEL_154;
    }

    v290 = sub_2455E34FC(v129);
    if ((v291 & 1) == 0)
    {
      goto LABEL_43;
    }

    v281 = v290;
    v282 = (v0 + 776);
    v292 = *v350;
    v293 = swift_isUniquelyReferenced_nonNull_native();
    v121 = *v350;
    *(v0 + 784) = *v350;
    if (v293)
    {
      goto LABEL_214;
    }

    v285 = (v0 + 784);
    goto LABEL_216;
  }

  __break(1u);
LABEL_264:
  __break(1u);
  return MEMORY[0x2822008A0](v162, v163, v164, v165, v166, v167, v168, v169);
}

uint64_t sub_2455DBA40()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1120);
  v12 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v4 = *(v2 + 880);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_2455DF94C;
  }

  else
  {
    v7 = *(v2 + 1112);
    v8 = *(v2 + 880);

    v9 = *MEMORY[0x277D85DE8];
    v6 = sub_2455DBBB4;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_2455DBBB4()
{
  v340 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1040);
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));
  v2 = *(v0 + 776);

  sub_2455E6788(v1, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  v3 = *(v0 + 1104) + 1;
  if (v3 == *(v0 + 1088))
  {
LABEL_2:
    v4 = *(v0 + 1080);
    v5 = *(v0 + 1072);
    v6 = *(v0 + 1064);
    v7 = *(v0 + 1056);
    v8 = *(v0 + 1040);
    v9 = *(v0 + 1032);
    v10 = *(v0 + 1024);
    v318 = *(v0 + 1000);
    v319 = *(v0 + 992);
    v321 = *(v0 + 984);
    v323 = *(v0 + 976);
    v325 = *(v0 + 952);
    v327 = *(v0 + 944);
    bytesa = *(v0 + 936);
    v331 = *(v0 + 928);
    v333 = *(v0 + 904);
    v335 = *(v0 + 896);
    v337 = *(v0 + 888);
    v11 = *(v0 + 848);
    (*(**(v0 + 880) + 824))();
    v12 = *(v0 + 696);
    *v11 = *(v0 + 688);
    v11[1] = v12;

    MEMORY[0x245D6C8C0](v7, -1, -1);
    MEMORY[0x245D6C8C0](v6, -1, -1);
    MEMORY[0x245D6C8C0](v5, -1, -1);

    v13 = *(v0 + 688);
    v14 = *(v0 + 696);

    v15 = *(v0 + 8);
    v16 = *MEMORY[0x277D85DE8];

    return v15();
  }

  v18 = (v0 + 744);
  bytes = (v0 + 287);
  v332 = (v0 + 776);
  v324 = (v0 + 792);
  v320 = (v0 + 688);
  v322 = (v0 + 808);
  v326 = (v0 + 840);
  v328 = (v0 + 824);
  v19 = *(v0 + 1096);
  while (1)
  {
    *(v0 + 1104) = v3;
    *(v0 + 1096) = v19;
    v20 = *(v0 + 1080);
    sub_2455ABC88(*(v0 + 856) + 40 * v3 + 32, v0 + 432);
    if (v20)
    {
      v32 = *(v0 + 1080);
      swift_willThrow();
      v33 = v32;
      v338 = *(v0 + 1080);
      v34 = *(v0 + 1016);
      v35 = *(v0 + 1008);
      v36 = *(v0 + 992);
      sub_2455ABC88(v0 + 432, v0 + 552);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
      v37 = swift_dynamicCast();
      v38 = *(v34 + 56);
      if (v37)
      {
        v39 = *(v0 + 1032);
        v40 = *(v0 + 1024);
        v41 = *(v0 + 992);
        v38(v41, 0, 1, *(v0 + 1008));
        sub_2455E6F48(v41, v39, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        sub_2455E661C(v39, v40, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v42 = v338;
        v43 = *(v0 + 688);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v0 + 688);
        *(v0 + 712) = v45;
        v46 = sub_2455E347C(v40, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
        v48 = *(v45 + 16);
        v49 = (v47 & 1) == 0;
        v50 = __OFADD__(v48, v49);
        v51 = v48 + v49;
        if (v50)
        {
          goto LABEL_255;
        }

        v52 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v100 = v46;
            sub_2455E5BBC();
            v46 = v100;
          }
        }

        else
        {
          v53 = *(v0 + 1024);
          sub_2455E49CC(v51, isUniquelyReferenced_nonNull_native);
          v54 = *(v0 + 712);
          v46 = sub_2455E347C(v53, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
          if ((v52 & 1) != (v55 & 1))
          {
            v316 = *(v0 + 1008);
            goto LABEL_223;
          }
        }

        v79 = *(v0 + 712);
        v80 = *(v0 + 1032);
        v81 = *(v0 + 1024);
        if (v52)
        {
          v82 = v79[7] + 16 * v46;
          v83 = *v82;
          v84 = *(v82 + 8);
          *v82 = v338;
          *(v82 + 8) = 1;
          sub_2455E711C(v83, v84);

          sub_2455E6788(v81, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          sub_2455E6788(v80, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        }

        else
        {
          v85 = *(v0 + 1016);
          v79[(v46 >> 6) + 8] |= 1 << v46;
          v86 = v46;
          sub_2455E661C(v81, v79[6] + *(v85 + 72) * v46, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          v87 = v79[7] + 16 * v86;
          *v87 = v338;
          *(v87 + 8) = 1;

          sub_2455E6788(v81, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          sub_2455E6788(v80, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          __swift_destroy_boxed_opaque_existential_1((v0 + 432));
          v88 = v79[2];
          v50 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v50)
          {
            goto LABEL_257;
          }

          v79[2] = v89;
        }

        *v320 = v79;
      }

      else
      {
        v56 = *(v0 + 992);
        v57 = *(v0 + 912);
        v58 = *(v0 + 896);
        v38(v56, 1, 1, *(v0 + 1008));
        sub_2455A7680(v56, &qword_27EE15198, &qword_2455F1678);
        sub_2455ABC88(v0 + 432, v0 + 592);
        if (swift_dynamicCast())
        {
          v59 = *(v0 + 936);
          v60 = *(v0 + 928);
          v61 = *(v0 + 896);
          (*(*(v0 + 920) + 56))(v61, 0, 1, *(v0 + 912));
          sub_2455E6F48(v61, v59, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          sub_2455E661C(v59, v60, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v62 = v338;
          v63 = *(v0 + 696);
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v0 + 696);
          *(v0 + 728) = v65;
          v67 = sub_2455E347C(v60, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
          v68 = *(v65 + 16);
          v69 = (v66 & 1) == 0;
          v70 = v68 + v69;
          if (__OFADD__(v68, v69))
          {
            goto LABEL_256;
          }

          v71 = v66;
          if (*(v65 + 24) >= v70)
          {
            if ((v64 & 1) == 0)
            {
              sub_2455E5940();
            }
          }

          else
          {
            v72 = *(v0 + 928);
            sub_2455E44CC(v70, v64);
            v73 = *(v0 + 728);
            v74 = sub_2455E347C(v72, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
            if ((v71 & 1) != (v75 & 1))
            {
              goto LABEL_227;
            }

            v67 = v74;
          }

          v90 = *(v0 + 728);
          v91 = *(v0 + 936);
          v92 = *(v0 + 928);
          if (v71)
          {
            v93 = v90[7] + 16 * v67;
            v94 = *v93;
            v95 = *(v93 + 8);
            *v93 = v338;
            *(v93 + 8) = 1;
            sub_2455E7110(v94, v95);

            sub_2455E6788(v92, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            sub_2455E6788(v91, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            __swift_destroy_boxed_opaque_existential_1((v0 + 432));
          }

          else
          {
            v96 = *(v0 + 920);
            v90[(v67 >> 6) + 8] |= 1 << v67;
            sub_2455E661C(v92, v90[6] + *(v96 + 72) * v67, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            v97 = v90[7] + 16 * v67;
            *v97 = v338;
            *(v97 + 8) = 1;

            sub_2455E6788(v92, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            sub_2455E6788(v91, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            __swift_destroy_boxed_opaque_existential_1((v0 + 432));
            v98 = v90[2];
            v50 = __OFADD__(v98, 1);
            v99 = v98 + 1;
            if (v50)
            {
              goto LABEL_258;
            }

            v90[2] = v99;
          }

          *(v0 + 696) = v90;
        }

        else
        {
          v76 = *(v0 + 920);
          v77 = *(v0 + 912);
          v78 = *(v0 + 896);

          __swift_destroy_boxed_opaque_existential_1((v0 + 432));
          (*(v76 + 56))(v78, 1, 1, v77);
          sub_2455A7680(v78, &qword_27EE15190, &qword_2455F1670);
        }
      }

      v19 = *(v0 + 1096);
      goto LABEL_10;
    }

    v21 = *(v0 + 1016);
    v22 = *(v0 + 1008);
    v23 = *(v0 + 1000);
    sub_2455ABC88(v0 + 432, v0 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v24 = swift_dynamicCast();
    v25 = *(v21 + 56);
    if (v24)
    {
      break;
    }

    v26 = *(v0 + 1000);
    v27 = *(v0 + 912);
    v28 = *(v0 + 904);
    v25(v26, 1, 1, *(v0 + 1008));
    sub_2455A7680(v26, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 512);
    if (swift_dynamicCast())
    {
      v289 = *(v0 + 952);
      v290 = *(v0 + 912);
      v291 = *(v0 + 904);
      (*(*(v0 + 920) + 56))(v291, 0, 1, v290);
      sub_2455E6F48(v291, v289, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v293 = *(v289 + *(v290 + 20));
      v294 = *(v293 + 16);
      v295 = MEMORY[0x277D84F90];
      if (v294)
      {
        *v18 = MEMORY[0x277D84F90];
        sub_2455E9E40();
        v296 = (v293 + 128);
        do
        {
          v297 = *v296;
          v296 += 16;
          v298 = v297;
          sub_2455E9E20();
          v299 = *(*v18 + 16);
          sub_2455E9E50();
          sub_2455E9E60();
          sub_2455E9E30();
          --v294;
        }

        while (v294);
        v295 = *v18;
      }

      *(v0 + 1136) = v295;
      v300 = *(v0 + 1072);
      v301 = *(v0 + 1064);
      v302 = *(v0 + 1048);
      v303 = *(v0 + 880);
      v304 = sub_2455E6848(&qword_27EE15178, v292, type metadata accessor for HIDDeviceClient);
      v305 = swift_task_alloc();
      *(v0 + 1144) = v305;
      v305[2] = v301;
      v305[3] = v303;
      v305[4] = v295;
      v305[5] = v300;
      v305[6] = v302;
      v306 = *(MEMORY[0x277D85A40] + 4);
      v307 = swift_task_alloc();
      *(v0 + 1152) = v307;
      v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
      *v307 = v0;
      v307[1] = sub_2455DD5A0;
      v309 = *MEMORY[0x277D85DE8];
      v159 = v308;
      v157 = sub_2455E6FC8;
      v152 = (v0 + 736);
      v156 = 0x80000002455F3230;
      goto LABEL_219;
    }

    v29 = *(v0 + 920);
    v30 = *(v0 + 912);
    v31 = *(v0 + 904);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    (*(v29 + 56))(v31, 1, 1, v30);
    sub_2455A7680(v31, &qword_27EE15190, &qword_2455F1670);
LABEL_10:
    v3 = *(v0 + 1104) + 1;
    if (v3 == *(v0 + 1088))
    {
      goto LABEL_2;
    }
  }

  v101 = *(v0 + 1040);
  v102 = *(v0 + 1008);
  v103 = *(v0 + 1000);
  v25(v103, 0, 1, v102);
  sub_2455E6F48(v103, v101, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  *(v0 + 776) = MEMORY[0x277D84F98];
  v339 = *(v101 + *(v102 + 20));
  v105 = (v0 + 776);
  v336 = v339[2];
  if (!v336)
  {
LABEL_218:
    v310 = *(v0 + 1056);
    v311 = *(v0 + 1048);
    v312 = *(v0 + 1040);
    v303 = *(v0 + 880);
    v304 = sub_2455E6848(&qword_27EE15178, v104, type metadata accessor for HIDDeviceClient);
    v305 = swift_task_alloc();
    *(v0 + 1112) = v305;
    v305[2] = v310;
    v305[3] = v303;
    v305[4] = v105;
    v305[5] = v311;
    v305[6] = v320;
    v305[7] = v312;
    v313 = *(MEMORY[0x277D85A40] + 4);
    v152 = swift_task_alloc();
    *(v0 + 1120) = v152;
    *v152 = v0;
    v152[1] = sub_2455DBA40;
    v314 = *MEMORY[0x277D85DE8];
    v157 = sub_2455E7134;
    v156 = 0x80000002455F3230;
    v159 = MEMORY[0x277D84F78] + 8;
LABEL_219:
    v153 = v303;
    v154 = v304;
    v155 = 0xD00000000000001ALL;
    v158 = v305;

    return MEMORY[0x2822008A0](v152, v153, v154, v155, v156, v157, v158, v159);
  }

  v106 = 0;
  v107 = (*(v0 + 984) + *(*(v0 + 960) + 24));
  v108 = *(*(v0 + 968) + 80);
  v334 = v339 + ((v108 + 32) & ~v108);
  v109 = MEMORY[0x277D84F98];
  v110 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v106 >= v339[2])
    {
      __break(1u);
LABEL_227:
      v317 = *(v0 + 912);
LABEL_223:
      v315 = *MEMORY[0x277D85DE8];

      return sub_2455EA020();
    }

    sub_2455E661C(&v334[*(*(v0 + 968) + 72) * v106], *(v0 + 984), type metadata accessor for HIDElement.Value);
    v113 = *v107;
    v114 = v107[1];
    v115 = v114 >> 62;
    if ((v114 >> 62) <= 1)
    {
      if (!v115)
      {
        v116 = *(v0 + 984);
        v117 = *(v0 + 960);
        *(v0 + 273) = v113;
        *(v0 + 281) = v114;
        *(v0 + 283) = BYTE2(v114);
        *(v0 + 284) = BYTE3(v114);
        *(v0 + 285) = BYTE4(v114);
        *(v0 + 286) = BYTE5(v114);
        v118 = *(v117 + 20);
        v119 = *(v116 + 96);
        v120 = sub_2455D04E0();
        v121 = *v107;
        v122 = v107[1];
        v123 = v122 >> 62;
        if ((v122 >> 62) > 1)
        {
          if (v123 == 2)
          {
            v145 = v121 + 16;
            v143 = *(v121 + 16);
            v144 = *(v145 + 8);
            v124 = v144 - v143;
            if (__OFSUB__(v144, v143))
            {
              goto LABEL_246;
            }
          }

          else
          {
            v124 = 0;
          }
        }

        else if (v123)
        {
          v50 = __OFSUB__(HIDWORD(v121), v121);
          v177 = HIDWORD(v121) - v121;
          if (v50)
          {
            goto LABEL_243;
          }

          v124 = v177;
        }

        else
        {
          v124 = BYTE6(v122);
        }

        v190 = IOHIDValueCreateWithBytes(0, v119, v120, (v0 + 273), v124);
        if (v190)
        {
          v180 = v190;
          if ((v110 & 0xC000000000000001) != 0)
          {
            if (v110 < 0)
            {
              v191 = v110;
            }

            else
            {
              v191 = v110 & 0xFFFFFFFFFFFFFF8;
            }

            v192 = sub_2455E9F20();
            if (__OFADD__(v192, 1))
            {
              goto LABEL_235;
            }

            *v105 = sub_2455E424C(v191, v192 + 1);
          }

          else
          {
            v233 = *v105;
          }

          v234 = swift_isUniquelyReferenced_nonNull_native();
          v235 = *v105;
          *v328 = *v105;
          v223 = sub_2455E34FC(v119);
          v237 = *(v235 + 16);
          v238 = (v236 & 1) == 0;
          v50 = __OFADD__(v237, v238);
          v239 = v237 + v238;
          if (v50)
          {
            goto LABEL_232;
          }

          v240 = v236;
          if (*(v235 + 24) >= v239)
          {
            if ((v234 & 1) == 0)
            {
              v286 = v223;
              sub_2455E5E38();
              v223 = v286;
            }
          }

          else
          {
            sub_2455E4F3C(v239, v234);
            v241 = *v328;
            v223 = sub_2455E34FC(v119);
            if ((v240 & 1) != (v242 & 1))
            {
              goto LABEL_222;
            }
          }

          v109 = *v328;
          if ((v240 & 1) == 0)
          {
            *(v109 + 8 * (v223 >> 6) + 64) |= 1 << v223;
            *(*(v109 + 48) + 8 * v223) = v119;
            *(*(v109 + 56) + 8 * v223) = v180;
            v243 = *(v109 + 16);
            v50 = __OFADD__(v243, 1);
            v232 = v243 + 1;
            if (v50)
            {
              goto LABEL_240;
            }

            goto LABEL_195;
          }

LABEL_40:
          v111 = *(v109 + 56);
          v112 = *(v111 + 8 * v223);
          *(v111 + 8 * v223) = v180;

LABEL_41:
          *v105 = v109;
          v110 = v109;
LABEL_42:
          ++v106;
          sub_2455E6788(*(v0 + 984), type metadata accessor for HIDElement.Value);
          if (v336 == v106)
          {
            goto LABEL_218;
          }

          continue;
        }

        if ((v109 & 0xC000000000000001) != 0)
        {
          if (v109 < 0)
          {
            v193 = v109;
          }

          else
          {
            v193 = v109 & 0xFFFFFFFFFFFFFF8;
          }

          v119 = v119;
          v194 = sub_2455E9F50();

          if (v194)
          {
            swift_unknownObjectRelease();

            v195 = sub_2455E9F20();
            v110 = sub_2455E424C(v193, v195);

            v196 = sub_2455E34FC(v119);
            v198 = v197;

            if ((v198 & 1) == 0)
            {
              goto LABEL_252;
            }

            goto LABEL_152;
          }

LABEL_210:

          goto LABEL_42;
        }

        v272 = sub_2455E34FC(v119);
        if ((v273 & 1) == 0)
        {
          goto LABEL_210;
        }

        v268 = v272;
        v274 = *v105;
        v275 = swift_isUniquelyReferenced_nonNull_native();
        v109 = *v105;
        *(v0 + 816) = *v105;
        if ((v275 & 1) == 0)
        {
          v271 = (v0 + 816);
          goto LABEL_212;
        }

LABEL_209:

        v284 = *(*(v109 + 56) + 8 * v268);
        sub_2455E5218(v268, v109);

        goto LABEL_41;
      }

      v130 = v113;
      if (v113 > v113 >> 32)
      {
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
      }

      v131 = sub_2455E9910();
      if (v131)
      {
        v132 = v131;
        v133 = sub_2455E9940();
        if (__OFSUB__(v130, v133))
        {
          goto LABEL_230;
        }

        v134 = (v130 - v133 + v132);
      }

      else
      {
        v134 = 0;
      }

      v167 = *(v0 + 984);
      v168 = *(v0 + 960);
      sub_2455E9930();
      v169 = *(v168 + 20);
      v119 = *(v167 + 96);
      v152 = sub_2455D04E0();
      if (!v134)
      {
        goto LABEL_260;
      }

      v170 = *v107;
      v171 = v107[1];
      v172 = v171 >> 62;
      v105 = (v0 + 776);
      if ((v171 >> 62) > 1)
      {
        if (v172 == 2)
        {
          v176 = v170 + 16;
          v174 = *(v170 + 16);
          v175 = *(v176 + 8);
          v173 = v175 - v174;
          if (__OFSUB__(v175, v174))
          {
            goto LABEL_250;
          }
        }

        else
        {
          v173 = 0;
        }
      }

      else if (v172)
      {
        v50 = __OFSUB__(HIDWORD(v170), v170);
        v209 = HIDWORD(v170) - v170;
        if (v50)
        {
          goto LABEL_249;
        }

        v173 = v209;
      }

      else
      {
        v173 = BYTE6(v171);
      }

      v210 = IOHIDValueCreateWithBytes(0, v119, v152, v134, v173);
      v211 = v109 & 0xC000000000000001;
      if (v210)
      {
        v180 = v210;
        if (v211)
        {
          if (v109 < 0)
          {
            v212 = v109;
          }

          else
          {
            v212 = v109 & 0xFFFFFFFFFFFFFF8;
          }

          v213 = sub_2455E9F20();
          if (__OFADD__(v213, 1))
          {
            goto LABEL_238;
          }

          *v332 = sub_2455E424C(v212, v213 + 1);
        }

        else
        {
          v255 = *v332;
        }

        v256 = swift_isUniquelyReferenced_nonNull_native();
        v257 = *v332;
        *v322 = *v332;
        v223 = sub_2455E34FC(v119);
        v259 = *(v257 + 16);
        v260 = (v258 & 1) == 0;
        v50 = __OFADD__(v259, v260);
        v261 = v259 + v260;
        if (v50)
        {
          goto LABEL_234;
        }

        v262 = v258;
        if (*(v257 + 24) >= v261)
        {
          if ((v256 & 1) == 0)
          {
            v288 = v223;
            sub_2455E5E38();
            v223 = v288;
          }
        }

        else
        {
          sub_2455E4F3C(v261, v256);
          v263 = *v322;
          v223 = sub_2455E34FC(v119);
          if ((v262 & 1) != (v264 & 1))
          {
LABEL_222:
            type metadata accessor for IOHIDElement();
            goto LABEL_223;
          }
        }

        v109 = *v322;
        if (v262)
        {
          goto LABEL_40;
        }

        *(v109 + 8 * (v223 >> 6) + 64) |= 1 << v223;
        *(*(v109 + 48) + 8 * v223) = v119;
        *(*(v109 + 56) + 8 * v223) = v180;
        v265 = *(v109 + 16);
        v50 = __OFADD__(v265, 1);
        v232 = v265 + 1;
        if (v50)
        {
          goto LABEL_242;
        }

        goto LABEL_195;
      }

      if (v211)
      {
        if (v109 < 0)
        {
          v214 = v109;
        }

        else
        {
          v214 = v109 & 0xFFFFFFFFFFFFFF8;
        }

        v119 = v119;
        v215 = sub_2455E9F50();

        if (!v215)
        {
          goto LABEL_210;
        }

        swift_unknownObjectRelease();

        v216 = sub_2455E9F20();
        v110 = sub_2455E424C(v214, v216);

        v196 = sub_2455E34FC(v119);
        v218 = v217;

        if ((v218 & 1) == 0)
        {
          goto LABEL_254;
        }

LABEL_152:

        v219 = *(*(v110 + 56) + 8 * v196);
        sub_2455E5218(v196, v110);

        *v105 = v110;
LABEL_200:
        v109 = v110;
        goto LABEL_42;
      }

      v280 = sub_2455E34FC(v119);
      if ((v281 & 1) == 0)
      {
        goto LABEL_210;
      }

      v268 = v280;
      v282 = *v332;
      v283 = swift_isUniquelyReferenced_nonNull_native();
      v109 = *v332;
      *(v0 + 800) = *v332;
      if (v283)
      {
        goto LABEL_209;
      }

      v271 = (v0 + 800);
LABEL_212:
      sub_2455E5E38();
      v109 = *v271;
      goto LABEL_209;
    }

    break;
  }

  if (v115 != 2)
  {
    v135 = *(v0 + 984);
    v136 = *(v0 + 960);
    *bytes = 0;
    *(v0 + 293) = 0;
    v137 = *(v136 + 20);
    v119 = *(v135 + 96);
    v138 = sub_2455D04E0();
    v139 = *v107;
    v140 = v107[1];
    v141 = v140 >> 62;
    if ((v140 >> 62) > 1)
    {
      v142 = 0;
      if (v141 == 2)
      {
        v148 = v139 + 16;
        v146 = *(v139 + 16);
        v147 = *(v148 + 8);
        v142 = v147 - v146;
        if (__OFSUB__(v147, v146))
        {
          goto LABEL_245;
        }
      }
    }

    else if (v141)
    {
      v50 = __OFSUB__(HIDWORD(v139), v139);
      v178 = HIDWORD(v139) - v139;
      if (v50)
      {
        goto LABEL_244;
      }

      v142 = v178;
    }

    else
    {
      v142 = BYTE6(v140);
    }

    v179 = IOHIDValueCreateWithBytes(0, v119, v138, bytes, v142);
    if (v179)
    {
      v180 = v179;
      if ((v110 & 0xC000000000000001) != 0)
      {
        if (v110 < 0)
        {
          v181 = v110;
        }

        else
        {
          v181 = v110 & 0xFFFFFFFFFFFFFF8;
        }

        v182 = sub_2455E9F20();
        if (__OFADD__(v182, 1))
        {
          goto LABEL_236;
        }

        *v105 = sub_2455E424C(v181, v182 + 1);
      }

      else
      {
        v220 = *v105;
      }

      v221 = swift_isUniquelyReferenced_nonNull_native();
      v222 = *v105;
      *v326 = *v105;
      v223 = sub_2455E34FC(v119);
      v225 = *(v222 + 16);
      v226 = (v224 & 1) == 0;
      v50 = __OFADD__(v225, v226);
      v227 = v225 + v226;
      if (v50)
      {
        goto LABEL_231;
      }

      v228 = v224;
      if (*(v222 + 24) >= v227)
      {
        if ((v221 & 1) == 0)
        {
          v285 = v223;
          sub_2455E5E38();
          v223 = v285;
        }
      }

      else
      {
        sub_2455E4F3C(v227, v221);
        v229 = *v326;
        v223 = sub_2455E34FC(v119);
        if ((v228 & 1) != (v230 & 1))
        {
          goto LABEL_222;
        }
      }

      v109 = *v326;
      if ((v228 & 1) == 0)
      {
        *(v109 + 8 * (v223 >> 6) + 64) |= 1 << v223;
        *(*(v109 + 48) + 8 * v223) = v119;
        *(*(v109 + 56) + 8 * v223) = v180;
        v231 = *(v109 + 16);
        v50 = __OFADD__(v231, 1);
        v232 = v231 + 1;
        if (v50)
        {
          goto LABEL_239;
        }

        goto LABEL_195;
      }

      goto LABEL_40;
    }

    if ((v110 & 0xC000000000000001) != 0)
    {
      if (v110 < 0)
      {
        v183 = v110;
      }

      else
      {
        v183 = v110 & 0xFFFFFFFFFFFFFF8;
      }

      v119 = v119;
      v184 = sub_2455E9F50();

      if (v184)
      {
        swift_unknownObjectRelease();

        v185 = sub_2455E9F20();
        v109 = sub_2455E424C(v183, v185);

        v186 = sub_2455E34FC(v119);
        v188 = v187;

        if ((v188 & 1) == 0)
        {
          goto LABEL_251;
        }

        v189 = *(*(v109 + 56) + 8 * v186);
        sub_2455E5218(v186, v109);

        goto LABEL_41;
      }
    }

    else
    {
      v266 = sub_2455E34FC(v119);
      if (v267)
      {
        v268 = v266;
        v269 = *v105;
        v270 = swift_isUniquelyReferenced_nonNull_native();
        v109 = *v105;
        *(v0 + 832) = *v105;
        if ((v270 & 1) == 0)
        {
          v271 = (v0 + 832);
          goto LABEL_212;
        }

        goto LABEL_209;
      }
    }

    goto LABEL_200;
  }

  v125 = *(v113 + 16);
  v126 = sub_2455E9910();
  if (v126)
  {
    v127 = v126;
    v128 = sub_2455E9940();
    if (__OFSUB__(v125, v128))
    {
      goto LABEL_229;
    }

    v129 = (v125 - v128 + v127);
  }

  else
  {
    v129 = 0;
  }

  v149 = *(v0 + 984);
  v150 = *(v0 + 960);
  sub_2455E9930();
  v151 = *(v150 + 20);
  v119 = *(v149 + 96);
  v152 = sub_2455D04E0();
  if (v129)
  {
    v160 = *v107;
    v161 = v107[1];
    v162 = v161 >> 62;
    v105 = (v0 + 776);
    if ((v161 >> 62) > 1)
    {
      if (v162 == 2)
      {
        v166 = v160 + 16;
        v164 = *(v160 + 16);
        v165 = *(v166 + 8);
        v163 = v165 - v164;
        if (__OFSUB__(v165, v164))
        {
          goto LABEL_248;
        }
      }

      else
      {
        v163 = 0;
      }
    }

    else if (v162)
    {
      v50 = __OFSUB__(HIDWORD(v160), v160);
      v199 = HIDWORD(v160) - v160;
      if (v50)
      {
        goto LABEL_247;
      }

      v163 = v199;
    }

    else
    {
      v163 = BYTE6(v161);
    }

    v200 = IOHIDValueCreateWithBytes(0, v119, v152, v129, v163);
    v201 = v109 & 0xC000000000000001;
    if (v200)
    {
      v180 = v200;
      if (v201)
      {
        if (v109 < 0)
        {
          v202 = v109;
        }

        else
        {
          v202 = v109 & 0xFFFFFFFFFFFFFF8;
        }

        v203 = sub_2455E9F20();
        if (__OFADD__(v203, 1))
        {
          goto LABEL_237;
        }

        *v332 = sub_2455E424C(v202, v203 + 1);
      }

      else
      {
        v244 = *v332;
      }

      v245 = swift_isUniquelyReferenced_nonNull_native();
      v246 = *v332;
      *v324 = *v332;
      v223 = sub_2455E34FC(v119);
      v248 = *(v246 + 16);
      v249 = (v247 & 1) == 0;
      v50 = __OFADD__(v248, v249);
      v250 = v248 + v249;
      if (v50)
      {
        goto LABEL_233;
      }

      v251 = v247;
      if (*(v246 + 24) >= v250)
      {
        if ((v245 & 1) == 0)
        {
          v287 = v223;
          sub_2455E5E38();
          v223 = v287;
        }
      }

      else
      {
        sub_2455E4F3C(v250, v245);
        v252 = *v324;
        v223 = sub_2455E34FC(v119);
        if ((v251 & 1) != (v253 & 1))
        {
          goto LABEL_222;
        }
      }

      v109 = *v324;
      if (v251)
      {
        goto LABEL_40;
      }

      *(v109 + 8 * (v223 >> 6) + 64) |= 1 << v223;
      *(*(v109 + 48) + 8 * v223) = v119;
      *(*(v109 + 56) + 8 * v223) = v180;
      v254 = *(v109 + 16);
      v50 = __OFADD__(v254, 1);
      v232 = v254 + 1;
      if (v50)
      {
        goto LABEL_241;
      }

LABEL_195:
      *(v109 + 16) = v232;
      goto LABEL_41;
    }

    if (v201)
    {
      if (v109 < 0)
      {
        v204 = v109;
      }

      else
      {
        v204 = v109 & 0xFFFFFFFFFFFFFF8;
      }

      v119 = v119;
      v205 = sub_2455E9F50();

      if (!v205)
      {
        goto LABEL_210;
      }

      swift_unknownObjectRelease();

      v206 = sub_2455E9F20();
      v110 = sub_2455E424C(v204, v206);

      v196 = sub_2455E34FC(v119);
      v208 = v207;

      if ((v208 & 1) == 0)
      {
        goto LABEL_253;
      }

      goto LABEL_152;
    }

    v276 = sub_2455E34FC(v119);
    if ((v277 & 1) == 0)
    {
      goto LABEL_210;
    }

    v268 = v276;
    v278 = *v332;
    v279 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *v332;
    *(v0 + 784) = *v332;
    if (v279)
    {
      goto LABEL_209;
    }

    v271 = (v0 + 784);
    goto LABEL_212;
  }

  __break(1u);
LABEL_260:
  __break(1u);
  return MEMORY[0x2822008A0](v152, v153, v154, v155, v156, v157, v158, v159);
}

uint64_t sub_2455DD5A0()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v4 = *v1;
  *(*v1 + 1160) = v0;

  v5 = v2[143];
  v6 = v2[142];
  v7 = v2[110];

  if (v0)
  {
    v8 = sub_2455E136C;
  }

  else
  {
    v8 = sub_2455DD738;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2455DD738()
{
  v436 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 736);
  v413 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) == 0)
  {
    v3 = *(v2 + 16);
    v434 = v1;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:

    v408 = *(v1 + 1096);
    v4 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v3 = sub_2455E9F20();
  v434 = v1;
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v1 + 704) = MEMORY[0x277D84F90];
  sub_2455E5F98(0, v3 & ~(v3 >> 63), 0);
  v394 = (v1 + 704);
  v4 = *(v1 + 704);
  if (v413)
  {
    v5 = sub_2455E9EC0();
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v5 = sub_2455E9DD0();
    v6 = *(v2 + 36);
  }

  *(v1 + 664) = v5;
  *(v1 + 672) = v6;
  *(v1 + 680) = v413 != 0;
  if (v3 < 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    v72 = v5;
    sub_2455E5940();
    v5 = v72;
    v68 = *v0;
    if (v3)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  v8 = 0;
  v9 = (v1 + 152);
  v10 = (v1 + 304);
  v399 = (v1 + 768);
  v401 = (v1 + 760);
  v405 = (v1 + 632);
  v408 = *(v1 + 1096);
  v410 = v3;
  v395 = v2 + 72;
  v397 = v2 + 64;
  v416 = v2;
  while (1)
  {
    v11 = __OFADD__(v8, 1);
    v12 = v8 + 1;
    if (v11)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v419 = v12;
    v13 = *(v1 + 880);
    v14 = *(v1 + 680);
    v428 = *(v1 + 672);
    v431 = *(v1 + 664);
    sub_2455E6190((v1 + 720), v431, v428, *(v1 + 680), v2);
    v15 = *(v1 + 720);
    v17 = v16;

    sub_2455A0954(v17, v13, v9);
    v18 = v9[5];
    v10[4] = v9[4];
    v10[5] = v18;
    v10[6] = v9[6];
    *(v10 + 105) = *(v9 + 105);
    v19 = v9[1];
    *v10 = *v9;
    v10[1] = v19;
    v20 = v9[3];
    v10[2] = v9[2];
    v10[3] = v20;
    if (sub_2455A5BFC(v10) == 1)
    {
      goto LABEL_323;
    }

    v21 = v10[5];
    *(v1 + 80) = v10[4];
    *(v1 + 96) = v21;
    *(v1 + 112) = v10[6];
    *(v1 + 121) = *(v10 + 105);
    v22 = v10[1];
    *(v1 + 16) = *v10;
    *(v1 + 32) = v22;
    v23 = v10[3];
    *(v1 + 48) = v10[2];
    *(v1 + 64) = v23;
    BytePtr = IOHIDValueGetBytePtr(v15);
    Length = IOHIDValueGetLength(v15);
    v422 = v14;
    if (Length)
    {
      v26 = Length;
      if (Length <= 0xE)
      {
        v32 = v4;
        *(v1 + 143) = 0;
        *(v1 + 137) = 0;
        *(v1 + 151) = Length;
        memcpy((v1 + 137), BytePtr, Length);
        v33 = *(v1 + 137);
        v34 = v408 & 0xF00000000000000 | *(v1 + 145) | ((*(v1 + 149) | (*(v1 + 151) << 16)) << 32);
        v408 = v34;
      }

      else
      {
        v27 = sub_2455E9960();
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        swift_allocObject();
        v30 = sub_2455E9900();
        v31 = v30;
        v32 = v4;
        if (v26 >= 0x7FFFFFFF)
        {
          sub_2455E99E0();
          v33 = swift_allocObject();
          *(v33 + 16) = 0;
          *(v33 + 24) = v26;
          v34 = v31 | 0x8000000000000000;
        }

        else
        {
          v33 = v26 << 32;
          v34 = v30 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v32 = v4;
      v33 = 0;
      v34 = 0xC000000000000000;
    }

    v35 = *(v434 + 976);
    v36 = *(v434 + 888);
    TimeStamp = IOHIDValueGetTimeStamp(v15);
    sub_2455D05BC(TimeStamp, v36);
    v1 = v434;
    HIDElement.Value.init(element:fromBytes:timestamp:)((v434 + 16), v33, v34, v36, v35);

    v4 = v32;
    *(v434 + 704) = v32;
    v39 = *(v32 + 16);
    v38 = *(v32 + 24);
    v3 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      sub_2455E5F98(v38 > 1, v39 + 1, 1);
      v4 = *v394;
    }

    v40 = *(v434 + 976);
    v41 = *(v434 + 968);
    *(v4 + 16) = v3;
    v5 = sub_2455E6F48(v40, v4 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v39, type metadata accessor for HIDElement.Value);
    v2 = v416;
    if (v413)
    {
      if (!v422)
      {
        goto LABEL_326;
      }

      if (sub_2455E9EF0())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B8, &qword_2455F16A0);
      v0 = v405;
      v47 = sub_2455E9AF0();
      sub_2455E9F70();
      v5 = v47(v405, 0);
      v8 = v419;
    }

    else
    {
      v0 = v431;
      if (v422)
      {
        v5 = sub_2455E9F00();
        if (v5 != *(v416 + 36))
        {
          goto LABEL_59;
        }

        *v399 = sub_2455E9F10();
        type metadata accessor for IOHIDElement();
        swift_dynamicCast();
        v3 = *v401;
        sub_2455E34FC(*v401);
        v43 = v42;

        if ((v43 & 1) == 0)
        {
          goto LABEL_62;
        }

        v0 = sub_2455E9EE0();
        v44 = sub_2455E9F30();
        v46 = v45;
        swift_unknownObjectRelease();
        v2 = v416;
        v5 = sub_2455E7128(v431, v428, 1);
      }

      else
      {
        if ((v431 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v44 = 1 << *(v416 + 32);
        if (v431 >= v44)
        {
          goto LABEL_60;
        }

        v48 = v431 >> 6;
        v49 = *(v397 + 8 * (v431 >> 6));
        if (((v49 >> v431) & 1) == 0)
        {
          goto LABEL_61;
        }

        if (*(v416 + 36) != v428)
        {
          goto LABEL_63;
        }

        v50 = v49 & (-2 << (v431 & 0x3F));
        if (v50)
        {
          v44 = __clz(__rbit64(v50)) | v431 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v0 = (v48 << 6);
          v51 = (v395 + 8 * v48);
          v52 = v48 + 1;
          while (v52 < (v44 + 63) >> 6)
          {
            v54 = *v51++;
            v53 = v54;
            v0 += 8;
            ++v52;
            if (v54)
            {
              v5 = sub_2455E7128(v431, v428, 0);
              v44 = v0 + __clz(__rbit64(v53));
              goto LABEL_41;
            }
          }

          v5 = sub_2455E7128(v431, v428, 0);
        }

LABEL_41:
        v46 = v428;
      }

      v8 = v419;
      *(v434 + 664) = v44;
      *(v434 + 672) = v46;
      *(v434 + 680) = v422;
    }

    LOBYTE(v3) = v410;
    if (v8 == v410)
    {
      break;
    }

    if (v8 >= v410)
    {
      goto LABEL_58;
    }
  }

  sub_2455E7128(*(v434 + 664), *(v434 + 672), *(v434 + 680));

LABEL_47:
  v3 = *(v1 + 944);
  sub_2455E661C(*(v1 + 952), v3, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v55 = *(v1 + 696);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v1 + 696);
  *(v1 + 752) = v57;
  v5 = sub_2455E347C(v3, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
  v59 = *(v57 + 16);
  v60 = (v58 & 1) == 0;
  v11 = __OFADD__(v59, v60);
  v61 = v59 + v60;
  if (v11)
  {
    goto LABEL_64;
  }

  LOBYTE(v3) = v58;
  v0 = (v1 + 752);
  if (*(v57 + 24) >= v61)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v62 = *(v1 + 944);
    sub_2455E44CC(v61, isUniquelyReferenced_nonNull_native);
    v63 = *(v1 + 752);
    v5 = sub_2455E347C(v62, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
    if ((v3 & 1) != (v64 & 1))
    {
      v65 = *(v1 + 912);
      goto LABEL_51;
    }
  }

  v68 = *v0;
  if (v3)
  {
LABEL_56:
    v69 = v68[7] + 16 * v5;
    v70 = *v69;
    v71 = *(v69 + 8);
    *v69 = v4;
    *(v69 + 8) = 0;
    sub_2455E7110(v70, v71);
    goto LABEL_69;
  }

LABEL_67:
  v73 = *(v1 + 944);
  v74 = *(v1 + 920);
  v68[(v5 >> 6) + 8] |= 1 << v5;
  v75 = v5;
  sub_2455E661C(v73, v68[6] + *(v74 + 72) * v5, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v76 = v68[7] + 16 * v75;
  *v76 = v4;
  *(v76 + 8) = 0;
  v77 = v68[2];
  v11 = __OFADD__(v77, 1);
  v78 = v77 + 1;
  if (v11)
  {
    goto LABEL_295;
  }

  v68[2] = v78;
LABEL_69:
  v79 = *(v1 + 952);
  sub_2455E6788(*(v1 + 944), type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  *(v1 + 696) = v68;
  __swift_destroy_boxed_opaque_existential_1((v1 + 432));
  sub_2455E6788(v79, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v80 = *(v1 + 1104) + 1;
  v81 = v1;
  if (v80 == *(v1 + 1088))
  {
LABEL_70:
    v82 = *(v81 + 1080);
    v83 = *(v81 + 1072);
    v84 = *(v81 + 1064);
    v85 = *(v81 + 1056);
    v86 = *(v81 + 1040);
    v87 = *(v81 + 1032);
    v88 = *(v81 + 1024);
    v403 = *(v81 + 1000);
    v406 = *(v81 + 992);
    v409 = *(v81 + 984);
    v411 = *(v81 + 976);
    v414 = *(v81 + 952);
    v417 = *(v81 + 944);
    v420 = *(v81 + 936);
    v423 = *(v81 + 928);
    v429 = *(v81 + 904);
    v432 = *(v81 + 896);
    v435 = *(v81 + 888);
    v89 = *(v81 + 848);
    (*(**(v81 + 880) + 824))();
    v90 = *(v81 + 696);
    *v89 = *(v81 + 688);
    v89[1] = v90;

    MEMORY[0x245D6C8C0](v85, -1, -1);
    MEMORY[0x245D6C8C0](v84, -1, -1);
    MEMORY[0x245D6C8C0](v83, -1, -1);

    v91 = *(v81 + 688);
    v92 = *(v81 + 696);

    v93 = *(v81 + 8);
    v94 = *MEMORY[0x277D85DE8];

    return v93();
  }

  v433 = (v1 + 776);
  v404 = (v1 + 688);
  v407 = v1 + 287;
  v95 = (v1 + 744);
  v396 = (v1 + 800);
  v398 = (v1 + 784);
  v412 = (v1 + 808);
  v415 = (v1 + 792);
  v400 = (v1 + 832);
  v402 = (v1 + 816);
  v418 = (v1 + 840);
  v421 = (v1 + 824);
  while (2)
  {
    *(v81 + 1104) = v80;
    *(v81 + 1096) = v408;
    v96 = *(v81 + 1080);
    sub_2455ABC88(*(v81 + 856) + 40 * v80 + 32, v81 + 432);
    if (v96)
    {
      v108 = *(v81 + 1080);
      swift_willThrow();
      v109 = v108;
      v110 = *(v81 + 1080);
      v111 = *(v81 + 1016);
      v112 = *(v81 + 1008);
      v113 = *(v81 + 992);
      sub_2455ABC88(v81 + 432, v81 + 552);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
      v114 = swift_dynamicCast();
      v115 = *(v111 + 56);
      if (v114)
      {
        v116 = *(v81 + 1032);
        v117 = *(v81 + 1024);
        v118 = *(v81 + 992);
        v115(v118, 0, 1, *(v81 + 1008));
        sub_2455E6F48(v118, v116, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        sub_2455E661C(v116, v117, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v119 = v110;
        v120 = *(v81 + 688);
        v121 = swift_isUniquelyReferenced_nonNull_native();
        v122 = *(v81 + 688);
        *(v81 + 712) = v122;
        v123 = sub_2455E347C(v117, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
        v125 = *(v122 + 16);
        v126 = (v124 & 1) == 0;
        v11 = __OFADD__(v125, v126);
        v127 = v125 + v126;
        if (v11)
        {
          goto LABEL_322;
        }

        v128 = v124;
        if (*(v122 + 24) >= v127)
        {
          if ((v121 & 1) == 0)
          {
            v175 = v123;
            sub_2455E5BBC();
            v123 = v175;
          }
        }

        else
        {
          v129 = *(v434 + 1024);
          sub_2455E49CC(v127, v121);
          v130 = *(v434 + 712);
          v123 = sub_2455E347C(v129, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
          if ((v128 & 1) != (v131 & 1))
          {
            v392 = *(v434 + 1008);
            goto LABEL_51;
          }
        }

        v156 = *(v434 + 712);
        v425 = *(v434 + 1032);
        v157 = *(v434 + 1024);
        if (v128)
        {
          v158 = v156[7] + 16 * v123;
          v159 = *v158;
          v160 = *(v158 + 8);
          *v158 = v110;
          *(v158 + 8) = 1;
          sub_2455E711C(v159, v160);

          sub_2455E6788(v157, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          sub_2455E6788(v425, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          __swift_destroy_boxed_opaque_existential_1((v434 + 432));
        }

        else
        {
          v161 = *(v434 + 1016);
          v156[(v123 >> 6) + 8] |= 1 << v123;
          v162 = v123;
          sub_2455E661C(v157, v156[6] + *(v161 + 72) * v123, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          v163 = v156[7] + 16 * v162;
          *v163 = v110;
          *(v163 + 8) = 1;

          sub_2455E6788(v157, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          sub_2455E6788(v425, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
          __swift_destroy_boxed_opaque_existential_1((v434 + 432));
          v164 = v156[2];
          v11 = __OFADD__(v164, 1);
          v165 = v164 + 1;
          if (v11)
          {
            goto LABEL_325;
          }

          v156[2] = v165;
        }

        *v404 = v156;
        v81 = v434;
      }

      else
      {
        v132 = *(v81 + 992);
        v424 = *(v81 + 912);
        v133 = *(v81 + 896);
        v115(v132, 1, 1, *(v81 + 1008));
        sub_2455A7680(v132, &qword_27EE15198, &qword_2455F1678);
        sub_2455ABC88(v81 + 432, v81 + 592);
        if (swift_dynamicCast())
        {
          v134 = *(v81 + 936);
          v135 = *(v81 + 928);
          v136 = *(v81 + 896);
          (*(*(v81 + 920) + 56))(v136, 0, 1, *(v81 + 912));
          sub_2455E6F48(v136, v134, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          sub_2455E661C(v134, v135, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
          v137 = v110;
          v138 = *(v81 + 696);
          v139 = swift_isUniquelyReferenced_nonNull_native();
          v140 = *(v81 + 696);
          *(v81 + 728) = v140;
          v142 = sub_2455E347C(v135, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
          v143 = *(v140 + 16);
          v144 = (v141 & 1) == 0;
          v145 = v143 + v144;
          if (__OFADD__(v143, v144))
          {
            goto LABEL_324;
          }

          v146 = v141;
          if (*(v140 + 24) >= v145)
          {
            if ((v139 & 1) == 0)
            {
              sub_2455E5940();
            }
          }

          else
          {
            v147 = v141;
            v148 = *(v434 + 928);
            sub_2455E44CC(v145, v139);
            v149 = *(v434 + 728);
            v150 = v148;
            v146 = v147;
            v151 = sub_2455E347C(v150, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
            if ((v147 & 1) != (v152 & 1))
            {
              goto LABEL_293;
            }

            v142 = v151;
          }

          v81 = v434;
          v166 = *(v434 + 728);
          v426 = *(v434 + 936);
          v167 = *(v434 + 928);
          if (v146)
          {
            v168 = v166[7] + 16 * v142;
            v169 = *v168;
            v170 = *(v168 + 8);
            *v168 = v110;
            *(v168 + 8) = 1;
            sub_2455E7110(v169, v170);

            sub_2455E6788(v167, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            sub_2455E6788(v426, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            __swift_destroy_boxed_opaque_existential_1((v434 + 432));
          }

          else
          {
            v171 = *(v434 + 920);
            v166[(v142 >> 6) + 8] |= 1 << v142;
            sub_2455E661C(v167, v166[6] + *(v171 + 72) * v142, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            v172 = v166[7] + 16 * v142;
            *v172 = v110;
            *(v172 + 8) = 1;

            sub_2455E6788(v167, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            sub_2455E6788(v426, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
            __swift_destroy_boxed_opaque_existential_1((v434 + 432));
            v173 = v166[2];
            v11 = __OFADD__(v173, 1);
            v174 = v173 + 1;
            if (v11)
            {
              goto LABEL_327;
            }

            v166[2] = v174;
          }

          *(v434 + 696) = v166;
        }

        else
        {
          v153 = *(v81 + 920);
          v154 = *(v81 + 912);
          v155 = *(v81 + 896);

          __swift_destroy_boxed_opaque_existential_1((v81 + 432));
          (*(v153 + 56))(v155, 1, 1, v154);
          sub_2455A7680(v155, &qword_27EE15190, &qword_2455F1670);
        }
      }

      v408 = *(v81 + 1096);
LABEL_78:
      v80 = *(v81 + 1104) + 1;
      if (v80 == *(v81 + 1088))
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  v97 = *(v81 + 1016);
  v98 = *(v81 + 1008);
  v99 = *(v81 + 1000);
  sub_2455ABC88(v81 + 432, v81 + 472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v100 = swift_dynamicCast();
  v101 = *(v97 + 56);
  if (!v100)
  {
    v102 = *(v81 + 1000);
    v103 = *(v81 + 912);
    v104 = *(v81 + 904);
    v101(v102, 1, 1, *(v81 + 1008));
    sub_2455A7680(v102, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v81 + 432, v81 + 512);
    if (swift_dynamicCast())
    {
      v366 = *(v81 + 952);
      v367 = *(v81 + 912);
      v368 = *(v81 + 904);
      (*(*(v81 + 920) + 56))(v368, 0, 1, v367);
      sub_2455E6F48(v368, v366, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v370 = *(v366 + *(v367 + 20));
      v371 = *(v370 + 16);
      v372 = MEMORY[0x277D84F90];
      if (v371)
      {
        *v95 = MEMORY[0x277D84F90];
        sub_2455E9E40();
        v373 = (v370 + 128);
        do
        {
          v374 = *v373;
          v373 += 16;
          v375 = v374;
          sub_2455E9E20();
          v376 = *(*v95 + 16);
          sub_2455E9E50();
          sub_2455E9E60();
          sub_2455E9E30();
          --v371;
        }

        while (v371);
        v372 = *v95;
      }

      *(v434 + 1136) = v372;
      v377 = *(v434 + 1072);
      v378 = *(v434 + 1064);
      v379 = *(v434 + 1048);
      v380 = *(v434 + 880);
      v381 = sub_2455E6848(&qword_27EE15178, v369, type metadata accessor for HIDDeviceClient);
      v382 = swift_task_alloc();
      *(v434 + 1144) = v382;
      v382[2] = v378;
      v382[3] = v380;
      v382[4] = v372;
      v382[5] = v377;
      v382[6] = v379;
      v383 = *(MEMORY[0x277D85A40] + 4);
      v384 = swift_task_alloc();
      *(v434 + 1152) = v384;
      v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
      *v384 = v434;
      v384[1] = sub_2455DD5A0;
      v386 = *MEMORY[0x277D85DE8];
      v232 = v385;
      v230 = sub_2455E6FC8;
      v225 = (v434 + 736);
      v229 = 0x80000002455F3230;
      goto LABEL_288;
    }

    v105 = *(v81 + 920);
    v106 = *(v81 + 912);
    v107 = *(v81 + 904);
    __swift_destroy_boxed_opaque_existential_1((v81 + 432));
    (*(v105 + 56))(v107, 1, 1, v106);
    sub_2455A7680(v107, &qword_27EE15190, &qword_2455F1670);
    goto LABEL_78;
  }

  v176 = *(v81 + 1040);
  v177 = *(v81 + 1008);
  v178 = *(v81 + 1000);
  v101(v178, 0, 1, v177);
  sub_2455E6F48(v178, v176, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  *(v81 + 776) = MEMORY[0x277D84F98];
  v180 = *(v176 + *(v177 + 20));
  v430 = *(v180 + 16);
  if (!v430)
  {
LABEL_287:
    v387 = *(v434 + 1056);
    v388 = *(v434 + 1048);
    v389 = *(v434 + 1040);
    v380 = *(v434 + 880);
    v381 = sub_2455E6848(&qword_27EE15178, v179, type metadata accessor for HIDDeviceClient);
    v382 = swift_task_alloc();
    *(v434 + 1112) = v382;
    v382[2] = v387;
    v382[3] = v380;
    v382[4] = v433;
    v382[5] = v388;
    v382[6] = v404;
    v382[7] = v389;
    v390 = *(MEMORY[0x277D85A40] + 4);
    v225 = swift_task_alloc();
    *(v434 + 1120) = v225;
    *v225 = v434;
    v225[1] = sub_2455DBA40;
    v391 = *MEMORY[0x277D85DE8];
    v230 = sub_2455E7134;
    v229 = 0x80000002455F3230;
    v232 = MEMORY[0x277D84F78] + 8;
LABEL_288:
    v226 = v380;
    v227 = v381;
    v228 = 0xD00000000000001ALL;
    v231 = v382;

    return MEMORY[0x2822008A0](v225, v226, v227, v228, v229, v230, v231, v232);
  }

  v181 = 0;
  v182 = (*(v434 + 984) + *(*(v434 + 960) + 24));
  v183 = *(*(v434 + 968) + 80);
  v427 = v180 + ((v183 + 32) & ~v183);
  v184 = MEMORY[0x277D84F98];
  v185 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v181 >= *(v180 + 16))
    {
      __break(1u);
LABEL_293:
      v393 = *(v434 + 912);
LABEL_51:
      v66 = *MEMORY[0x277D85DE8];

      return sub_2455EA020();
    }

    sub_2455E661C(v427 + *(*(v434 + 968) + 72) * v181, *(v434 + 984), type metadata accessor for HIDElement.Value);
    v186 = *v182;
    v187 = v182[1];
    v188 = v187 >> 62;
    if ((v187 >> 62) <= 1)
    {
      if (!v188)
      {
        v189 = *(v434 + 984);
        v190 = *(v434 + 960);
        *(v434 + 273) = v186;
        *(v434 + 281) = v187;
        *(v434 + 283) = BYTE2(v187);
        *(v434 + 284) = BYTE3(v187);
        *(v434 + 285) = BYTE4(v187);
        *(v434 + 286) = BYTE5(v187);
        v191 = *(v190 + 20);
        v192 = *(v189 + 96);
        v193 = sub_2455D04E0();
        v194 = *v182;
        v195 = v182[1];
        v196 = v195 >> 62;
        if ((v195 >> 62) > 1)
        {
          if (v196 == 2)
          {
            v218 = v194 + 16;
            v216 = *(v194 + 16);
            v217 = *(v218 + 8);
            v197 = v217 - v216;
            if (__OFSUB__(v217, v216))
            {
              goto LABEL_313;
            }
          }

          else
          {
            v197 = 0;
          }
        }

        else if (v196)
        {
          v11 = __OFSUB__(HIDWORD(v194), v194);
          v250 = HIDWORD(v194) - v194;
          if (v11)
          {
            goto LABEL_310;
          }

          v197 = v250;
        }

        else
        {
          v197 = BYTE6(v195);
        }

        v264 = IOHIDValueCreateWithBytes(0, v192, v193, (v434 + 273), v197);
        if (v264)
        {
          v253 = v264;
          if ((v185 & 0xC000000000000001) != 0)
          {
            if (v185 < 0)
            {
              v265 = v185;
            }

            else
            {
              v265 = v185 & 0xFFFFFFFFFFFFFF8;
            }

            v266 = sub_2455E9F20();
            if (__OFADD__(v266, 1))
            {
              goto LABEL_302;
            }

            v256 = v433;
            *v433 = sub_2455E424C(v265, v266 + 1);
          }

          else
          {
            v256 = v433;
            v307 = *v433;
          }

          v308 = swift_isUniquelyReferenced_nonNull_native();
          v309 = *v256;
          *v421 = *v256;
          v297 = sub_2455E34FC(v192);
          v311 = *(v309 + 16);
          v312 = (v310 & 1) == 0;
          v11 = __OFADD__(v311, v312);
          v313 = v311 + v312;
          if (v11)
          {
            goto LABEL_299;
          }

          v314 = v310;
          if (*(v309 + 24) >= v313)
          {
            if ((v308 & 1) == 0)
            {
              v363 = v297;
              sub_2455E5E38();
              v297 = v363;
            }
          }

          else
          {
            sub_2455E4F3C(v313, v308);
            v315 = *v421;
            v297 = sub_2455E34FC(v192);
            if ((v314 & 1) != (v316 & 1))
            {
              goto LABEL_291;
            }
          }

          v184 = *v421;
          if ((v314 & 1) == 0)
          {
            *(v184 + 8 * (v297 >> 6) + 64) |= 1 << v297;
            *(*(v184 + 48) + 8 * v297) = v192;
            *(*(v184 + 56) + 8 * v297) = v253;
            v317 = *(v184 + 16);
            v11 = __OFADD__(v317, 1);
            v306 = v317 + 1;
            if (v11)
            {
              goto LABEL_307;
            }

            goto LABEL_263;
          }

LABEL_261:
          v339 = *(v184 + 56);
          v340 = *(v339 + 8 * v297);
          *(v339 + 8 * v297) = v253;

LABEL_264:
          *v256 = v184;
LABEL_265:
          v185 = v184;
LABEL_109:
          ++v181;
          sub_2455E6788(*(v434 + 984), type metadata accessor for HIDElement.Value);
          if (v430 == v181)
          {
            goto LABEL_287;
          }

          continue;
        }

        if ((v184 & 0xC000000000000001) != 0)
        {
          if (v184 < 0)
          {
            v267 = v184;
          }

          else
          {
            v267 = v184 & 0xFFFFFFFFFFFFFF8;
          }

          v192 = v192;
          v268 = sub_2455E9F50();

          if (v268)
          {
            swift_unknownObjectRelease();

            v269 = sub_2455E9F20();
            v185 = sub_2455E424C(v267, v269);

            v270 = sub_2455E34FC(v192);
            v272 = v271;

            if ((v272 & 1) == 0)
            {
              goto LABEL_319;
            }

            goto LABEL_219;
          }

LABEL_108:

          goto LABEL_109;
        }

        v349 = sub_2455E34FC(v192);
        if ((v350 & 1) == 0)
        {
          goto LABEL_108;
        }

        v344 = v349;
        v345 = v433;
        v351 = *v433;
        v352 = swift_isUniquelyReferenced_nonNull_native();
        v184 = *v433;
        *v402 = *v433;
        if ((v352 & 1) == 0)
        {
          v348 = v402;
          goto LABEL_281;
        }

LABEL_279:

        v361 = *(*(v184 + 56) + 8 * v344);
        sub_2455E5218(v344, v184);

        *v345 = v184;
        goto LABEL_265;
      }

      v203 = v186;
      if (v186 <= v186 >> 32)
      {
        v204 = sub_2455E9910();
        if (v204)
        {
          v205 = v204;
          v206 = sub_2455E9940();
          if (__OFSUB__(v203, v206))
          {
            goto LABEL_297;
          }

          v207 = (v203 - v206 + v205);
        }

        else
        {
          v207 = 0;
        }

        v240 = *(v434 + 984);
        v241 = *(v434 + 960);
        sub_2455E9930();
        v242 = *(v241 + 20);
        v192 = *(v240 + 96);
        v225 = sub_2455D04E0();
        if (!v207)
        {
          goto LABEL_329;
        }

        v243 = *v182;
        v244 = v182[1];
        v245 = v244 >> 62;
        if ((v244 >> 62) > 1)
        {
          if (v245 == 2)
          {
            v249 = v243 + 16;
            v247 = *(v243 + 16);
            v248 = *(v249 + 8);
            v246 = v248 - v247;
            if (__OFSUB__(v248, v247))
            {
              goto LABEL_317;
            }
          }

          else
          {
            v246 = 0;
          }
        }

        else if (v245)
        {
          v11 = __OFSUB__(HIDWORD(v243), v243);
          v283 = HIDWORD(v243) - v243;
          if (v11)
          {
            goto LABEL_316;
          }

          v246 = v283;
        }

        else
        {
          v246 = BYTE6(v244);
        }

        v284 = IOHIDValueCreateWithBytes(0, v192, v225, v207, v246);
        v285 = v184 & 0xC000000000000001;
        if (v284)
        {
          v253 = v284;
          if (v285)
          {
            if (v184 < 0)
            {
              v286 = v184;
            }

            else
            {
              v286 = v184 & 0xFFFFFFFFFFFFFF8;
            }

            v287 = sub_2455E9F20();
            v256 = v433;
            if (__OFADD__(v287, 1))
            {
              goto LABEL_305;
            }

            *v433 = sub_2455E424C(v286, v287 + 1);
          }

          else
          {
            v256 = v433;
            v329 = *v433;
          }

          v330 = swift_isUniquelyReferenced_nonNull_native();
          v331 = *v256;
          *v412 = *v256;
          v297 = sub_2455E34FC(v192);
          v333 = *(v331 + 16);
          v334 = (v332 & 1) == 0;
          v11 = __OFADD__(v333, v334);
          v335 = v333 + v334;
          if (v11)
          {
            goto LABEL_301;
          }

          v336 = v332;
          if (*(v331 + 24) >= v335)
          {
            if ((v330 & 1) == 0)
            {
              v365 = v297;
              sub_2455E5E38();
              v297 = v365;
            }
          }

          else
          {
            sub_2455E4F3C(v335, v330);
            v337 = *v412;
            v297 = sub_2455E34FC(v192);
            if ((v336 & 1) != (v338 & 1))
            {
LABEL_291:
              type metadata accessor for IOHIDElement();
              goto LABEL_51;
            }
          }

          v184 = *v412;
          if (v336)
          {
            goto LABEL_261;
          }

          *(v184 + 8 * (v297 >> 6) + 64) |= 1 << v297;
          *(*(v184 + 48) + 8 * v297) = v192;
          *(*(v184 + 56) + 8 * v297) = v253;
          v341 = *(v184 + 16);
          v11 = __OFADD__(v341, 1);
          v306 = v341 + 1;
          if (v11)
          {
            goto LABEL_309;
          }

          goto LABEL_263;
        }

        if (v285)
        {
          if (v184 < 0)
          {
            v288 = v184;
          }

          else
          {
            v288 = v184 & 0xFFFFFFFFFFFFFF8;
          }

          v192 = v192;
          v289 = sub_2455E9F50();

          if (!v289)
          {
            goto LABEL_108;
          }

          swift_unknownObjectRelease();

          v290 = sub_2455E9F20();
          v185 = sub_2455E424C(v288, v290);

          v270 = sub_2455E34FC(v192);
          v292 = v291;

          if ((v292 & 1) == 0)
          {
            goto LABEL_321;
          }

LABEL_219:

          v293 = *(*(v185 + 56) + 8 * v270);
          sub_2455E5218(v270, v185);

          *v433 = v185;
LABEL_270:
          v184 = v185;
          goto LABEL_109;
        }

        v357 = sub_2455E34FC(v192);
        if ((v358 & 1) == 0)
        {
          goto LABEL_108;
        }

        v344 = v357;
        v345 = v433;
        v359 = *v433;
        v360 = swift_isUniquelyReferenced_nonNull_native();
        v184 = *v433;
        *v396 = *v433;
        if (v360)
        {
          goto LABEL_279;
        }

        v348 = v396;
LABEL_281:
        sub_2455E5E38();
        v184 = *v348;
        goto LABEL_279;
      }

      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
    }

    break;
  }

  if (v188 != 2)
  {
    v208 = *(v434 + 984);
    v209 = *(v434 + 960);
    *v407 = 0;
    *(v407 + 6) = 0;
    v210 = *(v209 + 20);
    v192 = *(v208 + 96);
    v211 = sub_2455D04E0();
    v212 = *v182;
    v213 = v182[1];
    v214 = v213 >> 62;
    if ((v213 >> 62) > 1)
    {
      v215 = 0;
      if (v214 == 2)
      {
        v221 = v212 + 16;
        v219 = *(v212 + 16);
        v220 = *(v221 + 8);
        v215 = v220 - v219;
        if (__OFSUB__(v220, v219))
        {
          goto LABEL_312;
        }
      }
    }

    else if (v214)
    {
      v11 = __OFSUB__(HIDWORD(v212), v212);
      v251 = HIDWORD(v212) - v212;
      if (v11)
      {
        goto LABEL_311;
      }

      v215 = v251;
    }

    else
    {
      v215 = BYTE6(v213);
    }

    v252 = IOHIDValueCreateWithBytes(0, v192, v211, v407, v215);
    if (v252)
    {
      v253 = v252;
      if ((v185 & 0xC000000000000001) != 0)
      {
        if (v185 < 0)
        {
          v254 = v185;
        }

        else
        {
          v254 = v185 & 0xFFFFFFFFFFFFFF8;
        }

        v255 = sub_2455E9F20();
        if (__OFADD__(v255, 1))
        {
          goto LABEL_303;
        }

        v256 = v433;
        *v433 = sub_2455E424C(v254, v255 + 1);
      }

      else
      {
        v256 = v433;
        v294 = *v433;
      }

      v295 = swift_isUniquelyReferenced_nonNull_native();
      v296 = *v256;
      *v418 = *v256;
      v297 = sub_2455E34FC(v192);
      v299 = *(v296 + 16);
      v300 = (v298 & 1) == 0;
      v11 = __OFADD__(v299, v300);
      v301 = v299 + v300;
      if (v11)
      {
        goto LABEL_298;
      }

      v302 = v298;
      if (*(v296 + 24) >= v301)
      {
        if ((v295 & 1) == 0)
        {
          v362 = v297;
          sub_2455E5E38();
          v297 = v362;
        }
      }

      else
      {
        sub_2455E4F3C(v301, v295);
        v303 = *v418;
        v297 = sub_2455E34FC(v192);
        if ((v302 & 1) != (v304 & 1))
        {
          goto LABEL_291;
        }
      }

      v184 = *v418;
      if ((v302 & 1) == 0)
      {
        *(v184 + 8 * (v297 >> 6) + 64) |= 1 << v297;
        *(*(v184 + 48) + 8 * v297) = v192;
        *(*(v184 + 56) + 8 * v297) = v253;
        v305 = *(v184 + 16);
        v11 = __OFADD__(v305, 1);
        v306 = v305 + 1;
        if (v11)
        {
          goto LABEL_306;
        }

        goto LABEL_263;
      }

      goto LABEL_261;
    }

    if ((v185 & 0xC000000000000001) != 0)
    {
      if (v185 < 0)
      {
        v257 = v185;
      }

      else
      {
        v257 = v185 & 0xFFFFFFFFFFFFFF8;
      }

      v192 = v192;
      v258 = sub_2455E9F50();

      if (v258)
      {
        swift_unknownObjectRelease();

        v259 = sub_2455E9F20();
        v184 = sub_2455E424C(v257, v259);

        v260 = sub_2455E34FC(v192);
        v262 = v261;

        if ((v262 & 1) == 0)
        {
          goto LABEL_318;
        }

        v263 = *(*(v184 + 56) + 8 * v260);
        sub_2455E5218(v260, v184);

        *v433 = v184;
        goto LABEL_265;
      }
    }

    else
    {
      v342 = sub_2455E34FC(v192);
      if (v343)
      {
        v344 = v342;
        v345 = v433;
        v346 = *v433;
        v347 = swift_isUniquelyReferenced_nonNull_native();
        v184 = *v433;
        *v400 = *v433;
        if ((v347 & 1) == 0)
        {
          v348 = v400;
          goto LABEL_281;
        }

        goto LABEL_279;
      }
    }

    goto LABEL_270;
  }

  v198 = *(v186 + 16);
  v199 = sub_2455E9910();
  if (v199)
  {
    v200 = v199;
    v201 = sub_2455E9940();
    if (__OFSUB__(v198, v201))
    {
      goto LABEL_296;
    }

    v202 = (v198 - v201 + v200);
  }

  else
  {
    v202 = 0;
  }

  v222 = *(v434 + 984);
  v223 = *(v434 + 960);
  sub_2455E9930();
  v224 = *(v223 + 20);
  v192 = *(v222 + 96);
  v225 = sub_2455D04E0();
  if (v202)
  {
    v233 = *v182;
    v234 = v182[1];
    v235 = v234 >> 62;
    if ((v234 >> 62) > 1)
    {
      if (v235 == 2)
      {
        v239 = v233 + 16;
        v237 = *(v233 + 16);
        v238 = *(v239 + 8);
        v236 = v238 - v237;
        if (__OFSUB__(v238, v237))
        {
          goto LABEL_315;
        }
      }

      else
      {
        v236 = 0;
      }
    }

    else if (v235)
    {
      v11 = __OFSUB__(HIDWORD(v233), v233);
      v273 = HIDWORD(v233) - v233;
      if (v11)
      {
        goto LABEL_314;
      }

      v236 = v273;
    }

    else
    {
      v236 = BYTE6(v234);
    }

    v274 = IOHIDValueCreateWithBytes(0, v192, v225, v202, v236);
    v275 = v184 & 0xC000000000000001;
    if (v274)
    {
      v253 = v274;
      if (v275)
      {
        if (v184 < 0)
        {
          v276 = v184;
        }

        else
        {
          v276 = v184 & 0xFFFFFFFFFFFFFF8;
        }

        v277 = sub_2455E9F20();
        v256 = v433;
        if (__OFADD__(v277, 1))
        {
          goto LABEL_304;
        }

        *v433 = sub_2455E424C(v276, v277 + 1);
      }

      else
      {
        v256 = v433;
        v318 = *v433;
      }

      v319 = swift_isUniquelyReferenced_nonNull_native();
      v320 = *v256;
      *v415 = *v256;
      v297 = sub_2455E34FC(v192);
      v322 = *(v320 + 16);
      v323 = (v321 & 1) == 0;
      v11 = __OFADD__(v322, v323);
      v324 = v322 + v323;
      if (v11)
      {
        goto LABEL_300;
      }

      v325 = v321;
      if (*(v320 + 24) >= v324)
      {
        if ((v319 & 1) == 0)
        {
          v364 = v297;
          sub_2455E5E38();
          v297 = v364;
        }
      }

      else
      {
        sub_2455E4F3C(v324, v319);
        v326 = *v415;
        v297 = sub_2455E34FC(v192);
        if ((v325 & 1) != (v327 & 1))
        {
          goto LABEL_291;
        }
      }

      v184 = *v415;
      if (v325)
      {
        goto LABEL_261;
      }

      *(v184 + 8 * (v297 >> 6) + 64) |= 1 << v297;
      *(*(v184 + 48) + 8 * v297) = v192;
      *(*(v184 + 56) + 8 * v297) = v253;
      v328 = *(v184 + 16);
      v11 = __OFADD__(v328, 1);
      v306 = v328 + 1;
      if (v11)
      {
        goto LABEL_308;
      }

LABEL_263:
      *(v184 + 16) = v306;
      goto LABEL_264;
    }

    if (v275)
    {
      if (v184 < 0)
      {
        v278 = v184;
      }

      else
      {
        v278 = v184 & 0xFFFFFFFFFFFFFF8;
      }

      v192 = v192;
      v279 = sub_2455E9F50();

      if (!v279)
      {
        goto LABEL_108;
      }

      swift_unknownObjectRelease();

      v280 = sub_2455E9F20();
      v185 = sub_2455E424C(v278, v280);

      v270 = sub_2455E34FC(v192);
      v282 = v281;

      if ((v282 & 1) == 0)
      {
        goto LABEL_320;
      }

      goto LABEL_219;
    }

    v353 = sub_2455E34FC(v192);
    if ((v354 & 1) == 0)
    {
      goto LABEL_108;
    }

    v344 = v353;
    v345 = v433;
    v355 = *v433;
    v356 = swift_isUniquelyReferenced_nonNull_native();
    v184 = *v433;
    *v398 = *v433;
    if (v356)
    {
      goto LABEL_279;
    }

    v348 = v398;
    goto LABEL_281;
  }

  __break(1u);
LABEL_329:
  __break(1u);
  return MEMORY[0x2822008A0](v225, v226, v227, v228, v229, v230, v231, v232);
}

uint64_t sub_2455DF94C()
{
  v341 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 744);
  v337 = (v0 + 776);
  v324 = (v0 + 792);
  v320 = (v0 + 688);
  v322 = (v0 + 808);
  v328 = (v0 + 824);
  bytes = (v0 + 287);
  v326 = (v0 + 840);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);

  v4 = *(v0 + 776);

  sub_2455E6788(v3, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
  v5 = *(v0 + 1128);
LABEL_2:
  v6 = *(v0 + 1016);
  v7 = *(v0 + 1008);
  v8 = *(v0 + 992);
  sub_2455ABC88(v0 + 432, v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v11 = *(v0 + 1032);
    v12 = *(v0 + 1024);
    v13 = *(v0 + 992);
    v10(v13, 0, 1, *(v0 + 1008));
    sub_2455E6F48(v13, v11, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    sub_2455E661C(v11, v12, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    v14 = v5;
    v15 = *(v0 + 688);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 688);
    *(v0 + 712) = v17;
    v18 = sub_2455E347C(v12, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
    v20 = *(v17 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_235;
    }

    v24 = v19;
    if (*(v17 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v89 = v18;
        sub_2455E5BBC();
        v18 = v89;
      }
    }

    else
    {
      v25 = *(v0 + 1024);
      sub_2455E49CC(v23, isUniquelyReferenced_nonNull_native);
      v26 = *(v0 + 712);
      v18 = sub_2455E347C(v25, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
      if ((v24 & 1) != (v27 & 1))
      {
        v317 = *(v0 + 1008);
        goto LABEL_223;
      }
    }

    v52 = *(v0 + 712);
    v53 = *(v0 + 1032);
    v54 = *(v0 + 1024);
    if (v24)
    {
      v55 = v52[7] + 16 * v18;
      v56 = *v55;
      v57 = *(v55 + 8);
      *v55 = v5;
      *(v55 + 8) = 1;
      sub_2455E711C(v56, v57);

      sub_2455E6788(v54, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E6788(v53, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v51 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    }

    else
    {
      v58 = *(v0 + 1016);
      v52[(v18 >> 6) + 8] |= 1 << v18;
      v59 = v18;
      sub_2455E661C(v54, v52[6] + *(v58 + 72) * v18, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v60 = v52[7] + 16 * v59;
      *v60 = v5;
      *(v60 + 8) = 1;

      sub_2455E6788(v54, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E6788(v53, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v51 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      v61 = v52[2];
      v22 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v22)
      {
        goto LABEL_245;
      }

      v52[2] = v62;
    }

    *v320 = v52;
  }

  else
  {
    v28 = *(v0 + 992);
    v29 = *(v0 + 912);
    v30 = *(v0 + 896);
    v10(v28, 1, 1, *(v0 + 1008));
    sub_2455A7680(v28, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 592);
    if (swift_dynamicCast())
    {
      v31 = *(v0 + 936);
      v32 = *(v0 + 928);
      v33 = *(v0 + 896);
      (*(*(v0 + 920) + 56))(v33, 0, 1, *(v0 + 912));
      sub_2455E6F48(v33, v31, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      sub_2455E661C(v31, v32, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v34 = v5;
      v35 = *(v0 + 696);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v0 + 696);
      *(v0 + 728) = v37;
      v39 = sub_2455E347C(v32, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
      v40 = *(v37 + 16);
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_244;
      }

      v43 = v38;
      if (*(v37 + 24) >= v42)
      {
        if ((v36 & 1) == 0)
        {
          sub_2455E5940();
        }
      }

      else
      {
        v44 = *(v0 + 928);
        sub_2455E44CC(v42, v36);
        v45 = *(v0 + 728);
        v46 = sub_2455E347C(v44, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
        if ((v43 & 1) != (v47 & 1))
        {
          v318 = *(v0 + 912);
LABEL_223:
          v316 = *MEMORY[0x277D85DE8];

          return sub_2455EA020();
        }

        v39 = v46;
      }

      v63 = *(v0 + 728);
      v64 = *(v0 + 936);
      v65 = *(v0 + 928);
      if (v43)
      {
        v66 = v63[7] + 16 * v39;
        v67 = *v66;
        v68 = *(v66 + 8);
        *v66 = v5;
        *(v66 + 8) = 1;
        sub_2455E7110(v67, v68);

        sub_2455E6788(v65, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E6788(v64, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v51 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        *(v0 + 696) = v63;
      }

      else
      {
        v334 = *(v0 + 936);
        v69 = *(v0 + 920);
        v63[(v39 >> 6) + 8] |= 1 << v39;
        sub_2455E661C(v65, v63[6] + *(v69 + 72) * v39, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v70 = v63[7] + 16 * v39;
        *v70 = v5;
        *(v70 + 8) = 1;

        sub_2455E6788(v65, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E6788(v334, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v51 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        v71 = v63[2];
        v22 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v22)
        {
          goto LABEL_258;
        }

        v63[2] = v72;
        *(v0 + 696) = v63;
      }
    }

    else
    {
      v48 = *(v0 + 920);
      v49 = *(v0 + 912);
      v50 = *(v0 + 896);

      __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      (*(v48 + 56))(v50, 1, 1, v49);
      v51 = sub_2455A7680(v50, &qword_27EE15190, &qword_2455F1670);
    }
  }

  v73 = *(v0 + 1104) + 1;
  if (v73 == *(v0 + 1088))
  {
LABEL_34:
    v90 = *(v0 + 1080);
    v91 = *(v0 + 1072);
    v92 = *(v0 + 1064);
    v93 = *(v0 + 1056);
    v94 = *(v0 + 1040);
    v95 = *(v0 + 1032);
    v96 = *(v0 + 1024);
    v319 = *(v0 + 1000);
    v321 = *(v0 + 992);
    v323 = *(v0 + 984);
    v325 = *(v0 + 976);
    v327 = *(v0 + 952);
    v329 = *(v0 + 944);
    bytesa = *(v0 + 936);
    v332 = *(v0 + 928);
    v335 = *(v0 + 904);
    v338 = *(v0 + 896);
    v339 = *(v0 + 888);
    v97 = *(v0 + 848);
    (*(**(v0 + 880) + 824))(v51);
    v98 = *(v0 + 696);
    *v97 = *(v0 + 688);
    v97[1] = v98;

    MEMORY[0x245D6C8C0](v93, -1, -1);
    MEMORY[0x245D6C8C0](v92, -1, -1);
    MEMORY[0x245D6C8C0](v91, -1, -1);

    v99 = *(v0 + 688);
    v100 = *(v0 + 696);

    v101 = *(v0 + 8);
    v102 = *MEMORY[0x277D85DE8];

    return v101();
  }

  v74 = *(v0 + 1096);
  while (1)
  {
    *(v0 + 1104) = v73;
    *(v0 + 1096) = v74;
    v75 = *(v0 + 1080);
    sub_2455ABC88(*(v0 + 856) + 40 * v73 + 32, v0 + 432);
    if (v75)
    {
      v87 = *(v0 + 1080);
      swift_willThrow();
      v88 = v87;
      v5 = *(v0 + 1080);
      goto LABEL_2;
    }

    v76 = *(v0 + 1016);
    v77 = *(v0 + 1008);
    v78 = *(v0 + 1000);
    sub_2455ABC88(v0 + 432, v0 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v79 = swift_dynamicCast();
    v80 = *(v76 + 56);
    if (v79)
    {
      v104 = *(v0 + 1040);
      v105 = *(v0 + 1008);
      v106 = *(v0 + 1000);
      v80(v106, 0, 1, v105);
      sub_2455E6F48(v106, v104, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      *(v0 + 776) = MEMORY[0x277D84F98];
      v340 = *(v104 + *(v105 + 20));
      v336 = *(v340 + 16);
      if (!v336)
      {
LABEL_218:
        v311 = *(v0 + 1056);
        v312 = *(v0 + 1048);
        v313 = *(v0 + 1040);
        v301 = *(v0 + 880);
        v302 = sub_2455E6848(&qword_27EE15178, v107, type metadata accessor for HIDDeviceClient);
        v303 = swift_task_alloc();
        *(v0 + 1112) = v303;
        v303[2] = v311;
        v303[3] = v301;
        v303[4] = v337;
        v303[5] = v312;
        v303[6] = v320;
        v303[7] = v313;
        v314 = *(MEMORY[0x277D85A40] + 4);
        v310 = swift_task_alloc();
        *(v0 + 1120) = v310;
        *v310 = v0;
        v310[1] = sub_2455DBA40;
        v315 = *MEMORY[0x277D85DE8];
        v309 = sub_2455E7134;
        v308 = MEMORY[0x277D84F78] + 8;
        goto LABEL_219;
      }

      v108 = 0;
      v109 = (*(v0 + 984) + *(*(v0 + 960) + 24));
      v110 = *(*(v0 + 968) + 80);
      v333 = v340 + ((v110 + 32) & ~v110);
      v111 = MEMORY[0x277D84F98];
      v112 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v108 >= *(v340 + 16))
        {
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
        }

        sub_2455E661C(v333 + *(*(v0 + 968) + 72) * v108, *(v0 + 984), type metadata accessor for HIDElement.Value);
        v113 = *v109;
        v114 = v109[1];
        v115 = v114 >> 62;
        if ((v114 >> 62) > 1)
        {
          if (v115 != 2)
          {
            v135 = *(v0 + 984);
            v136 = *(v0 + 960);
            *bytes = 0;
            *(v0 + 293) = 0;
            v137 = *(v136 + 20);
            v119 = *(v135 + 96);
            v138 = sub_2455D04E0();
            v139 = *v109;
            v140 = v109[1];
            v141 = v140 >> 62;
            if ((v140 >> 62) > 1)
            {
              v142 = 0;
              if (v141 == 2)
              {
                v148 = v139 + 16;
                v146 = *(v139 + 16);
                v147 = *(v148 + 8);
                v142 = v147 - v146;
                if (__OFSUB__(v147, v146))
                {
                  goto LABEL_248;
                }
              }
            }

            else if (v141)
            {
              v22 = __OFSUB__(HIDWORD(v139), v139);
              v172 = HIDWORD(v139) - v139;
              if (v22)
              {
                goto LABEL_247;
              }

              v142 = v172;
            }

            else
            {
              v142 = BYTE6(v140);
            }

            v173 = IOHIDValueCreateWithBytes(0, v119, v138, bytes, v142);
            if (v173)
            {
              v174 = v173;
              if ((v112 & 0xC000000000000001) != 0)
              {
                if (v112 < 0)
                {
                  v175 = v112;
                }

                else
                {
                  v175 = v112 & 0xFFFFFFFFFFFFFF8;
                }

                v176 = sub_2455E9F20();
                if (__OFADD__(v176, 1))
                {
                  goto LABEL_237;
                }

                v177 = (v0 + 776);
                *v337 = sub_2455E424C(v175, v176 + 1);
              }

              else
              {
                v177 = (v0 + 776);
                v215 = *v337;
              }

              v216 = swift_isUniquelyReferenced_nonNull_native();
              v217 = *v177;
              *v326 = *v177;
              v218 = sub_2455E34FC(v119);
              v220 = *(v217 + 16);
              v221 = (v219 & 1) == 0;
              v22 = __OFADD__(v220, v221);
              v222 = v220 + v221;
              if (v22)
              {
                goto LABEL_231;
              }

              v223 = v219;
              if (*(v217 + 24) >= v222)
              {
                if ((v216 & 1) == 0)
                {
                  v283 = v218;
                  sub_2455E5E38();
                  v218 = v283;
                }
              }

              else
              {
                sub_2455E4F3C(v222, v216);
                v224 = *v326;
                v218 = sub_2455E34FC(v119);
                if ((v223 & 1) != (v225 & 1))
                {
                  goto LABEL_222;
                }
              }

              v111 = *v326;
              if (v223)
              {
                goto LABEL_192;
              }

              *(v111 + 8 * (v218 >> 6) + 64) |= 1 << v218;
              *(*(v111 + 48) + 8 * v218) = v119;
              *(*(v111 + 56) + 8 * v218) = v174;
              v226 = *(v111 + 16);
              v22 = __OFADD__(v226, 1);
              v227 = v226 + 1;
              if (v22)
              {
                goto LABEL_240;
              }

              goto LABEL_194;
            }

            if ((v112 & 0xC000000000000001) != 0)
            {
              if (v112 < 0)
              {
                v178 = v112;
              }

              else
              {
                v178 = v112 & 0xFFFFFFFFFFFFFF8;
              }

              v119 = v119;
              v179 = sub_2455E9F50();

              if (!v179)
              {
LABEL_200:

                goto LABEL_201;
              }

              swift_unknownObjectRelease();

              v180 = sub_2455E9F20();
              v111 = sub_2455E424C(v178, v180);

              v181 = sub_2455E34FC(v119);
              v183 = v182;

              if ((v183 & 1) == 0)
              {
                goto LABEL_254;
              }

              v184 = *(*(v111 + 56) + 8 * v181);
              sub_2455E5218(v181, v111);

              *v337 = v111;
              goto LABEL_196;
            }

            v263 = sub_2455E34FC(v119);
            if ((v264 & 1) == 0)
            {
              goto LABEL_200;
            }

            v265 = v263;
            v266 = (v0 + 776);
            v267 = *v337;
            v268 = swift_isUniquelyReferenced_nonNull_native();
            v111 = *v337;
            *(v0 + 832) = *v337;
            if (v268)
            {
              goto LABEL_210;
            }

            v269 = (v0 + 832);
            goto LABEL_212;
          }

          v125 = *(v113 + 16);
          v126 = sub_2455E9910();
          if (v126)
          {
            v127 = v126;
            v128 = sub_2455E9940();
            if (__OFSUB__(v125, v128))
            {
              goto LABEL_229;
            }

            v129 = (v125 - v128 + v127);
          }

          else
          {
            v129 = 0;
          }

          v149 = *(v0 + 984);
          v150 = *(v0 + 960);
          sub_2455E9930();
          v151 = *(v150 + 20);
          v119 = *(v149 + 96);
          v152 = sub_2455D04E0();
          if (!v129)
          {
            goto LABEL_259;
          }

          v153 = *v109;
          v154 = v109[1];
          v155 = v154 >> 62;
          if ((v154 >> 62) > 1)
          {
            if (v155 == 2)
            {
              v159 = v153 + 16;
              v157 = *(v153 + 16);
              v158 = *(v159 + 8);
              v156 = v158 - v157;
              if (__OFSUB__(v158, v157))
              {
                goto LABEL_251;
              }
            }

            else
            {
              v156 = 0;
            }
          }

          else if (v155)
          {
            v22 = __OFSUB__(HIDWORD(v153), v153);
            v194 = HIDWORD(v153) - v153;
            if (v22)
            {
              goto LABEL_250;
            }

            v156 = v194;
          }

          else
          {
            v156 = BYTE6(v154);
          }

          v195 = IOHIDValueCreateWithBytes(0, v119, v152, v129, v156);
          v196 = v111 & 0xC000000000000001;
          if (v195)
          {
            v174 = v195;
            if (v196)
            {
              if (v111 < 0)
              {
                v197 = v111;
              }

              else
              {
                v197 = v111 & 0xFFFFFFFFFFFFFF8;
              }

              v198 = sub_2455E9F20();
              v177 = (v0 + 776);
              if (__OFADD__(v198, 1))
              {
                goto LABEL_238;
              }

              *v337 = sub_2455E424C(v197, v198 + 1);
            }

            else
            {
              v177 = (v0 + 776);
              v239 = *v337;
            }

            v240 = swift_isUniquelyReferenced_nonNull_native();
            v241 = *v177;
            *v324 = *v177;
            v218 = sub_2455E34FC(v119);
            v243 = *(v241 + 16);
            v244 = (v242 & 1) == 0;
            v22 = __OFADD__(v243, v244);
            v245 = v243 + v244;
            if (v22)
            {
              goto LABEL_233;
            }

            v246 = v242;
            if (*(v241 + 24) >= v245)
            {
              if ((v240 & 1) == 0)
              {
                v285 = v218;
                sub_2455E5E38();
                v218 = v285;
              }
            }

            else
            {
              sub_2455E4F3C(v245, v240);
              v247 = *v324;
              v218 = sub_2455E34FC(v119);
              if ((v246 & 1) != (v248 & 1))
              {
                goto LABEL_222;
              }
            }

            v111 = *v324;
            if (v246)
            {
              goto LABEL_192;
            }

            *(v111 + 8 * (v218 >> 6) + 64) |= 1 << v218;
            *(*(v111 + 48) + 8 * v218) = v119;
            *(*(v111 + 56) + 8 * v218) = v174;
            v249 = *(v111 + 16);
            v22 = __OFADD__(v249, 1);
            v227 = v249 + 1;
            if (v22)
            {
              goto LABEL_242;
            }

            goto LABEL_194;
          }

          if (v196)
          {
            if (v111 < 0)
            {
              v199 = v111;
            }

            else
            {
              v199 = v111 & 0xFFFFFFFFFFFFFF8;
            }

            v119 = v119;
            v200 = sub_2455E9F50();

            if (v200)
            {
              swift_unknownObjectRelease();

              v201 = sub_2455E9F20();
              v112 = sub_2455E424C(v199, v201);

              v191 = sub_2455E34FC(v119);
              v203 = v202;

              if ((v203 & 1) == 0)
              {
                goto LABEL_256;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v274 = sub_2455E34FC(v119);
            if (v275)
            {
              v265 = v274;
              v266 = (v0 + 776);
              v276 = *v337;
              v277 = swift_isUniquelyReferenced_nonNull_native();
              v111 = *v337;
              *(v0 + 784) = *v337;
              if ((v277 & 1) == 0)
              {
                v269 = (v0 + 784);
                goto LABEL_212;
              }

              goto LABEL_210;
            }
          }
        }

        else if (v115)
        {
          v130 = v113;
          if (v113 > v113 >> 32)
          {
            goto LABEL_228;
          }

          v131 = sub_2455E9910();
          if (v131)
          {
            v132 = v131;
            v133 = sub_2455E9940();
            if (__OFSUB__(v130, v133))
            {
              goto LABEL_230;
            }

            v134 = (v130 - v133 + v132);
          }

          else
          {
            v134 = 0;
          }

          v160 = *(v0 + 984);
          v161 = *(v0 + 960);
          sub_2455E9930();
          v162 = *(v161 + 20);
          v119 = *(v160 + 96);
          v163 = sub_2455D04E0();
          if (!v134)
          {
            goto LABEL_260;
          }

          v164 = *v109;
          v165 = v109[1];
          v166 = v165 >> 62;
          if ((v165 >> 62) > 1)
          {
            if (v166 == 2)
            {
              v170 = v164 + 16;
              v168 = *(v164 + 16);
              v169 = *(v170 + 8);
              v167 = v169 - v168;
              if (__OFSUB__(v169, v168))
              {
                goto LABEL_253;
              }
            }

            else
            {
              v167 = 0;
            }
          }

          else if (v166)
          {
            v22 = __OFSUB__(HIDWORD(v164), v164);
            v204 = HIDWORD(v164) - v164;
            if (v22)
            {
              goto LABEL_252;
            }

            v167 = v204;
          }

          else
          {
            v167 = BYTE6(v165);
          }

          v205 = IOHIDValueCreateWithBytes(0, v119, v163, v134, v167);
          v206 = v111 & 0xC000000000000001;
          if (v205)
          {
            v174 = v205;
            if (v206)
            {
              if (v111 < 0)
              {
                v207 = v111;
              }

              else
              {
                v207 = v111 & 0xFFFFFFFFFFFFFF8;
              }

              v208 = sub_2455E9F20();
              v177 = (v0 + 776);
              if (__OFADD__(v208, 1))
              {
                goto LABEL_239;
              }

              *v337 = sub_2455E424C(v207, v208 + 1);
            }

            else
            {
              v177 = (v0 + 776);
              v250 = *v337;
            }

            v251 = swift_isUniquelyReferenced_nonNull_native();
            v252 = *v177;
            *v322 = *v177;
            v218 = sub_2455E34FC(v119);
            v254 = *(v252 + 16);
            v255 = (v253 & 1) == 0;
            v22 = __OFADD__(v254, v255);
            v256 = v254 + v255;
            if (v22)
            {
              goto LABEL_234;
            }

            v257 = v253;
            if (*(v252 + 24) >= v256)
            {
              if ((v251 & 1) == 0)
              {
                v286 = v218;
                sub_2455E5E38();
                v218 = v286;
              }
            }

            else
            {
              sub_2455E4F3C(v256, v251);
              v258 = *v322;
              v218 = sub_2455E34FC(v119);
              if ((v257 & 1) != (v259 & 1))
              {
LABEL_222:
                type metadata accessor for IOHIDElement();
                goto LABEL_223;
              }
            }

            v111 = *v322;
            if (v257)
            {
LABEL_192:
              v260 = *(v111 + 56);
              v261 = *(v260 + 8 * v218);
              *(v260 + 8 * v218) = v174;

              goto LABEL_195;
            }

            *(v111 + 8 * (v218 >> 6) + 64) |= 1 << v218;
            *(*(v111 + 48) + 8 * v218) = v119;
            *(*(v111 + 56) + 8 * v218) = v174;
            v262 = *(v111 + 16);
            v22 = __OFADD__(v262, 1);
            v227 = v262 + 1;
            if (v22)
            {
              goto LABEL_243;
            }

LABEL_194:
            *(v111 + 16) = v227;
LABEL_195:
            *v177 = v111;
LABEL_196:
            v112 = v111;
            goto LABEL_40;
          }

          if (v206)
          {
            if (v111 < 0)
            {
              v209 = v111;
            }

            else
            {
              v209 = v111 & 0xFFFFFFFFFFFFFF8;
            }

            v119 = v119;
            v210 = sub_2455E9F50();

            if (v210)
            {
              swift_unknownObjectRelease();

              v211 = sub_2455E9F20();
              v112 = sub_2455E424C(v209, v211);

              v191 = sub_2455E34FC(v119);
              v213 = v212;

              if ((v213 & 1) == 0)
              {
                goto LABEL_257;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v278 = sub_2455E34FC(v119);
            if (v279)
            {
              v265 = v278;
              v266 = (v0 + 776);
              v280 = *v337;
              v281 = swift_isUniquelyReferenced_nonNull_native();
              v111 = *v337;
              *(v0 + 800) = *v337;
              if (v281)
              {
                goto LABEL_210;
              }

              v269 = (v0 + 800);
LABEL_212:
              sub_2455E5E38();
              v111 = *v269;
              goto LABEL_210;
            }
          }
        }

        else
        {
          v116 = *(v0 + 984);
          v117 = *(v0 + 960);
          *(v0 + 273) = v113;
          *(v0 + 281) = v114;
          *(v0 + 283) = BYTE2(v114);
          *(v0 + 284) = BYTE3(v114);
          *(v0 + 285) = BYTE4(v114);
          *(v0 + 286) = BYTE5(v114);
          v118 = *(v117 + 20);
          v119 = *(v116 + 96);
          v120 = sub_2455D04E0();
          v121 = *v109;
          v122 = v109[1];
          v123 = v122 >> 62;
          if ((v122 >> 62) > 1)
          {
            if (v123 == 2)
            {
              v145 = v121 + 16;
              v143 = *(v121 + 16);
              v144 = *(v145 + 8);
              v124 = v144 - v143;
              if (__OFSUB__(v144, v143))
              {
                goto LABEL_249;
              }
            }

            else
            {
              v124 = 0;
            }
          }

          else if (v123)
          {
            v22 = __OFSUB__(HIDWORD(v121), v121);
            v171 = HIDWORD(v121) - v121;
            if (v22)
            {
              goto LABEL_246;
            }

            v124 = v171;
          }

          else
          {
            v124 = BYTE6(v122);
          }

          v185 = IOHIDValueCreateWithBytes(0, v119, v120, (v0 + 273), v124);
          if (v185)
          {
            v174 = v185;
            if ((v112 & 0xC000000000000001) != 0)
            {
              if (v112 < 0)
              {
                v186 = v112;
              }

              else
              {
                v186 = v112 & 0xFFFFFFFFFFFFFF8;
              }

              v187 = sub_2455E9F20();
              if (__OFADD__(v187, 1))
              {
                goto LABEL_236;
              }

              v177 = (v0 + 776);
              *v337 = sub_2455E424C(v186, v187 + 1);
            }

            else
            {
              v177 = (v0 + 776);
              v228 = *v337;
            }

            v229 = swift_isUniquelyReferenced_nonNull_native();
            v230 = *v177;
            *v328 = *v177;
            v218 = sub_2455E34FC(v119);
            v232 = *(v230 + 16);
            v233 = (v231 & 1) == 0;
            v22 = __OFADD__(v232, v233);
            v234 = v232 + v233;
            if (v22)
            {
              goto LABEL_232;
            }

            v235 = v231;
            if (*(v230 + 24) >= v234)
            {
              if ((v229 & 1) == 0)
              {
                v284 = v218;
                sub_2455E5E38();
                v218 = v284;
              }
            }

            else
            {
              sub_2455E4F3C(v234, v229);
              v236 = *v328;
              v218 = sub_2455E34FC(v119);
              if ((v235 & 1) != (v237 & 1))
              {
                goto LABEL_222;
              }
            }

            v111 = *v328;
            if (v235)
            {
              goto LABEL_192;
            }

            *(v111 + 8 * (v218 >> 6) + 64) |= 1 << v218;
            *(*(v111 + 48) + 8 * v218) = v119;
            *(*(v111 + 56) + 8 * v218) = v174;
            v238 = *(v111 + 16);
            v22 = __OFADD__(v238, 1);
            v227 = v238 + 1;
            if (v22)
            {
              goto LABEL_241;
            }

            goto LABEL_194;
          }

          if ((v111 & 0xC000000000000001) != 0)
          {
            if (v111 < 0)
            {
              v188 = v111;
            }

            else
            {
              v188 = v111 & 0xFFFFFFFFFFFFFF8;
            }

            v119 = v119;
            v189 = sub_2455E9F50();

            if (v189)
            {
              swift_unknownObjectRelease();

              v190 = sub_2455E9F20();
              v112 = sub_2455E424C(v188, v190);

              v191 = sub_2455E34FC(v119);
              v193 = v192;

              if ((v193 & 1) == 0)
              {
                goto LABEL_255;
              }

LABEL_150:

              v214 = *(*(v112 + 56) + 8 * v191);
              sub_2455E5218(v191, v112);

              *v337 = v112;
LABEL_201:
              v111 = v112;
              goto LABEL_40;
            }
          }

          else
          {
            v270 = sub_2455E34FC(v119);
            if (v271)
            {
              v265 = v270;
              v266 = (v0 + 776);
              v272 = *v337;
              v273 = swift_isUniquelyReferenced_nonNull_native();
              v111 = *v337;
              *(v0 + 816) = *v337;
              if ((v273 & 1) == 0)
              {
                v269 = (v0 + 816);
                goto LABEL_212;
              }

LABEL_210:

              v282 = *(*(v111 + 56) + 8 * v265);
              sub_2455E5218(v265, v111);

              *v266 = v111;
              goto LABEL_196;
            }
          }
        }

LABEL_40:
        ++v108;
        sub_2455E6788(*(v0 + 984), type metadata accessor for HIDElement.Value);
        if (v336 == v108)
        {
          goto LABEL_218;
        }
      }
    }

    v81 = *(v0 + 1000);
    v82 = *(v0 + 912);
    v83 = *(v0 + 904);
    v80(v81, 1, 1, *(v0 + 1008));
    sub_2455A7680(v81, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 512);
    if (swift_dynamicCast())
    {
      break;
    }

    v84 = *(v0 + 920);
    v85 = *(v0 + 912);
    v86 = *(v0 + 904);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    (*(v84 + 56))(v86, 1, 1, v85);
    v51 = sub_2455A7680(v86, &qword_27EE15190, &qword_2455F1670);
    v73 = *(v0 + 1104) + 1;
    if (v73 == *(v0 + 1088))
    {
      goto LABEL_34;
    }
  }

  v287 = *(v0 + 952);
  v288 = *(v0 + 912);
  v289 = *(v0 + 904);
  (*(*(v0 + 920) + 56))(v289, 0, 1, v288);
  sub_2455E6F48(v289, v287, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v291 = *(v287 + *(v288 + 20));
  v292 = *(v291 + 16);
  v293 = MEMORY[0x277D84F90];
  if (v292)
  {
    *v1 = MEMORY[0x277D84F90];
    sub_2455E9E40();
    v294 = (v291 + 128);
    do
    {
      v295 = *v294;
      v294 += 16;
      v296 = v295;
      sub_2455E9E20();
      v297 = *(*v1 + 16);
      sub_2455E9E50();
      sub_2455E9E60();
      sub_2455E9E30();
      --v292;
    }

    while (v292);
    v293 = *v1;
  }

  *(v0 + 1136) = v293;
  v298 = *(v0 + 1072);
  v299 = *(v0 + 1064);
  v300 = *(v0 + 1048);
  v301 = *(v0 + 880);
  v302 = sub_2455E6848(&qword_27EE15178, v290, type metadata accessor for HIDDeviceClient);
  v303 = swift_task_alloc();
  *(v0 + 1144) = v303;
  v303[2] = v299;
  v303[3] = v301;
  v303[4] = v293;
  v303[5] = v298;
  v303[6] = v300;
  v304 = *(MEMORY[0x277D85A40] + 4);
  v305 = swift_task_alloc();
  *(v0 + 1152) = v305;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
  *v305 = v0;
  v305[1] = sub_2455DD5A0;
  v307 = *MEMORY[0x277D85DE8];
  v308 = v306;
  v309 = sub_2455E6FC8;
  v310 = (v0 + 736);
LABEL_219:

  return MEMORY[0x2822008A0](v310, v301, v302, 0xD00000000000001ALL, 0x80000002455F3230, v309, v303, v308);
}

uint64_t sub_2455E136C()
{
  v338 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 744);
  v334 = (v0 + 776);
  v321 = (v0 + 792);
  v317 = (v0 + 688);
  v319 = (v0 + 808);
  v325 = (v0 + 824);
  bytes = (v0 + 287);
  v323 = (v0 + 840);
  sub_2455E6788(*(v0 + 952), type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v2 = *(v0 + 1160);
LABEL_2:
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 992);
  sub_2455ABC88(v0 + 432, v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v8 = *(v0 + 1032);
    v9 = *(v0 + 1024);
    v10 = *(v0 + 992);
    v7(v10, 0, 1, *(v0 + 1008));
    sub_2455E6F48(v10, v8, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    sub_2455E661C(v8, v9, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
    v11 = v2;
    v12 = *(v0 + 688);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v0 + 688);
    *(v0 + 712) = v14;
    v15 = sub_2455E347C(v9, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
    v17 = *(v14 + 16);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_235;
    }

    v21 = v16;
    if (*(v14 + 24) >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = v15;
        sub_2455E5BBC();
        v15 = v86;
      }
    }

    else
    {
      v22 = *(v0 + 1024);
      sub_2455E49CC(v20, isUniquelyReferenced_nonNull_native);
      v23 = *(v0 + 712);
      v15 = sub_2455E347C(v22, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
      if ((v21 & 1) != (v24 & 1))
      {
        v314 = *(v0 + 1008);
        goto LABEL_223;
      }
    }

    v49 = *(v0 + 712);
    v50 = *(v0 + 1032);
    v51 = *(v0 + 1024);
    if (v21)
    {
      v52 = v49[7] + 16 * v15;
      v53 = *v52;
      v54 = *(v52 + 8);
      *v52 = v2;
      *(v52 + 8) = 1;
      sub_2455E711C(v53, v54);

      sub_2455E6788(v51, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E6788(v50, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v48 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    }

    else
    {
      v55 = *(v0 + 1016);
      v49[(v15 >> 6) + 8] |= 1 << v15;
      v56 = v15;
      sub_2455E661C(v51, v49[6] + *(v55 + 72) * v15, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v57 = v49[7] + 16 * v56;
      *v57 = v2;
      *(v57 + 8) = 1;

      sub_2455E6788(v51, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      sub_2455E6788(v50, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v48 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      v58 = v49[2];
      v19 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v19)
      {
        goto LABEL_245;
      }

      v49[2] = v59;
    }

    *v317 = v49;
  }

  else
  {
    v25 = *(v0 + 992);
    v26 = *(v0 + 912);
    v27 = *(v0 + 896);
    v7(v25, 1, 1, *(v0 + 1008));
    sub_2455A7680(v25, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 592);
    if (swift_dynamicCast())
    {
      v28 = *(v0 + 936);
      v29 = *(v0 + 928);
      v30 = *(v0 + 896);
      (*(*(v0 + 920) + 56))(v30, 0, 1, *(v0 + 912));
      sub_2455E6F48(v30, v28, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      sub_2455E661C(v28, v29, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v31 = v2;
      v32 = *(v0 + 696);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v0 + 696);
      *(v0 + 728) = v34;
      v36 = sub_2455E347C(v29, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
      v37 = *(v34 + 16);
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_244;
      }

      v40 = v35;
      if (*(v34 + 24) >= v39)
      {
        if ((v33 & 1) == 0)
        {
          sub_2455E5940();
        }
      }

      else
      {
        v41 = *(v0 + 928);
        sub_2455E44CC(v39, v33);
        v42 = *(v0 + 728);
        v43 = sub_2455E347C(v41, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
        if ((v40 & 1) != (v44 & 1))
        {
          v315 = *(v0 + 912);
LABEL_223:
          v313 = *MEMORY[0x277D85DE8];

          return sub_2455EA020();
        }

        v36 = v43;
      }

      v60 = *(v0 + 728);
      v61 = *(v0 + 936);
      v62 = *(v0 + 928);
      if (v40)
      {
        v63 = v60[7] + 16 * v36;
        v64 = *v63;
        v65 = *(v63 + 8);
        *v63 = v2;
        *(v63 + 8) = 1;
        sub_2455E7110(v64, v65);

        sub_2455E6788(v62, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E6788(v61, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v48 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        *(v0 + 696) = v60;
      }

      else
      {
        v331 = *(v0 + 936);
        v66 = *(v0 + 920);
        v60[(v36 >> 6) + 8] |= 1 << v36;
        sub_2455E661C(v62, v60[6] + *(v66 + 72) * v36, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v67 = v60[7] + 16 * v36;
        *v67 = v2;
        *(v67 + 8) = 1;

        sub_2455E6788(v62, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        sub_2455E6788(v331, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v48 = __swift_destroy_boxed_opaque_existential_1((v0 + 432));
        v68 = v60[2];
        v19 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v19)
        {
          goto LABEL_258;
        }

        v60[2] = v69;
        *(v0 + 696) = v60;
      }
    }

    else
    {
      v45 = *(v0 + 920);
      v46 = *(v0 + 912);
      v47 = *(v0 + 896);

      __swift_destroy_boxed_opaque_existential_1((v0 + 432));
      (*(v45 + 56))(v47, 1, 1, v46);
      v48 = sub_2455A7680(v47, &qword_27EE15190, &qword_2455F1670);
    }
  }

  v70 = *(v0 + 1104) + 1;
  if (v70 == *(v0 + 1088))
  {
LABEL_34:
    v87 = *(v0 + 1080);
    v88 = *(v0 + 1072);
    v89 = *(v0 + 1064);
    v90 = *(v0 + 1056);
    v91 = *(v0 + 1040);
    v92 = *(v0 + 1032);
    v93 = *(v0 + 1024);
    v316 = *(v0 + 1000);
    v318 = *(v0 + 992);
    v320 = *(v0 + 984);
    v322 = *(v0 + 976);
    v324 = *(v0 + 952);
    v326 = *(v0 + 944);
    bytesa = *(v0 + 936);
    v329 = *(v0 + 928);
    v332 = *(v0 + 904);
    v335 = *(v0 + 896);
    v336 = *(v0 + 888);
    v94 = *(v0 + 848);
    (*(**(v0 + 880) + 824))(v48);
    v95 = *(v0 + 696);
    *v94 = *(v0 + 688);
    v94[1] = v95;

    MEMORY[0x245D6C8C0](v90, -1, -1);
    MEMORY[0x245D6C8C0](v89, -1, -1);
    MEMORY[0x245D6C8C0](v88, -1, -1);

    v96 = *(v0 + 688);
    v97 = *(v0 + 696);

    v98 = *(v0 + 8);
    v99 = *MEMORY[0x277D85DE8];

    return v98();
  }

  v71 = *(v0 + 1096);
  while (1)
  {
    *(v0 + 1104) = v70;
    *(v0 + 1096) = v71;
    v72 = *(v0 + 1080);
    sub_2455ABC88(*(v0 + 856) + 40 * v70 + 32, v0 + 432);
    if (v72)
    {
      v84 = *(v0 + 1080);
      swift_willThrow();
      v85 = v84;
      v2 = *(v0 + 1080);
      goto LABEL_2;
    }

    v73 = *(v0 + 1016);
    v74 = *(v0 + 1008);
    v75 = *(v0 + 1000);
    sub_2455ABC88(v0 + 432, v0 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A0, &unk_2455F1680);
    v76 = swift_dynamicCast();
    v77 = *(v73 + 56);
    if (v76)
    {
      v101 = *(v0 + 1040);
      v102 = *(v0 + 1008);
      v103 = *(v0 + 1000);
      v77(v103, 0, 1, v102);
      sub_2455E6F48(v103, v101, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      *(v0 + 776) = MEMORY[0x277D84F98];
      v337 = *(v101 + *(v102 + 20));
      v333 = *(v337 + 16);
      if (!v333)
      {
LABEL_218:
        v308 = *(v0 + 1056);
        v309 = *(v0 + 1048);
        v310 = *(v0 + 1040);
        v298 = *(v0 + 880);
        v299 = sub_2455E6848(&qword_27EE15178, v104, type metadata accessor for HIDDeviceClient);
        v300 = swift_task_alloc();
        *(v0 + 1112) = v300;
        v300[2] = v308;
        v300[3] = v298;
        v300[4] = v334;
        v300[5] = v309;
        v300[6] = v317;
        v300[7] = v310;
        v311 = *(MEMORY[0x277D85A40] + 4);
        v307 = swift_task_alloc();
        *(v0 + 1120) = v307;
        *v307 = v0;
        v307[1] = sub_2455DBA40;
        v312 = *MEMORY[0x277D85DE8];
        v306 = sub_2455E7134;
        v305 = MEMORY[0x277D84F78] + 8;
        goto LABEL_219;
      }

      v105 = 0;
      v106 = (*(v0 + 984) + *(*(v0 + 960) + 24));
      v107 = *(*(v0 + 968) + 80);
      v330 = v337 + ((v107 + 32) & ~v107);
      v108 = MEMORY[0x277D84F98];
      v109 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v105 >= *(v337 + 16))
        {
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
        }

        sub_2455E661C(v330 + *(*(v0 + 968) + 72) * v105, *(v0 + 984), type metadata accessor for HIDElement.Value);
        v110 = *v106;
        v111 = v106[1];
        v112 = v111 >> 62;
        if ((v111 >> 62) > 1)
        {
          if (v112 != 2)
          {
            v132 = *(v0 + 984);
            v133 = *(v0 + 960);
            *bytes = 0;
            *(v0 + 293) = 0;
            v134 = *(v133 + 20);
            v116 = *(v132 + 96);
            v135 = sub_2455D04E0();
            v136 = *v106;
            v137 = v106[1];
            v138 = v137 >> 62;
            if ((v137 >> 62) > 1)
            {
              v139 = 0;
              if (v138 == 2)
              {
                v145 = v136 + 16;
                v143 = *(v136 + 16);
                v144 = *(v145 + 8);
                v139 = v144 - v143;
                if (__OFSUB__(v144, v143))
                {
                  goto LABEL_248;
                }
              }
            }

            else if (v138)
            {
              v19 = __OFSUB__(HIDWORD(v136), v136);
              v169 = HIDWORD(v136) - v136;
              if (v19)
              {
                goto LABEL_247;
              }

              v139 = v169;
            }

            else
            {
              v139 = BYTE6(v137);
            }

            v170 = IOHIDValueCreateWithBytes(0, v116, v135, bytes, v139);
            if (v170)
            {
              v171 = v170;
              if ((v109 & 0xC000000000000001) != 0)
              {
                if (v109 < 0)
                {
                  v172 = v109;
                }

                else
                {
                  v172 = v109 & 0xFFFFFFFFFFFFFF8;
                }

                v173 = sub_2455E9F20();
                if (__OFADD__(v173, 1))
                {
                  goto LABEL_237;
                }

                v174 = (v0 + 776);
                *v334 = sub_2455E424C(v172, v173 + 1);
              }

              else
              {
                v174 = (v0 + 776);
                v212 = *v334;
              }

              v213 = swift_isUniquelyReferenced_nonNull_native();
              v214 = *v174;
              *v323 = *v174;
              v215 = sub_2455E34FC(v116);
              v217 = *(v214 + 16);
              v218 = (v216 & 1) == 0;
              v19 = __OFADD__(v217, v218);
              v219 = v217 + v218;
              if (v19)
              {
                goto LABEL_231;
              }

              v220 = v216;
              if (*(v214 + 24) >= v219)
              {
                if ((v213 & 1) == 0)
                {
                  v280 = v215;
                  sub_2455E5E38();
                  v215 = v280;
                }
              }

              else
              {
                sub_2455E4F3C(v219, v213);
                v221 = *v323;
                v215 = sub_2455E34FC(v116);
                if ((v220 & 1) != (v222 & 1))
                {
                  goto LABEL_222;
                }
              }

              v108 = *v323;
              if (v220)
              {
                goto LABEL_192;
              }

              *(v108 + 8 * (v215 >> 6) + 64) |= 1 << v215;
              *(*(v108 + 48) + 8 * v215) = v116;
              *(*(v108 + 56) + 8 * v215) = v171;
              v223 = *(v108 + 16);
              v19 = __OFADD__(v223, 1);
              v224 = v223 + 1;
              if (v19)
              {
                goto LABEL_240;
              }

              goto LABEL_194;
            }

            if ((v109 & 0xC000000000000001) != 0)
            {
              if (v109 < 0)
              {
                v175 = v109;
              }

              else
              {
                v175 = v109 & 0xFFFFFFFFFFFFFF8;
              }

              v116 = v116;
              v176 = sub_2455E9F50();

              if (!v176)
              {
LABEL_200:

                goto LABEL_201;
              }

              swift_unknownObjectRelease();

              v177 = sub_2455E9F20();
              v108 = sub_2455E424C(v175, v177);

              v178 = sub_2455E34FC(v116);
              v180 = v179;

              if ((v180 & 1) == 0)
              {
                goto LABEL_254;
              }

              v181 = *(*(v108 + 56) + 8 * v178);
              sub_2455E5218(v178, v108);

              *v334 = v108;
              goto LABEL_196;
            }

            v260 = sub_2455E34FC(v116);
            if ((v261 & 1) == 0)
            {
              goto LABEL_200;
            }

            v262 = v260;
            v263 = (v0 + 776);
            v264 = *v334;
            v265 = swift_isUniquelyReferenced_nonNull_native();
            v108 = *v334;
            *(v0 + 832) = *v334;
            if (v265)
            {
              goto LABEL_210;
            }

            v266 = (v0 + 832);
            goto LABEL_212;
          }

          v122 = *(v110 + 16);
          v123 = sub_2455E9910();
          if (v123)
          {
            v124 = v123;
            v125 = sub_2455E9940();
            if (__OFSUB__(v122, v125))
            {
              goto LABEL_229;
            }

            v126 = (v122 - v125 + v124);
          }

          else
          {
            v126 = 0;
          }

          v146 = *(v0 + 984);
          v147 = *(v0 + 960);
          sub_2455E9930();
          v148 = *(v147 + 20);
          v116 = *(v146 + 96);
          v149 = sub_2455D04E0();
          if (!v126)
          {
            goto LABEL_259;
          }

          v150 = *v106;
          v151 = v106[1];
          v152 = v151 >> 62;
          if ((v151 >> 62) > 1)
          {
            if (v152 == 2)
            {
              v156 = v150 + 16;
              v154 = *(v150 + 16);
              v155 = *(v156 + 8);
              v153 = v155 - v154;
              if (__OFSUB__(v155, v154))
              {
                goto LABEL_251;
              }
            }

            else
            {
              v153 = 0;
            }
          }

          else if (v152)
          {
            v19 = __OFSUB__(HIDWORD(v150), v150);
            v191 = HIDWORD(v150) - v150;
            if (v19)
            {
              goto LABEL_250;
            }

            v153 = v191;
          }

          else
          {
            v153 = BYTE6(v151);
          }

          v192 = IOHIDValueCreateWithBytes(0, v116, v149, v126, v153);
          v193 = v108 & 0xC000000000000001;
          if (v192)
          {
            v171 = v192;
            if (v193)
            {
              if (v108 < 0)
              {
                v194 = v108;
              }

              else
              {
                v194 = v108 & 0xFFFFFFFFFFFFFF8;
              }

              v195 = sub_2455E9F20();
              v174 = (v0 + 776);
              if (__OFADD__(v195, 1))
              {
                goto LABEL_238;
              }

              *v334 = sub_2455E424C(v194, v195 + 1);
            }

            else
            {
              v174 = (v0 + 776);
              v236 = *v334;
            }

            v237 = swift_isUniquelyReferenced_nonNull_native();
            v238 = *v174;
            *v321 = *v174;
            v215 = sub_2455E34FC(v116);
            v240 = *(v238 + 16);
            v241 = (v239 & 1) == 0;
            v19 = __OFADD__(v240, v241);
            v242 = v240 + v241;
            if (v19)
            {
              goto LABEL_233;
            }

            v243 = v239;
            if (*(v238 + 24) >= v242)
            {
              if ((v237 & 1) == 0)
              {
                v282 = v215;
                sub_2455E5E38();
                v215 = v282;
              }
            }

            else
            {
              sub_2455E4F3C(v242, v237);
              v244 = *v321;
              v215 = sub_2455E34FC(v116);
              if ((v243 & 1) != (v245 & 1))
              {
                goto LABEL_222;
              }
            }

            v108 = *v321;
            if (v243)
            {
              goto LABEL_192;
            }

            *(v108 + 8 * (v215 >> 6) + 64) |= 1 << v215;
            *(*(v108 + 48) + 8 * v215) = v116;
            *(*(v108 + 56) + 8 * v215) = v171;
            v246 = *(v108 + 16);
            v19 = __OFADD__(v246, 1);
            v224 = v246 + 1;
            if (v19)
            {
              goto LABEL_242;
            }

            goto LABEL_194;
          }

          if (v193)
          {
            if (v108 < 0)
            {
              v196 = v108;
            }

            else
            {
              v196 = v108 & 0xFFFFFFFFFFFFFF8;
            }

            v116 = v116;
            v197 = sub_2455E9F50();

            if (v197)
            {
              swift_unknownObjectRelease();

              v198 = sub_2455E9F20();
              v109 = sub_2455E424C(v196, v198);

              v188 = sub_2455E34FC(v116);
              v200 = v199;

              if ((v200 & 1) == 0)
              {
                goto LABEL_256;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v271 = sub_2455E34FC(v116);
            if (v272)
            {
              v262 = v271;
              v263 = (v0 + 776);
              v273 = *v334;
              v274 = swift_isUniquelyReferenced_nonNull_native();
              v108 = *v334;
              *(v0 + 784) = *v334;
              if ((v274 & 1) == 0)
              {
                v266 = (v0 + 784);
                goto LABEL_212;
              }

              goto LABEL_210;
            }
          }
        }

        else if (v112)
        {
          v127 = v110;
          if (v110 > v110 >> 32)
          {
            goto LABEL_228;
          }

          v128 = sub_2455E9910();
          if (v128)
          {
            v129 = v128;
            v130 = sub_2455E9940();
            if (__OFSUB__(v127, v130))
            {
              goto LABEL_230;
            }

            v131 = (v127 - v130 + v129);
          }

          else
          {
            v131 = 0;
          }

          v157 = *(v0 + 984);
          v158 = *(v0 + 960);
          sub_2455E9930();
          v159 = *(v158 + 20);
          v116 = *(v157 + 96);
          v160 = sub_2455D04E0();
          if (!v131)
          {
            goto LABEL_260;
          }

          v161 = *v106;
          v162 = v106[1];
          v163 = v162 >> 62;
          if ((v162 >> 62) > 1)
          {
            if (v163 == 2)
            {
              v167 = v161 + 16;
              v165 = *(v161 + 16);
              v166 = *(v167 + 8);
              v164 = v166 - v165;
              if (__OFSUB__(v166, v165))
              {
                goto LABEL_253;
              }
            }

            else
            {
              v164 = 0;
            }
          }

          else if (v163)
          {
            v19 = __OFSUB__(HIDWORD(v161), v161);
            v201 = HIDWORD(v161) - v161;
            if (v19)
            {
              goto LABEL_252;
            }

            v164 = v201;
          }

          else
          {
            v164 = BYTE6(v162);
          }

          v202 = IOHIDValueCreateWithBytes(0, v116, v160, v131, v164);
          v203 = v108 & 0xC000000000000001;
          if (v202)
          {
            v171 = v202;
            if (v203)
            {
              if (v108 < 0)
              {
                v204 = v108;
              }

              else
              {
                v204 = v108 & 0xFFFFFFFFFFFFFF8;
              }

              v205 = sub_2455E9F20();
              v174 = (v0 + 776);
              if (__OFADD__(v205, 1))
              {
                goto LABEL_239;
              }

              *v334 = sub_2455E424C(v204, v205 + 1);
            }

            else
            {
              v174 = (v0 + 776);
              v247 = *v334;
            }

            v248 = swift_isUniquelyReferenced_nonNull_native();
            v249 = *v174;
            *v319 = *v174;
            v215 = sub_2455E34FC(v116);
            v251 = *(v249 + 16);
            v252 = (v250 & 1) == 0;
            v19 = __OFADD__(v251, v252);
            v253 = v251 + v252;
            if (v19)
            {
              goto LABEL_234;
            }

            v254 = v250;
            if (*(v249 + 24) >= v253)
            {
              if ((v248 & 1) == 0)
              {
                v283 = v215;
                sub_2455E5E38();
                v215 = v283;
              }
            }

            else
            {
              sub_2455E4F3C(v253, v248);
              v255 = *v319;
              v215 = sub_2455E34FC(v116);
              if ((v254 & 1) != (v256 & 1))
              {
LABEL_222:
                type metadata accessor for IOHIDElement();
                goto LABEL_223;
              }
            }

            v108 = *v319;
            if (v254)
            {
LABEL_192:
              v257 = *(v108 + 56);
              v258 = *(v257 + 8 * v215);
              *(v257 + 8 * v215) = v171;

              goto LABEL_195;
            }

            *(v108 + 8 * (v215 >> 6) + 64) |= 1 << v215;
            *(*(v108 + 48) + 8 * v215) = v116;
            *(*(v108 + 56) + 8 * v215) = v171;
            v259 = *(v108 + 16);
            v19 = __OFADD__(v259, 1);
            v224 = v259 + 1;
            if (v19)
            {
              goto LABEL_243;
            }

LABEL_194:
            *(v108 + 16) = v224;
LABEL_195:
            *v174 = v108;
LABEL_196:
            v109 = v108;
            goto LABEL_40;
          }

          if (v203)
          {
            if (v108 < 0)
            {
              v206 = v108;
            }

            else
            {
              v206 = v108 & 0xFFFFFFFFFFFFFF8;
            }

            v116 = v116;
            v207 = sub_2455E9F50();

            if (v207)
            {
              swift_unknownObjectRelease();

              v208 = sub_2455E9F20();
              v109 = sub_2455E424C(v206, v208);

              v188 = sub_2455E34FC(v116);
              v210 = v209;

              if ((v210 & 1) == 0)
              {
                goto LABEL_257;
              }

              goto LABEL_150;
            }
          }

          else
          {
            v275 = sub_2455E34FC(v116);
            if (v276)
            {
              v262 = v275;
              v263 = (v0 + 776);
              v277 = *v334;
              v278 = swift_isUniquelyReferenced_nonNull_native();
              v108 = *v334;
              *(v0 + 800) = *v334;
              if (v278)
              {
                goto LABEL_210;
              }

              v266 = (v0 + 800);
LABEL_212:
              sub_2455E5E38();
              v108 = *v266;
              goto LABEL_210;
            }
          }
        }

        else
        {
          v113 = *(v0 + 984);
          v114 = *(v0 + 960);
          *(v0 + 273) = v110;
          *(v0 + 281) = v111;
          *(v0 + 283) = BYTE2(v111);
          *(v0 + 284) = BYTE3(v111);
          *(v0 + 285) = BYTE4(v111);
          *(v0 + 286) = BYTE5(v111);
          v115 = *(v114 + 20);
          v116 = *(v113 + 96);
          v117 = sub_2455D04E0();
          v118 = *v106;
          v119 = v106[1];
          v120 = v119 >> 62;
          if ((v119 >> 62) > 1)
          {
            if (v120 == 2)
            {
              v142 = v118 + 16;
              v140 = *(v118 + 16);
              v141 = *(v142 + 8);
              v121 = v141 - v140;
              if (__OFSUB__(v141, v140))
              {
                goto LABEL_249;
              }
            }

            else
            {
              v121 = 0;
            }
          }

          else if (v120)
          {
            v19 = __OFSUB__(HIDWORD(v118), v118);
            v168 = HIDWORD(v118) - v118;
            if (v19)
            {
              goto LABEL_246;
            }

            v121 = v168;
          }

          else
          {
            v121 = BYTE6(v119);
          }

          v182 = IOHIDValueCreateWithBytes(0, v116, v117, (v0 + 273), v121);
          if (v182)
          {
            v171 = v182;
            if ((v109 & 0xC000000000000001) != 0)
            {
              if (v109 < 0)
              {
                v183 = v109;
              }

              else
              {
                v183 = v109 & 0xFFFFFFFFFFFFFF8;
              }

              v184 = sub_2455E9F20();
              if (__OFADD__(v184, 1))
              {
                goto LABEL_236;
              }

              v174 = (v0 + 776);
              *v334 = sub_2455E424C(v183, v184 + 1);
            }

            else
            {
              v174 = (v0 + 776);
              v225 = *v334;
            }

            v226 = swift_isUniquelyReferenced_nonNull_native();
            v227 = *v174;
            *v325 = *v174;
            v215 = sub_2455E34FC(v116);
            v229 = *(v227 + 16);
            v230 = (v228 & 1) == 0;
            v19 = __OFADD__(v229, v230);
            v231 = v229 + v230;
            if (v19)
            {
              goto LABEL_232;
            }

            v232 = v228;
            if (*(v227 + 24) >= v231)
            {
              if ((v226 & 1) == 0)
              {
                v281 = v215;
                sub_2455E5E38();
                v215 = v281;
              }
            }

            else
            {
              sub_2455E4F3C(v231, v226);
              v233 = *v325;
              v215 = sub_2455E34FC(v116);
              if ((v232 & 1) != (v234 & 1))
              {
                goto LABEL_222;
              }
            }

            v108 = *v325;
            if (v232)
            {
              goto LABEL_192;
            }

            *(v108 + 8 * (v215 >> 6) + 64) |= 1 << v215;
            *(*(v108 + 48) + 8 * v215) = v116;
            *(*(v108 + 56) + 8 * v215) = v171;
            v235 = *(v108 + 16);
            v19 = __OFADD__(v235, 1);
            v224 = v235 + 1;
            if (v19)
            {
              goto LABEL_241;
            }

            goto LABEL_194;
          }

          if ((v108 & 0xC000000000000001) != 0)
          {
            if (v108 < 0)
            {
              v185 = v108;
            }

            else
            {
              v185 = v108 & 0xFFFFFFFFFFFFFF8;
            }

            v116 = v116;
            v186 = sub_2455E9F50();

            if (v186)
            {
              swift_unknownObjectRelease();

              v187 = sub_2455E9F20();
              v109 = sub_2455E424C(v185, v187);

              v188 = sub_2455E34FC(v116);
              v190 = v189;

              if ((v190 & 1) == 0)
              {
                goto LABEL_255;
              }

LABEL_150:

              v211 = *(*(v109 + 56) + 8 * v188);
              sub_2455E5218(v188, v109);

              *v334 = v109;
LABEL_201:
              v108 = v109;
              goto LABEL_40;
            }
          }

          else
          {
            v267 = sub_2455E34FC(v116);
            if (v268)
            {
              v262 = v267;
              v263 = (v0 + 776);
              v269 = *v334;
              v270 = swift_isUniquelyReferenced_nonNull_native();
              v108 = *v334;
              *(v0 + 816) = *v334;
              if ((v270 & 1) == 0)
              {
                v266 = (v0 + 816);
                goto LABEL_212;
              }

LABEL_210:

              v279 = *(*(v108 + 56) + 8 * v262);
              sub_2455E5218(v262, v108);

              *v263 = v108;
              goto LABEL_196;
            }
          }
        }

LABEL_40:
        ++v105;
        sub_2455E6788(*(v0 + 984), type metadata accessor for HIDElement.Value);
        if (v333 == v105)
        {
          goto LABEL_218;
        }
      }
    }

    v78 = *(v0 + 1000);
    v79 = *(v0 + 912);
    v80 = *(v0 + 904);
    v77(v78, 1, 1, *(v0 + 1008));
    sub_2455A7680(v78, &qword_27EE15198, &qword_2455F1678);
    sub_2455ABC88(v0 + 432, v0 + 512);
    if (swift_dynamicCast())
    {
      break;
    }

    v81 = *(v0 + 920);
    v82 = *(v0 + 912);
    v83 = *(v0 + 904);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));
    (*(v81 + 56))(v83, 1, 1, v82);
    v48 = sub_2455A7680(v83, &qword_27EE15190, &qword_2455F1670);
    v70 = *(v0 + 1104) + 1;
    if (v70 == *(v0 + 1088))
    {
      goto LABEL_34;
    }
  }

  v284 = *(v0 + 952);
  v285 = *(v0 + 912);
  v286 = *(v0 + 904);
  (*(*(v0 + 920) + 56))(v286, 0, 1, v285);
  sub_2455E6F48(v286, v284, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
  v288 = *(v284 + *(v285 + 20));
  v289 = *(v288 + 16);
  v290 = MEMORY[0x277D84F90];
  if (v289)
  {
    *v1 = MEMORY[0x277D84F90];
    sub_2455E9E40();
    v291 = (v288 + 128);
    do
    {
      v292 = *v291;
      v291 += 16;
      v293 = v292;
      sub_2455E9E20();
      v294 = *(*v1 + 16);
      sub_2455E9E50();
      sub_2455E9E60();
      sub_2455E9E30();
      --v289;
    }

    while (v289);
    v290 = *v1;
  }

  *(v0 + 1136) = v290;
  v295 = *(v0 + 1072);
  v296 = *(v0 + 1064);
  v297 = *(v0 + 1048);
  v298 = *(v0 + 880);
  v299 = sub_2455E6848(&qword_27EE15178, v287, type metadata accessor for HIDDeviceClient);
  v300 = swift_task_alloc();
  *(v0 + 1144) = v300;
  v300[2] = v296;
  v300[3] = v298;
  v300[4] = v290;
  v300[5] = v295;
  v300[6] = v297;
  v301 = *(MEMORY[0x277D85A40] + 4);
  v302 = swift_task_alloc();
  *(v0 + 1152) = v302;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151B0, &qword_2455F1698);
  *v302 = v0;
  v302[1] = sub_2455DD5A0;
  v304 = *MEMORY[0x277D85DE8];
  v305 = v303;
  v306 = sub_2455E6FC8;
  v307 = (v0 + 736);
LABEL_219:

  return MEMORY[0x2822008A0](v307, v298, v299, 0xD00000000000001ALL, 0x80000002455F3230, v306, v300, v305);
}

void sub_2455E2D90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  sub_2455E8FD4(a1, a2);
}

uint64_t static HIDDeviceClient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IOHIDDevice(0);
  v4 = *(a1 + 296);
  v5 = *(a2 + 296);
  sub_2455E6848(&qword_27EE151C0, 255, type metadata accessor for IOHIDDevice);
  return sub_2455E9A50() & 1;
}

uint64_t sub_2455E2E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for IOHIDDevice(0);
  v4 = *(v2 + 296);
  v5 = *(v3 + 296);
  sub_2455E6848(&qword_27EE151C0, 255, type metadata accessor for IOHIDDevice);
  return sub_2455E9A50() & 1;
}

uint64_t HIDDeviceClient.hash(into:)()
{
  v1 = *(v0 + 296);
  type metadata accessor for IOHIDDevice(0);
  sub_2455E6848(&qword_27EE151C0, 255, type metadata accessor for IOHIDDevice);
  return sub_2455E9A60();
}

uint64_t HIDDeviceClient.hashValue.getter()
{
  sub_2455EA080();
  type metadata accessor for HIDDeviceClient();
  sub_2455E6848(&qword_27EE14E00, v0, type metadata accessor for HIDDeviceClient);
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455E3024()
{
  v2 = *v0;
  sub_2455EA080();
  type metadata accessor for HIDDeviceClient();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t sub_2455E3080()
{
  v1 = *(*v0 + 296);
  type metadata accessor for IOHIDDevice(0);
  sub_2455E6848(&qword_27EE151C0, 255, type metadata accessor for IOHIDDevice);
  return sub_2455E9A60();
}

uint64_t sub_2455E3104()
{
  v2 = *v0;
  sub_2455EA080();
  type metadata accessor for HIDDeviceClient();
  sub_2455E9B00();
  return sub_2455EA0D0();
}

uint64_t HIDDeviceClient.description.getter()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return v1;
}

uint64_t sub_2455E318C()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 320);

  return v1;
}

uint64_t HIDDeviceClient.DeviceReference.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EB0, &unk_2455F15E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2455EAC10;
  v3 = MEMORY[0x277D84D90];
  *(v2 + 56) = MEMORY[0x277D84D38];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_2455E9B70();
}

uint64_t sub_2455E3250()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14EB0, &unk_2455F15E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2455EAC10;
  v3 = MEMORY[0x277D84D90];
  *(v2 + 56) = MEMORY[0x277D84D38];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_2455E9B70();
}

uint64_t sub_2455E32F0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2455E9A70();
}

uint64_t sub_2455E333C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2455E9A60();
}

uint64_t sub_2455E33AC()
{
  sub_2455EA080();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2455E9A60();
  return sub_2455EA0D0();
}

uint64_t sub_2455E3410(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2455E9A50();
}

uint64_t sub_2455E347C(uint64_t a1, void (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_2455EA080();
  a2(v10);
  v7 = sub_2455EA0D0();

  return a3(a1, v7);
}

unint64_t sub_2455E34FC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2455EA080();
  type metadata accessor for IOHIDElement();
  sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement);
  sub_2455E9A60();
  v4 = sub_2455EA0D0();

  return sub_2455E40D8(a1, v4);
}

char *sub_2455E35B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15288, &qword_2455F1E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 6 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t sub_2455E36C0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15250, &qword_2455F1D48);
  v10 = *(type metadata accessor for HIDElement.Value() - 8);
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
  v15 = *(type metadata accessor for HIDElement.Value() - 8);
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

void *sub_2455E3898(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15118, &qword_2455F15F0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15130, &qword_2455F1610);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2455E39CC(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = type metadata accessor for HIDElement.Value();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v29 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  v12 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2;
  v16 = -1 << *(v2 + 32);
  result = a2 & ~v16;
  v31 = v2 + 64;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v30 = ~v16;
    v32 = *(v13 + 72);
    v34 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v18 = *(v33 + 48);
      v36 = result;
      sub_2455E661C(v18 + v32 * result, v15, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      result = sub_2455E9E80();
      if (result)
      {
        v19 = *(v29 + 20);
        v20 = *&v34[v19];
        v21 = *(v35 + v19);
        v22 = *(v20 + 16);
        if (v22 == *(v21 + 16))
        {
          break;
        }
      }

LABEL_3:
      v15 = v34;
      sub_2455E6788(v34, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      result = (v36 + 1) & v30;
      if (((*(v31 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (!v22 || v20 == v21)
    {
LABEL_13:
      sub_2455E6788(v34, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      return v36;
    }

    else
    {
      v23 = 0;
      v24 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v37 = v20 + v24;
      v25 = v21 + v24;
      while (v23 < *(v20 + 16))
      {
        v26 = *(v39 + 72) * v23;
        result = sub_2455E661C(v37 + v26, v11, type metadata accessor for HIDElement.Value);
        if (v23 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        sub_2455E661C(v25 + v26, v8, type metadata accessor for HIDElement.Value);
        sub_2455E6848(&qword_27EE14E90, 255, type metadata accessor for HIDElement.Value);
        v27 = sub_2455E9B50();
        sub_2455E6788(v8, type metadata accessor for HIDElement.Value);
        result = sub_2455E6788(v11, type metadata accessor for HIDElement.Value);
        if ((v27 & 1) == 0)
        {
          goto LABEL_3;
        }

        if (v22 == ++v23)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_2455E3D58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + 64;
  v11 = -1 << *(v2 + 32);
  result = a2 & ~v11;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v13 = *(v7 + 72);
  v40 = ~v11;
  v41 = v13;
  v38 = a1;
  v39 = v2;
  v36 = v2 + 64;
  v37 = v5;
  while (1)
  {
    v14 = *(v2 + 48);
    v43 = result;
    sub_2455E661C(v14 + v41 * result, v9, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
    result = sub_2455E9E80();
    if ((result & 1) == 0)
    {
      goto LABEL_4;
    }

    v15 = *(v5 + 20);
    v16 = *&v9[v15];
    v17 = *(a1 + v15);
    v18 = *(v16 + 16);
    if (v18 != *(v17 + 16))
    {
      goto LABEL_4;
    }

    if (v18 && v16 != v17)
    {
      break;
    }

LABEL_3:
    v5 = v37;
    a1 = v38;
    v2 = v39;
    v10 = v36;
    if (v9[*(v37 + 24)] == *(v38 + *(v37 + 24)))
    {
      sub_2455E6788(v9, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      return v43;
    }

LABEL_4:
    sub_2455E6788(v9, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
    result = (v43 + 1) & v40;
    if (((*(v10 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      return result;
    }
  }

  if (*(v16 + 16))
  {
    v20 = 0;
    v21 = (v16 + 32);
    v22 = (v17 + 32);
    v42 = v18 - 1;
    while (1)
    {
      v23 = *v21;
      v24 = v21[1];
      v25 = v21[3];
      v49[2] = v21[2];
      v49[3] = v25;
      v49[0] = v23;
      v49[1] = v24;
      v26 = v21[4];
      v27 = v21[5];
      v28 = v21[6];
      *(v50 + 9) = *(v21 + 105);
      v49[5] = v27;
      v50[0] = v28;
      v49[4] = v26;
      result = memmove(v47, v21, 0x79uLL);
      if (v20 >= *(v17 + 16))
      {
        break;
      }

      v29 = *v22;
      v30 = v22[1];
      v31 = v22[3];
      v51[2] = v22[2];
      v51[3] = v31;
      v51[0] = v29;
      v51[1] = v30;
      v32 = v22[4];
      v33 = v22[5];
      v34 = v22[6];
      *(v52 + 9) = *(v22 + 105);
      v51[5] = v33;
      v52[0] = v34;
      v51[4] = v32;
      memmove(v45, v22, 0x79uLL);
      sub_2455A5D68(v49, v44);
      sub_2455A5D68(v51, v44);
      sub_2455A700C();
      v35 = sub_2455E9B50();
      v53[4] = v45[4];
      v53[5] = v45[5];
      v54[0] = v46[0];
      *(v54 + 9) = *(v46 + 9);
      v53[0] = v45[0];
      v53[1] = v45[1];
      v53[2] = v45[2];
      v53[3] = v45[3];
      sub_2455A5DA0(v53);
      v55[4] = v47[4];
      v55[5] = v47[5];
      v56[0] = v48[0];
      *(v56 + 9) = *(v48 + 9);
      v55[0] = v47[0];
      v55[1] = v47[1];
      v55[2] = v47[2];
      v55[3] = v47[3];
      result = sub_2455A5DA0(v55);
      if ((v35 & 1) == 0)
      {
        a1 = v38;
        v2 = v39;
        v10 = v36;
        v5 = v37;
        goto LABEL_4;
      }

      if (v42 == v20)
      {
        goto LABEL_3;
      }

      v21 += 8;
      v22 += 8;
      if (++v20 >= *(v16 + 16))
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2455E40D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for IOHIDElement();
    sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2455E9A50();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2455E41E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2455E9F20();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_2455E424C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15248, &qword_2455F1D40);
    v2 = sub_2455E9FB0();
    v17 = v2;
    sub_2455E9ED0();
    if (sub_2455E9F60())
    {
      type metadata accessor for IOHIDElement();
      do
      {
        swift_dynamicCast();
        type metadata accessor for IOHIDValue(0);
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2455E4F3C(v10 + 1, 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        sub_2455EA080();
        sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement);
        sub_2455E9A60();
        result = sub_2455EA0D0();
        v5 = v17 + 64;
        v6 = -1 << *(v17 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v17 + 48) + 8 * v9) = v16;
        *(*(v17 + 56) + 8 * v9) = v15;
        ++*(v17 + 16);
      }

      while (sub_2455E9F60());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2455E44CC(uint64_t a1, int a2)
{
  v3 = v2;
  v64 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
  v59 = *(v64 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v64);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15260, &qword_2455F1D58);
  v60 = a2;
  v11 = sub_2455E9FA0();
  v12 = v11;
  if (*(v9 + 16))
  {
    v65 = v8;
    v13 = 0;
    v14 = *(v9 + 64);
    v55 = v3;
    v56 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v19 = v11 + 64;
    v57 = v11;
    v58 = v9;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v63 = (v17 - 1) & v17;
LABEL_17:
      v26 = v22 | (v13 << 6);
      v27 = *(v9 + 48);
      v62 = *(v59 + 72);
      v28 = v27 + v62 * v26;
      v29 = 16 * v26;
      v30 = v65;
      if (v60)
      {
        sub_2455E6F48(v28, v65, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v31 = *(v9 + 56) + v29;
        v32 = *v31;
        v61 = *(v31 + 8);
      }

      else
      {
        sub_2455E661C(v28, v65, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
        v33 = *(v9 + 56) + v29;
        v32 = *v33;
        v34 = *(v33 + 8);
        v35 = *v33;
        v61 = v34;
        sub_2455E6FBC(v35, v34);
      }

      v36 = v12[5];
      sub_2455EA080();
      sub_2455E9E90();
      sub_2455E6848(&qword_27EE14E30, 255, MEMORY[0x277D85938]);
      sub_2455E9B00();
      v37 = *(v30 + *(v64 + 20));
      MEMORY[0x245D6BE80](*(v37 + 16));
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = (v37 + 32);
        do
        {
          v40 = *v39;
          v41 = v39[1];
          v42 = v39[3];
          v66[2] = v39[2];
          v66[3] = v42;
          v66[0] = v40;
          v66[1] = v41;
          v43 = v39[4];
          v44 = v39[5];
          v45 = v39[6];
          *(v67 + 9) = *(v39 + 105);
          v66[5] = v44;
          v67[0] = v45;
          v66[4] = v43;
          memmove(v70, v39, 0x79uLL);
          sub_2455A5D68(v66, v68);
          sub_2455A5F88();
          sub_2455E9B00();
          v68[4] = v70[4];
          v68[5] = v70[5];
          v69[0] = v71[0];
          *(v69 + 9) = *(v71 + 9);
          v68[0] = v70[0];
          v68[1] = v70[1];
          v68[2] = v70[2];
          v68[3] = v70[3];
          sub_2455A5DA0(v68);
          v39 += 8;
          --v38;
        }

        while (v38);
      }

      v46 = v65[*(v64 + 24)];
      sub_2455EA0A0();
      result = sub_2455EA0D0();
      v12 = v57;
      v47 = -1 << *(v57 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v19 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        v9 = v58;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v19 + 8 * v49);
          if (v53 != -1)
          {
            v20 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v48) & ~*(v19 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
      v9 = v58;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_2455E6F48(v65, v12[6] + v62 * v20, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v21 = v12[7] + 16 * v20;
      *v21 = v32;
      *(v21 + 8) = v61;
      ++v12[2];
      v17 = v63;
    }

    v23 = v13;
    result = v56;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v56[v13];
      ++v23;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v63 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v55;
      goto LABEL_39;
    }

    v54 = 1 << *(v9 + 32);
    v3 = v55;
    if (v54 >= 64)
    {
      bzero(v56, ((v54 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v56 = -1 << v54;
    }

    *(v9 + 16) = 0;
  }

LABEL_39:
  *v3 = v12;
  return result;
}

uint64_t sub_2455E49CC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for HIDElement.Value();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v15 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15258, &qword_2455F1D50);
  v61 = a2;
  v16 = sub_2455E9FA0();
  v17 = v16;
  if (*(v14 + 16))
  {
    v52 = v3;
    v18 = 0;
    v19 = *(v14 + 64);
    v53 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v24 = v16 + 64;
    v57 = v16;
    v58 = v14;
    v55 = v23;
    v56 = v13;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v65 = (v22 - 1) & v22;
LABEL_17:
      v31 = v27 | (v18 << 6);
      v32 = *(v14 + 48);
      v64 = *(v59 + 72);
      v33 = v32 + v64 * v31;
      v34 = 16 * v31;
      if (v61)
      {
        sub_2455E6F48(v33, v13, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v35 = *(v14 + 56) + v34;
        v63 = *v35;
        v62 = *(v35 + 8);
      }

      else
      {
        sub_2455E661C(v33, v13, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
        v36 = *(v14 + 56) + v34;
        v37 = *(v36 + 8);
        v63 = *v36;
        v62 = v37;
        sub_2455E6FB0(v63, v37);
      }

      v38 = v17[5];
      sub_2455EA080();
      sub_2455E9E90();
      sub_2455E6848(&qword_27EE14E30, 255, MEMORY[0x277D85938]);
      sub_2455E9B00();
      v39 = *&v13[*(v60 + 20)];
      MEMORY[0x245D6BE80](*(v39 + 16));
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = v39 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
        v42 = *(v54 + 72);
        do
        {
          sub_2455E661C(v41, v9, type metadata accessor for HIDElement.Value);
          sub_2455E6848(&qword_27EE15188, 255, type metadata accessor for HIDElement.Value);
          sub_2455E9B00();
          sub_2455E6788(v9, type metadata accessor for HIDElement.Value);
          v41 += v42;
          --v40;
        }

        while (v40);
      }

      result = sub_2455EA0D0();
      v17 = v57;
      v43 = -1 << *(v57 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v24 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v14 = v58;
        v13 = v56;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v24 + 8 * v45);
          if (v49 != -1)
          {
            v25 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v44) & ~*(v24 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v14 = v58;
      v13 = v56;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      sub_2455E6F48(v13, v17[6] + v64 * v25, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v26 = v17[7] + 16 * v25;
      *v26 = v63;
      *(v26 + 8) = v62;
      ++v17[2];
      v23 = v55;
      v22 = v65;
    }

    v28 = v18;
    result = v53;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v18 >= v23)
      {
        break;
      }

      v30 = v53[v18];
      ++v28;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v65 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v61 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_39;
    }

    v50 = 1 << *(v14 + 32);
    v3 = v52;
    if (v50 >= 64)
    {
      bzero(v53, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v53 = -1 << v50;
    }

    *(v14 + 16) = 0;
  }

LABEL_39:
  *v3 = v17;
  return result;
}

uint64_t sub_2455E4F3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15248, &qword_2455F1D40);
  v35 = a2;
  result = sub_2455E9FA0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_2455EA080();
      type metadata accessor for IOHIDElement();
      sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement);
      sub_2455E9A60();
      result = sub_2455EA0D0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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
        goto LABEL_37;
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_2455E5218(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2455E9DE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2455EA080();
      type metadata accessor for IOHIDElement();
      sub_2455E6848(&qword_27EE14DF8, 255, type metadata accessor for IOHIDElement);
      v11 = v10;
      sub_2455E9A60();
      v12 = sub_2455EA0D0();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}