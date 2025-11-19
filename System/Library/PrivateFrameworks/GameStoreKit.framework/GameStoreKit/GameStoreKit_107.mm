uint64_t sub_24F0EE0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v23 - v17;
  v19 = sub_24F92B858();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a4, v12);
  v20 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a3;
  (*(v13 + 32))(v21 + v20, v15, v12);

  sub_24EA998B8(0, 0, v18, &unk_24F9C9020, v21);
}

uint64_t sub_24F0EE2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a7;
  v10 = swift_task_alloc();
  *(v7 + 32) = v10;
  *v10 = v7;
  v10[1] = sub_24F0EE39C;

  return sub_24F0F0634(a5, a6);
}

uint64_t sub_24F0EE39C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_24F0EE49C, 0, 0);
}

uint64_t sub_24F0EE49C()
{
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);
  sub_24F92B798();
  v1 = v0[1];

  return v1();
}

uint64_t sub_24F0EE524(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v25 = sub_24F927D88();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927DC8();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  sub_24E69A5C4(0, &qword_27F222300);
  v23 = sub_24F92BEF8();
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v21[1] = *(a2 + 24);
  v21[2] = v12;
  v31 = v11;
  (*(v8 + 16))(v10, v22, v7);
  v13 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 1) = *a2;
  *(v14 + 2) = v15;
  *(v14 + 3) = *(a2 + 32);
  (*(v8 + 32))(&v14[v13], v10, v7);
  aBlock[4] = sub_24F0F104C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_17_3;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_24E60169C(&v31, &v29, &qword_27F239400);
  sub_24F927DA8();
  v29 = MEMORY[0x277D84F90];
  sub_24F0F1C94(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  v18 = v24;
  v17 = v25;
  sub_24F92C6A8();
  v19 = v23;
  MEMORY[0x2530518B0](0, v6, v18, v16);
  _Block_release(v16);

  (*(v28 + 8))(v18, v17);
  (*(v26 + 8))(v6, v27);
}

uint64_t sub_24F0EE938(uint64_t *a1, uint64_t a2)
{
  v31 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428);
  v26 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = &v23 - v3;
  v30 = sub_24F921378();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_24F921358();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_24F921348();
  v15 = *(v9 + 16);
  v29 = v8;
  v15(v11, v14, v8);
  sub_24F921388();
  v16 = *a1;
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v16;
  v17 = v28;
  (*(v28 + 16))(v24, v7, v30);
  v18 = v26;
  (*(v26 + 16))(v27, v31, v32);
  v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v20 = (v4 + *(v18 + 80) + v19) & ~*(v18 + 80);
  v21 = swift_allocObject();
  (*(v17 + 32))(v21 + v19, v24, v30);
  (*(v18 + 32))(v21 + v20, v27, v32);
  sub_24F9213E8();

  (*(v28 + 8))(v7, v30);
  return (*(v9 + 8))(v14, v29);
}

uint64_t sub_24F0EEE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428);
  v5 = *(v4 - 8);
  v21 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = sub_24F921378();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a2, v8);
  v16 = v4;
  (*(v5 + 16))(v7, v22, v4);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v9 + 32))(v19 + v17, v11, v8);
  (*(v5 + 32))(v19 + v18, v7, v16);
  sub_24F1F2908(0, 0, v14, &unk_24F9C9080, v19);

  return sub_24E601704(v14, &unk_27F21B570);
}

uint64_t sub_24F0EF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return MEMORY[0x2822009F8](sub_24F0EF124, 0, 0);
}

uint64_t sub_24F0EF124()
{
  v1 = sub_24F921368();
  if (v1 >> 62)
  {
    v3 = v1;
    v4 = sub_24F92C738();
    v1 = v3;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    v2 = 0;
    goto LABEL_9;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253052270](0);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v2 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239438);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v6 = *MEMORY[0x277CBFA40];
  *(inited + 32) = *MEMORY[0x277CBFA40];
  v7 = v6;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColorSpace(0);
  *(inited + 64) = v9;
  *(inited + 40) = DeviceRGB;
  sub_24E6101C0(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &unk_27F239440);
  if (v2)
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBF758]);
    type metadata accessor for CIImageOption(0);
    sub_24F0F1C94(&qword_27F212680, type metadata accessor for CIImageOption);
    swift_unknownObjectRetain_n();
    v11 = sub_24F92AE28();

    v12 = [v10 initWithMTLTexture:v2 options:v11];

    swift_unknownObjectRelease_n();
    if (v12)
    {
      v0[12] = v12;
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428);
      sub_24F92B798();
      swift_unknownObjectRelease();

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (qword_27F211470 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v14 = sub_24F9220D8();
  __swift_project_value_buffer(v14, qword_27F39E9A0);
  v15 = sub_24F9220B8();
  v16 = sub_24F92BDB8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24E5DD000, v15, v16, "Failed to render three dimensional content", v17, 2u);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v0[11] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428);
  sub_24F92B798();
  swift_unknownObjectRelease();
LABEL_17:
  v18 = v0[1];

  return v18();
}

uint64_t sub_24F0EF490()
{
  sub_24F0EF50C(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_24F0EF50C(uint64_t result)
{
  if (result)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F0EF59C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F0EF67C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0) - 8);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_24F0EE0C8(v2, v3, v6, v7, v4, v5);
}

uint64_t sub_24F0EF70C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F0EF7F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24F0EE2EC(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_24F0EF924(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_24F0EF970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239450);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_24F9289E8();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0EFA9C, 0, 0);
}

uint64_t sub_24F0EFA9C()
{
  *(v0 + 128) = sub_24F92B7F8();
  *(v0 + 136) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EFB34, v2, v1);
}

uint64_t sub_24F0EFB34()
{

  sub_24F91FD28();
  v1 = sub_24F91FB18();
  *(v2 + 32) = xmmword_24F9C8F40;
  v1(v0 + 16, 0);

  return MEMORY[0x2822009F8](sub_24F0EFBE4, 0, 0);
}

uint64_t sub_24F0EFBE4()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v22 = v0[11];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = (v3 + 8);
    v20 = *(v3 + 72);
    v5 = MEMORY[0x277D84F90];
    v6 = *(v3 + 16);
    do
    {
      v7 = v0[15];
      v9 = v0[12];
      v8 = v0[13];
      v6(v7, v4, v8);
      v6(v9, v7, v8);
      sub_24F91F6A8();
      (*v19)(v7, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E619C18(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        v5 = sub_24E619C18(v10 > 1, v11 + 1, 1, v5);
      }

      v12 = v0[12];
      v5[2] = v11 + 1;
      sub_24E6009C8(v12, v5 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v11, &unk_27F239450);
      v4 += v20;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v0[18] = v5;
  v13 = v0[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v15 = swift_task_alloc();
  v0[19] = v15;
  *(v15 + 16) = v5;
  *(v15 + 24) = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460);
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_24F0EFE80;

  return MEMORY[0x282200600](v0 + 6, v14, v16, 0, 0, &unk_24F9C90A0, v15, v14);
}

uint64_t sub_24F0EFE80()
{

  return MEMORY[0x2822009F8](sub_24F0EFFB4, 0, 0);
}

uint64_t sub_24F0EFFB4()
{
  v0[21] = v0[6];
  v0[22] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0F0048, v2, v1);
}

uint64_t sub_24F0F0048()
{
  v1 = v0[21];
  v2 = v0[9];

  sub_24E7B5088(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F0F0100()
{
  if (qword_27F211470 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E9A0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Using main thread for RealityRenderer operations", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = swift_task_alloc();
  v0[4] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239420);
  *v7 = v0;
  v7[1] = sub_24F0F02BC;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000002ELL, 0x800000024FA6BCA0, sub_24F0F0F4C, v6, v8);
}

uint64_t sub_24F0F02BC()
{

  return MEMORY[0x2822009F8](sub_24E626BB4, 0, 0);
}

id sub_24F0F03D4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v3 = *MEMORY[0x277CBF940];
  *(inited + 32) = *MEMORY[0x277CBF940];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  v4 = v3;
  sub_24E610098(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &unk_27F239410);
  v5 = objc_allocWithZone(MEMORY[0x277CBF740]);
  type metadata accessor for CIContextOption(0);
  sub_24F0F1C94(&qword_27F212690, type metadata accessor for CIContextOption);
  v6 = sub_24F92AE28();

  v7 = [v5 initWithOptions_];

  [a1 extent];
  v8 = [v7 createCGImage:a1 fromRect:?];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v8 imageOrientation:5];
  }

  else
  {
    if (qword_27F211470 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E9A0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Failed to create CIImage.", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_24F0F0634(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = swift_task_alloc();
  v2[16] = v3;
  *v3 = v2;
  v3[1] = sub_24F0F06CC;

  return sub_24F0E9198((v2 + 2));
}

uint64_t sub_24F0F06CC()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F0F0DA4, 0, 0);
  }

  else
  {
    v3 = v2[5];
    v2[18] = v3;
    v4 = swift_task_alloc();
    v2[19] = v4;
    *v4 = v2;
    v4[1] = sub_24F0F0848;
    v5 = v2[15];
    v6 = v2[14];

    return sub_24F0EF970(v6, v5, v3);
  }
}

uint64_t sub_24F0F0848()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  *v2 = v4;
  v2[1] = sub_24F0F0978;

  return sub_24F0F00E0(v1 + 16);
}

uint64_t sub_24F0F0978(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_24F0F0A78, 0, 0);
}

uint64_t sub_24F0F0A78()
{
  v1 = *(v0 + 168);
  if (!v1)
  {
    if (qword_27F211470 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E9A0);
    v5 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    if (!os_log_type_enabled(v5, v10))
    {
      v3 = 0;
      v7 = (v0 + 64);
      goto LABEL_21;
    }

    v7 = (v0 + 72);
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24E5DD000, v5, v10, "CIImage is nil, returning nil", v11, 2u);
    MEMORY[0x2530542D0](v11, -1, -1);
    goto LABEL_20;
  }

  v2 = sub_24F0F03D4(*(v0 + 168));
  if (!v2)
  {
    if (qword_27F211470 != -1)
    {
      swift_once();
    }

    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E9A0);
    v5 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v13))
    {
      v7 = (v0 + 88);
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v13, "Failed to convert CIImage to platform image", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    else
    {
      v7 = (v0 + 80);
    }

LABEL_20:
    v3 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  if (qword_27F211470 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E9A0);
  v5 = sub_24F9220B8();
  v6 = sub_24F92BD98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = (v0 + 104);
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v5, v6, "Successfully converted to platform image", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
    v7 = (v0 + 96);
  }

LABEL_21:

  swift_unknownObjectRelease();

  *v7 = *(v0 + 56);
  sub_24E601704(v7, &qword_27F239400);

  v15 = *(v0 + 8);

  return v15(v3);
}

uint64_t sub_24F0F0DA4()
{
  if (qword_27F211470 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E9A0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to create renderer components: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_24F0F0F54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F0F104C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428) - 8);
  v2 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_24F0EE938((v0 + 16), v2);
}

uint64_t sub_24F0F10BC()
{
  v1 = sub_24F921378();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F0F1210(uint64_t a1)
{
  v3 = *(sub_24F921378() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24F0EEE30(a1, v1 + v4, v7);
}

uint64_t sub_24F0F12F0()
{
  v1 = sub_24F921378();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F0F144C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F921378() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24F0EF104(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24F0F15A8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24E6541E4;

  return sub_24F0EC3FC(a1, a2, v7, v6);
}

uint64_t sub_24F0F165C()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F0F17C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F9289E8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_24F91F6B8() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E614970;

  return sub_24F0ED2E0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_24F0F192C()
{

  return swift_deallocObject();
}

uint64_t sub_24F0F1984(uint64_t result)
{
  if (result)
  {

    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_24F0F1A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F0E9C74(a1, v4, v5, v6);
}

uint64_t sub_24F0F1AE8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E6541E4;

  return sub_24F0EBB08(a1, v1);
}

unint64_t sub_24F0F1B84()
{
  result = qword_27F2394D0;
  if (!qword_27F2394D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2394D0);
  }

  return result;
}

uint64_t sub_24F0F1BE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F0EBCC8(a1, v4, v5, v6);
}

uint64_t sub_24F0F1C94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F0F1CF0()
{
  result = qword_27F2394F8;
  if (!qword_27F2394F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2394F8);
  }

  return result;
}

