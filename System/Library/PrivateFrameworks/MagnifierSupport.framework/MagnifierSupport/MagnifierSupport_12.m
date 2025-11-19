uint64_t sub_257CB65D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257CB6710;
  }

  else
  {

    v2 = sub_257CB66F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257CB6710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257CB6774(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v25 = a3;
  v26 = a5;
  v24[1] = a4;
  v8 = sub_257ECF120();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v24 - v16;
  v27 = *(a2 + 16);
  (*(v15 + 16))(v24 - v16, a1, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = v26;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = v28;
  v21 = _Block_copy(aBlock);
  sub_257ECC3F0();
  v22 = v20;
  sub_257ECF150();
  v32 = MEMORY[0x277D84F90];
  sub_257CB8538(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72800](0, v13, v10, v21);
  _Block_release(v21);
  (*(v31 + 8))(v10, v8);
  (*(v29 + 8))(v13, v30);
}

uint64_t sub_257CB6B04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128);
  return sub_257ECF8D0();
}

uint64_t sub_257CB6B94(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_257CB6BB8, 0, 0);
}

uint64_t sub_257CB6BB8()
{
  v11 = v0;
  v1 = *(v0 + 32);
  sub_257BE9394(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v3 = sub_257ECCAE0();
  type metadata accessor for VNImageOption(0);
  sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
  v4 = sub_257ECF3C0();

  v5 = [v2 initWithURL:v3 options:v4];

  v6 = objc_autoreleasePoolPush();
  sub_257CB6D60(v1, v5, (v0 + 16), &v10);
  objc_autoreleasePoolPop(v6);

  v7 = v10;
  v8 = *(v0 + 8);

  return v8(v7);
}

void sub_257CB6D60(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v56 = a3;
  v57 = a2;
  v51 = a4;
  v59[1] = *MEMORY[0x277D85DE8];
  v5 = sub_257ECD9D0();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_257ECD990();
  v8 = *(v58 - 8);
  v9 = MEMORY[0x28223BE20](v58);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277CE2DB0]) init];
  [v16 setRecognitionLevel_];
  v17 = [objc_opt_self() preferredLanguages];
  if (!v17)
  {
    sub_257ECF810();
    v17 = sub_257ECF7F0();
  }

  v52 = v7;
  [v16 setRecognitionLanguages_];

  [v16 setUsesLanguageCorrection_];
  [v16 setUsesLanguageDetection_];
  if (qword_27F8F45B0 != -1)
  {
    swift_once();
  }

  v18 = sub_257ECD9C0();
  __swift_project_value_buffer(v18, qword_27F8F5DA8);
  v19 = v16;
  sub_257ECD980();
  v20 = sub_257ECD9A0();
  v21 = sub_257ECFDC0();
  if (sub_257ED0090())
  {
    v22 = swift_slowAlloc();
    *v22 = 134218496;
    *(v22 + 4) = [v19 recognitionLevel];
    *(v22 + 12) = 1024;
    *(v22 + 14) = [v19 usesLanguageDetection];
    *(v22 + 18) = 1024;
    *(v22 + 20) = [v19 usesLanguageCorrection];

    v23 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v20, v21, v23, "DetectText", "lvl=%ld langDtct=%{BOOL}d langCrct=%{BOOL}d", v22, 0x18u);
    MEMORY[0x259C74820](v22, -1, -1);
  }

  else
  {

    v20 = v19;
  }

  v24 = v58;
  (*(v8 + 16))(v13, v15, v58);
  sub_257ECDA00();
  swift_allocObject();
  sub_257ECD9F0();
  v25 = *(v8 + 8);
  v25(v15, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_257ED9BF0;
  *(v26 + 32) = v19;
  sub_257BD2C2C(0, &qword_27F8F5FD8);
  v27 = v19;
  v28 = sub_257ECF7F0();

  v59[0] = 0;
  v29 = [v57 performRequests:v28 error:v59];

  if (!v29)
  {
    v38 = v59[0];
    v39 = sub_257ECC9F0();

    swift_willThrow();

LABEL_25:
    *v56 = v39;
    return;
  }

  v30 = v59[0];
  v31 = sub_257ECD9A0();
  v32 = v55;
  sub_257ECD9E0();
  v33 = sub_257ECFDB0();
  if (sub_257ED0090())
  {
    sub_257ECC3F0();
    v34 = v52;
    sub_257ECDA10();

    v36 = v53;
    v35 = v54;
    if ((*(v53 + 88))(v34, v54) == *MEMORY[0x277D85B00])
    {
      v37 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v34, v35);
      v37 = "";
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = v55;
    v42 = sub_257ECD970();
    v43 = v37;
    v32 = v41;
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v31, v33, v42, "DetectText", v43, v40, 2u);
    MEMORY[0x259C74820](v40, -1, -1);
  }

  v25(v32, v58);
  v44 = [v27 results];
  if (!v44)
  {
LABEL_24:
    sub_257BEBEF0();
    v39 = swift_allocError();
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    *v49 = 5;
    *(v49 + 24) = 4;
    swift_willThrow();

    goto LABEL_25;
  }

  v45 = v44;
  sub_257BD2C2C(0, &qword_27F8F97F0);
  v46 = sub_257ECF810();

  if (v46 >> 62)
  {
    if (sub_257ED0210())
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_18:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x259C72E20](0, v46);
  }

  else
  {
    if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v47 = *(v46 + 32);
  }

  v48 = v47;

  *v51 = v48;
}

uint64_t sub_257CB747C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_257CB749C, 0, 0);
}

uint64_t sub_257CB749C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_257C2F88C;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](&v0[3].u64[1], 0, 0, 0xD000000000000024, 0x8000000257EFD6C0, sub_257CB7DB4, v1, v3);
}

uint64_t sub_257CB7590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a3;
  v5 = sub_257ECF120();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v19[1] = *(a2 + 16);
  (*(v12 + 16))(v19 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19[0];
  *(v16 + 24) = a2;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_257CB84F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_19;
  v17 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECF150();
  v23 = MEMORY[0x277D84F90];
  sub_257CB8538(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72800](0, v10, v7, v17);
  _Block_release(v17);
  (*(v22 + 8))(v7, v5);
  (*(v20 + 8))(v10, v21);
}

void sub_257CB7930(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_257BE9394(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
  v3 = sub_257ECF3C0();

  v4 = [v2 initWithCVPixelBuffer:v1 orientation:6 options:v3];

  sub_257CB8890(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88);
  sub_257ECF8D0();
}

uint64_t MAGTextDetectionService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_257CB7AE4(uint64_t a1, char a2)
{
  sub_257BE9394(MEMORY[0x277D84F90]);
  v4 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
  v5 = sub_257ECF3C0();

  v6 = [v4 initWithCVPixelBuffer:a1 orientation:6 options:v5];

  v7 = objc_autoreleasePoolPush();
  sub_257CB6D60(a2, v6, &v8, &v9);
  objc_autoreleasePoolPop(v7);
}

id sub_257CB7C20(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CE2DB0]) init];
  [v2 setRecognitionLevel_];
  v9[0] = 0;
  v3 = [v2 supportedRecognitionLanguagesAndReturnError_];
  v4 = v9[0];
  if (v3)
  {
    v5 = v3;
    v6 = sub_257ECF810();
    v7 = v4;
  }

  else
  {
    v6 = v9[0];
    sub_257ECC9F0();

    swift_willThrow();
  }

  return v6;
}

uint64_t dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257CB8DCC;

  return v6(a1);
}

uint64_t dispatch thunk of MAGTextDetectionService.detectText(fromUIImage:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257CB8DCC;

  return v6(a1);
}

uint64_t dispatch thunk of MAGTextDetectionService.detectText(fromCGImage:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257CB81B4;

  return v6(a1);
}

uint64_t sub_257CB81B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MAGTextDetectionService.detectText(fromImageURL:useLanguageCorrection:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_257CB8DCC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MAGTextDetectionService.isTextPresent(inPixelBufferWrapper:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257CB81B4;

  return v6(a1);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257CB8538(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257CB8580(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithImage_];
  if (v2 || (v2 = [a1 CIImage]) != 0)
  {
    v3 = v2;
    sub_257BE9394(MEMORY[0x277D84F90]);
    v4 = objc_allocWithZone(MEMORY[0x277CE2D50]);
    type metadata accessor for VNImageOption(0);
    sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
    v5 = sub_257ECF3C0();

    v6 = [v4 initWithCIImage:v3 orientation:6 options:v5];

    v7 = objc_autoreleasePoolPush();
    sub_257CB6D60(1, v6, &v8, &v9);
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CE2CC8]) init];
  }
}

void sub_257CB8724(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
  sub_257BE9394(MEMORY[0x277D84F90]);
  v2 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_257CB8538(&qword_27F8F4CD8, type metadata accessor for VNImageOption);
  v3 = sub_257ECF3C0();

  v4 = [v2 initWithCIImage:v1 orientation:6 options:v3];

  v5 = objc_autoreleasePoolPush();
  sub_257CB6D60(1, v4, &v6, &v7);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_257CB8890(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CE2CB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_257ED9BF0;
  *(v3 + 32) = v2;
  sub_257BD2C2C(0, &qword_27F8F5FD8);
  v4 = v2;
  v5 = sub_257ECF7F0();

  v16[0] = 0;
  v6 = [a1 performRequests:v5 error:v16];

  if (!v6)
  {
    v13 = v16[0];
    sub_257ECC9F0();

LABEL_13:
    swift_willThrow();

    return 1;
  }

  v7 = v16[0];
  v8 = [v4 results];
  if (!v8)
  {
LABEL_12:
    sub_257BEBEF0();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 5;
    *(v14 + 24) = 4;
    goto LABEL_13;
  }

  v9 = v8;
  sub_257BD2C2C(0, &qword_27F8F7120);
  v10 = sub_257ECF810();

  if (v10 >> 62)
  {
    if (sub_257ED0210())
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x259C72E20](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  return 1;
}

uint64_t objectdestroy_23Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7128);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_257CB8D48(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t sub_257CB8DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_257CB8E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257CB8EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = *v1;
  v19[0] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7138);
  sub_257ECEE60();
  v4 = [objc_opt_self() sharedApplication];
  [v4 userInterfaceLayoutDirection];

  v5 = sub_257ECEE10();
  sub_257ECEE60();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_257ECF4C0();
  v9 = sub_257ECF4C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_257ECF500();
  v13 = v12;

  v14 = sub_257D42694();
  v15 = swift_allocObject();
  v16 = v2[1];
  v15[1] = *v2;
  v15[2] = v16;
  v17 = v2[3];
  v15[3] = v2[2];
  v15[4] = v17;
  *a1 = v5;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = sub_257CB9280;
  *(a1 + 48) = v15;
  return sub_257CB9288(v2, v19);
}

void sub_257CB9108(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7138);
  sub_257ECEE60();
  if (v6 == 1)
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = v2;
    sub_257CD5040();
  }

  sub_257ECEE60();
  if (v6)
  {
    return;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for MFReaderBlockManager();
    sub_257CB92C0();
    sub_257ECE320();
    __break(1u);
    return;
  }

  v5 = v4;
  sub_257CD1508();
}

unint64_t sub_257CB922C()
{
  result = qword_27F8F7130;
  if (!qword_27F8F7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7130);
  }

  return result;
}

unint64_t sub_257CB92C0()
{
  result = qword_27F8F5E38;
  if (!qword_27F8F5E38)
  {
    type metadata accessor for MFReaderBlockManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5E38);
  }

  return result;
}

unint64_t sub_257CB9318()
{
  result = qword_27F8F7140;
  if (!qword_27F8F7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7140);
  }

  return result;
}

unint64_t sub_257CB9370()
{
  result = qword_27F8F7148;
  if (!qword_27F8F7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7148);
  }

  return result;
}

unint64_t sub_257CB93C8()
{
  result = qword_27F8F7150;
  if (!qword_27F8F7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7150);
  }

  return result;
}

unint64_t sub_257CB9488()
{
  result = qword_27F8F7158;
  if (!qword_27F8F7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7158);
  }

  return result;
}

uint64_t sub_257CB94DC()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912F40);
  __swift_project_value_buffer(v0, qword_27F912F40);
  return sub_257ECCA00();
}

uint64_t sub_257CB9540()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257CB9630, v3, v2);
}

uint64_t sub_257CB9630()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EDE760;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257CB9714;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257CB9714()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257CB9854;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257CB9854()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DetectFurnitureIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257CB99D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4600 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912F40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257CB9A78(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CB9B4C, v3, v2);
}

uint64_t sub_257CB9B4C()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE0440, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257CB9C60(uint64_t a1)
{
  v2 = sub_257CB9488();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257CB9CAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257CB9540();
}

unint64_t sub_257CB9D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2 == 1)
  {
    result = sub_257C03FE4(a3);
    if (v6)
    {
      v7 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_257C07D0C();
        v9 = v14;
      }

      result = sub_257C0667C(v7, v9);
      *v4 = v9;
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    result = sub_257EC6B40(a1, a2, a3, v13);
    *v3 = v15;
  }

  return result;
}

uint64_t sub_257CB9E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_257ECCCF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_257BE4084(a1, &qword_27F8F5728);
    v13 = sub_257C040A0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_257C08174();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_257C06BDC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_257BE4084(v8, &qword_27F8F5728);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_257EC6CA0(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_257CBA080(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    result = sub_257C09E78(a2);
    if (v8)
    {
      v9 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_257C085AC();
        v11 = v13;
      }

      result = sub_257C06F3C(v9, v11);
      *v3 = v11;
    }
  }

  else
  {
    v5 = *&a1;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_257EC7174(a2, v6, v5);
    *v2 = v12;
  }

  return result;
}

void sub_257CBA13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_257EC798C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    v9 = sub_257C040E4(a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_257C08F9C();
        v13 = v15;
      }

      sub_257C070D0(v11, v13);
      *v4 = v13;
    }
  }
}

uint64_t MAGOutputEngine.__allocating_init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  MAGOutputEngine.init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)(a1, a2);
  return v4;
}

char *MAGOutputEngine.init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)(uint64_t a1, int a2)
{
  v3 = v2;
  v26 = a2;
  v25 = a1;
  v24 = sub_257ECFD20();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_257ECF190();
  MEMORY[0x28223BE20](v8 - 8);
  v23[1] = sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF150();
  v27 = MEMORY[0x277D84F90];
  sub_257CC8834(&qword_281543F30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v24);
  *(v2 + 2) = sub_257ECFD80();
  sub_257ECD330();
  *(v2 + 3) = sub_257ECD320();
  sub_257ECD2C0();
  *(v2 + 4) = sub_257ECD2B0();
  v9 = MEMORY[0x277D84F90];
  *(v2 + 5) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__previousEvent;
  v11 = type metadata accessor for MAGOutputEvent(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v3[v10], 1, 1, v11);
  v12(&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__currentEvent], 1, 1, v11);
  v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent] = 0;
  v13 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_observerStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7188);
  swift_allocObject();
  *&v3[v13] = sub_257ECD2E0();
  v14 = &v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineTextAnnouncement];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = &v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineVQAAnnouncement];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = &v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineDocumentAnnouncement];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___speechSynthesizer] = 0;
  v12(&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpokenEvent], 1, 1, v11);
  v17 = &v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_supportHaptics;
  LOBYTE(v12) = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  v3[v18] = v12;
  v19 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_cachedSoundEffects;
  *&v3[v19] = sub_257BE9C08(v9);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___hapticEngine] = 1;
  v20 = sub_257BE9CFC(&unk_286904AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F71E0);
  swift_arrayDestroy();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary] = v20;
  v21 = sub_257BE9CFC(&unk_286904B60);
  sub_257BE4084(&unk_286904B80, &qword_27F8F71E0);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__advancedEventTextDictionary] = v21;
  sub_257ECCF10();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_audioService] = v25;
  v3[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_audioSessionAutomaticallyDeactivatesAfterSpeaking] = v26;
  return v3;
}

uint64_t sub_257CBA778(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
  }
}

uint64_t sub_257CBA8AC(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
  }
}

uint64_t sub_257CBA9E0(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_257D56814(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
  }
}

uint64_t sub_257CBAB28(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
  }

  return result;
}

uint64_t sub_257CBAC40(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
  }

  return result;
}

uint64_t sub_257CBADBC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_257ED0640() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
  }
}

uint64_t sub_257CBAF74(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();

  v6 = sub_257D77D44(v5, a1);

  if (v6)
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
  }
}

uint64_t sub_257CBB0BC()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  return sub_257ECC3F0();
}

uint64_t sub_257CBB160@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  *a2 = *(v3 + 24);
  return sub_257ECC3F0();
}

uint64_t sub_257CBB20C()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  return sub_257ECC3F0();
}

uint64_t sub_257CBB2B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  *a2 = *(v3 + 32);
  return sub_257ECC3F0();
}

uint64_t sub_257CBB35C()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  swift_beginAccess();
}

uint64_t sub_257CBB414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_257CBB4D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t sub_257CBB58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_257BE401C(a1, &v11 - v8, &qword_27F8F6D50);
  return a5(v9);
}

uint64_t sub_257CBB668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_257BE401C(a2, &v11 - v7, &qword_27F8F6D50);
  v9 = *a3;
  swift_beginAccess();
  sub_257C0DA64(v8, a1 + v9, &qword_27F8F6D50);
  return swift_endAccess();
}

uint64_t sub_257CBB754()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  return *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue);
}

uint64_t sub_257CBB7FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  *a2 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue);
  return result;
}

uint64_t sub_257CBB90C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v4 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_257CBB9F8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  swift_beginAccess();
  return *(v3 + v1);
}

void (*sub_257CBBAB4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  *v4 = v1;
  swift_getKeyPath();
  sub_257ECCF00();

  v4[7] = sub_257CBB8AC();
  return sub_257CBBBEC;
}

void sub_257CBBBEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_257ECCEF0();

  free(v1);
}

