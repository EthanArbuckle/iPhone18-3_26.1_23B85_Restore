uint64_t sub_21CD26AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_21CD26CB8;
  }

  else
  {
    v3 = sub_21CD26C0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD26C0C()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  v6 = *&v5[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentReaderCertificateResponse_value];

  *v4 = v6;

  v7 = v0[1];

  return v7();
}

uint64_t sub_21CD26CB8()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[29];

  return v5();
}

uint64_t sub_21CD26D58(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21CD26D78, v1, 0);
}

uint64_t sub_21CD26DA0()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_21CD91620;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_21CD0B5EC;
  v6 = v0[2];

  return MEMORY[0x282200830](v6, &unk_21CD91628, v2, sub_21CD2B494, v3, 0, 0, &type metadata for MobileDocumentReaderCertificateResponse);
}

uint64_t sub_21CD26EC4(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8D0, &qword_21CD91798);
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[22] = v7;
  v2[23] = v8;

  return MEMORY[0x2822009F8](sub_21CD26F98, 0, 0);
}

uint64_t sub_21CD26F98()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD27158;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentReaderCertificateResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD26D44;
  v1[13] = &block_descriptor_97;
  [v12 certificate:0 completionHandler:v4];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD27158()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_21CD0BBD4;
  }

  else
  {
    v3 = sub_21CD27268;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD27268()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = *&v3[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentReaderCertificateResponse_value];

  *v2 = v4;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CD272FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8);
  v6[8] = v7;
  v6[9] = *(v7 + 64);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD273C8, v5, 0);
}

uint64_t sub_21CD273C8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v14 = v0[3];
  v7 = v0[2];
  v0[11] = *(v0[7] + 112);
  sub_21CD2A014(v7, v1, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[12] = v10;
  sub_21CD2A07C(v1, v10 + v8, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v11 = (v10 + v9);
  *v11 = v14;
  v11[1] = v6;
  v12 = (v10 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v5;
  v12[1] = v4;

  sub_21CC96064(v5, v4);

  return MEMORY[0x2822009F8](sub_21CD274FC, 0, 0);
}

uint64_t sub_21CD274FC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD91640;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_21CD2761C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_21CD91648, v3, sub_21CD2B498, v4, 0, 0, v7);
}

uint64_t sub_21CD2761C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_21CD277C4;
    v5 = 0;
  }

  else
  {
    v7 = v2[13];
    v6 = v2[14];
    v8 = v2[12];
    v9 = v2[7];

    v4 = sub_21CD27760;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_21CD27760()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CD277C4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_21CD2784C, v4, 0);
}

uint64_t sub_21CD2784C()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_21CD278B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[20] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v7[25] = v9;
  v10 = *(v9 - 8);
  v7[26] = v10;
  v11 = *(v10 + 64) + 15;
  v7[27] = swift_task_alloc();
  v12 = *(*(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *a2;
  v7[28] = v13;
  v7[29] = v14;

  return MEMORY[0x2822009F8](sub_21CD279B8, 0, 0);
}

uint64_t sub_21CD279B8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  sub_21CD2A014(*(v0 + 160), v1, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v5 = type metadata accessor for XPCMobileDocumentReaderCertificateRequest(0);
  v6 = objc_allocWithZone(v5);
  sub_21CD2A014(v1, v6 + OBJC_IVAR____TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest_value, type metadata accessor for MobileDocumentReaderCertificateRequest);
  *(v0 + 144) = v6;
  *(v0 + 152) = v5;
  v17 = objc_msgSendSuper2((v0 + 144), sel_init);
  *(v0 + 240) = v17;
  sub_21CD2B350(v1, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v7 = 0;
  v16 = sub_21CD83B04();
  *(v0 + 248) = v16;
  if (v2 >> 60 != 15)
  {
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v7 = sub_21CD836E4();
  }

  *(v0 + 256) = v7;
  v15 = *(v0 + 232);
  v10 = *(v0 + 208);
  v11 = *(v0 + 216);
  v12 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21CD27C40;
  swift_continuation_init();
  *(v0 + 136) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v10 + 32))(boxed_opaque_existential_0, v11, v12);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21CD5C4C0;
  *(v0 + 104) = &block_descriptor_93_0;
  [v15 storeCertificate:v17 certificateDER:v16 externalData:v7 completionHandler:v0 + 80];
  (*(v10 + 8))(boxed_opaque_existential_0, v12);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21CD27C40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_21CD27DDC;
  }

  else
  {
    v3 = sub_21CD27D50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD27D50()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21CD27DDC()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];
  v6 = v0[28];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[33];

  return v7();
}

uint64_t sub_21CD27E7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD27F40, v1, 0);
}

uint64_t sub_21CD27F40()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + 112);
  sub_21CD2A014(v4, v1, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[8] = v6;
  sub_21CD2A07C(v1, v6 + v5, type metadata accessor for MobileDocumentReaderCertificateRequest);

  return MEMORY[0x2822009F8](sub_21CD28010, 0, 0);
}

uint64_t sub_21CD28010()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  v0[9] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD91660;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_21CD28130;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_21CD91668, v3, sub_21CD2B498, v4, 0, 0, v7);
}

uint64_t sub_21CD28130()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v11 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_21CD28274;
    v5 = 0;
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[8];
    v9 = v2[3];

    v4 = sub_21CD08D70;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_21CD28274()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[3];

  return MEMORY[0x2822009F8](sub_21CD282FC, v4, 0);
}

uint64_t sub_21CD282FC()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_21CD28360(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[20] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = *(*(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v3[24] = v9;
  v3[25] = v10;

  return MEMORY[0x2822009F8](sub_21CD28460, 0, 0);
}

uint64_t sub_21CD28460()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[24];
  v13 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  sub_21CD2A014(v1[20], v4, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v8 = type metadata accessor for XPCMobileDocumentReaderCertificateRequest(0);
  v9 = objc_allocWithZone(v8);
  sub_21CD2A014(v4, v9 + OBJC_IVAR____TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest_value, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v1[18] = v9;
  v1[19] = v8;
  v10 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[26] = v10;
  sub_21CD2B350(v4, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v1[2] = v1;
  v1[3] = sub_21CD286A8;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_89;
  [v13 deleteCertificate:v10 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD286A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_21CD28830;
  }

  else
  {
    v3 = sub_21CD287B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD287B8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CD28830()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t sub_21CD288BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21CD288DC, v1, 0);
}

uint64_t sub_21CD28904()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_21CD91678;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FB8, &qword_21CD88A28);
  *v5 = v0;
  v5[1] = sub_21CD254A0;
  v7 = v0[2];

  return MEMORY[0x282200830](v7, &unk_21CD91680, v2, sub_21CD2A778, v3, 0, 0, v6);
}

uint64_t sub_21CD28A38(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8C0, &qword_21CD91788);
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[22] = v7;
  v2[23] = v8;

  return MEMORY[0x2822009F8](sub_21CD28B0C, 0, 0);
}

uint64_t sub_21CD28B0C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD28CD4;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8C8, &qword_21CD91790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD28E80;
  v1[13] = &block_descriptor_85;
  [v12 cachedIssuerRootsWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD28CD4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_21CD2B43C;
  }

  else
  {
    v3 = sub_21CD28DE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD28DE4()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC7CoreIDV48XPCMobileDocumentReaderIssuerRootCertificateList_value];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 176);
  **(v0 + 152) = v2;

  v4 = *(v0 + 8);

  return v4();
}

void sub_21CD28E80(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8C0, &qword_21CD91788);
    sub_21CD83CF4();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8C0, &qword_21CD91788);
    sub_21CD83D04();
  }
}

uint64_t sub_21CD28F70()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_21CD91698;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_21CD29090;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_21CD916A0, v2, sub_21CD2B498, v3, 0, 0, v6);
}

uint64_t sub_21CD29090()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_21CD291C0;
    v5 = 0;
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];

    v4 = sub_21CD0F488;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_21CD291C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];

  return MEMORY[0x2822009F8](sub_21CD2B488, v3, 0);
}

uint64_t sub_21CD29234(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[20] = v7;
  v2[21] = v8;

  return MEMORY[0x2822009F8](sub_21CD29304, 0, 0);
}

uint64_t sub_21CD29304()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v9 = v0 + 18;
  v7 = v0[18];
  v8 = v9[1];
  v1[2] = v2;
  v1[3] = sub_21CD294B0;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_81;
  [v5 clearCachedIssuerRootsWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD294B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_21CD2B464;
  }

  else
  {
    v3 = sub_21CD2B478;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD29608()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_21CD916B0;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_21CD29728;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_21CD916B8, v2, sub_21CD2B498, v3, 0, 0, v6);
}

uint64_t sub_21CD29728()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_21CD29858;
    v5 = 0;
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];

    v4 = sub_21CD0AF48;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_21CD29858()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];

  return MEMORY[0x2822009F8](sub_21CD298CC, v3, 0);
}

uint64_t sub_21CD298E4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[20] = v7;
  v2[21] = v8;

  return MEMORY[0x2822009F8](sub_21CD299B4, 0, 0);
}

uint64_t sub_21CD299B4()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v9 = v0 + 18;
  v7 = v0[18];
  v8 = v9[1];
  v1[2] = v2;
  v1[3] = sub_21CCB2FBC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_77;
  [v5 loadIssuerRootsWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t MobileDocumentReaderStoreSession.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MobileDocumentReaderStoreSession.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CD29BE4(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD24E14(a1, a2, v2 + v7);
}

uint64_t sub_21CD29CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3C8C(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for MobileDocumentReaderIdentityKeyRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_21CD83794();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CD29E70(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD25EA0(a1, a2, v2 + v7);
}

uint64_t sub_21CD29F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3D88(a1, v4, v5, v6);
}

uint64_t sub_21CD2A014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD2A07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD2A0E4(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD267AC(a1, a2, v2 + v7);
}

uint64_t sub_21CD2A1C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3E84(a1, v4, v5, v6);
}

uint64_t sub_21CD2A288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCB3E84(a1, v4, v5, v6);
}

uint64_t sub_21CD2A33C(uint64_t a1, uint64_t *a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v2 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v2 + v10);
  v15 = *(v2 + v10 + 8);
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_21CCC498C;

  return sub_21CD278B0(a1, a2, v2 + v8, v12, v13, v14, v15);
}

uint64_t objectdestroy_21Tm()
{
  v1 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v1 + 24);
  v9 = sub_21CD83794();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v5 + *(v1 + 28));
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_21CCB1880(*v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CD2A5E0(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD28360(a1, a2, v2 + v7);
}

uint64_t sub_21CD2A6C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3F80(a1, v4, v5, v6);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.identityKey(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.identityKeys()(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.deleteIdentityKey(_:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.certificate(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.certificates()(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.storeCertificate(_:certificateDER:externalData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 144);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_21CCC498C;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.deleteCertificate(_:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.cachedIssuerRoots()(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.clearIssuerRootsCache()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21CCC498C;

  return v6();
}

uint64_t dispatch thunk of MobileDocumentReaderStoreSession.loadIssuerRoots()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21CCC498C;

  return v6();
}

uint64_t sub_21CD2B350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CD2B3C0()
{
  result = qword_27CE1A8E0;
  if (!qword_27CE1A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A8E0);
  }

  return result;
}

uint64_t sub_21CD2B4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD2B54C(uint64_t a1)
{
  v2 = sub_21CD2B814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD2B588(uint64_t a1)
{
  v2 = sub_21CD2B814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD2B5C4(uint64_t a1)
{
  v2 = sub_21CD2B868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD2B600(uint64_t a1)
{
  v2 = sub_21CD2B868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderStoreSession.Error.Code.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8E8, &qword_21CD917B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8F0, &qword_21CD917B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD2B814();
  sub_21CD842B4();
  sub_21CD2B868();
  sub_21CD840E4();
  (*(v3 + 8))(v7, v2);
  return (*(v9 + 8))(v13, v8);
}

unint64_t sub_21CD2B814()
{
  result = qword_27CE1A8F8;
  if (!qword_27CE1A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A8F8);
  }

  return result;
}

unint64_t sub_21CD2B868()
{
  result = qword_27CE1A900;
  if (!qword_27CE1A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A900);
  }

  return result;
}

uint64_t MobileDocumentReaderStoreSession.Error.Code.hashValue.getter()
{
  sub_21CD84264();
  MEMORY[0x21CF17CC0](0);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderStoreSession.Error.Code.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A908, &qword_21CD917C0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A910, &unk_21CD917C8);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD2B814();
  sub_21CD842A4();
  if (v1)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v14 = v31;
  v15 = v26;
  v16 = sub_21CD840D4();
  v17 = (2 * *(v16 + 16)) | 1;
  v27 = v16;
  v28 = v16 + 32;
  v29 = 0;
  v30 = v17;
  if (sub_21CCCBA9C() || v29 != v30 >> 1)
  {
    v18 = v8;
    v19 = sub_21CD83FA4();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
    *v21 = &type metadata for MobileDocumentReaderStoreSession.Error.Code;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v12, v18);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_6:
    v24 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  sub_21CD2B868();
  sub_21CD84034();
  (*(v14 + 8))(v7, v3);
  (*(v15 + 8))(v12, v8);
  swift_unknownObjectRelease();
  v24 = v25;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_21CD2BC8C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8E8, &qword_21CD917B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8F0, &qword_21CD917B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD2B814();
  sub_21CD842B4();
  sub_21CD2B868();
  sub_21CD840E4();
  (*(v3 + 8))(v7, v2);
  return (*(v9 + 8))(v13, v8);
}

id MobileDocumentReaderStoreSession.Error.underlyingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void MobileDocumentReaderStoreSession.Error.init(_bridgedNSError:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_21CD83B24();
  v7 = v6;

  sub_21CD2C220();
  if (v5 == sub_21CD834B4() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21CD841A4();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v11 = [a1 userInfo];
  v12 = sub_21CD83A24();

  if (*(v12 + 16) && (v13 = sub_21CCA996C(0xD00000000000002FLL, 0x800000021CDA02D0), (v14 & 1) != 0))
  {
    sub_21CCB15A8(*(v12 + 56) + 32 * v13, v30);

    if (swift_dynamicCast())
    {
      v15 = sub_21CD83574();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_21CD83564();
      sub_21CD2C57C();
      sub_21CD83554();

      if ([a1 code])
      {
        sub_21CCB1880(v28, v29);
        goto LABEL_13;
      }

      v18 = [a1 userInfo];
      v19 = sub_21CD83A24();

      v20 = *MEMORY[0x277CCA7E8];
      v21 = sub_21CD83B24();
      if (*(v19 + 16))
      {
        v23 = sub_21CCA996C(v21, v22);
        v25 = v24;

        if (v25)
        {
          sub_21CCB15A8(*(v19 + 56) + 32 * v23, v30);
          sub_21CCB1880(v28, v29);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
          if (swift_dynamicCast())
          {
            v26 = v28;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_25;
        }

        sub_21CCB1880(v28, v29);
      }

      else
      {
        sub_21CCB1880(v28, v29);
      }

      v26 = 0;
LABEL_25:
      *a2 = v26;
      v27 = v26;

      return;
    }
  }

  else
  {
  }

LABEL_13:
  *a2 = 1;
}

unint64_t sub_21CD2C220()
{
  result = qword_27CE1A918;
  if (!qword_27CE1A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A918);
  }

  return result;
}

uint64_t MobileDocumentReaderStoreSession.Error.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x277D84F98];
  v28 = MEMORY[0x277D84F98];
  v3 = sub_21CD835A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_21CD83594();
  sub_21CD2C5D0();
  v6 = sub_21CD83584();
  v8 = v7;

  v27 = MEMORY[0x277CC9318];
  *&v26 = v6;
  *(&v26 + 1) = v8;
  sub_21CCB2190(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21CD113FC(v25, 0xD00000000000002FLL, 0x800000021CDA02D0, isUniquelyReferenced_nonNull_native);
  v10 = v2;
  v28 = v2;
  v11 = *MEMORY[0x277CCA068];
  v12 = sub_21CD83B24();
  v14 = v13;
  v27 = MEMORY[0x277D837D0];
  *&v26 = 0x6E776F6E6B6E55;
  *(&v26 + 1) = 0xE700000000000000;
  sub_21CCB2190(&v26, v25);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_21CD113FC(v25, v12, v14, v15);

  v28 = v10;
  v16 = *MEMORY[0x277CCA7E8];
  v17 = sub_21CD83B24();
  v19 = v17;
  v20 = v18;
  if (v1)
  {
    swift_getErrorValue();
    v27 = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v26);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0);
    sub_21CCB2190(&v26, v25);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CD113FC(v25, v19, v20, v22);

    return v10;
  }

  else
  {
    sub_21CD10E64(v17, v18, &v26);

    sub_21CCC947C(&v26);
    return v28;
  }
}

uint64_t sub_21CD2C504(uint64_t a1)
{
  v2 = sub_21CD2C220();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CD2C540(uint64_t a1)
{
  v2 = sub_21CD2C220();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_21CD2C57C()
{
  result = qword_27CE1A920;
  if (!qword_27CE1A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A920);
  }

  return result;
}

unint64_t sub_21CD2C5D0()
{
  result = qword_27CE1A928;
  if (!qword_27CE1A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A928);
  }

  return result;
}

unint64_t sub_21CD2C628()
{
  result = qword_27CE1A930;
  if (!qword_27CE1A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A930);
  }

  return result;
}

unint64_t sub_21CD2C6C0()
{
  result = qword_27CE1A938;
  if (!qword_27CE1A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A938);
  }

  return result;
}

unint64_t sub_21CD2C718()
{
  result = qword_27CE1A940;
  if (!qword_27CE1A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A940);
  }

  return result;
}