uint64_t sub_24F0F1D50@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24E643A9C(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_24E612B0C(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_24E601704(v21, &qword_27F234F80);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PageChangeMetrics.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageChangeMetrics.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PageChangeMetrics.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_24F9285B8();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v28 = *(v7 + 8);
  v29 = v6;
  v28(v10, v6);
  v15 = sub_24F928E68();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_24E601704(v13, qword_27F221C40);
  }

  else
  {
    v17 = sub_24F928E48();
    (*(v16 + 8))(v13, v15);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v17 = sub_24E608448(MEMORY[0x277D84F90]);

LABEL_5:
  v18 = v33;
  v19 = v14;
  v20 = v31;
  *(v33 + 16) = v17;
  sub_24F928398();
  v21 = v32;
  (*(v3 + 16))(v5, v32, v20);
  sub_24F928698();
  v22 = v30;
  v23 = sub_24F92B678();
  v24 = v20;
  if (v22)
  {
    (*(v3 + 8))(v21, v20);
    v28(v19, v29);

    type metadata accessor for PageChangeMetrics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v23;
    (*(v3 + 8))(v21, v24);
    v28(v19, v29);
    *(v18 + 24) = v25;
  }

  return v18;
}

uint64_t sub_24F0F22FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = 0;
  v7 = sub_24F9287F8();
  v73 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928738();
  v72 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v66 - v13;
  MEMORY[0x28223BE20](v14);
  v86 = &v66 - v15;
  MEMORY[0x28223BE20](v16);
  v84 = &v66 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = sub_24F928818();
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  v22 = v96;
  v71 = a2;
  v24 = sub_24F9286B8();
  v25 = *v23;
  v67 = v3;
  if (v25)
  {
    v26 = v23;
    v22 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *v26;
    *v26 = 0x8000000000000000;
    sub_24F0F41A0(v22, sub_24F05AC64, 0, isUniquelyReferenced_nonNull_native, &v95);
    v68 = 0;

    *v26 = v95;
  }

  else
  {
    v68 = 0;
  }

  v24(v96, 0);
  v28 = v71;
  v69 = sub_24F928758();
  v87 = v29;
  v30 = *v29;
  v83 = *(*v29 + 16);
  if (v83)
  {
    v31 = 0;
    v32 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v85 = v30 + v32;
    v92 = v73 + 16;
    v91 = (v73 + 8);
    v78 = (v72 + 8);
    v89 = v20;
    v90 = v10;
    v79 = v32;
    v82 = v72 + 16;
    v77 = v30;
    while (v31 < *(v30 + 2))
    {
      v81 = *(v72 + 72);
      v33 = *(v72 + 16);
      v33(v20, v85 + v81 * v31, v10);
      v28 = v20;
      v22 = sub_24F9286D8();
      if (qword_27F210040 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v7, qword_27F2230B8);
      if (v22[2])
      {
        v35 = v34;
        v36 = sub_24EA0A388(&qword_27F21E608);
        v88 = v35;
        v28 = v35;
        v74 = v36;
        v37 = sub_24F92AEE8();
        v38 = -1 << *(v22 + 32);
        v6 = v37 & ~v38;
        if ((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
        {
          v80 = v33;
          v39 = ~v38;
          v40 = *(v73 + 72);
          v93 = *(v73 + 16);
          v94 = v40;
          while (1)
          {
            v93(v9, v22[6] + v94 * v6, v7);
            v10 = sub_24EA0A388(&qword_27F21E610);
            v28 = sub_24F92AFF8();
            v41 = *v91;
            (*v91)(v9, v7);
            if (v28)
            {
              break;
            }

            v6 = (v6 + 1) & v39;
            if (((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v77 = *v78;
          v77(v89, v90);
          v6 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_61;
          }

          v42 = v31;
          v43 = *v87;
          v44 = *(*v87 + 16);
          if (v6 != v44)
          {
            v70 = (v72 + 40);
            v51 = v79;
            v22 = v88;
            while (v6 < v44)
            {
              v85 = v42;
              v89 = v6;
              v83 = v6 * v81;
              v28 = v84;
              v80(v84, v43 + v51 + v6 * v81, v90);
              v52 = sub_24F9286D8();
              if (*(v52 + 16) && (v28 = v22, v53 = sub_24F92AEE8(), v54 = -1 << *(v52 + 32), v55 = v53 & ~v54, ((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) != 0))
              {
                v56 = ~v54;
                while (1)
                {
                  v93(v9, *(v52 + 48) + v55 * v94, v7);
                  v28 = sub_24F92AFF8();
                  v41(v9, v7);
                  if (v28)
                  {
                    break;
                  }

                  v55 = (v55 + 1) & v56;
                  if (((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }

                v77(v84, v90);
                v42 = v85;
                v51 = v79;
                v6 = (v89 + 1);
                if (__OFADD__(v89, 1))
                {
                  goto LABEL_53;
                }
              }

              else
              {
LABEL_34:

                v77(v84, v90);
                v57 = v85;
                v6 = v89;
                v51 = v79;
                if (v85 != v89)
                {
                  if ((v85 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_55;
                  }

                  v28 = *v87;
                  v58 = *(*v87 + 16);
                  if (v85 >= v58)
                  {
                    goto LABEL_56;
                  }

                  v59 = v28 + v79;
                  v73 = v85 * v81;
                  v60 = v90;
                  v6 = v82;
                  v22 = v80;
                  v80(v76, v28 + v79 + v85 * v81, v90);
                  if (v89 >= v58)
                  {
                    goto LABEL_57;
                  }

                  (v22)(v75, v59 + v83, v60);
                  v61 = swift_isUniquelyReferenced_nonNull_native();
                  *v87 = v28;
                  if ((v61 & 1) == 0)
                  {
                    v28 = sub_24ECDE2CC(v28);
                    *v87 = v28;
                  }

                  v57 = v85;
                  v6 = v89;
                  v22 = v70;
                  if (v85 >= *(v28 + 16))
                  {
                    goto LABEL_58;
                  }

                  v62 = v79;
                  v63 = *v70;
                  v64 = v28 + v79 + v73;
                  v28 = v90;
                  (*v70)(v64, v75, v90);
                  if (v6 >= *(*v87 + 16))
                  {
                    goto LABEL_59;
                  }

                  v63(*v87 + v62 + v83, v76, v28);
                  v51 = v62;
                  v22 = v88;
                }

                v65 = __OFADD__(v57, 1);
                v42 = v57 + 1;
                if (v65)
                {
                  goto LABEL_54;
                }

                v65 = __OFADD__(v6++, 1);
                if (v65)
                {
                  goto LABEL_53;
                }
              }

              v43 = *v87;
              v44 = *(*v87 + 16);
              if (v6 == v44)
              {
                goto LABEL_18;
              }
            }

            goto LABEL_52;
          }

LABEL_18:
          v10 = v90;
          if (v6 >= v42)
          {
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_20;
        }
      }

LABEL_6:

      v20 = v89;
      v10 = v90;
      (*v78)(v89, v90);
      ++v31;
      v30 = v77;
      if (v31 == v83)
      {
        v42 = *(*v87 + 16);
        v6 = v42;
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_20:
    v42 = 0;
    v6 = 0;
LABEL_21:
    sub_24F14A188(v42, v6);
    v69(v96, 0);
    v45 = sub_24F928768();
    v28 = MEMORY[0x277D84F90];
    v96[0] = MEMORY[0x277D84F90];
    v46 = *(v45 + 16);
    if (!v46)
    {
LABEL_26:

      return sub_24F928778();
    }

    v47 = 0;
    v48 = v72;
    v22 = (v72 + 8);
    v6 = v68;
    v49 = v67;
    while (v47 < *(v45 + 16))
    {
      v28 = v86;
      (*(v48 + 16))(v86, v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v10);
      sub_24F0F2DB4(v28, v49, &v95);
      if (v6)
      {
        goto LABEL_62;
      }

      ++v47;
      (*v22)(v28, v10);
      v28 = v96;
      sub_24EA0B7DC(v95);
      if (v46 == v47)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:

  (*v22)(v28, v10);

  __break(1u);

  *v28 = v95;

  __break(1u);
  return result;
}

uint64_t sub_24F0F2DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, size_t *a3@<X8>)
{
  v96 = a2;
  v99 = a3;
  v4 = sub_24F928738();
  v5 = *(v4 - 8);
  v102 = v4;
  v103 = v5;
  MEMORY[0x28223BE20](v4);
  v92 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v84 - v8;
  MEMORY[0x28223BE20](v9);
  v95 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v84 - v15;
  v16 = sub_24F928698();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  MEMORY[0x28223BE20](v26);
  v94 = &v84 - v27;
  MEMORY[0x28223BE20](v28);
  v100 = &v84 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v84 - v31;
  sub_24F928718();
  v33 = sub_24F928688();
  v97 = *(v17 + 8);
  v98 = v17 + 8;
  v97(v32, v16);
  if (*(v33 + 16) && (v34 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v35 & 1) != 0))
  {
    sub_24E643A9C(*(v33 + 56) + 32 * v34, v106);

    v36 = swift_dynamicCast();
    if (v36)
    {
      v37 = v105[0];
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = v105[1];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {

    v37 = 0;
    v38 = 0;
  }

  v39 = v101;
  v91 = v37;
  sub_24F0F3904(v96, v37, v38, a1, v101);
  sub_24F0F4130(v39, v13);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {

    sub_24E601704(v13, &qword_27F21EB88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138D8);
    v40 = v103;
    v41 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_24F93DE60;
    (*(v40 + 16))(v42 + v41, a1, v102);
    v43 = v39;
LABEL_27:
    result = sub_24E601704(v43, &qword_27F21EB88);
LABEL_28:
    *v99 = v42;
    return result;
  }

  v88 = v38;
  v89 = v17;
  (*(v17 + 32))();
  v44 = *(v103 + 16);
  v45 = v95;
  v96 = v103 + 16;
  v90 = v44;
  v44(v95, a1, v102);
  sub_24F928718();
  v87 = sub_24F928668();
  *&v86 = v46;
  v47 = v16;
  v48 = v16;
  v49 = v97;
  v97(v25, v47);
  if (sub_24F928608())
  {
    v85 = 1;
  }

  else
  {
    sub_24F928718();
    v85 = sub_24F928608();
    v49(v22, v48);
  }

  v50 = v107;
  sub_24F928718();
  v51 = sub_24F928688();
  v49(v19, v48);
  v52 = sub_24F928688();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = v51;
  sub_24F0F41A0(v52, sub_24F05AC64, 0, isUniquelyReferenced_nonNull_native, v106);
  v107 = v50;
  if (!v50)
  {

    v84 = v106[0];
    sub_24F928718();
    v54 = sub_24F928648();
    v49(v22, v48);
    v55 = sub_24F928648();
    sub_24F146F5C(v55, v54);
    sub_24F928718();
    v56 = sub_24F928638();
    v49(v22, v48);
    v57 = sub_24F928638();
    sub_24F146F88(v57, v56);
    v58 = v94;
    sub_24F928658();
    (*(v89 + 16))(v22, v58, v48);
    sub_24F928728();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138D8);
    v59 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v89 = *(v103 + 72);
    v42 = swift_allocObject();
    v86 = xmmword_24F93DE60;
    *(v42 + 16) = xmmword_24F93DE60;
    v87 = v59;
    v60 = v102;
    v90(v42 + v59, v45, v102);
    v61 = v101;
    v62 = v93;
    v63 = v48;
    if (v88)
    {
      if (v91 == 1701273968 && v88 == 0xE400000000000000)
      {

LABEL_21:
        v65 = v90;
        v90(v62, v45, v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225310);
        v66 = sub_24F9287F8();
        v67 = *(v66 - 8);
        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = v86;
        if (qword_27F210040 != -1)
        {
          swift_once();
        }

        v70 = __swift_project_value_buffer(v66, qword_27F2230B8);
        (*(v67 + 16))(v69 + v68, v70, v66);
        sub_24E802380(v69);
        swift_setDeallocating();
        (*(v67 + 8))(v69 + v68, v66);
        swift_deallocClassInstance();
        sub_24F9286E8();
        v106[3] = MEMORY[0x277D837D0];
        v106[0] = 0x6E61684365676170;
        v106[1] = 0xEA00000000006567;
        v71 = sub_24F928708();
        v72 = sub_24F928678();
        sub_24E98859C(v106, 0x707954746E657665, 0xE900000000000065);
        v72(v104, 0);
        v71(v105, 0);
        v65(v92, v62, v102);
        v74 = *(v42 + 16);
        v73 = *(v42 + 24);
        v96 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          v42 = sub_24E6193B0(v73 > 1, v74 + 1, 1, v42);
        }

        v75 = v103;
        v76 = *(v103 + 8);
        v77 = v62;
        v78 = v102;
        v76(v77, v102);
        v79 = v63;
        v80 = v63;
        v81 = v97;
        v97(v94, v79);
        v76(v95, v78);
        v81(v100, v80);
        sub_24E601704(v101, &qword_27F21EB88);
        *(v42 + 16) = v96;
        result = (*(v75 + 32))(v42 + v87 + v74 * v89, v92, v78);
        goto LABEL_28;
      }

      v64 = sub_24F92CE08();

      if (v64)
      {
        goto LABEL_21;
      }
    }

    v83 = v97;
    v97(v58, v48);
    (*(v103 + 8))(v45, v60);
    v83(v100, v48);
    v43 = v61;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void sub_24F0F3904(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v51 = a5;
  v61 = a3;
  v52 = a2;
  v6 = sub_24F928698();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v48 - v10;
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = *(a1 + 24);
  v18 = *(v17 + 16);
  v56 = v7;
  v60 = v18;
  if (!v18)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_24:
    if (!v61 || (v52 != 0x6973736572706D69 || v61 != 0xEB00000000736E6FLL) && (sub_24F92CE08() & 1) == 0)
    {
      if (*(v20 + 16))
      {
        v41 = v51;
        (*(v7 + 16))(v51, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6, v14);

LABEL_58:
        v47 = 0;
      }

      else
      {

        v47 = 1;
        v41 = v51;
      }

      goto LABEL_59;
    }

    v32 = v49;
    sub_24F928718();
    v33 = sub_24F928688();
    v34 = *(v7 + 8);
    v34(v32, v6);
    if (*(v33 + 16) && (v35 = sub_24E76D644(0x6973736572706D69, 0xEF65756575516E6FLL), (v36 & 1) != 0))
    {
      sub_24E643A9C(*(v33 + 56) + 32 * v35, v64);

      v37 = swift_dynamicCast();
      v38 = v62;
      if (!v37)
      {
        v38 = 0;
      }

      v61 = v38;
      if (v37)
      {
        v39 = v63;
      }

      else
      {
        v39 = 0;
      }

      v40 = *(v20 + 16);
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    else
    {

      v61 = 0;
      v39 = 0;
      v40 = *(v20 + 16);
      if (!v40)
      {
LABEL_54:

        v47 = 1;
        v41 = v51;
        v7 = v56;
LABEL_59:
        (*(v7 + 56))(v41, v47, 1, v6);
        return;
      }
    }

    v42 = 0;
    while (1)
    {
      if (v42 >= *(v20 + 16))
      {
        goto LABEL_63;
      }

      (*(v56 + 16))(v54, v20 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, v6);
      v43 = sub_24F928688();
      if (*(v43 + 16) && (v44 = sub_24E76D644(0x6973736572706D69, 0xEF65756575516E6FLL), (v45 & 1) != 0))
      {
        sub_24E643A9C(*(v43 + 56) + 32 * v44, v64);

        if (swift_dynamicCast())
        {
          if (v39)
          {
            if (v62 == v61 && v39 == v63)
            {

LABEL_61:

LABEL_57:
              v7 = v56;
              v41 = v51;
              (*(v56 + 32))(v51, v54, v6);
              goto LABEL_58;
            }

            v46 = sub_24F92CE08();

            if (v46)
            {

              goto LABEL_61;
            }
          }

          else
          {
          }

          goto LABEL_43;
        }
      }

      else
      {
      }

      if (!v39)
      {

        goto LABEL_57;
      }

LABEL_43:
      ++v42;
      v34(v54, v6);
      if (v40 == v42)
      {
        goto LABEL_54;
      }
    }
  }

  v19 = 0;
  v59 = v7 + 16;
  v55 = (v7 + 8);
  v20 = MEMORY[0x277D84F90];
  v57 = (v7 + 32);
  v53 = v6;
  while (v19 < *(v17 + 16))
  {
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = *(v7 + 72);
    (*(v7 + 16))(v16, v17 + v21 + v22 * v19, v6, v14);
    v23 = sub_24F928688();
    if (!*(v23 + 16) || (v24 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v25 & 1) == 0))
    {

LABEL_15:
      if (!v61)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    sub_24E643A9C(*(v23 + 56) + 32 * v24, v64);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v61)
    {
      if (v62 == v52 && v63 == v61)
      {

LABEL_16:
        v26 = *v57;
        (*v57)(v58, v16, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F458D64(0, *(v20 + 16) + 1, 1);
          v20 = v65;
        }

        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_24F458D64(v28 > 1, v29 + 1, 1);
          v20 = v65;
        }

        *(v20 + 16) = v29 + 1;
        v30 = v20 + v21 + v29 * v22;
        v6 = v53;
        v26(v30, v58, v53);
        v7 = v56;
        goto LABEL_5;
      }

      v31 = sub_24F92CE08();

      if (v31)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_4:
    (*v55)(v16, v6);
LABEL_5:
    if (v60 == ++v19)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t PageChangeMetrics.deinit()
{

  return v0;
}

uint64_t PageChangeMetrics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F0F4064@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PageChangeMetrics();
  v7 = swift_allocObject();
  result = PageChangeMetrics.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F0F4130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F0F41A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_24F0F1D50(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_24E612B0C(v44, v42);
  v14 = *a5;
  result = sub_24E76D644(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_24E89873C(v20, a4 & 1);
    result = sub_24E76D644(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_24F92CF88();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_24E8AD8E4();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_24E612B0C(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_24E612B0C(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_24F0F1D50(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_24E612B0C(v44, v42);
        v32 = *a5;
        result = sub_24E76D644(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_24E89873C(v36, 1);
          result = sub_24E76D644(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_24E612B0C(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_24E612B0C(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_24F0F1D50(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_24E6586B4();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24F0F44DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F7A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F924A78();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  if (*v2)
  {
    v64 = a1;
    sub_24F924A68();
    v59 = v4;
    v14 = sub_24F924A58();
    v15 = *(v2 + 8);
    v62 = *(v2 + 16);
    v63 = v15;
    v16 = v15(v14);
    v60 = v9;
    v61 = v8;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_24F924A28();
    sub_24E600B40(v17, v19, v21 & 1);

    v22 = sub_24F924A58();
    v23 = (*(v2 + 24))(v22);
    v25 = v24;
    v27 = v26;
    sub_24F924A28();
    sub_24E600B40(v23, v25, v27 & 1);

    sub_24F924A58();
    sub_24F924A98();
    v28 = sub_24F925DE8();
    v30 = v29;
    v32 = v31;
    sub_24F91F778();
    sub_24F91F708();
    (*(v5 + 8))(v7, v59);
    sub_24F91F788();
    v33 = sub_24F91F798();
    (*(v60 + 8))(v11, v61);
    if (v33 == 2)
    {
      v34 = sub_24F925C78();
      v36 = v35;
      v38 = v37;
    }

    else
    {
      sub_24E5FD138(v28, v30, v32 & 1);

      v34 = v28;
      v36 = v30;
      v38 = v32;
    }

    sub_24E600B40(v28, v30, v32 & 1);

    v47 = v63(v46);
    v49 = v48;
    v51 = v50;
    v52 = sub_24F925C68();
    v62 = v53;
    v63 = v52;
    v55 = v54;
    v57 = v56;
    sub_24E600B40(v47, v49, v51 & 1);

    sub_24E600B40(v34, v36, v38 & 1);

    v65 = v63;
    v66 = v55;
    v67 = v57 & 1;
    v68 = v62;
    v69 = 0;
    result = sub_24F924E28();
    v43 = v70;
    v44 = v71;
    v45 = v72;
    a1 = v64;
  }

  else
  {
    v65 = (*(v2 + 8))(v13);
    v66 = v40;
    v67 = v39 & 1;
    v68 = v41;
    v69 = 1;
    result = sub_24F924E28();
    v43 = v70;
    v44 = v71;
    v45 = v72;
  }

  *a1 = v43;
  *(a1 + 16) = v44;
  *(a1 + 32) = v45;
  return result;
}

id static SpacerSupplementary.makeTopSpacer(height:verticalOffset:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = sub_24F92B098();
  v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:1 absoluteOffset:{0.0, -a2}];

  return v9;
}

id static SpacerSupplementary.makeBottomSpacer(height:verticalOffset:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = sub_24F92B098();
  v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:5 absoluteOffset:{0.0, a2}];

  return v9;
}

uint64_t static SpacerSupplementary.makeSpacerRegistration(elementKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SpacerSupplementary();
  v6 = static UICollectionReusableView.defaultReuseIdentifier.getter();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = CGSizeMake;
  a3[5] = 0;
}

id SpacerSupplementary.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SpacerSupplementary.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SpacerSupplementary();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SpacerSupplementary.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SpacerSupplementary.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpacerSupplementary();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SpacerSupplementary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpacerSupplementary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ShelfLayoutSpacingProvider.topPadding(in:)(void *a1@<X8>)
{
  v1 = MEMORY[0x277D22A30];
  a1[3] = MEMORY[0x277D839F8];
  a1[4] = v1;
  *a1 = 0;
}

double ShelfLayoutSpacingProvider.topPaddingValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(v15, a1, a2, a3, v8);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  type metadata accessor for ShelfLayoutContext();
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

double ShelfLayoutSpacingProvider.bottomPaddingValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(v15, a1, a2, a3, v8);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  type metadata accessor for ShelfLayoutContext();
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

double ShelfLayoutSpacingProvider.topContentInsetValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(v15, a1, a2, a3, v8);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  type metadata accessor for ShelfLayoutContext();
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

double ShelfLayoutSpacingProvider.bottomContentInsetValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 32))(v15, a1, a2, a3, v8);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  type metadata accessor for ShelfLayoutContext();
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

void sub_24F0F5514(void *a1@<X8>)
{
  v1 = MEMORY[0x277D22A30];
  a1[3] = MEMORY[0x277D839F8];
  a1[4] = v1;
  *a1 = 0;
}

uint64_t ProductRatingsAndReviewsMessage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v39 - v4;
  v5 = sub_24F91F6B8();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v21 = v17;
  v22 = *(v9 + 8);
  v22(v21, v8);
  v43 = v20;
  if (v20)
  {
    v42 = v18;
    sub_24F928398();
    v23 = sub_24F928348();
    if (v24)
    {
      v46 = v23;
      v47 = v24;
    }

    else
    {
      sub_24F91F6A8();
      v28 = sub_24F91F668();
      v39 = a1;
      v29 = v22;
      v31 = v30;
      (*(v40 + 8))(v7, v41);
      v46 = v28;
      v47 = v31;
      v22 = v29;
      a1 = v39;
    }

    sub_24F92C7F8();
    v22(v14, v8);
    sub_24F928398();
    sub_24E9C07DC();
    sub_24F928208();
    v22(v11, v8);
    v32 = v49[1];
    type metadata accessor for ProductRatingsAndReviewsMessage();
    v33 = (swift_allocObject() + OBJC_IVAR____TtC12GameStoreKit31ProductRatingsAndReviewsMessage_messageText);
    v34 = v43;
    *v33 = v42;
    v33[1] = v34;
    sub_24E65E064(v48, &v46);
    v49[0] = v32;
    v35 = sub_24F929608();
    v36 = v44;
    (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
    v25 = sub_24E9C00B8(&v46, v49, v36);
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v45, v37);
    v22(a1, v8);
    sub_24E601704(v48, &qword_27F235830);
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v26 = 0x546567617373656DLL;
    v26[1] = 0xEB00000000747865;
    v26[2] = v42;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    v27 = sub_24F9285B8();
    (*(*(v27 - 8) + 8))(v45, v27);
    v22(a1, v8);
  }

  return v25;
}

uint64_t ProductRatingsAndReviewsMessage.__allocating_init(id:componentType:messageText:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9 - 8];
  v11 = swift_allocObject();
  LOBYTE(a2) = *a2;
  v12 = (v11 + OBJC_IVAR____TtC12GameStoreKit31ProductRatingsAndReviewsMessage_messageText);
  *v12 = a3;
  v12[1] = a4;
  sub_24E65E064(a1, v17);
  HIBYTE(v16) = a2;
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = sub_24E9C00B8(v17, &v16 + 7, v10);
  sub_24E601704(a1, &qword_27F235830);
  return v14;
}

uint64_t ProductRatingsAndReviewsMessage.init(id:componentType:messageText:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-v10 - 8];
  LOBYTE(a2) = *a2;
  v12 = (v4 + OBJC_IVAR____TtC12GameStoreKit31ProductRatingsAndReviewsMessage_messageText);
  *v12 = a3;
  v12[1] = a4;
  sub_24E65E064(a1, v17);
  HIBYTE(v16) = a2;
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = sub_24E9C00B8(v17, &v16 + 7, v11);
  sub_24E601704(a1, &qword_27F235830);
  return v14;
}

uint64_t type metadata accessor for ProductRatingsAndReviewsMessage()
{
  result = qword_27F239500;
  if (!qword_27F239500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProductRatingsAndReviewsMessage.messageText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit31ProductRatingsAndReviewsMessage_messageText);

  return v1;
}

uint64_t ProductRatingsAndReviewsMessage.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t ProductRatingsAndReviewsMessage.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

__n128 FootnoteLayout.init(metrics:labelView:chevronView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v6;
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v7;
  v8 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v8;
  sub_24E612C80(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t FootnoteLayout.Metrics.init(textSpace:bottomSpace:chevronMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, a4 + 40);

  return sub_24E612C80(a3, a4 + 80);
}

uint64_t FootnoteLayout.Metrics.textSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t FootnoteLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t FootnoteLayout.Metrics.chevronMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

double static FootnoteLayout.estimatedMeasurements(fitting:using:in:)(void *a1, double a2)
{
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v8 = *(v5 + 8);
  v8(v7, v4);
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v8(v7, v4);
  return a2;
}

double FootnoteLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v1 + 5), &v9);
  if (v10)
  {
    sub_24E612C80(&v9, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_24F922298();
    __swift_project_boxed_opaque_existential_1(v1 + 20, v1[23]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_24E942EA8(&v9);
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v7 = *(v4 + 8);
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v7(v6, v3);
  return a1;
}

uint64_t FootnoteLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v4 + 5), &v40);
  if (v41)
  {
    sub_24E612C80(&v40, v42);
    __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v14 = v13;
    v39 = v13;
    (*(v10 + 8))(v12, v9);
    __swift_project_boxed_opaque_existential_1(v42, v43);
    sub_24F922298();
    v16 = v15;
    v35 = v17;
    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    Width = CGRectGetWidth(v44);
    v38 = v16;
    v37 = Width - v14 - v16;
    v45.origin.x = a1;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    CGRectGetHeight(v45);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_24F922288();
    v20 = v19;
    v22 = v21;
    v34 = a3;
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    sub_24F9223C8();
    v24 = v23;
    v46.origin.x = a1;
    v46.origin.y = a2;
    v46.size.width = a3;
    v46.size.height = a4;
    MinX = CGRectGetMinX(v46);
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    MinY = CGRectGetMinY(v47);
    if (v37 >= v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = v37;
    }

    v28 = v24 + MinY;
    v29 = v35;
    v48.origin.x = MinX;
    v48.origin.y = v28;
    v48.size.width = v27;
    v48.size.height = v22;
    v37 = v39 + CGRectGetMaxX(v48);
    v49.origin.x = MinX;
    v49.origin.y = v28;
    v49.size.width = v27;
    v39 = v22;
    v49.size.height = v22;
    v36 = floor(CGRectGetMidY(v49) + v29 * -0.5);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    sub_24E942EA8(&v40);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_24F922288();
    v31 = v30;
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    v39 = v31;
    sub_24F9223C8();
    v38 = v32;
    v50.origin.x = a1;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    CGRectGetMinX(v50);
    v51.origin.x = a1;
    v51.origin.y = a2;
    v51.size.width = a3;
    v51.size.height = a4;
    CGRectGetMinY(v51);
    v52.origin.x = a1;
    v52.origin.y = a2;
    v52.size.width = a3;
    v52.size.height = a4;
    CGRectGetWidth(v52);
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E94275C((v4 + 5), v42);
  if (v43)
  {
    __swift_project_boxed_opaque_existential_1(v42, v43);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    sub_24E942EA8(v42);
  }

  return sub_24F922128();
}

unint64_t sub_24F0F6CCC()
{
  result = qword_27F239510;
  if (!qword_27F239510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239510);
  }

  return result;
}

double sub_24F0F6D20(void *a1, double a2)
{
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v8 = *(v5 + 8);
  v8(v7, v4);
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v8(v7, v4);
  return a2;
}

uint64_t EditorialMediaPlacement.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24F928348();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    v10 = sub_24F92CB88();

    if (v10 < 4)
    {

      v11 = sub_24F9285B8();
      (*(*(v11 - 8) + 8))(a2, v11);
      v12 = sub_24F928388();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      *a3 = v10;
      return result;
    }

    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = v19;
    *v19 = v8;
    v19[1] = v9;
    v19[2] = &type metadata for EditorialMediaPlacement;
    v18 = MEMORY[0x277D22520];
  }

  else
  {
    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = v15;
    v17 = MEMORY[0x277D84F90];
    *v15 = &type metadata for EditorialMediaPlacement;
    v15[1] = v17;
    v18 = MEMORY[0x277D22538];
  }

  (*(*(v14 - 8) + 104))(v16, *v18, v14);
  swift_willThrow();
  v20 = sub_24F9285B8();
  (*(*(v20 - 8) + 8))(a2, v20);
  v21 = sub_24F928388();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

GameStoreKit::EditorialMediaPlacement_optional __swiftcall EditorialMediaPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditorialMediaPlacement.rawValue.getter()
{
  v1 = 1869768040;
  v2 = 0x72614379726F7473;
  if (*v0 != 2)
  {
    v2 = 0x74654479726F7473;
  }

  if (*v0)
  {
    v1 = 0x657242656772616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F0F720C()
{
  result = qword_27F239518;
  if (!qword_27F239518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239518);
  }

  return result;
}

uint64_t sub_24F0F7260()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0F7334()
{
  sub_24F92B218();
}

uint64_t sub_24F0F73F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0F74D0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1869768040;
  v4 = 0xE900000000000064;
  v5 = 0x72614379726F7473;
  if (*v1 != 2)
  {
    v5 = 0x74654479726F7473;
    v4 = 0xEB000000006C6961;
  }

  if (*v1)
  {
    v3 = 0x657242656772616CLL;
    v2 = 0xED000074756F6B61;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t LockupMediaLayout.DisplayType.numberOfViews.getter()
{
  v1 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F0F7DDC(v0, v3, type metadata accessor for LockupMediaLayout.DisplayType);
  v4 = sub_24F922348();
  LODWORD(result) = (*(*(v4 - 8) + 48))(v3, 6, v4);
  if (result <= 2)
  {
    if (!result)
    {
      sub_24F0F76C8(v3);
      return 1;
    }

    if (result != 1)
    {
      return 2;
    }

    return 1;
  }

  if (result > 4)
  {
    return result == 5;
  }

  if (result == 3)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_24F0F76C8(uint64_t a1)
{
  v2 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LockupMediaLayout.init(metrics:mediaViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LockupMediaLayout(0);
  result = sub_24F0F78EC(a1, a3 + *(v6 + 20), type metadata accessor for LockupMediaLayout.Metrics);
  *a3 = a2;
  return result;
}

uint64_t LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LockupMediaLayout.Metrics(0);
  v11 = v10[7];
  v12 = sub_24F922348();
  v13 = *(v12 - 8);
  (*(v13 + 56))(a5 + v11, 1, 1, v12);
  sub_24E612C80(a1, a5);
  sub_24F0F78EC(a2, a5 + v10[5], type metadata accessor for LockupMediaLayout.DisplayType);
  (*(v13 + 32))(a5 + v10[6], a3, v12);

  return sub_24F028178(a4, a5 + v11);
}

uint64_t sub_24F0F78EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LockupMediaLayout.Metrics.interItemSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t LockupMediaLayout.Metrics.displayType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 20);

  return sub_24F0F7A44(a1, v3);
}

uint64_t sub_24F0F7A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LockupMediaLayout.Metrics.mediaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 24);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LockupMediaLayout.Metrics.mediaAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 24);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LockupMediaLayout.Metrics.boundingAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28);

  return sub_24F028328(v3, a1);
}

uint64_t LockupMediaLayout.Metrics.boundingAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28);

  return sub_24F028178(a1, v3);
}

uint64_t sub_24F0F7DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t LockupMediaLayout.measurements(fitting:in:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for LockupMediaLayout(0) + 20));

  return _s12GameStoreKit17LockupMediaLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(v3, a1);
}

void LockupMediaLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v71 = a1;
  v57[3] = a2;
  v12 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24F92CDB8();
  v14 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v57 - v17;
  v19 = sub_24F922348();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v57 - v24;
  v26 = (v7 + *(type metadata accessor for LockupMediaLayout(0) + 20));
  v63 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_24F028328(v26 + *(v63 + 28), v18);
  v27 = *(v20 + 48);
  v62 = v20 + 48;
  v61 = v27;
  if (v27(v18, 1, v19) == 1)
  {
    sub_24F0F8BDC(v18);
    v28 = a5;
    v29 = a6;
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v31 = v30;
    sub_24F9222E8();
    if (v32 >= v31)
    {
      sub_24F922308();
      v29 = v34;
      v28 = a5;
    }

    else
    {
      sub_24F9222F8();
      v28 = v33;
      v29 = a6;
    }

    v35 = *(v20 + 8);
    v35(v22, v19);
    v35(v25, v19);
  }

  v36 = [v71 traitCollection];
  *&v57[2] = v28;
  *&v57[1] = v29;
  v37 = _s12GameStoreKit17LockupMediaLayoutV9mediaSize5using7fitting4withSo6CGSizeVAC7MetricsV_AISo17UITraitCollectionCtFZ_0(v26, v36, v28, v29);
  v69 = v38;

  v39 = 0;
  v40 = *v7;
  v66 = *(*v7 + 16);
  v59 = v40;
  v58 = v40 + 32;
  v60 = (v14 + 8);
  *&v57[7] = v37 * 4.0;
  *&v57[6] = v37 * 3.0;
  *&v57[5] = v37 + v37;
  *&v57[4] = v37 * 0.5;
  while (1)
  {
    v41 = 0uLL;
    v42 = v66;
    v43 = 0uLL;
    v44 = 0uLL;
    if (v39 == v66)
    {
      goto LABEL_13;
    }

    if (v39 >= *(v59 + 16))
    {
      break;
    }

    v42 = v39 + 1;
    *&v72 = v39;
    sub_24E615E00(v58 + 40 * v39, &v72 + 8);
    v41 = v72;
    v43 = v73;
    v44 = v74;
LABEL_13:
    v75[0] = v41;
    v75[1] = v43;
    v75[2] = v44;
    if (!v44)
    {
      sub_24F922128();
      return;
    }

    v39 = v42;
    v68 = v41;
    v45 = v19;
    sub_24E612C80((v75 + 8), &v72);
    v70 = __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v46 = v64;
    sub_24E8ED7D8();
    v47 = v71;
    sub_24F9223A8();
    (*v60)(v46, v65);
    v48 = [v47 traitCollection];
    v49 = [v48 horizontalSizeClass];

    if (v49 == 1)
    {
      v76.origin.x = a3;
      v76.origin.y = a4;
      v76.size.width = a5;
      v76.size.height = a6;
      v50 = v69 < CGRectGetHeight(v76);
    }

    else
    {
      v50 = 0;
    }

    v19 = v45;
    v51 = v67;
    sub_24F0F7DDC(v26 + *(v63 + 20), v67, type metadata accessor for LockupMediaLayout.DisplayType);
    v52 = v61(v51, 6, v45);
    if (v52 <= 2)
    {
      v53 = a3;
      v54 = a4;
      v55 = a5;
      v56 = a6;
      if (!v52)
      {
        CGRectGetWidth(*&v53);
        sub_24F0F76C8(v67);
        goto LABEL_9;
      }

      if (v52 == 1)
      {
        CGRectGetMidX(*&v53);
        if (!v50)
        {
          goto LABEL_9;
        }

LABEL_27:
        v78.origin.x = a3;
        v78.origin.y = a4;
        v78.size.width = a5;
        v78.size.height = a6;
        CGRectGetHeight(v78);
        goto LABEL_9;
      }

LABEL_26:
      CGRectGetWidth(*&v53);
      if (!v50)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    if (v52 <= 4)
    {
      v53 = a3;
      v54 = a4;
      v55 = a5;
      v56 = a6;
      goto LABEL_26;
    }

    if (v52 == 5)
    {
      v77.origin.x = a3;
      v77.origin.y = a4;
      v77.size.width = a5;
      v77.size.height = a6;
      CGRectGetWidth(v77);
    }

LABEL_9:
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v72);
  }

  __break(1u);
}

uint64_t _s12GameStoreKit17LockupMediaLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, uint64_t a2)
{
  v41 = a2;
  v42 = sub_24F92CDB8();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_24F922348();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v36 = &v35 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v23 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_24F028328(a1 + *(v23 + 28), v11);
  v24 = *(v13 + 48);
  if (v24(v11, 1, v12) == 1)
  {
    sub_24F0F8BDC(v11);
    v25 = *(v23 + 20);
    sub_24F0F7DDC(a1 + v25, v8, type metadata accessor for LockupMediaLayout.DisplayType);
    result = v24(v8, 6, v12);
    if (result > 4)
    {
      if (result != 5)
      {
        return result;
      }

      return sub_24F922308();
    }

    if ((result - 1) < 4)
    {
      v27 = a1 + v25;
      v28 = v38;
      sub_24F0F7DDC(v27, v38, type metadata accessor for LockupMediaLayout.DisplayType);
      v29 = v24(v28, 6, v12);
      if (v29 <= 2 && !v29)
      {
        sub_24F0F76C8(v28);
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v34 = v39;
      sub_24E8ED7D8();
      sub_24F9223A8();
      (*(v40 + 8))(v34, v42);
      return sub_24F922308();
    }

    v22 = v36;
    (*(v13 + 32))(v36, v8, v12);
    v19 = v37;
  }

  else
  {
    (*(v13 + 32))(v22, v11, v12);
  }

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v31 = v30;
  sub_24F9222E8();
  if (v32 >= v31)
  {
    sub_24F922308();
  }

  else
  {
    sub_24F9222F8();
  }

  v33 = *(v13 + 8);
  v33(v19, v12);
  return (v33)(v22, v12);
}

uint64_t sub_24F0F8BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double _s12GameStoreKit17LockupMediaLayoutV9mediaSize5using7fitting4withSo6CGSizeVAC7MetricsV_AISo17UITraitCollectionCtFZ_0(void *a1, uint64_t a2, double a3, double a4)
{
  v47 = a2;
  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 20);
  sub_24F0F7DDC(a1 + v22, v21, type metadata accessor for LockupMediaLayout.DisplayType);
  v46 = v8;
  v23 = *(v8 + 48);
  v24 = v23(v21, 6, v7);
  if (v24 > 4)
  {
    v27 = 0.0;
    if (v24 != 5)
    {
      return v27;
    }

    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v29 = v28;
    sub_24F9222E8();
    if (v30 >= v29)
    {
      sub_24F922308();
    }

    else
    {
      sub_24F9222F8();
      a3 = v31;
    }

    (*(v46 + 8))(v15, v7);
    return a3;
  }

  if ((v24 - 1) >= 4)
  {
    v32 = v46;
    (*(v46 + 32))(v12, v21, v7);
    v33 = v45;
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v35 = v34;
    sub_24F9222E8();
    if (v36 >= v35)
    {
      sub_24F922308();
    }

    else
    {
      sub_24F9222F8();
      a3 = v37;
    }

    v42 = *(v32 + 8);
    v42(v33, v7);
    v42(v12, v7);
    return a3;
  }

  sub_24F0F7DDC(a1 + v22, v18, type metadata accessor for LockupMediaLayout.DisplayType);
  v25 = v23(v18, 6, v7);
  if (v25 > 2)
  {
    if (v25 > 4)
    {
      if (v25 == 5)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }
    }

    else
    {
      v26 = 4.0;
      if (v25 == 3)
      {
        v26 = 3.0;
      }
    }

    goto LABEL_20;
  }

  if (!v25)
  {
    sub_24F0F76C8(v18);
    goto LABEL_18;
  }

  if (v25 == 1)
  {
LABEL_18:
    v26 = 1.0;
    goto LABEL_20;
  }

  v26 = 2.0;
LABEL_20:
  if (v26 + -1.0 > 0.0)
  {
    v38 = v26 + -1.0;
  }

  else
  {
    v38 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F9223B8();
  v27 = (a3 - v38 * v39) / v26;
  sub_24F922308();
  if (v40 > a4)
  {
    sub_24F9222F8();
    return v41;
  }

  return v27;
}

unint64_t sub_24F0F907C()
{
  result = qword_27F239520;
  if (!qword_27F239520)
  {
    type metadata accessor for LockupMediaLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239520);
  }

  return result;
}

uint64_t sub_24F0F90E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LockupMediaLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F0F91A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LockupMediaLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0F924C()
{
  sub_24EF1D9E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.Metrics(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F0F92E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922348();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F0F9364(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24F922348();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24F0F93E8()
{
  v0 = sub_24F922348();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24F0F9454(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_24F922348();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24F0F95E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24F922348();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_24F0F9758()
{
  sub_24ED2BA98();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.DisplayType(319);
    if (v1 <= 0x3F)
    {
      sub_24F922348();
      if (v2 <= 0x3F)
      {
        sub_24F028EF0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

char *ShadowView.__allocating_init(radius:style:)(char *a1, double a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithFrame_];
  *&v5[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = a2;
  v5[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = v4;
  v6 = v5;
  CornerStyle.apply(withRadius:to:)(v6, a2);
  v7 = &v6[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  if (*&v6[v8])
  {
    [v6 setNeedsLayout];
  }

  return v6;
}

id sub_24F0F98EC(char *a1, double a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = a2;
  v2[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = *a1;
  CornerStyle.apply(withRadius:to:)(v2, a2);
  v4 = &v2[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  result = swift_beginAccess();
  if (*&v3[v5])
  {
    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_24F0F9990@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;

  return v4;
}

id sub_24F0F99F8(__int128 *a1, void *a2)
{
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  v4 = *v3;
  v5 = *a1;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  v7 = v5;

  return sub_24F0F9A68();
}

id sub_24F0F9A68()
{
  v1 = &v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow];
  swift_beginAccess();
  if (*v1)
  {
    v3 = v1[2];
    v2 = v1[3];
    v4 = v1[1];
    v5 = *v1;
    v6 = [v0 layer];
    v7 = [v5 CGColor];
    [v6 setShadowColor_];

    v8 = [v0 layer];
    [v8 setShadowRadius_];

    v9 = [v0 layer];
    [v9 setShadowOffset_];

    v10 = [v0 layer];
    LODWORD(v11) = 1.0;
    [v10 setShadowOpacity_];

    [v0 setClipsToBounds_];
  }

  else
  {
    v12 = [v0 layer];
    [v12 setShadowColor_];

    v13 = [v0 layer];
    [v13 setShadowRadius_];

    v14 = [v0 layer];
    [v14 setShadowOffset_];

    v15 = [v0 layer];
    [v15 setShadowOpacity_];

    [v0 setClipsToBounds_];
  }

  v16 = &v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  return [v0 setNeedsLayout];
}

id sub_24F0F9CD4@<X0>(__int128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return v4;
}

id sub_24F0F9D38(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  v4 = *v3;
  v5 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v5;

  return sub_24F0F9A68();
}

id (*sub_24F0F9D9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F0F9E00;
}

id sub_24F0F9E00(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24F0F9A68();
  }

  return result;
}

uint64_t sub_24F0F9E34()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F0F9E78(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_24F0F9F28()
{
  v58.receiver = v0;
  v58.super_class = type metadata accessor for ShadowView();
  objc_msgSendSuper2(&v58, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  if (*&v0[v1])
  {
    v2 = [v0 layer];
    v3 = [v2 shadowPath];

    v4 = v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle];
    v5 = &selRef_lockedAppBundleIdentifiers;
    [v0 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = *&v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius];
    v15 = objc_opt_self();
    if (v14 >= COERCE_DOUBLE(1))
    {
      if (v4)
      {
        v15 = [v15 _bezierPathWithArcRoundedRect_cornerRadius_];
        v17 = v15;
        if (v15)
        {
LABEL_9:
          v18 = [v17 CGPath];

          v19 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
          swift_beginAccess();
          v20 = &qword_27F239000;
          if ((v0[v19] & 1) == 0)
          {
            goto LABEL_22;
          }

          [v0 bounds];
          if ((v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds + 32] & 1) == 0 && CGRectEqualToRect(*&v21, *&v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds]))
          {
            goto LABEL_22;
          }

          v25 = [v0 layer];
          v26 = sub_24F92B098();
          v27 = [v25 animationForKey_];

          if (v27)
          {
            goto LABEL_21;
          }

          v28 = [v0 layer];
          v29 = sub_24F92B098();
          v30 = [v28 animationForKey_];

          if (v30)
          {
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            if (v31)
            {
              v32 = v31;
              v33 = sub_24F92B098();
              v34 = [objc_opt_self() animationWithKeyPath_];

              v35 = v34;
              v36 = v30;
              [v32 duration];
              [v35 setDuration_];
              v37 = [v32 timingFunction];

              [v35 setTimingFunction_];
              v38 = v35;
              [v38 setFromValue_];
              [v38 setToValue_];

              [v32 mass];
              [v38 setMass_];
              [v32 stiffness];
              [v38 setStiffness_];
              [v32 damping];
              [v38 setDamping_];
              [v32 initialVelocity];
              [v38 setInitialVelocity_];
              v39 = [v0 layer];
              v5 = &selRef_lockedAppBundleIdentifiers;
              goto LABEL_20;
            }
          }

          v40 = [v0 layer];
          v41 = sub_24F92B098();
          v27 = [v40 animationForKey_];

          v5 = &selRef_lockedAppBundleIdentifiers;
          v20 = &qword_27F239000;
          if (!v27)
          {
LABEL_22:
            v48 = [v0 layer];
            [v48 setShadowPath_];

            [v0 v5[415]];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;

            v57 = &v0[v20[173]];
            *v57 = v50;
            *(v57 + 1) = v52;
            *(v57 + 2) = v54;
            *(v57 + 3) = v56;
            v57[32] = 0;
            return;
          }

          objc_opt_self();
          v42 = swift_dynamicCastObjCClass();
          if (!v42)
          {
LABEL_21:

            goto LABEL_22;
          }

          v43 = v42;
          v44 = sub_24F92B098();
          v45 = [objc_opt_self() animationWithKeyPath_];

          v38 = v45;
          v36 = v27;
          [v43 duration];
          [v38 setDuration_];
          v46 = [v43 timingFunction];

          [v38 setTimingFunction_];
          [v38 setFromValue_];
          [v38 setToValue_];
          v39 = [v0 layer];
LABEL_20:
          v47 = v39;
          v27 = sub_24F92B098();
          [v47 addAnimation:v38 forKey:v27];

          v20 = &qword_27F239000;
          goto LABEL_21;
        }

        __break(1u);
      }

      v16 = [v15 bezierPathWithRoundedRect:-1 byRoundingCorners:v7 cornerRadii:{v9, v11, v13, v14, v14}];
    }

    else
    {
      v16 = [v15 bezierPathWithRect_];
    }

    v17 = v16;
    goto LABEL_9;
  }
}

id ShadowView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ShadowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = 1;
  v9 = &v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow];
  *v10 = 0u;
  v10[1] = 0u;
  v4[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id ShadowView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShadowView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = 0;
  v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = 1;
  v3 = &v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = &v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow];
  *v4 = 0u;
  v4[1] = 0u;
  v1[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ShadowView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id ShadowView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F0FA984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24F0FA9DC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if (!a2)
  {
    v9 = [v3 layoutManagers];
    sub_24E69A5C4(0, &qword_27F236AE0);
    v10 = sub_24F92B5A8();
    v11 = v10;
    if (v10 >> 62)
    {
      goto LABEL_24;
    }

    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v7 = a2;
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  for (i = v4; ; i = v5)
  {
    v18 = v5;
    v19 = v4;
    [v7 ensureLayoutForTextContainer_];
    v31 = i;

    v20 = [v3 fullRange];
    v32 = [v7 glyphRangeForCharacterRange:v20 actualCharacterRange:{v21, 0}];
    v23 = v22;
    v4 = swift_allocObject();
    v4[2] = 0;
    v5 = swift_allocObject();
    v5[2] = sub_24F91E8A8();
    v24 = v5 + 2;
    v5[3] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 1;
    v26 = swift_allocObject();
    v26[2] = v4;
    v26[3] = a1;
    v26[4] = v5;
    v26[5] = v7;
    v26[6] = v25;
    aBlock[4] = sub_24F0FB1D8;
    v34 = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F0FB208;
    aBlock[3] = &block_descriptor_116;
    v3 = _Block_copy(aBlock);
    v9 = v34;
    v27 = v7;

    [v27 enumerateLineFragmentsForGlyphRange:v32 usingBlock:{v23, v3}];
    _Block_release(v3);
    if (a1 == -1)
    {
      swift_beginAccess();
      if ((*(v25 + 32) & 1) == 0)
      {
        v28 = [v27 characterRangeForGlyphRange:*(v25 + 16) actualGlyphRange:{*(v25 + 24), 0}];
        v3 = v29;
        swift_beginAccess();
        v5[2] = v28;
        v5[3] = v3;
      }
    }

    v11 = sub_24F91E8A8();
    swift_beginAccess();
    if (v11 == *v24)
    {

      return;
    }

    v30 = v5[3] + *v24;
    if (!__OFSUB__(v30, 1))
    {
      NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(v30 - 1);

      return;
    }

    __break(1u);
LABEL_24:
    if (!sub_24F92C738())
    {
LABEL_25:

      __break(1u);
      goto LABEL_26;
    }

LABEL_6:

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_26:
    v12 = MEMORY[0x253052270](0, v11);
LABEL_9:
    v7 = v12;

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = v5;
    v14 = [v7 textContainers];
    sub_24E69A5C4(0, &qword_27F236AE8);
    v15 = sub_24F92B5A8();
    v16 = v15;
    if (v15 >> 62)
    {
      if (!sub_24F92C738())
      {
LABEL_28:

        __break(1u);
LABEL_29:
        v17 = MEMORY[0x253052270](0, v16);
        goto LABEL_15;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v17 = *(v16 + 32);
LABEL_15:
    v5 = v17;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_24F0FB068(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v28.size.height = a8;
  v28.size.width = a7;
  v28.origin.y = a6;
  v28.origin.x = a5;
  if (CGRectGetHeight(v28) != 0.0)
  {
    swift_beginAccess();
    v24 = *(a13 + 16);
    if (v24 == a14)
    {
      v25 = [a16 characterRangeForGlyphRange:a10 actualGlyphRange:{a11, 0}];
      v27 = v26;
      swift_beginAccess();
      *(a15 + 16) = v25;
      *(a15 + 24) = v27;
      *a12 = 1;
    }

    else
    {
      swift_beginAccess();
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      else
      {
        *(a13 + 16) = v24 + 1;
        swift_beginAccess();
        *(a17 + 16) = a10;
        *(a17 + 24) = a11;
        *(a17 + 32) = 0;
      }
    }
  }
}

uint64_t sub_24F0FB188()
{

  return swift_deallocObject();
}

void sub_24F0FB208(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F0FB30C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a1;
  NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(a3, a4, a5);
  v13 = v12;

  return v13;
}

uint64_t Banner.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Banner.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Banner.__allocating_init(id:message:focusedMessage:action:buttonActions:leadingArtwork:leadingArtworkTintColor:leadingArtworkSymbolConfiguration:includeBackgroundBorder:hideCriteria:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, char *a13)
{
  v36 = a7;
  v37 = a8;
  v35 = a6;
  v34 = a11;
  v32 = a3;
  v33 = a10;
  v30 = a2;
  v31 = a9;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = swift_allocObject();
  v19 = *a12;
  v20 = a12[1];
  v21 = *a13;
  sub_24E65E064(a1, &v40);
  if (*(&v41 + 1))
  {
    v22 = v41;
    *(v18 + 104) = v40;
    *(v18 + 120) = v22;
    *(v18 + 136) = v42;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v15 + 8))(v17, v14);
    v38 = v23;
    v39 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v26 = v32;
  *(v18 + 16) = v30;
  *(v18 + 24) = v26;
  v27 = v36;
  *(v18 + 32) = v35;
  *(v18 + 40) = v27;
  v28 = v31;
  *(v18 + 48) = v37;
  *(v18 + 56) = v28;
  *(v18 + 64) = v33;
  *(v18 + 72) = v34 & 1;
  *(v18 + 80) = v19;
  *(v18 + 88) = v20;
  *(v18 + 96) = v21;
  return v18;
}

GameStoreKit::Banner::Kind_optional __swiftcall Banner.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Banner.Kind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7975426F546B7361;
  }

  else
  {
    return 0x73776F7242626577;
  }
}

uint64_t sub_24F0FB684(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7975426F546B7361;
  }

  else
  {
    v3 = 0x73776F7242626577;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEE00776569766552;
  }

  if (*a2)
  {
    v5 = 0x7975426F546B7361;
  }

  else
  {
    v5 = 0x73776F7242626577;
  }

  if (*a2)
  {
    v6 = 0xEE00776569766552;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F0FB73C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0FB7D0()
{
  sub_24F92B218();
}

uint64_t sub_24F0FB850()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0FB8E0@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F0FB940(uint64_t *a1@<X8>)
{
  v2 = 0x73776F7242626577;
  if (*v1)
  {
    v2 = 0x7975426F546B7361;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEE00776569766552;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Banner.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Banner.linkableMessage.getter()
{
  v1 = v0[4];
  if (v1 && (v2 = *(v1 + 24)) != 0)
  {
    v3 = *(v1 + 16);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v5 = v0[2];
    v4 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239580);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    *(inited + 48) = v1;
    swift_retain_n();

    v7 = sub_24E6091F0(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F239588);
    sub_24E65E064(&v23, v22);
    type metadata accessor for StyledText();
    v8 = swift_allocObject();
    *(v8 + 40) = sub_24E609504(MEMORY[0x277D84F90]);
    v9 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
    v10 = sub_24F91F008();
    (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
    v11 = (v8 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
    *v11 = 0;
    v11[1] = 0;
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    *(v8 + 32) = 0;
    type metadata accessor for LinkableText();
    swift_allocObject();
    v12 = LinkableText.init(id:styledText:linkedSubstrings:)(v22, v8, v7);
    sub_24E601704(&v23, &qword_27F235830);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v14 = v0[2];
    v13 = v0[3];

    v15 = MEMORY[0x277D84F90];
    v16 = sub_24E6091F0(MEMORY[0x277D84F90]);
    sub_24E65E064(&v23, v22);
    type metadata accessor for StyledText();
    v17 = swift_allocObject();
    *(v17 + 40) = sub_24E609504(v15);
    v18 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
    v19 = sub_24F91F008();
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    v20 = (v17 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
    *v20 = 0;
    v20[1] = 0;
    *(v17 + 16) = v14;
    *(v17 + 24) = v13;
    *(v17 + 32) = 0;
    type metadata accessor for LinkableText();
    swift_allocObject();
    v12 = LinkableText.init(id:styledText:linkedSubstrings:)(v22, v17, v16);
    sub_24E601704(&v23, &qword_27F235830);
  }

  return v12;
}

void *Banner.leadingArtworkTintColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *Banner.leadingArtworkSymbolConfiguration.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t Banner.hideCriteria.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  a1[1] = v3;
  return sub_24E6AD46C(v2, v3);
}

uint64_t Banner.init(id:message:focusedMessage:action:buttonActions:leadingArtwork:leadingArtworkTintColor:leadingArtworkSymbolConfiguration:includeBackgroundBorder:hideCriteria:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, char *a13)
{
  v14 = v13;
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v36 = a11;
  v34 = a3;
  v35 = a10;
  v32 = a2;
  v33 = a9;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v20 = *a12;
  v21 = a12[1];
  v22 = *a13;
  sub_24E65E064(a1, &v42);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v17 + 8))(v19, v16);
    v40 = v23;
    v41 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v26 = v46;
  *(v14 + 104) = v45;
  *(v14 + 120) = v26;
  *(v14 + 136) = v47;
  v27 = v34;
  *(v14 + 16) = v32;
  *(v14 + 24) = v27;
  v28 = v38;
  *(v14 + 32) = v37;
  *(v14 + 40) = v28;
  v29 = v33;
  *(v14 + 48) = v39;
  *(v14 + 56) = v29;
  *(v14 + 64) = v35;
  *(v14 + 72) = v36 & 1;
  *(v14 + 80) = v20;
  *(v14 + 88) = v21;
  *(v14 + 96) = v22;
  return v14;
}

uint64_t *Banner.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v102 = a2;
  v5 = *v3;
  v96 = v3;
  v94 = v5;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  v100 = v6;
  v101 = v7;
  MEMORY[0x28223BE20](v6);
  v97 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v85 - v10;
  v91 = sub_24F92AC28();
  v95 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v89 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24);
  v98 = &v85 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v85 - v30;
  v108 = a1;
  sub_24F928398();
  v32 = sub_24F928348();
  if (v33)
  {
    v103 = v32;
    v104 = v33;
  }

  else
  {
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v35 = v13;
    v37 = v36;
    (*(v35 + 8))(v15, v12);
    v103 = v34;
    v104 = v37;
  }

  sub_24F92C7F8();
  v38 = *(v17 + 8);
  v39 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v31, v16);
  v40 = v38;
  v41 = v106;
  v42 = v96;
  *(v96 + 13) = v105;
  *(v42 + 15) = v41;
  v42[17] = v107;
  v43 = v108;
  sub_24F928398();
  v44 = sub_24F928348();
  v46 = v45;
  v40(v28, v16);
  v47 = v101;
  if (!v46)
  {
    v58 = sub_24F92AC38();
    sub_24F0FCC04(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v59 = 0x6567617373656DLL;
    v60 = v94;
    v59[1] = 0xE700000000000000;
    v59[2] = v60;
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    v40(v43, v16);
    (*(v47 + 8))(v102, v100);
    sub_24E6585F8((v42 + 13));
    swift_deallocPartialClassInstance();
    return v42;
  }

  v42[2] = v44;
  v42[3] = v46;
  v48 = type metadata accessor for Action();
  v49 = v98;
  sub_24F928398();
  v86 = v48;
  v50 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v102);
  v40(v49, v16);
  v42[4] = v50;
  sub_24F928398();
  v51 = v90;
  sub_24F9282B8();
  v93 = v40;
  v94 = v16;
  v40(v23, v16);
  v52 = v95;
  v53 = v91;
  v54 = (*(v95 + 48))(v51, 1, v91);
  v92 = v39;
  if (v54 == 1)
  {
    sub_24E601704(v51, &qword_27F2213B0);
    v55 = MEMORY[0x277D84F90];
    v56 = v101;
    v57 = v102;
LABEL_21:
    v42[5] = v55;
    type metadata accessor for Artwork();
    v72 = v98;
    sub_24F928398();
    v96 = *(v56 + 16);
    v73 = v100;
    (v96)(v97, v57, v100);
    sub_24F0FCC04(&qword_27F219660, 255, type metadata accessor for Artwork);
    sub_24F929548();
    v42[6] = v105;
    sub_24F928398();
    v74 = JSONObject.appStoreColor.getter();
    v76 = v93;
    v75 = v94;
    v93(v72, v94);
    v42[7] = v74;
    v42[8] = 0;
    v77 = v88;
    sub_24F928398();
    LOBYTE(v74) = sub_24F928278();
    v76(v77, v75);
    *(v42 + 72) = v74 & 1;
    sub_24F928398();
    (v96)(v97, v102, v73);
    v78 = v108;
    sub_24F0FCABC();
    sub_24F929548();
    *(v42 + 5) = v105;
    v79 = v89;
    sub_24F928398();
    sub_24F0FCB10();
    v80 = v99;
    sub_24F928218();
    if (v80)
    {

      v81 = 2;
    }

    else
    {
      v81 = v105;
    }

    v82 = v78;
    v84 = v93;
    v83 = v94;
    v93(v82, v94);
    v84(v79, v83);
    (*(v101 + 8))(v102, v100);
    *(v42 + 96) = v81;
    return v42;
  }

  v61 = (*(v52 + 32))(v87, v51, v53);
  MEMORY[0x28223BE20](v61);
  v57 = v102;
  *(&v85 - 2) = v86;
  *(&v85 - 1) = v57;
  v62 = v99;
  v63 = sub_24F92ABB8();
  v64 = v63;
  v99 = v62;
  if (!(v63 >> 62))
  {
    v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v101;
    if (v65)
    {
      goto LABEL_10;
    }

LABEL_20:

    (*(v95 + 8))(v87, v53);
    v55 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v65 = sub_24F92C738();
  v56 = v101;
  if (!v65)
  {
    goto LABEL_20;
  }

LABEL_10:
  *&v105 = MEMORY[0x277D84F90];
  result = sub_24F457AFC(0, v65 & ~(v65 >> 63), 0);
  if ((v65 & 0x8000000000000000) == 0)
  {
    v67 = 0;
    v55 = v105;
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x253052270](v67, v64);
      }

      else
      {
        v68 = *(v64 + 8 * v67 + 32);
      }

      *&v105 = v55;
      v70 = *(v55 + 16);
      v69 = *(v55 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_24F457AFC((v69 > 1), v70 + 1, 1);
        v55 = v105;
      }

      ++v67;
      *(v55 + 16) = v70 + 1;
      v71 = v55 + 16 * v70;
      *(v71 + 32) = v68;
      *(v71 + 40) = 1;
    }

    while (v65 != v67);
    (*(v95 + 8))(v87, v91);

    v42 = v96;
    v56 = v101;
    v57 = v102;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t Banner.deinit()
{

  sub_24EEA5774(*(v0 + 80), *(v0 + 88));
  sub_24E6585F8(v0 + 104);
  return v0;
}

uint64_t Banner.__deallocating_deinit()
{
  Banner.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_24F0FCA54@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Banner.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_24F0FCABC()
{
  result = qword_27F239590;
  if (!qword_27F239590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239590);
  }

  return result;
}

unint64_t sub_24F0FCB10()
{
  result = qword_27F239598;
  if (!qword_27F239598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239598);
  }

  return result;
}

unint64_t sub_24F0FCB68()
{
  result = qword_27F2395A0;
  if (!qword_27F2395A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2395A0);
  }

  return result;
}

uint64_t sub_24F0FCC04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = a8;
  *(a3 + 40) = result;
  *(a3 + 48) = a2;
  return result;
}

void RiverView.init(dataSource:styling:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v6 = MEMORY[0x277D85000];
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 48);
  CGSizeMake(*((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a3);
  type metadata accessor for RiverRowRecycler();
  swift_getWitnessTable();
  v28 = a2[1];
  v29 = *a2;
  sub_24F922CB8();
  *(v4 + *((*v6 & *v4) + 0x78)) = 0;
  v10 = v4 + *((*v6 & *v4) + 0x80);
  *v10 = 0;
  v10[8] = 1;
  *(v4 + *((*v6 & *v4) + 0x88)) = 0;
  *(v4 + *((*v6 & *v4) + 0xA0)) = 0;
  type metadata accessor for RiverRow.Context();
  v11 = swift_unknownObjectRetain();
  *(v4 + *((*v6 & *v4) + 0x70)) = RiverRow.Context.__allocating_init(_:)(v11);
  type metadata accessor for RiverRow();
  *(v4 + *((*v6 & *v4) + 0x60)) = sub_24F92AE18();
  v12 = v4 + *((*v6 & *v4) + 0x90);
  *v12 = v29;
  *(v12 + 1) = v28;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  v12[48] = v9;
  *(v4 + *((*v6 & *v4) + 0x98)) = v29;
  *(v4 + *((*v6 & *v4) + 0xA8)) = 1;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for RiverView();

  v13 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = sub_24F92CDE8();
  v15 = [objc_opt_self() displayLinkWithTarget:v14 selector:sel_animateScrollWithDisplayLink_];

  swift_unknownObjectRelease();
  v16 = *((*v6 & *v13) + 0x78);
  v17 = *(v13 + v16);
  *(v13 + v16) = v15;
  v18 = v15;

  if (v18)
  {
    [v18 setPreferredFramesPerSecond_];

    sub_24F0FE9AC();
    v19 = *(v13 + v16);
    if (v19)
    {
      v20 = v19;

      v21 = [objc_opt_self() mainRunLoop];
      [v20 addToRunLoop:v21 forMode:*MEMORY[0x277CBE738]];

      v22 = v13;
      [v22 setClipsToBounds_];
      v23 = objc_opt_self();
      v24 = [v23 defaultCenter];
      [v24 addObserver:v22 selector:sel_lowMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

      v25 = [v23 defaultCenter];
      [v25 addObserver:v22 selector:sel_reduceMotionStatusDidChange_ name:*MEMORY[0x277D764C0] object:0];

      v26 = [v23 defaultCenter];
      [v26 addObserver:v22 selector:sel_willEnterForeground_ name:*MEMORY[0x277D76758] object:0];

      v27 = [v23 defaultCenter];
      [v27 addObserver:v22 selector:sel_didEnterBackground_ name:*MEMORY[0x277D76660] object:0];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id RiverView.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RiverView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24F0FD3E0(char *a1)
{
  v2 = MEMORY[0x277D85000];

  v3 = *((*v2 & *a1) + 0x68);
  type metadata accessor for RiverRowRecycler();
  swift_getWitnessTable();
  v4 = sub_24F922CC8();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
}

uint64_t sub_24F0FD564()
{
  sub_24F100364();
}

uint64_t sub_24F0FD58C(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24F0FD634(uint64_t result, char a2)
{
  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x80);
  *v3 = result;
  v3[8] = a2 & 1;
  return result;
}

uint64_t sub_24F0FD6C4()
{
  sub_24F1003C4();

  return swift_unknownObjectRetain();
}

uint64_t sub_24F0FD6EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  v5 = v2[48];
  v6 = *(v2 + 1);
  *a1 = *v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_24F0FD738(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 4) = v2;
  *(v5 + 5) = v3;
  v5[48] = v4;
}

double sub_24F0FD78C()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x98);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_24F0FD7F0(double a1, double a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x98));
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_24F0FD924()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F0FD984(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_24F0FDA6C()
{
  result = [v0 window];
  if (result)
  {

    if ([v0 isHidden])
    {
      return 0;
    }

    else
    {
      return !UIAccessibilityIsReduceMotionEnabled();
    }
  }

  return result;
}

id sub_24F0FDAC8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v1) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    return sub_24F0FFBA4();
  }

  else
  {
    return sub_24F0FFCA0();
  }
}

uint64_t sub_24F0FDB44()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_24F0FDBA4(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_24F0FDAC8();
}

id (*sub_24F0FDC14(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F0FDC94;
}

id sub_24F0FDC94(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24F0FDAC8();
  }

  return result;
}

uint64_t sub_24F0FDCC8()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  type metadata accessor for RiverViewRecycler();
  swift_getWitnessTable();
  sub_24F922CC8();
  sub_24F922C88();
  return swift_endAccess();
}

id sub_24F0FDDF0()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v2) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    return sub_24F0FFBA4();
  }

  sub_24F0FFCA0();
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  return [v0 setNeedsLayout];
}

uint64_t sub_24F0FDEBC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    result = sub_24F0FDA6C();
    if (result)
    {
      return sub_24F0FFBA4();
    }
  }

  return result;
}

uint64_t sub_24F0FDF64(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_24F91EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F0FE050(void *a1)
{
  v1 = a1;
  v2 = sub_24F0FE084();

  return v2 & 1;
}

id sub_24F0FE084()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RiverView();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

void sub_24F0FE0F4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_24F0FE148(a3);
}

id sub_24F0FE148(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RiverView();
  objc_msgSendSuper2(&v4, sel_setHidden_, a1 & 1);
  return sub_24F0FE1CC();
}

id sub_24F0FE1CC()
{
  if ([v0 isHidden])
  {

    return sub_24F0FFCA0();
  }

  else
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
    swift_beginAccess();
    if (*(v0 + v2) == 1 && (sub_24F0FDA6C() & 1) != 0)
    {
      return sub_24F0FFBA4();
    }

    else
    {
      return sub_24F0FFD50();
    }
  }
}

double sub_24F0FE27C(void *a1)
{
  v1 = a1;
  sub_24F0FE2B8();
  v3 = v2;

  return v3;
}

id sub_24F0FE2B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RiverView();
  return objc_msgSendSuper2(&v2, sel_alpha);
}

void sub_24F0FE328(void *a1, double a2)
{
  v3 = a1;
  sub_24F0FE380(a2);
}

id sub_24F0FE380(double a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RiverView();
  objc_msgSendSuper2(&v4, sel_setAlpha_, a1);
  return sub_24F0FE404();
}

id sub_24F0FE404()
{
  [v0 alpha];
  if (v1 == 0.0)
  {

    return sub_24F0FFCA0();
  }

  else
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
    swift_beginAccess();
    if (*(v0 + v3) == 1 && (sub_24F0FDA6C() & 1) != 0)
    {
      return sub_24F0FFBA4();
    }

    else
    {
      return sub_24F0FFD50();
    }
  }
}

id sub_24F0FE4B8()
{
  v1 = MEMORY[0x277D85000];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RiverView();
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  v2 = *((*v1 & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v2) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    return sub_24F0FFBA4();
  }

  else
  {
    return sub_24F0FFCA0();
  }
}

void sub_24F0FE580(void *a1)
{
  v1 = a1;
  sub_24F0FE4B8();
}

id sub_24F0FE5C8()
{
  v1 = MEMORY[0x277D85000];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RiverView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  result = *(v0 + *((*v1 & *v0) + 0x78));
  if (result)
  {
    if (([result isPaused] & 1) != 0 || (v3 = *((*v1 & *v0) + 0xA8), result = swift_beginAccess(), (*(v0 + v3) & 1) == 0))
    {
      v4 = objc_opt_self();
      v5 = [v4 areAnimationsEnabled];
      [v4 setAnimationsEnabled_];
      sub_24F0FFD50();
      return [v4 setAnimationsEnabled_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24F0FE700(void *a1)
{
  v1 = a1;
  sub_24F0FE5C8();
}

double sub_24F0FE77C(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_24F0FE748(a2);

  return v4;
}

double sub_24F0FE7C8(void *a1)
{
  v1 = a1;
  sub_24F0FE80C();
  v3 = v2;

  return v3;
}

uint64_t sub_24F0FE80C()
{
  swift_beginAccess();
  type metadata accessor for RiverRow();

  sub_24F92B648();

  swift_beginAccess();
  swift_beginAccess();

  v0 = sub_24F92B648();

  if (__OFSUB__(v0, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F0FE9AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  swift_beginAccess();
  v5 = *((v4 & v2) + 0x50);
  v6 = *((v4 & v2) + 0x58);
  type metadata accessor for RiverRow();

  v7 = sub_24F92B648();

  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  v9 = v8(v5, v6);
  result = swift_unknownObjectRelease();
  if (v9 < v7)
  {
    v11 = v7 - v9;
    if (__OFSUB__(v7, v9))
    {
      goto LABEL_24;
    }

    if (v11 < 0)
    {
      goto LABEL_25;
    }

    for (; v11; --v11)
    {
      swift_beginAccess();
      sub_24F92B6E8();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_24F92BCD8();
      swift_endAccess();
      swift_beginAccess();
      type metadata accessor for RiverRowRecycler();
      swift_getWitnessTable();
      sub_24F922CC8();
      sub_24F922CA8();
      swift_endAccess();
    }

    return result;
  }

  if (v7 >= v9)
  {
    return result;
  }

  v12 = (v0 + *((*v3 & *v0) + 0x98));
  swift_beginAccess();
  v13 = (v12[1] + *(v1 + *((*v3 & *v1) + 0x90) + 16)) * v7;
  v19 = *(v6 + 64);
  while (1)
  {
    swift_unknownObjectRetain();
    v19(v20, v5, v6);
    swift_unknownObjectRelease();
    if (LOBYTE(v20[0]) == 1)
    {
      break;
    }

    v18 = *(*(v1 + *((*v3 & *v1) + 0x90) + 40) + 16);

    if (!v18)
    {
      goto LABEL_21;
    }

    if (v7 % v18 < 0)
    {
      goto LABEL_22;
    }

    if ((v7 % v18) >= *(result + 16))
    {
      goto LABEL_23;
    }

LABEL_9:
    MEMORY[0x28223BE20](result);
    swift_beginAccess();
    type metadata accessor for RiverRowRecycler();
    swift_getWitnessTable();
    sub_24F922CC8();
    sub_24F922C98();
    swift_endAccess();
    swift_beginAccess();
    sub_24F92B6E8();

    sub_24F92B658();
    swift_endAccess();
    v3 = MEMORY[0x277D85000];
    v14 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x98));
    swift_beginAccess();
    v15 = v14[1];
    v16 = *(v1 + *((*v3 & *v1) + 0x90) + 16);

    v13 = v13 + v15 + v16;
    if (v9 == ++v7)
    {
      return result;
    }
  }

  result = swift_beginAccess();
  v17 = v7 & 1;
  if (v7 < 0)
  {
    v17 = -v17;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
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
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24F0FF034@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = MEMORY[0x277D85000];
  v13 = *MEMORY[0x277D85000] & *a1;
  result = type metadata accessor for RiverRow();
  v15 = __OFSUB__(a2, a3);
  v16 = a2 - a3;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = (a1 + *(v13 + 152));
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v20 = *(a1 + *((*v12 & *a1) + 0x90) + 24);

    result = RiverRow.__allocating_init(context:number:origin:itemSize:interItemSpacing:)(v21, v16, a5, a6, v18, v19, v20);
    *a4 = result;
  }

  return result;
}

uint64_t sub_24F0FF190()
{
  swift_beginAccess();
  type metadata accessor for RiverRowRecycler();
  swift_getWitnessTable();
  sub_24F922CC8();
  sub_24F922C88();
  swift_endAccess();
  swift_beginAccess();
  swift_getKeyPath();
  type metadata accessor for RiverRow();
  sub_24F92B6E8();
  swift_getAssociatedTypeWitness();
  sub_24F92AEA8();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F92B498();

  swift_getTupleTypeMetadata2();
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92B4A8();

  v0 = sub_24F92B608();
  sub_24F0FD58C(v0);
  return sub_24F0FE9AC();
}

uint64_t sub_24F0FF478()
{

  swift_getAtKeyPath();
}

id sub_24F0FF4D4(int a1, id a2)
{
  v3 = [a2 layer];
  [v3 removeAllAnimations];

  return [a2 removeFromSuperview];
}

uint64_t sub_24F0FF53C(double a1, double a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v2;
  v7 = (v2 + *(v6 + 0x98));
  result = swift_beginAccess();
  if (*v7 != a1 || v7[1] != a2)
  {
    v10 = (v2 + *((*v5 & *v2) + 0x98));
    swift_beginAccess();
    *v10 = a1;
    v10[1] = a2;
    v13 = v6 + 80;
    v11 = *(v6 + 80);
    v12 = *(v13 + 8);
    v14 = *(v12 + 48);
    swift_unknownObjectRetain();
    v14(v11, v12, a1, a2);
    swift_unknownObjectRelease();
    return sub_24F0FF190();
  }

  return result;
}

uint64_t sub_24F0FF6A0(double a1, double a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x90));
  v4 = *(v3 + 48);
  v3[2] = a1;
  v3[3] = a2;
  *(v3 + 48) = v4;
  return sub_24F0FF190();
}

double sub_24F0FF6D8(void *a1)
{
  v1 = a1;
  sub_24F0FF734();
  v3 = v2;

  return v3;
}

id sub_24F0FF734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RiverView();
  return objc_msgSendSuper2(&v2, sel_frame);
}

void sub_24F0FF7A4(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_24F0FF81C(a2, a3, a4, a5);
}

void sub_24F0FF81C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for RiverView();
  v19.receiver = v4;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, sel_frame);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = v4;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, sel_setFrame_, a1, a2, a3, a4);
  sub_24F0FF910(v11, v13, v15, v17);
}

void sub_24F0FF910(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = MEMORY[0x277D85000];
  v11 = *MEMORY[0x277D85000] & *v4;
  v12 = [v4 traitCollection];
  v13 = sub_24F92BF88();

  if (v13)
  {
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    if (!CGRectIsEmpty(v24))
    {
      [v5 frame];
      Width = CGRectGetWidth(v25);
      v26.origin.x = a1;
      v26.origin.y = a2;
      v26.size.width = a3;
      v26.size.height = a4;
      v15 = CGRectGetWidth(v26);
      v16 = *((*v10 & *v5) + 0x88);
      *(v5 + v16) = *(v5 + v16) - (Width - v15);
      if (*(v5 + *((*v10 & *v5) + 0x88)) < 0.0)
      {
        v17 = *((*v10 & *v5) + 0x98);
        swift_beginAccess();
        v18 = *(v5 + v17) + *(v5 + *((*v10 & *v5) + 0x90) + 24);
        v21 = v11 + 80;
        v19 = *(v11 + 80);
        v20 = *(v21 + 8);
        v22 = *(v20 + 32);
        swift_unknownObjectRetain();
        v23 = v22(v19, v20);
        swift_unknownObjectRelease();
        *(v5 + v16) = *(v5 + v16) + v18 * v23;
      }
    }
  }
}

void sub_24F0FFB44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24F1005E0();
}

id sub_24F0FFBA4()
{
  v1 = MEMORY[0x277D85000];
  result = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = [result isPaused];
  if (!result)
  {
    return result;
  }

  v3 = CACurrentMediaTime();
  v4 = (v0 + *((*v1 & *v0) + 0x80));
  if ((v4[1] & 1) == 0 && v3 - *v4 > 0.015)
  {
    *v4 = v3;
    *(v4 + 8) = 0;
  }

  sub_24F0FFD50();
  result = *(v0 + *((*v1 & *v0) + 0x78));
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return [result setPaused_];
}

uint64_t sub_24F0FFCA0()
{
  v1 = MEMORY[0x277D85000];
  result = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = [result isPaused];
  if (result)
  {
    return result;
  }

  result = *(v0 + *((*v1 & *v0) + 0x78));
  if (!result)
  {
    goto LABEL_8;
  }

  [result setPaused_];

  return sub_24F0FFD50();
}

uint64_t sub_24F0FFD50()
{
  v1 = MEMORY[0x277D85000];
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  swift_beginAccess();
  type metadata accessor for RiverRow();
  v3 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x253050DD0](v14, v3, WitnessTable);
  v12 = v14[0];
  sub_24F92CAF8();
  sub_24F92CAC8();
  sub_24F92CAE8();
  sub_24F92CAD8();
  if (v13)
  {
    for (i = v12; ; i = v12)
    {
      v6 = *(v0 + *((*v1 & *v0) + 0x88));
      if (i)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v0 + *((*v1 & *v0) + 0x90) + 48);
      }

      v8 = *((*v1 & *v0) + 0xA0);
      swift_beginAccess();
      LODWORD(v8) = *(v0 + v8);
      v9 = [v0 traitCollection];
      v10 = [v9 layoutDirection];

      sub_24E9053C4(v0, i, v7, 1, 1, v8, v10, v6, Width);

      sub_24F92CAD8();
    }
  }
}