uint64_t sub_257CBBC80(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v4 - 8);
  v170 = v156 - v5;
  v169 = type metadata accessor for MAGOutputEvent(0);
  v174 = *(v169 - 8);
  v6 = MEMORY[0x28223BE20](v169);
  v162 = v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v161 = v156 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v173 = v156 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v156 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v165 = v156 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v168 = v156 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v164 = v156 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v163 = v156 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v156 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v156 - v26;
  v178 = sub_257ECDA30();
  v28 = *(v178 - 8);
  v29 = MEMORY[0x28223BE20](v178);
  v31 = v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v171 = v156 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v172 = v156 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v175 = v156 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v167 = v156 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = v156 - v40;
  sub_257ECD500();
  sub_257CC93D0(a1, v27, type metadata accessor for MAGOutputEvent);
  sub_257CC93D0(a1, v25, type metadata accessor for MAGOutputEvent);
  swift_retain_n();
  v42 = sub_257ECDA20();
  v43 = sub_257ECFBD0();
  v44 = os_log_type_enabled(v42, v43);
  v177 = v28;
  v166 = v31;
  v160 = v14;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v181 = v176;
    *v45 = 136315650;
    LODWORD(v159) = v43;
    v46 = sub_257ECCCA0();
    v47 = a1;
    v49 = v48;
    sub_257CC9438(v27, type metadata accessor for MAGOutputEvent);
    v50 = sub_257BF1FC8(v46, v49, &v181);
    a1 = v47;
    v51 = v178;

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    v52 = MAGOutputEvent.description.getter();
    v54 = v53;
    sub_257CC9438(v25, type metadata accessor for MAGOutputEvent);
    v55 = sub_257BF1FC8(v52, v54, &v181);

    *(v45 + 14) = v55;
    *(v45 + 22) = 2048;
    swift_getKeyPath();
    v180[0] = v2;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    swift_beginAccess();
    v56 = *(*(v2 + 40) + 16);

    *(v45 + 24) = v56;

    _os_log_impl(&dword_257BAC000, v42, v159, "%s: Will schedule event: %s. eventQueue.count=%ld", v45, 0x20u);
    v57 = v176;
    swift_arrayDestroy();
    MEMORY[0x259C74820](v57, -1, -1);
    v58 = v45;
    v59 = v177;
    MEMORY[0x259C74820](v58, -1, -1);

    v60 = *(v59 + 8);
    v61 = v41;
    v62 = v51;
  }

  else
  {

    sub_257CC9438(v25, type metadata accessor for MAGOutputEvent);
    sub_257CC9438(v27, type metadata accessor for MAGOutputEvent);
    v60 = *(v28 + 8);
    v61 = v41;
    v62 = v178;
  }

  v176 = v60;
  v60(v61, v62);
  v63 = MAGOutputEvent.replacesEventsWithSameCategory.getter();
  if (v63)
  {
    MEMORY[0x28223BE20](v63);
    v156[-2] = a1;
    swift_getKeyPath();
    v64 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine___observationRegistrar;
    v181 = v2;
    v65 = sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v181 = v2;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    result = sub_257CC83E8(sub_257CC8AA0, &v156[-4]);
    v67 = *(*(v2 + 40) + 16);
    if (v67 < result)
    {
      __break(1u);
      return result;
    }

    v159 = 0;
    sub_257CC8744(result, v67, sub_257BFCC48, sub_257E53A34);
    swift_endAccess();
    v181 = v2;
    swift_getKeyPath();
    v158 = v65;
    sub_257ECCEF0();

    v68 = v167;
    sub_257ECD500();
    v69 = v163;
    sub_257CC93D0(a1, v163, type metadata accessor for MAGOutputEvent);
    v70 = v164;
    sub_257CC93D0(a1, v164, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v71 = sub_257ECDA20();
    v72 = sub_257ECFBD0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v69;
      v74 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v181 = v157;
      *v74 = 136315650;
      v75 = sub_257ECCCA0();
      v156[1] = v64;
      v76 = v75;
      v78 = v77;
      sub_257CC9438(v73, type metadata accessor for MAGOutputEvent);
      v79 = sub_257BF1FC8(v76, v78, &v181);

      *(v74 + 4) = v79;
      *(v74 + 12) = 2080;
      MAGOutputEvent.category.getter(v180);
      v80 = MAGOutputEventCategory.rawValue.getter();
      v82 = v81;
      v83 = v178;
      sub_257CC9438(v70, type metadata accessor for MAGOutputEvent);
      v84 = sub_257BF1FC8(v80, v82, &v181);

      *(v74 + 14) = v84;
      *(v74 + 22) = 2048;
      swift_getKeyPath();
      v180[0] = v2;
      sub_257ECCEE0();

      v85 = *(*(v2 + 40) + 16);

      *(v74 + 24) = v85;

      _os_log_impl(&dword_257BAC000, v71, v72, "%s: Did remove events in queue with category: %s. eventQueue.count=%ld", v74, 0x20u);
      v86 = v157;
      swift_arrayDestroy();
      MEMORY[0x259C74820](v86, -1, -1);
      MEMORY[0x259C74820](v74, -1, -1);

      v87 = v167;
      v88 = v83;
    }

    else
    {

      sub_257CC9438(v70, type metadata accessor for MAGOutputEvent);
      sub_257CC9438(v69, type metadata accessor for MAGOutputEvent);
      v87 = v68;
      v88 = v178;
    }

    v63 = v176(v87, v88);
  }

  v89 = v156;
  MEMORY[0x28223BE20](v63);
  v156[-2] = a1;
  KeyPath = swift_getKeyPath();
  v181 = v2;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v181 = v2;
  swift_getKeyPath();
  sub_257ECCF00();

  swift_beginAccess();
  v91 = (v2 + 40);
  v92 = sub_257CC83E8(sub_257CC889C, &v156[-4]);
  v93 = *(*(v2 + 40) + 16);
  if (v93 < v92)
  {
    __break(1u);
  }

  else
  {
    sub_257CC8744(v92, v93, sub_257BFCC48, sub_257E53A34);
    swift_endAccess();
    v181 = v2;
    swift_getKeyPath();
    sub_257ECCEF0();

    v94 = v175;
    sub_257ECD500();
    v95 = v168;
    sub_257CC93D0(a1, v168, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v96 = sub_257ECDA20();
    v97 = sub_257ECFBD0();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v181 = v99;
      *v98 = 136315650;
      v100 = sub_257ECCCA0();
      v101 = v95;
      v103 = v102;
      sub_257CC9438(v101, type metadata accessor for MAGOutputEvent);
      v104 = sub_257BF1FC8(v100, v103, &v181);

      *(v98 + 4) = v104;
      *(v98 + 12) = 2080;
      v105 = MEMORY[0x259C72340](MEMORY[0x277D84F90], &type metadata for MAGOutputEventCategory);
      v107 = sub_257BF1FC8(v105, v106, &v181);

      *(v98 + 14) = v107;
      *(v98 + 22) = 2048;
      swift_getKeyPath();
      v180[0] = v2;
      sub_257ECCEE0();

      v108 = *(*(v2 + 40) + 16);

      *(v98 + 24) = v108;

      _os_log_impl(&dword_257BAC000, v96, v97, "%s: Did remove events in queue with categories: %s. eventQueue.count=%ld", v98, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v99, -1, -1);
      MEMORY[0x259C74820](v98, -1, -1);

      v109 = v175;
    }

    else
    {

      sub_257CC9438(v95, type metadata accessor for MAGOutputEvent);
      v109 = v94;
    }

    v176(v109, v178);
    v89 = v173;
    KeyPath = v174;
    v110 = v172;
    v111 = v170;
    swift_getKeyPath();
    v181 = v2;
    sub_257ECCEE0();

    v112 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__currentEvent;
    swift_beginAccess();
    sub_257BE401C(v2 + v112, v111, &qword_27F8F6D50);
    if ((*(KeyPath + 48))(v111, 1, v169) == 1)
    {
      sub_257BE4084(v111, &qword_27F8F6D50);
    }

    else
    {
      v113 = v165;
      sub_257CC88E8(v111, v165);
      MAGOutputEvent.category.getter(v180);
      if (MAGOutputEvent.interruptsSpeechEventsWithCategory(_:)(v180))
      {
        sub_257ECD500();
        v114 = v160;
        sub_257CC93D0(a1, v160, type metadata accessor for MAGOutputEvent);
        v115 = v110;
        v116 = sub_257ECDA20();
        v117 = sub_257ECFBD0();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v175 = v118;
          v119 = swift_slowAlloc();
          v180[0] = v119;
          *v118 = 136315138;
          v120 = sub_257ECCCA0();
          v122 = v121;
          sub_257CC9438(v114, type metadata accessor for MAGOutputEvent);
          v123 = sub_257BF1FC8(v120, v122, v180);
          v89 = v173;

          v124 = v175;
          *(v175 + 4) = v123;
          v125 = v124;
          _os_log_impl(&dword_257BAC000, v116, v117, "%s: Will request interrupt speech, as required by event to be scheduled", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v119);
          v126 = v119;
          KeyPath = v174;
          MEMORY[0x259C74820](v126, -1, -1);
          MEMORY[0x259C74820](v125, -1, -1);

          v127 = v172;
        }

        else
        {

          sub_257CC9438(v114, type metadata accessor for MAGOutputEvent);
          v127 = v115;
        }

        v176(v127, v178);
        swift_getKeyPath();
        v180[0] = v2;
        sub_257ECCEE0();

        sub_257ECC3F0();
        sub_257ECC3F0();
        sub_257ECD2A0();

        v128 = v165;
      }

      else
      {
        v128 = v113;
      }

      sub_257CC9438(v128, type metadata accessor for MAGOutputEvent);
    }

    sub_257CC93D0(a1, v89, type metadata accessor for MAGOutputEvent);
    swift_getKeyPath();
    v180[0] = v2;
    sub_257ECCEE0();

    v180[0] = v2;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    v91 = *(v2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 40) = v91;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }
  }

  v91 = sub_257BFCC48(0, v91[2] + 1, 1, v91);
  *(v2 + 40) = v91;
LABEL_25:
  v131 = v91[2];
  v130 = v91[3];
  if (v131 >= v130 >> 1)
  {
    v91 = sub_257BFCC48(v130 > 1, v131 + 1, 1, v91);
  }

  v91[2] = v131 + 1;
  sub_257CC88E8(v89, v91 + ((*(KeyPath + 80) + 32) & ~*(KeyPath + 80)) + *(KeyPath + 72) * v131);
  *(v2 + 40) = v91;
  swift_endAccess();
  v180[0] = v2;
  swift_getKeyPath();
  sub_257ECCEF0();

  swift_getKeyPath();
  v180[0] = v2;
  sub_257ECCEE0();

  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue))
  {
    v132 = v166;
    sub_257ECD500();
    v133 = v162;
    sub_257CC93D0(a1, v162, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v134 = sub_257ECDA20();
    v135 = sub_257ECFBD0();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = v133;
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v180[0] = v138;
      *v137 = 136315394;
      v139 = sub_257ECCCA0();
      v141 = v140;
      sub_257CC9438(v136, type metadata accessor for MAGOutputEvent);
      v142 = sub_257BF1FC8(v139, v141, v180);

      *(v137 + 4) = v142;
      *(v137 + 12) = 2048;
      swift_getKeyPath();
      v179 = v2;
      sub_257ECCEE0();

      v143 = *(*(v2 + 40) + 16);

      *(v137 + 14) = v143;

      _os_log_impl(&dword_257BAC000, v134, v135, "%s: Did schedule event. eventQueue.count=%ld. isProcessingEventQueue=true", v137, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v138);
      MEMORY[0x259C74820](v138, -1, -1);
      MEMORY[0x259C74820](v137, -1, -1);

      v144 = v166;
    }

    else
    {

      sub_257CC9438(v133, type metadata accessor for MAGOutputEvent);
      v144 = v132;
    }

    return v176(v144, v178);
  }

  else
  {
    sub_257ECD500();
    v145 = v161;
    sub_257CC93D0(a1, v161, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v146 = sub_257ECDA20();
    v147 = sub_257ECFBD0();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = v145;
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v180[0] = v150;
      *v149 = 136315394;
      v151 = sub_257ECCCA0();
      v153 = v152;
      sub_257CC9438(v148, type metadata accessor for MAGOutputEvent);
      v154 = sub_257BF1FC8(v151, v153, v180);

      *(v149 + 4) = v154;
      *(v149 + 12) = 2048;
      swift_getKeyPath();
      v179 = v2;
      sub_257ECCEE0();

      v155 = *(*(v2 + 40) + 16);

      *(v149 + 14) = v155;

      _os_log_impl(&dword_257BAC000, v146, v147, "%s: Did schedule event. eventQueue.count=%ld. isProcessingEventQueue=false so will call processEventQueue() (async)", v149, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v150);
      MEMORY[0x259C74820](v150, -1, -1);
      MEMORY[0x259C74820](v149, -1, -1);
    }

    else
    {

      sub_257CC9438(v145, type metadata accessor for MAGOutputEvent);
    }

    v176(v171, v178);
    swift_getKeyPath();
    v180[0] = v2;
    sub_257ECCEE0();

    sub_257ECC3F0();
    sub_257ECC3F0();
    sub_257ECD310();
  }
}

uint64_t sub_257CBD3B8()
{
  MAGOutputEvent.category.getter(&v7);
  MAGOutputEvent.category.getter(&v6);
  v0 = MAGOutputEventCategory.rawValue.getter();
  v2 = v1;
  if (v0 == MAGOutputEventCategory.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_257ED0640();
  }

  return v4 & 1;
}

uint64_t sub_257CBD48C()
{
  sub_257ECF900();
  *(v0 + 24) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CBD520, v2, v1);
}

uint64_t sub_257CBD520()
{

  *(v0 + 32) = sub_257CC211C();
  v3 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_257CBD5D4;

  return v3();
}

uint64_t sub_257CBD5D4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_257CBD6E0()
{
  v0[2] = sub_257ECF900();
  v0[3] = sub_257ECF8F0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_257CBD78C;

  return sub_257CBD8C8();
}

uint64_t sub_257CBD78C()
{

  v1 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC9EBC, v1, v0);
}

uint64_t sub_257CBD8C8()
{
  v1[39] = v0;
  v2 = sub_257ECF120();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  v3 = sub_257ECF190();
  v1[43] = v3;
  v1[44] = *(v3 - 8);
  v1[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v1[46] = swift_task_alloc();
  v4 = sub_257ECCB70();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = type metadata accessor for MAGOutputEngine.Event(0);
  v1[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  v1[52] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEvent(0);
  v1[53] = v5;
  v6 = *(v5 - 8);
  v1[54] = v6;
  v1[55] = *(v6 + 64);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v7 = sub_257ECDA30();
  v1[65] = v7;
  v1[66] = *(v7 - 8);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  sub_257ECF900();
  v1[75] = sub_257ECF8F0();
  v9 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CBDC88, v9, v8);
}

uint64_t sub_257CBDC88()
{
  v204 = v0;
  v1 = v0;
  v2 = v0[39];
  swift_getKeyPath();
  v0[23] = v2;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  v202 = v0 + 23;
  sub_257ECCEE0();

  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue) == 1)
  {

    sub_257ECD500();
    v3 = sub_257ECDA20();
    v4 = sub_257ECFBD0();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[74];
    v7 = v0[66];
    v8 = v1[65];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_257BAC000, v3, v4, "Will abort processEventQueue(). isProcessingEventQueue=true", v9, 2u);
      MEMORY[0x259C74820](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_58;
  }

  v196 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isProcessingEventQueue;
  v10 = v0[39];
  swift_getKeyPath();
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = 1;
  v1[24] = v10;
  sub_257ECCED0();

  swift_getKeyPath();
  v1[25] = v10;
  sub_257ECCEE0();

  swift_beginAccess();
  if (*(*(v10 + 40) + 16))
  {
    v12 = v1[39];
    swift_getKeyPath();
    v1[26] = v12;
    sub_257ECCEE0();

    v1[27] = v12;
    swift_getKeyPath();
    sub_257ECCF00();

    result = swift_beginAccess();
    v14 = *(v10 + 40);
    if (!*(v14 + 16))
    {
      __break(1u);
      return result;
    }

    log = v1[64];
    v197 = v1[63];
    v199 = v1[62];
    v15 = v1[54];
    v192 = v1[53];
    v16 = v1[52];
    v17 = v1[39];
    v183 = *(v15 + 80);
    sub_257CC93D0(v14 + ((v183 + 32) & ~v183), log, type metadata accessor for MAGOutputEvent);
    v184 = v10;
    sub_257CC8744(0, 1, sub_257BFCC48, sub_257E53A34);
    swift_endAccess();
    v1[28] = v17;
    swift_getKeyPath();
    sub_257ECCEF0();

    swift_getKeyPath();
    v1[29] = v17;
    v18 = v2;
    sub_257ECCEE0();

    v19 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__currentEvent;
    swift_beginAccess();
    sub_257BE401C(v17 + v19, v16, &qword_27F8F6D50);
    sub_257CBB550(v16);
    sub_257CC93D0(log, v16, type metadata accessor for MAGOutputEvent);
    (*(v15 + 56))(v16, 0, 1, v192);
    sub_257CBB640(v16);
    sub_257ECD500();
    sub_257CC93D0(log, v197, type metadata accessor for MAGOutputEvent);
    sub_257CC93D0(log, v199, type metadata accessor for MAGOutputEvent);
    swift_retain_n();
    v20 = sub_257ECDA20();
    v200 = sub_257ECFBD0();
    v21 = os_log_type_enabled(v20, v200);
    v22 = v1[73];
    v23 = v1[66];
    v24 = v1[65];
    v26 = v1[62];
    v25 = v1[63];
    v198 = v1;
    v27 = v1[39];
    v194 = v18;
    if (v21)
    {
      v28 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v203[0] = v187;
      *v28 = 136315650;
      v190 = v24;
      v193 = v22;
      v29 = sub_257ECCCA0();
      v31 = v30;
      sub_257CC9438(v25, type metadata accessor for MAGOutputEvent);
      v32 = sub_257BF1FC8(v29, v31, v203);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = MAGOutputEvent.description.getter();
      v35 = v34;
      sub_257CC9438(v26, type metadata accessor for MAGOutputEvent);
      v36 = sub_257BF1FC8(v33, v35, v203);

      *(v28 + 14) = v36;
      *(v28 + 22) = 2048;
      swift_getKeyPath();
      v202[14] = v27;
      sub_257ECCEE0();

      v37 = *(*(v184 + 40) + 16);

      *(v28 + 24) = v37;

      _os_log_impl(&dword_257BAC000, v20, v200, "%s: Will process event: %s. after removal eventQueue.count=%ld", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v187, -1, -1);
      MEMORY[0x259C74820](v28, -1, -1);

      v38 = *(v23 + 8);
      v40 = v190;
      v39 = v193;
    }

    else
    {

      sub_257CC9438(v26, type metadata accessor for MAGOutputEvent);
      sub_257CC9438(v25, type metadata accessor for MAGOutputEvent);
      v38 = *(v23 + 8);
      v39 = v22;
      v40 = v24;
    }

    v201 = v38;
    v38(v39, v40);
    v49 = v1[64];
    v50 = v1[61];
    v51 = v1[51];
    sub_257CC93D0(v49, v51, type metadata accessor for MAGOutputEvent);
    swift_storeEnumTagMultiPayload();
    sub_257ECD2F0();
    sub_257CC9438(v51, type metadata accessor for MAGOutputEngine.Event);
    sub_257ECD500();
    sub_257CC93D0(v49, v50, type metadata accessor for MAGOutputEvent);
    v52 = sub_257ECDA20();
    v53 = sub_257ECFBD0();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v1[72];
    v56 = v1[65];
    v57 = v1[61];
    if (v54)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v203[0] = v59;
      *v58 = 136315138;
      v60 = sub_257ECCCA0();
      v62 = v61;
      sub_257CC9438(v57, type metadata accessor for MAGOutputEvent);
      v63 = sub_257BF1FC8(v60, v62, v203);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_257BAC000, v52, v53, "%s: Will update display visuals", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      v64 = v59;
      v1 = v198;
      MEMORY[0x259C74820](v64, -1, -1);
      MEMORY[0x259C74820](v58, -1, -1);
    }

    else
    {

      sub_257CC9438(v57, type metadata accessor for MAGOutputEvent);
    }

    v201(v55, v56);
    v65 = v18;
    MAGOutputEvent.category.getter(v203);
    v67 = v202;
    if (MAGOutputEventCategory.rawValue.getter() == 0x746E656D75636F64 && v66 == 0xEF676E696D617246)
    {
    }

    else
    {
      v68 = sub_257ED0640();

      if ((v68 & 1) == 0)
      {
        v71 = v1[39];
        sub_257CC6694();
        swift_getKeyPath();
        v1[30] = v71;
        sub_257ECCEE0();
        v70 = &OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineTextAnnouncement;
        goto LABEL_24;
      }
    }

    v69 = v1[39];
    sub_257CC7BF8();
    swift_getKeyPath();
    v1[36] = v69;
    sub_257ECCEE0();
    v70 = &OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineDocumentAnnouncement;