unint64_t sub_21CD2C770()
{
  result = qword_27CE1A948;
  if (!qword_27CE1A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A948);
  }

  return result;
}

unint64_t sub_21CD2C7C8()
{
  result = qword_27CE1A950;
  if (!qword_27CE1A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A950);
  }

  return result;
}

unint64_t sub_21CD2C820()
{
  result = qword_27CE1A958;
  if (!qword_27CE1A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A958);
  }

  return result;
}

uint64_t BundleRecord.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v3 = type metadata accessor for BundleRecord();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v139 = &v117 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v135 = &v117 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v141 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v117 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v117 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  v130 = *(v27 - 8);
  v28 = *(v130 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v132 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v131 = &v117 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v140 = &v117 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v117 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v117 - v43;
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  v46 = v45;
  if (v45)
  {
    v47 = [v45 iTunesMetadata];
    v48 = [v47 storeItemIdentifier];

    v49 = 1;
    (*(v4 + 56))(v44, 1, 1, v3);
    v50 = [v46 deviceIdentifierForVendor];
    if (v50)
    {
      v51 = v50;
      sub_21CD83774();

      v49 = 0;
    }

    v52 = sub_21CD83794();
    (*(*(v52 - 8) + 56))(v23, v49, 1, v52);
    sub_21CD2F6A0(v23, v26, &qword_27CE1A680, &qword_21CD90530);
    v53 = [v46 appClipMetadata];
    if (!v53)
    {
      v128 = 0;
      goto LABEL_14;
    }

    v54 = 1;
  }

  else
  {
    objc_opt_self();
    v55 = swift_dynamicCastObjCClass();
    if (v55)
    {
      if ([v55 containingBundleRecord])
      {
        BundleRecord.init(_:)();
        (*(v4 + 56))(v41, 0, 1, v3);
      }

      else
      {
        (*(v4 + 56))(v41, 1, 1, v3);
      }

      sub_21CD2F6A0(v41, v44, &qword_27CE1A260, &qword_21CD8EF90);
      v57 = sub_21CD83794();
      (*(*(v57 - 8) + 56))(v26, 1, 1, v57);
      v48 = 0;
      v54 = 2;
    }

    else
    {
      (*(v4 + 56))(v44, 1, 1, v3);
      v56 = sub_21CD83794();
      (*(*(v56 - 8) + 56))(v26, 1, 1, v56);
      v48 = 0;
      v54 = 3;
    }
  }

  v128 = v54;
LABEL_14:
  v58 = [a1 applicationIdentifier];
  if (v58)
  {
    v59 = v58;
    v60 = sub_21CD83B24();
    v125 = v61;
    v126 = v60;
  }

  else
  {
    v125 = 0;
    v126 = 0;
  }

  v62 = [a1 bundleIdentifier];
  if (v62)
  {
    v63 = v62;
    v64 = sub_21CD83B24();
    v123 = v65;
    v124 = v64;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  sub_21CCD1750(v26, v141, &qword_27CE1A680, &qword_21CD90530);
  v66 = [a1 teamIdentifier];
  if (v66)
  {
    v67 = v66;
    v68 = sub_21CD83B24();
    v121 = v69;
    v122 = v68;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v136 = v26;
  if (v46)
  {
    v70 = v48 == 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v70;
  v120 = v71;
  v72 = [a1 localizedName];
  v119 = sub_21CD83B24();
  v118 = v73;

  v74 = [a1 localizedUsageDescriptionForFeature_];
  v138 = a1;
  v133 = v4;
  v117 = v9;
  v129 = v48;
  if (v74)
  {
    v75 = v74;
    v76 = sub_21CD83B24();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0;
  }

  v134 = v44;
  v79 = v140;
  sub_21CCD1750(v44, v140, &qword_27CE1A260, &qword_21CD8EF90);
  v127 = sub_21CD2F49C(MEMORY[0x277D84F90]);
  v80 = v3[6];
  v81 = sub_21CD83794();
  v82 = v139;
  (*(*(v81 - 8) + 56))(&v139[v80], 1, 1, v81);
  v83 = (v82 + v3[7]);
  v84 = v3;
  v85 = v82 + v3[8];
  v86 = (v82 + v84[10]);
  v87 = v125;
  *v82 = v126;
  v82[1] = v87;
  v88 = v123;
  v82[2] = v124;
  v82[3] = v88;
  sub_21CD2F5CC(v141, v82 + v80);
  v89 = v121;
  *v83 = v122;
  v83[1] = v89;
  *v85 = v129;
  v85[8] = v120;
  v90 = v84;
  v91 = (v82 + v84[9]);
  v92 = v118;
  *v91 = v119;
  v91[1] = v92;
  *v86 = v76;
  v86[1] = v78;
  *(v82 + v84[11]) = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A960, &qword_21CD91B60);
  v93 = *(v130 + 72);
  v94 = (*(v130 + 80) + 32) & ~*(v130 + 80);
  v95 = swift_allocObject();
  sub_21CCD1750(v79, v95 + v94, &qword_27CE1A260, &qword_21CD8EF90);
  v96 = v131;
  sub_21CCD1750(v95 + v94, v131, &qword_27CE1A260, &qword_21CD8EF90);
  v97 = v96;
  v98 = v132;
  sub_21CD2F6A0(v97, v132, &qword_27CE1A260, &qword_21CD8EF90);
  v99 = v133;
  if ((*(v133 + 48))(v98, 1, v84) == 1)
  {
    sub_21CCB1928(v98, &qword_27CE1A260, &qword_21CD8EF90);
    v100 = MEMORY[0x277D84F90];
  }

  else
  {
    v101 = v117;
    sub_21CD2F63C(v98, v117);
    v100 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_21CCCF2D0(0, v100[2] + 1, 1, v100);
    }

    v103 = v100[2];
    v102 = v100[3];
    if (v103 >= v102 >> 1)
    {
      v100 = sub_21CCCF2D0(v102 > 1, v103 + 1, 1, v100);
    }

    v100[2] = v103 + 1;
    sub_21CD2F63C(v101, v100 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v103);
  }

  swift_setDeallocating();
  sub_21CCB1928(v95 + v94, &qword_27CE1A260, &qword_21CD8EF90);
  swift_deallocClassInstance();
  v104 = v139;
  *&v139[v90[12]] = v100;
  v105 = sub_21CD83A14();

  v106 = [objc_opt_self() propertyListWithDictionary_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A968, &qword_21CD91B68);
  v107 = swift_allocObject();
  *(v107 + 24) = 0;
  v108 = v106;
  sub_21CCB1928(v140, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CCB1928(v141, &qword_27CE1A680, &qword_21CD90530);
  *(v107 + 16) = v108;

  *&v104[v90[13]] = v107;
  v109 = v104;
  v110 = v135;
  sub_21CD2F63C(v109, v135);
  v111 = v110;
  v112 = v90;
  v113 = v137;
  sub_21CD2F63C(v111, v137);
  v114 = *(v113 + v112[13]);
  os_unfair_lock_lock((v114 + 24));

  v115 = v138;
  *(v114 + 16) = [v138 entitlements];
  os_unfair_lock_unlock((v114 + 24));

  sub_21CCB1928(v136, &qword_27CE1A680, &qword_21CD90530);
  return sub_21CCB1928(v134, &qword_27CE1A260, &qword_21CD8EF90);
}

void BundleRecord.value(forEntitlement:)(_OWORD *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for BundleRecord() + 52));
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = sub_21CD83B04();
  sub_21CCB17E8(0, &qword_27CE1A2D0, 0x277D82BB8);
  v6 = [v4 objectForKey:v5 ofClass:swift_getObjCClassFromMetadata()];

  if (v6)
  {
    sub_21CD83EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *a1 = v7;
  a1[1] = v8;

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t BundleRecordFetcher.currentRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v2)
  {
    BundleRecord.init(_:)(v2, a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for BundleRecord();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

id BundleRecordFetcher.record(withAuditToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21CCB17E8(0, &qword_27CE1A970, 0x277CC1E90);
  result = sub_21CD2D52C(a1, a2, a3, a4);
  if (!v5)
  {
    return BundleRecord.init(_:)(result, a5);
  }

  return result;
}

id sub_21CD2D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v9 error:v10];
  if (v4)
  {
    v5 = v10[0];
  }

  else
  {
    v6 = v10[0];
    sub_21CD83644();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

id BundleRecordFetcher.record(withApplicationIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  sub_21CCB17E8(0, &qword_27CE1A970, 0x277CC1E90);

  result = sub_21CD2D6B4();
  if (!v1)
  {
    return BundleRecord.init(_:)(result, a1);
  }

  return result;
}

id sub_21CD2D6B4()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21CD83B04();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_21CD83644();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id BundleRecordFetcher.record(withBundleIdentifier:allowPlaceholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21CCB17E8(0, &qword_27CE1A970, 0x277CC1E90);

  result = sub_21CD2D81C(a1, a2, a3);
  if (!v4)
  {
    return BundleRecord.init(_:)(result, a4);
  }

  return result;
}

id sub_21CD2D81C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21CD83B04();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_21CD83644();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_21CD2D904@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v2)
  {
    BundleRecord.init(_:)(v2, a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for BundleRecord();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

id sub_21CD2D9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21CCB17E8(0, &qword_27CE1A970, 0x277CC1E90);
  result = sub_21CD2D52C(a1, a2, a3, a4);
  if (!v5)
  {
    return BundleRecord.init(_:)(result, a5);
  }

  return result;
}

id sub_21CD2DA38@<X0>(uint64_t a1@<X8>)
{
  sub_21CCB17E8(0, &qword_27CE1A970, 0x277CC1E90);

  result = sub_21CD2D6B4();
  if (!v1)
  {
    return BundleRecord.init(_:)(result, a1);
  }

  return result;
}

id sub_21CD2DAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21CCB17E8(0, &qword_27CE1A970, 0x277CC1E90);

  result = sub_21CD2D81C(a1, a2, a3);
  if (!v4)
  {
    return BundleRecord.init(_:)(result, a4);
  }

  return result;
}

uint64_t BundleRecord.RecordType.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t BundleRecord.applicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BundleRecord.applicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BundleRecord.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BundleRecord.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t BundleRecord.deviceIdentifierForVendor.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BundleRecord() + 24);

  return sub_21CD2F708(a1, v3);
}

uint64_t BundleRecord.teamIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for BundleRecord() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BundleRecord.teamIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BundleRecord() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BundleRecord.appStoreItemIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for BundleRecord() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t BundleRecord.appStoreItemIdentifier.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BundleRecord();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BundleRecord.localizedName.getter()
{
  v1 = (v0 + *(type metadata accessor for BundleRecord() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BundleRecord.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BundleRecord() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BundleRecord.localizedIdentityUsageDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for BundleRecord() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BundleRecord.localizedIdentityUsageDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BundleRecord() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BundleRecord.recordType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BundleRecord();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t BundleRecord.recordType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BundleRecord();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t BundleRecord.containingBundleRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BundleRecord();
  v4 = *(v1 + *(v3 + 48));
  v5 = *(v3 - 8);
  if (*(v4 + 16))
  {
    v9 = *(v3 - 8);
    sub_21CD2F778(v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), a1);
    v5 = v9;
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v5 + 56);

  return v7(a1, v6, 1, v3);
}

uint64_t sub_21CD2E254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BundleRecord();
  v5 = *(a1 + *(v4 + 48));
  v6 = *(v4 - 8);
  if (*(v5 + 16))
  {
    v10 = *(v4 - 8);
    sub_21CD2F778(v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a2);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v4);
}

uint64_t sub_21CD2E320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v8 - v5;
  sub_21CCD1750(a1, &v8 - v5, &qword_27CE1A260, &qword_21CD8EF90);
  return BundleRecord.containingBundleRecord.setter(v6);
}

