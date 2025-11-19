uint64_t sub_225FFB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v6[13] = a5;
  v6[12] = a4;
  v6[11] = a1;
  v6[10] = v6;
  v12 = *(a6 - 8);
  v6[15] = v12;
  v7 = *(v12 + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = 0;
  v15 = 0;
  if (a2)
  {
    swift_getObjectType();
    v14 = sub_226099D48();
    v15 = v8;
  }

  v9 = *(v11 + 80);

  return MEMORY[0x2822009F8](sub_225FFB3D0, v14, v15);
}

uint64_t sub_225FFB3D0()
{
  v1 = v0[16];
  v6 = v0[14];
  v5 = v0[13];
  v4 = v0[12];
  v0[10] = v0;
  v0[2] = v0[10];
  v0[7] = v1;
  v0[3] = sub_225FFB494;
  v2 = swift_continuation_init();
  sub_22601DF3C(v2, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225FFB494()
{
  v4 = *v0;
  v6 = *v0;
  v6[10] = *v0;
  v5 = v4[16];
  v1 = v4[14];
  (*(v4[15] + 32))(v4[11]);

  v2 = *(v6[10] + 8);

  return v2();
}

uint64_t sub_225FFB648(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v18 = a2;
  v19 = &unk_2260A0EF0;
  v32 = 0;
  v31 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v3, v4, v5);
  v23 = &v15 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v17 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v6, v7, v8);
  v27 = &v15 - v17;
  v32 = v9;
  v31 = a2;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v18);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v10;
  v13 = v20;
  *(v12 + 16) = v18;
  *(v12 + 24) = v13;
  v29 = v11;
  v30 = v12;
  sub_226099DD8();
  (*(v21 + 8))(v23, v24);
  return (*(v25 + 8))(v27, v28);
}

uint64_t sub_225FFB84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a3;
  v3[17] = a2;
  v3[13] = v3;
  v3[14] = 0;
  v3[15] = 0;
  v3[16] = 0;
  v3[11] = 0;
  v3[12] = 0;
  v4 = sub_226098C58();
  v3[19] = v4;
  v8 = *(v4 - 8);
  v3[20] = v8;
  v5 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[14] = a2;
  v3[15] = a3;
  v6 = v3[13];

  return MEMORY[0x2822009F8](sub_225FFB970, 0, 0);
}

