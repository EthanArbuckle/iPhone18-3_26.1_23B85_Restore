uint64_t sub_2150497A8()
{

  v1 = *(v0 + 544);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA444C8);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "offline audio transcription failed: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_215049980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214F557A8;

  return sub_215046C38(a1, v4, v5, v7, v6);
}

uint64_t sub_215049A40()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_2150A4A90();
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(qword_27CA444E0 + OBJC_IVAR___ICTranscription__currentlyTranscribingAttachment);
  v3 = qword_27CA444E0;

  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  [v0 postNotificationName:v1 object:v4 userInfo:0];
  v5 = *(qword_27CA444E0 + OBJC_IVAR___ICTranscription__currentlyTranscribingAttachment);

  os_unfair_lock_lock((v5 + 24));

  *(v5 + 16) = [objc_allocWithZone(MEMORY[0x277CBE448]) init];
  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_215049BCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_214F557A8;

  return sub_215048210(v2, v3, v4, v5, v6);
}

uint64_t sub_215049C88()
{
  v2 = *(sub_2150A3750() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + v4);
  v14 = *(v0 + v5);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v6 + 8);
  v13 = *(v0 + v6);
  v10 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_214F53FB0;

  return sub_2150472CC(v7, v8, v0 + v3, v16, v14, v13, v9, v10);
}

void sub_215049E0C(uint64_t a1)
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CA444E0;
  v3 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  v4 = *(v2 + v3);

  os_unfair_lock_lock((v4 + 20));
  *(v4 + 16) = 1;
  os_unfair_lock_unlock((v4 + 20));

  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_2150A4A90();
  [v5 postNotificationName:v6 object:a1 userInfo:0];
}

void sub_215049F3C(uint64_t a1)
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CA444E0;
  v3 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  v4 = *(v2 + v3);

  os_unfair_lock_lock((v4 + 20));
  *(v4 + 16) = 0;
  os_unfair_lock_unlock((v4 + 20));

  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_2150A4A90();
  [v5 postNotificationName:v6 object:a1 userInfo:0];
}

void sub_21504A068(uint64_t a1)
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  v2 = swift_beginAccess();
  v3 = *(qword_27CA444E0 + OBJC_IVAR___ICTranscription__currentlyTranscribingAttachment);
  MEMORY[0x28223BE20](v2);

  os_unfair_lock_lock((v3 + 24));
  sub_21504A208((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v4 = [objc_opt_self() defaultCenter];
  v5 = sub_2150A4A90();
  [v4 postNotificationName:v5 object:a1 userInfo:0];
}

uint64_t sub_21504A1BC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21504A208(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t objectdestroy_36Tm()
{

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_21504A2F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_214D55670(0, &qword_27CA41F40);
    **(*(v4 + 64) + 40) = sub_2150A4ED0();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_21504A3E8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2150A5970();
    v5 = v4;
    v6 = sub_2150A5A30();
    v8 = v7;
    v9 = MEMORY[0x216062560](v3, v5, v6, v7);
    sub_214D5A7C8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_214D5A7C8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2150A5940();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_214FB4088(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_214D5A7C8(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_21504A504(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2150A4D10();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21504A54C()
{
  v0 = sub_2150A33E0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-v5];
  sub_2150A3340();
  sub_21504EB68(&qword_27CA43EB8, MEMORY[0x277CC8B30]);
  sub_2150A53D0();
  sub_2150A5400();
  sub_21504EB68(&qword_27CA43EC0, MEMORY[0x277CC8C20]);
  v7 = sub_2150A4A80();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v9 = 0;
  if ((v7 & 1) == 0)
  {
    v10 = sub_2150A5470();
    v9 = *v11;

    v10(v13, 0);
  }

  v8(v6, v0);
  return v9;
}

uint64_t sub_21504A760()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA44528);
  v1 = __swift_project_value_buffer(v0, qword_27CA44528);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static CallRecordingSplitter.cloneCallRecordingAttachmentAndPerformOffline(_:NGASR:context:attachmentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a1;
  v6 = sub_2150A3750();
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v4[21] = *(v7 + 64);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44540);
  v8 = swift_task_alloc();
  v4[23] = v8;
  v9 = swift_task_alloc();
  v4[24] = v9;
  *v9 = v4;
  v9[1] = sub_21504A974;

  return static CallRecordingSplitter.splitTracks(_:)(v8, a1);
}

uint64_t sub_21504A974()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_21504AFE8;
  }

  else
  {
    v2 = sub_21504AA88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21504AA88()
{
  v1 = v0[23];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44548);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_214F302D4(v1, &qword_27CA44540);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[22];
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[17];
    v17 = v0[18];
    v9 = v0[16];
    v10 = *(v2 + 48);
    v11 = *(v7 + 8);
    v11(v1, v6);
    v11(v1 + v10, v6);
    (*(v7 + 16))(v5, v9, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    v0[26] = v13;
    *(v13 + 16) = v8;
    *(v13 + 24) = v17;
    (*(v7 + 32))(v13 + v12, v5, v6);
    v14 = v8;
    v15 = v17;
    v16 = v14;

    return MEMORY[0x2822009F8](sub_21504ACA0, 0, 0);
  }
}

uint64_t sub_21504ACA0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[26];
  v6 = v0[17];
  v1[2] = v2;
  v1[3] = sub_21504AE0C;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  v8[2] = sub_21504DA3C;
  v8[3] = v5;
  v8[4] = v7;
  v1[14] = sub_215009A2C;
  v1[15] = v8;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_214F44018;
  v1[13] = &block_descriptor_20;
  v9 = _Block_copy(v4);

  [v6 performBlock_];
  _Block_release(v9);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21504AE0C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_21504AF78, 0, 0);
  }

  else
  {
    v4 = *(v1 + 136);

    v5 = *(v2 + 8);

    return v5();
  }
}

void sub_21504AF78()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  swift_willThrow();
}

uint64_t sub_21504AFE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static CallRecordingSplitter.splitTracks(_:)(uint64_t a1, uint64_t a2)
{
  v3[54] = a2;
  v3[55] = v2;
  v3[53] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v4 = sub_2150A3A00();
  v3[58] = v4;
  v3[59] = *(v4 - 8);
  v3[60] = swift_task_alloc();
  v5 = sub_2150A3750();
  v3[61] = v5;
  v3[62] = *(v5 - 8);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21504B200, 0, 0);
}

uint64_t sub_21504B200()
{
  v31 = v0;
  v1 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v2 = sub_2150A36B0();
  v3 = [v1 initWithURL:v2 options:0];
  v0[70] = v3;

  if (qword_27CA417A8 != -1)
  {
    swift_once();
  }

  v4 = v0[69];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[54];
  v8 = sub_2150A3F30();
  v0[71] = __swift_project_value_buffer(v8, qword_27CA44528);
  v9 = *(v5 + 16);
  v0[72] = v9;
  v0[73] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v7, v6);
  v10 = sub_2150A3F10();
  v11 = sub_2150A5540();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[69];
  v15 = v0[61];
  v14 = v0[62];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v16 = 136315138;
    sub_21504EB68(&qword_280C24468, MEMORY[0x277CC9260]);
    v17 = v3;
    v18 = sub_2150A6100();
    v20 = v19;
    v28 = v11;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = v18;
    v3 = v17;
    v23 = sub_214F7723C(v22, v20, &v30);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_214D51000, v10, v28, "Attempting to split tracks at %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x216064AF0](v29, -1, -1);
    MEMORY[0x216064AF0](v16, -1, -1);
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v13, v15);
  }

  v0[74] = v21;
  v24 = *MEMORY[0x277CE5E48];
  v0[75] = *MEMORY[0x277CE5E48];
  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_21504B568;
  v25 = swift_continuation_init();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58);
  v0[76] = v26;
  v0[33] = v26;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_21504A2F8;
  v0[29] = &block_descriptor_8;
  v0[30] = v25;
  [v3 loadTracksWithMediaType:v24 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21504B568()
{
  v1 = *(*v0 + 48);
  *(*v0 + 616) = v1;
  if (v1)
  {
    v2 = sub_21504CC44;
  }

  else
  {
    v2 = sub_21504B678;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21504B678()
{
  v1 = *(v0 + 400);
  if (v1 >> 62)
  {
    v2 = sub_2150A59D0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 == 2)
  {
    v3 = *(v0 + 608);
    v4 = *(v0 + 600);
    v5 = *(v0 + 560);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 408;
    *(v0 + 88) = sub_21504B93C;
    v6 = swift_continuation_init();
    *(v0 + 328) = v3;
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_21504A2F8;
    *(v0 + 296) = &block_descriptor_11;
    *(v0 + 304) = v6;
    [v5 loadTracksWithMediaType:v4 completionHandler:v0 + 272];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v7 = sub_2150A3F10();
    v8 = sub_2150A5560();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_214D51000, v7, v8, "Invalid number of audio tracks in file. Need 2 audio tracks with ID 0 and 1", v9, 2u);
      MEMORY[0x216064AF0](v9, -1, -1);
    }

    sub_214F4810C();
    swift_allocError();
    *v10 = 14;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_21504B93C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 624) = v1;
  if (v1)
  {
    v2 = sub_21504CDEC;
  }

  else
  {
    v2 = sub_21504BA4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21504BA4C(void *a1)
{
  v2 = v1[51];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216062780](0, v1[51]);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x282200938](a1);
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  v1[79] = v4;
  v5 = v1[76];
  v6 = v1[75];
  v7 = v1[70];
  v1[18] = v1;
  v1[23] = v1 + 52;
  v1[19] = sub_21504BBA4;
  v8 = swift_continuation_init();
  v1[49] = v5;
  v1[42] = MEMORY[0x277D85DD0];
  v1[43] = 1107296256;
  v1[44] = sub_21504A2F8;
  v1[45] = &block_descriptor_14_0;
  v1[46] = v8;
  [v7 loadTracksWithMediaType:v6 completionHandler:v1 + 42];
  a1 = v1 + 18;

  return MEMORY[0x282200938](a1);
}

uint64_t sub_21504BBA4()
{
  v1 = *(*v0 + 176);
  *(*v0 + 640) = v1;
  if (v1)
  {
    v2 = sub_21504C0E4;
  }

  else
  {
    v2 = sub_21504BCB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21504BCB4()
{
  v1 = v0[52];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x216062780](1, v0[52]);
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 40);
  }

  v3 = v2;
  v0[81] = v2;
  v4 = v0[79];

  if (v4 && v3)
  {
    v5 = v0[74];
    v6 = v0[67];
    v25 = v0[79];
    v7 = v0[61];
    v8 = v0[59];
    v9 = v0[60];
    v10 = v0[58];
    v23 = v0[62];
    v11 = NSTemporaryDirectory();
    sub_2150A4AD0();

    sub_2150A3670();

    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    sub_2150A3990();
    v12 = *(v8 + 8);
    v12(v9, v10);
    MEMORY[0x2160617E0](1630825774, 0xE400000000000000);
    sub_2150A36C0();

    v0[82] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v6, v7);
    v13 = NSTemporaryDirectory();
    sub_2150A4AD0();

    sub_2150A3670();

    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    sub_2150A3990();
    v12(v9, v10);
    MEMORY[0x2160617E0](1630825774, 0xE400000000000000);
    sub_2150A36C0();

    v5(v6, v7);
    v14 = swift_task_alloc();
    v0[83] = v14;
    *v14 = v0;
    v14[1] = sub_21504C29C;
    v15 = v0[68];
    v16 = v0[57];

    sub_21504DAAC(v16, v25, v15);
  }

  else
  {
    v17 = sub_2150A3F10();
    v18 = sub_2150A5560();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_214D51000, v17, v18, "Missing tracks in file. Need 2 audio tracks with ID 0 and 1", v19, 2u);
      MEMORY[0x216064AF0](v19, -1, -1);
    }

    v24 = v0[79];
    v20 = v0[70];

    sub_214F4810C();
    swift_allocError();
    *v21 = 14;
    swift_willThrow();

    v22 = v0[1];

    v22();
  }
}

uint64_t sub_21504C0E4()
{
  v1 = v0[80];
  swift_willThrow();

  v2 = sub_2150A3F10();
  v3 = sub_2150A5560();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_214D51000, v2, v3, "Missing tracks in file. Need 2 audio tracks with ID 0 and 1", v4, 2u);
    MEMORY[0x216064AF0](v4, -1, -1);
  }

  v9 = v0[79];
  v5 = v0[70];

  sub_214F4810C();
  swift_allocError();
  *v6 = 14;
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_21504C29C()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_21504CF24;
  }

  else
  {
    v2 = sub_21504C3B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21504C3B0()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 456);
  v4 = *(v2 + 48);
  *(v0 + 680) = v4;
  *(v0 + 688) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_214F302D4(v3, &qword_27CA41D40);
    v5 = sub_2150A3F10();
    v6 = sub_2150A5560();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_214D51000, v5, v6, "did not get URL for local or remote track. Failing to create file for track", v7, 2u);
      MEMORY[0x216064AF0](v7, -1, -1);
    }

    v8 = *(v0 + 632);
    v9 = *(v0 + 592);
    v10 = *(v0 + 560);
    v11 = *(v0 + 544);
    v12 = *(v0 + 528);
    v13 = *(v0 + 488);

    v9(v12, v13);
    v9(v11, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44548);
    (*(*(v14 - 8) + 56))(*(v0 + 424), 1, 1);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 520);
    v18 = *(v2 + 32);
    *(v0 + 696) = v18;
    *(v0 + 704) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v17, v3, v1);
    v19 = swift_task_alloc();
    *(v0 + 712) = v19;
    *v19 = v0;
    v19[1] = sub_21504C6A8;
    v20 = *(v0 + 648);
    v21 = *(v0 + 528);
    v22 = *(v0 + 448);

    return sub_21504DAAC(v22, v20, v21);
  }
}