uint64_t sub_24F0FFFB4(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90) + 48);
  }
}

id sub_24F0FFFEC()
{
  result = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  if (result)
  {
    return [result invalidate];
  }

  __break(1u);
  return result;
}

id sub_24F100028()
{
  v0 = sub_24F92B588();

  return v0;
}

id sub_24F100068(void *a1)
{
  v1 = a1;
  v2 = sub_24F1000D8();

  if (v2)
  {
    v3 = sub_24F92B588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *sub_24F1000D8()
{
  v1 = [v0 subviews];
  sub_24E69A5C4(0, &qword_27F220378);
  v2 = sub_24F92B5A8();

  v3 = sub_24E8E8F14(v2);

  return v3;
}

void sub_24F100154(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_24F92B5A8();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_24F1001CC(v4);
}

void sub_24F1001CC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_24F92B588();
  }

  else
  {
    v2 = 0;
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for RiverView();
  objc_msgSendSuper2(&v3, sel_setAutomationElements_, v2);
}

id RiverView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_24F100364()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F1003F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D85000];
  CGSizeMake(*((*MEMORY[0x277D85000] & *v3) + 0x50), *((*MEMORY[0x277D85000] & *v3) + 0x58), a3);
  type metadata accessor for RiverRowRecycler();
  swift_getWitnessTable();
  sub_24F922CB8();
  *(v3 + *((*v4 & *v3) + 0x78)) = 0;
  v5 = v3 + *((*v4 & *v3) + 0x80);
  *v5 = 0;
  v5[8] = 1;
  *(v3 + *((*v4 & *v3) + 0x88)) = 0;
  *(v3 + *((*v4 & *v3) + 0xA0)) = 0;
  sub_24F92CA88();
  __break(1u);
}