uint64_t sub_225FFB970()
{
  v55 = v0;
  v1 = v0[21];
  v31 = v0[20];
  v32 = v0[19];
  v33 = v0[17];
  v0[13] = v0;
  v2 = sub_225F7E9BC();
  (*(v31 + 16))(v1, v2, v32);
  MEMORY[0x277D82BE0](v33);
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  v48 = sub_226098C48();
  v49 = sub_22609A0A8();
  v38 = swift_allocObject();
  *(v38 + 16) = 64;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_225F3E198;
  *(v35 + 24) = v34;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_225F3E1C8;
  *(v40 + 24) = v35;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_225FFB60C;
  *(v36 + 24) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_225EF7B84;
  *(v43 + 24) = v36;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_225FFC8F8;
  *(v37 + 24) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225F2D374;
  *(v46 + 24) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v47 = v3;

  *v47 = sub_225EF7434;
  v47[1] = v38;

  v47[2] = sub_225EF7434;
  v47[3] = v39;

  v47[4] = sub_225F3E358;
  v47[5] = v40;

  v47[6] = sub_225EF7434;
  v47[7] = v41;

  v47[8] = sub_225EF7434;
  v47[9] = v42;

  v47[10] = sub_225EF7B90;
  v47[11] = v43;

  v47[12] = sub_225EF7434;
  v47[13] = v44;

  v47[14] = sub_225EF7434;
  v47[15] = v45;

  v47[16] = sub_225EF71D0;
  v47[17] = v46;
  sub_225EF5418();

  if (os_log_type_enabled(v48, v49))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v28 = sub_225EF5468(1);
    v29 = sub_225EF5468(1);
    v50 = buf;
    v51 = v28;
    v52 = v29;
    sub_225EF54BC(2, &v50);
    sub_225EF54BC(3, &v50);
    v53 = sub_225EF7434;
    v54 = v38;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v39;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225F3E358;
    v54 = v40;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v41;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v42;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7B90;
    v54 = v43;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v44;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF7434;
    v54 = v45;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    v53 = sub_225EF71D0;
    v54 = v46;
    sub_225EF73E8(&v53, &v50, &v51, &v52);
    _os_log_impl(&dword_225EEB000, v48, v49, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v28);
    sub_225EF7AF4(v29);
    sub_22609A168();
  }

  else
  {
  }

  v22 = v30[21];
  v23 = v30[19];
  v24 = v30[17];
  v21 = v30[20];
  MEMORY[0x277D82BD8](v48);
  (*(v21 + 8))(v22, v23);
  v25 = (v24 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v26 = *v25;
  v30[22] = *v25;

  swift_endAccess();
  if (v26)
  {
    v17 = v30[18];
    v18 = v30[17];
    v30[16] = v26;
    v14 = (v18 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
    swift_beginAccess();
    v15 = *v14;
    v30[23] = *v14;
    v16 = v14[1];
    v30[24] = v16;
    sub_2260215BC(v15);
    swift_endAccess();
    v30[11] = v15;
    v30[12] = v16;
    sub_2260215BC(v15);
    v4 = swift_allocObject();
    v4[2] = v15;
    v4[3] = v16;
    v4[4] = v17;
    v20 = v4;
    v19 = (v18 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
    swift_beginAccess();
    v5 = *v19;
    v6 = v19[1];
    *v19 = sub_226024814;
    v19[1] = v20;
    sub_2260215F0(v5);
    swift_endAccess();
    v7 = *(MEMORY[0x277CDCA38] + 4);
    v8 = swift_task_alloc();
    v30[25] = v8;
    *v8 = v30[13];
    v8[1] = sub_225FFC70C;

    return MEMORY[0x28212BBD8]();
  }

  else
  {
    v13 = v30[17];
    sub_225FFD4D8(v30[18]);
    sub_225FFC904(v13);
    v9 = v30[21];

    v10 = *(v30[13] + 8);
    v11 = v30[13];

    return v10();
  }
}

uint64_t sub_225FFC70C()
{
  v4 = *v0;
  v1 = *(*v0 + 200);
  *(v4 + 104) = *v0;

  v2 = *(v4 + 104);

  return MEMORY[0x2822009F8](sub_225FFC824, 0, 0);
}

uint64_t sub_225FFC824()
{
  v1 = v0[24];
  v2 = v0[23];
  v7 = v0[22];
  v8 = v0[17];
  v0[13] = v0;
  sub_2260215F0(v2);

  sub_225FFC904(v8);
  v3 = v0[21];

  v4 = *(v0[13] + 8);
  v5 = v0[13];

  return v4();
}

uint64_t sub_225FFC904(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_225FFB60C;
  v59 = sub_225EF7B84;
  v63 = sub_22601D4D4;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_225FFD51C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_2260215BC(a1);
  if (a1)
  {
    a1();
  }

  return sub_225FFD4D8(a3);
}

uint64_t sub_225FFD5C4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_2260215BC(*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD638(uint64_t a1, uint64_t a2)
{
  sub_2260215BC(a1);
  v6 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_2260215F0(v3);
  swift_endAccess();
  return sub_2260215F0(a1);
}

double sub_225FFD6D4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD738(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_225FFD7A4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD808(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225FFD874()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD8DC(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225FFD95C()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD9C4(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_225FFDA44()
{
  type metadata accessor for CESAPreviousEvaluationRecordStorage();
  result = sub_225F3DADC();
  qword_280D76448 = result;
  return result;
}

uint64_t *sub_225FFDA78()
{
  if (qword_280D76440 != -1)
  {
    swift_once();
  }

  return &qword_280D76448;
}

uint64_t sub_225FFDAD8()
{
  v1 = *sub_225FFDA78();

  return v1;
}

uint64_t sub_225FFDB10(void *a1)
{
  v8 = [a1 dictationUIInteractionIdentifier];
  if (v8)
  {
    v4 = sub_226099A08();
    v5 = v1;
    MEMORY[0x277D82BD8](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  if (v7)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = sub_226099AA8();
    v12 = v2;
  }

  return v11;
}

id sub_225FFDC20(void *a1, uint64_t a2)
{
  v66 = 0;
  v59 = 0;
  v68 = a1;
  v67 = a2;
  sub_226021624();
  v54 = [a1 language];
  if (v54)
  {
    v49 = sub_226099A08();
    v50 = v2;
    MEMORY[0x277D82BD8](v54);
    v51 = v49;
    v52 = v50;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  if (v52)
  {
    v47 = v51;
    v48 = v52;
  }

  else
  {
    LOBYTE(v12) = 2;
    v14 = 1785;
    LODWORD(v16) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v46 = [a1 task];
  if (v46)
  {
    v42 = sub_226099A08();
    v43 = v3;
    MEMORY[0x277D82BD8](v46);
    v44 = v42;
    v45 = v43;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  if (v45)
  {
    v40 = v44;
    v41 = v45;
  }

  else
  {
    LOBYTE(v13) = 2;
    v15 = 1786;
    LODWORD(v17) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v39 = [a1 loggingContext];
  if (v39)
  {
    v37 = sub_226099C88();
    MEMORY[0x277D82BD8](v39);
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v64 = v38;
  if (v38)
  {
    v65 = v64;
  }

  else
  {
    v65 = sub_22609A4F8();
  }

  v33 = v65;
  v34 = [a1 narrowband];
  v35 = [a1 farField];
  v36 = [a1 dictationUIInteractionIdentifier];
  if (v36)
  {
    v29 = sub_226099A08();
    v30 = v4;
    MEMORY[0x277D82BD8](v36);
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v60 = v31;
  v61 = v32;
  if (v32)
  {
    v62 = v60;
    v63 = v61;
  }

  else
  {
    v62 = sub_226099AA8();
    v63 = v5;
  }

  v27 = v62;
  v24 = v63;
  v25 = sub_226098A28();
  v26 = v6;
  v7 = sub_226099AA8();
  v28 = sub_225FFEAB4(v47, v48, v40, v41, v33, v34, v35, v27, v24, v25, v26, v7, v8, 1);
  v59 = v28;
  MEMORY[0x277D82BE0](v28);
  if (v28)
  {
    v23 = [a1 applicationName];
    if (v23)
    {
      v19 = sub_226099A08();
      v20 = v9;
      MEMORY[0x277D82BD8](v23);
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v55 = v21;
    v56 = v22;
    if (v22)
    {
      v57 = v55;
      v58 = v56;
    }

    else
    {
      v57 = sub_226099AA8();
      v58 = v10;
    }

    v18 = sub_2260999F8();

    [v28 setApplicationName_];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v28);
  }

  return v28;
}

uint64_t sub_225FFE2AC()
{
  v1 = [objc_opt_self() sharedPreferences];
  v2 = [v1 isDictationHIPAACompliant];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_225FFE31C(void *a1)
{
  if ([a1 narrowband])
  {
    v35 = 8000;
  }

  else
  {
    v35 = 16000;
  }

  type metadata accessor for CESABiomeDictationUserEditRecord();
  v32 = sub_226098A28();
  v33 = v1;
  v34 = [a1 dictationUIInteractionIdentifier];
  if (v34)
  {
    v28 = sub_226099A08();
    v29 = v2;
    MEMORY[0x277D82BD8](v34);
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  if (v31)
  {
    v26 = v30;
    v27 = v31;
  }

  else
  {
    LOBYTE(v6) = 2;
    v8 = 1803;
    LODWORD(v10) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v25 = [a1 language];
  if (v25)
  {
    v21 = sub_226099A08();
    v22 = v3;
    MEMORY[0x277D82BD8](v25);
    v23 = v21;
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (v24)
  {
    v19 = v23;
    v20 = v24;
  }

  else
  {
    LOBYTE(v7) = 2;
    v9 = 1804;
    LODWORD(v11) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v18 = [a1 task];
  if (v18)
  {
    v14 = sub_226099A08();
    v15 = v4;
    MEMORY[0x277D82BD8](v18);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v17)
  {
    return sub_2260308E8(v32, v33, v26, v27, v19, v20, v16, v17, v35);
  }

  sub_22609A3B8();
  __break(1u);
  return sub_2260308E8(v32, v33, v26, v27, v19, v20, v12, v13, v35);
}

uint64_t sub_225FFE720(void *a1)
{
  type metadata accessor for CESABiomeSiriDictationRecord();
  v32 = [a1 applicationName];
  if (v32)
  {
    v27 = sub_226099A08();
    v28 = v1;
    MEMORY[0x277D82BD8](v32);
    v29 = v27;
    v30 = v28;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  if (v30)
  {
    v25 = v29;
    v26 = v30;
  }

  else
  {
    LOBYTE(v5) = 2;
    v7 = 1812;
    LODWORD(v9) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v24 = [a1 dictationUIInteractionIdentifier];
  if (v24)
  {
    v20 = sub_226099A08();
    v21 = v2;
    MEMORY[0x277D82BD8](v24);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (v23)
  {
    v18 = v22;
    v19 = v23;
  }

  else
  {
    LOBYTE(v6) = 2;
    v8 = 1813;
    LODWORD(v10) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v17 = [a1 task];
  if (v17)
  {
    v13 = sub_226099A08();
    v14 = v3;
    MEMORY[0x277D82BD8](v17);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v16)
  {
    v11 = v15;
    v12 = v16;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226030980(v25, v26, v18, v19, v11, v12);
}

id sub_225FFEAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = sub_2260999F8();
  v21 = sub_2260999F8();
  v20 = sub_226099C78();
  v19 = sub_2260999F8();
  v18 = sub_2260999F8();
  v17 = sub_2260999F8();
  v23 = [swift_getObjCClassFromMetadata() recordWithLanguage:v22 task:v21 context:v20 narrowband:a6 & 1 farField:a7 & 1 interactionIdentifier:v19 asrSelfComponentIdentifier:v18 pluginId:v17 frequency:a14];
  MEMORY[0x277D82BD8](v17);

  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v19);

  MEMORY[0x277D82BD8](v20);

  MEMORY[0x277D82BD8](v21);

  MEMORY[0x277D82BD8](v22);

  return v23;
}

uint64_t sub_225FFEC88(uint64_t a1)
{
  v2[16] = v1;
  v2[15] = a1;
  v2[11] = v2;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v2[12] = a1;
  v2[13] = v1;
  v3 = v2[11];
  return MEMORY[0x2822009F8](sub_225FFECE0, 0, 0);
}

uint64_t sub_225FFECE0()
{
  v1 = *(v0 + 120);
  *(v0 + 88) = v0;
  if (v1)
  {
    goto LABEL_10;
  }

  v11 = (v12[16] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  if (*v11)
  {
    v2 = *v11;

    swift_endAccess();
    sub_226030FC4();
  }

  else
  {
    swift_endAccess();
  }

  v9 = (v12[16] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v10 = *v9;
  v12[17] = *v9;

  swift_endAccess();
  if (!v10)
  {
LABEL_10:
    v5 = *(v12[11] + 8);
    v6 = v12[11];

    return v5();
  }

  else
  {
    v12[14] = v10;
    v3 = sub_225FFDA78();
    v8 = *v3;
    v12[18] = *v3;

    v12[19] = *(v10 + 112);
    v12[20] = *(v10 + 120);
    sub_2260998E8();
    v4 = v12[11];

    return MEMORY[0x2822009F8](sub_225FFEF68, v8, 0);
  }
}

uint64_t sub_225FFEF68()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[18];
  v0[11] = v0;
  sub_225F39DF4(v2, v1);

  v4 = v0[11];

  return MEMORY[0x2822009F8](sub_225FFEFFC, 0, 0);
}

uint64_t sub_225FFEFFC()
{
  v7 = v0[17];
  v1 = v0[16];
  v0[11] = v0;
  v6 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v2 = *v6;
  *v6 = 0;

  swift_endAccess();

  v3 = *(v0[11] + 8);
  v4 = v0[11];

  return v3();
}

uint64_t sub_225FFF164()
{
  v25 = 0;
  v30 = 0;
  v21 = [objc_opt_self() processInfo];
  [v21 systemUptime];
  v23 = v1;

  v22 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  v24 = &v29;
  swift_beginAccess();
  *v22 = v23;
  swift_endAccess();
  v27 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  v26 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  if (!*v27)
  {
    return swift_endAccess();
  }

  v20 = *v26;

  swift_endAccess();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64);
  v19 = &v10;
  MEMORY[0x28223BE20](&v10, v2, v3, v4);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v10 - v12;
  sub_2260989F8();
  v13 = 0;
  v5 = sub_226098A08();
  (*(*(v5 - 8) + 56))(v18, 0, 1);
  v17 = &v10;
  MEMORY[0x28223BE20](v18, &v10, v6, v7);
  v14 = &v10 - v12;
  sub_226021688(v8, &v10 - v12);
  v15 = (v20 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  v16 = &v28;
  swift_beginAccess();
  sub_2260217B0(v14, v15);
  swift_endAccess();
  sub_2260219D8(v18);
}

uint64_t sub_225FFF3B4()
{
  v1[155] = v0;
  v1[136] = v1;
  v1[137] = 0;
  v1[138] = 0;
  v1[139] = 0;
  v1[140] = 0;
  v1[145] = 0;
  v1[150] = 0;
  v1[152] = 0;
  v1[153] = 0;
  v2 = sub_226098C58();
  v1[156] = v2;
  v6 = *(v2 - 8);
  v1[157] = v6;
  v3 = *(v6 + 64) + 15;
  v1[158] = swift_task_alloc();
  v1[137] = v0;
  v4 = v1[136];

  return MEMORY[0x2822009F8](sub_225FFF4C4, 0, 0);
}

uint64_t sub_225FFF4C4()
{
  v1 = v0[155];
  v0[136] = v0;
  v13 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v14 = *v13;
  v0[159] = *v13;

  swift_endAccess();
  if (v14)
  {
    v2 = v12[155];
    v12[138] = v14;
    v10 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
    swift_beginAccess();
    v11 = *v10;
    v12[160] = *v10;

    swift_endAccess();
    if (v11)
    {
      v12[139] = v11;

      type metadata accessor for CMTime();
      swift_asyncLet_begin();
      v3 = *(MEMORY[0x277CDCB58] + 4);
      v4 = swift_task_alloc();
      v12[161] = v4;
      *v4 = v12[136];
      v4[1] = sub_225FFF7B8;

      return MEMORY[0x28212BDC8]();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BA8, &qword_2260A0C80);
  sub_22609A4F8();
  sub_225F2D6D0();
  v9 = sub_2260998A8();
  v8 = v12[158];
  sub_2260215F0(0);

  v5 = *(v12[136] + 8);
  v6 = v12[136];

  return v5(v9);
}

uint64_t sub_225FFF7B8(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 136;
  v4 = *(*v2 + 1288);
  v10[136] = *v2;
  v10[162] = a1;
  v10[163] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_226001008;
  }

  else
  {
    v5 = *v9;
    v6 = sub_225FFF92C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_225FFF92C()
{
  v1 = v0[162];
  v0[136] = v0;
  v0[142] = v1;
  if (v0[142])
  {
    v7[141] = v7[142];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BB8, &unk_2260A0C98);
    sub_22609A4F8();
    sub_225F27014();
    v7[141] = sub_2260998A8();
    if (v7[142])
    {
      sub_225EFE6E8(v7 + 142);
    }
  }

  v2 = v7[159];
  v6 = v7[141];
  v7[164] = sub_225F27014();
  sub_225F2D6D0();
  v7[140] = sub_22609A3E8();

  v3 = *(MEMORY[0x277CDCB78] + 4);
  v4 = swift_task_alloc();
  v7[165] = v4;
  *v4 = v7[136];
  v4[1] = sub_225FFFB34;

  return MEMORY[0x28212BDE8]();
}

uint64_t sub_225FFFB34(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 136;
  v4 = *(*v2 + 1320);
  v10[136] = *v2;
  v10[166] = a1;
  v10[167] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_226001170;
  }

  else
  {
    v5 = *v9;
    v6 = sub_225FFFCA8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_225FFFCA8()
{
  v66 = v0;
  v1 = v0[166];
  v0[136] = v0;
  v0[144] = v1;
  if (v0[144])
  {
    *(v58 + 1144) = *(v58 + 1152);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
    sub_22609A4F8();
    *(v58 + 1144) = sub_2260998A8();
    if (*(v58 + 1152))
    {
      sub_225EFE6E8((v58 + 1152));
    }
  }

  v56 = *(v58 + 1144);
  *(v58 + 1344) = v56;
  *(v58 + 1160) = v56;
  v54 = sub_226099AA8();
  v55 = v2;
  *(v58 + 976) = sub_226099AA8();
  *(v58 + 984) = v3;
  sub_226099938();
  sub_225EFE6BC(v58 + 976);
  v57 = *(v58 + 960);
  if (*(v58 + 968))
  {
    v52 = sub_2260999F8();

    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  *(v58 + 1168) = v53;
  if (*(v58 + 1168))
  {
    v59 = *(v58 + 1168);
  }

  else
  {
    sub_225F7B844();
    v59 = sub_22609A138();
    if (*(v58 + 1168))
    {
      sub_225EFE834((v58 + 1168));
    }
  }

  *(v58 + 1176) = v59;
  *(v58 + 992) = v54;
  *(v58 + 1000) = v55;
  *(v58 + 1352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BC8, &qword_2260A0CA8);
  sub_226099948();
  v49 = sub_226099AA8();
  v50 = v4;
  *(v58 + 1024) = sub_226099AA8();
  *(v58 + 1032) = v5;
  sub_226099938();
  sub_225EFE6BC(v58 + 1024);
  v51 = *(v58 + 1008);
  if (*(v58 + 1016))
  {
    v47 = sub_2260999F8();

    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  *(v58 + 1184) = v48;
  if (*(v58 + 1184))
  {
    v60 = *(v58 + 1184);
  }

  else
  {
    sub_225F7B844();
    v60 = sub_22609A138();
    if (*(v58 + 1184))
    {
      sub_225EFE834((v58 + 1184));
    }
  }

  v43 = *(v58 + 1240);
  *(v58 + 1192) = v60;
  *(v58 + 1040) = v49;
  *(v58 + 1048) = v50;
  sub_226099948();
  v38 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  v41 = *v38;
  swift_endAccess();
  v39 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  v40 = *v39;
  swift_endAccess();
  *(v58 + 1200) = (v41 - v40) * *sub_225F7F6FC();
  v42 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  v45 = *v42;
  swift_endAccess();
  v44 = (v43 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  v46 = *v44;
  swift_endAccess();
  if (v46 < v45)
  {
    v6 = *(v58 + 1264);
    v23 = *(v58 + 1248);
    v24 = *(v58 + 1240);
    v22 = *(v58 + 1256);
    v7 = sub_225F7E9BC();
    (*(v22 + 16))(v6, v7, v23);
    MEMORY[0x277D82BE0](v24);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    MEMORY[0x277D82BE0](v24);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    oslog = sub_226098C48();
    v37 = sub_22609A098();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_226021B3C;
    *(v26 + 24) = v25;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_226021B74;
    *(v31 + 24) = v26;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_226021B44;
    *(v28 + 24) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_226021B74;
    *(v34 + 24) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v35 = v8;

    *v35 = sub_225EF7434;
    v35[1] = v29;

    v35[2] = sub_225EF7434;
    v35[3] = v30;

    v35[4] = sub_226021BEC;
    v35[5] = v31;

    v35[6] = sub_225EF7434;
    v35[7] = v32;

    v35[8] = sub_225EF7434;
    v35[9] = v33;

    v35[10] = sub_226021BEC;
    v35[11] = v34;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v37))
    {
      v9 = *(v58 + 1336);
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v20 = sub_225EF5468(0);
      v21 = sub_225EF5468(0);
      v61 = buf;
      v62 = v20;
      v63 = v21;
      sub_225EF54BC(0, &v61);
      sub_225EF54BC(2, &v61);
      v64 = sub_225EF7434;
      v65 = v29;
      sub_225EF73E8(&v64, &v61, &v62, &v63);
      if (v9)
      {
      }

      v64 = sub_225EF7434;
      v65 = v30;
      sub_225EF73E8(&v64, &v61, &v62, &v63);
      v64 = sub_226021BEC;
      v65 = v31;
      sub_225EF73E8(&v64, &v61, &v62, &v63);
      v64 = sub_225EF7434;
      v65 = v32;
      sub_225EF73E8(&v64, &v61, &v62, &v63);
      v64 = sub_225EF7434;
      v65 = v33;
      sub_225EF73E8(&v64, &v61, &v62, &v63);
      v64 = sub_226021BEC;
      v65 = v34;
      sub_225EF73E8(&v64, &v61, &v62, &v63);
      _os_log_impl(&dword_225EEB000, oslog, v37, "recognitionBeginTime (%f is greater than recognitionEndTime (%f", buf, 0x16u);
      sub_225EF7AF4(v20);
      sub_225EF7AF4(v21);
      sub_22609A168();
    }

    else
    {
    }

    v17 = *(v58 + 1264);
    v18 = *(v58 + 1248);
    v16 = *(v58 + 1256);
    MEMORY[0x277D82BD8](oslog);
    (*(v16 + 8))(v17, v18);
    *(v58 + 1200) = -1.0;
  }

  v11 = *(v58 + 1312);
  v14 = sub_226099AA8();
  v15 = v12;
  *(v58 + 1208) = sub_225F26494();
  *(v58 + 1056) = v14;
  *(v58 + 1064) = v15;
  sub_226099948();
  v13 = *(v58 + 1088);

  return MEMORY[0x282200928](v58 + 16, v58 + 1368, sub_226000D40, v58 + 784);
}

uint64_t sub_226000D40()
{
  *(v0 + 1088) = v0;
  v1 = *(v0 + 1088);
  return MEMORY[0x2822009F8](sub_226000D70, 0, 0);
}

uint64_t sub_226000D70()
{
  v9 = *(v0 + 1352);
  v10 = *(v0 + 1344);
  v1 = *(v0 + 1312);
  *(v0 + 1088) = v0;
  v12 = *(v0 + 1368);
  v13 = *(v0 + 1376);
  v14 = *(v0 + 1384);
  sub_22609A0F8();
  *(v0 + 1216) = v2;
  *(v0 + 1224) = v2 * *sub_225F7F6FC();
  v7 = sub_226099AA8();
  v8 = v3;
  *(v0 + 1232) = sub_225F26494();
  *(v0 + 1072) = v7;
  *(v0 + 1080) = v8;
  sub_226099948();
  *(v0 + 1360) = *(v0 + 1120);
  sub_2260998E8();

  sub_225EFE6E8((v0 + 1120));
  v4 = v0 + 1368;
  v5 = *(v11 + 1088);

  return MEMORY[0x282200920](v11 + 16, v4, sub_226000ED4, v11 + 848);
}

uint64_t sub_226000ED4()
{
  *(v0 + 1088) = v0;
  v1 = *(v0 + 1088);
  return MEMORY[0x2822009F8](sub_226000F04, 0, 0);
}

uint64_t sub_226000F04()
{
  v5 = v0[160];
  v6 = v0[159];
  v0[136] = v0;

  v8 = v0[170];
  v1 = v0[160];
  v7 = v0[158];
  sub_2260215F0(&unk_2260A0C90);

  v2 = *(v0[136] + 8);
  v3 = v0[136];

  return v2(v8);
}

uint64_t sub_226001008()
{
  v1 = v0;
  *(v0 + 1088) = v0;
  v2 = *(v0 + 1088);
  return MEMORY[0x282200920](v1 + 16, v1 + 1368, sub_226001040, v1 + 656);
}

uint64_t sub_226001040()
{
  *(v0 + 1088) = v0;
  v1 = *(v0 + 1088);
  return MEMORY[0x2822009F8](sub_226001070, 0, 0);
}

uint64_t sub_226001070()
{
  v6 = v0[160];
  v7 = v0[159];
  v0[136] = v0;

  v1 = v0[163];
  v2 = v0[160];
  v8 = v0[158];
  sub_2260215F0(&unk_2260A0C90);

  v3 = *(v0[136] + 8);
  v4 = v0[136];

  return v3();
}

uint64_t sub_226001170()
{
  *(v0 + 1088) = v0;
  sub_225EFE6E8((v0 + 1120));
  v1 = *(v3 + 1088);

  return MEMORY[0x282200920](v3 + 16, v3 + 1368, sub_2260011F0, v3 + 720);
}

uint64_t sub_2260011F0()
{
  *(v0 + 1088) = v0;
  v1 = *(v0 + 1088);
  return MEMORY[0x2822009F8](sub_226001220, 0, 0);
}

uint64_t sub_226001220()
{
  v6 = v0[160];
  v7 = v0[159];
  v0[136] = v0;

  v1 = v0[167];
  v2 = v0[160];
  v8 = v0[158];
  sub_2260215F0(&unk_2260A0C90);

  v3 = *(v0[136] + 8);
  v4 = v0[136];

  return v3();
}

uint64_t sub_226001320(uint64_t a1, uint64_t *a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v6 = *a2;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = a2;
  sub_22601FAFC();
  v7 = sub_226099D48();
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_2260013E8, v7, v3);
}

uint64_t sub_2260013E8()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = v0;
  sub_226098CC8();
  v2 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_226001460, 0, 0);
}

uint64_t sub_226001460()
{
  *(v0 + 16) = v0;
  memcpy((v0 + 48), (v0 + 100), 0x31uLL);
  if (*(v0 + 96))
  {
    v8 = 0uLL;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    memcpy(v11 + 19, v11 + 6, 0x30uLL);
    *&v8 = sub_22609A068();
    *(&v8 + 1) = v1;
    v9 = v2;
    v10 = 0;
  }

  if (v10)
  {
    v4 = v11[4];
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 12) = 0;
    *(v4 + 16) = 0;
  }

  else
  {
    v3 = v11[4];
    *v3 = v8;
    *(v3 + 16) = v9;
  }

  v5 = *(v11[2] + 8);
  v6 = v11[2];

  return v5();
}

double sub_226001644(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_2260016A0(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t static CoreEmbeddedSpeechAnalyzer.send(speechCorrectionInfo:interactionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v20 = a2;
  v21 = a3;
  v24 = &unk_2260A0CB8;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v20, v21, v4);
  v23 = &v18 - v19;
  v29 = v5;
  v27 = v6;
  v28 = v7;
  v26 = v3;
  v22 = 0;
  v8 = sub_226099DA8();
  (*(*(v8 - 8) + 56))(v23, 1);
  MEMORY[0x277D82BE0](v25);
  sub_2260998E8();
  v9 = swift_allocObject();
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v9;
  v16 = v25;
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v16;
  v15[5] = v10;
  v15[6] = v11;
  sub_225F38F2C(v12, v12, v13, v14, v15, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_22600188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[7] = a5;
  v6[6] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  v7 = v6[4];
  return MEMORY[0x2822009F8](sub_2260018E8, 0, 0);
}

uint64_t sub_2260018E8()
{
  *(v0 + 32) = v0;
  *(v0 + 72) = *sub_225FFDA78();

  v1 = swift_task_alloc();
  v6[10] = v1;
  *v1 = v6[4];
  v1[1] = sub_2260019B0;
  v2 = v6[8];
  v3 = v6[7];
  v4 = v6[6];

  return sub_225F3BBE8(v4, v3, v2);
}

uint64_t sub_2260019B0()
{
  v5 = *v0;
  v1 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  *(v5 + 32) = *v0;

  v2 = *(*(v5 + 32) + 8);

  return v2();
}

uint64_t static CoreEmbeddedSpeechAnalyzer.send(visualContextAndCorrectionsInfo:interactionIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v463 = a3;
  v451 = a2;
  v450 = a1;
  v448 = 0;
  v504 = 0;
  v503 = 0;
  v502 = 0;
  v501 = 0;
  v449 = 0;
  v496 = 0;
  v495 = 0;
  v494 = 0;
  v488 = 0;
  v487 = 0;
  v486 = 0;
  v480 = 0;
  v479 = 0;
  v452 = sub_226098C58();
  v453 = *(v452 - 8);
  v454 = v453;
  v459 = *(v453 + 64);
  MEMORY[0x28223BE20](v463, v451, v452, v4);
  v461 = (v459 + 15) & 0xFFFFFFFFFFFFFFF0;
  v455 = &v168 - v461;
  MEMORY[0x28223BE20](v5, v6, &v168 - v461, v7);
  v456 = &v168 - v461;
  MEMORY[0x28223BE20](v8, v9, &v168 - v461, v10);
  v457 = &v168 - v461;
  MEMORY[0x28223BE20](v11, v12, &v168 - v461, v13);
  v458 = &v168 - v461;
  MEMORY[0x28223BE20](v14, v15, &v168 - v461, v16);
  v460 = &v168 - v461;
  MEMORY[0x28223BE20](v17, v18, &v168 - v461, v19);
  v462 = &v168 - v461;
  v504 = v20;
  v502 = v21;
  v503 = v22;
  v501 = v3;
  sub_2260998E8();
  if (!v463)
  {
    v160 = v455;
    v161 = sub_225F7E9BC();
    (*(v454 + 16))(v160, v161, v452);
    v188 = sub_226098C48();
    v185 = v188;
    v187 = sub_22609A098();
    v186 = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v189 = sub_22609A4F8();
    if (os_log_type_enabled(v188, v187))
    {
      v162 = v449;
      v176 = sub_22609A188();
      v172 = v176;
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v174 = 0;
      v177 = sub_225EF5468(0);
      v175 = v177;
      v178 = sub_225EF5468(v174);
      v500 = v176;
      v499 = v177;
      v498 = v178;
      v179 = 0;
      v180 = &v500;
      sub_225EF54BC(0, &v500);
      sub_225EF54BC(v179, v180);
      v497 = v189;
      v181 = &v168;
      MEMORY[0x28223BE20](&v168, v163, v164, v165);
      v182 = &v168 - 6;
      *(&v168 - 4) = v166;
      *(&v168 - 3) = &v499;
      *(&v168 - 2) = &v498;
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v184 = v162;
      if (v162)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v185, v186, "interactionIdentifier is nil ..", v172, 2u);
        v170 = 0;
        sub_225EF7AF4(v175);
        sub_225EF7AF4(v178);
        sub_22609A168();

        v171 = v184;
      }
    }

    else
    {

      v171 = v449;
    }

    v169 = v171;

    (*(v454 + 8))(v455, v452);
    return v169;
  }

  v445 = v451;
  v446 = v463;
  v23 = v462;
  v424 = v463;
  v423 = v451;
  v495 = v451;
  v496 = v463;
  v24 = sub_225F7E9BC();
  v421 = *(v454 + 16);
  v422 = (v454 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v421(v23, v24, v452);
  sub_2260998E8();
  v427 = 32;
  v431 = 32;
  v432 = 7;
  v25 = swift_allocObject();
  v26 = v424;
  v433 = v25;
  *(v25 + 16) = v423;
  *(v25 + 24) = v26;
  v444 = sub_226098C48();
  v425 = v444;
  v443 = sub_22609A0A8();
  v426 = v443;
  v428 = 17;
  v437 = swift_allocObject();
  v429 = v437;
  *(v437 + 16) = v427;
  v438 = swift_allocObject();
  v430 = v438;
  *(v438 + 16) = 8;
  v27 = swift_allocObject();
  v28 = v433;
  v434 = v27;
  *(v27 + 16) = sub_226021CE8;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v434;
  v441 = v29;
  v435 = v29;
  *(v29 + 16) = sub_225EF7B84;
  *(v29 + 24) = v30;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v436 = v442;
  v439 = sub_22609A4F8();
  v440 = v31;

  v32 = v437;
  v33 = v440;
  *v440 = sub_225EF7434;
  v33[1] = v32;

  v34 = v438;
  v35 = v440;
  v440[2] = sub_225EF7434;
  v35[3] = v34;

  v36 = v440;
  v37 = v441;
  v440[4] = sub_225EF7B90;
  v36[5] = v37;
  sub_225EF5418();

  if (os_log_type_enabled(v444, v443))
  {
    v38 = v449;
    v414 = sub_22609A188();
    v411 = v414;
    v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v415 = sub_225EF5468(0);
    v413 = v415;
    v417 = 1;
    v416 = sub_225EF5468(1);
    v468 = v414;
    v467 = v415;
    v466 = v416;
    v418 = &v468;
    sub_225EF54BC(2, &v468);
    sub_225EF54BC(v417, v418);
    v464 = sub_225EF7434;
    v465 = v429;
    sub_225EF73E8(&v464, v418, &v467, &v466);
    v419 = v38;
    v420 = v38;
    if (v38)
    {
      v409 = 0;

      __break(1u);
    }

    else
    {
      v464 = sub_225EF7434;
      v465 = v430;
      sub_225EF73E8(&v464, &v468, &v467, &v466);
      v407 = 0;
      v408 = 0;
      v464 = sub_225EF7B90;
      v465 = v435;
      sub_225EF73E8(&v464, &v468, &v467, &v466);
      v405 = 0;
      v406 = 0;
      _os_log_impl(&dword_225EEB000, v425, v426, "Received visual context for interactionId:%s", v411, 0xCu);
      sub_225EF7AF4(v413);
      sub_225EF7AF4(v416);
      sub_22609A168();

      v410 = v405;
    }
  }

  else
  {
    v39 = v449;

    v410 = v39;
  }

  v40 = v410;

  v386 = *(v454 + 8);
  v387 = (v454 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v386(v462, v452);
  v388 = sub_226098A78();
  v389 = *(v388 - 8);
  v390 = v389;
  v391 = *(v389 + 64);
  v392 = &v168;
  MEMORY[0x28223BE20](&v168, v388, v41, v42);
  v393 = &v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = v393;
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BD0, &qword_2260A0CC0) - 8) + 64);
  v394 = &v168;
  v395 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v168, v45, v46, v47);
  v396 = &v168 - v395;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BD8, &qword_2260A0CC8);
  v48 = *(*(v397 - 8) + 64);
  v398 = &v168;
  v399 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v168, v397, v49, v50);
  v403 = &v168 - v399;
  v400 = &v168 - v399;
  v402 = sub_225F834E0();
  v401 = v402;
  sub_2260998E8();
  os_unfair_lock_lock(v402);
  sub_2260045BC(&v402[2], v423, v424);
  v404 = v40;
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
    sub_225F1CB98(v401);

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
    sub_225F1CB98(v401);

    v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
    if ((*(*(v385 - 8) + 48))(v400, 1) == 1)
    {
      sub_226021CF4(v400);
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BE0, &qword_2260A0CD0);
      (*(*(v142 - 8) + 56))(v396, 1);
      goto LABEL_12;
    }
  }

  v51 = (v400 + *(v385 + 48));
  v381 = *v51;
  v383 = v51[1];
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BE0, &qword_2260A0CD0);
  v382 = (v396 + *(v384 + 48));
  (*(v390 + 32))();
  v52 = v382;
  v53 = v383;
  v54 = v384;
  v55 = v396;
  *v382 = v381;
  v52[1] = v53;
  (*(*(v54 - 8) + 56))(v55, 0, 1);
LABEL_12:
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BE0, &qword_2260A0CD0);
  if ((*(*(v380 - 8) + 48))(v396, 1) == 1)
  {
    v143 = v456;
    sub_226021DC0(v396);
    v144 = sub_225F7E9BC();
    v421(v143, v144, v452);
    sub_2260998E8();
    v209 = 32;
    v213 = 32;
    v214 = 7;
    v145 = swift_allocObject();
    v146 = v424;
    v215 = v145;
    *(v145 + 16) = v423;
    *(v145 + 24) = v146;
    v224 = sub_226098C48();
    v207 = v224;
    v223 = sub_22609A098();
    v208 = v223;
    v210 = 17;
    v218 = swift_allocObject();
    v211 = v218;
    *(v218 + 16) = v209;
    v219 = swift_allocObject();
    v212 = v219;
    *(v219 + 16) = 8;
    v147 = swift_allocObject();
    v148 = v215;
    v216 = v147;
    *(v147 + 16) = sub_225EF7450;
    *(v147 + 24) = v148;
    v149 = swift_allocObject();
    v150 = v216;
    v222 = v149;
    v217 = v149;
    *(v149 + 16) = sub_225EF7B84;
    *(v149 + 24) = v150;
    v220 = sub_22609A4F8();
    v221 = v151;

    v152 = v218;
    v153 = v221;
    *v221 = sub_225EF7434;
    v153[1] = v152;

    v154 = v219;
    v155 = v221;
    v221[2] = sub_225EF7434;
    v155[3] = v154;

    v156 = v221;
    v157 = v222;
    v221[4] = sub_225EF7B90;
    v156[5] = v157;
    sub_225EF5418();

    if (os_log_type_enabled(v224, v223))
    {
      v158 = v404;
      v200 = sub_22609A188();
      v197 = v200;
      v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v201 = sub_225EF5468(0);
      v199 = v201;
      v203 = 1;
      v202 = sub_225EF5468(1);
      v493 = v200;
      v492 = v201;
      v491 = v202;
      v204 = &v493;
      sub_225EF54BC(2, &v493);
      sub_225EF54BC(v203, v204);
      v489 = sub_225EF7434;
      v490 = v211;
      sub_225EF73E8(&v489, v204, &v492, &v491);
      v205 = v158;
      v206 = v158;
      if (v158)
      {
        v195 = 0;

        __break(1u);
      }

      else
      {
        v489 = sub_225EF7434;
        v490 = v212;
        sub_225EF73E8(&v489, &v493, &v492, &v491);
        v193 = 0;
        v194 = 0;
        v489 = sub_225EF7B90;
        v490 = v217;
        sub_225EF73E8(&v489, &v493, &v492, &v491);
        v191 = 0;
        v192 = 0;
        _os_log_impl(&dword_225EEB000, v207, v208, "Could not find asrID for interaction %s", v197, 0xCu);
        sub_225EF7AF4(v199);
        sub_225EF7AF4(v202);
        sub_22609A168();

        v196 = v191;
      }
    }

    else
    {
      v159 = v404;

      v196 = v159;
    }

    v190 = v196;

    v386(v456, v452);

    return v190;
  }

  v56 = (v396 + *(v380 + 48));
  v377 = *v56;
  v373 = v377;
  v378 = v56[1];
  v374 = v378;
  v375 = *(v390 + 32);
  v376 = (v390 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v375(v393);
  v487 = v377;
  v488 = v378;
  v379 = AFDiagnosticsSubmissionAllowed();
  v486 = v379;
  type metadata accessor for CoreEmbeddedSpeechAnalyzer();
  if (sub_225F7E648())
  {
    v372 = v379;
  }

  else
  {
    v372 = 0;
  }

  if ((v372 & 1) == 0)
  {
    v110 = v457;
    v111 = sub_225F7E9BC();
    v421(v110, v111, v452);
    v258 = 17;
    v265 = 7;
    v262 = swift_allocObject();
    *(v262 + 16) = v379 & 1;
    v278 = sub_226098C48();
    v249 = v278;
    v277 = sub_22609A078();
    v250 = v277;
    v269 = swift_allocObject();
    v251 = v269;
    v257 = 0;
    *(v269 + 16) = 0;
    v270 = swift_allocObject();
    v252 = v270;
    v260 = 4;
    *(v270 + 16) = 4;
    v264 = 32;
    v112 = swift_allocObject();
    v253 = v112;
    *(v112 + 16) = sub_22600467C;
    *(v112 + 24) = 0;
    v113 = swift_allocObject();
    v114 = v253;
    v254 = v113;
    *(v113 + 16) = sub_225EF70FC;
    *(v113 + 24) = v114;
    v115 = swift_allocObject();
    v116 = v254;
    v255 = v115;
    *(v115 + 16) = sub_225EF7108;
    *(v115 + 24) = v116;
    v117 = swift_allocObject();
    v118 = v255;
    v271 = v117;
    v256 = v117;
    *(v117 + 16) = sub_225EF7150;
    *(v117 + 24) = v118;
    v272 = swift_allocObject();
    v259 = v272;
    *(v272 + 16) = v257;
    v273 = swift_allocObject();
    v261 = v273;
    *(v273 + 16) = v260;
    v119 = swift_allocObject();
    v120 = v262;
    v263 = v119;
    *(v119 + 16) = sub_225EF3E24;
    *(v119 + 24) = v120;
    v121 = swift_allocObject();
    v122 = v263;
    v266 = v121;
    *(v121 + 16) = sub_225EF70FC;
    *(v121 + 24) = v122;
    v123 = swift_allocObject();
    v124 = v266;
    v267 = v123;
    *(v123 + 16) = sub_225EF7108;
    *(v123 + 24) = v124;
    v125 = swift_allocObject();
    v126 = v267;
    v276 = v125;
    v268 = v125;
    *(v125 + 16) = sub_225EF7150;
    *(v125 + 24) = v126;
    v274 = sub_22609A4F8();
    v275 = v127;

    v128 = v269;
    v129 = v275;
    *v275 = sub_225EF7434;
    v129[1] = v128;

    v130 = v270;
    v131 = v275;
    v275[2] = sub_225EF7434;
    v131[3] = v130;

    v132 = v271;
    v133 = v275;
    v275[4] = sub_225EF715C;
    v133[5] = v132;

    v134 = v272;
    v135 = v275;
    v275[6] = sub_225EF7434;
    v135[7] = v134;

    v136 = v273;
    v137 = v275;
    v275[8] = sub_225EF7434;
    v137[9] = v136;

    v138 = v275;
    v139 = v276;
    v275[10] = sub_225EF715C;
    v138[11] = v139;
    sub_225EF5418();

    if (os_log_type_enabled(v278, v277))
    {
      v140 = v404;
      v243 = sub_22609A188();
      v239 = v243;
      v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v241 = 0;
      v244 = sub_225EF5468(0);
      v242 = v244;
      v245 = sub_225EF5468(v241);
      v485 = v243;
      v484 = v244;
      v483 = v245;
      v246 = &v485;
      sub_225EF54BC(0, &v485);
      sub_225EF54BC(2, v246);
      v481 = sub_225EF7434;
      v482 = v251;
      sub_225EF73E8(&v481, v246, &v484, &v483);
      v247 = v140;
      v248 = v140;
      if (v140)
      {
        v237 = 0;

        __break(1u);
      }

      else
      {
        v481 = sub_225EF7434;
        v482 = v252;
        sub_225EF73E8(&v481, &v485, &v484, &v483);
        v235 = 0;
        v236 = 0;
        v481 = sub_225EF715C;
        v482 = v256;
        sub_225EF73E8(&v481, &v485, &v484, &v483);
        v233 = 0;
        v234 = 0;
        v481 = sub_225EF7434;
        v482 = v259;
        sub_225EF73E8(&v481, &v485, &v484, &v483);
        v231 = 0;
        v232 = 0;
        v481 = sub_225EF7434;
        v482 = v261;
        sub_225EF73E8(&v481, &v485, &v484, &v483);
        v229 = 0;
        v230 = 0;
        v481 = sub_225EF715C;
        v482 = v268;
        sub_225EF73E8(&v481, &v485, &v484, &v483);
        v227 = 0;
        v228 = 0;
        _os_log_impl(&dword_225EEB000, v249, v250, "Skipping metrics computation with visual context as both Siri opt-in (%{BOOL}d) and diagnostics submission (%{BOOL}d) must be enabled.", v239, 0xEu);
        v226 = 0;
        sub_225EF7AF4(v242);
        sub_225EF7AF4(v245);
        sub_22609A168();

        v238 = v227;
      }
    }

    else
    {
      v141 = v404;

      v238 = v141;
    }

    v225 = v238;

    v386(v457, v452);

    (*(v390 + 8))(v393, v388);

    return v225;
  }

  v57 = v460;
  v58 = sub_225F7E9BC();
  v421(v57, v58, v452);
  v343 = &v168;
  v60 = MEMORY[0x28223BE20](&v168, v393, v388, v59);
  v342 = &v168 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(v390 + 16);
  v339 = v390 + 16;
  v337 = v62;
  v338 = (v390 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v62(v60);
  v340 = *(v339 + 64);
  v341 = (v340 + 16) & ~v340;
  v344 = swift_allocObject();
  (v375)(v344 + v341, v342, v388);

  v352 = 32;
  v357 = 32;
  v358 = 7;
  v63 = swift_allocObject();
  v64 = v344;
  v349 = v63;
  *(v63 + 16) = sub_225F7CD90;
  *(v63 + 24) = v64;

  sub_2260998E8();
  v65 = swift_allocObject();
  v66 = v374;
  v359 = v65;
  *(v65 + 16) = v373;
  *(v65 + 24) = v66;
  v371 = sub_226098C48();
  v345 = v371;
  v370 = sub_22609A0A8();
  v346 = v370;
  v353 = 17;
  v362 = swift_allocObject();
  v347 = v362;
  *(v362 + 16) = v352;
  v363 = swift_allocObject();
  v348 = v363;
  v355 = 8;
  *(v363 + 16) = 8;
  v67 = swift_allocObject();
  v68 = v349;
  v350 = v67;
  *(v67 + 16) = sub_225F7CE04;
  *(v67 + 24) = v68;
  v69 = swift_allocObject();
  v70 = v350;
  v364 = v69;
  v351 = v69;
  *(v69 + 16) = sub_225EF7B84;
  *(v69 + 24) = v70;
  v365 = swift_allocObject();
  v354 = v365;
  *(v365 + 16) = v352;
  v366 = swift_allocObject();
  v356 = v366;
  *(v366 + 16) = v355;
  v71 = swift_allocObject();
  v72 = v359;
  v360 = v71;
  *(v71 + 16) = sub_225EF7450;
  *(v71 + 24) = v72;
  v73 = swift_allocObject();
  v74 = v360;
  v369 = v73;
  v361 = v73;
  *(v73 + 16) = sub_225EF7B84;
  *(v73 + 24) = v74;
  v367 = sub_22609A4F8();
  v368 = v75;

  v76 = v362;
  v77 = v368;
  *v368 = sub_225EF7434;
  v77[1] = v76;

  v78 = v363;
  v79 = v368;
  v368[2] = sub_225EF7434;
  v79[3] = v78;

  v80 = v364;
  v81 = v368;
  v368[4] = sub_225EF7B90;
  v81[5] = v80;

  v82 = v365;
  v83 = v368;
  v368[6] = sub_225EF7434;
  v83[7] = v82;

  v84 = v366;
  v85 = v368;
  v368[8] = sub_225EF7434;
  v85[9] = v84;

  v86 = v368;
  v87 = v369;
  v368[10] = sub_225EF7B90;
  v86[11] = v87;
  sub_225EF5418();

  if (os_log_type_enabled(v371, v370))
  {
    v88 = v404;
    v330 = sub_22609A188();
    v327 = v330;
    v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v331 = sub_225EF5468(0);
    v329 = v331;
    v333 = 2;
    v332 = sub_225EF5468(2);
    v473[0] = v330;
    v472 = v331;
    v471 = v332;
    v334 = v473;
    sub_225EF54BC(v333, v473);
    sub_225EF54BC(v333, v334);
    v469 = sub_225EF7434;
    v470 = v347;
    sub_225EF73E8(&v469, v334, &v472, &v471);
    v335 = v88;
    v336 = v88;
    if (v88)
    {
      v325 = 0;

      __break(1u);
    }

    else
    {
      v469 = sub_225EF7434;
      v470 = v348;
      sub_225EF73E8(&v469, v473, &v472, &v471);
      v323 = 0;
      v324 = 0;
      v469 = sub_225EF7B90;
      v470 = v351;
      sub_225EF73E8(&v469, v473, &v472, &v471);
      v321 = 0;
      v322 = 0;
      v469 = sub_225EF7434;
      v470 = v354;
      sub_225EF73E8(&v469, v473, &v472, &v471);
      v319 = 0;
      v320 = 0;
      v469 = sub_225EF7434;
      v470 = v356;
      sub_225EF73E8(&v469, v473, &v472, &v471);
      v317 = 0;
      v318 = 0;
      v469 = sub_225EF7B90;
      v470 = v361;
      sub_225EF73E8(&v469, v473, &v472, &v471);
      v315 = 0;
      v316 = 0;
      _os_log_impl(&dword_225EEB000, v345, v346, "Using asrID %s and language %s to compute metrics for visual context", v327, 0x16u);
      sub_225EF7AF4(v329);
      sub_225EF7AF4(v332);
      sub_22609A168();

      v326 = v315;
    }
  }

  else
  {
    v89 = v404;

    v326 = v89;
  }

  v90 = v326;

  v386(v460, v452);
  sub_2260998E8();
  v91 = v450;
  v311 = &v168;
  v93 = MEMORY[0x28223BE20](&v168, v393, v388, v92);
  v308 = &v168 - ((v391 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94(v93);
  v307 = (v340 + 40) & ~v340;
  v95 = swift_allocObject();
  v96 = v374;
  v97 = v450;
  v98 = v307;
  v99 = v308;
  v100 = v388;
  v101 = v375;
  v310 = v95;
  v309 = v95;
  v95[2] = v373;
  v95[3] = v96;
  v95[4] = v97;
  v101(v95 + v98, v99, v100);
  v479 = &unk_2260A0CE0;
  v480 = v310;
  v313 = sub_225F835AC();
  v312 = v313;
  os_unfair_lock_lock(v313);
  sub_226005FAC(&v313[2], &v478);
  v314 = v90;
  if (v90)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
    sub_225F1CB98(v312);
    __break(1u);
  }

  else
  {
    v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
    sub_225F1CB98(v312);
    v477 = v478;
    if (!v478)
    {
      v305 = 1;
      goto LABEL_28;
    }
  }

  v305 = 0;
LABEL_28:
  v304 = v305;
  sub_225EF5A0C(&v477);
  if (v304)
  {
    v102 = v314;
    v302 = sub_225F835AC();
    v301 = v302;

    os_unfair_lock_lock(v302);
    sub_226005FE4(&v302[2], &unk_2260A0CE0, v309, v447);
    v303 = v102;
    if (!v102)
    {
      sub_225F1CB98(v301);

      (*(v390 + 8))(v393, v388);

      return v303;
    }

    sub_225F1CB98(v301);

    __break(1u);
  }

  v103 = v458;
  v104 = sub_225F7E9BC();
  v421(v103, v104, v452);
  v298 = sub_226098C48();
  v295 = v298;
  v297 = sub_22609A0A8();
  v296 = v297;
  v299 = sub_22609A4F8();
  if (os_log_type_enabled(v298, v297))
  {
    v105 = v314;
    v286 = sub_22609A188();
    v282 = v286;
    v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v284 = 0;
    v287 = sub_225EF5468(0);
    v285 = v287;
    v288 = sub_225EF5468(v284);
    v476 = v286;
    v475 = v287;
    v474 = v288;
    v289 = 0;
    v290 = &v476;
    sub_225EF54BC(0, &v476);
    sub_225EF54BC(v289, v290);
    v473[1] = v299;
    v291 = &v168;
    MEMORY[0x28223BE20](&v168, v106, v107, v108);
    v292 = &v168 - 6;
    *(&v168 - 4) = v109;
    *(&v168 - 3) = &v475;
    *(&v168 - 2) = &v474;
    v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v294 = v105;
    if (v105)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v295, v296, "Already processing visual context, skipping", v282, 2u);
      v280 = 0;
      sub_225EF7AF4(v285);
      sub_225EF7AF4(v288);
      sub_22609A168();

      v281 = v294;
    }
  }

  else
  {

    v281 = v314;
  }

  v279 = v281;

  v386(v458, v452);

  (*(v390 + 8))(v393, v388);

  return v279;
}

uint64_t sub_2260045BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a1;
  v8[2] = a2;
  v8[3] = a3;
  sub_2260998E8();
  v7 = *a1;
  v8[0] = a2;
  v8[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  sub_226099938();
  return sub_225EFE6BC(v8);
}

uint64_t sub_2260046AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a4;
  v4[29] = a3;
  v4[28] = a2;
  v4[27] = a1;
  v4[10] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[15] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[17] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[24] = 0;
  v5 = sub_226098C58();
  v4[31] = v5;
  v9 = *(v5 - 8);
  v4[32] = v9;
  v6 = *(v9 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;
  v4[11] = a3;
  v4[12] = a4;
  v7 = v4[10];

  return MEMORY[0x2822009F8](sub_22600481C, 0, 0);
}

uint64_t sub_22600481C()
{
  v67 = v0[28];
  v66 = v0[27];
  v0[10] = v0;
  v68 = objc_opt_self();
  sub_2260998E8();
  v69 = sub_2260999F8();

  v70 = [v68 speechProfilePathsWithLanguage_];
  MEMORY[0x277D82BD8](v69);
  v71 = sub_226099C88();
  v0[34] = v71;
  v0[13] = v71;
  MEMORY[0x277D82BD8](v70);
  v0[14] = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v73 = sub_226098948();
  v1 = sub_225F156F8();
  v75 = sub_225F15970(sub_226005DF4, 0, v72, v73, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v74);
  v0[35] = v75;
  *(v65 + 120) = v75;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15;
  v63 = swift_task_alloc();
  *(v65 + 128) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A30, &qword_2260A0A28);
  sub_22601FC04();
  sub_226099FE8();
  v64 = *(v73 - 8);
  if ((*(v64 + 48))(v63, 1) == 1)
  {
    sub_22601F334(v63);

    v61 = 0;
    v62 = 0;
  }

  else
  {
    v59 = sub_226098928();
    v60 = v3;
    (*(v64 + 8))(v63, v73);

    v61 = v59;
    v62 = v60;
  }

  *(v65 + 288) = v62;
  v57 = *(v65 + 232);
  *(v65 + 32) = v61;
  *(v65 + 40) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB8, &qword_2260A0E40);
  *(v65 + 136) = sub_22609A4F8();
  v58 = [v57 messagesContext];
  if (v58)
  {
    sub_22601FA78();
    v55 = sub_226099C88();
    MEMORY[0x277D82BD8](v58);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  if (!v56)
  {
    return sub_22609A3B8();
  }

  *(v65 + 144) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E8, &qword_2260A09A8);
  sub_22601F9F0();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CC0, &qword_2260A0E48);
    sub_22609A388();
    v54 = *(v65 + 152);
    if (!v54)
    {
      break;
    }

    *(v65 + 192) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CC8, &qword_2260A0E50);
    sub_22609A4F8();
    v50 = v4;
    *v4 = sub_226099AA8();
    v50[1] = v5;
    v51 = sub_22609A4F8();
    v52 = v6;
    v53 = [v54 sender];
    if (v53)
    {
      v41 = sub_226099A08();
      v42 = v9;
      MEMORY[0x277D82BD8](v53);
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v65 + 64) = v43;
    *(v65 + 72) = v44;
    if (*(v65 + 72))
    {
      *v52 = *(v65 + 64);
    }

    else
    {
      *v52 = sub_226099AA8();
      *(v52 + 8) = v10;
      if (*(v65 + 72))
      {
        sub_225EFE6BC(v65 + 64);
      }
    }

    sub_225EF5418();
    v50[2] = v51;
    v50[3] = sub_226099AA8();
    v50[4] = v11;
    v40 = [v54 messages];
    if (v40)
    {
      v38 = sub_226099C88();
      MEMORY[0x277D82BD8](v40);
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    *(v65 + 200) = v39;
    if (*(v65 + 200))
    {
      v50[5] = *(v65 + 200);
    }

    else
    {
      v50[5] = sub_22609A4F8();
      if (*(v65 + 200))
      {
        sub_225EFE6E8((v65 + 200));
      }
    }

    sub_225EF5418();
    *(v65 + 208) = sub_2260998A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CD0, &qword_2260A0E58);
    sub_226099CE8();
    MEMORY[0x277D82BD8](v54);
  }

  v7 = *(v65 + 264);
  v46 = *(v65 + 248);
  v45 = *(v65 + 256);
  sub_225EFE6E8((v65 + 48));
  v8 = sub_225F7E9BC();
  (*(v45 + 16))(v7, v8, v46);
  oslog = sub_226098C48();
  v47 = sub_22609A088();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v49 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v47))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v35 = sub_225EF5468(0);
    v36 = sub_225EF5468(0);
    *(v65 + 160) = buf;
    *(v65 + 168) = v35;
    *(v65 + 176) = v36;
    sub_225EF54BC(0, (v65 + 160));
    sub_225EF54BC(0, (v65 + 160));
    *(v65 + 184) = v49;
    v37 = swift_task_alloc();
    v37[2] = v65 + 160;
    v37[3] = v65 + 168;
    v37[4] = v65 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, oslog, v47, "Calling speech framework to compute metrics for visual context and report to SELF", buf, 2u);
    sub_225EF7AF4(v35);
    sub_225EF7AF4(v36);
    sub_22609A168();
  }

  v29 = *(v65 + 264);
  v30 = *(v65 + 248);
  v32 = *(v65 + 232);
  v28 = *(v65 + 256);
  MEMORY[0x277D82BD8](oslog);
  (*(v28 + 8))(v29, v30);
  sub_226099648();
  *(v65 + 296) = sub_226099638();
  v31 = *(v65 + 136);
  *(v65 + 304) = v31;
  sub_2260998E8();
  v33 = [v32 recognizedText];
  if (v33)
  {
    v24 = sub_226099A08();
    v25 = v12;
    MEMORY[0x277D82BD8](v33);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  *(v65 + 312) = v27;
  if (!v27)
  {
    return sub_22609A3B8();
  }

  v23 = [*(v65 + 232) correctedText];
  if (v23)
  {
    v19 = sub_226099A08();
    v20 = v13;
    MEMORY[0x277D82BD8](v23);
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  *(v65 + 320) = v22;
  if (!v22)
  {
    return sub_22609A3B8();
  }

  v18 = (MEMORY[0x277CDCD68] + *MEMORY[0x277CDCD68]);
  v14 = *(MEMORY[0x277CDCD68] + 4);
  v15 = swift_task_alloc();
  *(v65 + 328) = v15;
  *v15 = *(v65 + 80);
  v15[1] = sub_226005A40;
  v16 = *(v65 + 240);

  return v18(v31, v26, v27, v21, v22, v16, v61, v62);
}

uint64_t sub_226005A40()
{
  v11 = *v1;
  v2 = *(*v1 + 328);
  v11[10] = *v1;
  v12 = v11 + 10;
  v11[42] = v0;

  if (v0)
  {
    v6 = *v12;
    v5 = sub_226005CD0;
  }

  else
  {
    v3 = v11[40];
    v8 = v11[39];
    v9 = v11[38];
    v10 = v11[37];

    v4 = *v12;
    v5 = sub_226005BEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226005BEC()
{
  v4 = v0[36];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[33];
  v0[10] = v0;
  sub_225EFE6E8(v0 + 17);

  v1 = *(v0[10] + 8);
  v2 = v0[10];

  return v1();
}

uint64_t sub_226005CD0()
{
  v1 = v0[40];
  v6 = v0[39];
  v7 = v0[38];
  v8 = v0[37];
  v9 = v0[36];
  v10 = v0[35];
  v11 = v0[34];
  v12 = v0[33];
  v0[10] = v0;

  sub_225EFE6E8(v0 + 17);

  v2 = *(*(v13 + 80) + 8);
  v3 = *(v13 + 80);
  v4 = *(v13 + 336);

  return v2();
}

uint64_t sub_226005DF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = a2;
  v5[2] = "Fatal error";
  v5[3] = "Unexpectedly found nil while unwrapping an Optional value";
  v5[4] = "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift";
  v13 = 0;
  v14 = 0;
  v7 = *a1;
  v6 = a1[1];
  v13 = v7;
  v14 = v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v6, v2, v3);
  v9 = v5 - v8;
  sub_226098938();
  v10 = sub_226098948();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, 1) == 1)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return (*(v11 + 32))(v5[0], v9, v10);
}

uint64_t sub_226005FE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v25 = &unk_2260A0E38;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26, v20, v21, v4);
  v24 = &v19 - v19;
  v29 = v5;
  v27 = v6;
  v28 = v7;
  v23 = 0;
  v8 = sub_226099DA8();
  (*(*(v8 - 8) + 56))(v24, 1);

  v9 = swift_allocObject();
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v10;
  v9[5] = v11;
  v9[6] = v12;
  v16 = sub_225FC40E0(v13, v13, v14, v15, v9, MEMORY[0x277D84F78] + 8);
  v17 = *v26;
  *v26 = v16;
}

uint64_t sub_226006178(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5[5] = a5;
  v5[4] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[2] = a4;
  v5[3] = a5;

  v11 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v10 + 48) = v7;
  *v7 = *(v10 + 32);
  v7[1] = sub_2260062B0;

  return v11();
}

uint64_t sub_2260062B0()
{
  v7 = *v1;
  v2 = *(*v1 + 48);
  *(v7 + 32) = *v1;
  v8 = (v7 + 32);
  *(v7 + 56) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_226006580;
  }

  else
  {
    v3 = *v8;
    v4 = sub_226006418;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_226006418()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[4] = v0;

  v6 = sub_225F835AC();
  os_unfair_lock_lock(v6);
  sub_22600661C(v6 + 1);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
    sub_225F1CB98(v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
    sub_225F1CB98(v6);
    v3 = *(*(v5 + 32) + 8);
    v4 = *(v5 + 32);

    v3();
  }
}

uint64_t sub_226006580()
{
  v1 = *(v0 + 40);
  *(v0 + 32) = v0;

  v2 = v0;
  v3 = *(*(v0 + 32) + 8);
  v4 = *(v0 + 32);
  v5 = *(v2 + 56);

  return v3();
}

uint64_t sub_22600661C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
}

uint64_t sub_22600675C()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_2260067C4(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_226006844()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_2260068AC(char a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_226006920(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78);
  v2[6] = v3;
  v6 = *(*(v3 - 8) + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[3] = a2;
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_226006A0C, 0, 0);
}

uint64_t sub_226006A0C()
{
  v1 = v0[8];
  v16 = v1;
  v17 = v0[7];
  v7 = v0[6];
  v2 = v0[5];
  v6 = v2;
  v9 = v0[4];
  v0[2] = v0;
  v8 = *(v7 + 48);
  sub_2260245B0(v2, v1);
  v14 = *(v7 + 48);
  v12 = sub_226098FA8();
  v11 = *(v12 - 8);
  (*(v11 + 32))(v9, v16);
  sub_2260245B0(v6, v17);
  v10 = *(v7 + 48);
  v15 = sub_226099458();
  v13 = *(v15 - 8);
  (*(v13 + 32))(v9 + v8, v17 + v10);
  (*(v11 + 8))(v17, v12);
  (*(v13 + 8))(v16 + v14, v15);

  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t sub_226006C04(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0) - 8) + 64);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D08, &qword_2260A0ED8);
  v2[8] = v3;
  v7 = *(*(v3 - 8) + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[3] = a2;
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_226006D6C, 0, 0);
}