uint64_t sub_21504C6A8()
{
  *(*v1 + 720) = v0;

  if (v0)
  {
    v2 = sub_21504D188;
  }

  else
  {
    v2 = sub_21504C7BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21504C7BC()
{
  v48 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 448);
  if ((*(v0 + 680))(v2, 1, v1) == 1)
  {
    (*(v0 + 592))(*(v0 + 520), v1);
    sub_214F302D4(*(v0 + 448), &qword_27CA41D40);
    v3 = sub_2150A3F10();
    v4 = sub_2150A5560();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_214D51000, v3, v4, "did not get URL for local or remote track. Failing to create file for track", v5, 2u);
      MEMORY[0x216064AF0](v5, -1, -1);
    }

    v6 = *(v0 + 632);
    v7 = *(v0 + 592);
    v8 = *(v0 + 560);
    v9 = *(v0 + 544);
    v10 = *(v0 + 528);
    v11 = *(v0 + 488);

    v7(v10, v11);
    v7(v9, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44548);
    v13 = 1;
  }

  else
  {
    v14 = *(v0 + 576);
    v15 = *(v0 + 504);
    v16 = *(v0 + 432);
    (*(v0 + 696))(*(v0 + 512), v2, v1);
    v14(v15, v16, v1);
    v17 = sub_2150A3F10();
    v46 = sub_2150A5540();
    v18 = os_log_type_enabled(v17, v46);
    v19 = *(v0 + 632);
    v20 = *(v0 + 592);
    v21 = *(v0 + 560);
    v22 = *(v0 + 544);
    v23 = *(v0 + 528);
    v24 = *(v0 + 504);
    v25 = *(v0 + 488);
    if (v18)
    {
      v44 = *(v0 + 648);
      v45 = *(v0 + 528);
      v26 = swift_slowAlloc();
      v43 = v21;
      v27 = swift_slowAlloc();
      v47 = v27;
      *v26 = 136315138;
      sub_21504EB68(&qword_280C24468, MEMORY[0x277CC9260]);
      v41 = v19;
      v42 = v22;
      v28 = sub_2150A6100();
      v30 = v29;
      v20(v24, v25);
      v31 = sub_214F7723C(v28, v30, &v47);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_214D51000, v17, v46, "succesfully split tracks at %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x216064AF0](v27, -1, -1);
      MEMORY[0x216064AF0](v26, -1, -1);

      v20(v45, v25);
      v32 = v42;
    }

    else
    {

      v20(v24, v25);
      v20(v23, v25);
      v32 = v22;
    }

    v20(v32, v25);
    v33 = *(v0 + 696);
    v34 = *(v0 + 520);
    v35 = *(v0 + 512);
    v36 = *(v0 + 488);
    v37 = *(v0 + 424);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44548);
    v38 = *(v12 + 48);
    v33(v37, v34, v36);
    v33(v37 + v38, v35, v36);
    v13 = 0;
  }

  (*(*(v12 - 8) + 56))(*(v0 + 424), v13, 1, v12);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_21504CC44()
{
  v1 = *(v0 + 616);
  swift_willThrow();

  v2 = sub_2150A3F10();
  v3 = sub_2150A5560();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_214D51000, v2, v3, "Invalid number of audio tracks in file. Need 2 audio tracks with ID 0 and 1", v4, 2u);
    MEMORY[0x216064AF0](v4, -1, -1);
  }

  sub_214F4810C();
  swift_allocError();
  *v5 = 14;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21504CDEC()
{
  v1 = v0[78];
  swift_willThrow();

  v0[79] = 0;
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[70];
  v0[18] = v0;
  v0[23] = v0 + 52;
  v0[19] = sub_21504BBA4;
  v5 = swift_continuation_init();
  v0[49] = v2;
  v0[42] = MEMORY[0x277D85DD0];
  v0[43] = 1107296256;
  v0[44] = sub_21504A2F8;
  v0[45] = &block_descriptor_14_0;
  v0[46] = v5;
  [v4 loadTracksWithMediaType:v3 completionHandler:v0 + 42];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_21504CF24()
{
  v1 = *(v0 + 672);
  v2 = v1;
  v3 = sub_2150A3F10();
  v4 = sub_2150A5560();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_214D51000, v3, v4, "could not transcribe the call recording. Failing to export track: %@", v5, 0xCu);
    sub_214F302D4(v6, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v6, -1, -1);
    MEMORY[0x216064AF0](v5, -1, -1);
  }

  v9 = *(v0 + 632);
  v10 = *(v0 + 592);
  v11 = *(v0 + 560);
  v12 = *(v0 + 544);
  v13 = *(v0 + 528);
  v14 = *(v0 + 488);

  v10(v13, v14);
  v10(v12, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44548);
  (*(*(v15 - 8) + 56))(*(v0 + 424), 1, 1);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21504D188()
{
  (*(v0 + 592))(*(v0 + 520), *(v0 + 488));
  v1 = *(v0 + 720);
  v2 = v1;
  v3 = sub_2150A3F10();
  v4 = sub_2150A5560();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_214D51000, v3, v4, "could not transcribe the call recording. Failing to export track: %@", v5, 0xCu);
    sub_214F302D4(v6, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v6, -1, -1);
    MEMORY[0x216064AF0](v5, -1, -1);
  }

  v9 = *(v0 + 632);
  v10 = *(v0 + 592);
  v11 = *(v0 + 560);
  v12 = *(v0 + 544);
  v13 = *(v0 + 528);
  v14 = *(v0 + 488);

  v10(v13, v14);
  v10(v12, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44548);
  (*(*(v15 - 8) + 56))(*(v0 + 424), 1, 1);

  v16 = *(v0 + 8);

  return v16();
}

void sub_21504D400(void *a1, uint64_t a2)
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v3 = [a1 objectWithID_];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4 || (v5 = v4, (v6 = [v4 audioModel]) == 0))
  {

    if (qword_27CA417A8 != -1)
    {
      swift_once();
    }

    v22 = sub_2150A3F30();
    __swift_project_value_buffer(v22, qword_27CA44528);
    v3 = sub_2150A3F10();
    v23 = sub_2150A5560();
    if (os_log_type_enabled(v3, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_214D51000, v3, v23, "attachment not found for debug item / not an audio attachment", v24, 2u);
      MEMORY[0x216064AF0](v24, -1, -1);
    }

    goto LABEL_19;
  }

  v7 = v6;
  aBlock[0] = 0;
  v8 = [v6 createSubattachmentForRecordingAndReturnError_];
  if (v8)
  {
    v9 = v8;
    v10 = aBlock[0];
    v11 = sub_2150A36B0();

    v12 = [v5 subAttachments];
    if (v12)
    {
      v13 = v12;
      sub_214D55670(0, &qword_27CA44A30);
      sub_214F737A4();
      v14 = sub_2150A52E0();

      v15 = sub_21504A3E8(v14);

      v42 = v15;
      if (v15)
      {
        if (qword_27CA417A0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v16 = qword_27CA444E0;
        v17 = [v5 objectID];
        v18 = *&v16[OBJC_IVAR___ICTranscription_workerContext];
        if (v18)
        {
          v19 = v17;
          v40 = v17;
          v20 = swift_allocObject();
          v20[2] = &unk_28270E770;
          v20[3] = v19;
          aBlock[4] = sub_215046BB8;
          aBlock[5] = v20;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_214F44018;
          aBlock[3] = &block_descriptor_28_0;
          v39 = _Block_copy(aBlock);
          v21 = v18;
          v41 = v40;

          [v21 performBlock_];

          _Block_release(v39);
          v16 = v21;
        }

        else
        {
        }

        [v5 setPreviewUpdateDate_];
        [a1 ic_save];

        return;
      }
    }

    if (qword_27CA417A8 != -1)
    {
      swift_once();
    }

    v25 = sub_2150A3F30();
    __swift_project_value_buffer(v25, qword_27CA44528);
    v26 = sub_2150A3F10();
    v27 = sub_2150A5560();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_214D51000, v26, v27, "no subattachment on new call recording", v28, 2u);
      MEMORY[0x216064AF0](v28, -1, -1);
    }

LABEL_19:
    return;
  }

  v29 = aBlock[0];
  v30 = sub_2150A35D0();

  swift_willThrow();
  if (qword_27CA417A8 != -1)
  {
    swift_once();
  }

  v31 = sub_2150A3F30();
  __swift_project_value_buffer(v31, qword_27CA44528);
  v32 = v30;
  v33 = sub_2150A3F10();
  v34 = sub_2150A5560();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v30;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_214D51000, v33, v34, "could not create subattachment for call recording: %@", v35, 0xCu);
    sub_214F302D4(v36, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v36, -1, -1);
    MEMORY[0x216064AF0](v35, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21504DAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_2150A3750();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21504DBA8, 0, 0);
}

uint64_t sub_21504DBA8()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  if (qword_27CA417A8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = sub_2150A3F30();
  v0[11] = __swift_project_value_buffer(v5, qword_27CA44528);
  v6 = *(v2 + 16);
  v0[12] = v6;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2150A3F10();
  v8 = sub_2150A5540();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v13 = 136315138;
    v14 = sub_2150A3630();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_214F7723C(v14, v16, v32);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_214D51000, v7, v8, "Exporting track to file %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x216064AF0](v31, -1, -1);
    MEMORY[0x216064AF0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[14] = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277CE6548]) init];
  v0[15] = v19;
  v20 = [v19 addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:0];
  v0[16] = v20;
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F50);
    v21 = sub_2150A3B90();
    v0[17] = v21;
    v22 = swift_task_alloc();
    v0[18] = v22;
    *v22 = v0;
    v22[1] = sub_21504DFB0;

    return MEMORY[0x2821FAF00](v0 + 23, v21, 0, 0);
  }

  else
  {
    v23 = sub_2150A3F10();
    v24 = sub_2150A5560();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_214D51000, v23, v24, "Not able to add a mutable track to composition. Failing to create file for track", v25, 2u);
      MEMORY[0x216064AF0](v25, -1, -1);
    }

    v26 = v0[7];
    v27 = v0[8];
    v28 = v0[4];

    (*(v27 + 56))(v28, 1, 1, v26);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_21504DFB0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21504E990;
  }

  else
  {

    v2 = sub_21504E100;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21504E100()
{
  v50 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = 0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  *(v0 + 232) = *(v0 + 184);
  *(v0 + 248) = *(v0 + 200);
  *(v0 + 264) = *(v0 + 216);
  v3 = MEMORY[0x277CC08F0];
  v4 = *(MEMORY[0x277CC08F0] + 16);
  *(v0 + 280) = *MEMORY[0x277CC08F0];
  *(v0 + 288) = *(v3 + 8);
  *(v0 + 296) = v4;
  v5 = [v1 insertTimeRange:v0 + 232 ofTrack:v2 atTime:v0 + 280 error:v0 + 16];
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = *(v0 + 120);
    v8 = *MEMORY[0x277CE5BE0];
    v9 = objc_allocWithZone(MEMORY[0x277CE6400]);
    v10 = v6;
    v11 = [v9 initWithAsset:v7 presetName:v8];
    *(v0 + 160) = v11;
    if (v11)
    {
      v12 = [objc_opt_self() defaultManager];
      v13 = sub_2150A36B0();
      *(v0 + 24) = 0;
      v14 = [v12 removeItemAtURL:v13 error:v0 + 24];

      v15 = *(v0 + 24);
      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v37 = v15;
        v38 = sub_2150A35D0();

        swift_willThrow();
      }

      v39 = swift_task_alloc();
      *(v0 + 168) = v39;
      *v39 = v0;
      v39[1] = sub_21504E604;
      v40 = *(v0 + 48);
      v41 = *MEMORY[0x277CE5D68];

      return MEMORY[0x2821FAED0](v40, v41, 0, 0);
    }

    v21 = sub_2150A3F10();
    v22 = sub_2150A5560();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_214D51000, v21, v22, "Not able to create a AVExportSession. Failing to export track", v23, 2u);
      MEMORY[0x216064AF0](v23, -1, -1);
    }

    (*(v0 + 96))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
    v24 = sub_2150A3F10();
    v25 = sub_2150A5540();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 128);
    v28 = *(v0 + 112);
    v29 = *(v0 + 72);
    v30 = *(v0 + 56);
    if (v26)
    {
      v48 = *(v0 + 120);
      log = v24;
      v31 = swift_slowAlloc();
      v47 = v27;
      v32 = swift_slowAlloc();
      v49[0] = v32;
      *v31 = 136315138;
      v33 = sub_2150A3630();
      v35 = v34;
      v28(v29, v30);
      v36 = sub_214F7723C(v33, v35, v49);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_214D51000, log, v25, "Finished export %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x216064AF0](v32, -1, -1);
      MEMORY[0x216064AF0](v31, -1, -1);
    }

    else
    {

      v28(v29, v30);
    }

    v42 = *(v0 + 56);
    v43 = *(v0 + 64);
    v44 = *(v0 + 32);
    (*(v0 + 96))(v44, *(v0 + 48), v42);
    (*(v43 + 56))(v44, 0, 1, v42);

    v20 = *(v0 + 8);
  }

  else
  {
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = v6;
    sub_2150A35D0();

    swift_willThrow();

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_21504E604()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21504EA48;
  }

  else
  {
    v2 = sub_21504E744;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21504E744()
{
  v23 = v0;
  v22[1] = *MEMORY[0x277D85DE8];

  (*(v0 + 96))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
  v1 = sub_2150A3F10();
  v2 = sub_2150A5540();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v3)
  {
    v21 = *(v0 + 120);
    log = v1;
    v8 = swift_slowAlloc();
    v20 = v4;
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315138;
    v10 = sub_2150A3630();
    v12 = v11;
    v5(v6, v7);
    v13 = sub_214F7723C(v10, v12, v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_214D51000, log, v2, "Finished export %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x216064AF0](v9, -1, -1);
    MEMORY[0x216064AF0](v8, -1, -1);
  }

  else
  {

    v5(v6, v7);
  }

  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 32);
  (*(v0 + 96))(v16, *(v0 + 48), v14);
  (*(v15 + 56))(v16, 0, 1, v14);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21504E990()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21504EA48()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21504EB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SummarizationManager.generateTopLineTranscriptSummary(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44568);
  v3[7] = swift_task_alloc();
  v4 = sub_2150A3A00();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44570);
  v3[11] = swift_task_alloc();
  v5 = sub_2150A3F50();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_2150A3F70();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44578);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21504EE1C, 0, 0);
}

uint64_t sub_21504EE1C()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsOnDeviceSummary];

  if (v2 && (_s11NotesShared20SummarizationManagerC12canSummarize10transcriptSbSS_tFZ_0(v0[5], v0[6]) & 1) != 0)
  {
    sub_2150A4010();
    swift_allocObject();
    v0[21] = sub_2150A4000();
    if (qword_27CA417B0 != -1)
    {
      swift_once();
    }

    v3 = sub_2150A3F30();
    v0[22] = __swift_project_value_buffer(v3, qword_27CA44550);

    v4 = sub_2150A3F10();
    v5 = sub_2150A5550();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = sub_2150A4BC0();

      _os_log_impl(&dword_214D51000, v4, v5, "Generating top line summary, transcriptLength: %ld}", v6, 0xCu);
      MEMORY[0x216064AF0](v6, -1, -1);
    }

    else
    {
    }

    v10 = v0[11];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4B030], v0[12]);
    v14 = sub_2150A3F40();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_2150A3F60();
    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    v15 = sub_2150A3990();
    v17 = v16;
    v0[23] = v16;
    (*(v12 + 8))(v11, v13);
    v18 = swift_task_alloc();
    v0[24] = v18;
    *v18 = v0;
    v18[1] = sub_21504F198;
    v19 = v0[20];
    v20 = v0[17];
    v21 = v0[5];
    v22 = v0[6];

    return MEMORY[0x2821AB6E8](v19, v21, v22, v20, v15, v17);
  }

  else
  {
    v7 = v0[4];
    *(v7 + 64) = 0;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21504F198()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_21504F60C;
  }

  else
  {
    v5 = sub_21504F32C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21504F32C()
{
  v28 = v0;
  v1 = v0[7];
  MEMORY[0x216060B70](v0[18]);
  v3 = v0[2];
  v2 = v0[3];
  sub_2150A3FA0();
  v4 = sub_2150A4030();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[7];
  v26 = v3;
  if (v6 == 1)
  {
    sub_214F302D4(v7, &qword_27CA44568);
    v8 = 0;
    v25 = 0;
  }

  else
  {
    v8 = sub_2150A4020();
    v25 = v9;
    (*(v5 + 8))(v7, v4);
  }

  v10 = sub_2150A3F10();
  v11 = sub_2150A5550();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[20];
  v15 = v0[18];
  v14 = v0[19];
  if (v12)
  {
    v23 = v0[20];
    v16 = swift_slowAlloc();
    v24 = v8;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136642819;
    v18 = v26;
    *(v16 + 4) = sub_214F7723C(v26, v2, &v27);
    _os_log_impl(&dword_214D51000, v10, v11, "Finished generating top line summary {summary: %{sensitive}s}", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v19 = v17;
    v8 = v24;
    MEMORY[0x216064AF0](v19, -1, -1);
    MEMORY[0x216064AF0](v16, -1, -1);

    (*(v14 + 8))(v23, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    v18 = v26;
  }

  v20 = v0[4];
  *v20 = v18;
  *(v20 + 8) = v2;
  *(v20 + 16) = 1;
  *(v20 + 24) = v8;
  *(v20 + 32) = v25;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;

  v21 = v0[1];

  return v21();
}

uint64_t sub_21504F60C()
{
  v1 = v0[25];
  v2 = v1;
  v3 = sub_2150A3F10();
  v4 = sub_2150A5560();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_214D51000, v3, v4, "Could not generate topline summary: %@", v7, 0xCu);
    sub_214F302D4(v8, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v8, -1, -1);
    MEMORY[0x216064AF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[4];
  *(v11 + 64) = 0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;

  v12 = v0[1];

  return v12();
}

uint64_t sub_21504F7D8()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA44550);
  v1 = __swift_project_value_buffer(v0, qword_27CA44550);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SummarizationManager.SummarizationError.errorStringForState.getter()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  return v3;
}

uint64_t static SummarizationManager.SummarizationError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 7)
  {
    if (v5 == 7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 == 0;
      }

      if (!v6)
      {
        goto LABEL_7;
      }

LABEL_9:
      v7 = 1;
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      goto LABEL_9;
    }
  }