uint64_t BundleRecord.containingBundleRecord.setter(uint64_t a1)
{
  v2 = type metadata accessor for BundleRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A960, &qword_21CD91B60);
  v17 = *(v8 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v30 = a1;
  sub_21CCD1750(a1, v19 + v18, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CCD1750(v19 + v18, v16, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CD2F6A0(v16, v13, &qword_27CE1A260, &qword_21CD8EF90);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_21CCB1928(v13, &qword_27CE1A260, &qword_21CD8EF90);
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = v29;
    sub_21CD2F63C(v13, v29);
    v20 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_21CCCF2D0(0, v20[2] + 1, 1, v20);
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_21CCCF2D0(v22 > 1, v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    sub_21CD2F63C(v21, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23);
  }

  sub_21CCB1928(v30, &qword_27CE1A260, &qword_21CD8EF90);
  swift_setDeallocating();
  sub_21CCB1928(v19 + v18, &qword_27CE1A260, &qword_21CD8EF90);
  swift_deallocClassInstance();
  v24 = *(v2 + 48);
  v25 = v31;
  v26 = *(v31 + v24);

  *(v25 + v24) = v20;
  return result;
}

void (*BundleRecord.containingBundleRecord.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for BundleRecord();
  v7 = *(v1 + *(v6 + 48));
  v8 = *(v6 - 8);
  if (*(v7 + 16))
  {
    sub_21CD2F778(v7 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v5);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  (*(v8 + 56))(v5, v9, 1, v6);
  return sub_21CD2E834;
}

void sub_21CD2E834(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_21CCD1750(a1[2], v2, &qword_27CE1A260, &qword_21CD8EF90);
    BundleRecord.containingBundleRecord.setter(v2);
    sub_21CCB1928(v3, &qword_27CE1A260, &qword_21CD8EF90);
  }

  else
  {
    BundleRecord.containingBundleRecord.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

void BundleRecord.init(applicationIdentifier:bundleIdentifier:deviceIdentifierForVendor:teamIdentifier:appStoreItemIdentifier:localizedName:localizedIdentityUsageDescription:recordType:containingBundleRecord:entitlements:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17)
{
  v72 = a7;
  v73 = a8;
  v65 = a3;
  v66 = a4;
  v62 = a1;
  v63 = a2;
  v75 = a17;
  v76 = a5;
  v70 = a14;
  v71 = a6;
  v68 = a12;
  v69 = a13;
  v67 = a11;
  v64 = a10;
  v74 = a16;
  v18 = type metadata accessor for BundleRecord();
  v61 = *(v18 - 1);
  v19 = *(v61 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v58 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  v60 = *(v22 - 8);
  v23 = v60;
  v24 = *(v60 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v58 - v30;
  v59 = *a15;
  v32 = v18[6];
  v33 = sub_21CD83794();
  (*(*(v33 - 8) + 56))(&a9[v32], 1, 1, v33);
  v34 = &a9[v18[7]];
  v35 = &a9[v18[8]];
  v36 = &a9[v18[10]];
  v37 = v63;
  *a9 = v62;
  *(a9 + 1) = v37;
  v38 = v66;
  *(a9 + 2) = v65;
  *(a9 + 3) = v38;
  sub_21CD2F5CC(v76, &a9[v32]);
  v39 = v72;
  *v34 = v71;
  *(v34 + 1) = v39;
  v40 = v61;
  *v35 = v73;
  v35[8] = v64 & 1;
  v41 = &a9[v18[9]];
  v42 = v68;
  *v41 = v67;
  *(v41 + 1) = v42;
  v43 = v70;
  *v36 = v69;
  *(v36 + 1) = v43;
  a9[v18[11]] = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A960, &qword_21CD91B60);
  v44 = v23;
  v45 = v74;
  v46 = *(v44 + 72);
  v47 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v48 = swift_allocObject();
  sub_21CCD1750(v45, v48 + v47, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CCD1750(v48 + v47, v31, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CD2F6A0(v31, v28, &qword_27CE1A260, &qword_21CD8EF90);
  if ((*(v40 + 48))(v28, 1, v18) == 1)
  {
    sub_21CCB1928(v28, &qword_27CE1A260, &qword_21CD8EF90);
    v49 = MEMORY[0x277D84F90];
  }

  else
  {
    v50 = v28;
    v51 = v58;
    sub_21CD2F63C(v50, v58);
    v49 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_21CCCF2D0(0, v49[2] + 1, 1, v49);
    }

    v53 = v49[2];
    v52 = v49[3];
    if (v53 >= v52 >> 1)
    {
      v49 = sub_21CCCF2D0(v52 > 1, v53 + 1, 1, v49);
    }

    v49[2] = v53 + 1;
    sub_21CD2F63C(v51, v49 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v53);
  }

  swift_setDeallocating();
  sub_21CCB1928(v48 + v47, &qword_27CE1A260, &qword_21CD8EF90);
  swift_deallocClassInstance();
  *&a9[v18[12]] = v49;
  v54 = sub_21CD83A14();

  v55 = [objc_opt_self() propertyListWithDictionary_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A968, &qword_21CD91B68);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  v57 = v55;
  sub_21CCB1928(v45, &qword_27CE1A260, &qword_21CD8EF90);
  sub_21CCB1928(v76, &qword_27CE1A680, &qword_21CD90530);
  *(v56 + 16) = v57;

  *&a9[v18[13]] = v56;
}

uint64_t type metadata accessor for BundleRecord()
{
  result = qword_280F78128;
  if (!qword_280F78128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BundleRecord.description.getter()
{
  v1 = type metadata accessor for BundleRecord();
  v50 = *(v1 - 1);
  v2 = *(v50 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v49 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A278, &unk_21CD91B70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CD91B50;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_21CD83F74();

  v53[0] = 0xD000000000000017;
  v53[1] = 0x800000021CDA0300;
  if (v0[1])
  {
    v11 = *v0;
    v12 = v0[1];
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x21CF175E0](v11, v12);

  v13 = v53[1];
  *(v10 + 32) = v53[0];
  *(v10 + 40) = v13;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_21CD83F74();

  v53[0] = 0xD000000000000012;
  v53[1] = 0x800000021CDA0320;
  if (v0[3])
  {
    v14 = v0[2];
    v15 = v0[3];
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x21CF175E0](v14, v15);

  v16 = v53[1];
  *(v10 + 48) = v53[0];
  *(v10 + 56) = v16;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_21CD83F74();

  v53[0] = 0xD00000000000001BLL;
  v53[1] = 0x800000021CDA0340;
  sub_21CCD1750(v0 + v1[6], v9, &qword_27CE1A680, &qword_21CD90530);
  v17 = sub_21CD83794();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_21CCB1928(v9, &qword_27CE1A680, &qword_21CD90530);
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    v20 = MEMORY[0x21CF171A0]();
    v19 = v21;
    (*(v18 + 8))(v9, v17);
  }

  MEMORY[0x21CF175E0](v20, v19);

  v22 = v53[1];
  *(v10 + 64) = v53[0];
  *(v10 + 72) = v22;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_21CD83F74();

  v53[0] = 0xD000000000000010;
  v53[1] = 0x800000021CDA0360;
  v23 = (v0 + v1[7]);
  if (v23[1])
  {
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v25 = 0xE300000000000000;
    v24 = 7104878;
  }

  MEMORY[0x21CF175E0](v24, v25);

  v26 = v53[1];
  *(v10 + 80) = v53[0];
  *(v10 + 88) = v26;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_21CD83F74();

  v53[0] = 0xD000000000000018;
  v53[1] = 0x800000021CDA0380;
  v27 = v0 + v1[8];
  if (v27[8])
  {
    v28 = 0xE300000000000000;
    v29 = 7104878;
  }

  else
  {
    v52 = *v27;
    sub_21CD2F840();
    v29 = sub_21CD83ED4();
    v28 = v30;
  }

  MEMORY[0x21CF175E0](v29, v28);

  v31 = v53[1];
  *(v10 + 96) = v53[0];
  *(v10 + 104) = v31;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_21CD83F74();

  v53[0] = 0x657A696C61636F6CLL;
  v53[1] = 0xEF203A656D614E64;
  MEMORY[0x21CF175E0](*(v0 + v1[9]), *(v0 + v1[9] + 8));
  v32 = v53[1];
  *(v10 + 112) = v53[0];
  *(v10 + 120) = v32;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_21CD83F74();

  v53[0] = 0xD000000000000023;
  v53[1] = 0x800000021CDA03A0;
  v33 = (v0 + v1[10]);
  if (v33[1])
  {
    v34 = *v33;
    v35 = v33[1];
  }

  else
  {
    v35 = 0xE300000000000000;
    v34 = 7104878;
  }

  MEMORY[0x21CF175E0](v34, v35);

  v36 = v53[1];
  *(v10 + 128) = v53[0];
  *(v10 + 136) = v36;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  MEMORY[0x21CF175E0](0x795464726F636572, 0xEC000000203A6570);
  LOBYTE(v52) = *(v0 + v1[11]);
  sub_21CD83FC4();
  v37 = v53[1];
  *(v10 + 144) = v53[0];
  *(v10 + 152) = v37;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_21CD83F74();

  v53[0] = 0xD000000000000018;
  v53[1] = 0x800000021CDA03D0;
  v38 = *(v0 + v1[12]);
  if (*(v38 + 16))
  {
    v39 = v51;
    v40 = sub_21CD2F778(v38 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v51);
    v41 = BundleRecord.description.getter(v40);
    v43 = v42;
    sub_21CD07770(v39);
  }

  else
  {
    v43 = 0xE300000000000000;
    v41 = 7104878;
  }

  MEMORY[0x21CF175E0](v41, v43);

  v44 = v53[1];
  *(v10 + 160) = v53[0];
  *(v10 + 168) = v44;
  strcpy(v53, "BundleRecord(");
  HIWORD(v53[1]) = -4864;
  v52 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  sub_21CD2F7DC();
  v45 = sub_21CD83A74();
  v47 = v46;

  MEMORY[0x21CF175E0](v45, v47);

  MEMORY[0x21CF175E0](41, 0xE100000000000000);
  return v53[0];
}

unint64_t sub_21CD2F49C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A998, &unk_21CD91CC0);
    v3 = sub_21CD84014();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CCD1750(v4, &v13, &qword_27CE18EE0, &qword_21CD885D0);
      v5 = v13;
      v6 = v14;
      result = sub_21CCA996C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CCB2190(&v15, (v3[7] + 32 * result));
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

uint64_t sub_21CD2F5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD2F63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD2F6A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CD2F708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD2F778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CD2F7DC()
{
  result = qword_27CE1A978;
  if (!qword_27CE1A978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A290, &qword_21CD8F130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A978);
  }

  return result;
}

unint64_t sub_21CD2F840()
{
  result = qword_27CE1A980;
  if (!qword_27CE1A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A980);
  }

  return result;
}

unint64_t sub_21CD2F898()
{
  result = qword_27CE1A988;
  if (!qword_27CE1A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A988);
  }

  return result;
}

void sub_21CD2F9B0()
{
  sub_21CD1EFCC(319, &qword_280F77E38);
  if (v0 <= 0x3F)
  {
    sub_21CD2FB18(319, &qword_280F78140, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CD1EFCC(319, &qword_280F77E10);
      if (v2 <= 0x3F)
      {
        sub_21CD2FB18(319, &qword_27CE1A990, type metadata accessor for BundleRecord, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_21CD2FB7C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CD2FB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21CD2FB7C()
{
  if (!qword_280F78138)
  {
    sub_21CCB17E8(255, &qword_280F77E30, 0x277CC1EE0);
    v0 = sub_21CD839C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280F78138);
    }
  }
}

uint64_t sub_21CD2FC78()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t MobileDocumentReaderBundleTypeCheckOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

CoreIDV::MobileDocumentReaderBundleTypeCheckOutcome __swiftcall MobileDocumentReaderEntitlementChecker.checkBundleTypeSupported(auditToken:)(audit_token_t_optional *auditToken)
{
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A260, &qword_21CD8EF90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v44 - v8;
  v10 = type metadata accessor for BundleRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v44 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v44 - v22;
  if (auditToken->is_nil)
  {
    v24 = v2[3];
    v25 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v24);
    (*(v25 + 8))(v24, v25);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      LOBYTE(v26) = sub_21CCB1928(v9, &qword_27CE1A260, &qword_21CD8EF90);
LABEL_12:
      v38 = 2;
      goto LABEL_13;
    }

    sub_21CD2F63C(v9, v16);
    v20 = v16;
  }

  else
  {
    v28 = *&auditToken->value.val[4];
    v27 = *&auditToken->value.val[6];
    v31 = auditToken;
    v29 = *auditToken->value.val;
    v30 = *&v31->value.val[2];
    v44[0] = v10;
    v32 = v44 - v22;
    v33 = v4;
    v35 = v2[3];
    v34 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v35);
    v36 = v35;
    v4 = v33;
    v23 = v32;
    v10 = v44[0];
    (*(v34 + 16))(v29, v30, v28, v27, v36, v34);
  }

  sub_21CD2F63C(v20, v23);
  v37 = v23[*(v10 + 44)];
  if (v37 >= 2)
  {
    if (v37 == 2)
    {
      v39 = *&v23[*(v10 + 52)];
      os_unfair_lock_lock((v39 + 24));
      v40 = *(v39 + 16);
      v41 = sub_21CD83B04();
      sub_21CD07724();
      v42 = [v40 objectForKey:v41 ofClass:swift_getObjCClassFromMetadata()];

      if (v42)
      {
        sub_21CD83EE4();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      v47 = v45;
      v48 = v46;
      os_unfair_lock_unlock((v39 + 24));
      sub_21CD07770(v23);
      if (*(&v48 + 1))
      {
        v26 = swift_dynamicCast();
        if (v26 && (v45 & 1) != 0)
        {
          v38 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v26) = sub_21CCB1928(&v47, &qword_27CE19160, &unk_21CD88740);
      }

      v38 = 1;
      goto LABEL_13;
    }

    LOBYTE(v26) = sub_21CD07770(v23);
    goto LABEL_12;
  }

  LOBYTE(v26) = sub_21CD07770(v23);
  v38 = 0;
LABEL_13:
  *v4 = v38;
  return v26;
}

Swift::Bool __swiftcall MobileDocumentReaderEntitlementChecker.checkInternalEntitlement(connection:)(NSXPCConnection_optional connection)
{
  if (connection.value.super.isa)
  {
    v1 = connection.value.super.isa;
    v2 = sub_21CD83B04();
    v3 = [(objc_class *)v1 valueForEntitlement:v2];

    if (v3)
    {
      sub_21CD83EE4();

      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        return v9;
      }

      return 0;
    }

    goto LABEL_16;
  }

  v4 = SecTaskCreateFromSelf(0);
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_16:
    sub_21CCB1928(&v13, &qword_27CE19160, &unk_21CD88740);
    return 0;
  }

  v5 = v4;
  v6 = sub_21CD83B04();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

  if (v7)
  {
    ObjectType = swift_getObjectType();
    *&v9 = v7;
    sub_21CCB2190(&v9, &v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;

  if (!*(&v14 + 1))
  {
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    return v11;
  }

  return 0;
}

void sub_21CD30424(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 32))
  {
    v3 = SecTaskCreateFromSelf(0);
    if (!v3)
    {
LABEL_3:
      *a2 = 0u;
      a2[1] = 0u;
      return;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    *token.val = *a1;
    *&token.val[4] = v4;
    v3 = SecTaskCreateWithAuditToken(0, &token);
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  v5 = v3;
  v6 = sub_21CD83B04();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

  if (v7)
  {
    ObjectType = swift_getObjectType();
    *&v9 = v7;
    sub_21CCB2190(&v9, &token);
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v8 = *&token.val[4];
  *a2 = *token.val;
  a2[1] = v8;
}

Swift::Bool __swiftcall MobileDocumentReaderEntitlementChecker.checkPublicEntitlements(auditToken:)(audit_token_t_optional *auditToken)
{
  if (auditToken->is_nil)
  {
    sub_21CD30424(auditToken, &v17);
    if (*&v17.val[6])
    {
      if (swift_dynamicCast())
      {
        v1 = v16.val[0];
        goto LABEL_10;
      }
    }

    else
    {
      sub_21CCB1928(&v17, &qword_27CE19160, &unk_21CD88740);
    }

    v1 = 0;
LABEL_10:
    v4 = SecTaskCreateFromSelf(0);
    if (v4)
    {
      v5 = v4;
      v6 = sub_21CD83B04();
      v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

      if (v7)
      {
        *&token.val[6] = swift_getObjectType();
        *token.val = v7;
        sub_21CCB2190(&token, &v16);
      }

      else
      {
        memset(&v16, 0, sizeof(v16));
      }

      v17 = v16;

      if (*&v17.val[6])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A9A0, &qword_21CD91D08);
        if (swift_dynamicCast())
        {
          goto LABEL_29;
        }

        return (v1 & 1) != 0;
      }
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    sub_21CCB1928(&v17, &qword_27CE19160, &unk_21CD88740);
    return (v1 & 1) != 0;
  }

  v2 = *&auditToken->value.val[4];
  *v17.val = *auditToken->value.val;
  *&v17.val[4] = v2;
  sub_21CD30424(auditToken, &v16);
  if (*&v16.val[6])
  {
    if (swift_dynamicCast())
    {
      v3 = token.val[0];
      goto LABEL_15;
    }
  }

  else
  {
    sub_21CCB1928(&v16, &qword_27CE19160, &unk_21CD88740);
  }

  v3 = 0;
LABEL_15:
  token = v17;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (!v8)
  {
    memset(&v16, 0, sizeof(v16));
    goto LABEL_30;
  }

  v9 = v8;
  v10 = sub_21CD83B04();
  v11 = SecTaskCopyValueForEntitlement(v9, v10, 0);

  if (v11)
  {
    ObjectType = swift_getObjectType();
    *&v13 = v11;
    sub_21CCB2190(&v13, &token);
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v16 = token;

  if (!*&v16.val[6])
  {
LABEL_30:
    sub_21CCB1928(&v16, &qword_27CE19160, &unk_21CD88740);
    return (v3 & 1) != 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A9A0, &qword_21CD91D08);
  if (swift_dynamicCast())
  {
LABEL_29:

    return 1;
  }

  return (v3 & 1) != 0;
}

Swift::Bool __swiftcall MobileDocumentReaderEntitlementChecker.checkDevelopmentFlagEntitlements(auditToken:)(audit_token_t *auditToken)
{
  *token.val = auditToken;
  *&token.val[2] = v1;
  *&token.val[4] = v2;
  *&token.val[6] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (!v4)
  {
    memset(&token, 0, sizeof(token));
LABEL_9:
    sub_21CCB1928(&token, &qword_27CE19160, &unk_21CD88740);
    LOBYTE(v8) = 0;
    return v8;
  }

  v5 = v4;
  v6 = sub_21CD83B04();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

  if (v7)
  {
    *&token.val[6] = swift_getObjectType();
    *token.val = v7;
    sub_21CCB2190(&token, &v10);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  token = v10;

  if (!*&token.val[6])
  {
    goto LABEL_9;
  }

  v8 = swift_dynamicCast();
  if (v8)
  {
    LOBYTE(v8) = v10.val[0];
  }

  return v8;
}

unint64_t sub_21CD309A8()
{
  result = qword_27CE1A9A8;
  if (!qword_27CE1A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A9A8);
  }

  return result;
}

uint64_t dispatch thunk of MobileDocumentReaderEntitlementChecking.checkPublicEntitlements(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7) & 1;
}

uint64_t dispatch thunk of MobileDocumentReaderEntitlementChecking.checkBundleTypeSupported(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CD30AD4(uint64_t a1, int a2)
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

uint64_t sub_21CD30B1C(uint64_t result, int a2, int a3)
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

void MobileDocumentReaderSupportChecker.init(suiteNameOverride:)(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v3 = sub_21CD83B04();

  v4 = [v2 initWithSuiteName_];

  if (v4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE1A9B0, &unk_21CD91E60);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v4;
    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t MobileDocumentReaderSupportChecker.isLocaleSupported(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F08, &qword_21CD885F8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v34[-v4];
  v6 = *v0;
  sub_21CD83814();
  v7 = sub_21CD837F4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v14 = sub_21CD837C4();
    v16 = v15;
    (*(v8 + 8))(v5, v7);
    os_unfair_lock_lock((v6 + 24));
    v17 = *(v6 + 16);
    os_unfair_lock_unlock((v6 + 24));
    v18 = sub_21CD83B04();
    v19 = [v17 stringArrayForKey_];

    if (v19)
    {
      v22 = sub_21CD83C84();

      os_unfair_lock_lock((v6 + 24));
      v23 = *(v6 + 16);
      os_unfair_lock_unlock((v6 + 24));
      v24 = sub_21CD83B04();
      v25 = [v23 stringArrayForKey_];

      if (v25)
      {
        v26 = sub_21CD83C84();

        os_unfair_lock_lock((v6 + 24));
        v27 = *(v6 + 16);
        os_unfair_lock_unlock((v6 + 24));
        v28 = sub_21CD83B04();
        v29 = [v27 BOOLForKey_];

        v35 = v14;
        v36 = v16;
        MEMORY[0x28223BE20](v30, v31);
        *&v34[-16] = &v35;
        if (v29)
        {
          v32 = sub_21CD07F90(sub_21CD3154C, &v34[-32], v26);

          v13 = v32 ^ 1;
        }

        else
        {
          v13 = sub_21CD07F90(sub_21CD3154C, &v34[-32], v22);
        }

        return v13 & 1;
      }
    }

    v35 = v14;
    v36 = v16;
    MEMORY[0x28223BE20](v20, v21);
    *&v34[-16] = &v35;
    v13 = sub_21CD07F90(sub_21CD3144C, &v34[-32], &unk_282E6D088);

    return v13 & 1;
  }

  sub_21CCCA720(v5);
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v9 = sub_21CD839F4();
  __swift_project_value_buffer(v9, qword_280F78E40);
  v10 = sub_21CD839D4();
  v11 = sub_21CD83E24();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21CC90000, v10, v11, "Mobile document reading not supported. Region is nil.", v12, 2u);
    MEMORY[0x21CF18580](v12, -1, -1);
  }

  v13 = 0;
  return v13 & 1;
}

Swift::Void __swiftcall MobileDocumentReaderSupportChecker.update(isGloballySupported:supportedRegions:unsupportedRegions:)(Swift::Bool isGloballySupported, Swift::OpaquePointer supportedRegions, Swift::OpaquePointer unsupportedRegions)
{
  v7 = *v3;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v8 = sub_21CD839F4();
  __swift_project_value_buffer(v8, qword_280F78E40);

  v9 = sub_21CD839D4();
  v10 = sub_21CD83E24();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 67240706;
    *(v11 + 4) = isGloballySupported;
    *(v11 + 8) = 2082;
    v13 = MEMORY[0x21CF176E0](supportedRegions._rawValue, MEMORY[0x277D837D0]);
    v15 = isGloballySupported;
    rawValue = unsupportedRegions._rawValue;
    v17 = sub_21CCC02FC(v13, v14, &v30);

    *(v11 + 10) = v17;
    v18 = rawValue;
    isGloballySupported = v15;
    *(v11 + 18) = 2082;
    v19 = MEMORY[0x21CF176E0](v18, MEMORY[0x277D837D0]);
    v21 = sub_21CCC02FC(v19, v20, &v30);

    *(v11 + 20) = v21;
    _os_log_impl(&dword_21CC90000, v9, v10, "Updating mobile document reading supported regions. Is globally enabled: %{BOOL,public}d. Supported regions: %{public}s. Unsupported regions: %{public}s", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x21CF18580](v12, -1, -1);
    MEMORY[0x21CF18580](v11, -1, -1);
  }

  os_unfair_lock_lock((v7 + 24));
  v22 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 24));
  v23 = sub_21CD83B04();
  [v22 setBool:isGloballySupported forKey:v23];

  os_unfair_lock_lock((v7 + 24));
  v24 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 24));
  v25 = sub_21CD83C74();
  v26 = sub_21CD83B04();
  [v24 setObject:v25 forKey:v26];

  os_unfair_lock_lock((v7 + 24));
  v27 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 24));
  v28 = sub_21CD83C74();
  v29 = sub_21CD83B04();
  [v27 setObject:v28 forKey:v29];
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