LABEL_24:

    v72 = v1[51];
    v73 = (v1[39] + *v70);
    v74 = v73[1];
    *v72 = *v73;
    v72[1] = v74;
    swift_storeEnumTagMultiPayload();

    sub_257ECD2F0();
    sub_257CC9438(v72, type metadata accessor for MAGOutputEngine.Event);
    MAGOutputEvent.soundEffect.getter(v203);
    v75 = LOBYTE(v203[0]);
    if (LOBYTE(v203[0]) == 20)
    {
      goto LABEL_37;
    }

    v76 = v1[39];
    v77 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_cachedSoundEffects;
    swift_beginAccess();
    v78 = *(v76 + v77);
    if (*(v78 + 16))
    {

      v79 = sub_257C04470(v75);
      if (v80)
      {
        v81 = *(*(v78 + 56) + 8 * v79);

        v191 = v81;
LABEL_33:
        v96 = v67 - 21;
        v97 = v1[64];
        v98 = v1[60];
        sub_257ECD500();
        sub_257CC93D0(v97, v98, type metadata accessor for MAGOutputEvent);
        v99 = sub_257ECDA20();
        v100 = v1;
        v101 = sub_257ECFBD0();
        v102 = os_log_type_enabled(v99, v101);
        v103 = v100[71];
        v104 = v100[65];
        v105 = v100[60];
        if (v102)
        {
          v106 = swift_slowAlloc();
          v188 = v67 - 21;
          v107 = swift_slowAlloc();
          v203[0] = v107;
          *v106 = 136315138;
          v108 = sub_257ECCCA0();
          v110 = v109;
          sub_257CC9438(v105, type metadata accessor for MAGOutputEvent);
          v111 = sub_257BF1FC8(v108, v110, v203);

          *(v106 + 4) = v111;
          _os_log_impl(&dword_257BAC000, v99, v101, "%s: Will request sound effect for event (async)", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v107);
          v112 = v107;
          v96 = v188;
          MEMORY[0x259C74820](v112, -1, -1);
          MEMORY[0x259C74820](v106, -1, -1);
        }

        else
        {

          sub_257CC9438(v105, type metadata accessor for MAGOutputEvent);
        }

        v201(v103, v104);
        v1 = v198;
        v113 = v198[45];
        v114 = v198[42];
        loga = v198[44];
        v189 = v198[43];
        v116 = v198[40];
        v115 = v198[41];
        v117 = v198[39];
        v118 = swift_allocObject();
        *(v118 + 16) = v117;
        *(v118 + 24) = v191;
        v198[6] = sub_257CC9C48;
        v198[7] = v118;
        v198[2] = MEMORY[0x277D85DD0];
        v198[3] = 1107296256;
        v198[4] = sub_257D231C0;
        v198[5] = &block_descriptor_243;
        v119 = _Block_copy(v96);
        sub_257ECC3F0();
        sub_257ECF150();
        v198[35] = MEMORY[0x277D84F90];
        sub_257CC8834(&qword_281544090, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
        sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
        sub_257ED0180();
        MEMORY[0x259C72880](0, v113, v114, v119);
        _Block_release(v119);

        (*(v115 + 8))(v114, v116);
        (loga[1].isa)(v113, v189);

        v65 = v194;
LABEL_37:
        if (*(v1[39] + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_supportHaptics) == 1)
        {
          MAGOutputEvent.hapticEffect.getter(v203);
          if (LOBYTE(v203[0]) != 11)
          {
            v120.super.isa = MAGHapticEffect.hapticPattern(duration:volume:)(1.0, 1.0).super.isa;
            if (v121.super.isa)
            {
              v122 = v1[64];
              v123 = v1[56];
              sub_257ECD500();
              sub_257CC93D0(v122, v123, type metadata accessor for MAGOutputEvent);
              v124 = sub_257ECDA20();
              v125 = sub_257ECFBE0();
              v126 = os_log_type_enabled(v124, v125);
              v127 = v1[67];
              v128 = v1[65];
              v129 = v1[56];
              if (v126)
              {
                v130 = swift_slowAlloc();
                v195 = v127;
                v131 = swift_slowAlloc();
                v203[0] = v131;
                *v130 = 136315138;
                v132 = sub_257ECCCA0();
                v134 = v133;
                sub_257CC9438(v129, type metadata accessor for MAGOutputEvent);
                v135 = sub_257BF1FC8(v132, v134, v203);
                v65 = v194;

                *(v130 + 4) = v135;
                _os_log_impl(&dword_257BAC000, v124, v125, "%s: Could not create haptic pattern", v130, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v131);
                MEMORY[0x259C74820](v131, -1, -1);
                v136 = v130;
                v1 = v198;
                MEMORY[0x259C74820](v136, -1, -1);

                v137 = v195;
              }

              else
              {

                sub_257CC9438(v129, type metadata accessor for MAGOutputEvent);
                v137 = v127;
              }

              v201(v137, v128);
            }

            else
            {
              isa = v120.super.isa;
              sub_257CC5EEC(v120.super.isa);
            }
          }
        }

        v139 = sub_257CC211C();
        v140 = [v139 isPaused];

        if (v140)
        {
          v141 = v1[64];
          v142 = v1[58];
          sub_257ECD500();
          sub_257CC93D0(v141, v142, type metadata accessor for MAGOutputEvent);
          v143 = sub_257ECDA20();
          v144 = sub_257ECFBD0();
          v145 = os_log_type_enabled(v143, v144);
          v146 = v1[70];
          v147 = v1[65];
          v148 = v1[58];
          if (v145)
          {
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v203[0] = v150;
            *v149 = 136315138;
            v151 = sub_257ECCCA0();
            v153 = v152;
            sub_257CC9438(v148, type metadata accessor for MAGOutputEvent);
            v154 = v151;
            v1 = v198;
            v155 = sub_257BF1FC8(v154, v153, v203);
            v65 = v194;

            *(v149 + 4) = v155;
            _os_log_impl(&dword_257BAC000, v143, v144, "%s: Will not speak event. Speech is paused", v149, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v150);
            MEMORY[0x259C74820](v150, -1, -1);
            MEMORY[0x259C74820](v149, -1, -1);
          }

          else
          {

            sub_257CC9438(v148, type metadata accessor for MAGOutputEvent);
          }

          v201(v146, v147);
        }

        else
        {
          v156 = v1[64];
          v157 = v1[59];
          v158 = v1[55];
          v159 = v1[39];
          swift_getKeyPath();
          v1[31] = v159;
          sub_257ECCEE0();

          sub_257CC93D0(v156, v157, type metadata accessor for MAGOutputEvent);
          v160 = (v183 + 16) & ~v183;
          v161 = swift_allocObject();
          sub_257CC88E8(v157, v161 + v160);
          *(v161 + ((v160 + v158 + 7) & 0xFFFFFFFFFFFFFFF8)) = v159;
          sub_257ECC3F0();
          sub_257ECC3F0();
          sub_257ECD310();
        }

        v162 = v1[64];
        v163 = v1[57];
        sub_257ECD500();
        sub_257CC93D0(v162, v163, type metadata accessor for MAGOutputEvent);
        v164 = sub_257ECDA20();
        v165 = sub_257ECFBD0();
        v166 = os_log_type_enabled(v164, v165);
        v167 = v1[69];
        v168 = v1[65];
        v169 = v1[57];
        if (v166)
        {
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v203[0] = v171;
          *v170 = 136315138;
          v172 = sub_257ECCCA0();
          v174 = v173;
          sub_257CC9438(v169, type metadata accessor for MAGOutputEvent);
          v175 = v172;
          v1 = v198;
          v176 = sub_257BF1FC8(v175, v174, v203);
          v65 = v194;

          *(v170 + 4) = v176;
          _os_log_impl(&dword_257BAC000, v164, v165, "%s: Did process event", v170, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v171);
          MEMORY[0x259C74820](v171, -1, -1);
          MEMORY[0x259C74820](v170, -1, -1);
        }

        else
        {

          sub_257CC9438(v169, type metadata accessor for MAGOutputEvent);
        }

        v201(v167, v168);
        v177 = v1[64];
        v178 = v1[51];
        v179 = v1[39];
        sub_257CC93D0(v177, v178, type metadata accessor for MAGOutputEvent);
        swift_storeEnumTagMultiPayload();
        sub_257ECD2F0();
        sub_257CC9438(v178, type metadata accessor for MAGOutputEngine.Event);
        swift_getKeyPath();
        v1[32] = v179;
        sub_257ECCEE0();

        sub_257ECC3F0();
        sub_257ECC3F0();
        sub_257ECD310();

        sub_257CC9438(v177, type metadata accessor for MAGOutputEvent);
        v86 = v196;
        if (*(v65 + v196) == 1)
        {
          v180 = v1[39];
          swift_getKeyPath();
          v181 = swift_task_alloc();
          *(v181 + 16) = v180;
          *(v181 + 24) = 0;
          v1[33] = v180;
          goto LABEL_56;
        }

LABEL_57:
        *(v65 + v86) = 0;
        goto LABEL_58;
      }
    }

    v82 = v1[47];
    v83 = v1[48];
    v84 = v1[46];
    LOBYTE(v203[0]) = v75;
    MAGSoundEffect.url.getter(v84);
    if ((*(v83 + 48))(v84, 1, v82) != 1)
    {
      v89 = v1[49];
      (*(v1[48] + 32))(v89, v1[46], v1[47]);
      v90 = sub_257CC99DC(v89);
      v92 = v1[48];
      v91 = v1[49];
      v93 = v1[47];
      swift_beginAccess();
      v94 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v203[0] = *(v76 + v77);
      *(v76 + v77) = 0x8000000000000000;
      v191 = v94;
      sub_257EC79F4(v94, v75, isUniquelyReferenced_nonNull_native);
      *(v76 + v77) = v203[0];
      swift_endAccess();
      (*(v92 + 8))(v91, v93);
      v67 = v202;
      goto LABEL_33;
    }

    v85 = v1[46];
    sub_257CC9438(v1[64], type metadata accessor for MAGOutputEvent);
    sub_257BE4084(v85, &qword_27F8F5F30);
    v86 = v196;
    if (*(v194 + v196) != 1)
    {
      goto LABEL_57;
    }

    v87 = v1[39];
    swift_getKeyPath();
    v88 = swift_task_alloc();
    *(v88 + 16) = v87;
    *(v88 + 24) = 0;
    v1[34] = v87;
LABEL_56:
    sub_257ECCED0();

    goto LABEL_58;
  }

  sub_257ECD500();
  v41 = sub_257ECDA20();
  v42 = sub_257ECFBD0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_257BAC000, v41, v42, "Will abort processEventQueue(). eventQueue is empty", v43, 2u);
    MEMORY[0x259C74820](v43, -1, -1);
  }

  v44 = v1[68];
  v45 = v1[66];
  v46 = v1[65];

  (*(v45 + 8))(v44, v46);
  if (*(v2 + v196) == 1)
  {
    v47 = v1[39];
    swift_getKeyPath();
    v48 = swift_task_alloc();
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    v1[38] = v47;
    goto LABEL_56;
  }

  *(v2 + v196) = 0;
LABEL_58:

  v182 = v1[1];

  return v182();
}

uint64_t sub_257CBF684(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  type metadata accessor for MAGOutputEvent(0);
  v2[29] = swift_task_alloc();
  v3 = sub_257ECDA30();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  sub_257ECF900();
  v2[33] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();
  v2[34] = v5;
  v2[35] = v4;

  return MEMORY[0x2822009F8](sub_257CBF7A4, v5, v4);
}

uint64_t sub_257CBF7A4()
{
  v31 = v0;
  v1 = v0[29];
  v2 = v0[27];
  sub_257ECD500();
  sub_257CC93D0(v2, v1, type metadata accessor for MAGOutputEvent);
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBD0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[30];
  if (v5)
  {
    v29 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    v12 = sub_257ECCCA0();
    v14 = v13;
    sub_257CC9438(v8, type metadata accessor for MAGOutputEvent);
    v15 = sub_257BF1FC8(v12, v14, &v30);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_257BAC000, v3, v4, "%s: eventDispatchQueue:dispatch :: speak()", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C74820](v11, -1, -1);
    MEMORY[0x259C74820](v10, -1, -1);

    (*(v6 + 8))(v29, v9);
  }

  else
  {

    sub_257CC9438(v8, type metadata accessor for MAGOutputEvent);
    (*(v6 + 8))(v7, v9);
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v16 = MAGOutputEvent.brailleContent.getter();
    if (v17)
    {
      v0[18] = v16;
      v0[19] = v17;
      v0[20] = 10;
      v0[21] = 0xE100000000000000;
      v0[22] = 32;
      v0[23] = 0xE100000000000000;
      v28 = sub_257BDAB08();
      v27 = MEMORY[0x277D837D0];
      sub_257ED0120();

      v18 = objc_allocWithZone(MEMORY[0x277CE6B98]);
      v19 = sub_257ECF4C0();

      v20 = [v18 initWithString_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      v0[24] = sub_257ECF500();
      v0[25] = v22;
      sub_257ED0280();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      sub_257BE88A0(inited);
      swift_setDeallocating();
      sub_257BE4084(inited + 32, &unk_27F8F54A0);
      v23 = sub_257ECF3C0();

      [v20 setAttributes_];

      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v20);
    }
  }

  v24 = swift_task_alloc();
  v0[36] = v24;
  *v24 = v0;
  v24[1] = sub_257CBFB7C;
  v25 = v0[27];

  return sub_257CC2C00(v25);
}

uint64_t sub_257CBFB7C()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return MEMORY[0x2822009F8](sub_257CBFC9C, v3, v2);
}

uint64_t sub_257CBFC9C()
{
  v10 = v0;

  MAGOutputEvent.category.getter(v9);
  if (MAGOutputEventCategory.rawValue.getter() == 0x65636E756F6E6E61 && v1 == 0xEC000000746E656DLL)
  {
  }

  else
  {
    v2 = sub_257ED0640();

    if ((v2 & 1) == 0)
    {
      v3 = v0[28];
      v4 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
      swift_beginAccess();
      if (*(v3 + v4) == 1)
      {
        *(v3 + v4) = 1;
      }

      else
      {
        v5 = v0[28];
        swift_getKeyPath();
        v6 = swift_task_alloc();
        *(v6 + 16) = v5;
        *(v6 + 24) = 1;
        v0[26] = v5;
        sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
        sub_257ECCED0();
      }
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_257CBFE7C()
{
  v0[2] = sub_257ECF900();
  v0[3] = sub_257ECF8F0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_257CBFF28;

  return sub_257CBD8C8();
}

uint64_t sub_257CBFF28()
{

  v1 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC0064, v1, v0);
}

uint64_t sub_257CC0064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257CC00C4()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD500();
  v4 = sub_257ECDA20();
  v5 = sub_257ECFBC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_257BAC000, v4, v5, "clearEventQueue() called. removing all events", v6, 2u);
    MEMORY[0x259C74820](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_257CBA9E0(MEMORY[0x277D84F90]);
}

uint64_t sub_257CC0214()
{
  v1 = v0;
  v48 = type metadata accessor for MAGOutputEvent.EventType(0);
  v2 = MEMORY[0x28223BE20](v48);
  v41 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v39 - v4;
  v47 = type metadata accessor for MAGOutputEvent(0);
  v6 = *(v47 - 8);
  v7 = MEMORY[0x28223BE20](v47);
  v43 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = v39 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v46 = v39 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v39 - v13;
  v15 = sub_257ECDA30();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD500();
  v19 = sub_257ECDA20();
  v20 = sub_257ECFBC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_257BAC000, v19, v20, "clearEventQueueOfActiveEvents() called. removing all 'announcement' events", v21, 2u);
    MEMORY[0x259C74820](v21, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine___observationRegistrar;
  v49 = v1;
  v23 = sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v49 = v1;
  swift_getKeyPath();
  sub_257ECCF00();

  result = swift_beginAccess();
  v40 = v1;
  v25 = *(v1 + 40);
  v26 = v25[2];
  if (v26)
  {
    v39[1] = v23;
    v39[2] = v22;
    v27 = 0;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v39[3] = 0x8000000257EF7520;
    v45 = 0x8000000257EF74D0;
    v42 = v28;
    v29 = v25 + v28;
    while (1)
    {
      if (v27 >= v25[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      v30 = *(v6 + 72);
      sub_257CC93D0(&v29[v30 * v27], v14, type metadata accessor for MAGOutputEvent);
      sub_257CC93D0(&v14[*(v47 + 20)], v5, type metadata accessor for MAGOutputEvent.EventType);
      swift_getEnumCaseMultiPayload();
      sub_257CC9438(v5, type metadata accessor for MAGOutputEvent.EventType);
      v31 = sub_257ED0640();

      result = sub_257CC9438(v14, type metadata accessor for MAGOutputEvent);
      if ((v31 & 1) == 0)
      {
        break;
      }

      if (v26 == ++v27)
      {
        v27 = v25[2];
        v32 = v27;
        v33 = v40;
        goto LABEL_27;
      }
    }

    v32 = v27 + 1;
    v34 = v25[2];
    v33 = v40;
    if (v34 - 1 == v27)
    {
      goto LABEL_27;
    }

    v35 = v41;
    v36 = v42 + v30 * v32;
    while (v32 < v34)
    {
      v37 = v46;
      sub_257CC93D0(v25 + v36, v46, type metadata accessor for MAGOutputEvent);
      sub_257CC93D0(v37 + *(v47 + 20), v35, type metadata accessor for MAGOutputEvent.EventType);
      swift_getEnumCaseMultiPayload();
      sub_257CC9438(v35, type metadata accessor for MAGOutputEvent.EventType);
      LOBYTE(v37) = sub_257ED0640();

      result = sub_257CC9438(v46, type metadata accessor for MAGOutputEvent);
      if (v37)
      {
        if (v32 != v27)
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          v38 = v25[2];
          if (v27 >= v38)
          {
            goto LABEL_31;
          }

          result = sub_257CC93D0(v25 + v42 + v27 * v30, v44, type metadata accessor for MAGOutputEvent);
          if (v32 >= v38)
          {
            goto LABEL_32;
          }

          sub_257CC93D0(v25 + v36, v43, type metadata accessor for MAGOutputEvent);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v33 + 40) = v25;
          if ((result & 1) == 0)
          {
            result = sub_257C7DE24(v25);
            v25 = result;
            *(v33 + 40) = result;
          }

          v35 = v41;
          if (v27 >= v25[2])
          {
            goto LABEL_33;
          }

          result = sub_257CC9498(v43, v25 + v42 + v27 * v30);
          *(v33 + 40) = v25;
          if (v32 >= v25[2])
          {
            goto LABEL_34;
          }

          result = sub_257CC9498(v44, v25 + v36);
          *(v33 + 40) = v25;
        }

        ++v27;
      }

      ++v32;
      v34 = v25[2];
      v36 += v30;
      if (v32 == v34)
      {
        if (v32 < v27)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v32 = 0;
    v33 = v40;
LABEL_27:
    sub_257CC8744(v27, v32, sub_257BFCC48, sub_257E53A34);
    swift_endAccess();
    v49 = v33;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  return result;
}

uint64_t sub_257CC0FB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6[-v2];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_getKeyPath();
  v7 = v0;
  v8 = v10;
  v9 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCED0();

  sub_257BE4084(v10, &qword_27F8F6E68);
  v4 = type metadata accessor for MAGOutputEvent(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return sub_257CC266C(v3);
}

uint64_t sub_257CC116C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_257CC1220@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

id sub_257CC12DC()
{
  v0 = sub_257CC211C();
  v1 = [v0 isSpeaking];

  return v1;
}

uint64_t sub_257CC1318()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD500();
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v6, v7, "ttsCommandDispatchQueue:request :: stop()", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  v12[3] = v1;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECD2A0();

  v9 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  result = swift_beginAccess();
  if (*(v1 + v9) == 1)
  {
    *(v1 + v9) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[-2] = v1;
    LOBYTE(v12[-1]) = 1;
    v12[2] = v1;
    sub_257ECCED0();
  }

  return result;
}

uint64_t sub_257CC15C4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257CC1684, 0, 0);
}

uint64_t sub_257CC1684()
{
  sub_257ECD500();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBC0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "ttsCommandDispatchQueue:dispatch :: stop()", v3, 2u);
    MEMORY[0x259C74820](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  sub_257ECF900();
  v0[6] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC17B8, v8, v7);
}

uint64_t sub_257CC17B8()
{

  *(v0 + 56) = sub_257CC211C();
  v3 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_257CC9E98;

  return v3();
}

uint64_t sub_257CC1890(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257CC1950, 0, 0);
}