LABEL_7:
  v7 = 0;
LABEL_10:
  sub_2150513D8(*a1, v3);
  sub_2150513D8(v4, v5);
  sub_2150513EC(v2, v3);
  sub_2150513EC(v4, v5);
  return v7;
}

unint64_t SummarizationManager.SummarizationError.errorGlyphForState.getter()
{
  v1 = *(v0 + 8);
  v2 = 0xD000000000000012;
  v3 = 0xD00000000000001BLL;
  if (v1)
  {
    v3 = 0;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 4)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21504FA90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 7)
  {
    if (v5 == 7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 == 0;
      }

      if (!v6)
      {
        goto LABEL_7;
      }

LABEL_9:
      v7 = 1;
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      goto LABEL_9;
    }
  }

LABEL_7:
  v7 = 0;
LABEL_10:
  sub_2150513D8(*a1, v3);
  sub_2150513D8(v4, v5);
  sub_2150513EC(v2, v3);
  sub_2150513EC(v4, v5);
  return v7;
}

uint64_t static SummarizationManager.generateSynopsis(transcript:useExternalIntelligence:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 479) = a4;
  *(v4 + 168) = a2;
  *(v4 + 176) = a3;
  *(v4 + 160) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44568);
  *(v4 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44580);
  *(v4 + 192) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44588);
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44590);
  *(v4 + 232) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44598);
  *(v4 + 240) = v6;
  *(v4 + 248) = *(v6 - 8);
  *(v4 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445A0);
  *(v4 + 264) = swift_task_alloc();
  v7 = sub_2150A3A00();
  *(v4 + 272) = v7;
  *(v4 + 280) = *(v7 - 8);
  *(v4 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44570);
  *(v4 + 296) = swift_task_alloc();
  v8 = sub_2150A3F50();
  *(v4 + 304) = v8;
  *(v4 + 312) = *(v8 - 8);
  *(v4 + 320) = swift_task_alloc();
  v9 = sub_2150A3F70();
  *(v4 + 328) = v9;
  *(v4 + 336) = *(v9 - 8);
  *(v4 + 344) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445A8);
  *(v4 + 352) = v10;
  *(v4 + 360) = *(v10 - 8);
  *(v4 + 368) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445B0);
  *(v4 + 376) = v11;
  *(v4 + 384) = *(v11 - 8);
  *(v4 + 392) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445B8);
  *(v4 + 400) = v12;
  *(v4 + 408) = *(v12 - 8);
  *(v4 + 416) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445C0);
  *(v4 + 424) = v13;
  *(v4 + 432) = *(v13 - 8);
  *(v4 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445C8);
  *(v4 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215050084, 0, 0);
}

uint64_t sub_215050084()
{
  v1 = v0[56];
  v2 = v0[51];
  v3 = v0[52];
  v14 = v0[50];
  v20 = v0[46];
  v24 = v0[45];
  v23 = v0[44];
  v18 = v0[43];
  v21 = v0[42];
  v22 = v0[41];
  v4 = v0[39];
  v15 = v0[40];
  v16 = v0[38];
  v17 = v0[37];
  v5 = v0[35];
  v6 = v0[36];
  v8 = v0[25];
  v7 = v0[26];
  v19 = v0[34];
  sub_2150A4010();
  swift_allocObject();
  v0[57] = sub_2150A4000();
  (*(v7 + 56))(v1, 1, 1, v8);
  (*(v2 + 104))(v3, *MEMORY[0x277D858A0], v14);
  *(swift_task_alloc() + 16) = v1;
  sub_2150A5280();

  (*(v4 + 104))(v15, *MEMORY[0x277D4B030], v16);
  v9 = sub_2150A3F40();
  (*(*(v9 - 8) + 56))(v17, 1, 1, v9);
  sub_2150A3F60();
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v5 + 8))(v6, v19);
  sub_2150A3F90();

  (*(v21 + 8))(v18, v22);
  sub_2150A5160();
  (*(v24 + 8))(v20, v23);
  v10 = swift_task_alloc();
  v0[58] = v10;
  *v10 = v0;
  v10[1] = sub_215050380;
  v11 = v0[47];
  v12 = v0[33];

  return MEMORY[0x2822005A8](v12, 0, 0, v11, v0 + 13);
}

uint64_t sub_215050380()
{

  if (v0)
  {
    v1 = sub_215050AA4;
  }

  else
  {
    v1 = sub_215050490;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_215050490()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 448);
  if (v4 == 1)
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
    if ((*(v7 + 48))(v5, 1, v6))
    {
    }

    else
    {
      v15 = *(v0 + 208);
      v14 = *(v0 + 216);
      v16 = *(v0 + 200);
      (*(v15 + 16))(v14, *(v0 + 448), v16);
      *(v0 + 152) = 0;
      sub_2150A5250();

      (*(v15 + 8))(v14, v16);
    }

    v17 = *(v0 + 448);
    (*(*(v0 + 432) + 32))(*(v0 + 160), *(v0 + 440), *(v0 + 424));
    sub_214F302D4(v17, &qword_27CA445C8);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    (*(v3 + 32))(*(v0 + 256), v1, v2);
    v10 = (*(v9 + 48))(v5, 1, v8);
    v11 = *(v0 + 240);
    if (v10)
    {
      v12 = *(v0 + 232);
      (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445D8);
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    }

    else
    {
      v20 = *(v0 + 192);
      (*(*(v0 + 208) + 16))(*(v0 + 224), *(v0 + 448), *(v0 + 200));
      MEMORY[0x216060BA0](v11);
      v45 = *(v0 + 96);
      v46 = *(v0 + 88);
      sub_2150A3FC0();
      v21 = sub_2150A4050();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 48))(v20, 1, v21);
      v24 = *(v0 + 192);
      if (v23 == 1)
      {
        sub_214F302D4(*(v0 + 192), &qword_27CA44580);
        v44 = 1;
      }

      else
      {
        v44 = sub_2150A4040();
        (*(v22 + 8))(v24, v21);
      }

      v25 = *(v0 + 184);
      sub_2150A3FA0();
      v26 = sub_2150A4030();
      v27 = *(v26 - 8);
      v28 = (*(v27 + 48))(v25, 1, v26);
      v29 = *(v0 + 184);
      if (v28 == 1)
      {
        sub_214F302D4(*(v0 + 184), &qword_27CA44568);
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v30 = sub_2150A4020();
        v31 = v32;
        (*(v27 + 8))(v29, v26);
      }

      v33 = *(v0 + 248);
      v34 = *(v0 + 256);
      v36 = *(v0 + 232);
      v35 = *(v0 + 240);
      v37 = *(v0 + 224);
      v38 = *(v0 + 200);
      v39 = *(v0 + 208);
      *(v0 + 33) = *(v0 + 472);
      *(v0 + 36) = *(v0 + 475);
      *(v0 + 16) = v46;
      *(v0 + 24) = v45;
      *(v0 + 32) = v44 & 1;
      *(v0 + 40) = v30;
      *(v0 + 48) = v31;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_2150A5240();
      (*(v39 + 8))(v37, v38);
      (*(v33 + 8))(v34, v35);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445D8);
      (*(*(v40 - 8) + 56))(v36, 0, 1, v40);
    }

    sub_214F302D4(*(v0 + 232), &qword_27CA44590);
    v41 = swift_task_alloc();
    *(v0 + 464) = v41;
    *v41 = v0;
    v41[1] = sub_215050380;
    v42 = *(v0 + 376);
    v43 = *(v0 + 264);

    return MEMORY[0x2822005A8](v43, 0, 0, v42, v0 + 104);
  }
}

uint64_t sub_215050AA4()
{
  (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
  v1 = *(v0 + 104);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  type metadata accessor for SummarizationClientError(0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 448);
  v5 = *(v0 + 200);
  v6 = (*(v0 + 208) + 48);
  if (v3)
  {

    v7 = *(v0 + 120);
    v8 = sub_2150A4900();
    v9 = (*v6)(v4, 1, v5);
    if (v8)
    {
      if (!v9)
      {
        v11 = *(v0 + 208);
        v10 = *(v0 + 216);
        v12 = *(v0 + 200);
        (*(v11 + 16))(v10, *(v0 + 448), v12);
        sub_215051408();
        v13 = swift_allocError();
        *v14 = xmmword_2150CBD40;
        *(v0 + 144) = v13;
LABEL_11:
        sub_2150A5250();

        (*(v11 + 8))(v10, v12);
        goto LABEL_12;
      }
    }

    else if (!v9)
    {
      v11 = *(v0 + 208);
      v10 = *(v0 + 216);
      v12 = *(v0 + 200);
      (*(v11 + 16))(v10, *(v0 + 448), v12);
      sub_215051408();
      v20 = swift_allocError();
      *v21 = 0;
      v21[1] = 0;
      *(v0 + 136) = v20;
      goto LABEL_11;
    }

LABEL_12:
    v15 = *(v0 + 112);
    goto LABEL_13;
  }

  if (!(*v6)(v4, 1, v5))
  {
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v18 = *(v0 + 200);
    (*(v17 + 16))(v16, *(v0 + 448), v18);
    *(v0 + 128) = v1;
    v19 = v1;
    sub_2150A5250();

    (*(v17 + 8))(v16, v18);
    goto LABEL_14;
  }

  v15 = v1;
LABEL_13:

LABEL_14:
  v22 = *(v0 + 448);
  (*(*(v0 + 432) + 32))(*(v0 + 160), *(v0 + 440), *(v0 + 424));
  sub_214F302D4(v22, &qword_27CA445C8);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_215050E5C(uint64_t a1, uint64_t a2)
{
  sub_214F302D4(a2, &qword_27CA445C8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44588);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t _s11NotesShared20SummarizationManagerC12canSummarize10transcriptSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v19[1] = a1;
  v19[2] = a2;
  v19[0] = sub_2150A3A00();
  v2 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  v8 = sub_2150A3F50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2150A3F70();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A4010();
  swift_allocObject();
  sub_2150A4000();
  (*(v9 + 104))(v11, *MEMORY[0x277D4B030], v8);
  v16 = sub_2150A3F40();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_2150A3F60();
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v2 + 8))(v4, v19[0]);
  v17 = sub_2150A3F80();
  (*(v13 + 8))(v15, v12);

  return v17 & 1;
}

uint64_t sub_2150513D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t sub_2150513EC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

unint64_t sub_215051408()
{
  result = qword_27CA445D0;
  if (!qword_27CA445D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA445D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared20SummarizationManagerC0C5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2150514B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_215051504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_215051570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2150A64B0();
  sub_2150A4BB0();
  v6 = sub_2150A64E0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2150A6270() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_215051668(uint64_t a1, uint64_t a2)
{
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_215057D14(&qword_280C241B0, MEMORY[0x277CC95F0]), v7 = sub_2150A49A0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_215057D14(&qword_280C241A8, MEMORY[0x277CC95F0]);
      v15 = sub_2150A4A80();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_215051880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_214F43C14(a3, v22 - v9, &qword_27CA41E50);
  v11 = sub_2150A5120();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_214F302D4(v10, &qword_27CA41E50);
  }

  else
  {
    sub_2150A5110();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2150A5010();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2150A4B60() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_214F302D4(a3, &qword_27CA41E50);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_214F302D4(a3, &qword_27CA41E50);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t static SiriSpeechRecognitionManager.asrModelNeedsDownload(NGASR:)(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_215051BD4;

  return sub_215056074(a1);
}

uint64_t sub_215051BD4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t static SiriSpeechRecognitionManager.downloadASRModel(NGASR:progress:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F53FB0;

  return sub_215056EA0(a1, a2, a3);
}

id SiriSpeechRecognitionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_215051DD0()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA445E0);
  v1 = __swift_project_value_buffer(v0, qword_27CA445E0);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_215051E98(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EE8);
  v2[10] = swift_task_alloc();
  sub_2150A4120();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EF8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C90);
  v2[13] = swift_task_alloc();
  v3 = sub_2150A3AC0();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445F8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44600);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44608);
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44610);
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44618);
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215052204, 0, 0);
}

uint64_t sub_215052204()
{
  v1 = v0[31];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v7 = v0[22];
  v6 = v0[23];
  v49 = v0[21];
  v52 = v0[20];
  v53 = v0[28];
  v50 = v0[19];
  v51 = v0[25];
  v8 = v0[9];
  sub_2150A4200();
  (*(v6 + 104))(v5, *MEMORY[0x277D85778], v7);
  sub_2150A5130();
  (*(v6 + 8))(v5, v7);
  v48 = *(v2 + 32);
  v48(v49, v1, v53);
  (*(v2 + 56))(v49, 0, 1, v53);
  (*(v4 + 32))(v50, v3, v51);
  (*(v4 + 56))(v50, 0, 1, v51);
  v9 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_inputSequence;
  swift_beginAccess();
  sub_214F43C7C(v49, v8 + v9, &qword_27CA44600);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_inputBuilder;
  swift_beginAccess();
  sub_214F43C7C(v50, v8 + v10, &qword_27CA445F8);
  swift_endAccess();
  sub_214F43C14(v8 + v9, v52, &qword_27CA44600);
  if ((*(v2 + 48))(v52, 1, v53) == 1)
  {
    v11 = v0[20];
    v12 = &qword_27CA44600;
LABEL_5:
    sub_214F302D4(v11, v12);
    sub_214F4810C();
    swift_allocError();
    *v17 = 15;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  v13 = v0[25];
  v14 = v0[26];
  v15 = v0[18];
  v48(v0[30], v0[20], v0[28]);
  sub_214F43C14(v8 + v10, v15, &qword_27CA445F8);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v16 = v0[18];
    (*(v0[29] + 8))(v0[30], v0[28]);
    v12 = &qword_27CA445F8;
    v11 = v16;
    goto LABEL_5;
  }

  sub_214F302D4(v0[18], &qword_27CA445F8);
  if (ICInternalSettingsDisableGASRAvailabilityCheck())
  {
    sub_2150A3A10();
  }

  else
  {
    sub_2150A3A70();
  }

  v21 = v0[12];
  v20 = v0[13];
  v54 = v0[9];
  (*(v0[15] + 16))();
  v22 = *MEMORY[0x277CDCE30];
  v23 = sub_2150A42A0();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v20, v22, v23);
  (*(v24 + 56))(v20, 0, 1, v23);
  v25 = sub_2150A4130();
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F00);
  v26 = sub_2150A4140();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2150C29C0;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x277CDCAB0], v26);
  v32(v31 + v28, *MEMORY[0x277CDCAA8], v26);
  sub_214F803B8(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F08);
  v33 = sub_2150A4290();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2150C25D0;
  (*(v34 + 104))(v36 + v35, *MEMORY[0x277CDCDB0], v33);
  sub_214F806D8(v36);
  swift_setDeallocating();
  (*(v34 + 8))(v36 + v35, v33);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F10);
  v37 = sub_2150A41A0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2150C29B0;
  v42 = v41 + v40;
  v43 = *(v38 + 104);
  v43(v42, *MEMORY[0x277CDCB08], v37);
  v43(v42 + v39, *MEMORY[0x277CDCB10], v37);
  v43(v42 + 2 * v39, *MEMORY[0x277CDCB28], v37);
  sub_21505578C(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2150A41E0();
  swift_allocObject();
  v44 = sub_2150A41C0();
  v0[32] = v44;
  *(v54 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_transcriber) = v44;

  v0[33] = sub_2150A40E0();
  v0[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F18);
  v45 = swift_allocObject();
  v0[35] = v45;
  *(v45 + 16) = xmmword_2150C25D0;
  v46 = sub_215057D14(&qword_27CA41F20, MEMORY[0x277CDCB98]);
  v0[36] = v46;
  *(v45 + 32) = v44;
  *(v45 + 40) = v46;

  v47 = swift_task_alloc();
  v0[37] = v47;
  *v47 = v0;
  v47[1] = sub_215052BA8;

  return MEMORY[0x28212BBE0](v45);
}