id sub_21CD315B4(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v7 = objc_allocWithZone(v3);
  sub_21CD33CA0(a1, v7 + *a2, a3);
  v10.receiver = v7;
  v10.super_class = v3;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_21CD33D08(a1, a3);
  return v8;
}

uint64_t XPCMobileDocumentReaderConfiguration.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 8);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id XPCMobileDocumentReaderConfiguration.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value];
  *v5 = *a1;
  v5[16] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id XPCMobileDocumentReaderConfiguration.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value];
  *v5 = *a1;
  v5[16] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21CD31A94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 8);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id sub_21CD31AB4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value];
  *v5 = *a1;
  v5[16] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21CD31BA0(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  ObjectType = swift_getObjectType();
  sub_21CD33CA0(a1, v3 + *a2, a3);
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_21CD33D08(a1, a3);
  return v8;
}

id sub_21CD31DD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  v9 = objc_allocWithZone(v5);
  sub_21CD33CA0(a1, v9 + *a4, a5);
  v12.receiver = v9;
  v12.super_class = v5;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_21CD33D08(a1, a5);
  return v10;
}

uint64_t XPCMobileDocumentReaderMerchant.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value;
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 40);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  v8 = *(v2 + 24);
  *(a1 + 24) = v8;
  *(a1 + 40) = v6;

  sub_21CC96064(v5, v8);
}

id XPCMobileDocumentReaderMerchant.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v6 = *(a1 + 32);
  *(v5 + 1) = *(a1 + 16);
  *(v5 + 2) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id XPCMobileDocumentReaderMerchant.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 8);
  v5 = &v1[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v6 = *(a1 + 32);
  *(v5 + 1) = *(a1 + 16);
  *(v5 + 2) = v6;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21CD32124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value;
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 40);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  v8 = *(v2 + 24);
  *(a1 + 24) = v8;
  *(a1 + 40) = v6;

  sub_21CC96064(v5, v8);
}

id sub_21CD321A0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v6 = *(a1 + 32);
  *(v5 + 1) = *(a1 + 16);
  *(v5 + 2) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t XPCMobileDocumentReaderRequest.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value;
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 24);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;

  return sub_21CD19BA8(v5, v6, v7);
}

id XPCMobileDocumentReaderRequest.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = &v3[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  *(v6 + 1) = *(a1 + 16);
  v6[32] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id XPCMobileDocumentReaderRequest.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = &v1[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  *(v6 + 1) = *(a1 + 16);
  v6[32] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21CD324C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value;
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 16);
  v6 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 24);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;

  return sub_21CD19BA8(v5, v6, v7);
}

id sub_21CD3252C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = &v3[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
  *v6 = *a1;
  *(v6 + 1) = v4;
  *(v6 + 1) = *(a1 + 16);
  v6[32] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t XPCMobileDocumentReaderDeviceEngagementType.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_21CC96064(v2, v3);
}