void sub_24F1005E0()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  swift_beginAccess();
  if (*(v0 + v3) == 1 && (sub_24F0FDA6C() & 1) != 0)
  {
    v4 = CACurrentMediaTime();
    v5 = v4;
    v6 = *v2 & *v0;
    v7 = (v0 + *(v6 + 0x80));
    if ((v7[1] & 1) == 0)
    {
      *(v0 + *((*v2 & *v0) + 0x88)) = (v4 - *v7) * *(v0 + *((*v2 & *v0) + 0x90) + 32) + *(v0 + *((*v2 & *v0) + 0x88));
      [v0 bounds];
      Width = CGRectGetWidth(v59);
      v9 = *((*v2 & *v0) + 0x98);
      swift_beginAccess();
      v10 = (v0 + *((*v2 & *v0) + 0x90));
      v11 = *(v0 + v9) + v10[3];
      v12 = v11 * (ceil(Width / v11) + 2.0) / v10[4];
      v13 = sub_24F92B098();
      v14 = [objc_opt_self() animationWithKeyPath_];

      v15 = *MEMORY[0x277CDA7C8];
      v16 = objc_opt_self();
      v17 = v14;
      v18 = [v16 functionWithName_];
      [v17 setTimingFunction_];

      v19 = [v1 traitCollection];
      sub_24F92BF88();

      v20 = sub_24F91FDF8();
      [v17 setByValue_];

      [v17 setDuration_];
      [v17 setBeginTime_];
      [v17 setFillMode_];
      [v17 setRemovedOnCompletion_];
      v52 = v17;

      v51 = 0;
      if (*(v1 + *((*v2 & *v1) + 0x90) + 48) == 1)
      {
        [v17 copy];
        sub_24F92C648();
        swift_unknownObjectRelease();
        sub_24E69A5C4(0, &qword_27F239630);
        if (swift_dynamicCast())
        {
          v21 = sub_24F91FDF8();
          v51 = v58;
          [v58 setByValue_];
        }

        else
        {
          v51 = 0;
        }
      }

      v22 = *((*v2 & *v1) + 0x60);
      swift_beginAccess();
      v57 = *(v1 + v22);
      type metadata accessor for RiverRow();
      v23 = sub_24F92B6E8();
      WitnessTable = swift_getWitnessTable();
      MEMORY[0x253050DD0](v54, v23, WitnessTable);
      v54[4] = v54[0];
      sub_24F92CAF8();
      sub_24F92CAC8();
      sub_24F92CAE8();
      sub_24F92CAD8();
      v25 = v56;
      if (v56)
      {
        v50 = v1;
        v49 = v1 + 6;
        v26 = v55;
        while (2)
        {
          v27 = *v50;
          v28 = *v2;
          if (v26)
          {
            v29 = 0;
          }

          else
          {
            v29 = *(v49 + *((*v2 & *v50) + 0x90));
          }

          v30 = *(v50 + *((v28 & v27) + 0x88));
          v31 = *((v28 & v27) + 0xA0);
          swift_beginAccess();
          v32 = *(v50 + v31);
          v33 = [v50 traitCollection];
          v34 = [v33 layoutDirection];

          sub_24E9053C4(v50, v26, v29, 0, 0, v32, v34, v30, Width);
          v35 = v52;
          if (((v51 != 0) & v29) != 0)
          {
            v35 = v51;
          }

          v53 = v35;
          swift_beginAccess();
          v36 = *(v25 + 72);
          v37 = 1 << *(v36 + 32);
          if (v37 < 64)
          {
            v38 = ~(-1 << v37);
          }

          else
          {
            v38 = -1;
          }

          v39 = v38 & *(v36 + 64);
          v40 = (v37 + 63) >> 6;

          v41 = 0;
          while (v39)
          {
LABEL_26:
            v43 = *(*(v36 + 56) + ((v41 << 9) | (8 * __clz(__rbit64(v39)))));
            v44 = [v43 layer];
            v45 = sub_24F92B098();
            v46 = [v44 animationForKey_];

            v47 = v43;
            if (!v46)
            {
              v46 = [v43 layer];

              v47 = sub_24F92B098();
              [v46 addAnimation:v53 forKey:v47];
            }

            v39 &= v39 - 1;
          }

          while (1)
          {
            v42 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              __break(1u);
              return;
            }

            if (v42 >= v40)
            {
              break;
            }

            v39 = *(v36 + 64 + 8 * v42);
            ++v41;
            if (v39)
            {
              v41 = v42;
              goto LABEL_26;
            }
          }

          sub_24F92CAD8();
          v26 = v55;
          v25 = v56;
          v2 = MEMORY[0x277D85000];
          if (v56)
          {
            continue;
          }

          break;
        }

        v1 = v50;
      }

      v6 = *v2 & *v1;
    }

    v48 = (v1 + *(v6 + 128));
    *v48 = v5;
    *(v48 + 8) = 0;
  }
}