uint64_t sub_215052BA8(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_215052CC8, 0, 0);
}

uint64_t sub_215052CC8()
{
  v1 = v0[38];
  v2 = v0[9];
  v3 = *(v2 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_analyzerFormat);
  *(v2 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_analyzerFormat) = v1;
  v4 = v1;

  if (v1)
  {
    v26 = v4;
    v5 = v0[36];
    v6 = v0[31];
    v7 = v0[32];
    v8 = v0[29];
    v9 = v0[30];
    v10 = v0[28];
    v11 = v0[10];
    v27 = v0[9];
    sub_2150A4110();
    (*(v8 + 16))(v6, v9, v10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2150C25D0;
    *(v12 + 32) = v7;
    *(v12 + 40) = v5;
    v13 = sub_2150A4250();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    sub_2150A4240();
    swift_allocObject();

    v14 = v26;
    sub_2150A4230();
    sub_2150576F4();
    *(v27 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_analyzer) = sub_2150A40C0();

    v15 = swift_task_alloc();
    v0[39] = v15;
    *v15 = v0;
    v15[1] = sub_215053044;
    v16 = v0[8];

    return sub_2150541FC(v16);
  }

  else
  {
    v18 = v0[29];
    v19 = v0[30];
    v20 = v0[28];
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[15];
    sub_214F4810C();
    swift_allocError();
    *v24 = 15;
    swift_willThrow();

    (*(v23 + 8))(v21, v22);
    (*(v18 + 8))(v19, v20);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_215053044()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_2150532BC;
  }

  else
  {
    v2 = sub_215053158;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215053158()
{
  v1 = v0[38];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];

  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2150532BC()
{
  v1 = v0[38];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_215053424(void *a1)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44648);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - v3;
  v31 = sub_2150A4200();
  v26 = *(v31 - 8);
  v4 = MEMORY[0x28223BE20](v31);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44610);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_inputBuilder;
  swift_beginAccess();
  sub_214F43C14(v1 + v15, v10, &qword_27CA445F8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_214F302D4(v10, &qword_27CA445F8);
LABEL_7:
    sub_214F4810C();
    swift_allocError();
    *v21 = 17;
    return swift_willThrow();
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = *(v1 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_analyzerFormat);
  if (!v16)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_7;
  }

  v17 = v16;

  v18 = v33;
  v19 = sub_21502B824(v32, v17);
  if (v18)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v22 = v19;

    v33 = v22;
    v23 = v30;
    sub_2150A41F0();
    v24 = v26;
    (*(v26 + 16))(v6, v23, v31);
    v25 = v27;
    sub_2150A5140();

    (*(v28 + 8))(v25, v29);
    (*(v24 + 8))(v30, v31);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_21505385C()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44658);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44660);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44610);
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA445F8);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215053A0C, 0, 0);
}

uint64_t sub_215053A0C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_inputBuilder;
  swift_beginAccess();
  sub_214F43C14(v4 + v5, v1, &qword_27CA445F8);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[20];
  if (v6)
  {
    sub_214F302D4(v0[20], &qword_27CA445F8);
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[17];
    (*(v9 + 16))(v8, v0[20], v10);
    sub_214F302D4(v7, &qword_27CA445F8);
    sub_2150A5150();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[11];
  v12 = *(v11 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_analyzer);
  v0[21] = v12;
  if (v12)
  {

    v13 = swift_task_alloc();
    v0[22] = v13;
    *v13 = v0;
    v13[1] = sub_215053DE0;

    return MEMORY[0x28212BBF0]();
  }

  else
  {
    v14 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_recognizerTask;
    if (*(v11 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_recognizerTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
      sub_2150A5190();

      v15 = v0[11];
    }

    else
    {
      v15 = v11;
    }

    v16 = v0[16];
    v17 = v0[12];
    v18 = v0[13];
    *(v11 + v14) = 0;

    v19 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_audioTaskContinuation;
    swift_beginAccess();
    sub_214F43C14(v15 + v19, v16, &qword_27CA44660);
    v20 = (*(v18 + 48))(v16, 1, v17);
    v21 = v0[16];
    if (v20)
    {
      sub_214F302D4(v0[16], &qword_27CA44660);
    }

    else
    {
      v23 = v0[13];
      v22 = v0[14];
      v24 = v0[12];
      (*(v23 + 16))(v22, v0[16], v24);
      sub_214F302D4(v21, &qword_27CA44660);
      sub_2150A5150();
      (*(v23 + 8))(v22, v24);
    }

    v25 = v0[15];
    (*(v0[13] + 56))(v25, 1, 1, v0[12]);
    swift_beginAccess();
    sub_214F43C7C(v25, v15 + v19, &qword_27CA44660);
    swift_endAccess();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_215053DE0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_215054154;
  }

  else
  {

    v2 = sub_215053EFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215053EFC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_recognizerTask;
  if (*(v1 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_recognizerTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    sub_2150A5190();
  }

  v3 = v0[11];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[13];
  *(v1 + v2) = 0;

  v7 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_audioTaskContinuation;
  swift_beginAccess();
  sub_214F43C14(v3 + v7, v4, &qword_27CA44660);
  v8 = (*(v6 + 48))(v4, 1, v5);
  v9 = v0[16];
  if (v8)
  {
    sub_214F302D4(v0[16], &qword_27CA44660);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];
    (*(v11 + 16))(v10, v0[16], v12);
    sub_214F302D4(v9, &qword_27CA44660);
    sub_2150A5150();
    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[15];
  (*(v0[13] + 56))(v13, 1, 1, v0[12]);
  swift_beginAccess();
  sub_214F43C7C(v13, v3 + v7, &qword_27CA44660);
  swift_endAccess();

  v14 = v0[1];

  return v14();
}

uint64_t sub_215054154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2150541FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446B8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215054300, 0, 0);
}

uint64_t sub_215054300()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  sub_2150A4190();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  *(swift_task_alloc() + 16) = v4;
  sub_2150A5180();

  v5 = *(v4 + OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_transcriber);
  if (v5 && (v6 = v0[3], *&v6[OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_analyzer]))
  {
    v7 = v0[4];
    v8 = sub_2150A5120();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v5;
    v9[5] = v6;

    v10 = v6;
    *&v10[OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_recognizerTask] = sub_215051880(0, 0, v7, &unk_2150CC018, v9);

    v11 = v0[1];
  }

  else
  {
    v12 = v0[2];
    sub_214F4810C();
    swift_allocError();
    *v13 = 15;
    swift_willThrow();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A0);
    (*(*(v14 - 8) + 8))(v12, v14);

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_215054580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44658);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_audioTaskContinuation;
  swift_beginAccess();
  sub_214F43C7C(v6, a2 + v9, &qword_27CA44660);
  return swift_endAccess();
}

uint64_t sub_2150546D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44658);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44660);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446C0);
  v5[12] = swift_task_alloc();
  v7 = sub_2150A4190();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98);
  v5[17] = swift_task_alloc();
  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA0);
  v5[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA8);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215054950, 0, 0);
}

uint64_t sub_215054950()
{
  sub_2150A41B0();
  v0[23] = swift_getOpaqueTypeConformance2();
  sub_2150A5220();
  v0[24] = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_audioTaskContinuation;
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_215054A9C;
  v3 = v0[20];
  v4 = v0[17];

  return MEMORY[0x282200310](v4, 0, 0, v0 + 5, v3, AssociatedConformanceWitness);
}

uint64_t sub_215054A9C()
{

  if (v0)
  {
    v1 = sub_215054F40;
  }

  else
  {
    v1 = sub_215054BAC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_215054BAC()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[24];
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[7];
    (*(v3 + 32))(v0[16], v1, v2);
    sub_214F43C14(v10 + v6, v7, &qword_27CA44660);
    v11 = (*(v9 + 48))(v7, 1, v8);
    v12 = v0[16];
    if (v11)
    {
      v13 = v0[11];
      (*(v0[14] + 8))(v0[16], v0[13]);
      sub_214F302D4(v13, &qword_27CA44660);
      v14 = 1;
    }

    else
    {
      v16 = v0[14];
      v15 = v0[15];
      v17 = v0[13];
      v19 = v0[10];
      v18 = v0[11];
      v20 = v0[8];
      v21 = v0[9];
      (*(v21 + 16))(v19, v18, v20);
      sub_214F302D4(v18, &qword_27CA44660);
      (*(v16 + 16))(v15, v12, v17);
      sub_2150A5140();
      (*(v21 + 8))(v19, v20);
      (*(v16 + 8))(v12, v17);
      v14 = 0;
    }

    v22 = v0[12];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446C8);
    (*(*(v23 - 8) + 56))(v22, v14, 1, v23);
    sub_214F302D4(v22, &qword_27CA446C0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = swift_task_alloc();
    v0[25] = v25;
    *v25 = v0;
    v25[1] = sub_215054A9C;
    v26 = v0[20];
    v27 = v0[17];

    return MEMORY[0x282200310](v27, 0, 0, v0 + 5, v26, AssociatedConformanceWitness);
  }
}

uint64_t sub_215054F40()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[5];
  if (qword_27CA417B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA445E0);
  v3 = sub_2150A3F10();
  v4 = sub_2150A5560();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_214D51000, v3, v4, "speech recognition failed", v5, 2u);
    MEMORY[0x216064AF0](v5, -1, -1);
  }

  v6 = v0[1];

  return v6();
}

uint64_t static SiriSpeechRecognitionManager.generalASRLanguageIdentifierForAvailability()()
{
  v0 = sub_2150A3AC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  sub_2150A3A70();
  v5 = sub_2150A3A40();
  (*(v1 + 8))(v3, v0);
  v6 = [v4 generalASRLanguageForLocale_];

  v7 = sub_2150A4AD0();
  return v7;
}

uint64_t sub_215055208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_21505525C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_2150A4AD0();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_215055330(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_2150A52E0();

  return swift_continuation_resume();
}

uint64_t sub_2150553C4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CDCE88]);
  v2 = sub_2150A4A90();
  v3 = [v1 initWithLanguage:v2 taskHint:1009];

  v4 = ICNotesAppBundleIdentifier();
  if (!v4)
  {
    sub_2150A4AD0();
    v4 = sub_2150A4A90();
  }

  [objc_opt_self() unsubscribeFromAssetWithConfig:v3 clientIdentifier:v4 error:0];

  v5 = *(v0 + 8);

  return v5();
}

id SiriSpeechRecognitionManager.init()()
{
  v1 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_audioTaskContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44658);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_inputSequence;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44618);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_inputBuilder;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44610);
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  *&v0[OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_transcriber] = 0;
  *&v0[OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_analyzer] = 0;
  *&v0[OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_recognizerTask] = 0;
  v7 = OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_converter;
  type metadata accessor for BufferConverter();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v0[v7] = v8;
  *&v0[OBJC_IVAR____TtC11NotesShared28SiriSpeechRecognitionManager_analyzerFormat] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SiriSpeechRecognitionManager();
  return objc_msgSendSuper2(&v10, sel_init);
}

id SiriSpeechRecognitionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSpeechRecognitionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21505578C(uint64_t a1)
{
  v2 = sub_2150A41A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446D0);
    v9 = sub_2150A5AC0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_215057D14(&qword_27CA446D8, MEMORY[0x277CDCB30]);
      v15 = sub_2150A49A0();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          sub_215057D14(&qword_27CA446E0, MEMORY[0x277CDCB30]);
          v23 = sub_2150A4A80();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t _s11NotesShared28SiriSpeechRecognitionManagerC25siriASRlanguageIdentifier3forSSSg10Foundation6LocaleV_tFZ_0(uint64_t a1)
{
  v2 = sub_2150A3AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_2150A3AA0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - v16;
  if (ICInternalSettingsDisableGASRAvailabilityCheck())
  {
    return 0x53552D6E65;
  }

  v45 = v3;
  v46 = v2;
  sub_2150A3AB0();
  sub_2150A3A80();
  v19 = *(v9 + 8);
  v19(v14, v8);
  v20 = sub_2150A3A30();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    v22 = &qword_27CA446B0;
    v23 = v17;
  }

  else
  {
    v43 = sub_2150A3A20();
    v44 = v24;
    (*(v21 + 8))(v17, v20);
    sub_2150A3AB0();
    sub_2150A3A90();
    v19(v12, v8);
    v25 = sub_2150A3A60();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) != 1)
    {
      v39 = sub_2150A3A20();
      v41 = v40;
      (*(v26 + 8))(v7, v25);
      v48[0] = v43;
      v48[1] = v44;

      MEMORY[0x2160617E0](45, 0xE100000000000000);

      MEMORY[0x2160617E0](v39, v41);

      return v48[0];
    }

    v22 = &qword_27CA446A0;
    v23 = v7;
  }

  sub_214F302D4(v23, v22);
  v28 = v45;
  v27 = v46;
  v29 = v47;
  if (qword_27CA417B8 != -1)
  {
    swift_once();
  }

  v30 = sub_2150A3F30();
  __swift_project_value_buffer(v30, qword_27CA445E0);
  (*(v28 + 16))(v29, a1, v27);
  v31 = sub_2150A3F10();
  v32 = sub_2150A5560();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48[0] = v34;
    *v33 = 136315138;
    sub_215057D14(&qword_27CA446A8, MEMORY[0x277CC9788]);
    v35 = sub_2150A6100();
    v37 = v36;
    (*(v28 + 8))(v29, v27);
    v38 = sub_214F7723C(v35, v37, v48);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_214D51000, v31, v32, "could not fetch language code for ASR model download in locale: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x216064AF0](v34, -1, -1);
    MEMORY[0x216064AF0](v33, -1, -1);
  }

  else
  {

    (*(v28 + 8))(v29, v27);
  }

  return 0;
}

uint64_t sub_215056074(char a1)
{
  *(v1 + 192) = a1;
  v2 = sub_2150A3AC0();
  *(v1 + 152) = v2;
  *(v1 + 160) = *(v2 - 8);
  *(v1 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215056134, 0, 0);
}