uint64_t sub_257CC1950()
{
  sub_257ECD500();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBC0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "ttsCommandDispatchQueue:dispatch :: pause()", v3, 2u);
    MEMORY[0x259C74820](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  sub_257ECF900();
  v0[6] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC1A84, v8, v7);
}

uint64_t sub_257CC1A84()
{

  *(v0 + 56) = sub_257CC211C();
  v3 = (*MEMORY[0x277D70318] + MEMORY[0x277D70318]);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_257CC1B3C;

  return v3();
}

uint64_t sub_257CC1B3C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_257CC1C84(const char *a1)
{
  v3 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD500();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_257BAC000, v8, v9, a1, v10, 2u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  v12[1] = v3;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECD2A0();
}

uint64_t sub_257CC1E70(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257CC1F30, 0, 0);
}

uint64_t sub_257CC1F30()
{
  sub_257ECD500();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBC0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "ttsCommandDispatchQueue:dispatch :: resume()", v3, 2u);
    MEMORY[0x259C74820](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  sub_257ECF900();
  v0[6] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC2064, v8, v7);
}

uint64_t sub_257CC2064()
{

  *(v0 + 56) = sub_257CC211C();
  v3 = (*MEMORY[0x277D70330] + MEMORY[0x277D70330]);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_257CC9E98;

  return v3();
}

id sub_257CC211C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___speechSynthesizer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___speechSynthesizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___speechSynthesizer);
  }

  else
  {
    v4 = sub_257CC2180(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257CC2180(uint64_t a1)
{
  v12[1] = a1;
  v1 = sub_257ECCFB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECD050();
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v12[0] = sub_257ECD0F0();
  v7 = sub_257ECD110();
  v8 = sub_257ECD100();
  v15 = v7;
  v16 = MEMORY[0x277D70368];
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7298);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257ED6D30;
  sub_257ECD040();
  v13 = v9;
  sub_257CC8834(&qword_27F8F72A0, MEMORY[0x277D702B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72A8);
  sub_257BD2D4C(&qword_27F8F72B0, &qword_27F8F72A8);
  sub_257ED0180();
  v13 = MEMORY[0x277D84F90];
  sub_257ED0180();
  (*(v2 + 104))(v4, *MEMORY[0x277D700F8], v1);
  v10 = sub_257ECCFE0();
  MAGAudioService.audioSessionForSpeaking(shouldDuckOthers:)(0);
  sub_257ECD000();
  sub_257ECD020();
  sub_257ECD010();
  return v10;
}

uint64_t sub_257CC24B8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v5 = *a1;
  swift_beginAccess();
  return sub_257BE401C(v2 + v5, a2, &qword_27F8F6D50);
}

uint64_t sub_257CC2590@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v6 = *a2;
  swift_beginAccess();
  return sub_257BE401C(v5 + v6, a3, &qword_27F8F6D50);
}

uint64_t sub_257CC2694(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_257BE401C(v2 + v8, v7, &qword_27F8F6D50);
  LOBYTE(a2) = sub_257CC96A8(v7, a1);
  sub_257BE4084(v7, &qword_27F8F6D50);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCED0();
  }

  else
  {
    sub_257BE401C(a1, v7, &qword_27F8F6D50);
    swift_beginAccess();
    sub_257C0DA64(v7, v2 + v8, &qword_27F8F6D50);
    swift_endAccess();
  }

  return sub_257BE4084(a1, &qword_27F8F6D50);
}

uint64_t sub_257CC28A8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent;
  swift_beginAccess();
  return sub_257BE401C(v5 + v3, a1, &qword_27F8F6E68);
}

uint64_t sub_257CC2980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v4 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent;
  swift_beginAccess();
  return sub_257BE401C(v3 + v4, a2, &qword_27F8F6E68);
}

uint64_t sub_257CC2A58(uint64_t a1)
{
  sub_257BE401C(a1, v2, &qword_27F8F6E68);
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCED0();

  return sub_257BE4084(v2, &qword_27F8F6E68);
}

uint64_t sub_257CC2B60(uint64_t a1, uint64_t a2)
{
  sub_257BE401C(a2, v5, &qword_27F8F6E68);
  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent;
  swift_beginAccess();
  sub_257C0DA64(v5, a1 + v3, &qword_27F8F6E68);
  return swift_endAccess();
}

uint64_t sub_257CC2C00(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7248);
  v2[35] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7250);
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7258);
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v5 = sub_257ECD0B0();
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v6 = sub_257ECCFD0();
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();
  v7 = sub_257ECCFC0();
  v2[48] = v7;
  v2[49] = *(v7 - 8);
  v2[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7260);
  v2[51] = swift_task_alloc();
  v8 = sub_257ECD0D0();
  v2[52] = v8;
  v2[53] = *(v8 - 8);
  v2[54] = swift_task_alloc();
  v9 = type metadata accessor for MAGOutputEvent(0);
  v2[55] = v9;
  v2[56] = *(v9 - 8);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v10 = sub_257ECDA30();
  v2[63] = v10;
  v2[64] = *(v10 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  v2[71] = swift_task_alloc();
  v2[72] = sub_257ECF900();
  v2[73] = sub_257ECF8F0();
  v12 = sub_257ECF8B0();
  v2[74] = v12;
  v2[75] = v11;

  return MEMORY[0x2822009F8](sub_257CC30B8, v12, v11);
}

uint64_t sub_257CC30B8()
{
  v119 = v0;
  v1 = v0[71];
  v2 = v0[34];
  swift_getKeyPath();
  v0[28] = v2;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpokenEvent;
  swift_beginAccess();
  sub_257BE401C(v2 + v3, v1, &qword_27F8F6D50);
  MAGOutputEvent.speechContent(withPreviousEvent:)(v1, v0 + 7);
  sub_257BE4084(v1, &qword_27F8F6D50);
  if (!v0[10])
  {
    v22 = v0[58];
    v23 = v0[33];

    sub_257BE4084((v0 + 7), &qword_27F8F6E68);
    sub_257ECD500();
    sub_257CC93D0(v23, v22, type metadata accessor for MAGOutputEvent);
    v24 = sub_257ECDA20();
    v25 = sub_257ECFBD0();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[66];
    v29 = v0[63];
    v28 = v0[64];
    v30 = v0[58];
    if (v26)
    {
      v116 = v0[66];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v118[0] = v32;
      *v31 = 136315138;
      v33 = sub_257ECCCA0();
      v35 = v34;
      sub_257CC9438(v30, type metadata accessor for MAGOutputEvent);
      v36 = sub_257BF1FC8(v33, v35, v118);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_257BAC000, v24, v25, "%s: Will abort speak(). no speech content", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C74820](v32, -1, -1);
      MEMORY[0x259C74820](v31, -1, -1);

      (*(v28 + 8))(v116, v29);
    }

    else
    {

      sub_257CC9438(v30, type metadata accessor for MAGOutputEvent);
      (*(v28 + 8))(v27, v29);
    }

    goto LABEL_25;
  }

  v4 = v0 + 12;
  v5 = v0[62];
  v6 = v0[33];
  v115 = v0 + 2;
  sub_257BE40E4((v0 + 7), (v0 + 2));
  sub_257ECD500();
  sub_257CC93D0(v6, v5, type metadata accessor for MAGOutputEvent);
  v7 = sub_257ECDA20();
  v8 = sub_257ECFBD0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[70];
  v12 = v0[63];
  v11 = v0[64];
  v13 = v0[62];
  if (v9)
  {
    v111 = v0[70];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v118[0] = v15;
    *v14 = 136315138;
    v16 = sub_257ECCCA0();
    v109 = v12;
    v18 = v17;
    sub_257CC9438(v13, type metadata accessor for MAGOutputEvent);
    v19 = v16;
    v4 = v0 + 12;
    v20 = sub_257BF1FC8(v19, v18, v118);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_257BAC000, v7, v8, "%s: Will handle speak() for event", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259C74820](v15, -1, -1);
    MEMORY[0x259C74820](v14, -1, -1);

    v21 = *(v11 + 8);
    v21(v111, v109);
  }

  else
  {

    sub_257CC9438(v13, type metadata accessor for MAGOutputEvent);
    v21 = *(v11 + 8);
    v21(v10, v12);
  }

  v0[76] = v21;
  v37 = v0[34];
  swift_getKeyPath();
  v0[29] = v37;
  sub_257ECCEE0();

  v38 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent;
  swift_beginAccess();
  sub_257BE401C(v37 + v38, v4, &qword_27F8F6E68);
  v39 = v0[15];
  if (v39)
  {
    v40 = __swift_project_boxed_opaque_existential_1(v4, v0[15]);
    v41 = *(v39 - 8);
    v42 = swift_task_alloc();
    (*(v41 + 16))(v42, v40, v39);
    sub_257BE4084(v4, &qword_27F8F6E68);
    v43 = sub_257ECCF70();
    v45 = v44;
    (*(v41 + 8))(v42, v39);
  }

  else
  {
    sub_257BE4084(v4, &qword_27F8F6E68);
    v43 = 0;
    v45 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v115, v0[5]);
  v46 = sub_257ECCF70();
  v112 = v21;
  if (!v45)
  {
    goto LABEL_17;
  }

  if (v43 == v46 && v45 == v47)
  {
  }

  else
  {
    v48 = sub_257ED0640();

    if ((v48 & 1) == 0)
    {
LABEL_18:
      v50 = v0[71];
      v110 = v0[61];
      v51 = v0[56];
      v102 = v0[55];
      v103 = v0[51];
      v104 = v0[50];
      v52 = v0[49];
      v105 = v0[48];
      v106 = v0[46];
      v107 = v0[47];
      v108 = v0[45];
      v53 = v0[34];
      v113 = v0[33];
      sub_257C024BC(v115, (v0 + 17));
      swift_getKeyPath();
      v54 = swift_task_alloc();
      *(v54 + 16) = v53;
      *(v54 + 24) = v0 + 17;
      v0[30] = v53;
      sub_257ECCED0();

      sub_257BE4084((v0 + 17), &qword_27F8F6E68);
      sub_257CC93D0(v113, v50, type metadata accessor for MAGOutputEvent);
      (*(v51 + 56))(v50, 0, 1, v102);
      sub_257CC266C(v50);
      v55 = sub_257ECD060();
      (*(*(v55 - 8) + 56))(v103, 1, 1, v55);
      *(swift_task_alloc() + 16) = v115;
      (*(v52 + 104))(v104, *MEMORY[0x277D70198], v105);
      (*(v106 + 104))(v107, *MEMORY[0x277D701A0], v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7268);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_257EDBBA0;
      sub_257ECD0A0();
      sub_257ECD090();
      sub_257ECD080();
      v0[31] = v56;
      sub_257CC8834(&qword_27F8F7270, MEMORY[0x277D70340]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7278);
      sub_257BD2D4C(&qword_27F8F7280, &qword_27F8F7278);
      sub_257ED0180();
      sub_257ECD0C0();

      sub_257ECD500();
      sub_257CC93D0(v113, v110, type metadata accessor for MAGOutputEvent);
      v57 = sub_257ECDA20();
      v58 = sub_257ECFBD0();
      v59 = os_log_type_enabled(v57, v58);
      v60 = v0[69];
      v61 = v0[63];
      v62 = v0[61];
      if (v59)
      {
        v117 = v0[69];
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v118[0] = v64;
        *v63 = 136315138;
        v65 = sub_257ECCCA0();
        v67 = v66;
        sub_257CC9438(v62, type metadata accessor for MAGOutputEvent);
        v68 = sub_257BF1FC8(v65, v67, v118);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_257BAC000, v57, v58, "%s: Will begin speech synthesis", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x259C74820](v64, -1, -1);
        MEMORY[0x259C74820](v63, -1, -1);

        v69 = v117;
      }

      else
      {

        sub_257CC9438(v62, type metadata accessor for MAGOutputEvent);
        v69 = v60;
      }

      v112(v69, v61);
      v71 = v0[37];
      v70 = v0[38];
      v72 = v0[36];
      v73 = sub_257CC211C();
      sub_257ECD070();

      sub_257ECF970();
      (*(v71 + 8))(v70, v72);
      v74 = sub_257ECF8F0();
      v0[77] = v74;
      v75 = swift_task_alloc();
      v0[78] = v75;
      *v75 = v0;
      v75[1] = sub_257CC410C;
      v76 = v0[39];
      v77 = v0[35];
      v78 = MEMORY[0x277D85700];

      return MEMORY[0x2822005A8](v77, v74, v78, v76, v0 + 32);
    }
  }

  MAGOutputEvent.category.getter(v118);
  if (MAGOutputEventCategory.rawValue.getter() == 0x6544656C706F6570 && v49 == 0xEF6E6F6974636574)
  {
    goto LABEL_17;
  }

  v80 = sub_257ED0640();

  if (v80)
  {
    goto LABEL_18;
  }

  MAGOutputEvent.category.getter(v118);
  if (MAGOutputEventCategory.rawValue.getter() == 0xD000000000000013 && 0x8000000257EF74D0 == v81)
  {
    goto LABEL_17;
  }

  v82 = sub_257ED0640();

  if (v82)
  {
    goto LABEL_18;
  }

  MAGOutputEvent.category.getter(v118);
  if (MAGOutputEventCategory.rawValue.getter() == 0x746E656D75636F64 && v83 == 0xEF676E696D617246)
  {
    goto LABEL_17;
  }

  v84 = sub_257ED0640();

  if (v84)
  {
    goto LABEL_18;
  }

  MAGOutputEvent.category.getter(v118);
  if (MAGOutputEventCategory.rawValue.getter() == 0xD000000000000012 && 0x8000000257EF7520 == v85)
  {
LABEL_17:

    goto LABEL_18;
  }

  v86 = sub_257ED0640();

  if (v86)
  {
    goto LABEL_18;
  }

  v87 = v0[59];
  v88 = v0[33];

  sub_257ECD500();
  sub_257CC93D0(v88, v87, type metadata accessor for MAGOutputEvent);
  v89 = sub_257ECDA20();
  v90 = sub_257ECFBD0();
  v91 = os_log_type_enabled(v89, v90);
  v92 = v0[67];
  v93 = v0[63];
  v94 = v0[59];
  if (v91)
  {
    v114 = v0[67];
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v118[0] = v96;
    *v95 = 136315138;
    v97 = sub_257ECCCA0();
    v99 = v98;
    sub_257CC9438(v94, type metadata accessor for MAGOutputEvent);
    v100 = sub_257BF1FC8(v97, v99, v118);

    *(v95 + 4) = v100;
    _os_log_impl(&dword_257BAC000, v89, v90, "%s: Will abort speak(). Last spoken event was same as current", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x259C74820](v96, -1, -1);
    MEMORY[0x259C74820](v95, -1, -1);

    v112(v114, v93);
  }

  else
  {

    sub_257CC9438(v94, type metadata accessor for MAGOutputEvent);
    v21(v92, v93);
  }

  __swift_destroy_boxed_opaque_existential_0(v115);
LABEL_25:
  sub_257CC4AA0();

  v79 = v0[1];

  return v79();
}