uint64_t sub_24F100DE4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24F100364();
}

__n128 sub_24F100E58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24F100EC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F0FD924();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F100F28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F0FDB44();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F100F8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F100FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F101034()
{
  type metadata accessor for RiverRowRecycler();
  swift_getWitnessTable();
  result = sub_24F922CC8();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t Artwork.URLTemplate.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

BOOL Artwork.URLTemplate.isBundleImage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E70E058(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_24F91F478();
  if (!v9)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v8 != 0x656372756F736572 || v9 != 0xE800000000000000)
  {
    v11 = sub_24F92CE08();

    (*(v4 + 8))(v6, v3);
    return (v11 & 1) != 0;
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

BOOL Artwork.URLTemplate.isSystemImage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E70E058(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_24F91F478();
  if (!v9)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v8 != 0x6D696D6574737973 || v9 != 0xEB00000000656761)
  {
    v11 = sub_24F92CE08();

    (*(v4 + 8))(v6, v3);
    return (v11 & 1) != 0;
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t Artwork.URLTemplate.systemImageName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v5 = *v0;
  v4 = v0[1];
  v33 = *v0;
  v34 = v4;
  if (!Artwork.URLTemplate.isSystemImage.getter())
  {
    return 0;
  }

  v28 = v3;
  v6 = sub_24E60B4B0(MEMORY[0x277D84F90]);
  v7 = v6;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(*(v7 + 48) + v16);
      v11 &= v11 - 1;
      v18 = (*(v7 + 56) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v33 = v5;
      v34 = v4;
      v31 = qword_24F9C9CD8[v17];
      v32 = 0xE300000000000000;
      v29 = v19;
      v30 = v20;
      sub_24E600AEC();

      v5 = sub_24F92C568();
      v22 = v21;

      v4 = v22;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  v23 = v28;
  sub_24F91F488();

  v24 = sub_24F91F4A8();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_24E70E058(v23);
    return 0;
  }

  v26 = sub_24F91F438();
  (*(v25 + 8))(v23, v24);
  return v26;
}

Swift::String __swiftcall Artwork.URLTemplate.makeString(withSubstitutions:)(Swift::OpaquePointer withSubstitutions)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = withSubstitutions._rawValue + 64;
  v5 = 1 << *(withSubstitutions._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(withSubstitutions._rawValue + 8);
  v8 = (v5 + 63) >> 6;

  v11 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v9 = v3;
      v10 = v2;
      goto LABEL_13;
    }

    v7 = *&v4[8 * v12];
    ++v11;
    if (v7)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        sub_24E600AEC();

        v3 = sub_24F92C568();
        v14 = v13;

        v2 = v14;
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
LABEL_13:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t Artwork.URLTemplate.Key.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24F101E3C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F101E98()
{
  sub_24F92B218();
}

uint64_t sub_24F101ED8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t Artwork.URLTemplate.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24F928348();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_24F9285B8();
    (*(*(v10 - 8) + 8))(a2, v10);
    v11 = sub_24F928388();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v13 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v14 = MEMORY[0x277D84F90];
    *v15 = &type metadata for Artwork.URLTemplate;
    v15[1] = v14;
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D22538], v13);
    swift_willThrow();
    v16 = sub_24F9285B8();
    (*(*(v16 - 8) + 8))(a2, v16);
    v17 = sub_24F928388();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  return result;
}