uint64_t sub_215056134()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  if (*(v0 + 192) == 1)
  {
    sub_2150A3A70();
    v4 = _s11NotesShared28SiriSpeechRecognitionManagerC25siriASRlanguageIdentifier3forSSSg10Foundation6LocaleV_tFZ_0(v1);
    v6 = v5;
    (*(v2 + 8))(v1, v3);
    if (!v6)
    {
      if (qword_27CA417B8 != -1)
      {
        swift_once();
      }

      v22 = sub_2150A3F30();
      __swift_project_value_buffer(v22, qword_27CA445E0);
      v19 = sub_2150A3F10();
      v20 = sub_2150A5560();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_23;
      }

      v21 = "could not fetch language code for Siri ASR model download";
      goto LABEL_22;
    }

    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 supportsCallTranscription];

    if (v8)
    {
      v9 = 1001;
LABEL_7:
      *(v0 + 176) = v4;
      *(v0 + 184) = v6;
      v16 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_2150565DC;
      v17 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446F0);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_215055330;
      *(v0 + 104) = &block_descriptor_47_0;
      *(v0 + 112) = v17;
      [v16 installedLanguagesForTaskHint:v9 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    if (qword_27CA417B8 != -1)
    {
      swift_once();
    }

    v23 = sub_2150A3F30();
    __swift_project_value_buffer(v23, qword_27CA445E0);
    v19 = sub_2150A3F10();
    v20 = sub_2150A5560();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = "device does not support call transcription";
      goto LABEL_22;
    }
  }

  else
  {
    v10 = objc_opt_self();
    sub_2150A3A70();
    v11 = sub_2150A3A40();
    (*(v2 + 8))(v1, v3);
    v12 = [v10 generalASRLanguageForLocale_];

    v4 = sub_2150A4AD0();
    v6 = v13;

    v14 = [objc_opt_self() sharedInstance];
    v15 = [v14 supportsGeneralASR];

    if (v15)
    {
      v9 = 1009;
      goto LABEL_7;
    }

    if (qword_27CA417B8 != -1)
    {
      swift_once();
    }

    v18 = sub_2150A3F30();
    __swift_project_value_buffer(v18, qword_27CA445E0);
    v19 = sub_2150A3F10();
    v20 = sub_2150A5560();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = "device does not support general ASR";
LABEL_22:
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_214D51000, v19, v20, v21, v24, 2u);
      MEMORY[0x216064AF0](v24, -1, -1);
    }
  }

LABEL_23:

  sub_214F4810C();
  swift_allocError();
  *v25 = 4;
  swift_willThrow();

  v26 = *(v0 + 8);

  return v26(0);
}

uint64_t sub_2150565DC()
{

  return MEMORY[0x2822009F8](sub_2150566BC, 0, 0);
}

uint64_t sub_2150566BC()
{
  v20 = v0;
  v1 = v0[18];
  if (qword_27CA417B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA445E0);

  v3 = sub_2150A3F10();
  v4 = sub_2150A5550();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = sub_2150A52F0();
    v9 = sub_214F7723C(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_214D51000, v3, v4, "Speech installed languages: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x216064AF0](v6, -1, -1);
    MEMORY[0x216064AF0](v5, -1, -1);
  }

  v10 = sub_2150A3F10();
  v11 = sub_2150A5550();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_214F7723C(v13, v12, &v19);
    _os_log_impl(&dword_214D51000, v10, v11, "languageID: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x216064AF0](v15, -1, -1);
    MEMORY[0x216064AF0](v14, -1, -1);
  }

  v16 = sub_215051570(v0[22], v0[23], v1);

  v17 = v0[1];

  return v17((v16 & 1) == 0);
}

uint64_t _s11NotesShared28SiriSpeechRecognitionManagerC44generalASRLanguageIdentifierForAssetDownloadSSSgyFZ_0()
{
  v0 = sub_2150A3AA0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_2150A3AC0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  if (ICInternalSettingsDisableGASRAvailabilityCheck())
  {
    return 0x53552D6E65;
  }

  sub_2150A3A70();
  sub_2150A3AB0();
  sub_2150A3A90();
  (*(v1 + 8))(v3, v0);
  v15 = sub_2150A3A60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_214F302D4(v6, &qword_27CA446A0);
    if (qword_27CA417B8 != -1)
    {
      swift_once();
    }

    v17 = sub_2150A3F30();
    __swift_project_value_buffer(v17, qword_27CA445E0);
    (*(v8 + 16))(v11, v13, v7);
    v18 = sub_2150A3F10();
    v19 = sub_2150A5560();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40[0] = v39;
      *v20 = 136315138;
      sub_215057D14(&qword_27CA446A8, MEMORY[0x277CC9788]);
      v21 = sub_2150A6100();
      v23 = v22;
      v24 = *(v8 + 8);
      v24(v11, v7);
      v25 = sub_214F7723C(v21, v23, v40);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_214D51000, v18, v19, "could not fetch region code for ASR model download in locale: %s", v20, 0xCu);
      v26 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x216064AF0](v26, -1, -1);
      MEMORY[0x216064AF0](v20, -1, -1);

      v24(v13, v7);
    }

    else
    {

      v37 = *(v8 + 8);
      v37(v11, v7);
      v37(v13, v7);
    }

    return 0;
  }

  else
  {
    v27 = sub_2150A3A20();
    v29 = v28;
    (*(v16 + 8))(v6, v15);
    v30 = objc_opt_self();
    v31 = sub_2150A3A40();
    v32 = [v30 generalASRLanguageForLocale_];

    v33 = sub_2150A4AD0();
    v35 = v34;

    v40[0] = v33;
    v40[1] = v35;

    MEMORY[0x2160617E0](45, 0xE100000000000000);

    MEMORY[0x2160617E0](v27, v29);

    v36 = v40[0];
    (*(v8 + 8))(v13, v7);
    return v36;
  }
}

uint64_t sub_215056EA0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 208) = a2;
  *(v3 + 216) = a3;
  *(v3 + 280) = a1;
  v4 = sub_2150A3AC0();
  *(v3 + 224) = v4;
  *(v3 + 232) = *(v4 - 8);
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215056F64, 0, 0);
}

uint64_t sub_215056F64()
{
  v1 = *(v0 + 280);
  v2 = [objc_opt_self() sharedInstance];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = [v2 supportsCallTranscription];

    if (v4)
    {
      v6 = v0[29];
      v5 = v0[30];
      v7 = v0[28];
      sub_2150A3A70();
      _s11NotesShared28SiriSpeechRecognitionManagerC25siriASRlanguageIdentifier3forSSSg10Foundation6LocaleV_tFZ_0(v5);
      v9 = v8;
      (*(v6 + 8))(v5, v7);
      if (v9)
      {
LABEL_4:
        if (*(v0 + 280))
        {
          v10 = 1001;
        }

        else
        {
          v10 = 1009;
        }

        v11 = objc_allocWithZone(MEMORY[0x277CDCE88]);
        v12 = sub_2150A4A90();

        v13 = [v11 initWithLanguage:v12 taskHint:v10];
        v0[31] = v13;

        v14 = ICNotesAppBundleIdentifier();
        if (!v14)
        {
          sub_2150A4AD0();
          v14 = sub_2150A4A90();
        }

        v0[32] = v14;
        v16 = v0[26];
        v15 = v0[27];
        v17 = objc_opt_self();
        v0[22] = v16;
        v0[23] = v15;
        v0[18] = MEMORY[0x277D85DD0];
        v0[19] = 1107296256;
        v0[20] = sub_215055208;
        v0[21] = &block_descriptor_21;
        v18 = _Block_copy(v0 + 18);
        v0[33] = v18;

        v0[2] = v0;
        v0[7] = v0 + 24;
        v0[3] = sub_215057488;
        v19 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA446E8);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_21505525C;
        v0[13] = &block_descriptor_43;
        v0[14] = v19;
        [v17 fetchAssetWithConfig:v13 clientIdentifier:v14 progress:v18 completion:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      goto LABEL_14;
    }

    if (qword_27CA417B8 != -1)
    {
      swift_once();
    }

    v25 = sub_2150A3F30();
    __swift_project_value_buffer(v25, qword_27CA445E0);
    v26 = sub_2150A3F10();
    v27 = sub_2150A5560();
    if (!os_log_type_enabled(v26, v27))
    {
LABEL_24:

      sub_214F4810C();
      v23 = swift_allocError();
      v24 = 5;
      goto LABEL_25;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "device does not support call transcription";
LABEL_23:
    _os_log_impl(&dword_214D51000, v26, v27, v29, v28, 2u);
    MEMORY[0x216064AF0](v28, -1, -1);
    goto LABEL_24;
  }

  v20 = [v2 supportsGeneralASR];

  if ((v20 & 1) == 0)
  {
    if (qword_27CA417B8 != -1)
    {
      swift_once();
    }

    v30 = sub_2150A3F30();
    __swift_project_value_buffer(v30, qword_27CA445E0);
    v26 = sub_2150A3F10();
    v27 = sub_2150A5560();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_24;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "device does not support general ASR";
    goto LABEL_23;
  }

  _s11NotesShared28SiriSpeechRecognitionManagerC44generalASRLanguageIdentifierForAssetDownloadSSSgyFZ_0();
  if (v21)
  {
    goto LABEL_4;
  }

LABEL_14:
  sub_214F4810C();
  v23 = swift_allocError();
  v24 = 20;
LABEL_25:
  *v22 = v24;
  swift_willThrow();
  sub_214F4810C();
  swift_allocError();
  *v31 = 5;
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_215057488()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_215057624;
  }

  else
  {
    v2 = sub_215057598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215057598()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];

  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_215057624()
{
  v1 = v0[33];
  v3 = v0[31];
  v2 = v0[32];
  swift_willThrow();
  _Block_release(v1);

  v4 = v0[34];
  sub_214F4810C();
  swift_allocError();
  *v5 = 5;
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

unint64_t sub_2150576F4()
{
  result = qword_27CA44638;
  if (!qword_27CA44638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44638);
  }

  return result;
}

uint64_t type metadata accessor for SiriSpeechRecognitionManager()
{
  result = qword_27CA44678;
  if (!qword_27CA44678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2150577AC()
{
  sub_215057BE0(319, &qword_27CA44688, &qword_27CA44658);
  if (v0 <= 0x3F)
  {
    sub_215057BE0(319, &qword_27CA44690, &qword_27CA44618);
    if (v1 <= 0x3F)
    {
      sub_215057BE0(319, &qword_27CA44698, &qword_27CA44610);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of SiriSpeechRecognitionManager.setUpAudioTask()(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x150);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return v7(a1);
}

uint64_t dispatch thunk of SiriSpeechRecognitionManager.finish()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214F557A8;

  return v5();
}

void sub_215057BE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2150A57E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_215057C3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214F557A8;

  return sub_2150546D0(a1, v4, v5, v7, v6);
}

uint64_t sub_215057D14(unint64_t *a1, void (*a2)(uint64_t))
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

void *static TranscriptViewModelSegment.from(result:temporary:speakerName:overlapMitigation:adjustedStart:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v102 = a5;
  v98 = a4;
  v97 = a3;
  LODWORD(v110) = a2;
  v8 = type metadata accessor for TranscriptViewModelSegment(0);
  v9 = *(v8 - 8);
  v105 = v8;
  v106 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v85 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v93 = &v85 - v18;
  v101 = sub_2150A3340();
  MEMORY[0x28223BE20](v101);
  v100 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2150A34D0();
  MEMORY[0x28223BE20](v20 - 8);
  v99 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78);
  v22 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v24 = &v85 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E80);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v85 - v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E88);
  v88 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v112 = &v85 - v28;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E90);
  v91 = *(v92 - 8);
  v29 = MEMORY[0x28223BE20](v92);
  v109 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v90 = &v85 - v31;
  v96 = sub_2150A33B0();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v33 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2150A3400();
  v34 = *(v107 - 8);
  v35 = MEMORY[0x28223BE20](v107);
  v111 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v85 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v108 = &v85 - v41;
  if (v110)
  {
    v42 = sub_2150A4180();
    MEMORY[0x28223BE20](v42);
    *(&v85 - 2) = a1;
    v43 = sub_215058BBC(sub_2150439AC, (&v85 - 4), v42);

    return v43;
  }

  v44 = MEMORY[0x216060D20](v40);
  if (!*(v44 + 16))
  {

    if (qword_27CA417C0 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_8;
  }

  v45 = v107;
  (*(v34 + 16))(v39, v44 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v107);

  v87 = v34;
  (*(v34 + 32))(v108, v39, v45);
  sub_2150A33D0();
  sub_2150A4260();
  sub_215058B74(&qword_27CA41EB0, MEMORY[0x277CDCCE0]);
  v46 = v90;
  sub_2150A33C0();
  v95[1](v33, v96);
  (*(v91 + 16))(v109, v46, v92);
  sub_214F43BCC(&qword_27CA41EB8, &qword_27CA41E90);
  sub_2150A4D60();
  v47 = sub_214F43BCC(&qword_27CA41EC0, &qword_27CA41E88);
  v48 = v103;
  v110 = v47;
  sub_2150A5850();
  v50 = *(v22 + 48);
  v49 = v22 + 48;
  v51 = v104;
  v109 = v50;
  if ((v50)(v27, 1, v104) == 1)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_6:
    (*(v88 + 8))(v112, v48);
    (*(v91 + 8))(v90, v92);
    (*(v87 + 8))(v108, v107);
    return v43;
  }

  v95 = (v87 + 8);
  v43 = MEMORY[0x277D84F90];
  v96 = v49;
  v94 = v14;
  while (1)
  {
    sub_214FB6CE4(v27, v24, &qword_27CA41E78);
    if (v24[48])
    {
      goto LABEL_15;
    }

    v58 = *(v24 + 4);
    v57 = *(v24 + 5);
    v59 = *(v24 + 1);
    v113 = *v24;
    v114 = v59;
    v115 = *(v24 + 1);
    v116 = v58;
    v117 = v57;
    sub_2150A5730();
    v61 = v60 + a6;
    sub_2150A54E0();
    sub_2150A5730();
    v63 = v62 + a6 - v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8);
    sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8);
    sub_2150A3430();
    sub_2150A3440();
    sub_2150A3330();
    sub_215058B74(&qword_27CA42330, MEMORY[0x277CC8B30]);
    v64 = sub_2150A4D20();
    v66 = v65;
    if ((v102 & 1) == 0)
    {
      goto LABEL_27;
    }

    v67 = v43[2];
    if (!v67)
    {
      goto LABEL_27;
    }

    v68 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v69 = *(v106 + 72);
    v70 = v93;
    sub_214F5456C(v43 + v68 + v69 * (v67 - 1), v93);
    if (v63 >= 0.5 || *(v70 + v105[6]) - v61 >= 0.5)
    {
      sub_214F545D0(v70);
LABEL_27:
      v77 = v105;
      v78 = v105[10];
      v79 = &v17[v105[9]];
      v17[v78] = 2;
      _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
      v80 = &v17[v77[5]];
      *v80 = v64;
      v80[1] = v66;
      *&v17[v77[6]] = v61;
      *&v17[v77[7]] = v63;
      v81 = v98;
      *v79 = v97;
      *(v79 + 1) = v81;
      v17[v78] = 2;
      *&v17[v77[8]] = v61 + v63;
      v82 = v94;
      sub_214F5456C(v17, v94);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_21505F8E0(0, v43[2] + 1, 1, v43, &qword_27CA426A8, &unk_2150CD190, type metadata accessor for TranscriptViewModelSegment);
      }

      v51 = v104;
      v84 = v43[2];
      v83 = v43[3];
      if (v84 >= v83 >> 1)
      {
        v43 = sub_21505F8E0(v83 > 1, v84 + 1, 1, v43, &qword_27CA426A8, &unk_2150CD190, type metadata accessor for TranscriptViewModelSegment);
      }

      sub_214F545D0(v17);
      (*v95)(v111, v107);
      v43[2] = v84 + 1;
      sub_214F5462C(v82, v43 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v84);
      goto LABEL_14;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v71 = v43[2];
      if (!v71)
      {
        break;
      }

      goto LABEL_23;
    }

    v43 = sub_21506098C(v43);
    v71 = v43[2];
    if (!v71)
    {
      break;
    }