uint64_t sub_257CC410C()
{
  v2 = *v1;

  v3 = *(v2 + 600);
  v4 = *(v2 + 592);
  if (v0)
  {
    v5 = sub_257CC46B0;
  }

  else
  {
    v5 = sub_257CC4234;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257CC4234()
{
  v33 = v0;
  v1 = v0[35];
  v2 = sub_257ECD030();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[60];
    v4 = v0[33];
    (*(v0[40] + 8))(v0[41], v0[39]);

    sub_257ECD500();
    sub_257CC93D0(v4, v3, type metadata accessor for MAGOutputEvent);
    v5 = sub_257ECDA20();
    v6 = sub_257ECFBD0();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[76];
    v9 = v0[68];
    v31 = v0[63];
    v10 = v0[60];
    v12 = v0[53];
    v11 = v0[54];
    v13 = v0[52];
    if (v7)
    {
      v30 = v0[52];
      v14 = swift_slowAlloc();
      v29 = v9;
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      v27 = v8;
      v28 = v11;
      v16 = sub_257ECCCA0();
      v18 = v17;
      sub_257CC9438(v10, type metadata accessor for MAGOutputEvent);
      v19 = sub_257BF1FC8(v16, v18, &v32);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_257BAC000, v5, v6, "%s: Did finish speech synthesis", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x259C74820](v15, -1, -1);
      MEMORY[0x259C74820](v14, -1, -1);

      v27(v29, v31);
      (*(v12 + 8))(v28, v30);
    }

    else
    {

      sub_257CC9438(v10, type metadata accessor for MAGOutputEvent);
      v8(v9, v31);
      (*(v12 + 8))(v11, v13);
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    sub_257CC4AA0();

    v25 = v0[1];

    return v25();
  }

  else
  {
    sub_257BE4084(v1, &qword_27F8F7248);
    v20 = sub_257ECF8F0();
    v0[77] = v20;
    v21 = swift_task_alloc();
    v0[78] = v21;
    *v21 = v0;
    v21[1] = sub_257CC410C;
    v22 = v0[39];
    v23 = v0[35];
    v24 = MEMORY[0x277D85700];

    return MEMORY[0x2822005A8](v23, v20, v24, v22, v0 + 32);
  }
}

uint64_t sub_257CC46B0()
{
  v34 = v0;
  v1 = v0[57];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = v0[33];

  (*(v3 + 8))(v2, v4);
  v6 = v0[32];
  sub_257ECD500();
  sub_257CC93D0(v5, v1, type metadata accessor for MAGOutputEvent);
  v7 = v6;
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[76];
  v12 = v0[65];
  v32 = v0[63];
  v13 = v0[57];
  v14 = v0[53];
  v15 = v0[54];
  v16 = v0[52];
  if (v10)
  {
    v31 = v0[65];
    v17 = swift_slowAlloc();
    v30 = v15;
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v17 = 136315394;
    v28 = v11;
    v29 = v16;
    v19 = sub_257ECCCA0();
    v21 = v20;
    sub_257CC9438(v13, type metadata accessor for MAGOutputEvent);
    v22 = sub_257BF1FC8(v19, v21, &v33);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v6;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_257BAC000, v8, v9, "%s: Error occurred during speech synthesis: %@", v17, 0x16u);
    sub_257BE4084(v18, &unk_27F8F5490);
    MEMORY[0x259C74820](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x259C74820](v27, -1, -1);
    MEMORY[0x259C74820](v17, -1, -1);

    v28(v31, v32);
    (*(v14 + 8))(v30, v29);
  }

  else
  {

    sub_257CC9438(v13, type metadata accessor for MAGOutputEvent);
    v11(v12, v32);
    (*(v14 + 8))(v15, v16);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  sub_257CC4AA0();

  v25 = v0[1];

  return v25();
}

uint64_t sub_257CC4AA0()
{
  MAGOutputEvent.category.getter(&v6);
  if (MAGOutputEventCategory.rawValue.getter() == 0x7061436567616D69 && v0 == 0xEC0000006E6F6974)
  {
  }

  else
  {
    v2 = sub_257ED0640();

    if ((v2 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v4 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

uint64_t sub_257CC4C5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257ECCF80();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(&v2);
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

id sub_257CC4CE8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_257CC4D5C()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___hapticEngine;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___hapticEngine);
  v3 = v2;
  if (v2 == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine_supportHaptics) == 1)
    {
      v4 = [objc_opt_self() sharedInstance];
      v14[0] = 0;
      v5 = [objc_allocWithZone(MEMORY[0x277CBF6B0]) initWithAudioSession:v4 error:v14];
      if (v5)
      {
        v3 = v5;
        v6 = v14[0];

        v14[0] = 0;
        if ([v3 startAndReturnError_])
        {
          v7 = v14[0];
LABEL_10:
          v11 = *(v0 + v1);
          *(v0 + v1) = v3;
          v12 = v3;
          sub_257CC8CC0(v11);
          goto LABEL_11;
        }

        v10 = v14[0];
        v9 = sub_257ECC9F0();

        swift_willThrow();
      }

      else
      {
        v8 = v14[0];
        v9 = sub_257ECC9F0();

        swift_willThrow();
      }
    }

    v3 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_257CC9350(v2);
  return v3;
}

void sub_257CC4EEC(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v90 = a2;
  v91 = a3;
  v107 = *MEMORY[0x277D85DE8];
  v74 = sub_257ECDA30();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v7 = sub_257CC4CE8();
  [v7 attachNode_];

  v8 = [objc_allocWithZone(MEMORY[0x277CB8468]) init];
  [v8 setBypass_];
  v9 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine;
  [*(v3 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine) attachNode_];
  v10 = [objc_allocWithZone(MEMORY[0x277CB8440]) init];
  [v10 setBypass_];
  [*(v3 + v9) attachNode_];
  v11 = [objc_allocWithZone(MEMORY[0x277CB8450]) initWithNumberOfBands_];
  [v11 setBypass_];
  [*(v3 + v9) attachNode_];
  v12 = *(v3 + v9);
  v13 = a1;
  v14 = [a1 format];
  v89 = v6;
  [v12 connect:v6 to:v8 format:v14];

  v15 = *(v3 + v9);
  v16 = [v13 format];
  v87 = v8;
  [v15 connect:v8 to:v11 format:v16];

  v17 = *(v3 + v9);
  v18 = [v13 format];
  [v17 connect:v11 to:v10 format:v18];

  v88 = v3;
  v19 = *(v3 + v9);
  v20 = [v19 mainMixerNode];
  v92 = v13;
  v21 = [v13 format];
  [v19 connect:v10 to:v20 format:v21];

  v93 = v11;
  v22 = [v11 bands];
  sub_257BD2C2C(0, &qword_27F8F7240);
  v23 = sub_257ECF810();

  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x259C72E20](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v24 = *(v23 + 32);
  }

  v25 = v24;
  v86 = v24;

  [v25 setFilterType_];
  LODWORD(v26) = 1120403456;
  [v25 setFrequency_];
  [v25 setBypass_];
  v27 = swift_allocObject();
  v28 = v88;
  swift_weakInit();
  v29 = swift_allocObject();
  v30 = v89;
  *(v29 + 16) = v27;
  *(v29 + 24) = v30;
  *&v96 = sub_257CC9198;
  *(&v96 + 1) = v29;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v95 = sub_257CC5DA8;
  *(&v95 + 1) = &block_descriptor_20;
  v31 = _Block_copy(&aBlock);
  v32 = v30;

  [v32 scheduleBuffer:v92 atTime:0 options:v90 & 1 completionCallbackType:2 completionHandler:v31];
  _Block_release(v31);
  v92 = swift_allocObject();
  *(v92 + 16) = v32;
  v90 = swift_allocObject();
  *(v90 + 16) = v32;
  v89 = swift_allocObject();
  *(v89 + 16) = v32;
  v85 = swift_allocObject();
  v33 = v87;
  *(v85 + 16) = v87;
  v84 = swift_allocObject();
  *(v84 + 16) = v33;
  v83 = swift_allocObject();
  *(v83 + 16) = v33;
  v82 = swift_allocObject();
  *(v82 + 16) = v33;
  v81 = swift_allocObject();
  *(v81 + 16) = v10;
  v80 = swift_allocObject();
  *(v80 + 16) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = v10;
  v78 = swift_allocObject();
  *(v78 + 16) = v10;
  v77 = swift_allocObject();
  *(v77 + 16) = v10;
  v76 = swift_allocObject();
  *(v76 + 16) = v10;
  v34 = v10;
  v35 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = v32;
  *&v96 = sub_257CC9288;
  *(&v96 + 1) = v36;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v95 = sub_257D231C0;
  *(&v95 + 1) = &block_descriptor_210;
  v37 = _Block_copy(&aBlock);
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v38;
  v42 = v39;
  v43 = v40;
  v44 = v41;
  v45 = v42;
  v46 = v43;
  v47 = v44;
  v48 = v45;
  v49 = v46;
  sub_257ECC3F0();

  *&aBlock = 0;
  LODWORD(v45) = [v35 catchException:v37 error:&aBlock];
  _Block_release(v37);
  if (v45)
  {
    v50 = aBlock;

    v51 = v91;
    v52 = v92;
    v53 = v90;
    v54 = v89;
  }

  else
  {
    v55 = aBlock;
    v56 = sub_257ECC9F0();

    swift_willThrow();
    v57 = v75;
    sub_257ECD440();
    v58 = v56;
    v59 = sub_257ECDA20();
    v60 = sub_257ECFBE0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      v63 = v56;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 4) = v64;
      *v62 = v64;
      _os_log_impl(&dword_257BAC000, v59, v60, "Could not play sound with audioEngine error: %@", v61, 0xCu);
      sub_257BE4084(v62, &unk_27F8F5490);
      MEMORY[0x259C74820](v62, -1, -1);
      MEMORY[0x259C74820](v61, -1, -1);
    }

    else
    {

      v47 = v59;
    }

    v65 = v74;
    v66 = v73;
    v51 = v91;
    v52 = v92;
    v53 = v90;
    v54 = v89;

    (*(v66 + 8))(v57, v65);
  }

  *&aBlock = sub_257CC91B8;
  *(&aBlock + 1) = v52;
  *&v95 = sub_257CC91C8;
  *(&v95 + 1) = v53;
  *&v96 = sub_257CC91D8;
  *(&v96 + 1) = v54;
  *&v97 = sub_257CC91E8;
  *(&v97 + 1) = v85;
  *&v98 = sub_257CC91F8;
  *(&v98 + 1) = v84;
  *&v99 = sub_257CC9208;
  *(&v99 + 1) = v83;
  *&v100 = sub_257CC9218;
  *(&v100 + 1) = v82;
  *&v101 = sub_257CC9228;
  *(&v101 + 1) = v81;
  *&v102 = sub_257CC9238;
  *(&v102 + 1) = v80;
  *&v103 = sub_257CC9248;
  *(&v103 + 1) = v79;
  *&v104 = sub_257CC9258;
  *(&v104 + 1) = v78;
  *&v105 = sub_257CC9268;
  *(&v105 + 1) = v77;
  *&v106 = sub_257CC9278;
  *(&v106 + 1) = v76;
  CGSizeMake(&aBlock);
  v67 = v105;
  v51[10] = v104;
  v51[11] = v67;
  v51[12] = v106;
  v68 = v101;
  v51[6] = v100;
  v51[7] = v68;
  v69 = v103;
  v51[8] = v102;
  v51[9] = v69;
  v70 = v97;
  v51[2] = v96;
  v51[3] = v70;
  v71 = v99;
  v51[4] = v98;
  v51[5] = v71;
  v72 = v95;
  *v51 = aBlock;
  v51[1] = v72;
}

uint64_t sub_257CC5B1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_257ECF930();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a3;
    v11 = a3;
    sub_257C3FBD4(0, 0, v6, &unk_257EE0958, v10);
  }

  return result;
}

uint64_t sub_257CC5C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_257CC5C70, 0, 0);
}

uint64_t sub_257CC5C70()
{
  sub_257ECF900();
  *(v0 + 32) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257CC5D04, v2, v1);
}

uint64_t sub_257CC5D04()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_257CC4CE8();
  [v3 disconnectNodeOutput_];

  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine) detachNode_];
  v4 = v0[1];

  return v4();
}

uint64_t sub_257CC5DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v3(a2);
}

id sub_257CC5DFC(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257CC4CE8();
  v10[0] = 0;
  v5 = [v4 startAndReturnError_];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    v8 = sub_257ECC9F0();

    swift_willThrow();
  }

  result = [*(a1 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___audioEngine) isRunning];
  if (result)
  {
    return [a2 play];
  }

  return result;
}

void *sub_257CC5EEC(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_257CC4D5C();
  if (result)
  {
    v19[0] = 0;
    v7 = result;
    v8 = [result createPlayerWithPattern:a1 error:v19];

    v9 = v19[0];
    if (v8)
    {
      v19[0] = 0;
      v10 = v9;
      if ([v8 startAtTime:v19 error:0.0])
      {
        v11 = v19[0];
        return swift_unknownObjectRelease();
      }

      v14 = v19[0];
      v13 = sub_257ECC9F0();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = v19[0];
      v13 = sub_257ECC9F0();

      swift_willThrow();
    }

    sub_257ECD500();
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBE0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257BAC000, v15, v16, "Magnifier could not create haptic player", v17, 2u);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_257CC6150()
{
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  swift_beginAccess();
}

uint64_t sub_257CC6208@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_257CC62D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_257CC6340(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  swift_getKeyPath();
  sub_257ECCF00();

  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary;
  swift_beginAccess();
  sub_257CB9D58(0, 1, v2);
  swift_endAccess();
  swift_getKeyPath();
  sub_257ECCEF0();

  swift_getKeyPath();
  sub_257ECCEE0();

  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(v4 + 56) + ((v10 << 10) | (16 * v12)));
      v14 = v13[1];
      if (v14)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v24 = *v13;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB3C(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_257BFCB3C((v16 > 1), v17 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v17 + 1;
    v18 = v11 + 16 * v17;
    *(v18 + 32) = v24;
    *(v18 + 40) = v14;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v15);
    ++v10;
    if (v7)
    {
      v10 = v15;
      goto LABEL_4;
    }
  }

  if (*(v11 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
    sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
    v19 = sub_257ECF420();
    v21 = v20;

    v22 = v19;
    v23 = v21;
  }

  else
  {

    v22 = 0;
    v23 = 0xE000000000000000;
  }

  return sub_257CBAD6C(v22, v23);
}

uint64_t sub_257CC6694()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MAGOutputEvent.displayContent.getter();
  v6 = v5;
  MAGOutputEvent.category.getter(&v67);
  v7 = v67;
  if (v6 && (!v4 && v6 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0))
  {

    swift_getKeyPath();
    v67 = v0;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v67 = v0;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, v7);
    swift_endAccess();
    v67 = v0;
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    v67 = v0;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v67 = v0;
    swift_getKeyPath();
    sub_257ECCF00();

    v8 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *&v0[v8];
    *&v0[v8] = 0x8000000000000000;
    sub_257EC6B40(v4, v6, v7, isUniquelyReferenced_nonNull_native);
    *&v0[v8] = v66;
    swift_endAccess();
    v67 = v0;
    swift_getKeyPath();
  }

  sub_257ECCEF0();

  LOBYTE(v67) = v7;
  if (MAGOutputEventCategory.rawValue.getter() == 0x646E41746E696F70 && v10 == 0xED00006B61657053)
  {

    v11 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
    v12 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
  }

  else
  {
    v13 = sub_257ED0640();

    v11 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
    v12 = &OBJC_IVAR____TtC16MagnifierSupport35DetectionModeSettingsViewController____lazy_storage___doorDetectionSettingsViewController;
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  v67 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v14 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary;
  swift_beginAccess();
  if (*(*&v0[v14] + 16))
  {

    sub_257C03FE4(6);
    v16 = v15;

    if (v16)
    {
      swift_getKeyPath();
      v67 = v0;
      sub_257ECCEE0();

      v67 = v0;
      swift_getKeyPath();
      sub_257ECCF00();

      swift_beginAccess();
      sub_257CB9D58(0, 1, 6);
      swift_endAccess();
      v67 = v0;
      swift_getKeyPath();
      sub_257ECCEF0();
LABEL_21:

      goto LABEL_22;
    }
  }

LABEL_14:
  LOBYTE(v67) = v7;
  if (MAGOutputEventCategory.rawValue.getter() == 0x6574654474786574 && v17 == 0xED00006E6F697463)
  {
  }

  else
  {
    v18 = sub_257ED0640();

    if ((v18 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  swift_getKeyPath();
  v67 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v19 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__eventTextDictionary;
  swift_beginAccess();
  if (*(*&v0[v19] + 16))
  {

    sub_257C03FE4(5);
    v21 = v20;

    if (v21)
    {
      swift_getKeyPath();
      v67 = v0;
      sub_257ECCEE0();

      v67 = v0;
      swift_getKeyPath();
      sub_257ECCF00();

      swift_beginAccess();
      sub_257CB9D58(0, 1, 5);
      swift_endAccess();
      v67 = v0;
      swift_getKeyPath();
      sub_257ECCEF0();
      goto LABEL_21;
    }
  }

LABEL_22:
  if (qword_281544FE0 != -1)
  {
LABEL_69:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v67 != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v67 & 1) == 0))
  {
    swift_getKeyPath();
    v67 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v67 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 1);
    swift_endAccess();
    v67 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v67 != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v67 & 1) == 0))
  {
    swift_getKeyPath();
    v67 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v67 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 2);
    swift_endAccess();
    v67 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v67 != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v67 & 1) == 0))
  {
    swift_getKeyPath();
    v67 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v67 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 4);
    swift_endAccess();
    v67 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v67 != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v67 & 1) == 0))
  {
    swift_getKeyPath();
    v67 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v67 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 5);
    swift_endAccess();
    v67 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v67 != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v67 & 1) == 0))
  {
    swift_getKeyPath();
    v67 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v67 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 6);
    swift_endAccess();
    v67 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v67 != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v67 & 1) == 0))
  {
    swift_getKeyPath();
    v67 = v1;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    v67 = v1;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, 3);
    swift_endAccess();
    v67 = v1;
    swift_getKeyPath();
    sub_257ECCEF0();
  }

  swift_getKeyPath();
  v12 = v12[63];
  v67 = v1;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v22 = v11[61];
  swift_beginAccess();
  v23 = *&v1[v22];
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v11 = ((v24 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  if (!v26)
  {
    goto LABEL_46;
  }

  do
  {
LABEL_44:
    while (1)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v30 = (*(v23 + 56) + ((v27 << 10) | (16 * v29)));
      v31 = v30[1];
      if (v31)
      {
        break;
      }

      if (!v26)
      {
        goto LABEL_46;
      }
    }

    v58 = *v30;

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v12;
    if ((v33 & 1) == 0)
    {
      v28 = sub_257BFCB3C(0, *(v28 + 2) + 1, 1, v28);
    }

    v35 = *(v28 + 2);
    v34 = *(v28 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v57 = v35 + 1;
      v38 = sub_257BFCB3C((v34 > 1), v35 + 1, 1, v28);
      v36 = v57;
      v28 = v38;
    }

    *(v28 + 2) = v36;
    v37 = &v28[16 * v35];
    *(v37 + 4) = v58;
    *(v37 + 5) = v31;
    v12 = v59;
  }

  while (v26);
  while (1)
  {
LABEL_46:
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v32 >= v11)
    {
      break;
    }

    v26 = *(v23 + 64 + 8 * v32);
    ++v27;
    if (v26)
    {
      v27 = v32;
      goto LABEL_44;
    }
  }

  if (*(v28 + 2))
  {
    v66 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
    sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
    v39 = sub_257ECF420();
    v41 = v40;

    v42 = v39;
    v43 = v41;
  }

  else
  {

    v42 = 0;
    v43 = 0xE000000000000000;
  }

  sub_257CBAD6C(v42, v43);
  result = _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
  if (result)
  {
    v45 = qword_281548358;
    swift_getKeyPath();
    v66 = v1;
    sub_257ECCEE0();

    v46 = *&v1[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineTextAnnouncement];
    v47 = *&v1[OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__outputEngineTextAnnouncement + 8];
    v48 = v45 + 48;
    swift_beginAccess();
    v63 = *(v45 + 48);
    v64 = *(v45 + 56);
    v49 = qword_2815447E0;

    if (v49 != -1)
    {
      v50 = swift_once();
    }

    MEMORY[0x28223BE20](v50);
    *(&v57 - 2) = &v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
    sub_257ECFD50();
    v51 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_257BFCB3C(0, *(v51 + 2) + 1, 1, v51);
    }

    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_257BFCB3C((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[16 * v53];
    *(v54 + 4) = v46;
    *(v54 + 5) = v47;
    v63 = v51;
    v55 = v60;
    v56 = sub_257ECF110();
    MEMORY[0x28223BE20](v56);
    *(&v57 - 2) = &v63;
    *(&v57 - 1) = v48;
    sub_257ECFD40();
    (*(v61 + 8))(v55, v62);

    return swift_endAccess();
  }

  return result;
}

uint64_t sub_257CC7BF8()
{
  v1 = v0;
  v2 = MAGOutputEvent.displayContent.getter();
  v4 = v3;
  MAGOutputEvent.category.getter(v19);
  v5 = v19[0];
  if (v4 && (!v2 && v4 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0))
  {

    swift_getKeyPath();
    *v19 = v0;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    *v19 = v0;
    swift_getKeyPath();
    sub_257ECCF00();

    swift_beginAccess();
    sub_257CB9D58(0, 1, v5);
    swift_endAccess();
    *v19 = v0;
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    *v19 = v0;
    sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
    sub_257ECCEE0();

    *v19 = v0;
    swift_getKeyPath();
    sub_257ECCF00();

    v6 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__advancedEventTextDictionary;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + v6);
    *(v0 + v6) = 0x8000000000000000;
    sub_257EC6B40(v2, v4, v5, isUniquelyReferenced_nonNull_native);
    *(v0 + v6) = v18;
    swift_endAccess();
    *v19 = v0;
    swift_getKeyPath();
  }

  sub_257ECCEF0();

  swift_getKeyPath();
  *v19 = v0;
  sub_257CC8834(&qword_27F8F7208, type metadata accessor for MAGOutputEngine);
  sub_257ECCEE0();

  v8 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__advancedEventTextDictionary;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v10 = sub_257C03FE4(7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_12;
  }

  v12 = (*(v9 + 56) + 16 * v10);
  v14 = *v12;
  v13 = v12[1];

  if (!v13)
  {
LABEL_12:
    v16 = 0;
    v15 = 0xE000000000000000;
    return sub_257CBAD94(v16, v15);
  }

  v15 = v13;
  v16 = v14;
  return sub_257CBAD94(v16, v15);
}