uint64_t Artwork.URLTemplate.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Artwork.URLTemplate.makeURL(withSubstitutions:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      sub_24F91F488();
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;
        sub_24E600AEC();

        sub_24F92C568();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24F102314()
{
  result = qword_27F239638;
  if (!qword_27F239638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239638);
  }

  return result;
}

unint64_t sub_24F10236C()
{
  result = qword_27F239640;
  if (!qword_27F239640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239640);
  }

  return result;
}

uint64_t sub_24F1023F4(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = *(a2 + 40);
  v2[13] = *(a2 + 32);
  v2[14] = v3;
  return MEMORY[0x2822009F8](sub_24F10241C, 0, 0);
}

uint64_t sub_24F10241C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8);
  *v4 = v0;
  v4[1] = sub_24F102528;

  return MEMORY[0x2822008A0](v0 + 9, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24F102528()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24F1028BC;
  }

  else
  {

    v2 = sub_24F102644;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F102644()
{
  v1 = v0[12];
  v2 = v0[9];
  v0[18] = v2;
  v3 = [v2 internal];
  v0[19] = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];

  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v0[21] = v7;
  v8 = sub_24E69A5C4(0, &qword_27F21C808);
  *v7 = v0;
  v7[1] = sub_24F1027A0;

  return MEMORY[0x2822008A0](v0 + 10, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v6, v8);
}

uint64_t sub_24F1027A0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24F102B50;
  }

  else
  {

    v2 = sub_24F102920;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1028BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F102920()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[10];
  v0[23] = v3;
  v4 = *v2;
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[24] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_24F102A34;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000023, 0x800000024FA6C0F0, sub_24F1034FC, v6, &type metadata for LeaderboardSet);
}

uint64_t sub_24F102A34()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24F102C5C;
  }

  else
  {

    v2 = sub_24F102BC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F102B50()
{
  v1 = v0[19];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F102BC0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v7;
  *(v3 + 48) = v6;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F102C5C()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4();
}

void sub_24F102CD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - v13;
  v15 = [objc_opt_self() proxyForPlayer_];
  v16 = [v15 gameStatService];

  v17 = [a3 gameDescriptor];
  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v14, v10);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a4;
  v20[1] = a5;
  aBlock[4] = sub_24F1035B4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F1033A0;
  aBlock[3] = &block_descriptor_117;
  v21 = _Block_copy(aBlock);

  [v16 getLeaderboardSetsForGameDescriptor:v17 handler:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

void sub_24F102F2C(unint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648);
LABEL_27:
    sub_24F92B788();
    return;
  }

  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = sub_24F92B0D8();
    *(inited + 40) = v27;
    sub_24F92C888();

    MEMORY[0x253050C20](a4, a5);
    MEMORY[0x253050C20](0x756F6620746F6E20, 0xEA0000000000646ELL);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x800000024FA6C140;
    sub_24E608448(inited);
    swift_setDeallocating();
    sub_24EA24CCC(inited + 32);
    v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v29 = sub_24F92B098();
    v30 = sub_24F92AE28();

    [v28 initWithDomain:v29 code:404 userInfo:v30];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648);
    goto LABEL_27;
  }

LABEL_25:
  v9 = sub_24F92C738();
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x253052270](v10, a1);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v14 = [v11 identifier];
    v15 = sub_24F92B0D8();
    v17 = v16;

    if (v15 == a4 && v17 == a5)
    {
      break;
    }

    v19 = sub_24F92CE08();

    if (v19)
    {
      goto LABEL_19;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_26;
    }
  }

LABEL_19:
  v20 = [objc_allocWithZone(MEMORY[0x277D0C128]) initWithInternalRepresentation_];
  v21 = [v12 identifier];
  sub_24F92B0D8();

  v22 = [v12 title];
  sub_24F92B0D8();

  if (v20)
  {
    v23 = [v20 imageURL];
    if (v23)
    {
      v24 = v23;
      sub_24F92B0D8();
    }
  }

  v25 = [v12 leaderboardIdentifiers];
  sub_24F92AE38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648);
  sub_24F92B798();
}

void sub_24F1033A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24E69A5C4(0, &qword_27F239650);
  v5 = sub_24F92B5A8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24F103450(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_24E7AF58C;

  return sub_24F1023F4(a1, v2 + 16);
}

uint64_t sub_24F103508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24F1035B4(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239648) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_24F102F2C(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ReviewsContainer.__allocating_init(id:adamId:ratings:tapToRate:reviews:reviewSummary:editorsChoice:writeReviewAction:supportAction:alwaysAllowReviews:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v34 = a5;
  v35 = a6;
  v30 = a3;
  v33 = a10;
  v31 = a9;
  v32 = a4;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v20 = *a2;
  v19 = a2[1];
  sub_24E65E064(a1, &v38);
  if (*(&v39 + 1))
  {
    v21 = v39;
    *(v18 + 96) = v38;
    *(v18 + 112) = v21;
    *(v18 + 128) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v29 = a7;
    v23 = a8;
    v25 = v24;
    (*(v15 + 8))(v17, v14);
    v36 = v22;
    v37 = v25;
    a8 = v23;
    a7 = v29;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v38);
  }

  sub_24E9BBAA8(a1);
  *(v18 + 16) = v20;
  *(v18 + 24) = v19;
  v26 = v32;
  *(v18 + 32) = v30;
  *(v18 + 40) = v26;
  v27 = v35;
  *(v18 + 48) = v34;
  *(v18 + 56) = v27;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  *(v18 + 80) = v31;
  *(v18 + 88) = v33 & 1;
  return v18;
}

uint64_t ReviewsContainer.init(id:adamId:ratings:tapToRate:reviews:reviewSummary:editorsChoice:writeReviewAction:supportAction:alwaysAllowReviews:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v39 = a3;
  v42 = a10;
  v40 = a9;
  v41 = a4;
  v18 = sub_24F91F6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v23 = a2[1];
  v38 = v22;
  sub_24E65E064(a1, &v45);
  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v36 = v23;
    v37 = a5;
    v25 = v24;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v30 = v29;
    (*(v19 + 8))(v21, v18);
    v43 = v25;
    v44 = v30;
    a8 = v28;
    a7 = v27;
    a6 = v26;
    v23 = v36;
    a5 = v37;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v45);
  }

  sub_24E9BBAA8(a1);
  v31 = v49;
  *(v11 + 96) = v48;
  *(v11 + 112) = v31;
  *(v11 + 128) = v50;
  v32 = v39;
  *(v11 + 16) = v38;
  *(v11 + 24) = v23;
  v33 = v40;
  v34 = v41;
  *(v11 + 32) = v32;
  *(v11 + 40) = v34;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 80) = v33;
  *(v11 + 88) = v42 & 1;
  return v11;
}

uint64_t ReviewsContainer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewsContainer.init(deserializing:using:)(a1, a2);
  return v4;
}

void (**ReviewsContainer.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v3 = v2;
  v64 = a2;
  v5 = *v3;
  v73 = v3;
  v58 = v5;
  v6 = sub_24F9285B8();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v59 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24F928388();
  v12 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v57 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v57 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v57 - v21;
  v65 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  if (v24)
  {
    v68 = v23;
    v69 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v26 = v9;
    v28 = v27;
    (*(v26 + 8))(v11, v8);
    v68 = v25;
    v69 = v28;
  }

  sub_24F92C7F8();
  v29 = *(v12 + 8);
  v66 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67 = v29;
  v30 = v61;
  v29(v22, v61);
  v31 = v71;
  v32 = v73;
  *(v73 + 6) = v70;
  *(v32 + 7) = v31;
  v32[16] = v72;
  v33 = v65;
  sub_24F928398();
  v34 = sub_24F928348();
  v36 = v35;
  v67(v19, v30);
  if (v36)
  {
    v37 = v73;
    v73[2] = v34;
    v37[3] = v36;
    type metadata accessor for Ratings();
    sub_24F928398();
    v38 = v63;
    v58 = *(v62 + 16);
    v39 = v59;
    v40 = v64;
    v58(v59, v64, v63);
    v57[1] = &protocol conformance descriptor for ProductRatingsAndReviewsComponent;
    sub_24F104D2C(&qword_27F213ED0, 255, type metadata accessor for Ratings);
    sub_24F929548();
    v37[4] = v70;
    type metadata accessor for TapToRate();
    sub_24F928398();
    v41 = v40;
    v42 = v40;
    v43 = v58;
    v58(v39, v41, v38);
    sub_24F104D2C(&qword_27F239658, 255, type metadata accessor for TapToRate);
    sub_24F929548();
    v37[5] = v70;
    v44 = v65;
    sub_24F928398();
    v43(v39, v42, v38);
    v45 = v43;
    type metadata accessor for Review(0);
    sub_24F104D2C(&qword_27F2328C8, 255, type metadata accessor for Review);
    v73[6] = sub_24F92B698();
    type metadata accessor for ReviewSummary();
    sub_24F928398();
    v46 = v64;
    v45(v39, v64, v38);
    sub_24F104D2C(&qword_27F214548, 255, type metadata accessor for ReviewSummary);
    sub_24F929548();
    v73[7] = v70;
    type metadata accessor for EditorsChoice();
    sub_24F928398();
    v45(v39, v46, v38);
    sub_24F104D2C(&qword_27F2328E8, 255, type metadata accessor for EditorsChoice);
    sub_24F929548();
    v73[8] = v70;
    type metadata accessor for Action();
    v47 = v44;
    v48 = v73;
    sub_24F928398();
    v49 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v46);
    v50 = v61;
    v51 = v67;
    v67(v16, v61);
    v48[9] = v49;
    sub_24F928398();
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v46);
    v51(v16, v50);
    v48[10] = v52;
    v53 = v60;
    sub_24F928398();
    LOBYTE(v52) = sub_24F928278();
    (*(v62 + 8))(v46, v63);
    v51(v47, v50);
    v51(v53, v50);
    *(v48 + 88) = v52 & 1;
  }

  else
  {
    v54 = sub_24F92AC38();
    sub_24F104D2C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v55 = 0x64496D616461;
    v55[1] = 0xE600000000000000;
    v55[2] = v58;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v62 + 8))(v64, v63);
    v67(v33, v30);
    sub_24E6585F8((v73 + 12));
    type metadata accessor for ReviewsContainer();
    swift_deallocPartialClassInstance();
  }

  return v73;
}

uint64_t ReviewsContainer.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_24F104438@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[6];
  if (v5 >> 62)
  {
    if (sub_24F92C738() > a1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
LABEL_3:
    a2[3] = type metadata accessor for Review(0);
    a2[4] = sub_24F104D2C(&qword_27F2328C0, 255, type metadata accessor for Review);
    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x253052270](a1, v5);
      goto LABEL_7;
    }

    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

LABEL_7:
      *a2 = result;
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  v7 = v2[8];
  if (!v7)
  {
    goto LABEL_12;
  }

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) != a1)
    {
      goto LABEL_12;
    }

LABEL_16:
    a2[3] = type metadata accessor for EditorsChoice();
    a2[4] = sub_24F104D2C(&qword_27F2328E0, 255, type metadata accessor for EditorsChoice);
    *a2 = v7;
    goto LABEL_17;
  }

  if (sub_24F92C738() == a1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = v2[7];
  if (!v8 || a1)
  {
LABEL_23:
    result = sub_24F92CA88();
    __break(1u);
    return result;
  }

  a2[3] = type metadata accessor for ReviewSummary();
  a2[4] = sub_24F104D2C(&qword_27F239660, 255, type metadata accessor for ReviewSummary);
  *a2 = v8;
LABEL_17:
}

uint64_t sub_24F104688@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 48);
  if (v3 >> 62)
  {
    v5 = result;
    v6 = a2;
    v7 = sub_24F92C738();
    a2 = v6;
    v8 = v7;
    result = v5;
    if (v8 > v5)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
LABEL_3:
    v4 = 26;
LABEL_11:
    *a2 = v4;
    return result;
  }

  if (*(v2 + 64))
  {
    if (v3 >> 62)
    {
      v10 = result;
      v11 = a2;
      v12 = sub_24F92C738();
      a2 = v11;
      v9 = v12;
      result = v10;
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == result)
    {
      v4 = 28;
      goto LABEL_11;
    }
  }

  result = sub_24F92CA88();
  __break(1u);
  return result;
}

uint64_t sub_24F1047A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  if (v2 >> 62)
  {
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 != 0;
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F104804@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = *(v2 + 64);
    if (v9)
    {
      if (v4 >> 62)
      {
        v10 = result;
        v11 = sub_24F92C738();
        result = v10;
        if (v11 != v10)
        {
          goto LABEL_20;
        }
      }

      else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) != result)
      {
        goto LABEL_20;
      }

      result = swift_beginAccess();
      v12 = *(v9 + 64);
      if (v12)
      {
        *a2 = v12;
        *(a2 + 32) = type metadata accessor for EditorsChoice();
        *(a2 + 8) = v9;
      }
    }