id XPCMobileDocumentReaderDeviceEngagementType.__allocating_init(value:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCMobileDocumentReaderDeviceEngagementType.init(value:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_21CD32798@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_21CC96064(v2, v3);
}

id sub_21CD327B0(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t XPCAuditToken.value.getter()
{
  result = *(v0 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value);
  v2 = *(v0 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value + 16);
  v4 = *(v0 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value + 24);
  return result;
}

id XPCAuditToken.__allocating_init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id XPCAuditToken.init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id XPCAuditToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

__n128 sub_21CD32CA0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value + 16);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_21CD32CB8(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21CD33680(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  v6 = a2(a1);
  v7 = *((*MEMORY[0x277D85000] & *v5) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & *v5) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_21CD33734(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getObjectType();
  v5 = a2(a1);
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_21CD337E0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  swift_getObjectType();
  v7 = a4(a3);
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x30);
  v9 = *((*MEMORY[0x277D85000] & *a1) + 0x34);
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_21CD33A20(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  v6 = a2(a1);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_21CD33AB0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getObjectType();
  v4 = a2(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_21CD33B38(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  swift_getObjectType();
  v6 = a4(a3);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_21CD33CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD33D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CD34190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CD346BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21CD34840(char a1)
{
  result = 0x6D614E6E65766967;
  switch(a1)
  {
    case 1:
      result = 0x614E796C696D6166;
      break;
    case 2:
      result = 7890291;
      break;
    case 3:
      result = 0x7469617274726F70;
      break;
    case 4:
      result = 6645601;
      break;
    case 5:
      result = 0x61654C7441656761;
      break;
    case 6:
      result = 0x6942664F65746164;
      break;
    case 7:
      result = 0x73736572646461;
      break;
    case 8:
      result = 0x746867696568;
      break;
    case 9:
      result = 0x746867696577;
      break;
    case 10:
      result = 0x726F6C6F43657965;
      break;
    case 11:
      result = 0x6F6C6F4372696168;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x536E617265746576;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
    case 18:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0x746E656D75636F64;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21CD34A70(uint64_t a1)
{
  v2 = sub_21CD38F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34AAC(uint64_t a1)
{
  v2 = sub_21CD38F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34AE8(uint64_t a1)
{
  v2 = sub_21CD39014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34B24(uint64_t a1)
{
  v2 = sub_21CD39014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34B60(uint64_t a1)
{
  v2 = sub_21CD39068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34B9C(uint64_t a1)
{
  v2 = sub_21CD39068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD3A6A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD34C14(uint64_t a1)
{
  v2 = sub_21CD38B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34C50(uint64_t a1)
{
  v2 = sub_21CD38B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34C8C(uint64_t a1)
{
  v2 = sub_21CD38FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34CC8(uint64_t a1)
{
  v2 = sub_21CD38FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34D04(uint64_t a1)
{
  v2 = sub_21CD38C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34D40(uint64_t a1)
{
  v2 = sub_21CD38C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34D7C(uint64_t a1)
{
  v2 = sub_21CD38B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34DB8(uint64_t a1)
{
  v2 = sub_21CD38B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34DF4(uint64_t a1)
{
  v2 = sub_21CD38BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34E30(uint64_t a1)
{
  v2 = sub_21CD38BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34E6C(uint64_t a1)
{
  v2 = sub_21CD38C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34EA8(uint64_t a1)
{
  v2 = sub_21CD38C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34EE4(uint64_t a1)
{
  v2 = sub_21CD38CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34F20(uint64_t a1)
{
  v2 = sub_21CD38CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34F5C(uint64_t a1)
{
  v2 = sub_21CD38E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD34F98(uint64_t a1)
{
  v2 = sub_21CD38E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD34FD4(uint64_t a1)
{
  v2 = sub_21CD39164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35010(uint64_t a1)
{
  v2 = sub_21CD39164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3504C(uint64_t a1)
{
  v2 = sub_21CD391B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35088(uint64_t a1)
{
  v2 = sub_21CD391B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD350C4(uint64_t a1)
{
  v2 = sub_21CD38E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35100(uint64_t a1)
{
  v2 = sub_21CD38E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3513C(uint64_t a1)
{
  v2 = sub_21CD38F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35178(uint64_t a1)
{
  v2 = sub_21CD38F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD351B4(uint64_t a1)
{
  v2 = sub_21CD38D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD351F0(uint64_t a1)
{
  v2 = sub_21CD38D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3522C(uint64_t a1)
{
  v2 = sub_21CD38DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35268(uint64_t a1)
{
  v2 = sub_21CD38DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD352A4(uint64_t a1)
{
  v2 = sub_21CD390BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD352E0(uint64_t a1)
{
  v2 = sub_21CD390BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3531C(uint64_t a1)
{
  v2 = sub_21CD39110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35358(uint64_t a1)
{
  v2 = sub_21CD39110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD35394(uint64_t a1)
{
  v2 = sub_21CD38D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD353D0(uint64_t a1)
{
  v2 = sub_21CD38D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3540C(uint64_t a1)
{
  v2 = sub_21CD38EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD35448(uint64_t a1)
{
  v2 = sub_21CD38EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentElement.Element.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB08, &qword_21CD92420);
  v160 = *(v3 - 8);
  v161 = v3;
  v4 = *(v160 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v159 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB10, &qword_21CD92428);
  v157 = *(v7 - 8);
  v158 = v7;
  v8 = *(v157 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v156 = &v104 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB18, &qword_21CD92430);
  v154 = *(v11 - 8);
  v155 = v11;
  v12 = *(v154 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v153 = &v104 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB20, &qword_21CD92438);
  v151 = *(v15 - 8);
  v152 = v15;
  v16 = *(v151 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v150 = &v104 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB28, &qword_21CD92440);
  v148 = *(v19 - 8);
  v149 = v19;
  v20 = *(v148 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v147 = &v104 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB30, &qword_21CD92448);
  v145 = *(v23 - 8);
  v146 = v23;
  v24 = *(v145 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v144 = &v104 - v26;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB38, &qword_21CD92450);
  v142 = *(v143 - 8);
  v27 = *(v142 + 64);
  MEMORY[0x28223BE20](v143, v28);
  v141 = &v104 - v29;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB40, &qword_21CD92458);
  v139 = *(v140 - 8);
  v30 = *(v139 + 64);
  MEMORY[0x28223BE20](v140, v31);
  v138 = &v104 - v32;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB48, &qword_21CD92460);
  v136 = *(v137 - 8);
  v33 = *(v136 + 64);
  MEMORY[0x28223BE20](v137, v34);
  v135 = &v104 - v35;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB50, &qword_21CD92468);
  v133 = *(v134 - 8);
  v36 = *(v133 + 64);
  MEMORY[0x28223BE20](v134, v37);
  v132 = &v104 - v38;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB58, &qword_21CD92470);
  v130 = *(v131 - 8);
  v39 = *(v130 + 64);
  MEMORY[0x28223BE20](v131, v40);
  v129 = &v104 - v41;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB60, &qword_21CD92478);
  v127 = *(v128 - 8);
  v42 = *(v127 + 64);
  MEMORY[0x28223BE20](v128, v43);
  v126 = &v104 - v44;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB68, &qword_21CD92480);
  v124 = *(v125 - 8);
  v45 = *(v124 + 64);
  MEMORY[0x28223BE20](v125, v46);
  v123 = &v104 - v47;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB70, &qword_21CD92488);
  v121 = *(v122 - 8);
  v48 = *(v121 + 64);
  MEMORY[0x28223BE20](v122, v49);
  v120 = &v104 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB78, &qword_21CD92490);
  v162 = *(v51 - 8);
  v163 = v51;
  v52 = *(v162 + 64);
  MEMORY[0x28223BE20](v51, v53);
  v55 = &v104 - v54;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB80, &qword_21CD92498);
  v118 = *(v119 - 8);
  v56 = *(v118 + 64);
  MEMORY[0x28223BE20](v119, v57);
  v117 = &v104 - v58;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB88, &qword_21CD924A0);
  v115 = *(v116 - 8);
  v59 = *(v115 + 64);
  MEMORY[0x28223BE20](v116, v60);
  v114 = &v104 - v61;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB90, &qword_21CD924A8);
  v112 = *(v113 - 8);
  v62 = *(v112 + 64);
  MEMORY[0x28223BE20](v113, v63);
  v111 = &v104 - v64;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AB98, &qword_21CD924B0);
  v109 = *(v110 - 8);
  v65 = *(v109 + 64);
  MEMORY[0x28223BE20](v110, v66);
  v108 = &v104 - v67;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ABA0, &qword_21CD924B8);
  v106 = *(v107 - 8);
  v68 = *(v106 + 64);
  MEMORY[0x28223BE20](v107, v69);
  v105 = &v104 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ABA8, &qword_21CD924C0);
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71, v74);
  v76 = &v104 - v75;
  v77 = *v1;
  v78 = *(v1 + 8);
  v79 = a1;
  v81 = a1[3];
  v80 = a1[4];
  __swift_project_boxed_opaque_existential_0(v79, v81);
  sub_21CD38B28();
  sub_21CD842B4();
  if (v78 == 1)
  {
    v82 = v76;
    switch(v77)
    {
      case 1:
        v165 = 1;
        sub_21CD39164();
        v99 = v108;
        sub_21CD840E4();
        v84 = *(v109 + 8);
        v85 = v99;
        v86 = &v142;
        goto LABEL_24;
      case 2:
        v165 = 2;
        sub_21CD39110();
        v96 = v111;
        sub_21CD840E4();
        v84 = *(v112 + 8);
        v85 = v96;
        v86 = &v145;
        goto LABEL_24;
      case 3:
        v165 = 3;
        sub_21CD390BC();
        v97 = v114;
        sub_21CD840E4();
        v84 = *(v115 + 8);
        v85 = v97;
        v86 = &v148;
        goto LABEL_24;
      case 4:
        v165 = 4;
        sub_21CD39068();
        v93 = v117;
        sub_21CD840E4();
        v84 = *(v118 + 8);
        v85 = v93;
        v86 = &v151;
        goto LABEL_24;
      case 5:
        v165 = 6;
        sub_21CD38FC0();
        v100 = v120;
        sub_21CD840E4();
        v84 = *(v121 + 8);
        v85 = v100;
        v86 = &v154;
        goto LABEL_24;
      case 6:
        v165 = 7;
        sub_21CD38F6C();
        v101 = v123;
        sub_21CD840E4();
        v84 = *(v124 + 8);
        v85 = v101;
        v86 = &v157;
        goto LABEL_24;
      case 7:
        v165 = 8;
        sub_21CD38F18();
        v98 = v126;
        sub_21CD840E4();
        v84 = *(v127 + 8);
        v85 = v98;
        v86 = &v160;
        goto LABEL_24;
      case 8:
        v165 = 9;
        sub_21CD38EC4();
        v103 = v129;
        sub_21CD840E4();
        v84 = *(v130 + 8);
        v85 = v103;
        v86 = &v163;
        goto LABEL_24;
      case 9:
        v165 = 10;
        sub_21CD38E70();
        v95 = v132;
        sub_21CD840E4();
        v84 = *(v133 + 8);
        v85 = v95;
        v86 = &v164;
        goto LABEL_24;
      case 10:
        v165 = 11;
        sub_21CD38E1C();
        v102 = v135;
        sub_21CD840E4();
        v84 = *(v136 + 8);
        v85 = v102;
        v86 = &v166;
        goto LABEL_24;
      case 11:
        v165 = 12;
        sub_21CD38DC8();
        v92 = v138;
        sub_21CD840E4();
        v84 = *(v139 + 8);
        v85 = v92;
        v86 = &v167;
        goto LABEL_24;
      case 12:
        v165 = 13;
        sub_21CD38D74();
        v94 = v141;
        sub_21CD840E4();
        v84 = *(v142 + 8);
        v85 = v94;
        v86 = &v168;
        goto LABEL_24;
      case 13:
        v165 = 14;
        sub_21CD38D20();
        v89 = v144;
        sub_21CD840E4();
        v91 = v145;
        v90 = v146;
        goto LABEL_21;
      case 14:
        v165 = 15;
        sub_21CD38CCC();
        v89 = v147;
        sub_21CD840E4();
        v91 = v148;
        v90 = v149;
        goto LABEL_21;
      case 15:
        v165 = 16;
        sub_21CD38C78();
        v89 = v150;
        sub_21CD840E4();
        v91 = v151;
        v90 = v152;
        goto LABEL_21;
      case 16:
        v165 = 17;
        sub_21CD38C24();
        v89 = v153;
        sub_21CD840E4();
        v91 = v154;
        v90 = v155;
        goto LABEL_21;
      case 17:
        v165 = 18;
        sub_21CD38BD0();
        v89 = v156;
        sub_21CD840E4();
        v91 = v157;
        v90 = v158;
        goto LABEL_21;
      case 18:
        v165 = 19;
        sub_21CD38B7C();
        v89 = v159;
        sub_21CD840E4();
        v91 = v160;
        v90 = v161;
LABEL_21:
        (*(v91 + 8))(v89, v90);
        break;
      default:
        v165 = 0;
        sub_21CD391B8();
        v83 = v105;
        sub_21CD840E4();
        v84 = *(v106 + 8);
        v85 = v83;
        v86 = &v139;
LABEL_24:
        v84(v85, *(v86 - 32));
        break;
    }

    return (*(v72 + 8))(v82, v71);
  }

  else
  {
    v165 = 5;
    sub_21CD39014();
    sub_21CD840E4();
    v87 = v163;
    sub_21CD84154();
    (*(v162 + 8))(v55, v87);
    return (*(v72 + 8))(v76, v71);
  }
}

uint64_t MobileDocumentElement.Element.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_21CD93910[v1];
  }

  else
  {
    MEMORY[0x21CF17CC0](5);
  }

  return MEMORY[0x21CF17CC0](v1);
}

uint64_t MobileDocumentElement.Element.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

uint64_t MobileDocumentElement.Element.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC58, &qword_21CD924C8);
  v153 = *(v169 - 8);
  v3 = *(v153 + 64);
  MEMORY[0x28223BE20](v169, v4);
  v168 = &v113 - v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC60, &qword_21CD924D0);
  v151 = *(v152 - 8);
  v6 = *(v151 + 64);
  MEMORY[0x28223BE20](v152, v7);
  v167 = &v113 - v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC68, &qword_21CD924D8);
  v149 = *(v150 - 8);
  v9 = *(v149 + 64);
  MEMORY[0x28223BE20](v150, v10);
  v166 = &v113 - v11;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC70, &qword_21CD924E0);
  v147 = *(v148 - 8);
  v12 = *(v147 + 64);
  MEMORY[0x28223BE20](v148, v13);
  v165 = &v113 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC78, &qword_21CD924E8);
  v145 = *(v146 - 8);
  v15 = *(v145 + 64);
  MEMORY[0x28223BE20](v146, v16);
  v164 = &v113 - v17;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC80, &qword_21CD924F0);
  v143 = *(v144 - 8);
  v18 = *(v143 + 64);
  MEMORY[0x28223BE20](v144, v19);
  v163 = &v113 - v20;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC88, &qword_21CD924F8);
  v141 = *(v142 - 8);
  v21 = *(v141 + 64);
  MEMORY[0x28223BE20](v142, v22);
  v162 = &v113 - v23;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC90, &qword_21CD92500);
  v139 = *(v140 - 8);
  v24 = *(v139 + 64);
  MEMORY[0x28223BE20](v140, v25);
  v161 = &v113 - v26;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AC98, &qword_21CD92508);
  v137 = *(v138 - 8);
  v27 = *(v137 + 64);
  MEMORY[0x28223BE20](v138, v28);
  v160 = &v113 - v29;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACA0, &qword_21CD92510);
  v135 = *(v136 - 8);
  v30 = *(v135 + 64);
  MEMORY[0x28223BE20](v136, v31);
  v159 = &v113 - v32;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACA8, &qword_21CD92518);
  v133 = *(v134 - 8);
  v33 = *(v133 + 64);
  MEMORY[0x28223BE20](v134, v34);
  v158 = &v113 - v35;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACB0, &qword_21CD92520);
  v131 = *(v132 - 8);
  v36 = *(v131 + 64);
  MEMORY[0x28223BE20](v132, v37);
  v157 = &v113 - v38;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACB8, &qword_21CD92528);
  v130 = *(v129 - 8);
  v39 = *(v130 + 64);
  MEMORY[0x28223BE20](v129, v40);
  v172 = &v113 - v41;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACC0, &qword_21CD92530);
  v128 = *(v127 - 8);
  v42 = *(v128 + 64);
  MEMORY[0x28223BE20](v127, v43);
  v156 = &v113 - v44;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACC8, &qword_21CD92538);
  v126 = *(v123 - 8);
  v45 = *(v126 + 64);
  MEMORY[0x28223BE20](v123, v46);
  v171 = &v113 - v47;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACD0, &qword_21CD92540);
  v124 = *(v125 - 8);
  v48 = *(v124 + 64);
  MEMORY[0x28223BE20](v125, v49);
  v170 = &v113 - v50;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACD8, &qword_21CD92548);
  v121 = *(v122 - 8);
  v51 = *(v121 + 64);
  MEMORY[0x28223BE20](v122, v52);
  v155 = &v113 - v53;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACE0, &qword_21CD92550);
  v119 = *(v120 - 8);
  v54 = *(v119 + 64);
  MEMORY[0x28223BE20](v120, v55);
  v154 = &v113 - v56;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACE8, &qword_21CD92558);
  v117 = *(v118 - 8);
  v57 = *(v117 + 64);
  MEMORY[0x28223BE20](v118, v58);
  v60 = &v113 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACF0, &qword_21CD92560);
  v116 = *(v61 - 8);
  v62 = *(v116 + 64);
  MEMORY[0x28223BE20](v61, v63);
  v65 = &v113 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1ACF8, &unk_21CD92568);
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66, v69);
  v71 = &v113 - v70;
  v73 = a1[3];
  v72 = a1[4];
  v175 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v73);
  sub_21CD38B28();
  v74 = v174;
  sub_21CD842A4();
  v75 = v74;
  if (v74)
  {
    return __swift_destroy_boxed_opaque_existential_0(v175);
  }

  v114 = v65;
  v113 = v61;
  v115 = v60;
  v76 = v170;
  v77 = v171;
  v79 = v172;
  v78 = v173;
  v174 = v67;
  v80 = sub_21CD840D4();
  v81 = (2 * *(v80 + 16)) | 1;
  v176 = v80;
  v177 = v80 + 32;
  v178 = 0;
  v179 = v81;
  v82 = sub_21CCCBAC8();
  v83 = v71;
  if (v178 != v179 >> 1)
  {
LABEL_5:
    v87 = sub_21CD83FA4();
    swift_allocError();
    v89 = v88;
    v90 = v66;
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
    *v89 = &type metadata for MobileDocumentElement.Element;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v87 - 8) + 104))(v89, *MEMORY[0x277D84160], v87);
    swift_willThrow();
    (*(v174 + 8))(v83, v90);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v175);
  }

  v84 = v169;
  switch(v82)
  {
    case 0:
      v180 = 0;
      sub_21CD391B8();
      v85 = v114;
      sub_21CD84034();
      (*(v116 + 8))(v85, v113);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      break;
    case 1:
      v180 = 1;
      sub_21CD39164();
      v101 = v115;
      sub_21CD84034();
      (*(v117 + 8))(v101, v118);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v75 = 1;
      v86 = 1;
      break;
    case 2:
      v180 = 2;
      sub_21CD39110();
      v98 = v154;
      sub_21CD84034();
      (*(v119 + 8))(v98, v120);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 2;
      break;
    case 3:
      v180 = 3;
      sub_21CD390BC();
      v100 = v155;
      sub_21CD84034();
      (*(v121 + 8))(v100, v122);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 3;
      break;
    case 4:
      v180 = 4;
      sub_21CD39068();
      sub_21CD84034();
      (*(v124 + 8))(v76, v125);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 4;
      break;
    case 5:
      v180 = 5;
      sub_21CD39014();
      sub_21CD84034();
      v172 = v66;
      v103 = v123;
      v104 = sub_21CD840B4();
      v105 = v174;
      v75 = v104;
      (*(v126 + 8))(v77, v103);
      (*(v105 + 8))(v83, v172);
      swift_unknownObjectRelease();
      v86 = 0;
      break;
    case 6:
      v180 = 6;
      sub_21CD38FC0();
      v107 = v156;
      sub_21CD84034();
      (*(v128 + 8))(v107, v127);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 5;
      break;
    case 7:
      v180 = 7;
      sub_21CD38F6C();
      sub_21CD84034();
      (*(v130 + 8))(v79, v129);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 6;
      break;
    case 8:
      v180 = 8;
      sub_21CD38F18();
      v110 = v157;
      sub_21CD84034();
      (*(v131 + 8))(v110, v132);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 7;
      break;
    case 9:
      v180 = 9;
      sub_21CD38EC4();
      v97 = v158;
      sub_21CD84034();
      (*(v133 + 8))(v97, v134);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 8;
      break;
    case 10:
      v180 = 10;
      sub_21CD38E70();
      v109 = v159;
      sub_21CD84034();
      (*(v135 + 8))(v109, v136);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 9;
      break;
    case 11:
      v180 = 11;
      sub_21CD38E1C();
      v95 = v160;
      sub_21CD84034();
      (*(v137 + 8))(v95, v138);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 10;
      break;
    case 12:
      v180 = 12;
      sub_21CD38DC8();
      v96 = v161;
      sub_21CD84034();
      (*(v139 + 8))(v96, v140);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 11;
      break;
    case 13:
      v180 = 13;
      sub_21CD38D74();
      v106 = v162;
      sub_21CD84034();
      (*(v141 + 8))(v106, v142);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 12;
      break;
    case 14:
      v180 = 14;
      sub_21CD38D20();
      v94 = v163;
      sub_21CD84034();
      (*(v143 + 8))(v94, v144);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 13;
      break;
    case 15:
      v180 = 15;
      sub_21CD38CCC();
      v99 = v164;
      sub_21CD84034();
      (*(v145 + 8))(v99, v146);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 14;
      break;
    case 16:
      v180 = 16;
      sub_21CD38C78();
      v93 = v165;
      sub_21CD84034();
      (*(v147 + 8))(v93, v148);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 15;
      break;
    case 17:
      v180 = 17;
      sub_21CD38C24();
      v102 = v166;
      sub_21CD84034();
      (*(v149 + 8))(v102, v150);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 16;
      break;
    case 18:
      v180 = 18;
      sub_21CD38BD0();
      v108 = v167;
      sub_21CD84034();
      (*(v151 + 8))(v108, v152);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 17;
      break;
    case 19:
      v180 = 19;
      sub_21CD38B7C();
      v111 = v168;
      sub_21CD84034();
      (*(v153 + 8))(v111, v84);
      (*(v174 + 8))(v83, v66);
      swift_unknownObjectRelease();
      v86 = 1;
      v75 = 18;
      break;
    default:
      goto LABEL_5;
  }

  v112 = v175;
  *v78 = v75;
  *(v78 + 8) = v86;
  return __swift_destroy_boxed_opaque_existential_0(v112);
}

uint64_t sub_21CD380FC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

uint64_t sub_21CD38154()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

void MobileDocumentElement.storage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

BOOL static MobileDocumentElement.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return _s7CoreIDV21MobileDocumentElementV0E0O2eeoiySbAE_AEtFZ_0(&v8, &v6);
}

uint64_t sub_21CD38220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD382A8(uint64_t a1)
{
  v2 = sub_21CD3920C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD382E4(uint64_t a1)
{
  v2 = sub_21CD3920C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AD00, &qword_21CD92578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3920C();
  sub_21CD842B4();
  v13 = v9;
  v14 = v10;
  sub_21CD39260();
  sub_21CD84164();
  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentElement.hash(into:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return MobileDocumentElement.Element.hash(into:)();
}

uint64_t MobileDocumentElement.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

uint64_t MobileDocumentElement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AD18, &qword_21CD92580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3920C();
  sub_21CD842A4();
  if (!v2)
  {
    sub_21CD392B4();
    sub_21CD840C4();
    (*(v6 + 8))(v10, v5);
    v12 = v15;
    *a2 = v14;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD386B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

uint64_t sub_21CD38704()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return MobileDocumentElement.Element.hash(into:)();
}

uint64_t sub_21CD38740()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21CD84264();
  MobileDocumentElement.Element.hash(into:)();
  return sub_21CD84294();
}

BOOL sub_21CD38790(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return _s7CoreIDV21MobileDocumentElementV0E0O2eeoiySbAE_AEtFZ_0(&v8, &v6);
}

uint64_t static MobileDocumentElement.ageAtLeast(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

BOOL _s7CoreIDV21MobileDocumentElementV0E0O2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    switch(v2)
    {
      case 1:
        if (v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (v3 != 2)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (v3 != 3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (v3 != 4)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (v3 != 5)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (v3 != 6)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (v3 != 7)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (v3 != 8)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (v3 != 9)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if (v3 != 10)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if (v3 != 11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if (v3 != 12)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if (v3 != 13)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if (v3 != 14)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if (v3 != 15)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 16:
        if (v3 != 16)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 17:
        if (v3 != 17)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 18:
        if (v3 <= 0x11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && v2 == v3;
  }

  return result;
}

unint64_t sub_21CD38B28()
{
  result = qword_27CE1ABB0;
  if (!qword_27CE1ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABB0);
  }

  return result;
}

unint64_t sub_21CD38B7C()
{
  result = qword_27CE1ABB8;
  if (!qword_27CE1ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABB8);
  }

  return result;
}

unint64_t sub_21CD38BD0()
{
  result = qword_27CE1ABC0;
  if (!qword_27CE1ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABC0);
  }

  return result;
}

unint64_t sub_21CD38C24()
{
  result = qword_27CE1ABC8;
  if (!qword_27CE1ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABC8);
  }

  return result;
}

unint64_t sub_21CD38C78()
{
  result = qword_27CE1ABD0;
  if (!qword_27CE1ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABD0);
  }

  return result;
}

unint64_t sub_21CD38CCC()
{
  result = qword_27CE1ABD8;
  if (!qword_27CE1ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABD8);
  }

  return result;
}

unint64_t sub_21CD38D20()
{
  result = qword_27CE1ABE0;
  if (!qword_27CE1ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABE0);
  }

  return result;
}