LABEL_23:
    v72 = v71 - 1;
    v86 = v69;
    sub_214F545D0(v43 + v68 + (v71 - 1) * v69);
    v43[2] = v72;
    v73 = v105;
    v74 = v93;
    MEMORY[0x2160617E0](v64, v66);

    *(v74 + v73[7]) = v63 + *(v74 + v73[7]);
    sub_214F5456C(v74, v89);
    v76 = v43[2];
    v75 = v43[3];
    if (v76 >= v75 >> 1)
    {
      v43 = sub_21505F8E0(v75 > 1, v76 + 1, 1, v43, &qword_27CA426A8, &unk_2150CD190, type metadata accessor for TranscriptViewModelSegment);
    }

    v51 = v104;
    sub_214F545D0(v93);
    (*v95)(v111, v107);
    v43[2] = v76 + 1;
    sub_214F5462C(v89, v43 + v68 + v76 * v86);
LABEL_14:
    v48 = v103;
LABEL_15:
    sub_214F302D4(v24, &qword_27CA41E78);
    sub_2150A5850();
    if ((v109)(v27, 1, v51) == 1)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_33:
  swift_once();
LABEL_8:
  v52 = sub_2150A3F30();
  __swift_project_value_buffer(v52, qword_27CA446F8);
  v53 = sub_2150A3F10();
  v54 = sub_2150A5560();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_214D51000, v53, v54, "got an empty result", v55, 2u);
    MEMORY[0x216064AF0](v55, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_215058B74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_215058BBC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for TranscriptViewModelSegment(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_214F86CFC(0, v10, 0);
  v11 = v21;
  v12 = *(sub_2150A4280() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_214F86CFC(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_214F5462C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2150A3400();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_2150A33F0();
  v10 = 0;
  v11 = *(a1 + 16);
  while (v11 != v10)
  {
    v12 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
    sub_21505B81C(v9, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10++, a2 & 1, v15);
  }

  (*(v7 + 32))(a3, v9, v6);
}

uint64_t TranscriptViewModelSegment.init(text:startTime:duration:speaker:callerOrigin:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v18 = *a5;
  v19 = type metadata accessor for TranscriptViewModelSegment(0);
  v20 = v19[10];
  v21 = (a8 + v19[9]);
  *(a8 + v20) = 2;
  result = _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v23 = (a8 + v19[5]);
  *v23 = a1;
  v23[1] = a2;
  *(a8 + v19[6]) = a9;
  *(a8 + v19[7]) = a10;
  *v21 = a3;
  v21[1] = a4;
  *(a8 + v20) = v18;
  v24 = a9 + a10;
  if ((a7 & 1) == 0)
  {
    v24 = a6;
  }

  *(a8 + v19[8]) = v24;
  return result;
}

uint64_t CallerOrigin.defaultStringForParticipant.getter()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  return v3;
}

void __swiftcall SummarizationResult.init(text:isSafe:modelVersion:attributionIcon:attributionProvider:)(NotesShared::SummarizationResult *__return_ptr retstr, Swift::String text, Swift::Bool isSafe, Swift::String_optional modelVersion, Swift::String_optional attributionIcon, Swift::String_optional attributionProvider)
{
  retstr->text = text;
  retstr->isSafe = isSafe;
  retstr->modelVersion = modelVersion;
  retstr->attributionIcon = attributionIcon;
  retstr->attributionProvider = attributionProvider;
}

uint64_t TranscriptionError.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_215059184()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA446F8);
  v1 = __swift_project_value_buffer(v0, qword_27CA446F8);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2150592DC()
{
  sub_2150625A0();

  return sub_2150A3280();
}

uint64_t sub_215059328()
{
  sub_2150625A0();

  return sub_2150A3280();
}

uint64_t AttributedString.ic_transcriptionRangeMatching<A>(activeSegmentID:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v60 = a2;
  v61 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8);
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44728);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v45 - v12);
  v14 = sub_2150A33A0();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x28223BE20](v14);
  v51 = &v45 - v15;
  v16 = sub_2150A33B0();
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a4;
  v57 = a5;
  v19 = sub_2150A3390();
  v56 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44730);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v45 - v26;
  v28 = sub_2150A3A00();
  MEMORY[0x28223BE20](v28);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v31;
  v34 = v33;
  sub_214F43C14(v60, v27, &unk_27CA42360);
  if ((*(v32 + 48))(v27, 1, v34) == 1)
  {
    sub_214F302D4(v27, &unk_27CA42360);
    (*(v59 + 56))(v61, 1, 1, v58);
    return 0;
  }

  else
  {
    v46 = v32;
    v47 = v34;
    v36 = *(v32 + 32);
    v60 = v30;
    v36(v30, v27, v34);
    v37 = *(v59 + 56);
    v48 = v24;
    v59 += 56;
    v45 = v37;
    v37(v24, 1, 1, v58);
    sub_2150A33D0();
    v38 = v51;
    sub_2150A33C0();
    (*(v49 + 8))(v18, v50);
    v39 = v53;
    sub_2150A3370();
    (*(v52 + 8))(v38, v39);
    while (1)
    {
      while (1)
      {
        sub_2150A3380();
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44738);
        if ((*(*(v40 - 8) + 48))(v13, 1, v40) == 1)
        {
          (*(v56 + 8))(v21, v19);
          (*(v46 + 8))(v60, v47);
          v35 = 0;
          v42 = v61;
          v43 = v48;
          goto LABEL_11;
        }

        v35 = *v13;
        sub_214FB6CE4(v13 + *(v40 + 48), v10, &qword_27CA41EC8);
        if (v35)
        {
          break;
        }

        sub_214F302D4(v10, &qword_27CA41EC8);
      }

      v41 = sub_2150A39B0();
      v42 = v61;
      if (v41)
      {
        break;
      }

      sub_214F302D4(v10, &qword_27CA41EC8);
    }

    (*(v56 + 8))(v21, v19);
    v43 = v48;
    sub_214F302D4(v48, &qword_27CA44730);
    (*(v46 + 8))(v60, v47);
    sub_214FB6CE4(v10, v43, &qword_27CA41EC8);
    v45(v43, 0, 1, v58);
LABEL_11:
    sub_214FB6CE4(v43, v42, &qword_27CA44730);
  }

  return v35;
}

uint64_t AttributedString.ic_transcriptionNSRangeMatching<A>(activeSegmentID:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v27 = sub_2150A3400();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44730);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = a1;
  v21 = v4;
  v22 = AttributedString.ic_transcriptionRangeMatching<A>(activeSegmentID:of:)(&v25 - v18, v20, v28, v29, v30);
  sub_214F43C14(v19, v17, &qword_27CA44730);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    sub_214F302D4(v19, &qword_27CA44730);

    v23 = 0;
    v19 = v17;
  }

  else
  {
    sub_214FB6CE4(v17, v13, &qword_27CA41EC8);
    sub_214F43C14(v13, v11, &qword_27CA41EC8);
    (*(v25 + 16))(v26, v21, v27);
    sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8);
    v23 = v22;
    sub_215058B74(&qword_27CA44740, MEMORY[0x277CC8C40]);
    sub_2150A57B0();
    sub_214F302D4(v13, &qword_27CA41EC8);
  }

  sub_214F302D4(v19, &qword_27CA44730);
  return v23;
}

uint64_t sub_215059DF4()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_215059E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_2150A6270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2150A6270();

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

uint64_t sub_215059EFC(uint64_t a1)
{
  v2 = sub_2150609D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_215059F38(uint64_t a1)
{
  v2 = sub_2150609D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_215059F74(uint64_t a1)
{
  v2 = sub_215060A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_215059FB0(uint64_t a1)
{
  v2 = sub_215060A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_215059FEC(uint64_t a1)
{
  v2 = sub_215060A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21505A028(uint64_t a1)
{
  v2 = sub_215060A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallerOrigin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44748);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44750);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44758);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150609D8();
  sub_2150A65B0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_215060A2C();
    v14 = v18;
    sub_2150A6010();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_215060A80();
    sub_2150A6010();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t CallerOrigin.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44778);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44780);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44788);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150609D8();
  v13 = v31;
  sub_2150A6590();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_2150A5FD0();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_2150A5C20();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8);
    *v21 = &type metadata for CallerOrigin;
    sub_2150A5F20();
    sub_2150A5BF0();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_215060A2C();
    sub_2150A5F10();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_215060A80();
    sub_2150A5F10();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t TranscriptViewModelSegment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3A00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TranscriptViewModelSegment.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptViewModelSegment(0) + 20));

  return v1;
}