LABEL_20:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v7 = result;
  v8 = sub_24F92C738();
  result = v7;
  if (v8 <= v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      v5 = *(v4 + 8 * result + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v5 = MEMORY[0x253052270]();
LABEL_7:
  v6 = *(v5 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction);
  if (!v6)
  {

    goto LABEL_20;
  }

  *a2 = v6;
  *(a2 + 32) = type metadata accessor for Review(0);
  *(a2 + 8) = v5;
}

uint64_t sub_24F1049B8(uint64_t result)
{
  v2 = *(v1 + 48);
  if (v2 >> 62)
  {
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
LABEL_8:
    if (*(v1 + 64))
    {
      if (v2 >> 62)
      {
        v6 = result;
        v5 = sub_24F92C738();
        result = v6;
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v5 == result;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while ((v2 & 0xC000000000000001) == 0)
    {
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
      {
        return 0;
      }

      __break(1u);
LABEL_7:
      v3 = result;
      v4 = sub_24F92C738();
      result = v3;
      if (v4 <= v3)
      {
        goto LABEL_8;
      }
    }

    v7 = *(MEMORY[0x253052270]() + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction);

    swift_unknownObjectRelease();
    if (!v7)
    {
      return 0;
    }

    return 0;
  }
}

uint64_t ReviewsContainer.deinit()
{

  sub_24E6585F8(v0 + 96);
  return v0;
}

uint64_t ReviewsContainer.__deallocating_deinit()
{
  ReviewsContainer.deinit();

  return swift_deallocClassInstance();
}

void (**sub_24F104BC4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(char *, uint64_t, uint64_t)
{
  type metadata accessor for ReviewsContainer();
  v7 = swift_allocObject();
  result = ReviewsContainer.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F104C74()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  if (v2 >> 62)
  {
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 != 0;
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F104CD4(uint64_t a1, uint64_t a2)
{
  result = sub_24F104D2C(&qword_27F2328D0, a2, type metadata accessor for ReviewsContainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F104D2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 InsetLayout.init(sublayout:layoutMargins:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_24E8EA128(a1, v14);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235770);
  v11 = swift_allocObject();
  v12 = v15;
  *(v11 + 48) = v14[2];
  *(v11 + 64) = v12;
  *(v11 + 80) = v16;
  result = v14[1];
  *(v11 + 16) = v14[0];
  *(v11 + 32) = result;
  *a2 = v11;
  return result;
}

_OWORD *InsetLayout.sublayout.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24F104FD4(v3 + 16, v5);
  return sub_24E8EA128(v5, a1);
}

_OWORD *sub_24F10500C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_24F104FD4(v3 + 16, v5);
  return sub_24E8EA128(v5, a2);
}

uint64_t InsetLayout.sublayout.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24F104FD4(v3 + 16, v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_24E8EA128(a1, v9);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24F105150(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235770);
    v6 = swift_allocObject();
    v7 = v9[3];
    v6[3] = v9[2];
    v6[4] = v7;
    v6[5] = v9[4];
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*InsetLayout.sublayout.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 152) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_24F104FD4(v5 + 16, v4);
  sub_24E8EA128(v4, v4 + 5);
  return sub_24F105228;
}

void sub_24F105228(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 5;
  if (a2)
  {
    sub_24E8F997C(v3, v2);
    InsetLayout.sublayout.setter(v2);
    __swift_destroy_boxed_opaque_existential_1((v2 + 5));
  }

  else
  {
    InsetLayout.sublayout.setter(v3);
  }

  free(v2);
}

double InsetLayout.layoutMargins.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t InsetLayout.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_24F104FD4(v9 + 16, v15);
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v4;
    swift_beginAccess();
    sub_24F105150(v15, v10 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235770);
    v12 = swift_allocObject();
    v13 = v16;
    v12[3] = v15[2];
    v12[4] = v13;
    v12[5] = v17;
    v14 = v15[1];
    v12[1] = v15[0];
    v12[2] = v14;

    *v4 = v12;
  }

  return result;
}

void (*InsetLayout.layoutMargins.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 80);
  *v4 = *(v5 + 64);
  v4[1] = v6;
  return sub_24F105450;
}

void sub_24F105450(double **a1)
{
  v1 = *a1;
  InsetLayout.layoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double InsetLayout.measurements(fitting:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  sub_24F92C228();
  sub_24F104FD4(v1 + 16, v5);
  sub_24E8EA128(v5, &v6);
  __swift_project_boxed_opaque_existential_1(&v6, v7);
  sub_24F922288();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(&v6);
  return v3 + *(v1 + 72) + *(v1 + 88);
}

uint64_t InsetLayout.placeChildren(relativeTo:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  sub_24F104FD4((v1 + 2), v18);
  sub_24E8EA128(v18, &v19);
  __swift_project_boxed_opaque_existential_1(&v19, v20);
  sub_24F92C1C8();
  sub_24F922AC8();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v2 = v1[8];
  v3 = sub_24F9221B8();
  v4 = sub_24F922BD8();
  *v5 = v2 + *v5;
  v4(&v19, 0);
  v3(v18, 0);
  v6 = v1[10];
  v7 = sub_24F9221B8();
  v8 = sub_24F922BA8();
  *v9 = v6 + *v9;
  v8(&v19, 0);
  v7(v18, 0);
  v10 = v1[9];
  v11 = sub_24F922198();
  *v12 = *v12 - v10;
  v11(v18, 0);
  v13 = v1[8];
  v14 = sub_24F922198();
  *(v15 + 8) = *(v15 + 8) - v13;
  v14(v18, 0);
  v16 = sub_24F922148();
  sub_24F92C238();
  return v16(v18, 0);
}

__n128 sub_24F105820@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

char *Action.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a2;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v8[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  sub_24E60169C(a1, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v32 = a7;
    v33 = a3;
    v21 = a4;
    v22 = a6;
    v23 = v20;
    v24 = a5;
    v26 = v25;
    (*(v16 + 8))(v18, v15);
    v35 = v23;
    v36 = v26;
    a6 = v22;
    a4 = v21;
    a5 = v24;
    a7 = v32;
    a3 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v27 = &v8[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 4) = v42;
  sub_24E65E0D4(a7, &v8[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics]);
  *(v8 + 2) = v34;
  *(v8 + 3) = a3;
  *(v8 + 4) = a4;
  *(v8 + 5) = a5;
  v29 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v30 = sub_24F928AD8();
  (*(*(v30 - 8) + 32))(&v8[v29], a6, v30);
  return v8;
}

char *Action.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v61 - v6;
  v69 = sub_24F928AD8();
  v67 = *(v69 - 8);
  v7 = MEMORY[0x28223BE20](v69);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v61 - v9;
  v65 = sub_24F9285B8();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v61 - v14;
  v15 = sub_24F91F6B8();
  v72 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24F928388();
  v18 = *(v79 - 8);
  v19 = MEMORY[0x28223BE20](v79);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = (v3 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  v68 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  if (v26)
  {
    v74 = v25;
    v75 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v28 = v10;
    v29 = v3;
    v30 = v12;
    v31 = v28;
    v32 = v15;
    v34 = v33;
    v72[1](v17, v32);
    v74 = v27;
    v75 = v34;
    v35 = v31;
    v12 = v30;
    v3 = v29;
    v10 = v35;
  }

  sub_24F92C7F8();
  v36 = *(v18 + 8);
  v71 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72 = v36;
  (v36)(v23, v79);
  v63 = v10;
  v37 = v3 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v38 = v77;
  *v37 = v76;
  *(v37 + 1) = v38;
  *(v37 + 4) = v78;
  sub_24F929608();
  v39 = v68;
  sub_24F928398();
  v70 = *(v10 + 16);
  v40 = v65;
  v70(v12, v73, v65);
  v41 = v64;
  sub_24F929548();
  v42 = v41;
  v43 = v39;
  sub_24E65E0D4(v42, v3 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  sub_24F928398();
  v44 = sub_24F928348();
  v46 = v45;
  (v72)(v21, v79);
  v3[2] = v44;
  v3[3] = v46;
  type metadata accessor for Artwork();
  sub_24F928398();
  v47 = v73;
  v70(v12, v73, v40);
  sub_24F10B8A4(&qword_27F219660, type metadata accessor for Artwork);
  v48 = v40;
  v49 = v47;
  sub_24F929548();
  v3[4] = v76;
  sub_24F928398();
  v50 = v3;
  v3[5] = _sSo26ASKActionPresentationStyleV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v21);
  v51 = v43;
  v52 = v49;
  sub_24F928398();
  v70(v12, v49, v48);
  v53 = v66;
  v54 = v69;
  sub_24F929548();
  v55 = v67;
  if ((*(v67 + 48))(v53, 1, v54) == 1)
  {
    sub_24E601704(v53, &qword_27F223CE8);
    v56 = v48;
    v57 = v62;
    sub_24F928A98();
    (*(v63 + 8))(v52, v56);
    (v72)(v51, v79);
    (*(v55 + 32))(&v50[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v57, v54);
  }

  else
  {
    (*(v63 + 8))(v52, v48);
    (v72)(v51, v79);
    v58 = *(v55 + 32);
    v59 = v61;
    v58(v61, v53, v54);
    v58(&v50[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v59, v54);
  }

  return v50;
}

uint64_t Action.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t sub_24F106318@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Action();
  a1[4] = sub_24F10B8A4(&qword_27F216DE8, type metadata accessor for Action);
  *a1 = v1;
}

uint64_t sub_24F10639C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F2129B0);
}

uint64_t sub_24F106404(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit6Action_clickSender;
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24F1064C4()
{
  v1 = 0xE000000000000000;
  sub_24F92C888();
  v2 = sub_24F92D1E8();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](539828256, 0xE400000000000000);
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 16);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v1 = *(v0 + 24);
  }

  MEMORY[0x253050C20](v4, v1);

  MEMORY[0x253050C20](0x697274654D202D20, 0xEC000000203A7363);
  sub_24F928AD8();
  sub_24F92CA38();
  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0;
}