uint64_t sub_226006D6C()
{
  v1 = v0[12];
  v25 = v1;
  v26 = v0[11];
  v27 = v0[10];
  v28 = v0[9];
  v8 = v0[8];
  v29 = v0[7];
  v30 = v0[6];
  v2 = v0[5];
  v7 = v2;
  v12 = v0[4];
  v0[2] = v0;
  sub_226024438(v2, v1);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78);
  v22 = *(v9 + 48);
  v19 = *(v8 + 48);
  sub_226024438(v7, v26);
  v6 = *(v9 + 48);
  v18 = *(v8 + 48);
  v23 = sub_226099458();
  v15 = *(v23 - 8);
  v10 = v15[4];
  v10(v29, v26 + v6);
  v11 = v15[7];
  v11(v29);
  sub_226024438(v7, v27);
  v17 = *(v9 + 48);
  v13 = *(v8 + 48);
  sub_226024438(v7, v28);
  v16 = *(v9 + 48);
  v14 = v28 + *(v8 + 48);
  (v10)(v30, v14 + v16, v23);
  (v11)(v30, 0, 1, v23);
  sub_225F1D2C4(v25, v29, v27 + v13, v30, v12);
  v20 = sub_226098FA8();
  v21 = *(*(v20 - 8) + 8);
  v21(v14);
  v24 = v15[1];
  v24(v28 + v16, v23);
  (v21)(v28, v20);
  v24(v27 + v13 + v17, v23);
  v24(v27 + v17, v23);
  (v21)(v27, v20);
  v24(v26 + v18 + v6, v23);
  (v21)(v26 + v18, v20);
  (v21)(v26, v20);
  v24(v25 + v19 + v22, v23);
  (v21)(v25 + v19, v20);
  v24(v25 + v22, v23);

  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t sub_22600721C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = a2;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_22600725C, 0, 0);
}

uint64_t sub_22600725C()
{
  v5 = v0[5];
  v6 = v0[4];
  v0[2] = v0;
  v1 = sub_226098FA8();
  (*(*(v1 - 8) + 16))(v6, v5);
  v2 = *(v0[2] + 8);
  v3 = v0[2];

  return v2();
}

uint64_t sub_22600732C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0) - 8) + 64);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D10, &qword_2260A0EE0);
  v2[8] = v3;
  v7 = *(*(v3 - 8) + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[3] = a2;
  v4 = v2[2];

  return MEMORY[0x2822009F8](sub_22600746C, 0, 0);
}

uint64_t sub_22600746C()
{
  v1 = v0[10];
  v15 = v1;
  v16 = v0[9];
  v7 = v0[8];
  v17 = v0[7];
  v18 = v0[6];
  v2 = v0[5];
  v6 = v2;
  v10 = v0[4];
  v0[2] = v0;
  sub_22602468C(v2, v1);
  v12 = *(v7 + 48);
  v8 = sub_226099458();
  v9 = *(*(v8 - 8) + 56);
  v9(v17, 1);
  sub_22602468C(v6, v16);
  v11 = *(v7 + 48);
  (v9)(v18, 1, 1, v8);
  sub_225F1D2C4(v15, v17, v16 + v11, v18, v10);
  v13 = sub_226098FA8();
  v14 = *(*(v13 - 8) + 8);
  v14(v16);
  (v14)(v15 + v12, v13);

  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t sub_226007670(uint64_t a1, uint64_t *a2)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v3 = *a2;
  v2[5] = *a2;
  v2[3] = v3;
  v4 = v2[2];
  return MEMORY[0x2822009F8](sub_2260076B0, 0, 0);
}

uint64_t sub_2260076B0()
{
  v5 = v0[5];
  v4 = v0[4];
  v0[2] = v0;
  sub_2260998E8();
  *v4 = v5;
  v1 = *(v0[2] + 8);
  v2 = v0[2];

  return v1();
}

uint64_t sub_226007754(uint64_t a1, uint64_t *a2)
{
  v2[5] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v3 = *a2;
  v2[6] = *a2;
  v4 = a2[1];
  v2[7] = v4;
  v2[2] = v3;
  v2[3] = v4;
  v5 = v2[4];
  return MEMORY[0x2822009F8](sub_2260077A4, 0, 0);
}

uint64_t sub_2260077A4()
{
  v6 = v0[7];
  v5 = v0[6];
  v9 = v0[5];
  v0[4] = v0;
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  v7 = nullsub_1(v5);
  v8 = v1;

  *v9 = v7;
  v9[1] = v8;
  v2 = *(v0[4] + 8);
  v3 = v0[4];

  return v2();
}

uint64_t sub_226007898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v11;
  v8[12] = a8;
  v8[11] = a7;
  v8[10] = a6;
  v8[9] = a5;
  v8[8] = a4;
  v8[2] = v8;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a7;
  v9 = v8[2];
  return MEMORY[0x2822009F8](sub_226007930, 0, 0);
}

uint64_t sub_226007930()
{
  v6 = v0[13];
  v5 = v0[12];
  v10 = v0[11];
  v9 = v0[10];
  v1 = v0[9];
  v8 = v1;
  v7 = v0[8];
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v12 = swift_task_alloc();
  v0[14] = v12;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v12[7] = v10;
  v13 = MEMORY[0x277D84F78] + 8;
  sub_225F819F0();
  v2 = *(MEMORY[0x277D85A48] + 4);
  v3 = swift_task_alloc();
  *(v11 + 120) = v3;
  *v3 = *(v11 + 16);
  v3[1] = sub_226007AB0;

  return MEMORY[0x2822008A8](v14, v13, 0, 0, &unk_2260A0E88, v12);
}

uint64_t sub_226007AB0()
{
  v9 = *v1;
  v2 = *(*v1 + 120);
  v9[2] = *v1;
  v10 = v9 + 2;
  v9[16] = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = sub_226007CE8;
  }

  else
  {
    v3 = v9[14];
    v8 = v9[9];

    v4 = *v10;
    v5 = sub_226007C3C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226007C3C()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v0;
  sub_22600D820(0);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

uint64_t sub_226007CE8()
{
  v8 = v0[16];
  v1 = v0[14];
  v2 = v0[9];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v2);
  v3 = v8;
  v0[7] = v8;
  v4 = v8;
  sub_22600D820(v8);

  v5 = *(v0[2] + 8);
  v6 = v0[2];

  return v5();
}

uint64_t sub_226007DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a8;
  v8[51] = a7;
  v8[50] = a6;
  v8[49] = a5;
  v8[48] = a4;
  v8[47] = a3;
  v8[46] = a2;
  v8[32] = v8;
  v8[33] = 0;
  v8[34] = 0;
  v8[35] = 0;
  v8[36] = 0;
  v8[37] = 0;
  v9 = sub_22609A198();
  v8[53] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[54] = swift_task_alloc();
  v16 = *(a7 - 8);
  v8[55] = v16;
  v8[56] = *(v16 + 64);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15;
  v8[59] = swift_task_alloc();
  v12 = sub_226098C58();
  v8[60] = v12;
  v17 = *(v12 - 8);
  v8[61] = v17;
  v18 = *(v17 + 64);
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[33] = a2;
  v8[34] = a3;
  v8[35] = a4;
  v8[36] = a5;
  v8[37] = a6;
  v13 = v8[32];

  return MEMORY[0x2822009F8](sub_22600808C, 0, 0);
}