uint64_t TranscriptViewModelSegment.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptViewModelSegment(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptViewModelSegment.startTime.setter(double a1)
{
  result = type metadata accessor for TranscriptViewModelSegment(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TranscriptViewModelSegment.duration.setter(double a1)
{
  result = type metadata accessor for TranscriptViewModelSegment(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TranscriptViewModelSegment.speaker.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptViewModelSegment(0) + 36));

  return v1;
}

uint64_t TranscriptViewModelSegment.speaker.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptViewModelSegment(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptViewModelSegment.origin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TranscriptViewModelSegment(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t TranscriptViewModelSegment.origin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TranscriptViewModelSegment(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t static TranscriptViewModelSegment.from(jsonData:)@<X0>(uint64_t a1@<X8>)
{
  sub_2150A2F80();
  swift_allocObject();
  sub_2150A2F70();
  v2 = type metadata accessor for TranscriptViewModelSegment(0);
  sub_215058B74(&qword_27CA43CD8, type metadata accessor for TranscriptViewModelSegment);
  sub_2150A2F60();

  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

double sub_21505AE2C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2150A3340();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2150A3400();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  sub_2150A4270();
  sub_2150A3330();
  (*(v4 + 8))(v6, v3);
  sub_215058B74(&qword_27CA42330, MEMORY[0x277CC8B30]);
  v7 = sub_2150A4D20();
  v9 = v8;
  MEMORY[0x216060D30](&v20);
  v10 = sub_2150A5730();
  v12 = v11;
  MEMORY[0x216060D30](v21, v10);
  sub_2150A5730();
  v14 = v13;
  v15 = type metadata accessor for TranscriptViewModelSegment(0);
  v16 = v15[10];
  v17 = (a1 + v15[9]);
  *(a1 + v16) = 2;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v18 = (a1 + v15[5]);
  *v18 = v7;
  v18[1] = v9;
  *(a1 + v15[6]) = v12;
  *(a1 + v15[7]) = v14;
  *v17 = 0;
  v17[1] = 0;
  *(a1 + v16) = 2;
  result = v12 + v14;
  *(a1 + v15[8]) = v12 + v14;
  return result;
}

uint64_t static TranscriptViewModelSegment.from(jsonString:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2150A4B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A4B10();
  v6 = sub_2150A4AE0();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    v9 = type metadata accessor for TranscriptViewModelSegment(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    static TranscriptViewModelSegment.from(jsonData:)(a1);
    return sub_214FE1228(v6, v8);
  }
}

uint64_t TranscriptViewModelSegment.debugDescription.getter()
{
  sub_2150A5B20();
  MEMORY[0x2160617E0](540697705, 0xE400000000000000);
  sub_2150A3A00();
  sub_215058B74(&qword_280C24850, MEMORY[0x277CC95F0]);
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  MEMORY[0x2160617E0](0x695474726174730ALL, 0xEC000000203A656DLL);
  type metadata accessor for TranscriptViewModelSegment(0);
  sub_2150A52B0();
  MEMORY[0x2160617E0](0x6F6974617275640ALL, 0xEB00000000203A6ELL);
  sub_2150A52B0();
  return 0;
}

uint64_t TranscriptViewModelSegment.hash(into:)()
{
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);

  return sub_2150A49B0();
}

uint64_t TranscriptViewModelSegment.json.getter()
{
  v0 = sub_2150A4B20();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2150A2FA0();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2150A2FE0();
  swift_allocObject();
  sub_2150A2FD0();
  sub_2150A2F90();
  sub_2150A2FB0();
  type metadata accessor for TranscriptViewModelSegment(0);
  sub_215058B74(&qword_27CA43CF0, type metadata accessor for TranscriptViewModelSegment);
  v2 = sub_2150A2FC0();
  v4 = v3;
  sub_2150A4B10();
  v5 = sub_2150A4AF0();
  sub_214F7EDE4(v2, v4);

  return v5;
}

uint64_t TranscriptViewModelSegment.speakerLabelOrHandle.getter()
{
  v1 = type metadata accessor for TranscriptViewModelSegment(0);
  v2 = (v0 + *(v1 + 36));
  v3 = *v2;
  if (v2[1])
  {
    v4 = *(v0 + *(v1 + 40));
    if (v4 != 2 && (v4 & 1) == 0)
    {
      v5 = objc_opt_self();
      v6 = sub_2150A4A90();
      v7 = [v5 localizedFrameworkStringForKey:v6 value:0 table:0 allowSiri:1];
LABEL_12:
      v12 = v7;

      v3 = sub_2150A4AD0();
      return v3;
    }

    v8 = sub_215044A4C();
    if (v9)
    {
      v10 = v8;
      if (sub_2150A4BC0() >= 1)
      {

        return v10;
      }
    }

    if (v4 != 2)
    {

      v11 = objc_opt_self();
      v6 = sub_2150A4A90();
      v7 = [v11 localizedFrameworkStringForKey:v6 value:0 table:0 allowSiri:1];
      goto LABEL_12;
    }
  }

  return v3;
}

uint64_t sub_21505B81C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v54 = a4;
  v56 = a1;
  v6 = sub_2150A3490();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2150A3400();
  v55 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v58 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = v52 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v52 - v13;
  v15 = sub_2150A3A00();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TranscriptViewModelSegment(0);
  MEMORY[0x28223BE20](v19);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2150A51A0();
  if ((result & 1) == 0)
  {
    v52[3] = v8;
    sub_214F5456C(a2, v21);
    type metadata accessor for TranscriptMetadata(0);
    v23 = swift_allocObject();
    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    (*(v16 + 32))(v23 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_id, v18, v15);
    sub_214F5462C(v21, v23 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_segment);
    v24 = a2;
    if (a3)
    {
      v25 = (a2 + *(v19 + 36));
      v26 = *v25;
      v27 = v25[1];

      v28 = TranscriptViewModelSegment.speakerLabelOrHandle.getter();
      if (v27 && v29)
      {
        v52[1] = v28;
        v52[2] = v29;
        v30 = v26;
        v31 = v54;
        v33 = *v54;
        v32 = v54[1];
        if (!*v54 && v32 == 0xE000000000000000 || (sub_2150A6270() & 1) != 0)
        {
          *v31 = v30;
          v31[1] = v27;

          sub_2150A3480();
          sub_2150A3410();
          v59[0] = v23;
          sub_215062648();

          sub_2150A3420();
          sub_2150A3360();
          v34 = v53;
          sub_2150A3350();
          sub_2150A3360();
          v35 = *(v55 + 8);
          v36 = v34;
          v37 = v57;
          v35(v36, v57);
          v35(v14, v37);
        }

        else if (v30 == v33 && v27 == v32 || (sub_2150A6270() & 1) != 0)
        {
        }

        else
        {
          sub_2150A3350();
          sub_2150A3360();
          v52[0] = *(v55 + 8);
          (v52[0])(v14, v57);
          *v31 = v30;
          v31[1] = v27;

          sub_2150A3480();
          sub_2150A3410();
          v59[0] = v23;
          sub_215062648();

          sub_2150A3420();
          sub_2150A3360();
          v38 = v53;
          sub_2150A3350();
          sub_2150A3360();
          v39 = v38;
          v40 = v57;
          v41 = v52[0];
          (v52[0])(v39, v57);
          v41(v14, v40);
        }
      }

      else
      {
      }
    }

    v42 = (v24 + *(v19 + 20));
    v44 = *v42;
    v43 = v42[1];
    if (sub_21505BFB4(*v42, v43))
    {

      v45 = 0;
    }

    else
    {
      sub_21504A504(v44, v43);
      if (v46)
      {
        v45 = sub_2150A49D0();
      }

      else
      {
        v45 = 0;
      }

      sub_2150385A4(v44, v43);
      if (v47 && (v48 = sub_2150A49D0(), , (v48 & 1) != 0))
      {
      }

      else
      {
        v59[0] = v44;
        v59[1] = v43;

        MEMORY[0x2160617E0](32, 0xE100000000000000);
      }
    }

    v49 = v58;
    if (sub_2150A51A0())
    {
    }

    sub_2150A3480();
    sub_2150A3410();
    v59[0] = v23;
    sub_2150625F4();

    sub_2150A3420();
    if ((v45 & 1) == 0)
    {
      goto LABEL_31;
    }

    v50 = sub_2150A3320();
    sub_2150A3340();
    sub_215058B74(&qword_27CA43EB8, MEMORY[0x277CC8B30]);
    result = sub_2150A53F0();
    if (result)
    {
      __break(1u);
    }

    else
    {
      result = sub_21504A54C();
      if (v51)
      {

        sub_215058B74(&qword_27CA44960, MEMORY[0x277CC8B30]);
        sub_2150A5480();
        v50(v59, 0);
LABEL_31:
        sub_2150A3360();
        sub_2150A51A0();

        return (*(v55 + 8))(v49, v57);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t TranscriptMetadata.__allocating_init(segment:)(uint64_t a1)
{
  v2 = swift_allocObject();
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_214F5462C(a1, v2 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_segment);
  return v2;
}

unint64_t sub_21505BFB4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    while (1)
    {
      v3 = sub_2150A4BE0();
      v4 = sub_2150A4D10();
      result = sub_215060AD4(v4, v5);
      if ((result & 0x100000000) != 0)
      {
        break;
      }

      v7 = result;

      v8 = (v7 - 14) <= 0xFFFFFFFB && (v7 - 8232) >= 2;
      if (v8 && v7 != 133)
      {
        v9 = ((sub_2150A4BE0() ^ v3) & 0xFFFFFFFFFFFFC000) == 0;
        return !v9;
      }

      if (v3 < 0x4000)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v9 = v2 == 0;
    return !v9;
  }

  return result;
}

uint64_t sub_21505C0B8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x72656B61657073;
  if (v1 != 5)
  {
    v3 = 0x6E696769726FLL;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x656D6954646E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1954047348;
  if (v1 != 1)
  {
    v5 = 0x6D69547472617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21505C180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21506235C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21505C1B4(uint64_t a1)
{
  v2 = sub_215060F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21505C1F0(uint64_t a1)
{
  v2 = sub_215060F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TranscriptViewModelSegment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44790);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215060F7C();
  sub_2150A65B0();
  v11[15] = 0;
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B8, MEMORY[0x277CC95F0]);
  sub_2150A60A0();
  if (!v2)
  {
    v9 = type metadata accessor for TranscriptViewModelSegment(0);
    v11[14] = 1;
    sub_2150A6060();
    v11[13] = 2;
    sub_2150A6080();
    v11[12] = 3;
    sub_2150A6080();
    v11[11] = 4;
    sub_2150A6080();
    v11[10] = 5;
    sub_2150A6030();
    v11[9] = *(v3 + *(v9 + 40));
    v11[8] = 6;
    sub_215060FD0();
    sub_2150A6050();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TranscriptViewModelSegment.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t TranscriptViewModelSegment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_2150A3A00();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA447A8);
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v30 - v6;
  v8 = type metadata accessor for TranscriptViewModelSegment(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 40);
  v11[v12] = 2;
  v13 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_215060F7C();
  v36 = v7;
  sub_2150A6590();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    v30 = v12;
    v14 = v32;
    v15 = v33;
    v45 = 0;
    sub_215058B74(&qword_27CA43008, MEMORY[0x277CC95F0]);
    v16 = v34;
    v17 = v35;
    sub_2150A5FC0();
    v18 = *(v15 + 32);
    v34 = v4;
    v18(v11, v16, v4);
    v44 = 1;
    v19 = sub_2150A5F80();
    v20 = &v11[v8[5]];
    *v20 = v19;
    v20[1] = v21;
    v43 = 2;
    sub_2150A5FA0();
    *&v11[v8[6]] = v22;
    v42 = 3;
    sub_2150A5FA0();
    *&v11[v8[7]] = v23;
    v41 = 4;
    sub_2150A5FA0();
    *&v11[v8[8]] = v24;
    v40 = 5;
    v25 = sub_2150A5F30();
    v26 = &v11[v8[9]];
    *v26 = v25;
    v26[1] = v27;
    v38 = 6;
    sub_215061024();
    sub_2150A5F60();
    (*(v14 + 8))(v36, v17);
    v28 = v31;
    v11[v30] = v39;
    sub_214F5456C(v11, v28);
    __swift_destroy_boxed_opaque_existential_0(v37);
    return sub_214F545D0(v11);
  }
}

uint64_t sub_21505CA9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3A00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21505CB0C()
{
  sub_2150A64B0();
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_21505CB94()
{
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);

  return sub_2150A49B0();
}

uint64_t sub_21505CC18()
{
  sub_2150A64B0();
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t SummarizationResult.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SummarizationResult.modelVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SummarizationResult.attributionIcon.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SummarizationResult.attributionProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_21505CD64()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x7265566C65646F6DLL;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656661537369;
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

uint64_t sub_21505CE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21506219C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21505CE40(uint64_t a1)
{
  v2 = sub_215061078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21505CE7C(uint64_t a1)
{
  v2 = sub_215061078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SummarizationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA447B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v13 = *(v1 + 16);
  v7 = *(v1 + 24);
  v12[4] = *(v1 + 32);
  v12[5] = v7;
  v8 = *(v1 + 40);
  v12[2] = *(v1 + 48);
  v12[3] = v8;
  v9 = *(v1 + 56);
  v12[0] = *(v1 + 64);
  v12[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215061078();
  sub_2150A65B0();
  v19 = 0;
  v10 = v14;
  sub_2150A6060();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = 1;
  sub_2150A6070();
  v17 = 2;
  sub_2150A6030();
  v16 = 3;
  sub_2150A6030();
  v15 = 4;
  sub_2150A6030();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SummarizationResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA447C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215061078();
  sub_2150A6590();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_2150A5F80();
  v11 = v10;
  LOBYTE(v34[0]) = 1;
  v42 = sub_2150A5F90();
  LOBYTE(v34[0]) = 2;
  v26 = sub_2150A5F30();
  v28 = v12;
  LOBYTE(v34[0]) = 3;
  v25 = sub_2150A5F30();
  v27 = v13;
  v43 = 4;
  v14 = sub_2150A5F30();
  v42 &= 1u;
  v15 = v14;
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  *&v29 = v9;
  *(&v29 + 1) = v11;
  LOBYTE(v30) = v42;
  v19 = v26;
  v20 = v28;
  *(&v30 + 1) = v26;
  *&v31 = v28;
  *(&v31 + 1) = v25;
  *&v32 = v27;
  *(&v32 + 1) = v15;
  v33 = v18;
  *(a2 + 64) = v18;
  v21 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v21;
  v22 = v30;
  *a2 = v29;
  *(a2 + 16) = v22;
  sub_2150610CC(&v29, v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34[0] = v9;
  v34[1] = v11;
  v35 = v42;
  v36 = v19;
  v37 = v20;
  v38 = v25;
  v39 = v27;
  v40 = v15;
  v41 = v18;
  return sub_215061104(v34);
}

uint64_t static RecordingState.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      sub_21506116C();
      sub_215061134(v3);
      sub_215061134(v2);
      v6 = sub_2150A5780();
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (v4 != 1)
  {
    if (v2 == 0x8000000000000000)
    {
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_14;
      }

      sub_215061150(0x8000000000000000);
      v8 = 0x8000000000000000;
    }

    else
    {
      if (v3 != 0x8000000000000008)
      {
        goto LABEL_14;
      }

      sub_215061150(0x8000000000000008);
      v8 = 0x8000000000000008;
    }

    sub_215061150(v8);
    v7 = 1;
    return v7 & 1;
  }

  if (v3 >> 62 != 1)
  {
LABEL_14:
    sub_215061134(*a2);
    sub_215061134(v2);
    sub_215061150(v2);
    sub_215061150(v3);
    v7 = 0;
    return v7 & 1;
  }

  v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = v5;
  sub_215061134(v3);
  sub_215061134(v2);
  v6 = static RecordingState.== infix(_:_:)(&v11, &v10);
LABEL_7:
  v7 = v6;
  sub_215061150(v2);
  sub_215061150(v3);
  return v7 & 1;
}

uint64_t TranscriptionModelState.localizedTitle.getter()
{
  v0 = objc_opt_self();
  v1 = sub_2150A4A90();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2150A4AD0();
  return v3;
}

Swift::String_optional __swiftcall TranscriptionModelState.localizedMessage(callRecording:)(Swift::Bool callRecording)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    if (*v1 && v2 != 1)
    {
      [objc_opt_self() deviceIsWAPICapable];
      v11 = objc_opt_self();
      v12 = sub_2150A4A90();
      v10 = [v11 localizedFrameworkStringForKey:v12 value:0 table:0 allowSiri:1];

      goto LABEL_11;
    }

    v3 = [objc_opt_self() currentDevice];
    [v3 userInterfaceIdiom];

    v4 = objc_opt_self();
    v5 = sub_2150A4A90();
    v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];
LABEL_9:
    v10 = v6;

LABEL_11:
    v7 = sub_2150A4AD0();
    v8 = v13;

    goto LABEL_12;
  }

  if (v2 - 3 >= 2)
  {
    v9 = objc_opt_self();
    v5 = sub_2150A4A90();
    v6 = [v9 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
LABEL_12:
  v14 = v7;
  v15 = v8;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t TranscriptionModelState.action.getter()
{
  if (*v0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = sub_2150A4A90();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  v5 = sub_2150A4AD0();
  return v5;
}

unint64_t TranscriptionModelState.systemImageName.getter()
{
  v1 = *v0;
  if (v1 != 3 && v1 == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000014;
  if (v1 == 1)
  {
    v4 = 0;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

NotesShared::TranscriptionModelState_optional __swiftcall TranscriptionModelState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TranscriptionModelState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x64656C696166;
  v4 = 0x697263736E617274;
  if (v1 != 4)
  {
    v4 = 0x7974706D65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64616F6C6E776F64;
  if (v1 != 1)
  {
    v5 = 0x656E696C66666FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21505DE90()
{
  sub_2150A4BB0();
}

void sub_21505DF9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6570;
  v5 = 0xE600000000000000;
  v6 = 0x64656C696166;
  v7 = 0xEC000000676E6962;
  v8 = 0x697263736E617274;
  if (v2 != 4)
  {
    v8 = 0x7974706D65;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000676E69;
  v10 = 0x64616F6C6E776F64;
  if (v2 != 1)
  {
    v10 = 0x656E696C66666FLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21505E064()
{
  result = sub_2150A4A90();
  qword_27CA44710 = result;
  return result;
}

uint64_t sub_21505E0C0()
{
  result = sub_2150A4A90();
  qword_27CA44718 = result;
  return result;
}

uint64_t sub_21505E11C()
{
  result = sub_2150A4A90();
  qword_27CA44720 = result;
  return result;
}

id sub_21505E178(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t TranscriptMetadata.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_id;
  v4 = sub_2150A3A00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptMetadata.init(segment:)(uint64_t a1)
{
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_id, v6, v3);
  sub_214F5462C(a1, v1 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_segment);
  return v1;
}

uint64_t TranscriptMetadata.debugDescription.getter()
{
  sub_2150A5B20();
  MEMORY[0x2160617E0](540697705, 0xE400000000000000);
  sub_2150A3A00();
  sub_215058B74(&qword_280C24850, MEMORY[0x277CC95F0]);
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  MEMORY[0x2160617E0](0x746E656D6765730ALL, 0xEA0000000000203ALL);
  type metadata accessor for TranscriptViewModelSegment(0);
  sub_2150A5DB0();
  return 0;
}

uint64_t TranscriptMetadata.hash(into:)()
{
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  return sub_2150A49B0();
}

uint64_t sub_21505E538()
{
  if (*v0)
  {
    return 0x746E656D676573;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21505E568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2150A6270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D676573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2150A6270();

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

uint64_t sub_21505E63C(uint64_t a1)
{
  v2 = sub_2150611B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21505E678(uint64_t a1)
{
  v2 = sub_2150611B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TranscriptMetadata.deinit()
{
  v1 = OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_id;
  v2 = sub_2150A3A00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_214F545D0(v0 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_segment);
  return v0;
}

uint64_t TranscriptMetadata.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_id;
  v2 = sub_2150A3A00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_214F545D0(v0 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_segment);

  return swift_deallocClassInstance();
}

uint64_t TranscriptMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA447D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150611B8();
  sub_2150A65B0();
  v8[15] = 0;
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B8, MEMORY[0x277CC95F0]);
  sub_2150A60A0();
  if (!v1)
  {
    v8[14] = 1;
    type metadata accessor for TranscriptViewModelSegment(0);
    sub_215058B74(&qword_27CA43CF0, type metadata accessor for TranscriptViewModelSegment);
    sub_2150A60A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TranscriptMetadata.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t TranscriptMetadata.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TranscriptMetadata.init(from:)(a1);
  return v2;
}

uint64_t *TranscriptMetadata.init(from:)(void *a1)
{
  v4 = *v1;
  v22 = v2;
  v23 = v4;
  v5 = type metadata accessor for TranscriptViewModelSegment(0);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2150A3A00();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA447E0);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150611B8();
  v12 = v22;
  sub_2150A6590();
  if (v12)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v9;
    v13 = v18;
    v25 = 0;
    sub_215058B74(&qword_27CA43008, MEMORY[0x277CC95F0]);
    v14 = v19;
    sub_2150A5FC0();
    v15 = *(v13 + 32);
    v17[1] = OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_id;
    v15(v1 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_id, v14, v20);
    v24 = 1;
    sub_215058B74(&qword_27CA43CD8, type metadata accessor for TranscriptViewModelSegment);
    sub_2150A5FC0();
    (*(v22 + 8))(v11, v21);
    sub_214F5462C(v7, v1 + OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_segment);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t *sub_21505EEB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = TranscriptMetadata.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_21505EF30@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11NotesShared18TranscriptMetadata_id;
  v5 = sub_2150A3A00();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21505EFD0()
{
  sub_2150A64B0();
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_21505F090()
{
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  return sub_2150A49B0();
}

uint64_t sub_21505F140()
{
  sub_2150A64B0();
  sub_2150A3A00();
  sub_215058B74(&qword_280C241B0, MEMORY[0x277CC95F0]);
  sub_2150A49B0();
  sub_2150A49B0();
  return sub_2150A64E0();
}

id TranscriptPauseTextAttachment.__allocating_init(duration:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11NotesShared29TranscriptPauseTextAttachment_duration] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithData_ofType_, 0, 0);
}

id TranscriptPauseTextAttachment.init(duration:)(double a1)
{
  *&v1[OBJC_IVAR____TtC11NotesShared29TranscriptPauseTextAttachment_duration] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TranscriptPauseTextAttachment();
  return objc_msgSendSuper2(&v3, sel_initWithData_ofType_, 0, 0);
}

id TranscriptPauseTextAttachment.__allocating_init(data:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v6 = sub_2150A3790();
    sub_214FE1228(a1, a2);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_2150A4A90();

LABEL_6:
  v10 = [objc_allocWithZone(v4) initWithData:v6 ofType:v7];

  return v10;
}

id TranscriptPauseTextAttachment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptPauseTextAttachment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21505F490@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TranscriptPauseTextAttachment();
  result = sub_2150A5B60();
  *a1 = result;
  return result;
}

char *sub_21505F4D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
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

void *sub_21505F5F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44910);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21505F74C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43180);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21505F8E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

void *sub_21505FABC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42740);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21505FC18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21505FD24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21505FE30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21505FF98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_2150600E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_215060214(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_215060370(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44950);
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

char *sub_215060524(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_215060620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44908);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_215060748(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

unint64_t sub_2150609D8()
{
  result = qword_27CA44760;
  if (!qword_27CA44760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44760);
  }

  return result;
}

unint64_t sub_215060A2C()
{
  result = qword_27CA44768;
  if (!qword_27CA44768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44768);
  }

  return result;
}

unint64_t sub_215060A80()
{
  result = qword_27CA44770;
  if (!qword_27CA44770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44770);
  }

  return result;
}

unint64_t sub_215060AD4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_215060C24(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2150A5B10();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2150A5C80() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_215060C24(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_215060CBC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_215060D30(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_215060CBC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21500F8FC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_215060D30(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2150A5C80();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t _s11NotesShared26TranscriptViewModelSegmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2150A39B0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TranscriptViewModelSegment(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_2150A6270() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v10 = v4[9];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v16 = v4[10];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    if (v17 == 2)
    {
      if (v18 != 2)
      {
        return 0;
      }
    }

    else if (v18 == 2 || ((v18 ^ v17) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  return 0;
}

unint64_t sub_215060F7C()
{
  result = qword_27CA44798;
  if (!qword_27CA44798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44798);
  }

  return result;
}

unint64_t sub_215060FD0()
{
  result = qword_27CA447A0;
  if (!qword_27CA447A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA447A0);
  }

  return result;
}

unint64_t sub_215061024()
{
  result = qword_27CA447B0;
  if (!qword_27CA447B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA447B0);
  }

  return result;
}

unint64_t sub_215061078()
{
  result = qword_27CA447C0;
  if (!qword_27CA447C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA447C0);
  }

  return result;
}

unint64_t sub_215061134(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_215061150(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_21506116C()
{
  result = qword_280C24220;
  if (!qword_280C24220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C24220);
  }

  return result;
}

unint64_t sub_2150611B8()
{
  result = qword_27CA447D8;
  if (!qword_27CA447D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA447D8);
  }

  return result;
}

unint64_t sub_215061234()
{
  result = qword_27CA447F0;
  if (!qword_27CA447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA447F0);
  }

  return result;
}

unint64_t sub_2150612AC()
{
  result = qword_27CA44800;
  if (!qword_27CA44800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44800);
  }

  return result;
}

unint64_t sub_215061304()
{
  result = qword_27CA44808;
  if (!qword_27CA44808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44808);
  }

  return result;
}

unint64_t sub_21506135C()
{
  result = qword_27CA44810;
  if (!qword_27CA44810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44810);
  }

  return result;
}

unint64_t sub_2150613FC()
{
  result = qword_27CA44820;
  if (!qword_27CA44820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44820);
  }

  return result;
}

unint64_t sub_215061454()
{
  result = qword_27CA44828;
  if (!qword_27CA44828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44828);
  }

  return result;
}

unint64_t sub_2150614AC()
{
  result = qword_27CA44830;
  if (!qword_27CA44830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21506170C()
{
  sub_2150A3A00();
  if (v0 <= 0x3F)
  {
    sub_214F93898(319, &qword_280C23178);
    if (v1 <= 0x3F)
    {
      sub_214F93898(319, &qword_27CA44850);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21506180C()
{
  result = sub_2150A4190();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2150618AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2150618F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_11NotesShared14RecordingStateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_215061970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2150619CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_215061A1C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_215061A70()
{
  result = sub_2150A3A00();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptViewModelSegment(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_215061C20()
{
  result = qword_27CA44878;
  if (!qword_27CA44878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44878);
  }

  return result;
}

unint64_t sub_215061C78()
{
  result = qword_27CA44880;
  if (!qword_27CA44880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44880);
  }

  return result;
}

unint64_t sub_215061CD0()
{
  result = qword_27CA44888;
  if (!qword_27CA44888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44888);
  }

  return result;
}

unint64_t sub_215061D28()
{
  result = qword_27CA44890;
  if (!qword_27CA44890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44890);
  }

  return result;
}

unint64_t sub_215061D80()
{
  result = qword_27CA44898;
  if (!qword_27CA44898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44898);
  }

  return result;
}

unint64_t sub_215061DD8()
{
  result = qword_27CA448A0;
  if (!qword_27CA448A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448A0);
  }

  return result;
}

unint64_t sub_215061E30()
{
  result = qword_27CA448A8;
  if (!qword_27CA448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448A8);
  }

  return result;
}

unint64_t sub_215061E88()
{
  result = qword_27CA448B0;
  if (!qword_27CA448B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448B0);
  }

  return result;
}

unint64_t sub_215061EE0()
{
  result = qword_27CA448B8;
  if (!qword_27CA448B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448B8);
  }

  return result;
}

unint64_t sub_215061F38()
{
  result = qword_27CA448C0;
  if (!qword_27CA448C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448C0);
  }

  return result;
}

unint64_t sub_215061F90()
{
  result = qword_27CA448C8;
  if (!qword_27CA448C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448C8);
  }

  return result;
}

unint64_t sub_215061FE8()
{
  result = qword_27CA448D0;
  if (!qword_27CA448D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448D0);
  }

  return result;
}

unint64_t sub_215062040()
{
  result = qword_27CA448D8;
  if (!qword_27CA448D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448D8);
  }

  return result;
}

unint64_t sub_215062098()
{
  result = qword_27CA448E0;
  if (!qword_27CA448E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448E0);
  }

  return result;
}

unint64_t sub_2150620F0()
{
  result = qword_27CA448E8;
  if (!qword_27CA448E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448E8);
  }

  return result;
}

unint64_t sub_215062148()
{
  result = qword_27CA448F0;
  if (!qword_27CA448F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA448F0);
  }

  return result;
}