unint64_t sub_21CD38D74()
{
  result = qword_27CE1ABE8;
  if (!qword_27CE1ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABE8);
  }

  return result;
}

unint64_t sub_21CD38DC8()
{
  result = qword_27CE1ABF0;
  if (!qword_27CE1ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABF0);
  }

  return result;
}

unint64_t sub_21CD38E1C()
{
  result = qword_27CE1ABF8;
  if (!qword_27CE1ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ABF8);
  }

  return result;
}

unint64_t sub_21CD38E70()
{
  result = qword_27CE1AC00;
  if (!qword_27CE1AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC00);
  }

  return result;
}

unint64_t sub_21CD38EC4()
{
  result = qword_27CE1AC08;
  if (!qword_27CE1AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC08);
  }

  return result;
}

unint64_t sub_21CD38F18()
{
  result = qword_27CE1AC10;
  if (!qword_27CE1AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC10);
  }

  return result;
}

unint64_t sub_21CD38F6C()
{
  result = qword_27CE1AC18;
  if (!qword_27CE1AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC18);
  }

  return result;
}

unint64_t sub_21CD38FC0()
{
  result = qword_27CE1AC20;
  if (!qword_27CE1AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC20);
  }

  return result;
}

unint64_t sub_21CD39014()
{
  result = qword_27CE1AC28;
  if (!qword_27CE1AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC28);
  }

  return result;
}

unint64_t sub_21CD39068()
{
  result = qword_27CE1AC30;
  if (!qword_27CE1AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC30);
  }

  return result;
}

unint64_t sub_21CD390BC()
{
  result = qword_27CE1AC38;
  if (!qword_27CE1AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC38);
  }

  return result;
}

unint64_t sub_21CD39110()
{
  result = qword_27CE1AC40;
  if (!qword_27CE1AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC40);
  }

  return result;
}

unint64_t sub_21CD39164()
{
  result = qword_27CE1AC48;
  if (!qword_27CE1AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC48);
  }

  return result;
}

unint64_t sub_21CD391B8()
{
  result = qword_27CE1AC50;
  if (!qword_27CE1AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AC50);
  }

  return result;
}

unint64_t sub_21CD3920C()
{
  result = qword_27CE1AD08;
  if (!qword_27CE1AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD08);
  }

  return result;
}

unint64_t sub_21CD39260()
{
  result = qword_27CE1AD10;
  if (!qword_27CE1AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD10);
  }

  return result;
}

unint64_t sub_21CD392B4()
{
  result = qword_27CE1AD20;
  if (!qword_27CE1AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD20);
  }

  return result;
}

unint64_t sub_21CD3930C()
{
  result = qword_27CE1AD28;
  if (!qword_27CE1AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD28);
  }

  return result;
}

unint64_t sub_21CD39364()
{
  result = qword_27CE1AD30;
  if (!qword_27CE1AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentElement.Element.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileDocumentElement.Element.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CD3967C()
{
  result = qword_27CE1AD38;
  if (!qword_27CE1AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD38);
  }

  return result;
}

unint64_t sub_21CD396D4()
{
  result = qword_27CE1AD40;
  if (!qword_27CE1AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD40);
  }

  return result;
}

unint64_t sub_21CD3972C()
{
  result = qword_27CE1AD48;
  if (!qword_27CE1AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD48);
  }

  return result;
}

unint64_t sub_21CD39784()
{
  result = qword_27CE1AD50;
  if (!qword_27CE1AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD50);
  }

  return result;
}

unint64_t sub_21CD397DC()
{
  result = qword_27CE1AD58;
  if (!qword_27CE1AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD58);
  }

  return result;
}

unint64_t sub_21CD39834()
{
  result = qword_27CE1AD60;
  if (!qword_27CE1AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD60);
  }

  return result;
}

unint64_t sub_21CD3988C()
{
  result = qword_27CE1AD68;
  if (!qword_27CE1AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD68);
  }

  return result;
}

unint64_t sub_21CD398E4()
{
  result = qword_27CE1AD70;
  if (!qword_27CE1AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD70);
  }

  return result;
}

unint64_t sub_21CD3993C()
{
  result = qword_27CE1AD78;
  if (!qword_27CE1AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD78);
  }

  return result;
}

unint64_t sub_21CD39994()
{
  result = qword_27CE1AD80;
  if (!qword_27CE1AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD80);
  }

  return result;
}

unint64_t sub_21CD399EC()
{
  result = qword_27CE1AD88;
  if (!qword_27CE1AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD88);
  }

  return result;
}

unint64_t sub_21CD39A44()
{
  result = qword_27CE1AD90;
  if (!qword_27CE1AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD90);
  }

  return result;
}

unint64_t sub_21CD39A9C()
{
  result = qword_27CE1AD98;
  if (!qword_27CE1AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AD98);
  }

  return result;
}

unint64_t sub_21CD39AF4()
{
  result = qword_27CE1ADA0;
  if (!qword_27CE1ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADA0);
  }

  return result;
}

unint64_t sub_21CD39B4C()
{
  result = qword_27CE1ADA8;
  if (!qword_27CE1ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADA8);
  }

  return result;
}

unint64_t sub_21CD39BA4()
{
  result = qword_27CE1ADB0;
  if (!qword_27CE1ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADB0);
  }

  return result;
}

unint64_t sub_21CD39BFC()
{
  result = qword_27CE1ADB8;
  if (!qword_27CE1ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADB8);
  }

  return result;
}

unint64_t sub_21CD39C54()
{
  result = qword_27CE1ADC0;
  if (!qword_27CE1ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADC0);
  }

  return result;
}

unint64_t sub_21CD39CAC()
{
  result = qword_27CE1ADC8;
  if (!qword_27CE1ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADC8);
  }

  return result;
}

unint64_t sub_21CD39D04()
{
  result = qword_27CE1ADD0;
  if (!qword_27CE1ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADD0);
  }

  return result;
}

unint64_t sub_21CD39D5C()
{
  result = qword_27CE1ADD8;
  if (!qword_27CE1ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADD8);
  }

  return result;
}

unint64_t sub_21CD39DB4()
{
  result = qword_27CE1ADE0;
  if (!qword_27CE1ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADE0);
  }

  return result;
}

unint64_t sub_21CD39E0C()
{
  result = qword_27CE1ADE8;
  if (!qword_27CE1ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADE8);
  }

  return result;
}

unint64_t sub_21CD39E64()
{
  result = qword_27CE1ADF0;
  if (!qword_27CE1ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADF0);
  }

  return result;
}

unint64_t sub_21CD39EBC()
{
  result = qword_27CE1ADF8;
  if (!qword_27CE1ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1ADF8);
  }

  return result;
}

unint64_t sub_21CD39F14()
{
  result = qword_27CE1AE00;
  if (!qword_27CE1AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE00);
  }

  return result;
}

unint64_t sub_21CD39F6C()
{
  result = qword_27CE1AE08;
  if (!qword_27CE1AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE08);
  }

  return result;
}

unint64_t sub_21CD39FC4()
{
  result = qword_27CE1AE10;
  if (!qword_27CE1AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE10);
  }

  return result;
}

unint64_t sub_21CD3A01C()
{
  result = qword_27CE1AE18;
  if (!qword_27CE1AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE18);
  }

  return result;
}

unint64_t sub_21CD3A074()
{
  result = qword_27CE1AE20;
  if (!qword_27CE1AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE20);
  }

  return result;
}

unint64_t sub_21CD3A0CC()
{
  result = qword_27CE1AE28;
  if (!qword_27CE1AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE28);
  }

  return result;
}

unint64_t sub_21CD3A124()
{
  result = qword_27CE1AE30;
  if (!qword_27CE1AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE30);
  }

  return result;
}

unint64_t sub_21CD3A17C()
{
  result = qword_27CE1AE38;
  if (!qword_27CE1AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE38);
  }

  return result;
}

unint64_t sub_21CD3A1D4()
{
  result = qword_27CE1AE40;
  if (!qword_27CE1AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE40);
  }

  return result;
}

unint64_t sub_21CD3A22C()
{
  result = qword_27CE1AE48;
  if (!qword_27CE1AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE48);
  }

  return result;
}

unint64_t sub_21CD3A284()
{
  result = qword_27CE1AE50;
  if (!qword_27CE1AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE50);
  }

  return result;
}

unint64_t sub_21CD3A2DC()
{
  result = qword_27CE1AE58;
  if (!qword_27CE1AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE58);
  }

  return result;
}

unint64_t sub_21CD3A334()
{
  result = qword_27CE1AE60;
  if (!qword_27CE1AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE60);
  }

  return result;
}

unint64_t sub_21CD3A38C()
{
  result = qword_27CE1AE68;
  if (!qword_27CE1AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE68);
  }

  return result;
}