uint64_t sub_22600808C()
{
  v1 = v0[47];
  v0[32] = v0;
  sub_22601FE20(v1, v0 + 7);
  if (v0[10])
  {
    v2 = *(v67 + 504);
    v63 = *(v67 + 480);
    v62 = *(v67 + 488);
    sub_226023D20((v67 + 56), (v67 + 16));
    v3 = sub_225F7E9BC();
    (*(v62 + 16))(v2, v3, v63);
    v65 = sub_226098C48();
    v64 = sub_22609A078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v66 = sub_22609A4F8();
    if (os_log_type_enabled(v65, v64))
    {
      v58 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v59 = sub_225EF5468(0);
      v60 = sub_225EF5468(0);
      *(v67 + 336) = v58;
      *(v67 + 344) = v59;
      *(v67 + 352) = v60;
      sub_225EF54BC(0, (v67 + 336));
      sub_225EF54BC(0, (v67 + 336));
      *(v67 + 360) = v66;
      v61 = swift_task_alloc();
      v61[2] = v67 + 336;
      v61[3] = v67 + 344;
      v61[4] = v67 + 352;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v65, v64, "Receiving single-user transcriber results.", v58, 2u);
      sub_225EF7AF4(v59);
      sub_225EF7AF4(v60);
      sub_22609A168();
    }

    v53 = *(v67 + 504);
    v54 = *(v67 + 480);
    v57 = *(v67 + 472);
    v55 = *(v67 + 384);
    v4 = *(v67 + 368);
    v52 = *(v67 + 488);
    MEMORY[0x277D82BD8](v65);
    (*(v52 + 8))(v53, v54);
    v5 = sub_226099DA8();
    (*(*(v5 - 8) + 56))(v57, 1);
    sub_226023D5C(v67 + 16, v67 + 216);
    MEMORY[0x277D82BE0](v55);
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    sub_226023D20((v67 + 216), v56 + 4);
    v56[9] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CF0, &qword_2260A0EA0);
    sub_22600AAE8(v57, &unk_2260A0EC0, v56);
    sub_225EF7CF8(v57);
    __swift_destroy_boxed_opaque_existential_0((v67 + 16));
  }

  else
  {
    sub_225F186BC((v67 + 56));
  }

  sub_22601FE20(*(v67 + 392), (v67 + 136));
  if (*(v67 + 160))
  {
    v6 = *(v67 + 496);
    v48 = *(v67 + 480);
    v47 = *(v67 + 488);
    sub_226023D20((v67 + 136), (v67 + 96));
    v7 = sub_225F7E9BC();
    (*(v47 + 16))(v6, v7, v48);
    oslog = sub_226098C48();
    v49 = sub_22609A078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v51 = sub_22609A4F8();
    if (os_log_type_enabled(oslog, v49))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v44 = sub_225EF5468(0);
      v45 = sub_225EF5468(0);
      *(v67 + 304) = buf;
      *(v67 + 312) = v44;
      *(v67 + 320) = v45;
      sub_225EF54BC(0, (v67 + 304));
      sub_225EF54BC(0, (v67 + 304));
      *(v67 + 328) = v51;
      v46 = swift_task_alloc();
      v46[2] = v67 + 304;
      v46[3] = v67 + 312;
      v46[4] = v67 + 320;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, oslog, v49, "Receiving multi-user transcriber results.", buf, 2u);
      sub_225EF7AF4(v44);
      sub_225EF7AF4(v45);
      sub_22609A168();
    }

    v38 = *(v67 + 496);
    v39 = *(v67 + 480);
    v42 = *(v67 + 472);
    v40 = *(v67 + 384);
    v8 = *(v67 + 368);
    v37 = *(v67 + 488);
    MEMORY[0x277D82BD8](oslog);
    (*(v37 + 8))(v38, v39);
    v9 = sub_226099DA8();
    (*(*(v9 - 8) + 56))(v42, 1);
    sub_226023D5C(v67 + 96, v67 + 176);
    MEMORY[0x277D82BE0](v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    sub_226023D20((v67 + 176), v41 + 4);
    v41[9] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CF0, &qword_2260A0EA0);
    sub_22600AAE8(v42, &unk_2260A0EB0, v41);
    sub_225EF7CF8(v42);
    __swift_destroy_boxed_opaque_existential_0((v67 + 96));
  }

  else
  {
    sub_225F186BC((v67 + 136));
  }

  v36 = *(v67 + 432);
  v35 = *(v67 + 408);
  v34 = *(v67 + 440);
  sub_225F317FC(*(v67 + 400), v36, v35, *(v67 + 424));
  if ((*(v34 + 48))(v36, 1, v35) == 1)
  {
    v10 = *(v67 + 424);
    sub_226023B28(*(v67 + 432), *(v67 + 408));
  }

  else
  {
    v31 = *(v67 + 472);
    v33 = *(v67 + 464);
    v27 = *(v67 + 456);
    v24 = *(v67 + 448);
    v11 = *(v67 + 432);
    v25 = *(v67 + 416);
    v32 = *(v67 + 408);
    v29 = *(v67 + 384);
    v12 = *(v67 + 368);
    v23 = *(v67 + 440);
    v28 = *(v23 + 32);
    v28();
    v13 = sub_226099DA8();
    (*(*(v13 - 8) + 56))(v31, 1);
    (*(v23 + 16))(v27, v33, v32);
    MEMORY[0x277D82BE0](v29);
    v26 = (*(v23 + 80) + 48) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v32;
    v30[5] = v25;
    (v28)(v30 + v26, v27);
    *(v30 + ((v26 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CF0, &qword_2260A0EA0);
    sub_22600AAE8(v31, &unk_2260A0E98, v30);
    sub_225EF7CF8(v31);
    (*(v23 + 8))(v33, v32);
  }

  v14 = *(v67 + 504);
  v18 = *(v67 + 496);
  v19 = *(v67 + 472);
  v20 = *(v67 + 464);
  v21 = *(v67 + 456);
  v22 = *(v67 + 432);

  v15 = *(*(v67 + 256) + 8);
  v16 = *(v67 + 256);

  return v15();
}

uint64_t sub_226008DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v4[14] = a3;
  v4[11] = v4;
  v4[12] = 0;
  v4[13] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CF8, &qword_2260A0EC8) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for CombinedTranscriberOutput();
  v4[17] = v6;
  v10 = *(v6 - 8);
  v4[18] = v10;
  v7 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[12] = a3;
  v4[13] = a4;
  v8 = v4[11];

  return MEMORY[0x2822009F8](sub_226008F38, 0, 0);
}

uint64_t sub_226008F38()
{
  v1 = v0[14];
  v0[11] = v0;
  v12 = v1[3];
  v11 = v1[4];
  v10 = __swift_project_boxed_opaque_existential_0(v1, v12);
  v9 = *(v12 - 8);
  v2 = *(v9 + 64) + 15;
  v13 = swift_task_alloc();
  (*(v9 + 16))(v13, v10, v12);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_226099E98();

  v18 = v0[5];
  v0[20] = v18;
  v19 = v0[6];
  v0[21] = v19;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v18);
  v0[22] = swift_getAssociatedTypeWitness();
  v3 = sub_22609A198();
  v0[23] = v3;
  v14 = *(v3 - 8);
  v0[24] = v14;
  v4 = *(v14 + 64) + 15;
  v20 = swift_task_alloc();
  v0[25] = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[26] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v0[27] = v15;
  v0[28] = *(v15 + 64);
  v17 = swift_task_alloc();
  v0[29] = v17;
  v6 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  *(v16 + 240) = v7;
  *v7 = *(v16 + 88);
  v7[1] = sub_226009258;

  return MEMORY[0x282200310](v20, 0, 0, v17, v18, v19);
}

uint64_t sub_226009258()
{
  v2 = *v1;
  v3 = (*v1)[30];
  v2[11] = *v1;
  v2 += 11;
  v9 = v2 - 9;
  v10 = v2;

  if (v0)
  {
    v7 = *v10;
    v6 = sub_2260098E8;
  }

  else
  {
    v4 = v9[27];

    v5 = *v10;
    v6 = sub_2260093CC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2260093CC()
{
  v1 = v0[25];
  v2 = v0[22];
  v0[11] = v0;
  v29 = *(v2 - 8);
  if ((*(v29 + 48))(v1, 1) == 1)
  {
    v27 = v28[25];
    v3 = v28[23];
    (*(v28[24] + 8))();

    v28[7] = 0;
    v28[8] = 0;
    v28[9] = 0;
    v28[10] = 0;
  }

  else
  {
    v26 = v28[25];
    v25 = v28[22];
    v28[10] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28 + 7);
    (*(v29 + 32))(boxed_opaque_existential_0, v26, v25);
  }

  if (v28[10])
  {
    v8 = v28[17];
    v9 = v28[16];
    if (swift_dynamicCast())
    {
      (*(v28[18] + 56))(v28[16], 0, 1, v28[17]);
    }

    else
    {
      (*(v28[18] + 56))(v28[16], 1, 1, v28[17]);
    }

    if ((*(v28[18] + 48))(v28[16], 1, v28[17]) == 1)
    {
      sub_226023FF0(v28[16]);
    }

    else
    {
      v16 = v28[19];
      v15 = v28[15];
      sub_226022294(v28[16], v16);
      sub_226009B80(v16);
      sub_2260241DC(v16);
    }

    v20 = v28[5];
    v28[20] = v20;
    v21 = v28[6];
    v28[21] = v21;
    __swift_mutable_project_boxed_opaque_existential_1((v28 + 2), v20);
    v28[22] = swift_getAssociatedTypeWitness();
    v10 = sub_22609A198();
    v28[23] = v10;
    v17 = *(v10 - 8);
    v28[24] = v17;
    v11 = *(v17 + 64) + 15;
    v22 = swift_task_alloc();
    v28[25] = v22;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v28[26] = AssociatedTypeWitness;
    v18 = *(AssociatedTypeWitness - 8);
    v28[27] = v18;
    v28[28] = *(v18 + 64);
    v19 = swift_task_alloc();
    v28[29] = v19;
    v13 = *(MEMORY[0x277D856D8] + 4);
    v14 = swift_task_alloc();
    v28[30] = v14;
    *v14 = v28[11];
    v14[1] = sub_226009258;

    return MEMORY[0x282200310](v22, 0, 0, v19, v20, v21);
  }

  else
  {
    v23 = v28[19];
    v24 = v28[16];
    __swift_destroy_boxed_opaque_existential_0(v28 + 2);

    v5 = *(v28[11] + 8);
    v6 = v28[11];

    return v5();
  }
}

uint64_t sub_2260098E8()
{
  v11 = v0[29];
  v13 = v0[28];
  v14 = v0[27];
  v18 = v0[26];
  v17 = v0[21];
  v16 = v0[20];
  v0[11] = v0;
  v15 = swift_task_alloc();
  v12 = *(v14 + 32);
  v12(v15, v11, v18);
  v19 = swift_task_alloc();
  (*(v14 + 16))(v19, v15, v18);
  swift_getAssociatedConformanceWitness();
  if (sub_22609A498())
  {
    (*(v10[27] + 8))(v15, v10[26]);
  }

  else
  {
    v9 = v10[26];
    swift_allocError();
    v12(v1, v15, v9);
  }

  v5 = v10[29];
  v6 = v10[25];
  v7 = v10[19];
  v8 = v10[16];
  (*(v10[27] + 8))(v19, v10[26]);

  __swift_destroy_boxed_opaque_existential_0(v10 + 2);

  v2 = *(v10[11] + 8);
  v3 = v10[11];

  return v2();
}

uint64_t sub_226009B80(uint64_t a1)
{
  v91 = a1;
  v98 = sub_225F3E198;
  v100 = sub_225F3E1C8;
  v102 = sub_226012024;
  v103 = sub_225EF7B84;
  v107 = sub_226012054;
  v110 = sub_225F2D374;
  v112 = sub_225EF7434;
  v114 = sub_225EF7434;
  v116 = sub_225F3E358;
  v118 = sub_225EF7434;
  v120 = sub_225EF7434;
  v122 = sub_225EF7B90;
  v124 = sub_225EF7434;
  v126 = sub_225EF7434;
  v129 = sub_225EF71D0;
  v73 = &unk_2260A0CF8;
  v141 = 0;
  v140 = 0;
  v74 = 0;
  v85 = 0;
  v1 = type metadata accessor for CombinedTranscriberOutput();
  v75 = *(v1 - 8);
  v76 = v75;
  v77 = *(v75 + 64);
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v79 = &v53 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80, v5, v6, v7);
  v84 = &v53 - v83;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85, v8, v9, v10);
  v90 = &v53 - v89;
  v96 = sub_226098C58();
  v94 = *(v96 - 8);
  v95 = v96 - 8;
  v92 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v91, v11, v12, v13);
  v14 = &v53 - v92;
  v93 = &v53 - v92;
  v141 = v15;
  v140 = v16;
  v17 = sub_225F7E9BC();
  (*(v94 + 16))(v14, v17, v96);
  MEMORY[0x277D82BE0](v97);
  v109 = 7;
  v99 = swift_allocObject();
  *(v99 + 16) = v97;
  v133 = sub_226098C48();
  v134 = sub_22609A0A8();
  v105 = 17;
  v113 = swift_allocObject();
  *(v113 + 16) = 64;
  v115 = swift_allocObject();
  v106 = 8;
  *(v115 + 16) = 8;
  v108 = 32;
  v18 = swift_allocObject();
  v19 = v99;
  v101 = v18;
  *(v18 + 16) = v98;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v101;
  v117 = v20;
  *(v20 + 16) = v100;
  *(v20 + 24) = v21;
  v119 = swift_allocObject();
  *(v119 + 16) = 32;
  v121 = swift_allocObject();
  *(v121 + 16) = v106;
  v22 = swift_allocObject();
  v104 = v22;
  *(v22 + 16) = v102;
  *(v22 + 24) = 0;
  v23 = swift_allocObject();
  v24 = v104;
  v123 = v23;
  *(v23 + 16) = v103;
  *(v23 + 24) = v24;
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v106;
  v25 = swift_allocObject();
  v111 = v25;
  *(v25 + 16) = v107;
  *(v25 + 24) = 0;
  v26 = swift_allocObject();
  v27 = v111;
  v130 = v26;
  *(v26 + 16) = v110;
  *(v26 + 24) = v27;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v128 = sub_22609A4F8();
  v131 = v28;

  v29 = v113;
  v30 = v131;
  *v131 = v112;
  v30[1] = v29;

  v31 = v115;
  v32 = v131;
  v131[2] = v114;
  v32[3] = v31;

  v33 = v117;
  v34 = v131;
  v131[4] = v116;
  v34[5] = v33;

  v35 = v119;
  v36 = v131;
  v131[6] = v118;
  v36[7] = v35;

  v37 = v121;
  v38 = v131;
  v131[8] = v120;
  v38[9] = v37;

  v39 = v123;
  v40 = v131;
  v131[10] = v122;
  v40[11] = v39;

  v41 = v125;
  v42 = v131;
  v131[12] = v124;
  v42[13] = v41;

  v43 = v127;
  v44 = v131;
  v131[14] = v126;
  v44[15] = v43;

  v45 = v130;
  v46 = v131;
  v131[16] = v129;
  v46[17] = v45;
  sub_225EF5418();

  if (os_log_type_enabled(v133, v134))
  {
    v47 = v74;
    v66 = sub_22609A188();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v65 = 1;
    v67 = sub_225EF5468(1);
    v68 = sub_225EF5468(v65);
    v69 = v139;
    v139[0] = v66;
    v70 = &v138;
    v138 = v67;
    v71 = &v137;
    v137 = v68;
    sub_225EF54BC(2, v139);
    sub_225EF54BC(3, v69);
    v135 = v112;
    v136 = v113;
    sub_225EF73E8(&v135, v69, v70, v71);
    v72 = v47;
    if (v47)
    {

      __break(1u);
    }

    else
    {
      v135 = v114;
      v136 = v115;
      sub_225EF73E8(&v135, v139, &v138, &v137);
      v63 = 0;
      v135 = v116;
      v136 = v117;
      sub_225EF73E8(&v135, v139, &v138, &v137);
      v62 = 0;
      v135 = v118;
      v136 = v119;
      sub_225EF73E8(&v135, v139, &v138, &v137);
      v61 = 0;
      v135 = v120;
      v136 = v121;
      sub_225EF73E8(&v135, v139, &v138, &v137);
      v60 = 0;
      v135 = v122;
      v136 = v123;
      sub_225EF73E8(&v135, v139, &v138, &v137);
      v59 = 0;
      v135 = v124;
      v136 = v125;
      sub_225EF73E8(&v135, v139, &v138, &v137);
      v58 = 0;
      v135 = v126;
      v136 = v127;
      sub_225EF73E8(&v135, v139, &v138, &v137);
      v57 = 0;
      v135 = v129;
      v136 = v130;
      sub_225EF73E8(&v135, v139, &v138, &v137);
      _os_log_impl(&dword_225EEB000, v133, v134, "%@ %s:%ld queue task enqueued", v66, 0x20u);
      v56 = 1;
      sub_225EF7AF4(v67);
      sub_225EF7AF4(v68);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v133);
  (*(v94 + 8))(v93, v96);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v97);
  sub_226021FA4(v91, v79);
  v54 = (*(v76 + 80) + 24) & ~*(v76 + 80);
  v48 = swift_allocObject();
  v49 = v54;
  v50 = v48;
  v51 = v79;
  v55 = v50;
  *(v50 + 16) = v97;
  sub_226022294(v51, v50 + v49);
  v139[1] = v73;
  v139[2] = v55;
  sub_226099DD8();
  (*(v81 + 8))(v84, v80);
  return (*(v87 + 8))(v90, v86);
}

uint64_t sub_22600AAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v27 = a2;
  v28 = a3;
  v31 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v3, v4, v5);
  v32 = &v9 - v31;
  sub_225EF7BD0(v6, &v9 - v31);
  v33 = sub_226099DA8();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  if ((*(v34 + 48))(v32, 1) == 1)
  {
    sub_225EF7CF8(v32);
    v26 = 0;
  }

  else
  {
    v25 = sub_226099D98();
    (*(v34 + 8))(v32, v33);
    v26 = v25;
  }

  v22 = v26 | 0x7100;
  v24 = *(v28 + 16);
  v23 = *(v28 + 24);
  swift_unknownObjectRetain();
  if (v24)
  {
    v20 = v24;
    v21 = v23;
    v14 = v23;
    v15 = v24;
    swift_getObjectType();
    v16 = sub_226099D48();
    v17 = v7;
    swift_unknownObjectRelease();
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v12 = v19;
  v11 = v18;
  v10 = *v29;

  v13 = 0;
  if (v11 != 0 || v12 != 0)
  {
    v39[0] = 0;
    v39[1] = 0;
    v39[2] = v11;
    v39[3] = v12;
    v13 = v39;
  }

  v36 = 1;
  v37 = v13;
  v38 = v10;
  swift_task_create();
}

uint64_t sub_22600ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v4[18] = a3;
  v4[15] = v4;
  v4[16] = 0;
  v4[17] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[16] = a3;
  v4[17] = a4;
  v5 = v4[15];
  return MEMORY[0x2822009F8](sub_22600AE18, 0, 0);
}

uint64_t sub_22600AE18()
{
  v1 = v0[18];
  v0[15] = v0;
  v12 = v1[3];
  v11 = v1[4];
  v10 = __swift_project_boxed_opaque_existential_0(v1, v12);
  v9 = *(v12 - 8);
  v2 = *(v9 + 64) + 15;
  v13 = swift_task_alloc();
  (*(v9 + 16))(v13, v10, v12);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_226099E98();

  v18 = v0[5];
  v0[20] = v18;
  v19 = v0[6];
  v0[21] = v19;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v18);
  v0[22] = swift_getAssociatedTypeWitness();
  v3 = sub_22609A198();
  v0[23] = v3;
  v14 = *(v3 - 8);
  v0[24] = v14;
  v4 = *(v14 + 64) + 15;
  v20 = swift_task_alloc();
  v0[25] = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[26] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v0[27] = v15;
  v0[28] = *(v15 + 64);
  v17 = swift_task_alloc();
  v0[29] = v17;
  v6 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  *(v16 + 240) = v7;
  *v7 = *(v16 + 120);
  v7[1] = sub_22600B138;

  return MEMORY[0x282200310](v20, 0, 0, v17, v18, v19);
}

uint64_t sub_22600B138()
{
  v2 = *v1;
  v3 = (*v1)[30];
  v2[15] = *v1;
  v2 += 15;
  v9 = v2 - 13;
  v10 = v2;

  if (v0)
  {
    v7 = *v10;
    v6 = sub_22600B770;
  }

  else
  {
    v4 = v9[27];

    v5 = *v10;
    v6 = sub_22600B2AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22600B2AC()
{
  v1 = v0[25];
  v2 = v0[22];
  v0[15] = v0;
  v26 = *(v2 - 8);
  if ((*(v26 + 48))(v1, 1) == 1)
  {
    v24 = v25[25];
    v3 = v25[23];
    (*(v25[24] + 8))();

    v25[7] = 0;
    v25[8] = 0;
    v25[9] = 0;
    v25[10] = 0;
  }

  else
  {
    v23 = v25[25];
    v22 = v25[22];
    v25[10] = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25 + 7);
    (*(v26 + 32))(boxed_opaque_existential_0, v23, v22);
  }

  if (v25[10])
  {
    if (swift_dynamicCast())
    {
      v20 = v25[11];
      v21 = v25[12];
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    if (v20)
    {
      v8 = v25[19];
      v25[13] = v20;
      v25[14] = v21;
      sub_22600B9E8(v20, v21);
    }

    v17 = v25[5];
    v25[20] = v17;
    v18 = v25[6];
    v25[21] = v18;
    __swift_mutable_project_boxed_opaque_existential_1((v25 + 2), v17);
    v25[22] = swift_getAssociatedTypeWitness();
    v9 = sub_22609A198();
    v25[23] = v9;
    v14 = *(v9 - 8);
    v25[24] = v14;
    v10 = *(v14 + 64) + 15;
    v19 = swift_task_alloc();
    v25[25] = v19;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v25[26] = AssociatedTypeWitness;
    v15 = *(AssociatedTypeWitness - 8);
    v25[27] = v15;
    v25[28] = *(v15 + 64);
    v16 = swift_task_alloc();
    v25[29] = v16;
    v12 = *(MEMORY[0x277D856D8] + 4);
    v13 = swift_task_alloc();
    v25[30] = v13;
    *v13 = v25[15];
    v13[1] = sub_22600B138;

    return MEMORY[0x282200310](v19, 0, 0, v16, v17, v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v25 + 2);
    v5 = *(v25[15] + 8);
    v6 = v25[15];

    return v5();
  }
}

uint64_t sub_22600B770()
{
  v9 = v0[29];
  v11 = v0[28];
  v12 = v0[27];
  v16 = v0[26];
  v15 = v0[21];
  v14 = v0[20];
  v0[15] = v0;
  v13 = swift_task_alloc();
  v10 = *(v12 + 32);
  v10(v13, v9, v16);
  v17 = swift_task_alloc();
  (*(v12 + 16))(v17, v13, v16);
  swift_getAssociatedConformanceWitness();
  if (sub_22609A498())
  {
    (*(v8[27] + 8))(v13, v8[26]);
  }

  else
  {
    v7 = v8[26];
    swift_allocError();
    v10(v1, v13, v7);
  }

  v5 = v8[29];
  v6 = v8[25];
  (*(v8[27] + 8))(v17, v8[26]);

  __swift_destroy_boxed_opaque_existential_0(v8 + 2);
  v2 = *(v8[15] + 8);
  v3 = v8[15];

  return v2();
}

uint64_t sub_22600B9E8(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v71 = a2;
  v79 = sub_225F3E198;
  v81 = sub_225F3E1C8;
  v83 = sub_22600E700;
  v84 = sub_225EF7B84;
  v88 = sub_22600E730;
  v91 = sub_225F2D374;
  v93 = sub_225EF7434;
  v95 = sub_225EF7434;
  v97 = sub_225F3E358;
  v99 = sub_225EF7434;
  v101 = sub_225EF7434;
  v103 = sub_225EF7B90;
  v105 = sub_225EF7434;
  v107 = sub_225EF7434;
  v110 = sub_225EF71D0;
  v59 = &unk_2260A0D08;
  v122 = 0;
  v123 = 0;
  v121 = 0;
  v60 = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61, v2, v3, v4);
  v65 = v50 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66, v5, v6, v7);
  v70 = v50 - v69;
  v77 = sub_226098C58();
  v75 = *(v77 - 8);
  v76 = v77 - 8;
  v73 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72, v71, v8, v9);
  v10 = v50 - v73;
  v74 = v50 - v73;
  v122 = v11;
  v123 = v12;
  v121 = v13;
  v14 = sub_225F7E9BC();
  (*(v75 + 16))(v10, v14, v77);
  MEMORY[0x277D82BE0](v78);
  v90 = 7;
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  v114 = sub_226098C48();
  v115 = sub_22609A0A8();
  v86 = 17;
  v94 = swift_allocObject();
  *(v94 + 16) = 64;
  v96 = swift_allocObject();
  v87 = 8;
  *(v96 + 16) = 8;
  v89 = 32;
  v15 = swift_allocObject();
  v16 = v80;
  v82 = v15;
  *(v15 + 16) = v79;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v82;
  v98 = v17;
  *(v17 + 16) = v81;
  *(v17 + 24) = v18;
  v100 = swift_allocObject();
  *(v100 + 16) = 32;
  v102 = swift_allocObject();
  *(v102 + 16) = v87;
  v19 = swift_allocObject();
  v85 = v19;
  *(v19 + 16) = v83;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v21 = v85;
  v104 = v20;
  *(v20 + 16) = v84;
  *(v20 + 24) = v21;
  v106 = swift_allocObject();
  *(v106 + 16) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = v87;
  v22 = swift_allocObject();
  v92 = v22;
  *(v22 + 16) = v88;
  *(v22 + 24) = 0;
  v23 = swift_allocObject();
  v24 = v92;
  v111 = v23;
  *(v23 + 16) = v91;
  *(v23 + 24) = v24;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v109 = sub_22609A4F8();
  v112 = v25;

  v26 = v94;
  v27 = v112;
  *v112 = v93;
  v27[1] = v26;

  v28 = v96;
  v29 = v112;
  v112[2] = v95;
  v29[3] = v28;

  v30 = v98;
  v31 = v112;
  v112[4] = v97;
  v31[5] = v30;

  v32 = v100;
  v33 = v112;
  v112[6] = v99;
  v33[7] = v32;

  v34 = v102;
  v35 = v112;
  v112[8] = v101;
  v35[9] = v34;

  v36 = v104;
  v37 = v112;
  v112[10] = v103;
  v37[11] = v36;

  v38 = v106;
  v39 = v112;
  v112[12] = v105;
  v39[13] = v38;

  v40 = v108;
  v41 = v112;
  v112[14] = v107;
  v41[15] = v40;

  v42 = v111;
  v43 = v112;
  v112[16] = v110;
  v43[17] = v42;
  sub_225EF5418();

  if (os_log_type_enabled(v114, v115))
  {
    v44 = v60;
    v52 = sub_22609A188();
    v50[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v51 = 1;
    v53 = sub_225EF5468(1);
    v54 = sub_225EF5468(v51);
    v55 = v120;
    v120[0] = v52;
    v56 = &v119;
    v119 = v53;
    v57 = &v118;
    v118 = v54;
    sub_225EF54BC(2, v120);
    sub_225EF54BC(3, v55);
    v116 = v93;
    v117 = v94;
    sub_225EF73E8(&v116, v55, v56, v57);
    v58 = v44;
    if (v44)
    {

      __break(1u);
    }

    else
    {
      v116 = v95;
      v117 = v96;
      sub_225EF73E8(&v116, v120, &v119, &v118);
      v50[8] = 0;
      v116 = v97;
      v117 = v98;
      sub_225EF73E8(&v116, v120, &v119, &v118);
      v50[7] = 0;
      v116 = v99;
      v117 = v100;
      sub_225EF73E8(&v116, v120, &v119, &v118);
      v50[6] = 0;
      v116 = v101;
      v117 = v102;
      sub_225EF73E8(&v116, v120, &v119, &v118);
      v50[5] = 0;
      v116 = v103;
      v117 = v104;
      sub_225EF73E8(&v116, v120, &v119, &v118);
      v50[4] = 0;
      v116 = v105;
      v117 = v106;
      sub_225EF73E8(&v116, v120, &v119, &v118);
      v50[3] = 0;
      v116 = v107;
      v117 = v108;
      sub_225EF73E8(&v116, v120, &v119, &v118);
      v50[2] = 0;
      v116 = v110;
      v117 = v111;
      sub_225EF73E8(&v116, v120, &v119, &v118);
      _os_log_impl(&dword_225EEB000, v114, v115, "%@ %s:%ld queue task enqueued", v52, 0x20u);
      v50[1] = 1;
      sub_225EF7AF4(v53);
      sub_225EF7AF4(v54);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v114);
  (*(v75 + 8))(v74, v77);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v78);
  sub_2260998E8();
  sub_2260998E8();
  v45 = swift_allocObject();
  v46 = v72;
  v47 = v71;
  v48 = v59;
  *(v45 + 16) = v78;
  *(v45 + 24) = v46;
  *(v45 + 32) = v47;
  v120[1] = v48;
  v120[2] = v45;
  sub_226099DD8();
  (*(v62 + 8))(v65, v61);
  return (*(v67 + 8))(v70, v66);
}