uint64_t sub_21506219C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656661537369 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF6E6F63496E6F69 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002150E80A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2150A6270();

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

uint64_t sub_21506235C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72656B61657073 && a2 == 0xE700000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_2150625A0()
{
  result = qword_27CA44918;
  if (!qword_27CA44918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44918);
  }

  return result;
}

unint64_t sub_2150625F4()
{
  result = qword_27CA44958;
  if (!qword_27CA44958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44958);
  }

  return result;
}

unint64_t sub_215062648()
{
  result = qword_27CA44968;
  if (!qword_27CA44968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44968);
  }

  return result;
}

__C::_NSRange_optional __swiftcall _NSRange.init(union:)(Swift::OpaquePointer a1)
{
  v1 = sub_215062A98(a1._rawValue);
  v4 = v3 & 1;
  result.value.length = v2;
  result.value.location = v1;
  result.is_nil = v4;
  return result;
}

uint64_t _NSRange.difference(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  if (__OFADD__(a3, a4))
  {
    goto LABEL_33;
  }

  v5 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = a4;
  if (v4 >= v5)
  {
    v8 = result + a2;
  }

  else
  {
    v8 = a3 + a4;
  }

  if (a3 < result || v5 <= a3)
  {
    if (result < a3 || v4 <= result)
    {
      goto LABEL_17;
    }

    v9 = v8 - result;
    if (__OFSUB__(v8, result))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v9 = v8 - a3;
    if (__OFSUB__(v8, a3))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    result = a3;
  }

  if (v9 < 1)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426A0);
    result = swift_allocObject();
    *(result + 16) = xmmword_2150C25D0;
    goto LABEL_18;
  }

  if (result == a3 && v9 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  if (result <= a3)
  {
    v14 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426A0);
    result = swift_allocObject();
    *(result + 16) = xmmword_2150C25D0;
    v15 = v14 + v9;
    if (!__OFADD__(v14, v9))
    {
      if (!__OFSUB__(v4, v15))
      {
        *(result + 32) = v15;
        *(result + 40) = v4 - v15;
        return result;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = __OFADD__(result, v9);
  v11 = result + v9;
  if (v10)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426A0);
  v10 = __OFSUB__(v12, a3);
  v6 = v12 - a3;
  v13 = v10;
  if (v11 >= v4)
  {
    result = swift_allocObject();
    *(result + 16) = xmmword_2150C25D0;
    if (v13)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_18:
    *(result + 32) = a3;
    *(result + 40) = v6;
    return result;
  }

  result = swift_allocObject();
  *(result + 16) = xmmword_2150C29C0;
  if ((v13 & 1) == 0)
  {
    *(result + 32) = a3;
    *(result + 40) = v6;
    if (!__OFSUB__(v4, v11))
    {
      *(result + 48) = v11;
      *(result + 56) = v4 - v11;
      return result;
    }

    goto LABEL_41;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t _NSRange.difference(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  sub_214F6E3FC(sub_214F3057C, 0);

  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2150C25D0;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = *(v6 + 16);
  if (!v8)
  {
LABEL_18:

    return v7;
  }

  v9 = (v6 + 40);
  while (1)
  {
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_4;
    }

    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = (v10 - 1);
    v14 = v7 + 16 * (v10 - 1);
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    *(v7 + 16) = v13;
    v17 = _NSRange.difference(_:)(v11, v12, v15, v16);
    v18 = *(v17 + 16);
    v19 = &v13[v18];
    if (__OFADD__(v13, v18))
    {
      break;
    }

    if (v19 > *(v7 + 24) >> 1)
    {
      if (v13 <= v19)
      {
        v24 = &v13[v18];
      }

      else
      {
        v24 = v13;
      }

      v13 = v17;
      v7 = sub_215060510(1, v24, 1, v7);
      v17 = v13;
      if (*(v13 + 2))
      {
LABEL_9:
        v20 = *(v7 + 16);
        if ((*(v7 + 24) >> 1) - v20 < v18)
        {
          goto LABEL_21;
        }

        v13 = v17;
        memcpy((v7 + 16 * v20 + 32), (v17 + 32), 16 * v18);

        if (v18)
        {
          v21 = *(v7 + 16);
          v22 = __OFADD__(v21, v18);
          v23 = v21 + v18;
          if (v22)
          {
            goto LABEL_22;
          }

          *(v7 + 16) = v23;
        }

        goto LABEL_4;
      }
    }

    else if (v18)
    {
      goto LABEL_9;
    }

    if (v18)
    {
      goto LABEL_20;
    }

LABEL_4:
    v9 += 2;
    if (!--v8)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_215062A98(uint64_t a1)
{
  v2 = sub_2150A2F40();
  result = a1;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_15:

    if (v2 == sub_2150A2F40())
    {
      return 0;
    }

    else
    {
      return v2;
    }
  }

  v5 = 0;
  v6 = (result + 40);
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    if (v5 < 1)
    {
      v2 = *(v6 - 1);
      v5 = *v6;
      goto LABEL_4;
    }

    if (__OFADD__(v2, v5))
    {
      break;
    }

    v9 = __OFADD__(v7, v8);
    v10 = v7 + v8;
    if (v9)
    {
      goto LABEL_19;
    }

    if (v2 + v5 > v10)
    {
      v10 = v2 + v5;
    }

    if (v2 >= v7)
    {
      v2 = *(v6 - 1);
    }

    v5 = v10 - v2;
    if (__OFSUB__(v10, v2))
    {
      __break(1u);
      goto LABEL_15;
    }

LABEL_4:
    v6 += 2;
    if (!--v4)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t ActivityEventParticipant.isCurrentUser(resolver:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 8))(ObjectType, a2);
  if (v7 && (v8 = v7, v9 = [v7 cloudAccount], v8, v9))
  {
    v10 = [v9 userRecordName];

    v11 = sub_2150A4AD0();
    v13 = v12;

    if (v4 == v11 && v5 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_2150A6270();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void ActivityEventParticipant.shortName(resolver:)(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  ObjectType = swift_getObjectType();
  v10 = (*(a1 + 8))(ObjectType, a1);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v10 cloudAccount];

  if (!v12)
  {
    goto LABEL_8;
  }

  v26 = v7;
  v13 = [v12 userRecordName];

  v14 = sub_2150A4AD0();
  v16 = v15;

  if (v5 == v14 && v6 == v16)
  {

    goto LABEL_13;
  }

  v18 = sub_2150A6270();

  v7 = v26;
  if (v18)
  {
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

LABEL_8:
  v27 = v5;
  v28 = v6;
  v31 = 7105633;
  v32 = 0xE300000000000000;
  sub_214D6E6C4();
  if (sub_2150A58B0())
  {
    v27 = v5;
    v28 = v6;
    v29 = v8;
    v30 = v7;
    v19 = (*(a1 + 48))(&v27, ObjectType, a1);
    if (v19)
    {
      v20 = v19;
      v21 = [v19 ic_activityStreamDisplayName];

      v22 = sub_2150A4AD0();
      v24 = v23;

      *a2 = v22;
      a2[1] = v24;
      return;
    }

    v25 = xmmword_2150CBD40;
  }

  else
  {
    v25 = xmmword_2150C3470;
  }

  *a2 = v25;
}

uint64_t ActivityEventParticipant.Names.name.getter()
{
  if (v0[1] < 3)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t static ActivityEventParticipant.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270();
  }
}

NotesShared::ActivityEventParticipant __swiftcall ActivityEventParticipant.init(recordName:mentionRecordName:)(Swift::String recordName, Swift::String_optional mentionRecordName)
{
  object = mentionRecordName.value._object;
  countAndFlagsBits = mentionRecordName.value._countAndFlagsBits;
  v5 = recordName._object;
  v6 = recordName._countAndFlagsBits;
  v7 = v2;
  v8 = sub_2150A3A00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v9 + 8))(v11, v8);

  *v7 = v6;
  v7[1] = v5;
  v7[2] = countAndFlagsBits;
  v7[3] = object;
  result.mentionRecordName.value._object = v15;
  result.mentionRecordName.value._countAndFlagsBits = v14;
  result.recordName._object = v13;
  result.recordName._countAndFlagsBits = v12;
  return result;
}

void __swiftcall ActivityEventParticipant.init(cloudSyncingObject:)(NotesShared::ActivityEventParticipant_optional *__return_ptr retstr, ICCloudSyncingObject *cloudSyncingObject)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(ICCloudSyncingObject *)cloudSyncingObject cloudAccount];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 userRecordName];

    v11 = sub_2150A4AD0();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
      sub_2150A3990();

      (*(v5 + 8))(v7, v4);

      retstr->value.recordName._countAndFlagsBits = v11;
      retstr->value.recordName._object = v13;
      retstr->value.mentionRecordName.value._countAndFlagsBits = 0;
      retstr->value.mentionRecordName.value._object = 0;
      return;
    }
  }

  if (qword_280C242E0 != -1)
  {
    swift_once();
  }

  v15 = sub_2150A3F30();
  __swift_project_value_buffer(v15, qword_280C242E8);
  v16 = cloudSyncingObject;
  v17 = sub_2150A3F10();
  v18 = sub_2150A5550();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = [(ICCloudSyncingObject *)v16 objectID];
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&dword_214D51000, v17, v18, "Object must have an account — returning nil {objectID: %@}", v19, 0xCu);
    sub_214FA9D98(v20);
    MEMORY[0x216064AF0](v20, -1, -1);
    MEMORY[0x216064AF0](v19, -1, -1);
    v22 = v17;
  }

  else
  {
    v22 = v16;
    v16 = v17;
  }

  retstr->value.recordName = 0u;
  retstr->value.mentionRecordName = 0u;
}