uint64_t MAGOutputEngine.deinit()
{

  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__previousEvent, &qword_27F8F6D50);
  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__currentEvent, &qword_27F8F6D50);

  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpokenEvent, &qword_27F8F6D50);
  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__lastSpeechContent, &qword_27F8F6E68);

  sub_257CC8CC0(*(v0 + OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine____lazy_storage___hapticEngine));

  v1 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine___observationRegistrar;
  v2 = sub_257ECCF20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MAGOutputEngine.__deallocating_deinit()
{
  MAGOutputEngine.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_257CC81B0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for MAGOutputEvent(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

id sub_257CC829C(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECCAE0();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_257ECCB70();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_257ECC9F0();

    swift_willThrow();
    v11 = sub_257ECCB70();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_257CC83E8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for MAGOutputEvent(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_257CC81B0(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_257CC93D0(v23 + v24 * v19, v39, type metadata accessor for MAGOutputEvent);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_257CC9438(v25, type metadata accessor for MAGOutputEvent);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_257CC93D0(v23 + v24 * v43, v36, type metadata accessor for MAGOutputEvent);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_257CC93D0(v23 + v42, v37, type metadata accessor for MAGOutputEvent);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_257C7DE24(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_257CC9498(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_257CC9498(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_257CC8744(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_257CC8834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257CC88E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CC894C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257CBD6E0();
}

uint64_t sub_257CC8A10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257C167C4;

  return sub_257CBD46C(v0);
}

uint64_t sub_257CC8ADC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257C167C4;

  return sub_257CC15C4(v0);
}

uint64_t sub_257CC8B6C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257BE3DE0;

  return sub_257CC1890(v0);
}

uint64_t sub_257CC8BFC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_257C167C4;

  return sub_257CC1E70(v0);
}

void sub_257CC8CC0(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_257CC8CD8()
{
  sub_257CC9030();
  if (v0 <= 0x3F)
  {
    sub_257ECCF20();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_257CC9030()
{
  if (!qword_27F8F7220)
  {
    type metadata accessor for MAGOutputEvent(255);
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7220);
    }
  }
}

uint64_t sub_257CC90A8()
{
  result = type metadata accessor for MAGOutputEvent(319);
  if (v1 <= 0x3F)
  {
    result = sub_257CC9120();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257CC9120()
{
  result = qword_27F8F7238;
  if (!qword_27F8F7238)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F8F7238);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257CC9290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257CC5C50(a1, v4, v5, v7, v6);
}

id sub_257CC9350(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t keypath_set_155Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_257CC93D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257CC9438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257CC9498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CC9514()
{
  v2 = *(type metadata accessor for MAGOutputEvent(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_257C167C4;

  return sub_257CBF684(v0 + v3, v4);
}

uint64_t sub_257CC9618()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257C167C4;

  return sub_257CBFE7C();
}

uint64_t sub_257CC96A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEvent(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7290);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_257BE401C(a1, &v22 - v13, &qword_27F8F6D50);
  sub_257BE401C(a2, &v14[v15], &qword_27F8F6D50);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_257BE4084(v14, &qword_27F8F6D50);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_257BE4084(v14, &qword_27F8F7290);
    v17 = 1;
    return v17 & 1;
  }

  sub_257BE401C(v14, v10, &qword_27F8F6D50);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_257CC9438(v10, type metadata accessor for MAGOutputEvent);
    goto LABEL_6;
  }

  sub_257CC88E8(&v14[v15], v7);
  if ((sub_257ECCCC0() & 1) != 0 && (_s16MagnifierSupport14MAGOutputEventV0D4TypeO2eeoiySbAE_AEtFZ_0(&v10[v4[5]], &v7[v4[5]]) & 1) != 0 && v10[v4[6]] == v7[v4[6]])
  {
    v18 = v4[7];
    v19 = v10[v18];
    v20 = v7[v18];
    sub_257CC9438(v7, type metadata accessor for MAGOutputEvent);
    v17 = v19 ^ v20;
  }

  else
  {
    sub_257CC9438(v7, type metadata accessor for MAGOutputEvent);
    v17 = 1;
  }

  sub_257CC9438(v10, type metadata accessor for MAGOutputEvent);
  sub_257BE4084(v14, &qword_27F8F6D50);
  return v17 & 1;
}

id sub_257CC99DC(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = sub_257ECCB70();
  MEMORY[0x28223BE20](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  v7 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v8 = sub_257CC829C(v5);
  if (!v1)
  {
    v9 = v8;
    v10 = [v8 processingFormat];
    v11 = [v9 length];
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v11))
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v10 frameCapacity:v11];

      if (v7)
      {
        v16[0] = 0;
        if ([v9 readIntoBuffer:v7 error:v16])
        {
          v12 = v16[0];

          return v7;
        }

        v14 = v16[0];
        sub_257ECC9F0();

        swift_willThrow();
        v9 = v7;
      }

      else
      {
        sub_257BEBEF0();
        swift_allocError();
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = 0;
        *(v13 + 24) = 4;
        swift_willThrow();
      }

      return v7;
    }

    __break(1u);
  }

  return v7;
}

uint64_t objectdestroy_164Tm()
{

  return swift_deallocObject();
}

uint64_t sub_257CC9C98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16MagnifierSupport15MAGOutputEngine__isElligbleForNewEvent;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_257CC9D3C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  sub_257ECC3F0();
}

uint64_t sub_257CC9D78()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  sub_257ECC3F0();
}

uint64_t sub_257CC9DD4(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

MagnifierSupport::MFAutomationNotification_optional __swiftcall MFAutomationNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

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

unint64_t MFAutomationNotification.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000026;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

uint64_t sub_257CC9F60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = 0xD00000000000002BLL;
  }

  if (v2)
  {
    v4 = "nce";
  }

  else
  {
    v4 = "erModeNextReaderBlockSpoken";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000026;
  }

  else
  {
    v6 = 0xD00000000000002BLL;
  }

  if (*a2)
  {
    v7 = "erModeNextReaderBlockSpoken";
  }

  else
  {
    v7 = "nce";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_257ED0640();
  }

  return v9 & 1;
}

unint64_t sub_257CCA010()
{
  result = qword_27F8F72B8;
  if (!qword_27F8F72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F72B8);
  }

  return result;
}

uint64_t sub_257CCA064()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257CCA0E4()
{
  sub_257ECF5D0();
}

uint64_t sub_257CCA150()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257CCA1CC@<X0>(char *a1@<X8>)
{
  v2 = sub_257ED04B0();

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

void sub_257CCA22C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v1)
  {
    v3 = "erModeNextReaderBlockSpoken";
  }

  else
  {
    v3 = "nce";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_257CCA2A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72C0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72C8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  if (AXDeviceSupportsAccessibilityReader())
  {
    sub_257BBD7E4(v1[6]);
    sub_257ECD740();
    v9 = v1[1];
    sub_257ECD8F0();
    sub_257CCA98C(&qword_27F8F7328, MEMORY[0x277CE7230]);
    v10 = v1;
    v11 = sub_257ECDCE0();
    v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72E8) + 36)];
    *v12 = v11;
    v12[1] = v9;
    v13 = v10[5];
    sub_257ECD950();
    sub_257CCA98C(&qword_27F8F7330, MEMORY[0x277CE73F8]);
    v14 = v9;
    v15 = sub_257ECDCE0();
    v16 = &v8[*(v6 + 36)];
    *v16 = v15;
    v16[1] = v13;
    sub_257CCA9D4(v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72D0);
    sub_257CCA6C8();
    sub_257CCA840();
    sub_257ECE6F0();
    return sub_257CCAA44(v8);
  }

  else
  {
    v18 = v1[6];
    v39 = v1[7];
    v40 = v18;
    sub_257BBD7E4(v18);
    type metadata accessor for MFReaderBlockManager();
    sub_257CCA98C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
    v41 = v6;
    v19 = sub_257ECE330();
    v37 = v3;
    v20 = v19;
    v34 = v21;
    v44 = 0;
    sub_257ECEE50();
    v36 = v42;
    v35 = v43;
    v44 = 1;
    sub_257ECEE50();
    v38 = a1;
    v22 = v42;
    v23 = v43;
    v44 = 1;
    sub_257ECEE50();
    v24 = v42;
    v25 = v43;
    v42 = 0;
    v44 = 0;
    v26 = v1[3];
    v27 = sub_257ECDCE0();
    v28 = v42;
    v29 = v44;
    v30 = v34;
    *v5 = v20;
    *(v5 + 1) = v30;
    *(v5 + 2) = sub_257C337B4;
    *(v5 + 3) = 0;
    v5[32] = v28;
    *(v5 + 5) = sub_257C337EC;
    *(v5 + 6) = 0;
    v5[56] = v29;
    v31 = v39;
    *(v5 + 8) = v40;
    *(v5 + 9) = v31;
    v5[80] = v36;
    *(v5 + 11) = v35;
    v5[96] = v22;
    *(v5 + 13) = v23;
    v5[112] = v24;
    *(v5 + 15) = v25;
    *(v5 + 16) = v27;
    *(v5 + 17) = v26;
    swift_storeEnumTagMultiPayload();
    v32 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72D0);
    sub_257CCA6C8();
    sub_257CCA840();
    return sub_257ECE6F0();
  }
}

unint64_t sub_257CCA6C8()
{
  result = qword_27F8F72D8;
  if (!qword_27F8F72D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F72C8);
    sub_257CCA76C();
    sub_257CCA938(&qword_27F8F7308, &qword_27F8F7310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F72D8);
  }

  return result;
}

unint64_t sub_257CCA76C()
{
  result = qword_27F8F72E0;
  if (!qword_27F8F72E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F72E8);
    sub_257CCA98C(&qword_27F8F72F0, MEMORY[0x277CE7468]);
    sub_257CCA938(&qword_27F8F72F8, &qword_27F8F7300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F72E0);
  }

  return result;
}

unint64_t sub_257CCA840()
{
  result = qword_27F8F7318;
  if (!qword_27F8F7318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F72D0);
    sub_257CCA8E4();
    sub_257CCA938(&qword_27F8F6120, &qword_27F8F6128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7318);
  }

  return result;
}

unint64_t sub_257CCA8E4()
{
  result = qword_27F8F7320;
  if (!qword_27F8F7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7320);
  }

  return result;
}

uint64_t sub_257CCA938(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257CCA98C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257CCA9D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CCAA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F72C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257CCAAAC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = 1;
  v8 = objc_allocWithZone(type metadata accessor for MFReaderBlockManager());
  v9 = sub_257CD4C68(0, &v21);
  sub_257ECD950();
  swift_allocObject();
  sub_257ECD940();
  sub_257ECD8F0();
  sub_257CCA98C(&qword_27F8F7328, MEMORY[0x277CE7230]);
  v10 = a1;
  v11 = sub_257ECE150();
  v13 = v12;
  sub_257CCA98C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  v14 = v9;
  v15 = sub_257ECE150();
  v17 = v16;
  sub_257CCA98C(&qword_27F8F7330, MEMORY[0x277CE73F8]);
  v18 = sub_257ECE150();
  v20 = v19;

  *a4 = v11;
  a4[1] = v13;
  a4[2] = v15;
  a4[3] = v17;
  a4[4] = v18;
  a4[5] = v20;
  a4[6] = a2;
  a4[7] = a3;
}

void sub_257CCAC60(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a3;
  v7 = sub_257ECD900();
  MEMORY[0x28223BE20](v7);
  (*(v9 + 104))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE7240]);
  v10 = objc_allocWithZone(sub_257ECD8F0());
  v11 = sub_257ECD8D0();
  sub_257ECD950();
  swift_allocObject();
  sub_257ECD940();
  sub_257CCA98C(&qword_27F8F7328, MEMORY[0x277CE7230]);
  v12 = v11;
  v13 = sub_257ECE150();
  v15 = v14;
  type metadata accessor for MFReaderBlockManager();
  sub_257CCA98C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  v16 = a1;
  v17 = sub_257ECE150();
  v19 = v18;
  sub_257CCA98C(&qword_27F8F7330, MEMORY[0x277CE73F8]);
  v20 = sub_257ECE150();
  v22 = v21;

  *a4 = v13;
  a4[1] = v15;
  a4[2] = v17;
  a4[3] = v19;
  a4[4] = v20;
  a4[5] = v22;
  v23 = v25;
  a4[6] = a2;
  a4[7] = v23;
}

unint64_t sub_257CCAEC0()
{
  result = qword_27F8F7338;
  if (!qword_27F8F7338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7340);
    sub_257CCA6C8();
    sub_257CCA840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7338);
  }

  return result;
}

MagnifierSupport::DetectedTextAndLanguage __swiftcall DetectedTextAndLanguage.init(text:locale:)(Swift::String text, Swift::String locale)
{
  *v2 = text;
  v2[1] = locale;
  result.locale = locale;
  result.text = text;
  return result;
}

int *DetectedTextBlock.init(stringLocaleMap:normalizedBbox:confidence:detectLanguages:outputRegion:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  sub_257ECCCE0();
  result = type metadata accessor for DetectedTextBlock();
  v19 = result[9];
  *(a4 + result[5]) = a1;
  v20 = (a4 + result[6]);
  *v20 = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  *(a4 + result[7]) = a9;
  *(a4 + result[8]) = a2;
  *(a4 + v19) = a3;
  return result;
}