char *static Action.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v514 = a2;
  v3 = sub_24F9285B8();
  v4 = *(v3 - 8);
  v515 = v3;
  v516 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v489 = &v397 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v488 = &v397 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v487 = &v397 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v486 = &v397 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v484 = &v397 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v485 = &v397 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v482 = &v397 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v483 = &v397 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v481 = &v397 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v480 = &v397 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v479 = &v397 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v478 = &v397 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v477 = &v397 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v476 = &v397 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v475 = &v397 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v473 = &v397 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v471 = &v397 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v469 = &v397 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v470 = &v397 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v463 = &v397 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v461 = &v397 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v459 = &v397 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v457 = &v397 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v455 = &v397 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v453 = &v397 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v452 = &v397 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v449 = &v397 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v447 = &v397 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v446 = &v397 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v442 = &v397 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v439 = &v397 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v437 = &v397 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v438 = &v397 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v434 = &v397 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v432 = &v397 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v430 = &v397 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v427 = &v397 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v426 = &v397 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v429 = &v397 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v423 = &v397 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v421 = &v397 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v419 = &v397 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v417 = &v397 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v415 = &v397 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v413 = &v397 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v491 = &v397 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v493 = &v397 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v495 = &v397 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v497 = &v397 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v499 = &v397 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v501 = &v397 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v503 = &v397 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v505 = &v397 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v507 = &v397 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v508 = &v397 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v509 = &v397 - v116;
  MEMORY[0x28223BE20](v115);
  v511 = &v397 - v117;
  v118 = sub_24F928388();
  v518 = *(v118 - 8);
  v119 = MEMORY[0x28223BE20](v118);
  v474 = &v397 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = MEMORY[0x28223BE20](v119);
  v472 = &v397 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v468 = &v397 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v467 = &v397 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v465 = &v397 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v466 = &v397 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v460 = &v397 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v462 = &v397 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v458 = &v397 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v456 = &v397 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v454 = &v397 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v451 = &v397 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v450 = &v397 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v448 = &v397 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v445 = &v397 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v443 = &v397 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v441 = &v397 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v436 = &v397 - v154;
  v155 = MEMORY[0x28223BE20](v153);
  v440 = &v397 - v156;
  v157 = MEMORY[0x28223BE20](v155);
  v435 = &v397 - v158;
  v159 = MEMORY[0x28223BE20](v157);
  v433 = &v397 - v160;
  v161 = MEMORY[0x28223BE20](v159);
  v431 = &v397 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v428 = &v397 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v425 = &v397 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v424 = &v397 - v168;
  v169 = MEMORY[0x28223BE20](v167);
  v422 = &v397 - v170;
  v171 = MEMORY[0x28223BE20](v169);
  v420 = &v397 - v172;
  v173 = MEMORY[0x28223BE20](v171);
  v418 = &v397 - v174;
  v175 = MEMORY[0x28223BE20](v173);
  v416 = &v397 - v176;
  v177 = MEMORY[0x28223BE20](v175);
  v414 = &v397 - v178;
  v179 = MEMORY[0x28223BE20](v177);
  v411 = &v397 - v180;
  v181 = MEMORY[0x28223BE20](v179);
  v410 = &v397 - v182;
  v183 = MEMORY[0x28223BE20](v181);
  v412 = &v397 - v184;
  v185 = MEMORY[0x28223BE20](v183);
  v409 = &v397 - v186;
  v187 = MEMORY[0x28223BE20](v185);
  v408 = &v397 - v188;
  v189 = MEMORY[0x28223BE20](v187);
  v407 = &v397 - v190;
  v191 = MEMORY[0x28223BE20](v189);
  v405 = &v397 - v192;
  v193 = MEMORY[0x28223BE20](v191);
  v404 = &v397 - v194;
  v195 = MEMORY[0x28223BE20](v193);
  v406 = &v397 - v196;
  v197 = MEMORY[0x28223BE20](v195);
  v403 = &v397 - v198;
  v199 = MEMORY[0x28223BE20](v197);
  v402 = &v397 - v200;
  v201 = MEMORY[0x28223BE20](v199);
  v401 = &v397 - v202;
  v203 = MEMORY[0x28223BE20](v201);
  v400 = &v397 - v204;
  v205 = MEMORY[0x28223BE20](v203);
  v399 = &v397 - v206;
  v207 = MEMORY[0x28223BE20](v205);
  v398 = &v397 - v208;
  v209 = MEMORY[0x28223BE20](v207);
  v490 = &v397 - v210;
  v211 = MEMORY[0x28223BE20](v209);
  v492 = &v397 - v212;
  v213 = MEMORY[0x28223BE20](v211);
  v494 = &v397 - v214;
  v215 = MEMORY[0x28223BE20](v213);
  v496 = &v397 - v216;
  v217 = MEMORY[0x28223BE20](v215);
  v498 = &v397 - v218;
  v219 = MEMORY[0x28223BE20](v217);
  v500 = &v397 - v220;
  v221 = MEMORY[0x28223BE20](v219);
  v502 = &v397 - v222;
  v223 = MEMORY[0x28223BE20](v221);
  v504 = &v397 - v224;
  v225 = MEMORY[0x28223BE20](v223);
  v506 = &v397 - v226;
  v227 = MEMORY[0x28223BE20](v225);
  v229 = &v397 - v228;
  v230 = MEMORY[0x28223BE20](v227);
  v232 = &v397 - v231;
  v233 = MEMORY[0x28223BE20](v230);
  v235 = &v397 - v234;
  MEMORY[0x28223BE20](v233);
  v237 = &v397 - v236;
  v513 = a1;
  sub_24F928398();
  v238 = sub_24F928348();
  v240 = v239;
  v241 = *(v518 + 8);
  v512 = v118;
  v464 = v518 + 8;
  v444 = v241;
  v241(v237, v118);
  if (!v240)
  {
    v242 = sub_24F92AC38();
    sub_24F10B8A4(&qword_27F2213B8, MEMORY[0x277D22548]);
    v243 = swift_allocError();
    *v244 = 0x6C436E6F69746361;
    v244[1] = 0xEB00000000737361;
    v244[2] = v510;
    (*(*(v242 - 8) + 104))(v244, *MEMORY[0x277D22530], v242);
    swift_willThrow();
    return v243;
  }

  if (v238 == 0x69746341776F6C46 && v240 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    (*(v518 + 16))(v235, v513, v512);
    v245 = v511;
    (*(v516 + 16))(v511, v514, v515);
    type metadata accessor for FlowAction();
    v243 = swift_allocObject();
    v246 = v517;
    v247 = FlowAction.init(deserializing:using:)(v235, v245);
    if (v246)
    {
      return v243;
    }

    return v247;
  }

  if (v238 == 0xD000000000000011 && 0x800000024FA6C250 == v240 || (v511 = v238, v397 = v240, v248 = sub_24F92CE08(), v249 = v511, (v248 & 1) != 0))
  {

    (*(v518 + 16))(v232, v513, v512);
    v250 = v509;
    (*(v516 + 16))(v509, v514, v515);
    type metadata accessor for ExternalUrlAction();
    v243 = swift_allocObject();
    v251 = v517;
    v247 = ExternalUrlAction.init(deserializing:using:)(v232, v250);
    if (v251)
    {
      return v243;
    }

    return v247;
  }

  if (v511 == 0x646E756F706D6F43 && v397 == 0xEE006E6F69746341 || (v253 = v397, (sub_24F92CE08() & 1) != 0))
  {

    (*(v518 + 16))(v229, v513, v512);
    v254 = v508;
    (*(v516 + 16))(v508, v514, v515);
    type metadata accessor for CompoundAction();
    v243 = swift_allocObject();
    v255 = v517;
    v247 = CompoundAction.init(deserializing:using:)(v229, v254);
    if (v255)
    {
      return v243;
    }

    return v247;
  }

  if (v249 == 0x746341726566664FLL && v253 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    v256 = v506;
    (*(v518 + 16))(v506, v513, v512);
    v257 = v507;
    (*(v516 + 16))(v507, v514, v515);
    type metadata accessor for OfferAction();
    v243 = swift_allocObject();
    v258 = v517;
    v247 = OfferAction.init(deserializing:using:)(v256, v257);
    if (v258)
    {
      return v243;
    }

    return v247;
  }

  if (v249 == 0xD000000000000010 && 0x800000024FA6C270 == v253 || (v259 = sub_24F92CE08(), v260 = v397, (v259 & 1) != 0))
  {

    v261 = v504;
    (*(v518 + 16))(v504, v513, v512);
    v262 = v505;
    (*(v516 + 16))(v505, v514, v515);
    type metadata accessor for OfferStateAction();
    v243 = swift_allocObject();
    v263 = v517;
    v247 = OfferStateAction.init(deserializing:using:)(v261, v262);
    if (v263)
    {
      return v243;
    }

    return v247;
  }

  if (v511 == 0x6974634170747448 && v397 == 0xEA00000000006E6FLL || (v264 = v511, (sub_24F92CE08() & 1) != 0))
  {

    v265 = v502;
    (*(v518 + 16))(v502, v513, v512);
    v266 = v503;
    (*(v516 + 16))(v503, v514, v515);
    type metadata accessor for HttpAction();
    v243 = swift_allocObject();
    v267 = v517;
    v247 = HttpAction.init(deserializing:using:)(v265, v266);
    if (v267)
    {
      return v243;
    }

    return v247;
  }

  if (v264 == 0xD000000000000012 && 0x800000024FA6C290 == v260 || (sub_24F92CE08() & 1) != 0)
  {

    v268 = v500;
    (*(v518 + 16))(v500, v513, v512);
    v269 = v501;
    (*(v516 + 16))(v501, v514, v515);
    type metadata accessor for HttpTemplateAction();
    v243 = swift_allocObject();
    v270 = v517;
    v247 = HttpTemplateAction.init(deserializing:using:)(v268, v269);
    if (v270)
    {
      return v243;
    }

    return v247;
  }

  v243 = 0xD000000000000010;
  if (v511 == 0x7463417465656853 && v397 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    v271 = v498;
    (*(v518 + 16))(v498, v513, v512);
    v272 = v499;
    (*(v516 + 16))(v499, v514, v515);
    type metadata accessor for SheetAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SheetAction.init(deserializing:using:)(v271, v272);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000010 && 0x800000024FA6C2B0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v275 = v496;
    (*(v518 + 16))(v496, v513, v512);
    v276 = v497;
    (*(v516 + 16))(v497, v514, v515);
    type metadata accessor for OfferAlertAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = OfferAlertAction.init(deserializing:using:)(v275, v276);
    goto LABEL_44;
  }

  if (v511 == 0x7463417472656C41 && v397 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    v277 = v494;
    (*(v518 + 16))(v494, v513, v512);
    v278 = v495;
    (*(v516 + 16))(v495, v514, v515);
    type metadata accessor for AlertAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = AlertAction.init(deserializing:using:)(v277, v278);
    goto LABEL_44;
  }

  if (v511 == 0x676E616843626154 && v397 == 0xEF6E6F6974634165 || (sub_24F92CE08() & 1) != 0)
  {

    v243 = v492;
    (*(v518 + 16))(v492, v513, v512);
    v279 = v493;
    (*(v516 + 16))(v493, v514, v515);
    v273 = v517;
    v274 = sub_24EC10204(v243, v279);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000013 && 0x800000024FA6C2D0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v280 = v490;
    (*(v518 + 16))(v490, v513, v512);
    v281 = v491;
    (*(v516 + 16))(v491, v514, v515);
    type metadata accessor for AdInteractionAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = AdInteractionAction.init(deserializing:using:)(v280, v281);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000014 && 0x800000024FA6C2F0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v282 = v398;
    (*(v518 + 16))(v398, v513, v512);
    v283 = v413;
    (*(v516 + 16))(v413, v514, v515);
    type metadata accessor for AdTransparencyAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = AdTransparencyAction.init(deserializing:using:)(v282, v283);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000013 && 0x800000024FA6C310 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v284 = v399;
    (*(v518 + 16))(v399, v513, v512);
    v285 = v415;
    (*(v516 + 16))(v415, v514, v515);
    type metadata accessor for InAppPurchaseAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = InAppPurchaseAction.init(deserializing:using:)(v284, v285);
    goto LABEL_44;
  }

  if (v511 == 0x6341686372616553 && v397 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    v286 = v400;
    (*(v518 + 16))(v400, v513, v512);
    v287 = v417;
    (*(v516 + 16))(v417, v514, v515);
    type metadata accessor for SearchAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SearchAction.init(deserializing:using:)(v286, v287);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000019 && 0x800000024FA6C330 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v288 = v401;
    (*(v518 + 16))(v401, v513, v512);
    v289 = v419;
    (*(v516 + 16))(v419, v514, v515);
    type metadata accessor for SearchSegmentChangeAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SearchSegmentChangeAction.init(deserializing:using:)(v288, v289);
    goto LABEL_44;
  }

  v509 = 0xD000000000000016;
  if (v511 == 0xD000000000000016 && 0x800000024FA6C350 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v290 = v402;
    (*(v518 + 16))(v402, v513, v512);
    v291 = v421;
    (*(v516 + 16))(v421, v514, v515);
    type metadata accessor for PageFacetsChangeAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = PageFacetsChangeAction.init(deserializing:using:)(v290, v291);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000010 && 0x800000024FA6C370 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v292 = v403;
    (*(v518 + 16))(v403, v513, v512);
    v293 = v423;
    (*(v516 + 16))(v423, v514, v515);
    type metadata accessor for ShareSheetAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ShareSheetAction.init(deserializing:using:)(v292, v293);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000012 && 0x800000024FA6C390 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v294 = *(v518 + 16);
    v295 = v406;
    v296 = v512;
    v294(v406, v513, v512);
    v297 = v515;
    v518 = *(v516 + 16);
    v298 = v429;
    (v518)(v429, v514, v515);
    type metadata accessor for ShowSettingsAction();
    v243 = swift_allocObject();
    v299 = v404;
    v294(v404, v295, v296);
    v300 = v426;
    (v518)(v426, v298, v297);
    v301 = v517;
    Action.init(deserializing:using:)(v299, v300);
    if (v301)
    {
      (*(v516 + 8))(v429, v515);
      v302 = &v438;
LABEL_91:
      v444(*(v302 - 32), v512);
      return v243;
    }

LABEL_115:
    (*(v516 + 8))(v429, v515);
    v444(v406, v512);
    return v243;
  }

  if (v511 == 0xD000000000000013 && 0x800000024FA6C3B0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v303 = v405;
    (*(v518 + 16))(v405, v513, v512);
    v304 = v427;
    (*(v516 + 16))(v427, v514, v515);
    type metadata accessor for ReportConcernAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ReportConcernAction.init(deserializing:using:)(v303, v304);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000020 && 0x800000024FA6C3D0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v305 = v407;
    (*(v518 + 16))(v407, v513, v512);
    v306 = v430;
    (*(v516 + 16))(v430, v514, v515);
    type metadata accessor for ReviewSummaryReportConcernAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ReviewSummaryReportConcernAction.init(deserializing:using:)(v305, v306);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000017 && 0x800000024FA6C400 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v307 = v408;
    (*(v518 + 16))(v408, v513, v512);
    v308 = v432;
    (*(v516 + 16))(v432, v514, v515);
    type metadata accessor for ProductPageScrollAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ProductPageScrollAction.init(deserializing:using:)(v307, v308);
    goto LABEL_44;
  }

  if (v511 == 0xD00000000000001ALL && 0x800000024FA6C420 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v309 = v409;
    (*(v518 + 16))(v409, v513, v512);
    v310 = v434;
    (*(v516 + 16))(v434, v514, v515);
    type metadata accessor for ShelfBasedPageScrollAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ShelfBasedPageScrollAction.init(deserializing:using:)(v309, v310);
    goto LABEL_44;
  }

  if (v511 == 0x7463416B6E616C42 && v397 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    v311 = *(v518 + 16);
    v312 = v412;
    v313 = v512;
    v311(v412, v513, v512);
    v314 = v515;
    v518 = *(v516 + 16);
    v315 = v438;
    (v518)(v438, v514, v515);
    type metadata accessor for BlankAction();
    v243 = swift_allocObject();
    v316 = v410;
    v311(v410, v312, v313);
    v317 = v437;
    (v518)(v437, v315, v314);
    v318 = v517;
    Action.init(deserializing:using:)(v316, v317);
    if (v318)
    {
      (*(v516 + 8))(v438, v515);
      v302 = &v444;
      goto LABEL_91;
    }

    v429 = v438;
    v319 = &v444;
    goto LABEL_114;
  }

  if (v511 == 0xD000000000000017 && 0x800000024FA6C440 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v320 = v411;
    (*(v518 + 16))(v411, v513, v512);
    v321 = v439;
    (*(v516 + 16))(v439, v514, v515);
    type metadata accessor for OfferConfirmationAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = OfferConfirmationAction.init(deserializing:using:)(v320, v321);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000011 && 0x800000024FA6C460 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v322 = v414;
    (*(v518 + 16))(v414, v513, v512);
    v323 = v442;
    (*(v516 + 16))(v442, v514, v515);
    type metadata accessor for WriteReviewAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = WriteReviewAction.init(deserializing:using:)(v322, v323);
    goto LABEL_44;
  }

  if (v511 == 0x6341656461637241 && v397 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    v324 = v416;
    (*(v518 + 16))(v416, v513, v512);
    v325 = v446;
    (*(v516 + 16))(v446, v514, v515);
    type metadata accessor for ArcadeAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ArcadeAction.init(deserializing:using:)(v324, v325);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000012 && 0x800000024FA6C480 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v326 = v418;
    (*(v518 + 16))(v418, v513, v512);
    v327 = v447;
    (*(v516 + 16))(v447, v514, v515);
    type metadata accessor for FamilyCircleAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = FamilyCircleAction.init(deserializing:using:)(v326, v327);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000014 && 0x800000024FA6C4A0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v328 = v420;
    (*(v518 + 16))(v420, v513, v512);
    v329 = v449;
    (*(v516 + 16))(v449, v514, v515);
    type metadata accessor for ScrollingAlertAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ScrollingAlertAction.init(deserializing:using:)(v328, v329);
    goto LABEL_44;
  }

  if (v511 == 0x6441686372616553 && v397 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    v330 = v422;
    (*(v518 + 16))(v422, v513, v512);
    v331 = v452;
    (*(v516 + 16))(v452, v514, v515);
    type metadata accessor for SearchAdAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SearchAdAction.init(deserializing:using:)(v330, v331);
    goto LABEL_44;
  }

  if (v511 == 0x417070416E65704FLL && v397 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    v332 = v424;
    (*(v518 + 16))(v424, v513, v512);
    v333 = v453;
    (*(v516 + 16))(v453, v514, v515);
    type metadata accessor for OpenAppAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = OpenAppAction.init(deserializing:using:)(v332, v333);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000011 && 0x800000024FA6C4C0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v334 = v425;
    (*(v518 + 16))(v425, v513, v512);
    v335 = v455;
    (*(v516 + 16))(v455, v514, v515);
    type metadata accessor for OpenGamesUIAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = OpenGamesUIAction.init(deserializing:using:)(v334, v335);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000011 && 0x800000024FA6C4E0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v336 = v428;
    (*(v518 + 16))(v428, v513, v512);
    v337 = v457;
    (*(v516 + 16))(v457, v514, v515);
    type metadata accessor for RateLimitedAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = RateLimitedAction.init(deserializing:using:)(v336, v337);
    goto LABEL_44;
  }

  if (v511 == 0xD00000000000001DLL && 0x800000024FA6C500 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v338 = v431;
    (*(v518 + 16))(v431, v513, v512);
    v339 = v459;
    (*(v516 + 16))(v459, v514, v515);
    type metadata accessor for ArcadeLaunchAttributionAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ArcadeLaunchAttributionAction.init(deserializing:using:)(v338, v339);
    goto LABEL_44;
  }

  if (v511 == 0xD00000000000001DLL && 0x800000024FA6C520 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v340 = v433;
    (*(v518 + 16))(v433, v513, v512);
    v341 = v461;
    (*(v516 + 16))(v461, v514, v515);
    type metadata accessor for ArcadeSubscriptionStateAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ArcadeSubscriptionStateAction.init(deserializing:using:)(v340, v341);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000028 && 0x800000024FA6C540 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v342 = v435;
    (*(v518 + 16))(v435, v513, v512);
    v343 = v463;
    (*(v516 + 16))(v463, v514, v515);
    type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(v342, v343);
    goto LABEL_44;
  }

  if (v511 == 0xD000000000000019 && 0x800000024FA6C570 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v344 = *(v518 + 16);
    v345 = v440;
    v346 = v512;
    v344(v440, v513, v512);
    v347 = v515;
    v518 = *(v516 + 16);
    v348 = v470;
    (v518)(v470, v514, v515);
    type metadata accessor for GameCenterDashboardAction();
    v243 = swift_allocObject();
    v349 = v436;
    v344(v436, v345, v346);
    v350 = v469;
    (v518)(v469, v348, v347);
    v351 = v517;
    Action.init(deserializing:using:)(v349, v350);
    if (v351)
    {
      (*(v516 + 8))(v470, v515);
      v302 = &v472;
      goto LABEL_91;
    }

    v429 = v470;
    v319 = &v472;
    goto LABEL_114;
  }

  if (v511 == 0xD00000000000001DLL && 0x800000024FA6C590 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v352 = v441;
    (*(v518 + 16))(v441, v513, v512);
    v353 = v471;
    (*(v516 + 16))(v471, v514, v515);
    type metadata accessor for GameCenterPlayerProfileAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = GameCenterPlayerProfileAction.init(deserializing:using:)(v352, v353);
  }

  else if (v511 == 0xD00000000000001CLL && 0x800000024FA6C5B0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v354 = v443;
    (*(v518 + 16))(v443, v513, v512);
    v355 = v473;
    (*(v516 + 16))(v473, v514, v515);
    type metadata accessor for GameCenterAchievementsAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = GameCenterAchievementsAction.init(deserializing:using:)(v354, v355);
  }

  else if (v511 == 0xD00000000000001DLL && 0x800000024FA6C5D0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v356 = v445;
    (*(v518 + 16))(v445, v513, v512);
    v357 = v475;
    (*(v516 + 16))(v475, v514, v515);
    type metadata accessor for GuidedSearchTokenToggleAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = GuidedSearchTokenToggleAction.init(deserializing:using:)(v356, v357);
  }

  else if (v511 == 0xD000000000000018 && 0x800000024FA6C5F0 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v358 = v448;
    (*(v518 + 16))(v448, v513, v512);
    v359 = v476;
    (*(v516 + 16))(v476, v514, v515);
    type metadata accessor for SearchEntityChangeAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = SearchEntityChangeAction.init(deserializing:using:)(v358, v359);
  }

  else if (v511 == 0xD000000000000014 && 0x800000024FA6C610 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v360 = v450;
    (*(v518 + 16))(v450, v513, v512);
    v361 = v477;
    (*(v516 + 16))(v477, v514, v515);
    type metadata accessor for CancelPreorderAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = CancelPreorderAction.init(deserializing:using:)(v360, v361);
  }

  else if (v511 == v509 && 0x800000024FA6C630 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v243 = type metadata accessor for EngagementToggleAction();
    v362 = v451;
    (*(v518 + 16))(v451, v513, v512);
    v363 = v478;
    (*(v516 + 16))(v478, v514, v515);
    v273 = v517;
    v274 = EngagementToggleAction.__allocating_init(deserializing:using:)(v362, v363);
  }

  else if (v511 == 0xD000000000000019 && 0x800000024FA6C650 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v364 = v454;
    (*(v518 + 16))(v454, v513, v512);
    v365 = v479;
    (*(v516 + 16))(v479, v514, v515);
    type metadata accessor for AppLaunchTrampolineAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = AppLaunchTrampolineAction.init(deserializing:using:)(v364, v365);
  }

  else if (v511 == 0xD000000000000019 && 0x800000024FA6C670 == v397 || (sub_24F92CE08() & 1) != 0)
  {

    v366 = v456;
    (*(v518 + 16))(v456, v513, v512);
    v367 = v480;
    (*(v516 + 16))(v480, v514, v515);
    type metadata accessor for CreateCalendarEventAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = CreateCalendarEventAction.init(deserializing:using:)(v366, v367);
  }

  else
  {
    if ((v511 != 0x7478655479706F43 || v397 != 0xEE006E6F69746341) && (sub_24F92CE08() & 1) == 0)
    {
      if (v511 == 0xD000000000000017 && 0x800000024FA6C690 == v397 || (sub_24F92CE08() & 1) != 0)
      {

        v370 = *(v518 + 16);
        v371 = v462;
        v372 = v512;
        v370(v462, v513, v512);
        v373 = v515;
        v518 = *(v516 + 16);
        v374 = v483;
        (v518)(v483, v514, v515);
        type metadata accessor for ClearAppUsageDataAction();
        v243 = swift_allocObject();
        v375 = v460;
        v370(v460, v371, v372);
        v376 = v482;
        (v518)(v482, v374, v373);
        v377 = v517;
        Action.init(deserializing:using:)(v375, v376);
        if (v377)
        {
          (*(v516 + 8))(v483, v515);
          v302 = &v494;
          goto LABEL_91;
        }

        v429 = v483;
        v319 = &v494;
      }

      else
      {
        if ((v511 != 0xD000000000000018 || 0x800000024FA6C6B0 != v397) && (sub_24F92CE08() & 1) == 0)
        {
          if (v511 == 0x6B636142776F6C46 && v397 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
          {

            v386 = v467;
            (*(v518 + 16))(v467, v513, v512);
            v387 = v486;
            (*(v516 + 16))(v486, v514, v515);
            type metadata accessor for FlowBackAction();
            v243 = swift_allocObject();
            v273 = v517;
            v274 = FlowBackAction.init(deserializing:using:)(v386, v387);
          }

          else if (v511 == 0xD000000000000017 && 0x800000024FA6C6D0 == v397 || (sub_24F92CE08() & 1) != 0)
          {

            v388 = v468;
            (*(v518 + 16))(v468, v513, v512);
            v389 = v487;
            (*(v516 + 16))(v487, v514, v515);
            type metadata accessor for CrossfireReferralAction();
            v243 = swift_allocObject();
            v273 = v517;
            v274 = CrossfireReferralAction.init(deserializing:using:)(v388, v389);
          }

          else if (v511 == 0x70417463656C6553 && v397 == 0xEF6E6F6974634170 || (sub_24F92CE08() & 1) != 0)
          {

            v390 = v472;
            (*(v518 + 16))(v472, v513, v512);
            v391 = v488;
            (*(v516 + 16))(v488, v514, v515);
            type metadata accessor for SelectAppAction();
            v243 = swift_allocObject();
            v273 = v517;
            v274 = SelectAppAction.init(deserializing:using:)(v390, v391);
          }

          else
          {
            if ((v511 != 0xD000000000000010 || 0x800000024FA6C6F0 != v397) && (sub_24F92CE08() & 1) == 0)
            {
              v394 = sub_24F92AC38();
              sub_24F10B8A4(&qword_27F2213B8, MEMORY[0x277D22548]);
              swift_allocError();
              v395 = v397;
              *v396 = v511;
              v396[1] = v395;
              v396[2] = v510;
              (*(*(v394 - 8) + 104))(v396, *MEMORY[0x277D22528], v394);
              swift_willThrow();
              return v243;
            }

            v392 = v474;
            (*(v518 + 16))(v474, v513, v512);
            v393 = v489;
            (*(v516 + 16))(v489, v514, v515);
            type metadata accessor for GSKWrappedAction();
            v243 = swift_allocObject();
            v273 = v517;
            v274 = sub_24F369478(v392, v393);
          }

          goto LABEL_44;
        }

        v378 = *(v518 + 16);
        v379 = v466;
        v380 = v512;
        v378(v466, v513, v512);
        v381 = v515;
        v518 = *(v516 + 16);
        v382 = v485;
        (v518)(v485, v514, v515);
        type metadata accessor for ClearSearchHistoryAction();
        v243 = swift_allocObject();
        v383 = v465;
        v378(v465, v379, v380);
        v384 = v484;
        (v518)(v484, v382, v381);
        v385 = v517;
        Action.init(deserializing:using:)(v383, v384);
        if (v385)
        {
          (*(v516 + 8))(v485, v515);
          v302 = &v498;
          goto LABEL_91;
        }

        v429 = v485;
        v319 = &v498;
      }

LABEL_114:
      v406 = *(v319 - 32);
      goto LABEL_115;
    }

    v368 = v458;
    (*(v518 + 16))(v458, v513, v512);
    v369 = v481;
    (*(v516 + 16))(v481, v514, v515);
    type metadata accessor for CopyTextAction();
    v243 = swift_allocObject();
    v273 = v517;
    v274 = CopyTextAction.init(deserializing:using:)(v368, v369);
  }

LABEL_44:
  if (!v273)
  {
    return v274;
  }

  return v243;
}

uint64_t static Action.tryToMakeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  MEMORY[0x28223BE20](v4);
  v5 = sub_24F928328();
  result = 0;
  if ((v5 & 1) == 0)
  {
    return static Action.makeInstance(byDeserializing:using:)(a1, a2);
  }

  return result;
}

uint64_t Action.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Action.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *Action.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a6;
  v31 = a2;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = &v15[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v15[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(a1, &v34, &qword_27F235830);
  if (*(&v35 + 1))
  {
    v18 = v35;
    *v17 = v34;
    *(v17 + 1) = v18;
    *(v17 + 4) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a7;
    v28 = a3;
    v20 = v19;
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v32 = v20;
    v33 = v22;
    a7 = v27;
    a3 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(a7, &v15[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics]);
  *(v15 + 2) = v31;
  *(v15 + 3) = a3;
  v23 = v29;
  *(v15 + 4) = a4;
  *(v15 + 5) = v23;
  v24 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v25 = sub_24F928AD8();
  (*(*(v25 - 8) + 32))(&v15[v24], v30, v25);
  return v15;
}