uint64_t sub_22600C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[7] = a5;
  v6[6] = a4;
  v6[5] = a3;
  v6[2] = v6;
  v6[3] = 0;
  v6[4] = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D00, &qword_2260A0ED0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = sub_226099328();
  v6[10] = v8;
  v17 = *(v8 - 8);
  v6[11] = v17;
  v9 = *(v17 + 64) + 15;
  v6[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[13] = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  v6[14] = v18;
  v19 = *(v18 + 64);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_getAssociatedTypeWitness();
  v11 = *(*(sub_22609A198() - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v20 = *(a5 - 8);
  v6[20] = v20;
  v12 = *(v20 + 64) + 15;
  v6[21] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v6[22] = v13;
  v22 = *(v13 - 8);
  v6[23] = v22;
  v14 = *(v22 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[3] = a3;
  v6[4] = a4;
  v15 = v6[2];

  return MEMORY[0x2822009F8](sub_22600CBE8, 0, 0);
}

uint64_t sub_22600CBE8()
{
  v14 = v0[24];
  v1 = v0[21];
  v2 = v0[20];
  v15 = v0[8];
  v16 = v0[7];
  v3 = v0[5];
  v0[2] = v0;
  (*(v2 + 16))(v1, v3);
  sub_226099E98();
  v4 = v0[22];
  v5 = v0[8];
  v6 = v0[7];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[25] = AssociatedConformanceWitness;
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v17[26] = v8;
  *v8 = v17[2];
  v8[1] = sub_22600CD30;
  v9 = v17[24];
  v10 = v17[22];
  v11 = v17[19];
  v12 = v17[17];

  return MEMORY[0x282200310](v11, 0, 0, v12, v10, AssociatedConformanceWitness);
}

uint64_t sub_22600CD30()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  *(v2 + 16) = *v1;
  v8 = (v2 + 16);

  if (v0)
  {
    v6 = *v8;
    v5 = sub_22600D248;
  }

  else
  {
    v4 = *v8;
    v5 = sub_22600CE90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22600CE90()
{
  v1 = v0[19];
  v2 = v0[18];
  v0[2] = v0;
  if ((*(*(v2 - 8) + 48))(v1, 1) == 1)
  {
    v26 = v34[24];
    v3 = v34[22];
    v27 = v34[21];
    v28 = v34[19];
    v29 = v34[17];
    v30 = v34[16];
    v31 = v34[15];
    v32 = v34[12];
    v33 = v34[9];
    (*(v34[23] + 8))();

    v4 = *(v34[2] + 8);
    v5 = v34[2];

    return v4();
  }

  else
  {
    v7 = v34[19];
    v8 = v34[18];
    v9 = v34[10];
    v10 = v34[9];
    if (swift_dynamicCast())
    {
      (*(v34[11] + 56))(v34[9], 0, 1, v34[10]);
    }

    else
    {
      (*(v34[11] + 56))(v34[9], 1, 1, v34[10]);
    }

    if ((*(v34[11] + 48))(v34[9], 1, v34[10]) == 1)
    {
      sub_226024390(v34[9]);
    }

    else
    {
      v23 = v34[12];
      v24 = v34[10];
      v20 = v34[9];
      v21 = v34[6];
      v22 = v34[11];
      (*(v22 + 32))();
      sub_22600D510(v23);
      (*(v22 + 8))(v23, v24);
    }

    v11 = v34[22];
    v12 = v34[8];
    v13 = v34[7];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34[25] = AssociatedConformanceWitness;
    v14 = *(MEMORY[0x277D856D8] + 4);
    v15 = swift_task_alloc();
    v34[26] = v15;
    *v15 = v34[2];
    v15[1] = sub_22600CD30;
    v16 = v34[24];
    v17 = v34[22];
    v18 = v34[19];
    v19 = v34[17];

    return MEMORY[0x282200310](v18, 0, 0, v19, v17, AssociatedConformanceWitness);
  }
}

uint64_t sub_22600D248()
{
  v24 = v0[25];
  v23 = v0[22];
  v1 = v0[17];
  v22 = v0[16];
  v26 = v0[15];
  v21 = v0[14];
  v25 = v0[13];
  v0[2] = v0;
  v20 = *(v21 + 32);
  v20();
  (*(v21 + 16))(v26, v22, v25);
  swift_getAssociatedConformanceWitness();
  if (sub_22609A498())
  {
    (*(v19[14] + 8))(v19[16], v19[13]);
  }

  else
  {
    v18 = v19[16];
    v17 = v19[13];
    swift_allocError();
    (v20)(v2, v18, v17);
  }

  v9 = v19[24];
  v8 = v19[22];
  v10 = v19[21];
  v11 = v19[19];
  v12 = v19[17];
  v13 = v19[16];
  v14 = v19[15];
  v3 = v19[13];
  v15 = v19[12];
  v16 = v19[9];
  v7 = v19[23];
  (*(v19[14] + 8))();
  (*(v7 + 8))(v9, v8);

  v4 = *(v19[2] + 8);
  v5 = v19[2];

  return v4();
}

uint64_t sub_22600D510(uint64_t a1)
{
  v21 = a1;
  v30 = &unk_2260A0D18;
  v43 = 0;
  v42 = 0;
  v29 = sub_226099328();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v22 = v25;
  v23 = *(v25 + 64);
  v18 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29, v2, v3, v4);
  v28 = &v18 - v18;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v19 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v5, v6, v7);
  v34 = &v18 - v19;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v20 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v8, v9, v10);
  v38 = &v18 - v20;
  v43 = v11;
  v42 = v1;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v24);
  (*(v25 + 16))(v28, v21, v29);
  v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v12 = swift_allocObject();
  v13 = v25;
  v14 = v27;
  v15 = v28;
  v16 = v29;
  v31 = v12;
  *(v12 + 16) = v24;
  (*(v13 + 32))(v12 + v14, v15, v16);
  v40 = v30;
  v41 = v31;
  sub_226099DD8();
  (*(v32 + 8))(v34, v35);
  return (*(v36 + 8))(v38, v39);
}

uint64_t sub_22600D820(void *a1)
{
  v74 = a1;
  v80 = v1;
  v61 = 0;
  v81 = sub_225F3E198;
  v83 = sub_225F3E1C8;
  v85 = sub_226016ADC;
  v86 = sub_225EF7B84;
  v90 = sub_226016B0C;
  v93 = sub_225F2D374;
  v95 = sub_225EF7434;
  v97 = sub_225EF7434;
  v99 = sub_225F3E358;
  v101 = sub_225EF7434;
  v103 = sub_225EF7434;
  v105 = sub_225EF7B90;
  v107 = sub_225EF7434;
  v109 = sub_225EF7434;
  v112 = sub_225EF71D0;
  v60 = &unk_2260A0D28;
  ObjectType = swift_getObjectType();
  v124 = 0;
  v123 = 0;
  v63 = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64, v2, v3, v4);
  v68 = v51 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v5, v6, v7);
  v73 = v51 - v72;
  v79 = sub_226098C58();
  v77 = *(v79 - 8);
  v78 = v79 - 8;
  v75 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, v8, v9, v10);
  v11 = v51 - v75;
  v76 = v51 - v75;
  v124 = v12;
  v123 = v13;
  v14 = sub_225F7E9BC();
  (*(v77 + 16))(v11, v14, v79);
  MEMORY[0x277D82BE0](v80);
  v92 = 7;
  v82 = swift_allocObject();
  *(v82 + 16) = v80;
  v116 = sub_226098C48();
  v117 = sub_22609A0A8();
  v88 = 17;
  v96 = swift_allocObject();
  *(v96 + 16) = 64;
  v98 = swift_allocObject();
  v89 = 8;
  *(v98 + 16) = 8;
  v91 = 32;
  v15 = swift_allocObject();
  v16 = v82;
  v84 = v15;
  *(v15 + 16) = v81;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v84;
  v100 = v17;
  *(v17 + 16) = v83;
  *(v17 + 24) = v18;
  v102 = swift_allocObject();
  *(v102 + 16) = 32;
  v104 = swift_allocObject();
  *(v104 + 16) = v89;
  v19 = swift_allocObject();
  v87 = v19;
  *(v19 + 16) = v85;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v21 = v87;
  v106 = v20;
  *(v20 + 16) = v86;
  *(v20 + 24) = v21;
  v108 = swift_allocObject();
  *(v108 + 16) = 0;
  v110 = swift_allocObject();
  *(v110 + 16) = v89;
  v22 = swift_allocObject();
  v94 = v22;
  *(v22 + 16) = v90;
  *(v22 + 24) = 0;
  v23 = swift_allocObject();
  v24 = v94;
  v113 = v23;
  *(v23 + 16) = v93;
  *(v23 + 24) = v24;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v111 = sub_22609A4F8();
  v114 = v25;

  v26 = v96;
  v27 = v114;
  *v114 = v95;
  v27[1] = v26;

  v28 = v98;
  v29 = v114;
  v114[2] = v97;
  v29[3] = v28;

  v30 = v100;
  v31 = v114;
  v114[4] = v99;
  v31[5] = v30;

  v32 = v102;
  v33 = v114;
  v114[6] = v101;
  v33[7] = v32;

  v34 = v104;
  v35 = v114;
  v114[8] = v103;
  v35[9] = v34;

  v36 = v106;
  v37 = v114;
  v114[10] = v105;
  v37[11] = v36;

  v38 = v108;
  v39 = v114;
  v114[12] = v107;
  v39[13] = v38;

  v40 = v110;
  v41 = v114;
  v114[14] = v109;
  v41[15] = v40;

  v42 = v113;
  v43 = v114;
  v114[16] = v112;
  v43[17] = v42;
  sub_225EF5418();

  if (os_log_type_enabled(v116, v117))
  {
    v44 = v63;
    v53 = sub_22609A188();
    v51[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v52 = 1;
    v54 = sub_225EF5468(1);
    v55 = sub_225EF5468(v52);
    v56 = v122;
    v122[0] = v53;
    v57 = &v121;
    v121 = v54;
    v58 = &v120;
    v120 = v55;
    sub_225EF54BC(2, v122);
    sub_225EF54BC(3, v56);
    v118 = v95;
    v119 = v96;
    sub_225EF73E8(&v118, v56, v57, v58);
    v59 = v44;
    if (v44)
    {

      __break(1u);
    }

    else
    {
      v118 = v97;
      v119 = v98;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v51[8] = 0;
      v118 = v99;
      v119 = v100;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v51[7] = 0;
      v118 = v101;
      v119 = v102;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v51[6] = 0;
      v118 = v103;
      v119 = v104;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v51[5] = 0;
      v118 = v105;
      v119 = v106;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v51[4] = 0;
      v118 = v107;
      v119 = v108;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v51[3] = 0;
      v118 = v109;
      v119 = v110;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v51[2] = 0;
      v118 = v112;
      v119 = v113;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      _os_log_impl(&dword_225EEB000, v116, v117, "%@ %s:%ld queue task enqueued", v53, 0x20u);
      v51[1] = 1;
      sub_225EF7AF4(v54);
      sub_225EF7AF4(v55);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v116);
  (*(v77 + 8))(v76, v79);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v80);
  v45 = v74;
  v46 = swift_allocObject();
  v47 = v74;
  v48 = ObjectType;
  v49 = v60;
  *(v46 + 16) = v80;
  *(v46 + 24) = v47;
  *(v46 + 32) = v48;
  v122[1] = v49;
  v122[2] = v46;
  sub_226099DD8();
  (*(v65 + 8))(v68, v64);
  return (*(v70 + 8))(v73, v69);
}

Float64 sub_22600E6BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  time.value = *a1;
  time.timescale = v1;
  time.flags = v2;
  time.epoch = v3;
  return CMTimeGetSeconds(&time);
}

uint64_t sub_22600E73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 448) = a4;
  *(v4 + 440) = a3;
  *(v4 + 432) = a2;
  *(v4 + 336) = v4;
  *(v4 + 344) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 352) = 0;
  *(v4 + 376) = 0;
  memset((v4 + 56), 0, 0x28uLL);
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 688) = 0;
  *(v4 + 400) = 0;
  *(v4 + 424) = 0;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00) - 8) + 64);
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  v5 = sub_2260990C8();
  *(v4 + 496) = v5;
  v11 = *(v5 - 8);
  *(v4 + 504) = v11;
  v6 = *(v11 + 64) + 15;
  *(v4 + 512) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C80, &qword_2260A0E08) - 8) + 64);
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  v7 = sub_226098C58();
  *(v4 + 560) = v7;
  v13 = *(v7 - 8);
  *(v4 + 568) = v13;
  v14 = *(v13 + 64);
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 344) = a2;
  *(v4 + 240) = a3;
  *(v4 + 248) = a4;
  v8 = *(v4 + 336);

  return MEMORY[0x2822009F8](sub_22600EA3C, 0, 0);
}