unint64_t sub_21CD3A3E4()
{
  result = qword_27CE1AE70;
  if (!qword_27CE1AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE70);
  }

  return result;
}

unint64_t sub_21CD3A43C()
{
  result = qword_27CE1AE78;
  if (!qword_27CE1AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE78);
  }

  return result;
}

unint64_t sub_21CD3A494()
{
  result = qword_27CE1AE80;
  if (!qword_27CE1AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE80);
  }

  return result;
}

unint64_t sub_21CD3A4EC()
{
  result = qword_27CE1AE88;
  if (!qword_27CE1AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE88);
  }

  return result;
}

unint64_t sub_21CD3A544()
{
  result = qword_27CE1AE90;
  if (!qword_27CE1AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE90);
  }

  return result;
}

unint64_t sub_21CD3A59C()
{
  result = qword_27CE1AE98;
  if (!qword_27CE1AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AE98);
  }

  return result;
}

unint64_t sub_21CD3A5F4()
{
  result = qword_27CE1AEA0;
  if (!qword_27CE1AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEA0);
  }

  return result;
}

unint64_t sub_21CD3A64C()
{
  result = qword_27CE1AEA8;
  if (!qword_27CE1AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEA8);
  }

  return result;
}

uint64_t sub_21CD3A6A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61654C7441656761 && a2 == 0xEA00000000007473 || (sub_21CD841A4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472 || (sub_21CD841A4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F6C6F43657965 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F6C6F4372696168 && a2 == 0xE900000000000072 || (sub_21CD841A4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA80 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x536E617265746576 && a2 == 0xED00007375746174 || (sub_21CD841A4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA60 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9D9E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021CD9DA40 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEE007265626D754ELL || (sub_21CD841A4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9DA00 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CD9DA20 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_21CD3AD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E69617465527369 && a2 == 0xEB00000000676E69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD3ADDC(uint64_t a1)
{
  v2 = sub_21CD3AF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3AE18(uint64_t a1)
{
  v2 = sub_21CD3AF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentElementRequestInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEB0, &qword_21CD939B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3AF8C();
  sub_21CD842B4();
  sub_21CD84144();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_21CD3AF8C()
{
  result = qword_27CE1AEB8;
  if (!qword_27CE1AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEB8);
  }

  return result;
}

uint64_t MobileDocumentElementRequestInfo.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t MobileDocumentElementRequestInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEC0, &qword_21CD939B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3AF8C();
  sub_21CD842A4();
  if (!v2)
  {
    v12 = sub_21CD840A4();
    (*(v6 + 8))(v10, v5);
    *a2 = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD3B1C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEB0, &qword_21CD939B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3AF8C();
  sub_21CD842B4();
  sub_21CD84144();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_21CD3B2FC()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t sub_21CD3B370()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD84284();
  return sub_21CD84294();
}

unint64_t sub_21CD3B3B8()
{
  result = qword_27CE1AEC8;
  if (!qword_27CE1AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentElementRequestInfo(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_21CD3B4D0()
{
  result = qword_27CE1AED0;
  if (!qword_27CE1AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AED0);
  }

  return result;
}

unint64_t sub_21CD3B528()
{
  result = qword_27CE1AED8;
  if (!qword_27CE1AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AED8);
  }

  return result;
}

unint64_t sub_21CD3B580()
{
  result = qword_27CE1AEE0;
  if (!qword_27CE1AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEE0);
  }

  return result;
}

uint64_t MobileDocumentIssuer.jurisdictionCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MobileDocumentIssuer.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CD841A4();
  }
}

uint64_t sub_21CD3B658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000021CDA0D70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CD3B6EC(uint64_t a1)
{
  v2 = sub_21CD3B8A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3B728(uint64_t a1)
{
  v2 = sub_21CD3B8A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentIssuer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEE8, &qword_21CD93BE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3B8A0();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_21CD3B8A0()
{
  result = qword_27CE1AEF0;
  if (!qword_27CE1AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AEF0);
  }

  return result;
}

uint64_t MobileDocumentIssuer.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21CD83B74();
}

uint64_t MobileDocumentIssuer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentIssuer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEF8, &qword_21CD93BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3B8A0();
  sub_21CD842A4();
  if (!v2)
  {
    v12 = sub_21CD84094();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD3BAD4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AEE8, &qword_21CD93BE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3B8A0();
  sub_21CD842B4();
  sub_21CD84134();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_21CD3BC14()
{
  result = qword_27CE1AF00;
  if (!qword_27CE1AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF00);
  }

  return result;
}

unint64_t sub_21CD3BC8C()
{
  result = qword_27CE1AF08;
  if (!qword_27CE1AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF08);
  }

  return result;
}

unint64_t sub_21CD3BCE4()
{
  result = qword_27CE1AF10;
  if (!qword_27CE1AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF10);
  }

  return result;
}

unint64_t sub_21CD3BD3C()
{
  result = qword_27CE1AF18;
  if (!qword_27CE1AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF18);
  }

  return result;
}

uint64_t MobileDocumentReaderConfiguration.merchantServerAccessToken.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

CoreIDV::MobileDocumentReaderConfiguration __swiftcall MobileDocumentReaderConfiguration.init(merchantServerAccessToken:userAcceptedTermsAndConditions:)(CoreIDV::MobileDocumentReaderConfiguration merchantServerAccessToken, Swift::Bool userAcceptedTermsAndConditions)
{
  *v2 = merchantServerAccessToken.merchantServerAccessToken;
  *(v2 + 16) = userAcceptedTermsAndConditions;
  merchantServerAccessToken.userAcceptedTermsAndConditions = userAcceptedTermsAndConditions;
  return merchantServerAccessToken;
}

unint64_t sub_21CD3BDD8()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_21CD3BE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000021CDA0D90 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021CDA0DB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();

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

uint64_t sub_21CD3BEF8(uint64_t a1)
{
  v2 = sub_21CD3C5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3BF34(uint64_t a1)
{
  v2 = sub_21CD3C5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AF20, &qword_21CD93E00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3C5B4();
  sub_21CD842B4();
  v17 = 0;
  v12 = v14[1];
  sub_21CD840F4();
  if (!v12)
  {
    v16 = 1;
    sub_21CD84144();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderConfiguration.hash(into:)()
{
  v1 = *(v0 + 16);
  if (v0[1])
  {
    v2 = *v0;
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD84284();
}

uint64_t MobileDocumentReaderConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21CD84264();
  sub_21CD84284();
  if (v2)
  {
    sub_21CD83B74();
  }

  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AF30, &qword_21CD93E08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3C5B4();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  v12 = sub_21CD84054();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  v16 = sub_21CD840A4();
  (*(v6 + 8))(v10, v5);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD3C3E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21CD84264();
  sub_21CD84284();
  if (v2)
  {
    sub_21CD83B74();
  }

  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t sub_21CD3C460()
{
  v1 = *(v0 + 16);
  if (v0[1])
  {
    v2 = *v0;
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD84284();
}

uint64_t sub_21CD3C4C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_21CD84264();
  sub_21CD84284();
  if (v2)
  {
    sub_21CD83B74();
  }

  sub_21CD84284();
  return sub_21CD84294();
}

uint64_t _s7CoreIDV33MobileDocumentReaderConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_21CD841A4() & 1) != 0)
      {
        return v4 ^ v6 ^ 1u;
      }
    }
  }

  else if (!v5)
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

unint64_t sub_21CD3C5B4()
{
  result = qword_27CE1AF28;
  if (!qword_27CE1AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF28);
  }

  return result;
}

unint64_t sub_21CD3C60C()
{
  result = qword_27CE1AF38;
  if (!qword_27CE1AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF38);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21CD3C674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21CD3C6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21CD3C748()
{
  result = qword_27CE1AF40;
  if (!qword_27CE1AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF40);
  }

  return result;
}

unint64_t sub_21CD3C7A0()
{
  result = qword_27CE1AF48;
  if (!qword_27CE1AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF48);
  }

  return result;
}

unint64_t sub_21CD3C7F8()
{
  result = qword_27CE1AF50;
  if (!qword_27CE1AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF50);
  }

  return result;
}

uint64_t MobileDocumentReaderConfigurationResponse.sessionIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderConfigurationResponse.sessionExpirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse() + 20);
  v4 = sub_21CD83744();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MobileDocumentReaderConfigurationResponse()
{
  result = qword_27CE1AF78;
  if (!qword_27CE1AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentReaderConfigurationResponse.init(sessionIdentifier:sessionExpirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse() + 20);
  v7 = sub_21CD83744();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static MobileDocumentReaderConfigurationResponse.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse() + 20);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

unint64_t sub_21CD3CA44()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_21CD3CA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021CDA0110 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021CDA0DD0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();

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

uint64_t sub_21CD3CB64(uint64_t a1)
{
  v2 = sub_21CD3CD94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3CBA0(uint64_t a1)
{
  v2 = sub_21CD3CD94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderConfigurationResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AF58, &qword_21CD94040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3CD94();
  sub_21CD842B4();
  v12 = *v3;
  v13 = v3[1];
  v16[15] = 0;
  sub_21CD84134();
  if (!v2)
  {
    v14 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse() + 20);
    v16[14] = 1;
    sub_21CD83744();
    sub_21CD3D558(&qword_27CE1A1C8, MEMORY[0x277CC9578]);
    sub_21CD84164();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_21CD3CD94()
{
  result = qword_27CE1AF60;
  if (!qword_27CE1AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF60);
  }

  return result;
}

uint64_t MobileDocumentReaderConfigurationResponse.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD83B74();
  v3 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse() + 20);
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578]);
  return sub_21CD83A64();
}

uint64_t MobileDocumentReaderConfigurationResponse.hashValue.getter()
{
  sub_21CD84264();
  v1 = *v0;
  v2 = v0[1];
  sub_21CD83B74();
  v3 = *(type metadata accessor for MobileDocumentReaderConfigurationResponse() + 20);
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderConfigurationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_21CD83744();
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v26, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AF68, &qword_21CD94048);
  v25 = *(v27 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v27, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for MobileDocumentReaderConfigurationResponse();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3CD94();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v12;
  v19 = v25;
  v18 = v26;
  v29 = 0;
  *v16 = sub_21CD84094();
  v16[1] = v20;
  v28 = 1;
  sub_21CD3D558(&qword_27CE1A1E8, MEMORY[0x277CC9578]);
  sub_21CD840C4();
  (*(v19 + 8))(v11, v27);
  (*(v23 + 32))(v16 + *(v22 + 20), v7, v18);
  sub_21CD3D450(v16, v24);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD3D4B4(v16);
}

uint64_t sub_21CD3D278(uint64_t a1)
{
  sub_21CD84264();
  v3 = *v1;
  v4 = v1[1];
  sub_21CD83B74();
  v5 = *(a1 + 20);
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t sub_21CD3D320(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_21CD83B74();
  v6 = *(a2 + 20);
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578]);
  return sub_21CD83A64();
}

uint64_t sub_21CD3D3AC(uint64_t a1, uint64_t a2)
{
  sub_21CD84264();
  v4 = *v2;
  v5 = v2[1];
  sub_21CD83B74();
  v6 = *(a2 + 20);
  sub_21CD83744();
  sub_21CD3D558(&qword_27CE19360, MEMORY[0x277CC9578]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t sub_21CD3D450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderConfigurationResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD3D4B4(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderConfigurationResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CD3D558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CD3D5A0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_21CD3D64C()
{
  result = sub_21CD83744();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21CD3D6DC()
{
  result = qword_27CE1AF88;
  if (!qword_27CE1AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF88);
  }

  return result;
}

unint64_t sub_21CD3D734()
{
  result = qword_27CE1AF90;
  if (!qword_27CE1AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF90);
  }

  return result;
}

unint64_t sub_21CD3D78C()
{
  result = qword_27CE1AF98;
  if (!qword_27CE1AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AF98);
  }

  return result;
}

uint64_t static MobileDocumentReaderDeviceEngagementType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_21CD1A0A8(*a2, *(a2 + 8));
      sub_21CD1A0A8(v2, v3);
      v6 = sub_21CD23300(v2, v3, v4, v5);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v5 >> 60 != 15)
  {
LABEL_5:
    sub_21CD1A0A8(*a2, *(a2 + 8));
    sub_21CD1A0A8(v2, v3);
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:
  sub_21CD1A0AC(v2, v3);
  sub_21CD1A0AC(v4, v5);
  return v6 & 1;
}

uint64_t sub_21CD3D8AC()
{
  if (*v0)
  {
    result = 29297;
  }

  else
  {
    result = 6514286;
  }

  *v0;
  return result;
}

uint64_t sub_21CD3D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6514286 && a2 == 0xE300000000000000;
  if (v5 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 29297 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD3D9A8(uint64_t a1)
{
  v2 = sub_21CD3E6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3D9E4(uint64_t a1)
{
  v2 = sub_21CD3E6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3DA20(uint64_t a1)
{
  v2 = sub_21CD3E7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3DA5C(uint64_t a1)
{
  v2 = sub_21CD3E7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD3DAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD3DB38(uint64_t a1)
{
  v2 = sub_21CD3E750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3DB74(uint64_t a1)
{
  v2 = sub_21CD3E750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderDeviceEngagementType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFA0, &qword_21CD94270);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v26 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFA8, &qword_21CD94278);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFB0, &qword_21CD94280);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23 - v16;
  v18 = v1[1];
  v23 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3E6FC();
  sub_21CD842B4();
  if (v18 >> 60 == 15)
  {
    LOBYTE(v29) = 0;
    sub_21CD3E7A4();
    sub_21CD840E4();
    (*(v24 + 8))(v11, v25);
  }

  else
  {
    LOBYTE(v29) = 1;
    sub_21CD3E750();
    v21 = v26;
    sub_21CD840E4();
    v29 = v23;
    v30 = v18;
    sub_21CCFFDB0();
    v22 = v28;
    sub_21CD84164();
    (*(v27 + 8))(v21, v22);
  }

  return (*(v13 + 8))(v17, v12);
}

uint64_t MobileDocumentReaderDeviceEngagementType.hash(into:)()
{
  if (v0[1] >> 60 == 15)
  {
    return MEMORY[0x21CF17CC0](0);
  }

  v2 = *v0;
  MEMORY[0x21CF17CC0](1);

  return sub_21CD83704();
}

uint64_t MobileDocumentReaderDeviceEngagementType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x21CF17CC0](0);
  }

  else
  {
    MEMORY[0x21CF17CC0](1);
    sub_21CD83704();
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderDeviceEngagementType.init(from:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFD0, &qword_21CD94288);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFD8, &qword_21CD94290);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1AFE0, &unk_21CD94298);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v40 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v20);
  sub_21CD3E6FC();
  v22 = v45;
  sub_21CD842A4();
  if (!v22)
  {
    v45 = v15;
    v24 = v43;
    v23 = v44;
    v25 = sub_21CD840D4();
    v26 = (2 * *(v25 + 16)) | 1;
    v47 = v25;
    v48 = v25 + 32;
    v49 = 0;
    v50 = v26;
    v27 = sub_21CCD18DC();
    if (v27 == 2 || v49 != v50 >> 1)
    {
      v31 = sub_21CD83FA4();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
      *v33 = &type metadata for MobileDocumentReaderDeviceEngagementType;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v45 + 8))(v19, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        LOBYTE(v46) = 1;
        sub_21CD3E750();
        v28 = v19;
        v29 = v8;
        sub_21CD84034();
        v30 = v45;
        sub_21CCFFE7C();
        v37 = v29;
        v38 = v41;
        sub_21CD840C4();
        (*(v42 + 8))(v37, v38);
        (*(v30 + 8))(v28, v14);
        swift_unknownObjectRelease();
        v39 = v46;
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_21CD3E7A4();
        sub_21CD84034();
        v36 = v45;
        (*(v24 + 8))(v13, v9);
        (*(v36 + 8))(v19, v14);
        swift_unknownObjectRelease();
        v39 = xmmword_21CD94260;
      }

      *v23 = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v51);
}