uint64_t type metadata accessor for DetectedTextBlock()
{
  result = qword_27F8F7370;
  if (!qword_27F8F7370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257CCB040(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_257ED0360();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C72E20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_257ED0210();
    sub_257ED0360();
  }

  return v8;
}

uint64_t sub_257CCB1A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v244 = a2;
  v241 = a3;
  v3 = *(a1 + 16);
  v243 = v3;
  v240 = a1;
  if (v3)
  {
    v4 = a1 + 32;
    v5 = MEMORY[0x277D84F90];
    v6 = a1 + 32;
    while (1)
    {
      sub_257C024BC(v6, &v248);
      v7 = v249;
      v8 = v250;
      __swift_project_boxed_opaque_existential_1(&v248, v249);
      v9 = (*(v8 + 40))(v7, v8);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [objc_opt_self() currentDevice];
      v17 = [v16 orientation];

      if (v17 == 3 || v17 == 4)
      {
        v9 = CGSizeMake(v18);
        v20 = v19;
        v13 = v21;
        v15 = v22;
        if ((v244 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (1.0 - v11 - v15 > 0.0)
        {
          v20 = 1.0 - v11 - v15;
        }

        else
        {
          v20 = 0.0;
        }

        if ((v244 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v9 = v9 + -0.025;
      v20 = v20 + -0.025;
      v13 = (v13 + 0.05) * 1.05;
      v15 = (v15 + 0.05) * 1.05;
LABEL_7:
      v255.origin.x = v9;
      v255.origin.y = v20;
      v255.size.width = v13;
      v255.size.height = v15;
      if (CGRectGetMinX(v255) >= 0.0 && (v256.origin.x = v9, v256.origin.y = v20, v256.size.width = v13, v256.size.height = v15, CGRectGetMinY(v256) >= 0.0) && (v257.origin.x = v9, v257.origin.y = v20, v257.size.width = v13, v257.size.height = v15, CGRectGetMaxX(v257) <= 1.0) && (v258.origin.x = v9, v258.origin.y = v20, v258.size.width = v13, v258.size.height = v15, CGRectGetMaxY(v258) <= 1.0))
      {
        sub_257BE40E4(&v248, v245);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v251[0] = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_257BF2824(0, *(v5 + 16) + 1, 1);
          v5 = v251[0];
        }

        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_257BF2824((v24 > 1), v25 + 1, 1);
        }

        v26 = v246;
        v27 = v247;
        v28 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
        MEMORY[0x28223BE20](v28);
        v30 = &v230[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v31 + 16))(v30);
        sub_257CCE078(v25, v30, v251, v26, v27);
        __swift_destroy_boxed_opaque_existential_0(v245);
        v5 = v251[0];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v248);
      }

      v6 += 40;
      if (!--v3)
      {
        v32 = *(v5 + 16);

        if (v32)
        {
          v33 = v243;
          if (v243 == v32)
          {
            v239 = 0;
            v34 = 1;
            v35 = &v254;
          }

          else
          {
            v34 = v243 * 0.75 <= v32;
            LODWORD(v242) = v34;
            v35 = &v253 + 4;
          }

          *(v35 - 64) = v34;
          v41 = v33;
        }

        else
        {
          LODWORD(v242) = 0;
          v239 = 0;
          v41 = v243;
        }

        v42 = MEMORY[0x277D84F90];
        v43 = v4;
        do
        {
          sub_257C024BC(v43, &v248);
          v44 = v249;
          v45 = v250;
          __swift_project_boxed_opaque_existential_1(&v248, v249);
          (*(v45 + 40))(v44, v45);
          sub_257E5B51C();
          x = v259.origin.x;
          y = v259.origin.y;
          width = v259.size.width;
          height = v259.size.height;
          if ((CGRectGetMinX(v259) >= 0.0 || (v260.origin.x = x, v260.origin.y = y, v260.size.width = width, v260.size.height = height, CGRectGetMaxX(v260) < 0.75) || (v261.origin.x = x, v261.origin.y = y, v261.size.width = width, v261.size.height = height, CGRectGetMaxX(v261) > 1.0)) && ((v262.origin.x = x, v262.origin.y = y, v262.size.width = width, v262.size.height = height, CGRectGetMinX(v262) < 0.0) || (v263.origin.x = x, v263.origin.y = y, v263.size.width = width, v263.size.height = height, CGRectGetMinX(v263) > 0.25) || (v264.origin.x = x, v264.origin.y = y, v264.size.width = width, v264.size.height = height, CGRectGetMaxX(v264) <= 1.0)) && ((v265.origin.x = x, v265.origin.y = y, v265.size.width = width, v265.size.height = height, CGRectGetMinY(v265) >= 0.0) || (v266.origin.x = x, v266.origin.y = y, v266.size.width = width, v266.size.height = height, CGRectGetMaxY(v266) < 0.75) || (v267.origin.x = x, v267.origin.y = y, v267.size.width = width, v267.size.height = height, CGRectGetMaxY(v267) > 1.0)) && ((v268.origin.x = x, v268.origin.y = y, v268.size.width = width, v268.size.height = height, CGRectGetMinY(v268) < 0.0) || (v269.origin.x = x, v269.origin.y = y, v269.size.width = width, v269.size.height = height, CGRectGetMinY(v269) > 0.25) || (v270.origin.x = x, v270.origin.y = y, v270.size.width = width, v270.size.height = height, CGRectGetMaxY(v270) <= 1.0)))
          {
            __swift_destroy_boxed_opaque_existential_0(&v248);
          }

          else
          {
            sub_257BE40E4(&v248, v245);
            v50 = swift_isUniquelyReferenced_nonNull_native();
            v251[0] = v42;
            if ((v50 & 1) == 0)
            {
              sub_257BF2824(0, *(v42 + 16) + 1, 1);
              v42 = v251[0];
            }

            v52 = *(v42 + 16);
            v51 = *(v42 + 24);
            if (v52 >= v51 >> 1)
            {
              sub_257BF2824((v51 > 1), v52 + 1, 1);
            }

            v53 = v246;
            v54 = v247;
            v55 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
            MEMORY[0x28223BE20](v55);
            v57 = &v230[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v58 + 16))(v57);
            sub_257CCE078(v52, v57, v251, v53, v54);
            __swift_destroy_boxed_opaque_existential_0(v245);
            v42 = v251[0];
          }

          v43 += 40;
          --v41;
        }

        while (v41);
        v59 = *(v42 + 16);

        if (v242)
        {
LABEL_54:
          v60 = 1;
          goto LABEL_147;
        }

        v236 = v59;
        v61 = MEMORY[0x277D84F90];
        v62 = v243;
        while (2)
        {
          sub_257C024BC(v4, &v248);
          v63 = v249;
          v64 = v250;
          __swift_project_boxed_opaque_existential_1(&v248, v249);
          v65 = (*(v64 + 40))(v63, v64);
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v72 = [objc_opt_self() currentDevice];
          v73 = [v72 orientation];

          if (v73 == 3 || v73 == 4)
          {
            v65 = CGSizeMake(v74);
            v76 = v75;
            v69 = v77;
            v71 = v78;
            if (v244)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (1.0 - v67 - v71 > 0.0)
            {
              v76 = 1.0 - v67 - v71;
            }

            else
            {
              v76 = 0.0;
            }

            if (v244)
            {
LABEL_61:
              v65 = v65 + -0.025;
              v76 = v76 + -0.025;
              v69 = (v69 + 0.05) * 1.05;
              v71 = (v71 + 0.05) * 1.05;
            }
          }

          v271.origin.x = v65;
          v271.origin.y = v76;
          v271.size.width = v69;
          v271.size.height = v71;
          if (CGRectGetMinY(v271) >= 0.0 && (v272.origin.x = v65, v272.origin.y = v76, v272.size.width = v69, v272.size.height = v71, CGRectGetMaxY(v272) >= 0.3))
          {
            result = __swift_destroy_boxed_opaque_existential_0(&v248);
          }

          else
          {
            sub_257BE40E4(&v248, v245);
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v251[0] = v61;
            if ((v79 & 1) == 0)
            {
              sub_257BF2824(0, *(v61 + 16) + 1, 1);
              v61 = v251[0];
            }

            v81 = *(v61 + 16);
            v80 = *(v61 + 24);
            if (v81 >= v80 >> 1)
            {
              sub_257BF2824((v80 > 1), v81 + 1, 1);
            }

            v82 = v246;
            v83 = v247;
            v84 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
            MEMORY[0x28223BE20](v84);
            v86 = &v230[-((v85 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v87 + 16))(v86);
            sub_257CCE078(v81, v86, v251, v82, v83);
            result = __swift_destroy_boxed_opaque_existential_0(v245);
            v61 = v251[0];
          }

          v4 += 40;
          if (!--v62)
          {
            goto LABEL_76;
          }

          continue;
        }
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
  v37 = *(MEMORY[0x277D84F90] + 16);

  if (v37)
  {
    v38 = v37;
    v39 = *(v36 + 16);

    if (v243 * 0.75 <= v38)
    {
      goto LABEL_54;
    }

    v236 = v39;
  }

  else
  {
    v236 = *(v36 + 16);
  }

  v239 = 0;
  v61 = MEMORY[0x277D84F90];
LABEL_76:
  v88 = *(v61 + 16);
  if (!v88)
  {

    v233 = 0;
    v127 = 0;
    v237 = 0;
LABEL_104:
    v129 = &v253;
    goto LABEL_106;
  }

  v89 = 0;
  v90 = v61 + 32;
  v91 = MEMORY[0x277D84F90];
  v92 = v61 + 32;
  do
  {
    if (v89 >= *(v61 + 16))
    {
      __break(1u);
      goto LABEL_218;
    }

    sub_257C024BC(v92, &v248);
    v93 = v249;
    v94 = v250;
    __swift_project_boxed_opaque_existential_1(&v248, v249);
    (*(v94 + 40))(v93, v94);
    sub_257E5B51C();
    v95 = v273.origin.x;
    v96 = v273.origin.y;
    v97 = v273.size.width;
    v98 = v273.size.height;
    if (CGRectGetMinX(v273) >= 0.0 && (v274.origin.x = v95, v274.origin.y = v96, v274.size.width = v97, v274.size.height = v98, CGRectGetMaxX(v274) >= 0.3))
    {
      result = __swift_destroy_boxed_opaque_existential_0(&v248);
    }

    else
    {
      sub_257BE40E4(&v248, v245);
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v251[0] = v91;
      if ((v99 & 1) == 0)
      {
        sub_257BF2824(0, *(v91 + 16) + 1, 1);
        v91 = v251[0];
      }

      v101 = *(v91 + 16);
      v100 = *(v91 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_257BF2824((v100 > 1), v101 + 1, 1);
      }

      v102 = v246;
      v103 = v247;
      v104 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
      MEMORY[0x28223BE20](v104);
      v106 = &v230[-((v105 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v107 + 16))(v106);
      sub_257CCE078(v101, v106, v251, v102, v103);
      result = __swift_destroy_boxed_opaque_existential_0(v245);
      v91 = v251[0];
    }

    ++v89;
    v92 += 40;
  }

  while (v88 != v89);
  v108 = *(v91 + 16);

  v238 = v108 != 0;
  v237 = v108 == 0;
  v109 = *(v61 + 16);
  if (!v109)
  {
    v111 = MEMORY[0x277D84F90];
LABEL_102:

    v128 = *(v111 + 16);

    if (v128)
    {
      v233 = v237;
      v127 = v238;
      goto LABEL_104;
    }

    v233 = v238;
    v127 = v237;
    v129 = &v252 + 4;
LABEL_106:
    *(v129 - 64) = 0;
    v235 = v127;
    v130 = MEMORY[0x277D84F90];
    v131 = v243;
    if (v243)
    {
      v132 = v240 + 32;
      v133 = MEMORY[0x277D84F90];
      do
      {
        sub_257C024BC(v132, &v248);
        v134 = v249;
        v135 = v250;
        __swift_project_boxed_opaque_existential_1(&v248, v249);
        (*(v135 + 40))(v134, v135);
        sub_257E5B51C();
        v136 = v277.origin.x;
        v137 = v277.origin.y;
        v138 = v277.size.width;
        v139 = v277.size.height;
        if (CGRectGetMaxY(v277) <= 1.0 && (v278.origin.x = v136, v278.origin.y = v137, v278.size.width = v138, v278.size.height = v139, CGRectGetMinY(v278) <= 0.7))
        {
          result = __swift_destroy_boxed_opaque_existential_0(&v248);
        }

        else
        {
          sub_257BE40E4(&v248, v245);
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v251[0] = v133;
          if ((v140 & 1) == 0)
          {
            sub_257BF2824(0, *(v133 + 16) + 1, 1);
            v133 = v251[0];
          }

          v142 = *(v133 + 16);
          v141 = *(v133 + 24);
          if (v142 >= v141 >> 1)
          {
            sub_257BF2824((v141 > 1), v142 + 1, 1);
          }

          v143 = v246;
          v144 = v247;
          v145 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
          MEMORY[0x28223BE20](v145);
          v147 = &v230[-((v146 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v148 + 16))(v147);
          sub_257CCE078(v142, v147, v251, v143, v144);
          result = __swift_destroy_boxed_opaque_existential_0(v245);
          v133 = v251[0];
        }

        v132 += 40;
        --v131;
      }

      while (v131);
    }

    else
    {
      v133 = MEMORY[0x277D84F90];
    }

    v242 = *(v133 + 16);
    if (v242)
    {
      v149 = 0;
      v150 = v133 + 32;
      v151 = MEMORY[0x277D84F90];
      v152 = v133 + 32;
      while (v149 < *(v133 + 16))
      {
        sub_257C024BC(v152, &v248);
        v154 = v249;
        v153 = v250;
        __swift_project_boxed_opaque_existential_1(&v248, v249);
        (*(v153 + 40))(v154, v153);
        sub_257E5B51C();
        v155 = v279.origin.x;
        v156 = v279.origin.y;
        v157 = v279.size.width;
        v158 = v279.size.height;
        if (CGRectGetMinX(v279) >= 0.0 && (v280.origin.x = v155, v280.origin.y = v156, v280.size.width = v157, v280.size.height = v158, CGRectGetMaxX(v280) >= 0.3))
        {
          result = __swift_destroy_boxed_opaque_existential_0(&v248);
        }

        else
        {
          sub_257BE40E4(&v248, v245);
          v159 = swift_isUniquelyReferenced_nonNull_native();
          v251[0] = v151;
          if ((v159 & 1) == 0)
          {
            sub_257BF2824(0, *(v151 + 16) + 1, 1);
            v151 = v251[0];
          }

          v161 = *(v151 + 16);
          v160 = *(v151 + 24);
          if (v161 >= v160 >> 1)
          {
            sub_257BF2824((v160 > 1), v161 + 1, 1);
          }

          v162 = v246;
          v163 = v247;
          v164 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
          MEMORY[0x28223BE20](v164);
          v166 = &v230[-((v165 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v167 + 16))(v166);
          sub_257CCE078(v161, v166, v251, v162, v163);
          result = __swift_destroy_boxed_opaque_existential_0(v245);
          v151 = v251[0];
        }

        ++v149;
        v152 += 40;
        if (v242 == v149)
        {
          v168 = *(v151 + 16);

          v234 = v168 != 0;
          LODWORD(v242) = v168 == 0;
          v169 = *(v133 + 16);
          if (v169)
          {
            v170 = 0;
            v171 = MEMORY[0x277D84F90];
            while (v170 < *(v133 + 16))
            {
              sub_257C024BC(v150, &v248);
              v172 = v249;
              v173 = v250;
              __swift_project_boxed_opaque_existential_1(&v248, v249);
              (*(v173 + 40))(v172, v173);
              sub_257E5B51C();
              v174 = v281.origin.x;
              v175 = v281.origin.y;
              v176 = v281.size.width;
              v177 = v281.size.height;
              if (CGRectGetMaxX(v281) <= 1.0 && (v282.origin.x = v174, v282.origin.y = v175, v282.size.width = v176, v282.size.height = v177, CGRectGetMinX(v282) <= 0.7))
              {
                result = __swift_destroy_boxed_opaque_existential_0(&v248);
              }

              else
              {
                sub_257BE40E4(&v248, v245);
                v178 = swift_isUniquelyReferenced_nonNull_native();
                v251[0] = v171;
                if ((v178 & 1) == 0)
                {
                  sub_257BF2824(0, *(v171 + 16) + 1, 1);
                  v171 = v251[0];
                }

                v180 = *(v171 + 16);
                v179 = *(v171 + 24);
                if (v180 >= v179 >> 1)
                {
                  sub_257BF2824((v179 > 1), v180 + 1, 1);
                }

                v181 = v246;
                v182 = v247;
                v183 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
                MEMORY[0x28223BE20](v183);
                v185 = &v230[-((v184 + 15) & 0xFFFFFFFFFFFFFFF0)];
                (*(v186 + 16))(v185);
                sub_257CCE078(v180, v185, v251, v181, v182);
                result = __swift_destroy_boxed_opaque_existential_0(v245);
                v171 = v251[0];
              }

              ++v170;
              v150 += 40;
              if (v169 == v170)
              {
                goto LABEL_155;
              }
            }

            goto LABEL_220;
          }

          v171 = MEMORY[0x277D84F90];
LABEL_155:

          v193 = *(v171 + 16);

          if (v193)
          {
            v231 = 0;
            v187 = v242;
            v232 = v242;
            LODWORD(v242) = v234;
            v188 = v243;
            if (!v243)
            {
              goto LABEL_143;
            }

            goto LABEL_157;
          }

          v232 = 0;
          v187 = v234;
          v231 = v234;
          v188 = v243;
          if (v243)
          {
            goto LABEL_157;
          }

          goto LABEL_143;
        }
      }

LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    v232 = 0;
    v231 = 0;
    v187 = 0;
    LODWORD(v242) = 0;
    v188 = v243;
    if (v243)
    {
LABEL_157:
      v194 = v240 + 32;
      v195 = MEMORY[0x277D84F90];
      v196 = v240 + 32;
      do
      {
        sub_257C024BC(v196, &v248);
        v197 = v249;
        v198 = v250;
        __swift_project_boxed_opaque_existential_1(&v248, v249);
        (*(v198 + 40))(v197, v198);
        sub_257E5B51C();
        v199 = v283.origin.x;
        v200 = v283.origin.y;
        v201 = v283.size.width;
        v202 = v283.size.height;
        if (CGRectGetMinX(v283) >= 0.0 && (v284.origin.x = v199, v284.origin.y = v200, v284.size.width = v201, v284.size.height = v202, CGRectGetMaxX(v284) >= 0.3))
        {
          __swift_destroy_boxed_opaque_existential_0(&v248);
        }

        else
        {
          sub_257BE40E4(&v248, v245);
          v203 = swift_isUniquelyReferenced_nonNull_native();
          v251[0] = v195;
          if ((v203 & 1) == 0)
          {
            sub_257BF2824(0, *(v195 + 16) + 1, 1);
            v195 = v251[0];
          }

          v205 = *(v195 + 16);
          v204 = *(v195 + 24);
          if (v205 >= v204 >> 1)
          {
            sub_257BF2824((v204 > 1), v205 + 1, 1);
          }

          v206 = v246;
          v207 = v247;
          v208 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
          MEMORY[0x28223BE20](v208);
          v210 = &v230[-((v209 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v211 + 16))(v210);
          sub_257CCE078(v205, v210, v251, v206, v207);
          __swift_destroy_boxed_opaque_existential_0(v245);
          v195 = v251[0];
        }

        v196 += 40;
        --v188;
      }

      while (v188);
      v189 = *(v195 + 16);

      v130 = MEMORY[0x277D84F90];
      do
      {
        sub_257C024BC(v194, &v248);
        v212 = v249;
        v213 = v250;
        __swift_project_boxed_opaque_existential_1(&v248, v249);
        (*(v213 + 40))(v212, v213);
        sub_257E5B51C();
        v214 = v285.origin.x;
        v215 = v285.origin.y;
        v216 = v285.size.width;
        v217 = v285.size.height;
        if (CGRectGetMaxX(v285) <= 1.0 && (v286.origin.x = v214, v286.origin.y = v215, v286.size.width = v216, v286.size.height = v217, CGRectGetMinX(v286) <= 0.7))
        {
          __swift_destroy_boxed_opaque_existential_0(&v248);
        }

        else
        {
          sub_257BE40E4(&v248, v245);
          v218 = swift_isUniquelyReferenced_nonNull_native();
          v251[0] = v130;
          if ((v218 & 1) == 0)
          {
            sub_257BF2824(0, *(v130 + 16) + 1, 1);
            v130 = v251[0];
          }

          v220 = *(v130 + 16);
          v219 = *(v130 + 24);
          if (v220 >= v219 >> 1)
          {
            sub_257BF2824((v219 > 1), v220 + 1, 1);
          }

          v221 = v246;
          v222 = v247;
          v223 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
          MEMORY[0x28223BE20](v223);
          v225 = &v230[-((v224 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v226 + 16))(v225);
          sub_257CCE078(v220, v225, v251, v221, v222);
          __swift_destroy_boxed_opaque_existential_0(v245);
          v130 = v251[0];
        }

        v194 += 40;
        --v243;
      }

      while (v243);
    }

    else
    {
LABEL_143:
      v189 = *(v130 + 16);
    }

    v190 = *(v130 + 16);

    if (v190)
    {
      if (v189)
      {
        v60 = 0;
LABEL_147:
        v191 = v241;
        goto LABEL_202;
      }

      v191 = v241;
      if (v235)
      {
        v227 = v242;
        if (v236)
        {
          v227 = 1;
        }

        v228 = v239;
        if (v227)
        {
          goto LABEL_201;
        }
      }

      else
      {
        v228 = v239;
        if (v236)
        {
          goto LABEL_201;
        }
      }

      if ((v228 & 1) == 0 && (((v237 | v232) & 1) != 0 || (((v235 || v233) | v242 | v187) & 1) == 0))
      {
        v60 = 6;
        goto LABEL_202;
      }

LABEL_201:
      v60 = 0;
      goto LABEL_202;
    }

    if (v189)
    {
      v191 = v241;
      if (v235)
      {
        v192 = v242;
        if (v236)
        {
          v192 = 1;
        }

        if (v192)
        {
          goto LABEL_201;
        }
      }

      else if (v236)
      {
        goto LABEL_201;
      }

      if (v239 & 1) != 0 || !v238 && !v231 && (((v235 || v233) | v242 | v187))
      {
        goto LABEL_201;
      }

      v60 = 5;
    }

    else
    {
      v191 = v241;
      if (!v235)
      {
        if (!v236)
        {
          if (v242)
          {
            if (((v233 | v239) & 1) == 0)
            {
              v60 = 8;
              goto LABEL_202;
            }
          }

          else
          {
            if (((v187 | v239) & 1) == 0)
            {
              v60 = v238 ? 2 : 4;
              if (v238 || v237)
              {
                goto LABEL_202;
              }
            }

            if (((v233 | v239) & 1) == 0)
            {
              v60 = v231 ? 7 : 9;
              if ((v231 | v232))
              {
                goto LABEL_202;
              }
            }
          }
        }

        goto LABEL_201;
      }

      v229 = v242;
      if (v236)
      {
        v229 = 1;
      }

      if (v229 & 1) != 0 || ((v187 | v239))
      {
        goto LABEL_201;
      }

      v60 = 3;
    }

LABEL_202:
    *v191 = v60;
    return result;
  }

  v110 = 0;
  v111 = MEMORY[0x277D84F90];
  while (v110 < *(v61 + 16))
  {
    sub_257C024BC(v90, &v248);
    v112 = v249;
    v113 = v250;
    __swift_project_boxed_opaque_existential_1(&v248, v249);
    (*(v113 + 40))(v112, v113);
    sub_257E5B51C();
    v114 = v275.origin.x;
    v115 = v275.origin.y;
    v116 = v275.size.width;
    v117 = v275.size.height;
    if (CGRectGetMaxX(v275) <= 1.0 && (v276.origin.x = v114, v276.origin.y = v115, v276.size.width = v116, v276.size.height = v117, CGRectGetMinX(v276) <= 0.7))
    {
      result = __swift_destroy_boxed_opaque_existential_0(&v248);
    }

    else
    {
      sub_257BE40E4(&v248, v245);
      v118 = swift_isUniquelyReferenced_nonNull_native();
      v251[0] = v111;
      if ((v118 & 1) == 0)
      {
        sub_257BF2824(0, *(v111 + 16) + 1, 1);
        v111 = v251[0];
      }

      v120 = *(v111 + 16);
      v119 = *(v111 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_257BF2824((v119 > 1), v120 + 1, 1);
      }

      v121 = v246;
      v122 = v247;
      v123 = __swift_mutable_project_boxed_opaque_existential_1(v245, v246);
      MEMORY[0x28223BE20](v123);
      v125 = &v230[-((v124 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v126 + 16))(v125);
      sub_257CCE078(v120, v125, v251, v121, v122);
      result = __swift_destroy_boxed_opaque_existential_0(v245);
      v111 = v251[0];
    }

    ++v110;
    v90 += 40;
    if (v109 == v110)
    {
      goto LABEL_102;
    }
  }

LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
  return result;
}

uint64_t TextDetectionDirection.description.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0x2E6D6F74746F622ELL;
    v6 = 0x6E776F642ELL;
    if (v1 != 8)
    {
      v6 = 0x2E6D6F74746F622ELL;
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7466656C2ELL;
    if (v1 != 5)
    {
      v7 = 0x74686769722ELL;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 7370030;
    if (v1 != 3)
    {
      v2 = 0x6769722E706F742ELL;
    }

    v3 = 0x66656C2E706F742ELL;
    if (v1 < 2)
    {
      v3 = 0;
    }

    if (*v0 <= 2u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_257CCCE54@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if (result)
  {
    v4 = v3 - 3;
    v5 = v4 >= 6u;
    v6 = 0xA0C090B0C08uLL >> (8 * (v4 & 0x1Fu));
    if (v5)
    {
      LOBYTE(v6) = 12;
    }

    *a2 = v6;
  }

  else
  {
    *a2 = byte_257EE0F82[v3];
  }

  return result;
}

uint64_t static DetectedTextAndLanguage.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_257ED0640(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_257ED0640();
    }
  }

  return result;
}

uint64_t sub_257CCCF44(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_257ED0640(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_257ED0640();
    }
  }

  return result;
}

uint64_t DetectedTextBlock.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DetectedTextBlock.id.setter(uint64_t a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DetectedTextBlock.stringLocaleMap.getter()
{
  type metadata accessor for DetectedTextBlock();
}

uint64_t DetectedTextBlock.stringLocaleMap.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DetectedTextBlock() + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DetectedTextBlock.normalizedBbox.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for DetectedTextBlock();
  v10 = (v4 + *(result + 24));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t DetectedTextBlock.confidence.setter(double a1)
{
  result = type metadata accessor for DetectedTextBlock();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DetectedTextBlock.detectLanguages.setter(char a1)
{
  result = type metadata accessor for DetectedTextBlock();
  *(v1 + *(result + 32)) = a1;
  return result;
}

void *DetectedTextBlock.outputRegion.getter()
{
  v1 = *(v0 + *(type metadata accessor for DetectedTextBlock() + 36));
  v2 = v1;
  return v1;
}

void DetectedTextBlock.outputRegion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DetectedTextBlock() + 36);

  *(v1 + v3) = a1;
}

uint64_t DetectedTextBlock.hash(into:)()
{
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

uint64_t DetectedTextBlock.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257CCD564(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_257CCD5D4(uint64_t result, double a2, double a3, double a4, double a5)
{
  v6 = (v5 + *(result + 24));
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return result;
}

void *sub_257CCD684(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  v3 = v2;
  return v2;
}

void sub_257CCD6B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

uint64_t sub_257CCD70C()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257CCD794()
{
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

uint64_t sub_257CCD818()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257CCE3A0(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t Sequence<>.mag_debugTextBlockDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
  sub_257BD2D4C(&qword_27F8F7348, &qword_27F8F9D90);
  sub_257ECF770();
  sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
  v0 = sub_257ECF420();

  return v0;
}

uint64_t sub_257CCD9BC@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = v4(AssociatedTypeWitness, a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v17 = a2;
    v20 = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v8, 0);
    v9 = v20;
    v10 = (v7 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v18 = *(v10 - 1);
      v19 = *v10;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      MEMORY[0x259C72150](658386221, 0xE400000000000000);
      MEMORY[0x259C72150](v11, v12);

      MEMORY[0x259C72150](39, 0xE100000000000000);

      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_257BF26A4((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v18;
      *(v15 + 40) = v19;
      v10 += 4;
      --v8;
    }

    while (v8);

    a2 = v17;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *a2 = v9;
  return result;
}

MagnifierSupport::TextDetectionDirection_optional __swiftcall TextDetectionDirection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void *detectTextBlocks(forDocument:)(void *a1)
{
  v2 = type metadata accessor for DetectedTextBlock();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = (MEMORY[0x28223BE20])(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - v6;
  v8 = [a1 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  sub_257BD2C2C(0, &qword_27F8F5FA8);
  v9 = sub_257ECF810();

  v10 = sub_257CCB040(v9);

  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v13 = 0;
    v46 = v10 & 0xC000000000000001;
    v14 = MEMORY[0x277D84F90];
    v44 = v11;
    v45 = v10;
    v43 = i;
    while (1)
    {
      if (v46)
      {
        v15 = MEMORY[0x259C72E20](v13, v10);
      }

      else
      {
        if (v13 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v50 = objc_autoreleasePoolPush();
      v49 = sub_257D11120();
      [v16 boundingBox];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [v16 confidence];
      v27 = v26;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v28 = v5;
      v29 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v30 = *(v29 + 8);
      v31 = *(v29 + 16);
      v51[0] = *v29;
      v51[1] = v30;
      v52 = v31;
      v32 = qword_2815447E0;

      if (v32 != -1)
      {
        v33 = swift_once();
      }

      MEMORY[0x28223BE20](v33);
      *(&v43 - 2) = v51;
      sub_257ECFD50();

      v34 = v53;
      v35 = [v16 getCROutputRegion];
      sub_257ECCCE0();
      v36 = v48;
      v37 = v48[9];
      *&v7[v48[5]] = v49;
      v38 = &v7[v36[6]];
      *v38 = v19;
      *(v38 + 1) = v21;
      *(v38 + 2) = v23;
      *(v38 + 3) = v25;
      *&v7[v36[7]] = v27;
      v7[v36[8]] = v34;
      *&v7[v37] = v35;
      v5 = v28;
      sub_257C7E2F0(v7, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_257BFD440(0, v14[2] + 1, 1, v14);
      }

      v39 = v43;
      v41 = v14[2];
      v40 = v14[3];
      if (v41 >= v40 >> 1)
      {
        v14 = sub_257BFD440(v40 > 1, v41 + 1, 1, v14);
      }

      v14[2] = v41 + 1;
      sub_257CCE288(v5, v14 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41);
      sub_257CCE2EC(v7);
      objc_autoreleasePoolPop(v50);

      ++v13;
      v11 = v44;
      v10 = v45;
      if (v17 == v39)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_25:

  return v14;
}

uint64_t sub_257CCE03C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D12DA0(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_257CCE078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_257BE40E4(&v12, v10 + 40 * a1 + 32);
}

BOOL _s16MagnifierSupport17DetectedTextBlockV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_257ECCCC0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetectedTextBlock();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7 || (sub_257D55200(v6, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  result = CGRectEqualToRect(*(a1 + v4[6]), *(a2 + v4[6]));
  if (!result)
  {
    return result;
  }

  if (*(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    v9 = v4[9];
    v10 = *(a1 + v9);
    v11 = *(a2 + v9);
    if (v10)
    {
      if (!v11)
      {
        return 0;
      }

      sub_257BD2C2C(0, &qword_27F8F5B20);
      v12 = v11;
      v13 = v10;
      v14 = sub_257ECFF50();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_257CCE24C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D12DA0(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_257CCE288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedTextBlock();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257CCE2EC(uint64_t a1)
{
  v2 = type metadata accessor for DetectedTextBlock();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257CCE348(uint64_t a1)
{
  result = sub_257CCE3A0(&qword_27F8F7350, type metadata accessor for DetectedTextBlock);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_257CCE3A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257CCE47C()
{
  result = qword_27F8F7358;
  if (!qword_27F8F7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7358);
  }

  return result;
}

void sub_257CCE678()
{
  sub_257ECCCF0();
  if (v0 <= 0x3F)
  {
    sub_257CCE744();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v2 <= 0x3F)
      {
        sub_257CCE7A8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_257CCE744()
{
  if (!qword_27F8F7380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7388);
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7380);
    }
  }
}

void sub_257CCE7A8()
{
  if (!qword_27F8F7390)
  {
    sub_257BD2C2C(255, &qword_27F8F5B20);
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F7390);
    }
  }
}

uint64_t getEnumTagSinglePayload for DoorAttributeModelHeads.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DoorAttributeModelHeads.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double static MAGAction.detectText()@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_257EDA120;
  *(a1 + 16) = 7;
  return result;
}

double static MAGAction.detectPeople()@<D0>(uint64_t a1@<X8>)
{
  *&result = 5;
  *a1 = xmmword_257EDE780;
  *(a1 + 16) = 7;
  return result;
}

double static MAGAction.detectDoors()@<D0>(uint64_t a1@<X8>)
{
  *&result = 4;
  *a1 = xmmword_257EDE770;
  *(a1 + 16) = 7;
  return result;
}

double static MAGAction.detectFurniture()@<D0>(uint64_t a1@<X8>)
{
  *&result = 6;
  *a1 = xmmword_257EDE760;
  *(a1 + 16) = 7;
  return result;
}

uint64_t MAGAction.actionType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_257CCE9D4(v2, v3, v4);
}

uint64_t sub_257CCE9D4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void static MAGAction.describeImage()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
}

uint64_t static MAGAction.adjustZoom(increase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t static MAGAction.adjustFlashlight(increase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t static MAGAction.adjustBrightness(increase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

uint64_t static MAGAction.adjustContrast(increase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

uint64_t static MAGAction.toggleFocusLock(on:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

unsigned __int8 *static MAGAction.adjustFilter(filter:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 6;
  return result;
}

double static MAGAction.startPointAndSpeak()@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_257EE0F90;
  *(a1 + 16) = 7;
  return result;
}

double static MAGAction.startTextDetection()@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_257EE0FA0;
  *(a1 + 16) = 7;
  return result;
}

uint64_t static MAGAction.start(activity:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
}

double static MAGAction.readerMode()@<D0>(uint64_t a1@<X8>)
{
  *&result = 7;
  *a1 = xmmword_257EE0FB0;
  *(a1 + 16) = 7;
  return result;
}

uint64_t MAGAction.description.getter()
{
  v0 = MAGAction.ActionType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x203A6E6F69746341;
}

uint64_t MAGAction.ActionType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 > 3)
  {
    if (*(v0 + 16) > 5u)
    {
      if (v3 == 6)
      {
        sub_257ED02D0();

        v18 = 0xD000000000000013;
        sub_257D188B4();
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v9 = [objc_opt_self() bundleForClass_];
        v10 = sub_257ECF4C0();

        v11 = sub_257ECF4C0();
        v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

        v13 = sub_257ECF500();
        v15 = v14;

        MEMORY[0x259C72150](v13, v15);

        return v18;
      }

      if (v1 <= 3)
      {
        v16 = 0x6562697263736544;
        if (v1 ^ 2 | v2)
        {
          v17 = 0xD000000000000014;
        }

        else
        {
          v17 = 0xD000000000000015;
        }

        if (v1 | v2)
        {
          v16 = 0x5420746365746544;
        }

        if (v1 <= 1)
        {
          return v16;
        }

        else
        {
          return v17;
        }
      }

      if (v1 > 5)
      {
        if (v1 ^ 6 | v2)
        {
          return 0x726564616552;
        }

        else
        {
          return 0xD000000000000010;
        }
      }

      v4 = 0x4420746365746544;
      v5 = 0x5020746365746544;
      v6 = (v1 ^ 4 | v2) == 0;
    }

    else
    {
      v4 = 0xD000000000000011;
      v5 = 0x6F4C207375636F46;
      v6 = v3 == 4;
    }

    if (v6)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  if (*(v0 + 16) > 1u)
  {
    if (v3 == 2)
    {
      return 0xD00000000000001ELL;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    if (!*(v0 + 16))
    {
      sub_257ED02D0();

      v18 = 0xD000000000000016;
      MEMORY[0x259C72150](v1, v2);
      MEMORY[0x259C72150](23847, 0xE200000000000000);
      return v18;
    }

    if (v1)
    {
      return 0x6573616572636E49;
    }

    else
    {
      return 0x6573616572636544;
    }
  }
}

uint64_t sub_257CCEFA4()
{
  v0 = MAGAction.ActionType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x203A6E6F69746341;
}

uint64_t get_enum_tag_for_layout_string_16MagnifierSupport9MAGActionV10ActionTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_257CCF040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_257CCF088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_257CCF0CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

id sub_257CCF0FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setBorderStyle_];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 tertiarySystemFillColor];
  [v3 setBackgroundColor_];

  [v3 _setCornerRadius_];
  [v3 setReturnKeyType_];
  [v3 setEnablesReturnKeyOnNonWhiteSpaceContent_];
  [v3 setAutocapitalizationType_];
  [v3 setClearButtonMode_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v3 setLeftView_];
  [v3 setLeftViewMode_];
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 userInterfaceLayoutDirection] == 1;

  [v3 setTextAlignment_];
  return v3;
}

id sub_257CCF30C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_257ED6D30;
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = 0;
  sub_257ECF540();

  v9 = sub_257ECF4C0();

  [v0 setText_];

  v10 = [objc_opt_self() systemRedColor];
  [v0 setTextColor_];

  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v12 = v0;
  [v12 setClipsToBounds_];
  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setLineBreakMode_];
  [v12 setTextAlignment_];
  [v12 setNumberOfLines_];
  LODWORD(v13) = 1.0;
  [v12 _setHyphenationFactor_];
  [v12 setHidden_];

  return v12;
}

void sub_257CCF5C8()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for ActivityNameOnBoardingController();
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  v1 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField] setDelegate_];
  [*&v0[v1] becomeFirstResponder];
  v2 = [v0 contentView];
  [v2 addSubview_];

  sub_257CD0844();
  v3 = [v0 navigationItem];
  [v3 setHidesBackButton_];

  v4 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_257ECF500();
  v20 = 0u;
  v21 = 0u;
  v10 = sub_257ECF4C0();

  v11 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v12 = [v11 initWithTitle:v10 style:0 target:0 action:{0, v20, v21}];

  swift_unknownObjectRelease();
  [v4 setBackBarButtonItem_];

  v13 = [v0 contentView];
  v14 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel;
  [v13 addSubview_];

  sub_257CD0AA4();
  [v0 setShouldAdjustScrollViewInsetForKeyboard_];
  [v0 setShouldAdjustButtonTrayForKeyboard_];
  v15 = [v0 contentView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = [v0 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [*&v0[v14] bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:10.0];

  [v19 setActive_];
}

uint64_t sub_257CCFAD0(void *a1)
{
  v2 = v1;
  v4 = sub_257ECC7D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257CD13D4();
  v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField);
  v9 = sub_257ECFF50();

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  result = [a1 text];
  if (result)
  {
    v11 = result;
    sub_257ECC7A0();
    v12 = sub_257ECC790();
    (*(v5 + 8))(v7, v4);
    v13 = [v11 stringByTrimmingCharactersInSet_];

    v14 = sub_257ECF500();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      goto LABEL_13;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v18 = qword_281548348;
    swift_beginAccess();
    v19 = v18[12];
    v20 = v18[13];
    v35 = v18[11];
    v36 = v19;
    v37 = v20;
    v21 = qword_2815447E0;

    if (v21 != -1)
    {
      v22 = swift_once();
    }

    MEMORY[0x28223BE20](v22);
    *(&v35 - 2) = &v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v23 = v38;
    v24 = *(v38 + 16);
    if (v24)
    {
      v25 = sub_257C63CC4(*(v38 + 16), 0);
      v26 = sub_257C67A48(&v35, v25 + 4, v24, v23);
      v27 = sub_257C02520();
      if (v26 != v24)
      {
        __break(1u);
LABEL_13:

        v28 = v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return 1;
        }

        v29 = *(v28 + 8);
        ObjectType = swift_getObjectType();
        (*(v29 + 8))(ObjectType, v29);
LABEL_19:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v35 = v14;
    v36 = v16;
    MEMORY[0x28223BE20](v27);
    *(&v35 - 2) = &v35;
    v31 = sub_257DF8ED4(sub_257CD1478, (&v35 - 4), v25);

    if (v31)
    {
      return 1;
    }

    v32 = v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return 1;
    }

    v33 = *(v32 + 8);
    v34 = swift_getObjectType();
    (*(v33 + 16))(v34, v33);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

id sub_257CCFF30(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_257ECC7D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 text];
  if (result)
  {
    v11 = result;
    v12 = sub_257ECF500();
    v14 = v13;

    v22[0] = v12;
    v22[1] = v14;
    sub_257ECC7A0();
    sub_257BDAB08();
    v15 = sub_257ED0110();
    v17 = v16;
    (*(v7 + 8))(v9, v6);

    if (a2)
    {
    }

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18 && (v19 = v3 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate, swift_unknownObjectWeakLoadStrong()))
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v20 + 24))(v15, v17, ObjectType, v20);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

id sub_257CD01FC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECC7D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 text];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  sub_257ECC7A0();
  v10 = sub_257ECC790();
  (*(v5 + 8))(v7, v4);
  v11 = [v9 stringByTrimmingCharactersInSet_];

  v12 = sub_257ECF500();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_12;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  swift_beginAccess();
  v17 = v16[12];
  v18 = v16[13];
  v42 = v16[11];
  v43 = v17;
  v44 = v18;
  v19 = qword_2815447E0;

  if (v19 != -1)
  {
    v20 = swift_once();
  }

  MEMORY[0x28223BE20](v20);
  *(&v42 - 2) = &v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v21 = v45;
  v22 = *(v45 + 16);
  if (v22)
  {
    v23 = sub_257C63CC4(*(v45 + 16), 0);
    v24 = sub_257C67A48(&v42, v23 + 4, v22, v21);
    v25 = sub_257C02520();
    if (v24 != v22)
    {
      __break(1u);
LABEL_12:

      [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
LABEL_20:
      v35 = v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate;
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v36 = *(v35 + 8);
      ObjectType = swift_getObjectType();
      (*(v36 + 16))(ObjectType, v36);
      return swift_unknownObjectRelease();
    }
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v42 = v12;
  v43 = v14;
  MEMORY[0x28223BE20](v25);
  *(&v42 - 2) = &v42;
  v26 = sub_257DF8ED4(sub_257CD13B8, (&v42 - 4), v23);

  if (v26)
  {
    goto LABEL_18;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  v29 = sub_257ECF4C0();
  v30 = sub_257ECF4C0();
  v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

  v32 = sub_257ECF500();
  v34 = v33;

  if (v12 == v32 && v14 == v34)
  {

LABEL_18:

LABEL_19:
    [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
    goto LABEL_20;
  }

  v38 = sub_257ED0640();

  if (v38)
  {
    goto LABEL_19;
  }

  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v39 = v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v40 = *(v39 + 8);
    v41 = swift_getObjectType();
    (*(v40 + 8))(v41, v40);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_257CD0844()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [*&v0[v1] leftAnchor];
  v3 = [v0 contentView];
  v4 = [v3 leftAnchor];

  v5 = [v2 constraintEqualToAnchor_];
  [v5 setActive_];

  v6 = [*&v0[v1] rightAnchor];
  v7 = [v0 contentView];
  v8 = [v7 rightAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  [v9 setActive_];

  v10 = [*&v0[v1] heightAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant_];

  [v11 setActive_];
  v12 = [*&v0[v1] topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:10.0];
  [v15 setActive_];
}

void sub_257CD0AA4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [*&v0[v1] leftAnchor];
  v3 = [v0 contentView];
  v4 = [v3 leftAnchor];

  v5 = [v2 constraintEqualToAnchor_];
  [v5 setActive_];

  v6 = [*&v0[v1] rightAnchor];
  v7 = [v0 contentView];
  v8 = [v7 rightAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  [v9 setActive_];

  v10 = [*&v0[v1] topAnchor];
  v11 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField] bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:10.0];

  [v12 setActive_];
}

id sub_257CD0CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kContentViewHeight] = 50;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldHeight] = 45;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldWidthPadding] = 60;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldTopPadding] = 10;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldCornerRadius] = 15;
  v11 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  *&v7[v11] = sub_257CCF0FC();
  v12 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel;
  *&v7[v12] = sub_257CCF30C();
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_button] = 0;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = sub_257ECF4C0();

  if (!a4)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_257ECF4C0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_257ECF4C0();

LABEL_6:
  v18.receiver = v7;
  v18.super_class = type metadata accessor for ActivityNameOnBoardingController();
  v16 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_symbolName_contentLayout_, v13, v14, v15, a7);

  return v16;
}

id sub_257CD0EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kContentViewHeight] = 50;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldHeight] = 45;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldWidthPadding] = 60;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldTopPadding] = 10;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_kTextFieldCornerRadius] = 15;
  v10 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  *&v6[v10] = sub_257CCF0FC();
  v11 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel;
  *&v6[v11] = sub_257CCF30C();
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_button] = 0;
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = sub_257ECF4C0();

  if (a4)
  {
    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for ActivityNameOnBoardingController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, a5, a6);

  return v14;
}

id sub_257CD1104()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityNameOnBoardingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257CD1238(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640() & 1;
  }
}