uint64_t sub_22600EA3C()
{
  v164 = v0;
  v1 = v0[73];
  v130 = v0[71];
  v131 = v0[70];
  v133 = v0[54];
  v0[42] = v0;
  v2 = sub_225F7E9BC();
  v132 = *(v130 + 16);
  v132(v1, v2, v131);
  MEMORY[0x277D82BE0](v133);
  v134 = swift_allocObject();
  *(v134 + 16) = v133;
  v148 = sub_226098C48();
  v149 = sub_22609A0A8();
  v138 = swift_allocObject();
  *(v138 + 16) = 64;
  v139 = swift_allocObject();
  *(v139 + 16) = 8;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_225F3E198;
  *(v135 + 24) = v134;
  v140 = swift_allocObject();
  *(v140 + 16) = sub_225F3E1C8;
  *(v140 + 24) = v135;
  v141 = swift_allocObject();
  *(v141 + 16) = 32;
  v142 = swift_allocObject();
  *(v142 + 16) = 8;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_22600E700;
  *(v136 + 24) = 0;
  v143 = swift_allocObject();
  *(v143 + 16) = sub_225EF7B84;
  *(v143 + 24) = v136;
  v144 = swift_allocObject();
  *(v144 + 16) = 0;
  v145 = swift_allocObject();
  *(v145 + 16) = 8;
  v137 = swift_allocObject();
  *(v137 + 16) = sub_226011110;
  *(v137 + 24) = 0;
  v146 = swift_allocObject();
  *(v146 + 16) = sub_225F2D374;
  *(v146 + 24) = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v147 = v3;

  *v147 = sub_225EF7434;
  v147[1] = v138;

  v147[2] = sub_225EF7434;
  v147[3] = v139;

  v147[4] = sub_225F3E358;
  v147[5] = v140;

  v147[6] = sub_225EF7434;
  v147[7] = v141;

  v147[8] = sub_225EF7434;
  v147[9] = v142;

  v147[10] = sub_225EF7B90;
  v147[11] = v143;

  v147[12] = sub_225EF7434;
  v147[13] = v144;

  v147[14] = sub_225EF7434;
  v147[15] = v145;

  v147[16] = sub_225EF71D0;
  v147[17] = v146;
  sub_225EF5418();

  if (os_log_type_enabled(v148, v149))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v127 = sub_225EF5468(1);
    v128 = sub_225EF5468(1);
    v159 = buf;
    v160 = v127;
    v161 = v128;
    sub_225EF54BC(2, &v159);
    sub_225EF54BC(3, &v159);
    v162 = sub_225EF7434;
    v163 = v138;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    v162 = sub_225EF7434;
    v163 = v139;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    v162 = sub_225F3E358;
    v163 = v140;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    v162 = sub_225EF7434;
    v163 = v141;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    v162 = sub_225EF7434;
    v163 = v142;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    v162 = sub_225EF7B90;
    v163 = v143;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    v162 = sub_225EF7434;
    v163 = v144;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    v162 = sub_225EF7434;
    v163 = v145;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    v162 = sub_225EF71D0;
    v163 = v146;
    sub_225EF73E8(&v162, &v159, &v160, &v161);
    _os_log_impl(&dword_225EEB000, v148, v149, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v127);
    sub_225EF7AF4(v128);
    sub_22609A168();
  }

  else
  {
  }

  v121 = *(v129 + 584);
  v122 = *(v129 + 560);
  v124 = *(v129 + 432);
  v120 = *(v129 + 568);
  MEMORY[0x277D82BD8](v148);
  v123 = *(v120 + 8);
  v123(v121, v122);
  v125 = [v124 delegate];
  if (!v125)
  {
    sub_22601111C(*(v129 + 432));
LABEL_40:
    v14 = *(v129 + 584);
    v17 = *(v129 + 576);
    v18 = *(v129 + 552);
    v19 = *(v129 + 544);
    v20 = *(v129 + 536);
    v21 = *(v129 + 528);
    v22 = *(v129 + 520);
    v23 = *(v129 + 512);
    v24 = *(v129 + 488);
    v25 = *(v129 + 480);
    v26 = *(v129 + 472);
    v27 = *(v129 + 464);
    v28 = *(v129 + 456);

    v15 = *(*(v129 + 336) + 8);
    v16 = *(v129 + 336);

    return v15();
  }

  v113 = *(v129 + 552);
  v116 = *(v129 + 544);
  v117 = *(v129 + 536);
  v115 = *(v129 + 448);
  v114 = *(v129 + 440);
  *(v129 + 352) = v125;
  sub_2260998E8();
  *(v129 + 360) = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B08, &qword_2260A0B30);
  sub_226023348();
  sub_226099FE8();

  sub_2260998E8();
  *(v129 + 368) = v115;
  sub_226099FE8();

  sub_2260233D0(v116, v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C90, &qword_2260A0E10);
  v119 = *(*(v118 - 8) + 48);
  if (v119(v117, 1) == 1)
  {
    return sub_22609A3B8();
  }

  v4 = *(v129 + 536);
  v110 = *(v129 + 512);
  v111 = *(v129 + 496);
  v109 = *(v129 + 504);
  v104 = *(v4 + 8);
  v105 = v4 + *(v118 + 48);
  sub_226098EE8();
  v106 = sub_226098FA8();
  v107 = *(v106 - 8);
  v108 = *(v107 + 8);
  v108(v105);
  v112 = (*(v109 + 88))(v110, v111);
  if (v112 == *MEMORY[0x277CDCBC0])
  {
    v102 = *(v129 + 544);
    v103 = *(v129 + 528);
    *(v129 + 688) = 0;
    sub_225F27078();
    sub_2260233D0(v102, v103);
    if ((v119)(v103, 1, v118) == 1)
    {
      return sub_22609A3B8();
    }

    v5 = *(v129 + 528);
    v101 = *(v129 + 520);
    v99 = *(v5 + 8);
    v100 = v5 + *(v118 + 48);
    sub_2260233D0(*(v129 + 544), v101);
    if ((v119)(v101, 1, v118) == 1)
    {
      return sub_22609A3B8();
    }

    v7 = *(v129 + 520);
    v96 = *(v7 + 8);
    v95 = v7 + *(v118 + 48);
    MEMORY[0x22AA72090]();
    (v108)(v95, v106);
    v8 = *(v129 + 648);
    v9 = *(v129 + 652);
    v10 = *(v129 + 656);
    v156 = *(v129 + 640);
    v157 = __PAIR64__(v9, v8);
    v158 = v10;
    v97 = sub_225F1D3FC(v100, v156, __SPAIR64__(v9, v8), v10, 0);

    (v108)(v100, v106);

    *(v129 + 400) = v97;
    *(v129 + 408) = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB0, &unk_2260A0300);
    sub_225F3E110();
    sub_226099FE8();
    v98 = *(v129 + 416);
    if (v98)
    {
      v94 = *(v129 + 432);
      *(v129 + 424) = v98;
      swift_getObjectType();
      MEMORY[0x277D82BE0](v94);
      sub_2260998E8();
      sub_225F1E118();
      v93 = sub_226099C78();

      [v125 localSpeechRecognizer:v94 didRecognizeTokens:v93];
      MEMORY[0x277D82BD8](v93);
      swift_unknownObjectRelease();
    }

    goto LABEL_39;
  }

  if (v112 == *MEMORY[0x277CDCBD0] || v112 == *MEMORY[0x277CDCBB0])
  {
LABEL_38:

LABEL_39:
    v29 = *(v129 + 552);
    v30 = *(v129 + 432);
    sub_226023554(*(v129 + 544));
    sub_226023554(v29);
    swift_unknownObjectRelease();
    sub_22601111C(v30);
    goto LABEL_40;
  }

  if (v112 != *MEMORY[0x277CDCBB8] && v112 != *MEMORY[0x277CDCBA0])
  {
    if (v112 != *MEMORY[0x277CDCBA8] && v112 != *MEMORY[0x277CDCBC8])
    {
      (*(*(v129 + 504) + 8))(*(v129 + 512), *(v129 + 496));
    }

    goto LABEL_38;
  }

  v11 = *(v129 + 576);
  v76 = *(v129 + 560);
  v79 = *(v129 + 448);
  v78 = *(v129 + 440);
  v77 = *(v129 + 432);
  v75 = swift_allocObject();
  *(v129 + 376) = v75 + 16;
  *(v75 + 16) = 0;
  v12 = sub_225F7E9BC();
  v132(v11, v12, v76);
  MEMORY[0x277D82BE0](v77);
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  sub_2260998E8();
  sub_2260998E8();
  v82 = swift_allocObject();
  *(v82 + 16) = v78;
  *(v82 + 24) = v79;
  oslog = sub_226098C48();
  v92 = sub_22609A088();
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_226023628;
  *(v81 + 24) = v80;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_225F2D374;
  *(v86 + 24) = v81;
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = 8;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_226023630;
  *(v83 + 24) = v82;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_225F2D374;
  *(v89 + 24) = v83;
  sub_22609A4F8();
  v90 = v13;

  *v90 = sub_225EF7434;
  v90[1] = v84;

  v90[2] = sub_225EF7434;
  v90[3] = v85;

  v90[4] = sub_225EF71D0;
  v90[5] = v86;

  v90[6] = sub_225EF7434;
  v90[7] = v87;

  v90[8] = sub_225EF7434;
  v90[9] = v88;

  v90[10] = sub_225EF71D0;
  v90[11] = v89;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v92))
  {
    v72 = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v73 = sub_225EF5468(0);
    v74 = sub_225EF5468(0);
    v151 = v72;
    v152 = v73;
    v153 = v74;
    sub_225EF54BC(0, &v151);
    sub_225EF54BC(2, &v151);
    v154 = sub_225EF7434;
    v155 = v84;
    sub_225EF73E8(&v154, &v151, &v152, &v153);
    v154 = sub_225EF7434;
    v155 = v85;
    sub_225EF73E8(&v154, &v151, &v152, &v153);
    v154 = sub_225EF71D0;
    v155 = v86;
    sub_225EF73E8(&v154, &v151, &v152, &v153);
    v154 = sub_225EF7434;
    v155 = v87;
    sub_225EF73E8(&v154, &v151, &v152, &v153);
    v154 = sub_225EF7434;
    v155 = v88;
    sub_225EF73E8(&v154, &v151, &v152, &v153);
    v154 = sub_225EF71D0;
    v155 = v89;
    sub_225EF73E8(&v154, &v151, &v152, &v153);
    _os_log_impl(&dword_225EEB000, oslog, v92, "MUX: number of users in userIdMask: %ld, number of users represented in current result: %ld", v72, 0x16u);
    sub_225EF7AF4(v73);
    sub_225EF7AF4(v74);
    sub_22609A168();
  }

  else
  {
  }

  v66 = *(v129 + 576);
  v67 = *(v129 + 560);
  v68 = *(v129 + 440);
  MEMORY[0x277D82BD8](oslog);
  v123(v66, v67);
  sub_2260998E8();
  v70 = MEMORY[0x277D837D0];
  v71 = MEMORY[0x277D837E0];
  v69 = sub_2260998E8();

  MEMORY[0x22AA729D0](v69, v70, v106, v71);
  memcpy((v129 + 56), (v129 + 16), 0x28uLL);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C98, &qword_2260A0E18);
    sub_2260998D8();
    v64 = *(v129 + 256);
    v65 = *(v129 + 264);
    if (!v65)
    {
      sub_225F15874((v129 + 56));

      goto LABEL_39;
    }

    v58 = *(v129 + 488);
    v61 = *(v129 + 480);
    v62 = *(v129 + 472);
    v60 = *(v129 + 448);
    v59 = *(v129 + 440);
    *(v129 + 272) = v64;
    *(v129 + 280) = v65;
    sub_2260998E8();
    sub_2260998E8();
    *(v129 + 288) = v64;
    *(v129 + 296) = v65;
    sub_226099938();
    sub_225EFE6BC(v129 + 288);

    sub_2260998E8();
    sub_2260998E8();
    *(v129 + 304) = v64;
    *(v129 + 312) = v65;
    sub_226099938();
    sub_225EFE6BC(v129 + 304);

    sub_2260998E8();
    sub_225F27078();
    sub_225F2C4E8(v61, v62);
    v63 = *(v107 + 48);
    if (v63(v62, 1, v106) == 1)
    {
      break;
    }

    v57 = *(v129 + 464);
    sub_225F2C4E8(*(v129 + 488), v57);
    if (v63(v57, 1, v106) == 1)
    {
      break;
    }

    v56 = *(v129 + 456);
    sub_225F2C4E8(*(v129 + 480), v56);
    if (v63(v56, 1, v106) == 1)
    {
      break;
    }

    v51 = *(v129 + 472);
    v50 = *(v129 + 464);
    v38 = *(v129 + 456);
    v53 = *(v129 + 432);
    MEMORY[0x22AA72090]();
    (v108)(v38, v106);
    v42 = *(v129 + 592);
    v43 = *(v129 + 600);
    v44 = *(v129 + 608);
    v39 = (v53 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
    swift_beginAccess();
    v46 = *v39;
    swift_endAccess();
    v40 = (v53 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
    swift_beginAccess();
    v47 = *v40;
    v49 = v40[1];
    sub_2260998E8();
    swift_endAccess();
    v41 = (v53 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
    swift_beginAccess();
    v45 = *v41;
    v48 = v41[1];
    sub_2260998E8();
    swift_endAccess();
    v52 = sub_225F1E204(v51, v50, v42, v43, v44, 1, v47, v49, v46, v45, v48, 0, 0);

    (v108)(v50, v106);
    (v108)(v51, v106);
    *(v129 + 384) = v52;
    *(v129 + 320) = v64;
    *(v129 + 328) = v65;
    v150 = sub_226011CF0(v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CA0, &unk_2260A0E20);
    sub_226099948();
    sub_226011DF0(v150, v75);
    v54 = (v53 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
    swift_beginAccess();
    v55 = *v54;
    swift_endAccess();
    if ((v55 & 1) == 0)
    {
      v35 = objc_opt_self();
      *(v129 + 392) = sub_226011CF0(v75);
      sub_22602363C();
      sub_226099FE8();
      v37 = *(v129 + 200);
      v36 = *(v129 + 208);

      if (!v37)
      {
        return sub_22609A3B8();
      }

      v32 = *(v129 + 432);
      v34 = [v35 hasRecognizedAnythingInAFSpeechPackage_];
      MEMORY[0x277D82BD8](v36);

      v33 = (v32 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
      swift_beginAccess();
      *v33 = v34;
      swift_endAccess();
    }

    v31 = *(v129 + 488);
    sub_225F2C610(*(v129 + 480));
    sub_225F2C610(v31);
  }

  return sub_22609A3B8();
}

uint64_t sub_22601111C(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_22600E700;
  v59 = sub_225EF7B84;
  v63 = sub_22601D4E0;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_226011CF0(uint64_t a1)
{
  v6 = *(a1 + 16);
  sub_2260998E8();
  if (v6)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BF0, qword_2260A0D30);
  sub_22609A4F8();
  sub_225F2C420();
  v3 = sub_2260998A8();
  sub_2260998E8();
  swift_beginAccess();
  v1 = *(a1 + 16);
  *(a1 + 16) = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_226011DF0(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  v2 = *(a2 + 16);
  *(a2 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_226011E70(uint64_t a1)
{
  v8 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask;
  v9 = (a1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask);
  swift_beginAccess();
  if (*v9)
  {
    v3 = *(a1 + v8);
    sub_2260998E8();
    swift_endAccess();
    v4 = sub_2260998C8();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    swift_endAccess();
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_226011F98()
{
  sub_2260998E8();
  sub_226098FA8();
  sub_2260998E8();

  v1 = sub_2260998C8();

  return v1;
}

uint64_t sub_226012060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 384) = a3;
  *(v3 + 376) = a2;
  *(v3 + 280) = v3;
  *(v3 + 288) = 0;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 616) = 0;
  *(v3 + 344) = 0;
  *(v3 + 368) = 0;
  v4 = sub_2260990C8();
  *(v3 + 392) = v4;
  v11 = *(v4 - 8);
  *(v3 + 400) = v11;
  v5 = *(v11 + 64) + 15;
  *(v3 + 408) = swift_task_alloc();
  v6 = sub_226098FA8();
  *(v3 + 416) = v6;
  v12 = *(v6 - 8);
  *(v3 + 424) = v12;
  v13 = *(v12 + 64);
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  v7 = sub_226098C58();
  *(v3 + 448) = v7;
  v14 = *(v7 - 8);
  *(v3 + 456) = v14;
  v8 = *(v14 + 64) + 15;
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 288) = a2;
  *(v3 + 296) = a3;
  v9 = *(v3 + 280);

  return MEMORY[0x2822009F8](sub_226012288, 0, 0);
}

uint64_t sub_226012288()
{
  v154 = v0;
  v1 = v0[58];
  v127 = v0[57];
  v128 = v0[56];
  v129 = v0[47];
  v0[35] = v0;
  v2 = sub_225F7E9BC();
  (*(v127 + 16))(v1, v2, v128);
  MEMORY[0x277D82BE0](v129);
  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  v144 = sub_226098C48();
  v145 = sub_22609A0A8();
  v134 = swift_allocObject();
  *(v134 + 16) = 64;
  v135 = swift_allocObject();
  *(v135 + 16) = 8;
  v131 = swift_allocObject();
  *(v131 + 16) = sub_225F3E198;
  *(v131 + 24) = v130;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_225F3E1C8;
  *(v136 + 24) = v131;
  v137 = swift_allocObject();
  *(v137 + 16) = 32;
  v138 = swift_allocObject();
  *(v138 + 16) = 8;
  v132 = swift_allocObject();
  *(v132 + 16) = sub_226012024;
  *(v132 + 24) = 0;
  v139 = swift_allocObject();
  *(v139 + 16) = sub_225EF7B84;
  *(v139 + 24) = v132;
  v140 = swift_allocObject();
  *(v140 + 16) = 0;
  v141 = swift_allocObject();
  *(v141 + 16) = 8;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_226014E74;
  *(v133 + 24) = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = sub_225F2D374;
  *(v142 + 24) = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v143 = v3;

  *v143 = sub_225EF7434;
  v143[1] = v134;

  v143[2] = sub_225EF7434;
  v143[3] = v135;

  v143[4] = sub_225F3E358;
  v143[5] = v136;

  v143[6] = sub_225EF7434;
  v143[7] = v137;

  v143[8] = sub_225EF7434;
  v143[9] = v138;

  v143[10] = sub_225EF7B90;
  v143[11] = v139;

  v143[12] = sub_225EF7434;
  v143[13] = v140;

  v143[14] = sub_225EF7434;
  v143[15] = v141;

  v143[16] = sub_225EF71D0;
  v143[17] = v142;
  sub_225EF5418();

  if (os_log_type_enabled(v144, v145))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v124 = sub_225EF5468(1);
    v125 = sub_225EF5468(1);
    v149 = buf;
    v150 = v124;
    v151 = v125;
    sub_225EF54BC(2, &v149);
    sub_225EF54BC(3, &v149);
    v152 = sub_225EF7434;
    v153 = v134;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    v152 = sub_225EF7434;
    v153 = v135;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    v152 = sub_225F3E358;
    v153 = v136;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    v152 = sub_225EF7434;
    v153 = v137;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    v152 = sub_225EF7434;
    v153 = v138;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    v152 = sub_225EF7B90;
    v153 = v139;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    v152 = sub_225EF7434;
    v153 = v140;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    v152 = sub_225EF7434;
    v153 = v141;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    v152 = sub_225EF71D0;
    v153 = v142;
    sub_225EF73E8(&v152, &v149, &v150, &v151);
    _os_log_impl(&dword_225EEB000, v144, v145, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v124);
    sub_225EF7AF4(v125);
    sub_22609A168();
  }

  else
  {
  }

  v119 = *(v126 + 464);
  v120 = *(v126 + 448);
  v121 = *(v126 + 376);
  v118 = *(v126 + 456);
  MEMORY[0x277D82BD8](v144);
  (*(v118 + 8))(v119, v120);
  v122 = [v121 delegate];
  *(v126 + 472) = v122;
  if (v122)
  {
    v4 = *(v126 + 440);
    v5 = *(v126 + 432);
    v6 = *(v126 + 424);
    v111 = *(v126 + 416);
    v115 = *(v126 + 408);
    v116 = *(v126 + 392);
    v110 = *(v126 + 384);
    v114 = *(v126 + 400);
    *(v126 + 304) = v122;
    v112 = *(v6 + 16);
    v112(v4);
    v7 = type metadata accessor for CombinedTranscriberOutput();
    (v112)(v5, v110 + *(v7 + 24), v111);
    v113 = swift_allocObject();
    *(v126 + 480) = v113;
    *(v126 + 312) = v113 + 16;
    *(v113 + 16) = 0;
    sub_226098EE8();
    v117 = (*(v114 + 88))(v115, v116);
    if (v117 == *MEMORY[0x277CDCBC0])
    {
      v107 = *(v126 + 432);
      *(v126 + 616) = 0;
      sub_225F27078();
      MEMORY[0x22AA72090]();
      v108 = sub_225F1D3FC(v107, *(v126 + 568), *(v126 + 576), *(v126 + 584), 0);
      *(v126 + 344) = v108;
      *(v126 + 352) = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB0, &unk_2260A0300);
      sub_225F3E110();
      sub_226099FE8();
      v109 = *(v126 + 360);
      if (v109)
      {
        v106 = *(v126 + 376);
        *(v126 + 368) = v109;
        swift_getObjectType();
        MEMORY[0x277D82BE0](v106);
        sub_2260998E8();
        sub_225F1E118();
        v105 = sub_226099C78();

        [v122 localSpeechRecognizer:v106 didRecognizeTokens:v105];
        MEMORY[0x277D82BD8](v105);
        swift_unknownObjectRelease();
      }

      goto LABEL_60;
    }

    if (v117 == *MEMORY[0x277CDCBD0])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      if ([v122 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v104 = swift_allocObject();
        *(v104 + 16) = v122;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_226023744;
        *(v8 + 24) = v104;
        v148 = sub_2260236F0;
      }

      else
      {
        v148 = 0;
      }

      if (v148)
      {
        v101 = *(v126 + 440);
        v100 = *(v126 + 432);
        v103 = *(v126 + 376);
        MEMORY[0x277D82BE0](v103);
        v102 = sub_226015A54(v113, v100, v101, v103);
        (v148)(v103);
        MEMORY[0x277D82BD8](v102);
        swift_unknownObjectRelease();
      }

      goto LABEL_23;
    }

    if (v117 == *MEMORY[0x277CDCBB0])
    {
      v93 = *(v126 + 440);
      v92 = *(v126 + 432);
      v81 = *(v126 + 384);
      v86 = *(v126 + 376);
      sub_225F27078();
      v82 = sub_225F291C0(v81);
      *(v126 + 328) = v82;
      MEMORY[0x22AA72090]();
      v88 = *(v126 + 520);
      v89 = *(v126 + 528);
      v90 = *(v126 + 536);
      v83 = (v86 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
      swift_beginAccess();
      v94 = *v83;
      swift_endAccess();
      v84 = (v86 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
      swift_beginAccess();
      v95 = *v84;
      swift_endAccess();
      v85 = (v86 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
      swift_beginAccess();
      v96 = *v85;
      v98 = v85[1];
      sub_2260998E8();
      swift_endAccess();
      v87 = (v86 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
      swift_beginAccess();
      v91 = *v87;
      v97 = v87[1];
      sub_2260998E8();
      swift_endAccess();
      v99 = sub_225F1E204(v92, v93, v88, v89, v90, v95 & 1, v96, v98, v94, v91, v97, 1u, 0);

      *(v126 + 336) = v99;
      swift_getObjectType();
      swift_unknownObjectRetain();
      if ([v122 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v80 = swift_allocObject();
        *(v80 + 16) = v122;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_2260236FC;
        *(v9 + 24) = v80;
        v147 = sub_226023738;
      }

      else
      {
        v147 = 0;
      }

      if (v147)
      {
        v79 = *(v126 + 376);
        MEMORY[0x277D82BE0](v79);
        MEMORY[0x277D82BE0](v99);
        MEMORY[0x277D82BE0](v82);
        v147(v79, v99, v82);
        MEMORY[0x277D82BD8](v82);
        MEMORY[0x277D82BD8](v99);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v82);
      goto LABEL_60;
    }

    if (v117 == *MEMORY[0x277CDCBB8] || v117 == *MEMORY[0x277CDCBA0])
    {
      v74 = *(v126 + 440);
      v73 = *(v126 + 432);
      v75 = *(v126 + 376);
      v76 = objc_opt_self();
      v77 = sub_226015A54(v113, v73, v74, v75);
      v78 = [v76 hasRecognizedAnythingInAFSpeechPackage_];
      MEMORY[0x277D82BD8](v77);
      if (v78)
      {
        v72 = (*(v126 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
        swift_beginAccess();
        if (*v72)
        {
          v10 = *v72;

          swift_endAccess();
          sub_226030F64();
        }

        else
        {
          swift_endAccess();
        }

        v71 = (*(v126 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
        swift_beginAccess();
        if (*v71)
        {
          v69 = *v71;
          *(v126 + 488) = *v71;

          swift_endAccess();
          v11 = v69;
          v12 = *(v126 + 280);
          v13 = sub_22601440C;

          return MEMORY[0x2822009F8](v13, v11, 0);
        }

        swift_endAccess();
        v70 = (*(v126 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
        swift_beginAccess();
        *v70 = 1;
        swift_endAccess();
      }

      v65 = *(v126 + 480);
      v64 = *(v126 + 440);
      v63 = *(v126 + 432);
      v68 = *(v126 + 376);
      v66 = *(v126 + 472);
      swift_getObjectType();
      MEMORY[0x277D82BE0](v68);
      v67 = sub_226015A54(v65, v63, v64, v68);
      [v66 localSpeechRecognizer:v68 didRecognizePackage:?];
      MEMORY[0x277D82BD8](v67);
      swift_unknownObjectRelease();
      goto LABEL_60;
    }

    if (v117 != *MEMORY[0x277CDCBA8])
    {
      if (v117 != *MEMORY[0x277CDCBC8])
      {
        (*(*(v126 + 400) + 8))(*(v126 + 408), *(v126 + 392));
LABEL_60:
        v20 = *(v126 + 480);
        v30 = *(v126 + 440);
        v29 = *(v126 + 432);
        v31 = *(v126 + 416);
        v34 = *(v126 + 376);
        v33 = *(v126 + 472);
        v28 = *(v126 + 424);

        v32 = *(v28 + 8);
        v32(v29, v31);
        v32(v30, v31);
        swift_unknownObjectRelease();
        sub_226014E80(v34);
        goto LABEL_61;
      }

      v48 = (*(v126 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
      swift_beginAccess();
      if (!*v48)
      {
        swift_endAccess();
        v47 = *(v126 + 472);
        swift_getObjectType();
        swift_unknownObjectRetain();
        if ([v47 respondsToSelector_])
        {
          v41 = *(v126 + 472);
          swift_unknownObjectRetain();
          v42 = swift_allocObject();
          *(v42 + 16) = v41;
          v18 = swift_allocObject();
          *(v18 + 16) = sub_2260236C4;
          *(v18 + 24) = v42;
          v146 = sub_2260236F0;
        }

        else
        {
          v146 = 0;
        }

        if (v146)
        {
          v37 = *(v126 + 480);
          v36 = *(v126 + 440);
          v35 = *(v126 + 432);
          v39 = *(v126 + 376);
          v40 = *(v126 + 472);
          MEMORY[0x277D82BE0](v39);
          v38 = sub_226015A54(v37, v35, v36, v39);
          (v146)(v39);
          MEMORY[0x277D82BD8](v38);
          swift_unknownObjectRelease();
        }

        else
        {
          v19 = *(v126 + 472);
        }

LABEL_23:
        swift_unknownObjectRelease();
        goto LABEL_60;
      }

      v44 = *(v126 + 440);
      v43 = *(v126 + 432);
      v45 = *(v126 + 376);
      v46 = *v48;
      *(v126 + 504) = *v48;

      swift_endAccess();
      v16 = sub_226015A54(v113, v43, v44, v45);
      v11 = v46;
      *(v126 + 512) = v16;
      v17 = *(v126 + 280);
      v13 = sub_226014A04;

      return MEMORY[0x2822009F8](v13, v11, 0);
    }

    v58 = *(v126 + 440);
    v57 = *(v126 + 432);
    v59 = *(v126 + 376);
    v60 = objc_opt_self();
    v61 = sub_226015A54(v113, v57, v58, v59);
    v62 = [v60 hasRecognizedAnythingInAFSpeechPackage_];
    MEMORY[0x277D82BD8](v61);
    if (v62)
    {
      v56 = (*(v126 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
      swift_beginAccess();
      if (*v56)
      {
        v14 = *v56;

        swift_endAccess();
        sub_226030F64();
      }

      else
      {
        swift_endAccess();
      }

      v55 = (*(v126 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
      swift_beginAccess();
      if (*v55)
      {
        v53 = *v55;
        *(v126 + 496) = *v55;

        swift_endAccess();
        v11 = v53;
        v15 = *(v126 + 280);
        v13 = sub_2260146F4;

        return MEMORY[0x2822009F8](v13, v11, 0);
      }

      swift_endAccess();
      v54 = (*(v126 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
      swift_beginAccess();
      *v54 = 1;
      swift_endAccess();
    }

    v49 = *(v126 + 432);
    v51 = *(v126 + 376);
    v50 = *(v126 + 472);
    sub_225F27078();
    v52 = sub_225F265F4(v49);
    *(v126 + 320) = v52;
    swift_getObjectType();
    MEMORY[0x277D82BE0](v51);
    MEMORY[0x277D82BE0](v52);
    [v50 localSpeechRecognizer:v51 didRecognizePackage:v52];
    MEMORY[0x277D82BD8](v52);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v52);
    goto LABEL_60;
  }

  sub_226014E80(*(v126 + 376));
LABEL_61:
  v21 = *(v126 + 464);
  v25 = *(v126 + 440);
  v26 = *(v126 + 432);
  v27 = *(v126 + 408);

  v22 = *(*(v126 + 280) + 8);
  v23 = *(v126 + 280);

  return v22();
}

uint64_t sub_22601440C()
{
  v1 = *(v0 + 488);
  *(v0 + 280) = v0;
  sub_225F32504();

  v2 = *(v0 + 280);

  return MEMORY[0x2822009F8](sub_22601448C, 0, 0);
}

uint64_t sub_22601448C()
{
  v0[35] = v0;
  v6 = (v0[47] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  *v6 = 1;
  swift_endAccess();
  v9 = v0[60];
  v10 = v0[59];
  v8 = v0[55];
  v7 = v0[54];
  v12 = v0[47];
  swift_getObjectType();
  MEMORY[0x277D82BE0](v12);
  v11 = sub_226015A54(v9, v7, v8, v12);
  [v10 localSpeechRecognizer:v12 didRecognizePackage:?];
  MEMORY[0x277D82BD8](v11);
  swift_unknownObjectRelease();
  v1 = v0[60];
  v18 = v0[59];
  v15 = v0[55];
  v14 = v0[54];
  v13 = v0[53];
  v16 = v0[52];
  v19 = v0[47];

  v17 = *(v13 + 8);
  v17(v14, v16);
  v17(v15, v16);
  swift_unknownObjectRelease();
  sub_226014E80(v19);
  v2 = v0[58];
  v20 = v0[55];
  v21 = v0[54];
  v22 = v0[51];

  v3 = *(v0[35] + 8);
  v4 = v0[35];

  return v3();
}

uint64_t sub_2260146F4()
{
  v1 = *(v0 + 496);
  *(v0 + 280) = v0;
  sub_225F32504();

  v2 = *(v0 + 280);

  return MEMORY[0x2822009F8](sub_226014774, 0, 0);
}

uint64_t sub_226014774()
{
  v0[35] = v0;
  v6 = (v0[47] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  *v6 = 1;
  swift_endAccess();
  v8 = v0[59];
  v7 = v0[54];
  v9 = v0[47];
  sub_225F27078();
  v10 = sub_225F265F4(v7);
  v0[40] = v10;
  swift_getObjectType();
  MEMORY[0x277D82BE0](v9);
  MEMORY[0x277D82BE0](v10);
  [v8 localSpeechRecognizer:v9 didRecognizePackage:v10];
  MEMORY[0x277D82BD8](v10);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v10);
  v1 = v0[60];
  v16 = v0[59];
  v13 = v0[55];
  v12 = v0[54];
  v11 = v0[53];
  v14 = v0[52];
  v17 = v0[47];

  v15 = *(v11 + 8);
  v15(v12, v14);
  v15(v13, v14);
  swift_unknownObjectRelease();
  sub_226014E80(v17);
  v2 = v0[58];
  v18 = v0[55];
  v19 = v0[54];
  v20 = v0[51];

  v3 = *(v0[35] + 8);
  v4 = v0[35];

  return v3();
}

uint64_t sub_226014A04()
{
  v1 = v0[64];
  v5 = v1;
  v2 = v0[63];
  v0[35] = v0;
  sub_225F325D4(v1);
  MEMORY[0x277D82BD8](v5);

  v3 = v0[35];

  return MEMORY[0x2822009F8](sub_226014A9C, 0, 0);
}

uint64_t sub_226014A9C()
{
  *(v0 + 280) = v0;
  v27 = *(v0 + 472);
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([v27 respondsToSelector_])
  {
    v24 = v26[59];
    swift_unknownObjectRetain();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v1 = swift_allocObject();
    *(v1 + 16) = sub_2260236C4;
    *(v1 + 24) = v25;
    v28 = sub_2260236F0;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v20 = v26[60];
    v19 = v26[55];
    v18 = v26[54];
    v22 = v26[47];
    v23 = v26[59];
    MEMORY[0x277D82BE0](v22);
    v21 = sub_226015A54(v20, v18, v19, v22);
    (v28)(v22);
    MEMORY[0x277D82BD8](v21);
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = v26[59];
  }

  swift_unknownObjectRelease();
  v3 = v26[60];
  v10 = v26[55];
  v9 = v26[54];
  v11 = v26[52];
  v14 = v26[47];
  v13 = v26[59];
  v8 = v26[53];

  v12 = *(v8 + 8);
  v12(v9, v11);
  v12(v10, v11);
  swift_unknownObjectRelease();
  sub_226014E80(v14);
  v4 = v26[58];
  v15 = v26[55];
  v16 = v26[54];
  v17 = v26[51];

  v5 = *(v26[35] + 8);
  v6 = v26[35];

  return v5();
}

uint64_t sub_226014E80(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_226012024;
  v59 = sub_225EF7B84;
  v63 = sub_22601D4EC;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_226015A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a1;
  v48 = a2;
  v46 = a3;
  v47 = a4;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v50 = sub_2260990C8();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49, v48, v46, v47);
  v54 = v15 - v53;
  v55 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v56 = v15 - v55;
  v70 = v9 + 16;
  v69 = v10;
  v68 = v11;
  v67 = v12;
  v57 = *(v9 + 16);
  MEMORY[0x277D82BE0](v57);
  if (v57)
  {
    v45 = v57;
    return v57;
  }

  else
  {
    v21 = sub_225F27078();
    MEMORY[0x22AA72090](v71);
    v22 = v71[0];
    v23 = v71[1];
    v24 = v71[2];
    v25 = (v47 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
    v26 = &v66;
    v35 = 32;
    v36 = 0;
    swift_beginAccess();
    v27 = *v25;
    swift_endAccess();
    v28 = (v47 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
    v29 = &v65;
    swift_beginAccess();
    v30 = *v28;
    swift_endAccess();
    v31 = (v47 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
    v34 = &v64;
    swift_beginAccess();
    v32 = *v31;
    v33 = v31[1];
    sub_2260998E8();
    swift_endAccess();
    v37 = (v47 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
    v40 = &v63;
    swift_beginAccess();
    v38 = *v37;
    v39 = v37[1];
    sub_2260998E8();
    swift_endAccess();
    sub_226098EE8();
    (*(v51 + 104))(v54, *MEMORY[0x277CDCBC8], v50);
    v43 = sub_2260990B8();
    v42 = *(v51 + 8);
    v41 = v51 + 8;
    v42(v54, v50);
    v42(v56, v50);
    if (v43)
    {
      v20 = 0;
    }

    else
    {
      v17 = (v47 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder);
      v18 = &v62;
      swift_beginAccess();
      v19 = *v17;

      swift_endAccess();
      v20 = v19;
    }

    v15[1] = v20;
    v59 = v22;
    v60 = v23;
    v61 = v24;
    v16 = sub_225F1E204(v48, v46, v22, v23, v24, v30 & 1, v32, v33, v27, v38, v39, 0, v20);

    MEMORY[0x277D82BE0](v16);
    v15[2] = &v58;
    swift_beginAccess();
    v13 = *(v49 + 16);
    *(v49 + 16) = v16;
    MEMORY[0x277D82BD8](v13);
    swift_endAccess();
    return v16;
  }
}

uint64_t sub_2260160D0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(a2 + 16);
  *(a2 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_2260161B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a3;
  v3[10] = a2;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[3] = a2;
  v3[4] = a3;
  v4 = v3[2];
  return MEMORY[0x2822009F8](sub_22601622C, 0, 0);
}

uint64_t sub_22601622C()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v0;
  v28 = [v1 delegate];
  if (v28)
  {
    v25 = *(v27 + 88);
    *(v27 + 40) = v28;
    sub_226099308();
    v29 = *(v27 + 168);
    v30 = *(v27 + 176);
    v31 = *(v27 + 184);
    v32 = sub_22609A0C8();
    *(v27 + 192) = v32;
    *(v27 + 200) = v2;
    *(v27 + 204) = v3;
    *(v27 + 208) = v4;
    *(v27 + 48) = v32;
    sub_226099308();
    sub_22609A068();
    sub_22609A0F8();
    *(v27 + 56) = v5;
    v26 = v5 * *sub_225F7F6FC();
    if (((*&v26 >> 52) & 0x7FFLL) == 0x7FF || v26 <= -9.22337204e18 || v26 >= 9.22337204e18)
    {
      return sub_22609A3B8();
    }

    *(v27 + 64) = v26;
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ([v28 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v24 = swift_allocObject();
      *(v24 + 16) = v28;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_2260232EC;
      *(v7 + 24) = v24;
      v33 = sub_22602333C;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      v18 = *(v27 + 88);
      v16 = *(v27 + 80);
      MEMORY[0x277D82BE0](v16);
      v17 = sub_226099318();
      sub_2260992D8();
      v19 = v8;
      *(v27 + 72) = sub_2260992C8();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
      v21 = sub_225F27014();
      v9 = sub_226023264();
      v23 = sub_225F15970(sub_225F27F18, 0, v20, v21, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v22);
      v14 = *(v27 + 88);
      sub_225EFE6E8((v27 + 72));
      sub_2260992E8();
      v15 = v10;
      sub_2260992F8();
      v33(v16, v17, v32, v23, v26, v19, v15, v11);

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v12 = *(*(v27 + 16) + 8);
  v13 = *(v27 + 16);

  return v12();
}

uint64_t sub_2260169E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, double, double, double))
{
  sub_2260998E8();
  if (a4)
  {
    sub_225F27014();
    v10 = sub_226099C78();

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  a9(a1, a2, a3, a5, a6, a7);
  return MEMORY[0x277D82BD8](v11);
}

uint64_t sub_226016B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 552) = a3;
  *(v3 + 544) = a2;
  *(v3 + 408) = v3;
  *(v3 + 416) = 0;
  *(v3 + 424) = 0;
  *(v3 + 448) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 344) = 0;
  *(v3 + 352) = 0;
  *(v3 + 824) = 0;
  *(v3 + 456) = 0;
  *(v3 + 480) = 0;
  *(v3 + 536) = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90) - 8) + 64) + 15;
  *(v3 + 560) = swift_task_alloc();
  v5 = sub_226098DD8();
  *(v3 + 568) = v5;
  v11 = *(v5 - 8);
  *(v3 + 576) = v11;
  v6 = *(v11 + 64) + 15;
  *(v3 + 584) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A8, &unk_2260A0930) - 8) + 64) + 15;
  *(v3 + 592) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C60, &qword_2260A0DD8) - 8) + 64);
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  v8 = sub_226098C58();
  *(v3 + 624) = v8;
  v13 = *(v8 - 8);
  *(v3 + 632) = v13;
  v14 = *(v13 + 64);
  *(v3 + 640) = swift_task_alloc();
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 416) = a2;
  *(v3 + 424) = a3;
  v9 = *(v3 + 408);

  return MEMORY[0x2822009F8](sub_226016DD4, 0, 0);
}

uint64_t sub_226016DD4()
{
  v69 = v0;
  v1 = v0[82];
  v39 = v0[79];
  v40 = v0[78];
  v42 = v0[68];
  v0[51] = v0;
  v2 = sub_225F7E9BC();
  v41 = *(v39 + 16);
  v0[83] = v41;
  v0[84] = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v1, v2, v40);
  MEMORY[0x277D82BE0](v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  v57 = sub_226098C48();
  v58 = sub_22609A0A8();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225F3E198;
  *(v44 + 24) = v43;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225F3E1C8;
  *(v49 + 24) = v44;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_226016ADC;
  *(v45 + 24) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225EF7B84;
  *(v52 + 24) = v45;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_22601C414;
  *(v46 + 24) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_225F2D374;
  *(v55 + 24) = v46;
  v0[85] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v56 = v3;

  *v56 = sub_225EF7434;
  v56[1] = v47;

  v56[2] = sub_225EF7434;
  v56[3] = v48;

  v56[4] = sub_225F3E358;
  v56[5] = v49;

  v56[6] = sub_225EF7434;
  v56[7] = v50;

  v56[8] = sub_225EF7434;
  v56[9] = v51;

  v56[10] = sub_225EF7B90;
  v56[11] = v52;

  v56[12] = sub_225EF7434;
  v56[13] = v53;

  v56[14] = sub_225EF7434;
  v56[15] = v54;

  v56[16] = sub_225EF71D0;
  v56[17] = v55;
  sub_225EF5418();

  if (os_log_type_enabled(v57, v58))
  {
    buf = sub_22609A188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v36 = sub_225EF5468(1);
    v37 = sub_225EF5468(1);
    v64 = buf;
    v65 = v36;
    v66 = v37;
    sub_225EF54BC(2, &v64);
    sub_225EF54BC(3, &v64);
    v67 = sub_225EF7434;
    v68 = v47;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v48;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225F3E358;
    v68 = v49;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v50;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v51;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7B90;
    v68 = v52;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v53;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v54;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF71D0;
    v68 = v55;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    _os_log_impl(&dword_225EEB000, v57, v58, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v36);
    sub_225EF7AF4(v37);
    sub_22609A168();
  }

  else
  {
  }

  v31 = v38[82];
  v32 = v38[78];
  v34 = v38[69];
  v30 = v38[79];
  MEMORY[0x277D82BD8](v57);
  v33 = *(v30 + 8);
  v38[86] = v33;
  v38[87] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v31, v32);
  v4 = v34;
  if (v34)
  {
    v20 = v38[69];
    v5 = v38[81];
    v19 = v38[78];
    v38[67] = v20;
    v6 = sub_225F7E9BC();
    v41(v5, v6, v19);
    v7 = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    sub_225F3EAE8();

    oslog = sub_226098C48();
    v29 = sub_22609A098();
    v24 = swift_allocObject();
    *(v24 + 16) = 64;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_225F3EA68;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_225F3EA70;
    *(v23 + 24) = v22;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_225F3E1C8;
    *(v26 + 24) = v23;
    sub_22609A4F8();
    v27 = v8;

    *v27 = sub_225EF7434;
    v27[1] = v24;

    v27[2] = sub_225EF7434;
    v27[3] = v25;

    v27[4] = sub_225F3E358;
    v27[5] = v26;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v29))
    {
      v16 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v17 = sub_225EF5468(1);
      v18 = sub_225EF5468(0);
      v59 = v16;
      v60 = v17;
      v61 = v18;
      sub_225EF54BC(2, &v59);
      sub_225EF54BC(1, &v59);
      v62 = sub_225EF7434;
      v63 = v24;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      v62 = sub_225EF7434;
      v63 = v25;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      v62 = sub_225F3E358;
      v63 = v26;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      _os_log_impl(&dword_225EEB000, oslog, v29, "Analyzer results produced error: %@", v16, 0xCu);
      sub_225EF7AF4(v17);
      sub_225EF7AF4(v18);
      sub_22609A168();
    }

    else
    {
    }

    v14 = v38[81];
    v15 = v38[78];
    MEMORY[0x277D82BD8](oslog);
    v33(v14, v15);
  }

  v38[88] = 0;
  v9 = v38[68];
  sub_225FFF164();
  v10 = swift_task_alloc();
  v38[89] = v10;
  *v10 = v38[51];
  v10[1] = sub_226017F90;
  v11 = v38[69];
  v12 = v38[68];

  return sub_225FFEC88(v11);
}

uint64_t sub_226017F90()
{
  v4 = *v0;
  v1 = *(*v0 + 712);
  *(v4 + 408) = *v0;

  v2 = *(v4 + 408);

  return MEMORY[0x2822009F8](sub_2260180A8, 0, 0);
}

uint64_t sub_2260180A8()
{
  v132 = *(v0 + 544);
  *(v0 + 408) = v0;
  [objc_opt_self() noteSuccessfulUse];
  v133 = (v132 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  v134 = *v133;
  swift_endAccess();
  if (v134)
  {
    *(v131 + 432) = 0;
    v117 = *(v131 + 704);
    v118 = 0;
  }

  else
  {
    v127 = *(v131 + 680);
    v125 = *(v131 + 672);
    v126 = *(v131 + 664);
    v1 = *(v131 + 640);
    v124 = *(v131 + 624);
    v2 = sub_225F7E9BC();
    v126(v1, v2, v124);
    v129 = sub_226098C48();
    v128 = sub_22609A078();
    v130 = sub_22609A4F8();
    if (os_log_type_enabled(v129, v128))
    {
      v3 = *(v131 + 704);
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v121 = sub_225EF5468(0);
      v122 = sub_225EF5468(0);
      *(v131 + 504) = buf;
      *(v131 + 512) = v121;
      *(v131 + 520) = v122;
      sub_225EF54BC(0, (v131 + 504));
      sub_225EF54BC(0, (v131 + 504));
      *(v131 + 528) = v130;
      v123 = swift_task_alloc();
      v123[2] = v131 + 504;
      v123[3] = v131 + 512;
      v123[4] = v131 + 520;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      if (v3)
      {
      }

      _os_log_impl(&dword_225EEB000, v129, v128, "No speech recognized, synthesizing local speech error", buf, 2u);
      sub_225EF7AF4(v121);
      sub_225EF7AF4(v122);
      sub_22609A168();

      v119 = 0;
    }

    else
    {

      v119 = *(v131 + 704);
    }

    v114 = *(v131 + 696);
    v115 = *(v131 + 688);
    v112 = *(v131 + 640);
    v113 = *(v131 + 624);
    MEMORY[0x277D82BD8](v129);
    v115(v112, v113);
    type metadata accessor for AFError();
    *(v131 + 496) = 1110;
    sub_225F1A478();
    sub_22601CFF4();
    sub_2260988C8();
    v116 = *(v131 + 488);
    MEMORY[0x277D82BE0](v116);
    v5 = v116;
    *(v131 + 432) = v116;
    MEMORY[0x277D82BD8](v116);
    v117 = v119;
    v118 = v116;
  }

  v6 = *(v131 + 544);
  *(v131 + 440) = sub_225FCEF44(*(v131 + 552));
  if (*(v131 + 440))
  {
    v135 = *(v131 + 440);
  }

  else
  {
    v7 = v118;
    v8 = v118;
    v135 = v118;

    if (*(v131 + 440))
    {
      sub_226022DA8((v131 + 440));
    }
  }

  v110 = *(v131 + 544);

  *(v131 + 720) = v135;
  *(v131 + 448) = v135;
  v111 = (v110 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  if (*v111)
  {
    v107 = *(v131 + 592);
    v106 = *v111;

    swift_endAccess();
    sub_226098CD8();

    v108 = sub_226099288();
    v109 = *(v108 - 8);
    if ((*(v109 + 48))(v107, 1) != 1)
    {
      v105 = *(v131 + 616);
      v104 = *(v131 + 592);
      sub_226099268();
      (*(v109 + 8))(v104, v108);
      v9 = sub_226099258();
      (*(*(v9 - 8) + 56))(v105, 0, 1);
      goto LABEL_19;
    }

    sub_226023074(*(v131 + 592));
  }

  else
  {
    swift_endAccess();
  }

  v40 = *(v131 + 616);
  v38 = sub_226099258();
  (*(*(v38 - 8) + 56))(v40, 1);
LABEL_19:
  v103 = (*(v131 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v103)
  {
    v95 = *v103;

    swift_endAccess();
    v97 = sub_226098AB8();
    v96 = *(v97 - 8);
    v10 = *(v96 + 64) + 15;
    v98 = swift_task_alloc();
    sub_226099048();

    v99 = sub_226098A98();
    v100 = v11;
    (*(v96 + 8))(v98, v97);

    v101 = v99;
    v102 = v100;
  }

  else
  {
    swift_endAccess();
    v101 = 0;
    v102 = 0;
  }

  *(v131 + 736) = v102;
  *(v131 + 728) = v101;
  v12 = *(v131 + 544);
  *(v131 + 312) = v101;
  *(v131 + 320) = v102;
  v94 = (v12 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  if (*v94)
  {
    v88 = *(v131 + 584);
    v89 = *(v131 + 568);
    v87 = *(v131 + 576);
    v86 = *v94;

    swift_endAccess();
    sub_226098C98();

    v90 = sub_226098DC8();
    v91 = v13;
    (*(v87 + 8))(v88, v89);
    v92 = v90;
    v93 = v91;
  }

  else
  {
    swift_endAccess();
    v92 = 0;
    v93 = 0;
  }

  *(v131 + 752) = v93;
  *(v131 + 744) = v92;
  v83 = *(v131 + 544);
  *(v131 + 328) = v92;
  *(v131 + 336) = v93;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15;
  v84 = swift_task_alloc();
  *(v131 + 760) = v84;
  v85 = (v83 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v85)
  {
    v80 = *(v131 + 560);
    v79 = *v85;

    swift_endAccess();
    sub_226098E78();

    v81 = sub_226098E68();
    v82 = *(v81 - 8);
    if ((*(v82 + 48))(v80, 1) != 1)
    {
      v78 = *(v131 + 560);
      sub_226098E48();
      (*(v82 + 8))(v78, v81);
      goto LABEL_30;
    }

    sub_226022FCC(*(v131 + 560));
  }

  else
  {
    swift_endAccess();
  }

  v37 = sub_226098948();
  (*(*(v37 - 8) + 56))(v84, 1);
LABEL_30:
  v77 = [*(v131 + 544) delegate];
  *(v131 + 768) = v77;
  if (v77)
  {
    *(v131 + 456) = v77;
    v15 = swift_task_alloc();
    *(v131 + 776) = v15;
    *v15 = *(v131 + 408);
    v15[1] = sub_226019AC8;
    v16 = *(v131 + 544);

    return sub_225FFF3B4();
  }

  v74 = *(v131 + 544);
  v72 = (v74 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v17 = *v72;
  *v72 = 0;

  swift_endAccess();
  v73 = (v74 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v18 = *v73;
  *v73 = 0;

  swift_endAccess();
  v76 = *sub_225F827A0();

  MEMORY[0x277D82BE0](v74);
  v75 = swift_task_alloc();
  *(v75 + 16) = v74;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_226022DD4, v75, v76, v19, MEMORY[0x277D84F78] + 8);
  if (v117)
  {
    v39 = *(v131 + 544);

    return MEMORY[0x277D82BD8](v39);
  }

  v70 = *(v131 + 544);

  MEMORY[0x277D82BD8](v70);

  v71 = v70 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish;
  swift_beginAccess();
  if (*v71)
  {
    v69 = *v71;
    v20 = *(v71 + 8);

    v21 = swift_endAccess();
    v69(v21);
  }

  else
  {
    swift_endAccess();
  }

  v68 = *(v131 + 736);
  v67 = (*(v131 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v22 = *v67;
  v23 = v67[1];
  *v67 = 0;
  v67[1] = 0;
  sub_2260215F0(v22);
  swift_endAccess();
  sub_2260998E8();
  if (!v68)
  {
    goto LABEL_62;
  }

  v24 = *(v131 + 736);
  v25 = *(v131 + 752);
  v26 = *(v131 + 744);
  *(v131 + 344) = *(v131 + 728);
  *(v131 + 352) = v24;
  *(v131 + 360) = v26;
  *(v131 + 368) = v25;
  MEMORY[0x277D82BE0](@"Dictation");
  v66 = sub_226099A08();
  v65 = v27;
  sub_2260998E8();
  sub_225F4C5E0((v131 + 360), (v131 + 16));
  *(v131 + 32) = v66;
  *(v131 + 40) = v65;
  if (*(v131 + 24))
  {
    sub_225F4C5E0((v131 + 16), (v131 + 376));
    if (*(v131 + 40))
    {
      *(v131 + 392) = *(v131 + 32);
      v63 = MEMORY[0x22AA72BD0](*(v131 + 376), *(v131 + 384), *(v131 + 392), *(v131 + 400));
      sub_225EFE6BC(v131 + 392);
      sub_225EFE6BC(v131 + 376);
      sub_225EFE6BC(v131 + 16);
      v64 = v63;
      goto LABEL_47;
    }

    sub_225EFE6BC(v131 + 376);
    goto LABEL_49;
  }

  if (*(v131 + 40))
  {
LABEL_49:
    sub_225F4C1C0(v131 + 16);
    v64 = 0;
    goto LABEL_47;
  }

  sub_225EFE6BC(v131 + 16);
  v64 = 1;
LABEL_47:

  MEMORY[0x277D82BD8](@"Dictation");
  if (v64)
  {

LABEL_62:
    v42 = *(v131 + 760);
    v43 = *(v131 + 752);
    v44 = *(v131 + 736);
    v45 = *(v131 + 720);
    v47 = *(v131 + 656);
    v48 = *(v131 + 648);
    v49 = *(v131 + 640);
    v50 = *(v131 + 616);
    v51 = *(v131 + 608);
    v52 = *(v131 + 600);
    v53 = *(v131 + 592);
    v54 = *(v131 + 584);
    v55 = *(v131 + 560);
    v46 = *(v131 + 544);
    v41 = (v46 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
    swift_beginAccess();
    v34 = *v41;
    *v41 = 0;

    swift_endAccess();
    sub_22601F334(v42);

    sub_226022DFC(v50);

    sub_226022DA8((v131 + 432));
    sub_22601C420(v46);

    v35 = *(*(v131 + 408) + 8);
    v36 = *(v131 + 408);

    return v35();
  }

  v60 = *(v131 + 608);
  sub_226022EA4(*(v131 + 616), v60);
  v61 = sub_226099258();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v60, 1))
  {
    goto LABEL_60;
  }

  v58 = *(v131 + 600);
  sub_226022EA4(*(v131 + 608), v58);
  v59 = (*(v62 + 88))(v58, v61);
  if (v59 != *MEMORY[0x277CDCC18] && v59 != *MEMORY[0x277CDCC28])
  {
    (*(v62 + 8))(*(v131 + 600), v61);
LABEL_60:
    sub_226022DFC(*(v131 + 608));
    goto LABEL_61;
  }

  sub_226022DFC(*(v131 + 608));
  v57 = (*(v131 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  if (!*v57)
  {
    swift_endAccess();
LABEL_61:
    v33 = *(v131 + 736);

    goto LABEL_62;
  }

  v56 = *v57;
  *(v131 + 800) = *v57;

  swift_endAccess();
  v28 = *(MEMORY[0x277D857C8] + 4);
  v29 = swift_task_alloc();
  *(v131 + 808) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  *v29 = *(v131 + 408);
  v29[1] = sub_22601AC18;
  v31 = MEMORY[0x277D839B0];
  v32 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v131 + 825, v56, v31, v30, v32);
}

uint64_t sub_226019AC8(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 51;
  v4 = *(*v2 + 776);
  v10[51] = *v2;
  v10[98] = a1;
  v10[99] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_22601B0F0;
  }

  else
  {
    v5 = *v9;
    v6 = sub_226019C3C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226019C3C()
{
  v1 = v0[98];
  v0[51] = v0;
  v69 = v0[99];
  v0[59] = v1;
  if (v0[59])
  {
    *(v68 + 464) = *(v68 + 472);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BA8, &qword_2260A0C80);
    sub_22609A4F8();
    sub_225F2D6D0();
    *(v68 + 464) = sub_2260998A8();
    if (*(v68 + 472))
    {
      sub_225EFE6E8((v68 + 472));
    }
  }

  v2 = *(v68 + 768);
  v67 = *(v68 + 720);
  v65 = *(v68 + 544);
  *(v68 + 480) = *(v68 + 464);
  swift_getObjectType();
  MEMORY[0x277D82BE0](v65);
  sub_2260998E8();
  sub_225F2D6D0();
  sub_22609A3E8();
  v66 = sub_226099868();

  v3 = v67;
  if (v67)
  {
    v62 = *(v68 + 720);
    v63 = sub_2260988D8();

    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  [*(v68 + 768) localSpeechRecognizer:v65 didCompletionRecognitionWithStatistics:v66 error:?];
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v66);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v59 = *(v68 + 544);
  v57 = (v59 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v4 = *v57;
  *v57 = 0;

  swift_endAccess();
  v58 = (v59 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v5 = *v58;
  *v58 = 0;

  swift_endAccess();
  v61 = *sub_225F827A0();

  MEMORY[0x277D82BE0](v59);
  v60 = swift_task_alloc();
  *(v60 + 16) = v59;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_226022DD4, v60, v61, v6, MEMORY[0x277D84F78] + 8);
  if (v69)
  {
    v25 = *(v68 + 544);

    return MEMORY[0x277D82BD8](v25);
  }

  v55 = *(v68 + 544);

  MEMORY[0x277D82BD8](v55);

  v56 = v55 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish;
  swift_beginAccess();
  if (*v56)
  {
    v54 = *v56;
    v7 = *(v56 + 8);

    v8 = swift_endAccess();
    v54(v8);
  }

  else
  {
    swift_endAccess();
  }

  v53 = *(v68 + 736);
  v52 = (*(v68 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v9 = *v52;
  v10 = v52[1];
  *v52 = 0;
  v52[1] = 0;
  sub_2260215F0(v9);
  swift_endAccess();
  sub_2260998E8();
  if (!v53)
  {
    goto LABEL_37;
  }

  v11 = *(v68 + 736);
  v12 = *(v68 + 752);
  v13 = *(v68 + 744);
  *(v68 + 344) = *(v68 + 728);
  *(v68 + 352) = v11;
  *(v68 + 360) = v13;
  *(v68 + 368) = v12;
  MEMORY[0x277D82BE0](@"Dictation");
  v51 = sub_226099A08();
  v50 = v14;
  sub_2260998E8();
  sub_225F4C5E0((v68 + 360), (v68 + 16));
  *(v68 + 32) = v51;
  *(v68 + 40) = v50;
  if (*(v68 + 24))
  {
    sub_225F4C5E0((v68 + 16), (v68 + 376));
    if (*(v68 + 40))
    {
      *(v68 + 392) = *(v68 + 32);
      v48 = MEMORY[0x22AA72BD0](*(v68 + 376), *(v68 + 384), *(v68 + 392), *(v68 + 400));
      sub_225EFE6BC(v68 + 392);
      sub_225EFE6BC(v68 + 376);
      sub_225EFE6BC(v68 + 16);
      v49 = v48;
      goto LABEL_22;
    }

    sub_225EFE6BC(v68 + 376);
    goto LABEL_24;
  }

  if (*(v68 + 40))
  {
LABEL_24:
    sub_225F4C1C0(v68 + 16);
    v49 = 0;
    goto LABEL_22;
  }

  sub_225EFE6BC(v68 + 16);
  v49 = 1;
LABEL_22:

  MEMORY[0x277D82BD8](@"Dictation");
  if (v49)
  {

LABEL_37:
    v27 = *(v68 + 760);
    v28 = *(v68 + 752);
    v29 = *(v68 + 736);
    v30 = *(v68 + 720);
    v32 = *(v68 + 656);
    v33 = *(v68 + 648);
    v34 = *(v68 + 640);
    v35 = *(v68 + 616);
    v36 = *(v68 + 608);
    v37 = *(v68 + 600);
    v38 = *(v68 + 592);
    v39 = *(v68 + 584);
    v40 = *(v68 + 560);
    v31 = *(v68 + 544);
    v26 = (v31 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
    swift_beginAccess();
    v21 = *v26;
    *v26 = 0;

    swift_endAccess();
    sub_22601F334(v27);

    sub_226022DFC(v35);

    sub_226022DA8((v68 + 432));
    sub_22601C420(v31);

    v22 = *(*(v68 + 408) + 8);
    v23 = *(v68 + 408);

    return v22();
  }

  v45 = *(v68 + 608);
  sub_226022EA4(*(v68 + 616), v45);
  v46 = sub_226099258();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1))
  {
    goto LABEL_35;
  }

  v43 = *(v68 + 600);
  sub_226022EA4(*(v68 + 608), v43);
  v44 = (*(v47 + 88))(v43, v46);
  if (v44 != *MEMORY[0x277CDCC18] && v44 != *MEMORY[0x277CDCC28])
  {
    (*(v47 + 8))(*(v68 + 600), v46);
LABEL_35:
    sub_226022DFC(*(v68 + 608));
    goto LABEL_36;
  }

  sub_226022DFC(*(v68 + 608));
  v42 = (*(v68 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  if (!*v42)
  {
    swift_endAccess();
LABEL_36:
    v20 = *(v68 + 736);

    goto LABEL_37;
  }

  v41 = *v42;
  *(v68 + 800) = *v42;

  swift_endAccess();
  v15 = *(MEMORY[0x277D857C8] + 4);
  v16 = swift_task_alloc();
  *(v68 + 808) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  *v16 = *(v68 + 408);
  v16[1] = sub_22601AC18;
  v18 = MEMORY[0x277D839B0];
  v19 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v68 + 825, v41, v18, v17, v19);
}

uint64_t sub_22601AC18()
{
  v8 = *v1;
  v7 = (v8 + 408);
  v2 = *(*v1 + 808);
  *(v8 + 408) = *v1;
  *(v8 + 816) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_22601C0C4;
  }

  else
  {
    v3 = *v7;
    v4 = sub_22601AD84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22601AD84()
{
  v1 = *(v0 + 800);
  *(v0 + 408) = v0;
  v24 = *(v0 + 825);

  if ((v24 & 1) != 2)
  {
    *(v23 + 824) = v24 & 1;
    if (v24)
    {
      v2 = *(v23 + 544);
      sub_225F88E74(*(v23 + 728), *(v23 + 736), *(v23 + 744), *(v23 + 752), *(v23 + 760));
    }
  }

  v3 = *(v23 + 736);

  v9 = *(v23 + 760);
  v10 = *(v23 + 752);
  v11 = *(v23 + 736);
  v12 = *(v23 + 720);
  v14 = *(v23 + 656);
  v15 = *(v23 + 648);
  v16 = *(v23 + 640);
  v17 = *(v23 + 616);
  v18 = *(v23 + 608);
  v19 = *(v23 + 600);
  v20 = *(v23 + 592);
  v21 = *(v23 + 584);
  v22 = *(v23 + 560);
  v13 = *(v23 + 544);
  v8 = (v13 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  v4 = *v8;
  *v8 = 0;

  swift_endAccess();
  sub_22601F334(v9);

  sub_226022DFC(v17);

  sub_226022DA8((v23 + 432));
  sub_22601C420(v13);

  v5 = *(*(v23 + 408) + 8);
  v6 = *(v23 + 408);

  return v5();
}

uint64_t sub_22601B0F0()
{
  v1 = v0[99];
  v0[51] = v0;

  v0[59] = 0;
  if (v0[59])
  {
    *(v67 + 464) = *(v67 + 472);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BA8, &qword_2260A0C80);
    sub_22609A4F8();
    sub_225F2D6D0();
    *(v67 + 464) = sub_2260998A8();
    if (*(v67 + 472))
    {
      sub_225EFE6E8((v67 + 472));
    }
  }

  v2 = *(v67 + 768);
  v66 = *(v67 + 720);
  v64 = *(v67 + 544);
  *(v67 + 480) = *(v67 + 464);
  swift_getObjectType();
  MEMORY[0x277D82BE0](v64);
  sub_2260998E8();
  sub_225F2D6D0();
  sub_22609A3E8();
  v65 = sub_226099868();

  v3 = v66;
  if (v66)
  {
    v61 = *(v67 + 720);
    v62 = sub_2260988D8();

    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  [*(v67 + 768) localSpeechRecognizer:v64 didCompletionRecognitionWithStatistics:v65 error:?];
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v65);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v58 = *(v67 + 544);
  v56 = (v58 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v4 = *v56;
  *v56 = 0;

  swift_endAccess();
  v57 = (v58 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v5 = *v57;
  *v57 = 0;

  swift_endAccess();
  v60 = *sub_225F827A0();

  MEMORY[0x277D82BE0](v58);
  v59 = swift_task_alloc();
  *(v59 + 16) = v58;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_226022DD4, v59, v60, v6, MEMORY[0x277D84F78] + 8);
  v54 = *(v67 + 544);

  MEMORY[0x277D82BD8](v54);

  v55 = v54 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish;
  swift_beginAccess();
  if (*v55)
  {
    v53 = *v55;
    v7 = *(v55 + 8);

    v8 = swift_endAccess();
    v53(v8);
  }

  else
  {
    swift_endAccess();
  }

  v52 = *(v67 + 736);
  v51 = (*(v67 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v9 = *v51;
  v10 = v51[1];
  *v51 = 0;
  v51[1] = 0;
  sub_2260215F0(v9);
  swift_endAccess();
  sub_2260998E8();
  if (!v52)
  {
    goto LABEL_36;
  }

  v11 = *(v67 + 736);
  v12 = *(v67 + 752);
  v13 = *(v67 + 744);
  *(v67 + 344) = *(v67 + 728);
  *(v67 + 352) = v11;
  *(v67 + 360) = v13;
  *(v67 + 368) = v12;
  MEMORY[0x277D82BE0](@"Dictation");
  v50 = sub_226099A08();
  v49 = v14;
  sub_2260998E8();
  sub_225F4C5E0((v67 + 360), (v67 + 16));
  *(v67 + 32) = v50;
  *(v67 + 40) = v49;
  if (*(v67 + 24))
  {
    sub_225F4C5E0((v67 + 16), (v67 + 376));
    if (*(v67 + 40))
    {
      *(v67 + 392) = *(v67 + 32);
      v47 = MEMORY[0x22AA72BD0](*(v67 + 376), *(v67 + 384), *(v67 + 392), *(v67 + 400));
      sub_225EFE6BC(v67 + 392);
      sub_225EFE6BC(v67 + 376);
      sub_225EFE6BC(v67 + 16);
      v48 = v47;
      goto LABEL_21;
    }

    sub_225EFE6BC(v67 + 376);
    goto LABEL_23;
  }

  if (*(v67 + 40))
  {
LABEL_23:
    sub_225F4C1C0(v67 + 16);
    v48 = 0;
    goto LABEL_21;
  }

  sub_225EFE6BC(v67 + 16);
  v48 = 1;
LABEL_21:

  MEMORY[0x277D82BD8](@"Dictation");
  if (v48)
  {

LABEL_36:
    v26 = *(v67 + 760);
    v27 = *(v67 + 752);
    v28 = *(v67 + 736);
    v29 = *(v67 + 720);
    v31 = *(v67 + 656);
    v32 = *(v67 + 648);
    v33 = *(v67 + 640);
    v34 = *(v67 + 616);
    v35 = *(v67 + 608);
    v36 = *(v67 + 600);
    v37 = *(v67 + 592);
    v38 = *(v67 + 584);
    v39 = *(v67 + 560);
    v30 = *(v67 + 544);
    v25 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
    swift_beginAccess();
    v21 = *v25;
    *v25 = 0;

    swift_endAccess();
    sub_22601F334(v26);

    sub_226022DFC(v34);

    sub_226022DA8((v67 + 432));
    sub_22601C420(v30);

    v22 = *(*(v67 + 408) + 8);
    v23 = *(v67 + 408);

    return v22();
  }

  v44 = *(v67 + 608);
  sub_226022EA4(*(v67 + 616), v44);
  v45 = sub_226099258();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1))
  {
    goto LABEL_34;
  }

  v42 = *(v67 + 600);
  sub_226022EA4(*(v67 + 608), v42);
  v43 = (*(v46 + 88))(v42, v45);
  if (v43 != *MEMORY[0x277CDCC18] && v43 != *MEMORY[0x277CDCC28])
  {
    (*(v46 + 8))(*(v67 + 600), v45);
LABEL_34:
    sub_226022DFC(*(v67 + 608));
    goto LABEL_35;
  }

  sub_226022DFC(*(v67 + 608));
  v41 = (*(v67 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  if (!*v41)
  {
    swift_endAccess();
LABEL_35:
    v20 = *(v67 + 736);

    goto LABEL_36;
  }

  v40 = *v41;
  *(v67 + 800) = *v41;

  swift_endAccess();
  v15 = *(MEMORY[0x277D857C8] + 4);
  v16 = swift_task_alloc();
  *(v67 + 808) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  *v16 = *(v67 + 408);
  v16[1] = sub_22601AC18;
  v18 = MEMORY[0x277D839B0];
  v19 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v67 + 825, v40, v18, v17, v19);
}

uint64_t sub_22601C0C4()
{
  v23 = v0[102];
  v1 = v0[100];
  v0[51] = v0;

  v2 = *(v22 + 736);

  v8 = *(v22 + 760);
  v9 = *(v22 + 752);
  v10 = *(v22 + 736);
  v11 = *(v22 + 720);
  v13 = *(v22 + 656);
  v14 = *(v22 + 648);
  v15 = *(v22 + 640);
  v16 = *(v22 + 616);
  v17 = *(v22 + 608);
  v18 = *(v22 + 600);
  v19 = *(v22 + 592);
  v20 = *(v22 + 584);
  v21 = *(v22 + 560);
  v12 = *(v22 + 544);
  v7 = (v12 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  v3 = *v7;
  *v7 = 0;

  swift_endAccess();
  sub_22601F334(v8);

  sub_226022DFC(v16);

  sub_226022DA8((v22 + 432));
  sub_22601C420(v12);

  v4 = *(*(v22 + 408) + 8);
  v5 = *(v22 + 408);

  return v4();
}

uint64_t sub_22601C420(uint64_t a1)
{
  v53 = a1;
  v54 = sub_225F3E198;
  v56 = sub_225F3E1C8;
  v58 = sub_226016ADC;
  v59 = sub_225EF7B84;
  v63 = sub_22601D4F8;
  v66 = sub_225F2D374;
  v68 = sub_225EF7434;
  v70 = sub_225EF7434;
  v72 = sub_225F3E358;
  v74 = sub_225EF7434;
  v76 = sub_225EF7434;
  v78 = sub_225EF7B90;
  v80 = sub_225EF7434;
  v82 = sub_225EF7434;
  v85 = sub_225EF71D0;
  v96 = 0;
  v47 = 0;
  v52 = sub_226098C58();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53, v1, v2, v3);
  v4 = v38 - v48;
  v49 = v38 - v48;
  v96 = v5;
  v6 = sub_225F7E9BC();
  (*(v50 + 16))(v4, v6, v52);
  MEMORY[0x277D82BE0](v53);
  v65 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v89 = sub_226098C48();
  v90 = sub_22609A0A8();
  v61 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v71 = swift_allocObject();
  v62 = 8;
  *(v71 + 16) = 8;
  v64 = 32;
  v7 = swift_allocObject();
  v8 = v55;
  v57 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v57;
  v73 = v9;
  *(v9 + 16) = v56;
  *(v9 + 24) = v10;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = v62;
  v11 = swift_allocObject();
  v60 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v60;
  v79 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v62;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = v63;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v67;
  v86 = v15;
  *(v15 + 16) = v66;
  *(v15 + 24) = v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v84 = sub_22609A4F8();
  v87 = v17;

  v18 = v69;
  v19 = v87;
  *v87 = v68;
  v19[1] = v18;

  v20 = v71;
  v21 = v87;
  v87[2] = v70;
  v21[3] = v20;

  v22 = v73;
  v23 = v87;
  v87[4] = v72;
  v23[5] = v22;

  v24 = v75;
  v25 = v87;
  v87[6] = v74;
  v25[7] = v24;

  v26 = v77;
  v27 = v87;
  v87[8] = v76;
  v27[9] = v26;

  v28 = v79;
  v29 = v87;
  v87[10] = v78;
  v29[11] = v28;

  v30 = v81;
  v31 = v87;
  v87[12] = v80;
  v31[13] = v30;

  v32 = v83;
  v33 = v87;
  v87[14] = v82;
  v33[15] = v32;

  v34 = v86;
  v35 = v87;
  v87[16] = v85;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v89, v90))
  {
    v36 = v47;
    v40 = sub_22609A188();
    v38[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v39 = 1;
    v41 = sub_225EF5468(1);
    v42 = sub_225EF5468(v39);
    v43 = &v95;
    v95 = v40;
    v44 = &v94;
    v94 = v41;
    v45 = &v93;
    v93 = v42;
    sub_225EF54BC(2, &v95);
    sub_225EF54BC(3, v43);
    v91 = v68;
    v92 = v69;
    sub_225EF73E8(&v91, v43, v44, v45);
    v46 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v91 = v70;
      v92 = v71;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[7] = 0;
      v91 = v72;
      v92 = v73;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[6] = 0;
      v91 = v74;
      v92 = v75;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[5] = 0;
      v91 = v76;
      v92 = v77;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[4] = 0;
      v91 = v78;
      v92 = v79;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[3] = 0;
      v91 = v80;
      v92 = v81;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[2] = 0;
      v91 = v82;
      v92 = v83;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      v38[1] = 0;
      v91 = v85;
      v92 = v86;
      sub_225EF73E8(&v91, &v95, &v94, &v93);
      _os_log_impl(&dword_225EEB000, v89, v90, "%@ %s:%ld queue task complete", v40, 0x20u);
      v38[0] = 1;
      sub_225EF7AF4(v41);
      sub_225EF7AF4(v42);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v89);
  return (*(v50 + 8))(v49, v52);
}

uint64_t sub_22601D020(void *a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v7 = *a1;
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a2);
  v12 = v7;
  v13 = a2;
  if (v7)
  {
    sub_226023224(&v12, &v11);
    if (v13)
    {
      v10 = v11;
      v9 = v13;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      v4 = sub_22609A118();
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      sub_225EFE834(&v12);
      v5 = v4;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v11);
    goto LABEL_9;
  }

  if (v13)
  {
LABEL_9:
    sub_2260231DC(&v12);
    v5 = 0;
    goto LABEL_7;
  }

  sub_225EFE834(&v12);
  v5 = 1;
LABEL_7:
  MEMORY[0x277D82BD8](a2);
  result = MEMORY[0x277D82BD8](v7);
  if (v5)
  {
    v3 = *a1;
    *a1 = 0;
    return MEMORY[0x277D82BD8](v3);
  }

  return result;
}

id sub_22601D2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v13 = sub_2260999F8();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v11 = sub_2260999F8();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v10 = sub_2260999F8();

    v6 = [v17 initWithModelVersion:v14 modelType:v12 modelRoot:v10];
  }

  else
  {
    v6 = [v17 initWithModelVersion:v14 modelType:v12 modelRoot:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v14);
  return v9;
}

uint64_t sub_22601D504@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
  }

  else
  {
    result = sub_22609A3B8();
    __break(1u);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22601D748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = v5[2];

  return MEMORY[0x2822009F8](sub_22601D874, 0, 0);
}

uint64_t sub_22601D874()
{
  v13 = v0[11];
  v16 = v0[10];
  v15 = v0[9];
  v17 = v0[8];
  v1 = v0[7];
  v11 = v0[6];
  v12 = v0[5];
  v14 = v0[3];
  v0[2] = v0;
  sub_22609A548();
  swift_getAssociatedConformanceWitness();
  sub_22609A368();
  v2 = *(v15 + 8);
  v0[12] = v2;
  v0[13] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v16, v17);
  v3 = *(MEMORY[0x277D85A58] + 4);
  v4 = swift_task_alloc();
  v18[14] = v4;
  *v4 = v18[2];
  v4[1] = sub_225EF3E94;
  v5 = v18[11];
  v6 = v18[7];
  v7 = v18[6];
  v8 = v18[5];
  v9 = v18[4];

  return MEMORY[0x2822008C8](v5, v9, v8, v7);
}

uint64_t sub_22601D9DC()
{
  v1 = v0[11];
  v7 = v0[10];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[15];

  return v3();
}

uint64_t sub_22601DA84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_22609A2B8();
  v5 = sub_22609A2A8();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

uint64_t sub_22601DB4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + *MEMORY[0x277D841D0]) - 8) + 16))(a2);
}

void sub_22601DC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  sub_2260258A8(a3 + *(*a3 + *MEMORY[0x277D841D0] + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

void sub_22601DD10(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

uint64_t sub_22601DDCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    sub_22609A3B8();
    __break(1u);
  }

  v4 = *a2;
  v5 = a2[1];

  result = swift_task_create();
  *a3 = result;
  return result;
}

uint64_t sub_22601DF94(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
    v1 = sub_226099CB8();
    sub_2260998E8();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void sub_22601E04C(uint64_t a1)
{
  if (sub_225F30FDC(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C68, &unk_2260A0DE0);
    v12 = sub_22609A438();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];

    v12 = v11;
  }

  v10 = sub_225F31698(a1);
  if (v10)
  {
    if (v10 <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        has_malloc_size = _swift_stdlib_has_malloc_size();
        sub_22601E248(i, has_malloc_size & 1, a1, &v14);
        v8 = sub_22601E2DC(v14, v15);
        if (v2)
        {
          break;
        }

        v12[v8 / 0x40 + 8] |= 1 << ((v8 % 0x40) & 0x3F);
        v3 = (v12[6] + 16 * v8);
        v4 = v15;
        *v3 = v14;
        v3[1] = v4;
        sub_225EF9790(&v16, v12[7] + 32 * v8);
        v5 = v12[2];
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }

        v12[2] = v7;
        if (i + 1 == v10)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
  }
}

void *sub_22601E248@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    return sub_22602311C((a3 + 32 + 48 * a1), a4);
  }

  result = sub_22601E360(a1, a3);
  __break(1u);
  return result;
}

unint64_t sub_22601E2DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  sub_22609A5E8();
  memcpy(__dst, v9, sizeof(__dst));
  sub_226099AC8();
  v4 = sub_22609A608();
  return sub_22601E55C(a1, a2, v4);
}

uint64_t sub_22601E360(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22602DB4C(82);
    v2 = sub_226099AA8();
    MEMORY[0x22AA72C20](v2);

    v3 = sub_226099AA8();
    MEMORY[0x22AA72C20](v3);

    v4 = sub_226099AA8();
    MEMORY[0x22AA72C20](v4);

    swift_getObjectType();
    v5 = sub_22609A638();
    MEMORY[0x22AA72C20](v5);

    sub_2260998E8();
    sub_226099A88();
    sub_22609A3D8();
    __break(1u);
  }

  sub_2260231A4(v7);
  return v6;
}

unint64_t sub_22601E55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = (1 << (*(v3 + 32) & 0x3F)) - 1;
  for (i = a3 & v13; (*(v12 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
  {
    v4 = (*(v12 + 48) + 16 * i);
    v7 = *v4;
    v8 = v4[1];
    sub_2260998E8();
    v9 = MEMORY[0x22AA72BD0](v7, v8, a1, a2);

    if (v9)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_22601E698(_OWORD *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  return a2;
}

unint64_t sub_22601E76C()
{
  v2 = qword_280D76560;
  if (!qword_280D76560)
  {
    type metadata accessor for qos_class_t();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76560);
    return WitnessTable;
  }

  return v2;
}

void *sub_22601E7EC(const void *a1, void *a2)
{
  v6 = sub_226099DA8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_22601E914(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786838, &qword_2260A0858) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225F3E5DC;

  return sub_225F81A7C(a1, v7, v8, v1 + v9);
}

uint64_t sub_22601EA3C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_22601EA84(const void *a1, void *a2)
{
  v6 = sub_226098948();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_22601EBAC(const void *a1, void *a2)
{
  v6 = sub_226098948();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_22601ECD4(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v11 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v12 = *(v1 + ((v11 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F847F4(a1, v7, v8, v9, v10, v1 + v11);
}

uint64_t sub_22601EE44(uint64_t a1)
{
  v19 = v2;
  *(v2 + 16) = v2;
  v13 = *(sub_226099808() - 8);
  v31 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v14 = v31 + *(v13 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v32 = (v14 + *(v15 + 80)) & ~*(v15 + 80);
  v18 = (v32 + *(v15 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(sub_226098DD8() - 8);
  v17 = ((((v18 + 16) & 0xFFFFFFFFFFFFFFF8) + 16 + *(v16 + 80)) & ~*(v16 + 80)) + *(v16 + 64);
  v3 = sub_226099DA8();
  v4 = (v18 + 16) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v17 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = v1[2];
  v27 = v1[3];
  v28 = v1[4];
  v29 = v1[5];
  v30 = v1[6];
  v8 = *(v1 + v18);
  v9 = *(v1 + v18 + 8);
  v10 = *(v1 + v4);
  v34 = *(v1 + v4 + 8);
  v35 = *(v1 + v5);
  v20 = *(v1 + v5 + 8);
  v21 = *(v1 + v6);
  v22 = *(v1 + v6 + 8);
  v23 = *(v1 + v7);
  v24 = *(v1 + v7 + 8);
  v25 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v19 + 24) = v11;
  *v11 = *(v19 + 16);
  v11[1] = sub_225F3E5DC;

  return sub_225F8A12C(a1, v26, v27, v28, v29, v30, v1 + v31, v1 + v32);
}

uint64_t sub_22601F250(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225F9D3E8(a1, v6, v7, v8, v9);
}

uint64_t sub_22601F334(uint64_t a1)
{
  v3 = sub_226098948();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_22601F410()
{
  v2 = qword_280D76498;
  if (!qword_280D76498)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76498);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_22601F474()
{
  v2 = qword_280D76C10;
  if (!qword_280D76C10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76C10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22601F4EC()
{
  v2 = qword_280D76768;
  if (!qword_280D76768)
  {
    sub_226098FC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76768);
    return WitnessTable;
  }

  return v2;
}

void *sub_22601F56C(const void *a1, void *a2)
{
  v6 = sub_226099248();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B0, &unk_2260A0FF0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_22601F694()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_225FDBA34();
}

unint64_t sub_22601F6A0()
{
  v2 = qword_280D76580;
  if (!qword_280D76580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E58, &unk_2260A0950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22601F728(uint64_t a1)
{
  v3 = sub_226099248();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}