uint64_t sub_21CD3E4C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x21CF17CC0](0);
  }

  else
  {
    MEMORY[0x21CF17CC0](1);
    sub_21CD83704();
  }

  return sub_21CD84294();
}

uint64_t sub_21CD3E53C()
{
  if (v0[1] >> 60 == 15)
  {
    return MEMORY[0x21CF17CC0](0);
  }

  v2 = *v0;
  MEMORY[0x21CF17CC0](1);

  return sub_21CD83704();
}

uint64_t sub_21CD3E5BC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD84264();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x21CF17CC0](0);
  }

  else
  {
    MEMORY[0x21CF17CC0](1);
    sub_21CD83704();
  }

  return sub_21CD84294();
}

uint64_t sub_21CD3E630(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_21CD1A0A8(*a2, *(a2 + 8));
      sub_21CD1A0A8(v2, v3);
      v6 = sub_21CD23300(v2, v3, v4, v5);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v5 >> 60 != 15)
  {
LABEL_5:
    sub_21CD1A0A8(*a2, *(a2 + 8));
    sub_21CD1A0A8(v2, v3);
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:
  sub_21CD1A0AC(v2, v3);
  sub_21CD1A0AC(v4, v5);
  return v6 & 1;
}

unint64_t sub_21CD3E6FC()
{
  result = qword_27CE1AFB8;
  if (!qword_27CE1AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFB8);
  }

  return result;
}

unint64_t sub_21CD3E750()
{
  result = qword_27CE1AFC0;
  if (!qword_27CE1AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFC0);
  }

  return result;
}

unint64_t sub_21CD3E7A4()
{
  result = qword_27CE1AFC8;
  if (!qword_27CE1AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFC8);
  }

  return result;
}

unint64_t sub_21CD3E7FC()
{
  result = qword_27CE1AFE8;
  if (!qword_27CE1AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7CoreIDV40MobileDocumentReaderDeviceEngagementTypeO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CD3E878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CD3E8CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_21CD3E91C(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

unint64_t sub_21CD3E990()
{
  result = qword_27CE1AFF0;
  if (!qword_27CE1AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFF0);
  }

  return result;
}

unint64_t sub_21CD3E9E8()
{
  result = qword_27CE1AFF8;
  if (!qword_27CE1AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AFF8);
  }

  return result;
}

unint64_t sub_21CD3EA40()
{
  result = qword_27CE1B000;
  if (!qword_27CE1B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B000);
  }

  return result;
}

unint64_t sub_21CD3EA98()
{
  result = qword_27CE1B008;
  if (!qword_27CE1B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B008);
  }

  return result;
}

unint64_t sub_21CD3EAF0()
{
  result = qword_27CE1B010;
  if (!qword_27CE1B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B010);
  }

  return result;
}

unint64_t sub_21CD3EB48()
{
  result = qword_27CE1B018;
  if (!qword_27CE1B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B018);
  }

  return result;
}

unint64_t sub_21CD3EBA0()
{
  result = qword_27CE1B020;
  if (!qword_27CE1B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B020);
  }

  return result;
}

unint64_t sub_21CD3EBF8()
{
  result = qword_27CE1B028;
  if (!qword_27CE1B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B028);
  }

  return result;
}

uint64_t sub_21CD3EC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentRequest.elements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentRequest() + 20));
}

uint64_t type metadata accessor for MobileDocumentRequest()
{
  result = qword_27CE1B098;
  if (!qword_27CE1B098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentRequest.elements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileDocumentRequest() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileDocumentRequest.init(documentType:elements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21CD3EE50(a1, a3);
  result = type metadata accessor for MobileDocumentRequest();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_21CD3EE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD3EEB8()
{
  if (*v0)
  {
    result = 0x73746E656D656C65;
  }

  else
  {
    result = 0x746E656D75636F64;
  }

  *v0;
  return result;
}

uint64_t sub_21CD3EEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD3EFDC(uint64_t a1)
{
  v2 = sub_21CD3FF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD3F018(uint64_t a1)
{
  v2 = sub_21CD3FF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B030, &qword_21CD94720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3FF60();
  sub_21CD842B4();
  v15 = 0;
  type metadata accessor for MobileDocumentType(0);
  sub_21CD401DC(&qword_27CE1B040, type metadata accessor for MobileDocumentType);
  sub_21CD84164();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for MobileDocumentRequest() + 20));
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B048, &qword_21CD94728);
    sub_21CD4005C(&qword_27CE1B050, sub_21CD3FFB4, sub_21CD40008);
    sub_21CD84164();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentType.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCF148C(v2, v14, type metadata accessor for MobileDocumentType.Identifier);
  v15 = (*(v5 + 48))(v14, 2, v4);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    MEMORY[0x21CF17CC0](v16);
  }

  else
  {
    (*(v5 + 32))(v9, v14, v4);
    MEMORY[0x21CF17CC0](1);
    sub_21CD401DC(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  v17 = type metadata accessor for MobileDocumentRequest();
  return sub_21CCD5008(a1, *(v2 + *(v17 + 20)));
}

uint64_t MobileDocumentRequest.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21CD84264();
  sub_21CCF148C(v1, v12, type metadata accessor for MobileDocumentType.Identifier);
  v13 = (*(v3 + 48))(v12, 2, v2);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    MEMORY[0x21CF17CC0](v14);
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD401DC(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  v15 = type metadata accessor for MobileDocumentRequest();
  sub_21CCD5008(v18, *(v1 + *(v15 + 20)));
  return sub_21CD84294();
}

uint64_t MobileDocumentRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for MobileDocumentType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B068, &qword_21CD94730);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for MobileDocumentRequest();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD3FF60();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v25;
  v20 = v17;
  v30 = 0;
  sub_21CD401DC(&qword_27CE1B070, type metadata accessor for MobileDocumentType);
  v21 = v26;
  sub_21CD840C4();
  sub_21CD3EE50(v27, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B048, &qword_21CD94728);
  v29 = 1;
  sub_21CD4005C(&qword_27CE1B078, sub_21CD400EC, sub_21CD40140);
  sub_21CD840C4();
  (*(v19 + 8))(v12, v21);
  *(v20 + *(v13 + 20)) = v28;
  sub_21CCF148C(v20, v24, type metadata accessor for MobileDocumentRequest);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD4044C(v20, type metadata accessor for MobileDocumentRequest);
}

uint64_t sub_21CD3FA28(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CD837F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for MobileDocumentType.Identifier(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21CD84264();
  sub_21CCF148C(v4, v15, type metadata accessor for MobileDocumentType.Identifier);
  v16 = (*(v6 + 48))(v15, 2, v5);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    MEMORY[0x21CF17CC0](v17);
  }

  else
  {
    (*(v6 + 32))(v10, v15, v5);
    MEMORY[0x21CF17CC0](1);
    sub_21CD401DC(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v6 + 8))(v10, v5);
  }

  sub_21CCD5008(v20, *(v4 + *(a2 + 20)));
  return sub_21CD84294();
}

uint64_t _s7CoreIDV21MobileDocumentRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentType.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v29 - v19;
  v21 = *(v18 + 56);
  sub_21CCF148C(a1, &v29 - v19, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CCF148C(a2, &v20[v21], type metadata accessor for MobileDocumentType.Identifier);
  v22 = *(v5 + 48);
  v23 = v22(v20, 2, v4);
  if (v23)
  {
    if (v23 == 1)
    {
      if (v22(&v20[v21], 2, v4) == 1)
      {
        goto LABEL_10;
      }
    }

    else if (v22(&v20[v21], 2, v4) == 2)
    {
LABEL_10:
      sub_21CD4044C(v20, type metadata accessor for MobileDocumentType.Identifier);
      v27 = type metadata accessor for MobileDocumentRequest();
      v24 = sub_21CCFBBFC(*(a1 + *(v27 + 20)), *(a2 + *(v27 + 20)));
      return v24 & 1;
    }
  }

  else
  {
    sub_21CCF148C(v20, v14, type metadata accessor for MobileDocumentType.Identifier);
    if (!v22(&v20[v21], 2, v4))
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      v25 = MEMORY[0x21CF17230](v14, v9);
      v26 = *(v5 + 8);
      v26(v9, v4);
      v26(v14, v4);
      if ((v25 & 1) == 0)
      {
        sub_21CD4044C(v20, type metadata accessor for MobileDocumentType.Identifier);
        v24 = 0;
        return v24 & 1;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v14, v4);
  }

  sub_21CCAC1DC(v20);
  v24 = 0;
  return v24 & 1;
}

unint64_t sub_21CD3FF60()
{
  result = qword_27CE1B038;
  if (!qword_27CE1B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B038);
  }

  return result;
}

unint64_t sub_21CD3FFB4()
{
  result = qword_27CE1B058;
  if (!qword_27CE1B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B058);
  }

  return result;
}

unint64_t sub_21CD40008()
{
  result = qword_27CE1B060;
  if (!qword_27CE1B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B060);
  }

  return result;
}

uint64_t sub_21CD4005C(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B048, &qword_21CD94728);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD400EC()
{
  result = qword_27CE1B080;
  if (!qword_27CE1B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B080);
  }

  return result;
}

unint64_t sub_21CD40140()
{
  result = qword_27CE1B088;
  if (!qword_27CE1B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B088);
  }

  return result;
}

uint64_t sub_21CD401DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21CD4024C()
{
  type metadata accessor for MobileDocumentType(319);
  if (v0 <= 0x3F)
  {
    sub_21CD402D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CD402D0()
{
  if (!qword_27CE1B0A8)
  {
    sub_21CCF13F0();
    v0 = sub_21CD83A44();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE1B0A8);
    }
  }
}

unint64_t sub_21CD40348()
{
  result = qword_27CE1B0B0;
  if (!qword_27CE1B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0B0);
  }

  return result;
}

unint64_t sub_21CD403A0()
{
  result = qword_27CE1B0B8;
  if (!qword_27CE1B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0B8);
  }

  return result;
}

unint64_t sub_21CD403F8()
{
  result = qword_27CE1B0C0;
  if (!qword_27CE1B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0C0);
  }

  return result;
}

uint64_t sub_21CD4044C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MobileDocumentReaderMerchant.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderMerchant.logoData.getter()
{
  v1 = *(v0 + 16);
  sub_21CC96064(v1, *(v0 + 24));
  return v1;
}

uint64_t MobileDocumentReaderMerchant.identifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MobileDocumentReaderMerchant.init(name:logoData:identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_21CD40554()
{
  v1 = 0x617461446F676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21CD405AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD4122C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD405D4(uint64_t a1)
{
  v2 = sub_21CD40FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD40610(uint64_t a1)
{
  v2 = sub_21CD40FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderMerchant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B0C8, &qword_21CD94940);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v17 = v1[3];
  v18 = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD40FB0();
  sub_21CD842B4();
  LOBYTE(v20) = 0;
  v14 = v19;
  sub_21CD84134();
  if (!v14)
  {
    v20 = v18;
    v21 = v17;
    v22 = 1;
    sub_21CC96064(v18, v17);
    sub_21CCFFDB0();
    sub_21CD84124();
    sub_21CC95F8C(v20, v21);
    LOBYTE(v20) = 2;
    sub_21CD840F4();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderMerchant.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD83B74();
  if (v4 >> 60 != 15)
  {
    sub_21CD84284();
    sub_21CD83704();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  if (!v6)
  {
    return sub_21CD84284();
  }

LABEL_3:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderMerchant.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD84264();
  sub_21CD83B74();
  if (v4 >> 60 != 15)
  {
    sub_21CD84284();
    sub_21CD83704();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderMerchant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B0D8, &qword_21CD94948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD40FB0();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v25) = 0;
  v12 = sub_21CD84094();
  v24 = v13;
  v27 = 1;
  sub_21CCFFE7C();
  sub_21CD84084();
  v22 = v25;
  v23 = v26;
  LOBYTE(v25) = 2;
  v14 = sub_21CD84054();
  v15 = *(v6 + 8);
  v21 = v16;
  v15(v10, v5);
  v18 = v23;
  v17 = v24;
  *a2 = v12;
  a2[1] = v17;
  v19 = v22;
  a2[2] = v22;
  a2[3] = v18;
  a2[4] = v14;
  a2[5] = v21;

  sub_21CC96064(v19, v18);

  __swift_destroy_boxed_opaque_existential_0(a1);

  sub_21CC95F8C(v19, v18);
}

uint64_t sub_21CD40C90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD83B74();
  if (v4 >> 60 != 15)
  {
    sub_21CD84284();
    sub_21CD83704();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  if (!v6)
  {
    return sub_21CD84284();
  }

LABEL_3:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t sub_21CD40D54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD84264();
  sub_21CD83B74();
  if (v4 >> 60 != 15)
  {
    sub_21CD84284();
    sub_21CD83704();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

BOOL _s7CoreIDV28MobileDocumentReaderMerchantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_21CC96064(v2, v4);
      sub_21CC96064(v7, v6);
      sub_21CC95F8C(v2, v4);
      goto LABEL_11;
    }

LABEL_8:
    sub_21CC96064(v2, v4);
    sub_21CC96064(v7, v6);
    sub_21CC95F8C(v2, v4);
    sub_21CC95F8C(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_21CC96064(v2, v4);
  sub_21CC96064(v7, v6);
  v11 = sub_21CD23300(v2, v4, v7, v6);
  sub_21CC95F8C(v7, v6);
  sub_21CC95F8C(v2, v4);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v5)
  {
    return v8 && (v3 == v9 && v5 == v8 || (sub_21CD841A4() & 1) != 0);
  }

  return !v8;
}

unint64_t sub_21CD40FB0()
{
  result = qword_27CE1B0D0;
  if (!qword_27CE1B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0D0);
  }

  return result;
}

unint64_t sub_21CD41008()
{
  result = qword_27CE1B0E0;
  if (!qword_27CE1B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0E0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21CD41070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21CD410B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CD41128()
{
  result = qword_27CE1B0E8;
  if (!qword_27CE1B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0E8);
  }

  return result;
}

unint64_t sub_21CD41180()
{
  result = qword_27CE1B0F0;
  if (!qword_27CE1B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0F0);
  }

  return result;
}

unint64_t sub_21CD411D8()
{
  result = qword_27CE1B0F8;
  if (!qword_27CE1B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B0F8);
  }

  return result;
}

uint64_t sub_21CD4122C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446F676F6CLL && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MobileDocumentReaderRequest.sessionIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderRequest.documentRequestType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_21CD19BA8(v2, v3, v4);
}

__n128 MobileDocumentReaderRequest.init(sessionIdentifier:documentRequestType:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

unint64_t sub_21CD413AC()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_21CD413E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021CDA0110 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021CDA0DF0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();

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