uint64_t sub_257CD1290()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField);
  v6 = sub_257ECF4C0();
  [v5 setText_];

  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v7 = v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 16))(v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_257CD13D4()
{
  result = qword_281543DA0;
  if (!qword_281543DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543DA0);
  }

  return result;
}

uint64_t sub_257CD1420(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_257ED0640() & 1;
  }
}

uint64_t sub_257CD1494()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

uint64_t sub_257CD1508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v5 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v5;
    v6 = v0;
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v15 < 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v15) = 2;
      v12 = v6;
      sub_257ECDD70();
      swift_getKeyPath();
      swift_getKeyPath();
      v15 = 0;
      v13 = v12;
      return sub_257ECDD70();
    }

    else
    {
      v7 = sub_257ECF930();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      sub_257ECF900();
      v8 = v6;
      v9 = sub_257ECF8F0();
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D85700];
      *(v10 + 16) = v9;
      *(v10 + 24) = v11;
      *(v10 + 32) = v8;
      *(v10 + 40) = 0;
      sub_257C3FBD4(0, 0, v3, &unk_257EE1548, v10);
    }
  }

  return result;
}

MagnifierSupport::MFReaderSpeechState_optional __swiftcall MFReaderSpeechState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MFReaderSpeechState.rawValue.getter()
{
  v1 = 0x646573756170;
  if (*v0 != 1)
  {
    v1 = 0x64656873696E6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696B61657073;
  }
}

uint64_t sub_257CD185C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646573756170;
  if (v2 != 1)
  {
    v4 = 0x64656873696E6966;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696B61657073;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646573756170;
  if (*a2 != 1)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696B61657073;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_257ED0640();
  }

  return v11 & 1;
}

uint64_t sub_257CD1958()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257CD19F8()
{
  sub_257ECF5D0();
}

uint64_t sub_257CD1A84()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

void sub_257CD1B2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (v2 != 1)
  {
    v5 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696B61657073;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_257CD1B88()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD0F0();
  v4 = sub_257ECD0E0();
  v5 = sub_257ECCFF0();
  v6 = *MEMORY[0x277CB8030];
  v20[0] = 0;
  v7 = [v5 setCategory:v6 withOptions:3 error:v20];

  if (v7)
  {
    v8 = v20[0];
  }

  else
  {
    v9 = v20[0];
    v10 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD3F0();
    v11 = v10;
    v12 = sub_257ECDA20();
    v13 = sub_257ECFBE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_257BAC000, v12, v13, "Failed to configure reader mode audio session with error: %@", v14, 0xCu);
      sub_257BE4084(v15, &unk_27F8F5490);
      MEMORY[0x259C74820](v15, -1, -1);
      MEMORY[0x259C74820](v14, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
  }

  sub_257ECD010();
  return v4;
}