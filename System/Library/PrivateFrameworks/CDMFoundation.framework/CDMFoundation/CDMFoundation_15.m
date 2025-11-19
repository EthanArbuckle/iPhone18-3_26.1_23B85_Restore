uint64_t sub_1DC3D8558()
{
  v1 = sub_1DC51170C();
  OUTLINED_FUNCTION_248_0(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_24();
  v4 = *(v0 + 16);
  v28 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v6 = *(*v5 + 72);
  OUTLINED_FUNCTION_185_1();
  v9 = v8 & ~v7;
  v10 = OUTLINED_FUNCTION_296();
  *(v10 + 16) = xmmword_1DC528390;
  v11 = v10 + v9;
  v12 = v11 + v5[14];
  sub_1DC51680C();
  v13 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v13);
  v14 = (v11 + v6 + v5[14]);

  sub_1DC51687C();
  *v14 = sub_1DC2A0C80(5);
  v14[1] = v15;
  v16 = (v11 + 2 * v6 + v5[14]);
  sub_1DC51682C();
  *v16 = sub_1DC515D9C();
  v16[1] = v17;
  v18 = (v11 + 3 * v6 + v5[14]);
  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v19, v20);
  *v18 = sub_1DC51823C();
  v18[1] = v21;
  v22 = (v11 + 4 * v6 + v5[14]);
  sub_1DC5168AC();
  *v22 = sub_1DC515D6C();
  v22[1] = v23;
  v24 = (v11 + 5 * v6 + v5[14]);
  sub_1DC51686C();
  *v24 = sub_1DC515B5C();
  v24[1] = v25;
  v26 = (v11 + 6 * v6 + v5[14]);
  sub_1DC51681C();
  sub_1DC517FEC();
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  return v10;
}

void sub_1DC3D87B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1DC3CD4E8();
}

void sub_1DC3D87C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();

  [a3 setAceId_];
}

uint64_t sub_1DC3D8824()
{
  v1 = OUTLINED_FUNCTION_155();
  v3 = v2(v1);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1DC3D8878()
{
  result = qword_1ECC7B9A8;
  if (!qword_1ECC7B9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC7B9A8);
  }

  return result;
}

void sub_1DC3D88BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DC3D4790();
}

void sub_1DC3D88C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DC3D4FF8();
}

void sub_1DC3D88FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DC3D51FC();
}

void sub_1DC3D8908()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DC3D4FF8();
}

uint64_t sub_1DC3D8944()
{
  result = sub_1DC510B6C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DC5162DC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DC3D8ACC()
{
  result = type metadata accessor for CDMNluResponse();
  if (v1 <= 0x3F)
  {
    result = sub_1DC5161DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DC3D8B40(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

void sub_1DC3D8B98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1DC3D0314();
}

void sub_1DC3D8BA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1DC3D0AD0();
}

__n128 *sub_1DC3D8BB8()
{
  OUTLINED_FUNCTION_320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570);
  OUTLINED_FUNCTION_136_1(v4);
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_185_1();
  v9 = v8 & ~v7;
  v10 = OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_294(v10, xmmword_1DC528390);
  v11 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v11);
  v12 = (v9 + v6 + *(v1 + 56));

  sub_1DC51687C();
  *v12 = sub_1DC2A0C80(10);
  v12[1] = v13;
  OUTLINED_FUNCTION_322(v9 + 2 * v6);
  sub_1DC51682C();
  OUTLINED_FUNCTION_253();
  sub_1DC5168BC();
  v14 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v15, v16);
  *v2 = sub_1DC51823C();
  v2[1] = v17;
  OUTLINED_FUNCTION_322(v9 + 4 * v6);
  sub_1DC5168AC();
  OUTLINED_FUNCTION_226_0(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v18 = sub_1DC51689C();
  OUTLINED_FUNCTION_329(v18, v19, v20, v21, v22, v23, v24, v25, v28);
  v26 = (v3 + v14 + *(v1 + 56));

  sub_1DC51688C();
  *v26 = v29;
  v26[1] = v0;

  return v10;
}

void sub_1DC3D8D68()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1DC3D0854();
}

uint64_t sub_1DC3D8D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3D8DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3D8E40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC3D8E88()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  sub_1DC515A5C();
  sub_1DC3BFAC0();
}

uint64_t objectdestroy_29Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 *sub_1DC3D8F3C()
{
  OUTLINED_FUNCTION_320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570);
  OUTLINED_FUNCTION_136_1(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_185_1();
  v8 = v7 & ~v6;
  v9 = OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_294(v9, xmmword_1DC528390);
  v10 = sub_1DC2A0C74();
  OUTLINED_FUNCTION_209_0(v10);
  v11 = (v8 + v5 + *(v0 + 56));

  sub_1DC51687C();
  *v11 = sub_1DC2A0C80(4);
  v11[1] = v12;
  OUTLINED_FUNCTION_322(v8 + 2 * v5);
  sub_1DC51682C();
  OUTLINED_FUNCTION_253();
  sub_1DC5168BC();
  v13 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_4_27();
  sub_1DC3D8E40(v14, v15);
  *v1 = sub_1DC51823C();
  v1[1] = v16;
  OUTLINED_FUNCTION_322(v8 + 4 * v5);
  sub_1DC5168AC();
  OUTLINED_FUNCTION_226_0(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v17 = sub_1DC51689C();
  OUTLINED_FUNCTION_329(v17, v18, v19, v20, v21, v22, v23, v24, v28);

  sub_1DC51688C();
  v25 = (v2 + v13 + *(v0 + 56));

  v26 = OUTLINED_FUNCTION_187();
  MEMORY[0x1E1296160](v26);

  *v25 = 0;
  v25[1] = 0xE000000000000000;
  return v9;
}

uint64_t OUTLINED_FUNCTION_73_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_116_3()
{
  v3 = *(v1 - 176);

  return sub_1DC291244(v3, v0, (v1 - 88));
}

void OUTLINED_FUNCTION_132_1()
{
  v1 = *(v0 - 176);
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);
}

uint64_t OUTLINED_FUNCTION_145_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 240);
  v4 = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_146_3()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_175()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_186_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 112) = a6;
  *(v8 - 104) = a7;
  *(v8 - 128) = a3;
  *(v8 - 120) = a5;
  *(v8 - 96) = *(v8 + 16);
  *(v8 - 88) = a8;
}

BOOL OUTLINED_FUNCTION_197_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_198_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_209_0(uint64_t *a1)
{
  v3 = *a1;
  result = a1[1];
  *v1 = v3;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_218_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_219_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_232()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

void OUTLINED_FUNCTION_236_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_246_0()
{
  result = *(v0 - 256);
  v3 = *(v1 - 184);
  v4 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_249_0(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_251_0()
{
}

uint64_t OUTLINED_FUNCTION_253()
{
  v6 = *(v4 + 64);
  *v0 = *(v4 + 56);
  v0[1] = v6;
  v7 = v2 + 3 * v3 + *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_254()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_255(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_257@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 16);
  v3 = *(v1 - 184);
  return *(v1 - 192);
}

uint64_t OUTLINED_FUNCTION_260()
{
  v1 = *(*(v0 - 216) + 8);
  result = *(v0 - 232);
  v3 = *(v0 - 304);
  return result;
}

char *OUTLINED_FUNCTION_272(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(v2 + 16);
  result = a1 + v3;
  v7 = *(v4 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_294(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = a1 + v3 + *(v2 + 56);

  return sub_1DC51680C();
}

uint64_t *OUTLINED_FUNCTION_295(uint64_t a1)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 128));
}

uint64_t OUTLINED_FUNCTION_296()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_297()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_298()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_300()
{
  v2 = *(v0 - 304);
}

BOOL OUTLINED_FUNCTION_301()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t *OUTLINED_FUNCTION_304(uint64_t a1)
{
  *(v1 - 104) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 136));
}

uint64_t OUTLINED_FUNCTION_305(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_306()
{
}

uint64_t OUTLINED_FUNCTION_310()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

void OUTLINED_FUNCTION_320()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
}

uint64_t OUTLINED_FUNCTION_326@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 184);
  return result;
}

uint64_t *OUTLINED_FUNCTION_327@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + a2);
  v4 = *v3;
  v5 = v3[1];
  v6 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_339()
{
  v1 = *(*(v0 - 208) + 8);
  result = *(v0 - 232);
  v3 = *(v0 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_340@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
  return 1;
}

uint64_t OUTLINED_FUNCTION_347(uint64_t a1)
{
  v4 = *(v3 - 144);
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_352()
{
  v2 = *(v0 + 8);
  result = *(v1 - 192);
  v4 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_357()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_366(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 128);

  return sub_1DC291244(v5, v2, (v3 - 96));
}

uint64_t OUTLINED_FUNCTION_367(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 144);

  return sub_1DC291244(v5, v2, (v3 - 104));
}

void OUTLINED_FUNCTION_369(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_370@<X0>(uint64_t a1@<X8>)
{

  return MEMORY[0x1EEE3BE48](0xD000000000000010, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_371()
{
  v3 = v0 + *(v1 - 376);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_373()
{
}

uint64_t OUTLINED_FUNCTION_374()
{
}

uint64_t OUTLINED_FUNCTION_375(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_376(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_377(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F414(a1, a2, v3, v2);
}

uint64_t sub_1DC3D9B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v131 = sub_1DC510FDC();
  v3 = OUTLINED_FUNCTION_0(v131);
  v139 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v130 = v8 - v7;
  OUTLINED_FUNCTION_12();
  v133 = sub_1DC51179C();
  v9 = OUTLINED_FUNCTION_0(v133);
  v136 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v132 = v14 - v13;
  OUTLINED_FUNCTION_12();
  v134 = sub_1DC51164C();
  v15 = OUTLINED_FUNCTION_0(v134);
  v137 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v21 = (v20 - v19);
  v128 = sub_1DC51122C();
  v22 = OUTLINED_FUNCTION_0(v128);
  v121 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v127 = v27 - v26;
  OUTLINED_FUNCTION_12();
  v28 = sub_1DC5157EC();
  v29 = OUTLINED_FUNCTION_0(v28);
  v118 = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v29);
  v115 = v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v117 = v108 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = v108 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = v108 - v42;
  v44 = type metadata accessor for NLRouterNLParseResponse(0);
  v45 = OUTLINED_FUNCTION_35(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  v120 = (v49 - v48);
  OUTLINED_FUNCTION_12();
  v50 = sub_1DC516F5C();
  v51 = OUTLINED_FUNCTION_0(v50);
  v124 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1();
  v57 = v56 - v55;
  v58 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v59 = sub_1DC2BE518();
  v60 = OUTLINED_FUNCTION_130();
  v123 = v57;
  v122 = v58;
  sub_1DC2A2ED0("HeuristicRules.AnnouncementRule", 31, 2, v59, v60 & 1, v57);

  v61 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v61 + 32), v39, &qword_1ECC7C158, &unk_1DC5234A0);
  v62 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v62) == 1)
  {
    sub_1DC28EB30(v39, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
LABEL_4:
    sub_1DC28EB30(v43, &qword_1ECC7C160, qword_1DC5233B0);
    __swift_storeEnumTagSinglePayload(v125, 1, 1, v28);
    OUTLINED_FUNCTION_4_28();
LABEL_39:
    v107 = sub_1DC2BE518();
    sub_1DC2B8848();

    return (*(v57 + 8))(v21, v50);
  }

  sub_1DC28F358(v39, v43, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v39, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v43, v120);
  v63 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  v64 = *(v118 + 16);
  v108[2] = a1;
  v108[1] = v63;
  v109 = v28;
  v64(v117, a1 + v63, v28);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v65 = sub_1DC3464CC();
  v67 = v66;
  if (v65 == sub_1DC313520(1) && v67 == v68)
  {

    v72 = v132;
    v73 = v133;
    v57 = v137;
  }

  else
  {
    v70 = sub_1DC51825C();

    v72 = v132;
    v73 = v133;
    v57 = v137;
    if ((v70 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v116 = *v120;
  v110 = *(v116 + 16);
  if (!v110)
  {
LABEL_35:
    v102 = v117;
    v103 = sub_1DC5157DC();
    sub_1DC2E5408(v120, type metadata accessor for NLRouterNLParseResponse);
    if (v103)
    {
      v104 = v109;
      (*(v118 + 8))(v102, v109);
      v105 = v125;
    }

    else
    {
      v105 = v125;
      v104 = v109;
      (*(v118 + 32))(v125, v102, v109);
    }

    OUTLINED_FUNCTION_4_28();
    __swift_storeEnumTagSinglePayload(v105, v106, 1, v104);
    goto LABEL_39;
  }

  v74 = 0;
  v114 = v116 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
  v113 = v121 + 16;
  v138 = v57 + 16;
  v135 = (v136 + 8);
  v129 = (v139 + 8);
  v111 = v121 + 8;
  v112 = v50;
  v126 = v21;
  while (1)
  {
    if (v74 >= *(v116 + 16))
    {
      goto LABEL_41;
    }

    v75 = *(v121 + 72);
    v119 = v74;
    (*(v121 + 16))(v127, v114 + v75 * v74, v128);
    result = sub_1DC5111AC();
    v76 = result;
    v77 = *(result + 16);
    v78 = v134;
    if (v77)
    {
      break;
    }

LABEL_32:
    v74 = v119 + 1;

    v96 = OUTLINED_FUNCTION_3_27();
    result = v97(v96);
    v50 = v112;
    if (v74 == v110)
    {
      goto LABEL_35;
    }
  }

  v79 = 0;
  v139 = result + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  v136 = result;
  while (v79 < *(v76 + 16))
  {
    (*(v57 + 16))(v21, v139 + *(v57 + 72) * v79, v78);
    if (sub_1DC5114CC())
    {
      sub_1DC51154C();
      v80 = sub_1DC51177C();
      v81 = *v135;
      (*v135)(v72, v73);
      if ((v80 & 1) == 0)
      {
        v92 = OUTLINED_FUNCTION_5_2();
        result = v93(v92, v78);
LABEL_28:
        v76 = v136;
        v57 = v137;
        goto LABEL_31;
      }

      type metadata accessor for NLRouterBypassUtils();
      sub_1DC51154C();
      v82 = v72;
      v83 = v73;
      v84 = v130;
      sub_1DC51178C();
      v81(v82, v83);
      v85 = sub_1DC307E5C();
      (*v129)(v84, v131);
      if (!v85)
      {
        v94 = OUTLINED_FUNCTION_5_2();
        v78 = v134;
        result = v95(v94, v134);
        v72 = v132;
        v73 = v133;
        goto LABEL_28;
      }

      sub_1DC51478C();

      v86 = OUTLINED_FUNCTION_5_2();
      v78 = v134;
      v87(v86, v134);
      v57 = v137;
      if (v141)
      {
        sub_1DC2BAD90(&v140, &v142);
        sub_1DC2BAD90(&v142, &v140);
        sub_1DC514C3C();
        v88 = swift_dynamicCast();
        v76 = v136;
        if ((v88 & 1) != 0 || (sub_1DC514CDC(), v89 = swift_dynamicCast(), v72 = v132, v73 = v133, v89))
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v140);
          v98 = OUTLINED_FUNCTION_3_27();
          v99(v98);
          v21 = v115;
          v57 = v117;
          sub_1DC32CDF4();
          v100 = v118;
          v101 = v109;
          (*(v118 + 8))(v57, v109);
          (*(v100 + 32))(v57, v21, v101);
          v50 = v112;
          goto LABEL_35;
        }

        result = __swift_destroy_boxed_opaque_existential_1Tm(&v140);
      }

      else
      {
        result = sub_1DC28EB30(&v140, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v72 = v132;
        v73 = v133;
        v76 = v136;
      }

      v21 = v126;
    }

    else
    {
      v90 = OUTLINED_FUNCTION_5_2();
      result = v91(v90, v78);
    }

LABEL_31:
    if (v77 == ++v79)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1DC3DA6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v156 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v148 = v136 - v4;
  OUTLINED_FUNCTION_12();
  v157 = sub_1DC5157EC();
  v5 = OUTLINED_FUNCTION_0(v157);
  v147 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v146 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v159 = sub_1DC510FDC();
  v11 = OUTLINED_FUNCTION_0(v159);
  v150 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v158 = v16 - v15;
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC51179C();
  v161 = OUTLINED_FUNCTION_0(v17);
  v162 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_1();
  v164 = v22 - v21;
  OUTLINED_FUNCTION_12();
  v160 = sub_1DC51164C();
  v23 = OUTLINED_FUNCTION_0(v160);
  v149 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = sub_1DC51122C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v151 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = v136 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = v136 - v44;
  v46 = type metadata accessor for NLRouterNLParseResponse(0);
  v47 = OUTLINED_FUNCTION_35(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  v52 = v51 - v50;
  v154 = sub_1DC516F5C();
  v53 = OUTLINED_FUNCTION_0(v154);
  v153 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_1();
  v59 = v58 - v57;
  v60 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v61 = sub_1DC2BE518();
  v62 = OUTLINED_FUNCTION_130();
  v152 = v59;
  v63 = v59;
  v64 = v60;
  sub_1DC2A2ED0("HeuristicRules.PlannerPlayRule", 30, 2, v61, v62 & 1, v63);

  v65 = type metadata accessor for NLRouterServiceRequest(0);
  if (*(*(v156 + *(v65 + 24)) + 16))
  {
    OUTLINED_FUNCTION_19();
    v69 = v157;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    v75 = v154;
    OUTLINED_FUNCTION_1_33();
    goto LABEL_8;
  }

  v144 = v37;
  v145 = v30;
  v70 = v157;
  v142 = v52;
  sub_1DC28F358(v156 + *(v65 + 32), v41, &qword_1ECC7C158, &unk_1DC5234A0);
  v71 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v41, 1, v71) == 1)
  {
    sub_1DC28EB30(v41, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v46);
LABEL_6:
    sub_1DC28EB30(v45, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    v69 = v70;
    goto LABEL_7;
  }

  sub_1DC28F358(v41, v45, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v41, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    goto LABEL_6;
  }

  v78 = v142;
  sub_1DC2E53A4(v45, v142);
  v30 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v79 = sub_1DC345560();
  v81 = v80;
  if (v79 == sub_1DC312FB4(0) && v81 == v82)
  {

    goto LABEL_33;
  }

  v84 = sub_1DC51825C();

  if (v84)
  {
LABEL_33:
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v78, v108);
    v75 = v154;
    OUTLINED_FUNCTION_1_33();
    goto LABEL_34;
  }

  v136[1] = v30;
  v85 = 0;
  v86 = *v78;
  v140 = *(*v78 + 16);
  v87 = v151;
  v138 = v151 + 16;
  v88 = v149;
  v89 = (v149 + 8);
  ++v162;
  v163 = v149 + 16;
  ++v150;
  v139 = v151 + 8;
  v52 = v160;
  v90 = v161;
  v91 = v164;
  v92 = v145;
  v30 = v144;
  v136[2] = v64;
  for (i = v86; ; v86 = i)
  {
    if (v85 == v140)
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_9_25(v121, v122);
      v75 = v154;
      OUTLINED_FUNCTION_1_33();
      v70 = v157;
      goto LABEL_34;
    }

    if (v85 >= *(v86 + 16))
    {
      __break(1u);
      return result;
    }

    v93 = v86 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v94 = *(v87 + 72);
    v143 = v85;
    (*(v87 + 16))(v30, v93 + v94 * v85, v92);
    v95 = sub_1DC5111AC();
    v30 = *(v95 + 16);
    if (v30)
    {
      break;
    }

LABEL_31:
    v85 = v143 + 1;
    OUTLINED_FUNCTION_7_22();
    v30 = *(v106 - 256);
    v92 = v145;
    result = v107(v30, v145);
    v87 = v151;
  }

  v96 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v97 = v88;
  v141 = v95;
  v98 = v95 + v96;
  v99 = *(v97 + 72);
  v100 = *(v97 + 16);
  while (1)
  {
    v100(v29, v98, v52);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      (*v89)(v29, v52);
      goto LABEL_27;
    }

    sub_1DC51154C();
    v101 = sub_1DC51177C();
    v102 = *v162;
    (*v162)(v91, v90);
    if ((v101 & 1) == 0)
    {
      goto LABEL_26;
    }

    type metadata accessor for NLRouterBypassUtils();
    sub_1DC51154C();
    v103 = v158;
    sub_1DC51178C();
    v102(v164, v161);
    v91 = v164;
    v104 = sub_1DC307E5C();
    v105 = v103;
    v90 = v161;
    (*v150)(v105, v159);
    if (!v104)
    {
LABEL_26:
      v52 = v160;
      (*v89)(v29, v160);
      goto LABEL_27;
    }

    sub_1DC51478C();

    v52 = v160;
    (*v89)(v29, v160);
    *v165 = *&v165[5];
    *&v165[2] = v166;
    if (!*(&v166 + 1))
    {
      sub_1DC28EB30(v165, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_27;
    }

    sub_1DC5147FC();
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_27:
    v98 += v99;
    if (!--v30)
    {

      OUTLINED_FUNCTION_6_22();
      v88 = v149;
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_7_22();
  v113(*(v112 - 256), v145);
  sub_1DC345560();
  v114 = sub_1DC312F68();
  if (v114 == 4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9_25(v115, v116);
    v117 = v148;
    OUTLINED_FUNCTION_19();
    v70 = v157;
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v157);
    goto LABEL_40;
  }

  v117 = v148;
  sub_1DC312E7C(v114, v148);
  v70 = v157;
  if (__swift_getEnumTagSinglePayload(v117, 1, v157) == 1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9_25(v123, v124);
LABEL_40:
    v75 = v154;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_6_22();
    sub_1DC28EB30(v117, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_34:
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v70);
  }

  else
  {
    v52 = v147;
    v125 = *(v147 + 32);
    v126 = v146;
    v125(v146, v117, v70);
    v127 = type metadata accessor for HeuristicRoutingRequest(0);
    v128 = *(v127 + 36);
    v129 = v156 + *(v127 + 20);
    sub_1DC32FD38();
    v131 = v130;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9_25(v132, v133);
    if ((v131 & 1) == 0)
    {
      v135 = *(v52 + 8);
      v52 += 8;
      v135(v126, v70);
      v75 = v154;
      OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_6_22();
      goto LABEL_34;
    }

    v134 = v155;
    v125(v155, v126, v70);
    __swift_storeEnumTagSinglePayload(v134, 0, 1, v70);
    v75 = v154;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_6_22();
  }

LABEL_8:
  v76 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v30 + 8))(v52, v75);
}

uint64_t sub_1DC3DB20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D598, &qword_1DC528668);
  v0 = sub_1DC514BFC();
  OUTLINED_FUNCTION_0(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522FA0;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  (v8)(v7, *MEMORY[0x1E69D20A8], v0);
  (v8)(v7 + v4, *MEMORY[0x1E69D20C8], v0);
  (v8)(v7 + 2 * v4, *MEMORY[0x1E69D2108], v0);
  v9 = *MEMORY[0x1E69D2090];
  v10 = OUTLINED_FUNCTION_140_4(3 * v4);
  v8(v10);
  (v8)(v7 + 4 * v4, *MEMORY[0x1E69D20F8], v0);
  v11 = *MEMORY[0x1E69D2098];
  v12 = OUTLINED_FUNCTION_140_4(5 * v4);
  v8(v12);
  (v8)(v7 + 6 * v4, *MEMORY[0x1E69D20B8], v0);
  v13 = *MEMORY[0x1E69D20A0];
  v14 = OUTLINED_FUNCTION_140_4(7 * v4);
  v8(v14);
  (v8)(v7 + 8 * v4, *MEMORY[0x1E69D20D8], v0);
  v15 = *MEMORY[0x1E69D20E0];
  v16 = OUTLINED_FUNCTION_140_4(9 * v4);
  v8(v16);
  (v8)(v7 + 10 * v4, *MEMORY[0x1E69D2100], v0);
  result = sub_1DC3E2EF8(v6);
  qword_1ECC8F9D0 = result;
  return result;
}

void sub_1DC3DB448()
{
  OUTLINED_FUNCTION_33();
  v419 = v0;
  v416 = v1;
  v436 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v436);
  v410 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v435 = v6;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v439 = v8;
  OUTLINED_FUNCTION_12();
  v437 = sub_1DC51179C();
  v9 = OUTLINED_FUNCTION_0(v437);
  v409 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v434 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v440 = v15;
  OUTLINED_FUNCTION_12();
  v438 = sub_1DC51164C();
  v16 = OUTLINED_FUNCTION_0(v438);
  v425 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v421 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v441 = v22;
  OUTLINED_FUNCTION_12();
  v23 = sub_1DC51122C();
  v24 = OUTLINED_FUNCTION_0(v23);
  v431 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v433 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_1();
  v427 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_1();
  v428 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  v429 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  v430 = v36;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  v442 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v40 = OUTLINED_FUNCTION_10(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v404 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  v407 = v45;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  v408 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  v422 = v49;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_62();
  v426 = v51;
  OUTLINED_FUNCTION_12();
  v420 = sub_1DC5157EC();
  v52 = OUTLINED_FUNCTION_0(v420);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_15();
  v402 = v57;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  v443 = v59;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_23_1();
  v396 = v61;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  v400 = v63;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  v405 = v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_1();
  v397 = v67;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_23_1();
  v401 = v69;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_23_1();
  v398 = v71;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  v403 = v73;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_23_1();
  v399 = v75;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_23_1();
  v406 = v77;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_62();
  v411 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v391 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v391 - v90;
  v92 = OUTLINED_FUNCTION_12();
  v93 = type metadata accessor for NLRouterNLParseResponse(v92);
  v94 = OUTLINED_FUNCTION_35(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_2_1();
  v417 = v97;
  OUTLINED_FUNCTION_12();
  v98 = sub_1DC516F5C();
  v99 = OUTLINED_FUNCTION_0(v98);
  v414 = v100;
  v415 = v99;
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_1();
  v105 = v104 - v103;
  v106 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v107 = sub_1DC2BE518();
  v108 = OUTLINED_FUNCTION_130();
  v413 = v105;
  v109 = v105;
  v110 = v419;
  v418 = v106;
  sub_1DC2A2ED0("HeuristicRules.MessageRule", 26, 2, v107, v108 & 1, v109);

  v111 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v110 + *(v111 + 32), v85, &qword_1ECC7C158, &unk_1DC5234A0);
  v432 = 0;
  v112 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v85, 1, v112);
  if (v116)
  {
    sub_1DC28EB30(v85, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v93);
LABEL_6:
    sub_1DC28EB30(v91, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v420);
    v121 = v414;
    v120 = v415;
    v122 = v413;
LABEL_109:
    v264 = sub_1DC2BE518();
    sub_1DC2B8848();

    (*(v121 + 8))(v122, v120);
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC28F358(v85, v91, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v85, type metadata accessor for NLRouterTurnProbingResult);
  OUTLINED_FUNCTION_39(v91, 1, v93);
  if (v116)
  {
    goto LABEL_6;
  }

  v392 = v111;
  sub_1DC2E53A4(v91, v417);
  v123 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  v124 = *(v54 + 16);
  v394 = v54 + 16;
  v395 = v123;
  isa = v420;
  v393 = v124;
  v124(v411, (v110 + v123), v420);
  v412 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v126 = v412;
  sub_1DC343440();
  OUTLINED_FUNCTION_84_6();
  OUTLINED_FUNCTION_126_1();
  if (v127)
  {
    v129 = v126 == v128;
  }

  else
  {
    v129 = 0;
  }

  v423 = v54;
  v424 = v23;
  if (v129)
  {

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_52_12();
  OUTLINED_FUNCTION_91_2();

  if (v85)
  {
    goto LABEL_19;
  }

  sub_1DC343440();
  sub_1DC312F68();
  OUTLINED_FUNCTION_43_0();
  if (v116)
  {
    v134 = v426;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, isa);
LABEL_18:
    sub_1DC28EB30(v134, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_19;
  }

  v134 = v426;
  sub_1DC312E7C(v130, v426);
  v135 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v135, v136, isa);
  if (v137)
  {
    goto LABEL_18;
  }

  v265 = *(v54 + 32);
  v54 += 32;
  v265(v406, v134, isa);
  OUTLINED_FUNCTION_13_22();
  v426 = v266;
  OUTLINED_FUNCTION_102_4();
  do
  {
    if (isa == v23)
    {
      OUTLINED_FUNCTION_75_5();
      v375 = *(v374 + 8);
      OUTLINED_FUNCTION_129_1();
      v376();
      v110 = v419;
      v23 = v424;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_142_2();
    if (v267)
    {
      goto LABEL_148;
    }

    v268 = v91[80];
    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_101_1(v269);
    v85 = v442;
    v270(v442);
    v271 = OUTLINED_FUNCTION_165_2();
    sub_1DC3DD07C(v271, v272, v273, v274, v275, v276, v277, v278, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
    OUTLINED_FUNCTION_149_0();

    v279 = OUTLINED_FUNCTION_100_3();
    v280(v279);
  }

  while ((v107 & 1) == 0);
  v91 = sub_1DC517B9C();
  v281 = sub_1DC2BE518();
  isa = v420;
  v393(v399, v406, v420);
  if (os_log_type_enabled(v281, v91))
  {
    OUTLINED_FUNCTION_140();
    v282 = OUTLINED_FUNCTION_83_5();
    OUTLINED_FUNCTION_135_1(v282);
    *v85 = 136315394;
    v283 = OUTLINED_FUNCTION_77_5();
    v284 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v283);
    OUTLINED_FUNCTION_162_4(v284, v285);
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_63_9();
    OUTLINED_FUNCTION_123_0();
    v286 = OUTLINED_FUNCTION_20_15();
    v287(v286);
    OUTLINED_FUNCTION_86_4();
    OUTLINED_FUNCTION_168_2();
    *(v85 + 14) = v110;
    OUTLINED_FUNCTION_157(&dword_1DC287000, v288, v289, "[MessageRule] triggered by isSendAudioMessage. Updating routing from %s to %s");
    OUTLINED_FUNCTION_62_11();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_66();

    v290 = v419;
  }

  else
  {

    v383 = OUTLINED_FUNCTION_20_15();
    v384(v383);
    v290 = v419;
    v110 = v411;
  }

  OUTLINED_FUNCTION_142();
  (*(v23 + 40))(v110, v406, isa);
  v54 = v23;
  v23 = v424;
  v110 = v290;
LABEL_19:
  v138 = v412;
  sub_1DC34461C();
  OUTLINED_FUNCTION_84_6();
  OUTLINED_FUNCTION_126_1();
  if (v116)
  {
    v140 = v138 == v139;
  }

  else
  {
    v140 = 0;
  }

  if (v140)
  {

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_52_12();
  OUTLINED_FUNCTION_91_2();

  if (v85)
  {
    goto LABEL_31;
  }

  sub_1DC34461C();
  sub_1DC312F68();
  OUTLINED_FUNCTION_43_0();
  if (v116)
  {
    v145 = v422;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, isa);
LABEL_30:
    sub_1DC28EB30(v145, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_31;
  }

  v145 = v422;
  sub_1DC312E7C(v141, v422);
  v146 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v146, v147, isa);
  if (v148)
  {
    goto LABEL_30;
  }

  v291 = *(v54 + 32);
  v54 += 32;
  v291(v403, v145, isa);
  OUTLINED_FUNCTION_13_22();
  v442 = v292;
  OUTLINED_FUNCTION_102_4();
  do
  {
    if (isa == v23)
    {
      OUTLINED_FUNCTION_75_5();
      v378 = *(v377 + 8);
      OUTLINED_FUNCTION_129_1();
      v379();
      v110 = v419;
      v23 = v424;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_142_2();
    if (v267)
    {
      goto LABEL_149;
    }

    v293 = v91[80];
    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_101_1(v294);
    v85 = v430;
    v295 = OUTLINED_FUNCTION_99_2();
    v296(v295);
    v297 = OUTLINED_FUNCTION_165_2();
    sub_1DC3DDA34(v297, v298, v299, v300, v301, v302, v303, v304, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
    OUTLINED_FUNCTION_149_0();

    v305 = OUTLINED_FUNCTION_100_3();
    v306(v305);
  }

  while ((v107 & 1) == 0);
  v91 = sub_1DC517B9C();
  v307 = sub_1DC2BE518();
  isa = v420;
  v393(v398, v403, v420);
  if (os_log_type_enabled(v307, v91))
  {
    OUTLINED_FUNCTION_140();
    v308 = OUTLINED_FUNCTION_83_5();
    OUTLINED_FUNCTION_135_1(v308);
    *v85 = 136315394;
    v309 = OUTLINED_FUNCTION_77_5();
    v310 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v309);
    OUTLINED_FUNCTION_162_4(v310, v311);
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_63_9();
    OUTLINED_FUNCTION_123_0();
    v312 = OUTLINED_FUNCTION_20_15();
    v313(v312);
    OUTLINED_FUNCTION_86_4();
    OUTLINED_FUNCTION_168_2();
    *(v85 + 14) = v110;
    OUTLINED_FUNCTION_157(&dword_1DC287000, v314, v315, "[MessageRule] triggered by isReadSummariseMessage. Updating routing from %s to %s");
    OUTLINED_FUNCTION_62_11();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_66();

    v316 = v419;
  }

  else
  {

    v385 = OUTLINED_FUNCTION_20_15();
    v386(v385);
    v316 = v419;
    v110 = v411;
  }

  OUTLINED_FUNCTION_142();
  (*(v23 + 40))(v110, v403, isa);
  v54 = v23;
  v23 = v424;
  v110 = v316;
LABEL_31:
  v149 = v412;
  sub_1DC3446F8();
  OUTLINED_FUNCTION_84_6();
  OUTLINED_FUNCTION_126_1();
  if (v116)
  {
    v151 = v149 == v150;
  }

  else
  {
    v151 = 0;
  }

  if (v151)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_12();
    OUTLINED_FUNCTION_91_2();

    if ((v85 & 1) == 0)
    {
      sub_1DC3446F8();
      sub_1DC312F68();
      OUTLINED_FUNCTION_43_0();
      if (v116)
      {
        v156 = v408;
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v153, v154, v155, isa);
      }

      else
      {
        v156 = v408;
        sub_1DC312E7C(v152, v408);
        v157 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v157, v158, isa);
        if (!v159)
        {
          v317 = *(v54 + 32);
          v54 += 32;
          v317(v401, v156, isa);
          OUTLINED_FUNCTION_13_22();
          v442 = v318;
          OUTLINED_FUNCTION_102_4();
          do
          {
            if (isa == v23)
            {
              OUTLINED_FUNCTION_75_5();
              v381 = *(v380 + 8);
              OUTLINED_FUNCTION_129_1();
              v382();
              v110 = v419;
              v23 = v424;
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_142_2();
            if (v267)
            {
              goto LABEL_150;
            }

            v319 = v91[80];
            OUTLINED_FUNCTION_23_21();
            OUTLINED_FUNCTION_101_1(v320);
            v85 = v429;
            v321 = OUTLINED_FUNCTION_99_2();
            v322(v321);
            v323 = OUTLINED_FUNCTION_165_2();
            sub_1DC3DE3B4(v323, v324, v325, v326, v327, v328, v329, v330, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
            OUTLINED_FUNCTION_149_0();

            v331 = OUTLINED_FUNCTION_100_3();
            v332(v331);
          }

          while ((v107 & 1) == 0);
          sub_1DC517B9C();
          v333 = OUTLINED_FUNCTION_160_1();
          v334 = v420;
          v393(v397, v401, v420);
          if (os_log_type_enabled(v333, v107))
          {
            OUTLINED_FUNCTION_140();
            v335 = OUTLINED_FUNCTION_83_5();
            OUTLINED_FUNCTION_135_1(v335);
            *v85 = 136315394;
            v336 = v411;
            v337 = OUTLINED_FUNCTION_36_7();
            v430 = v333;
            v338 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v337);
            OUTLINED_FUNCTION_162_4(v338, v339);
            LODWORD(v429) = v107;
            OUTLINED_FUNCTION_99_1();
            OUTLINED_FUNCTION_63_9();
            OUTLINED_FUNCTION_123_0();
            OUTLINED_FUNCTION_75_5();
            v341 = *(v340 + 8);
            v342 = OUTLINED_FUNCTION_153_2();
            v341(v342);
            OUTLINED_FUNCTION_86_4();
            OUTLINED_FUNCTION_168_2();
            *(v85 + 14) = v336;
            v107 = v430;
            _os_log_impl(&dword_1DC287000, v430, v429, "[MessageRule] triggered by isCheckRequestSummariseMessageWithQuery with stringContent/subject. Updating routing from %s to %s", v85, 0x16u);
            OUTLINED_FUNCTION_62_11();
            OUTLINED_FUNCTION_42();
            v343 = v341;
            OUTLINED_FUNCTION_66();

            v344 = v419;
          }

          else
          {

            OUTLINED_FUNCTION_75_5();
            v343 = *(v387 + 8);
            v388 = OUTLINED_FUNCTION_153_2();
            v343(v388);
            v344 = v419;
            v336 = v411;
          }

          OUTLINED_FUNCTION_36_7();
          OUTLINED_FUNCTION_149_2();
          v389 = v401;
          sub_1DC32DE40();
          (v343)(v389, v334);
          OUTLINED_FUNCTION_142();
          (*(v54 + 40))(v336, v107, v334);
          v23 = v424;
          v110 = v344;
          isa = v334;
          goto LABEL_55;
        }
      }

      sub_1DC28EB30(v156, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_43:
  v160 = v412;
  sub_1DC3447D4();
  OUTLINED_FUNCTION_84_6();
  OUTLINED_FUNCTION_126_1();
  if (v116)
  {
    v162 = v160 == v161;
  }

  else
  {
    v162 = 0;
  }

  if (v162)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_12();
    OUTLINED_FUNCTION_91_2();

    if ((v85 & 1) == 0)
    {
      sub_1DC3447D4();
      sub_1DC312F68();
      OUTLINED_FUNCTION_43_0();
      if (v116)
      {
        v167 = v407;
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v164, v165, v166, isa);
      }

      else
      {
        v167 = v407;
        sub_1DC312E7C(v163, v407);
        v168 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v168, v169, isa);
        if (!v170)
        {
          v345 = *(v54 + 32);
          v346 = isa;
          isa = v400;
          OUTLINED_FUNCTION_26_1();
          v347();
          v348 = v405;
          (*(v54 + 104))(v405, *MEMORY[0x1E69D02F8], v346);
          v349 = sub_1DC5157DC();
          v352 = *(v54 + 8);
          v351 = (v54 + 8);
          v350 = v352;
          (v352)(v348, v346);
          if (v349)
          {
            v429 = v350;
            v430 = v351;
            OUTLINED_FUNCTION_13_22();
            v442 = v353;
            v354 = v431;
            v355 = v424;
            do
            {
              if (isa == v23)
              {
                OUTLINED_FUNCTION_129_1();
                v429();
                v110 = v419;
                v54 = v423;
                goto LABEL_146;
              }

              OUTLINED_FUNCTION_142_2();
              if (v267)
              {
                goto LABEL_151;
              }

              v356 = *(v354 + 80);
              OUTLINED_FUNCTION_23_21();
              v357 = *(v354 + 72);
              v358 = *(v354 + 16);
              v359 = v428;
              v360 = OUTLINED_FUNCTION_99_2();
              v361(v360);
              v362 = OUTLINED_FUNCTION_165_2();
              sub_1DC3DF7B4(v362, v363, v364, v365, v366, v367, v368, v369, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
              OUTLINED_FUNCTION_149_0();

              (*(v354 + 8))(v359, v355);
            }

            while ((v346 & 1) == 0);
            sub_1DC517B9C();
            v212 = OUTLINED_FUNCTION_160_1();
            v180 = v396;
            isa = v400;
            v23 = v420;
            v393(v396, v400, v420);
            if (os_log_type_enabled(v212, v346))
            {
              OUTLINED_FUNCTION_140();
              v370 = OUTLINED_FUNCTION_83_5();
              OUTLINED_FUNCTION_135_1(v370);
              *v359 = 136315394;
              v371 = OUTLINED_FUNCTION_77_5();
              v372 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v371);
              OUTLINED_FUNCTION_162_4(v372, v373);
              OUTLINED_FUNCTION_99_1();
              OUTLINED_FUNCTION_63_9();
              OUTLINED_FUNCTION_123_0();
              v54 = v429;
              (v429)(v180, v23);
              OUTLINED_FUNCTION_86_4();
              OUTLINED_FUNCTION_168_2();
              *(v359 + 14) = v348;
              _os_log_impl(&dword_1DC287000, v212, v346, "[MessageRule] triggered by isCheckRequestSummariseMessageWithoutQuery without stringContent/subject. Updating routing from %s to %s", v359, 0x16u);
              OUTLINED_FUNCTION_62_11();
              OUTLINED_FUNCTION_42();
              isa = v400;
              OUTLINED_FUNCTION_66();
            }

            else
            {
LABEL_144:

              v54 = v429;
              (v429)(v180, v23);
              v348 = v411;
            }

            OUTLINED_FUNCTION_36_7();
            OUTLINED_FUNCTION_149_2();
            sub_1DC32DE40();
            (v54)(isa, v23);
            OUTLINED_FUNCTION_142();
            OUTLINED_FUNCTION_75_5();
            (*(v390 + 40))(v348, v346, v23);
            v110 = v419;
            isa = v23;
LABEL_146:
            v23 = v424;
          }

          else
          {
            (v350)(isa, v346);
            v110 = v419;
            isa = v346;
            v54 = v423;
          }

          goto LABEL_55;
        }
      }

      sub_1DC28EB30(v167, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_55:
  v171 = (v110 + v395);
  v172 = v443;
  v393(v443, v171, isa);
  v173 = (*(v54 + 88))(v172, isa);
  v174 = *MEMORY[0x1E69D02C8];
  v401 = *(v54 + 8);
  (v401)(v172, isa);
  v400 = (v54 + 8);
  if (v173 != v174)
  {
    v180 = v438;
LABEL_80:
    v185 = v421;
    goto LABEL_81;
  }

  v175 = sub_1DC345ED0();
  v177 = v176;
  v179 = v175 == sub_1DC313520(1) && v177 == v178;
  v180 = v438;
  if (v179)
  {
  }

  else
  {
    v181 = sub_1DC51825C();

    if ((v181 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v182 = 0;
  v183 = *v417;
  v407 = v431 + 16;
  v430 = (v425 + 16);
  v408 = *(v183 + 16);
  v184 = (v425 + 8);
  v428 = v410 + 8;
  v429 = (v409 + 8);
  v406 = (v431 + 8);
  v185 = v421;
  v186 = v441;
  v403 = v183;
  v442 = (v425 + 8);
  while (1)
  {
    if (v182 == v408)
    {
      v180 = v438;
LABEL_81:
      v346 = 0;
      v211 = *v417;
      v442 = (v425 + 16);
      v428 = *(v211 + 16);
      v439 = (v409 + 8);
      v434 = (v410 + 8);
      v441 = (v425 + 8);
      v426 = v431 + 16;
      v427 = v431 + 8;
      v212 = v437;
      v422 = v211;
      while (v346 != v428)
      {
        if (v346 >= *(v211 + 16))
        {
          __break(1u);
          goto LABEL_144;
        }

        v213 = *(v431 + 80);
        OUTLINED_FUNCTION_23_21();
        (*(v215 + 16))(v433, v214 + *(v215 + 72) * v346, v23);
        v216 = sub_1DC5111AC();
        isa = v216[2].isa;
        if (isa)
        {
          v429 = v346;
          v430 = v216;
          v217 = *(v425 + 80);
          OUTLINED_FUNCTION_24();
          v220 = v218 + v219;
          v443 = *(v221 + 72);
          v222 = *(v221 + 16);
          while (1)
          {
            v222(v185, v220, v180);
            v223 = v185;
            if (sub_1DC5114CC())
            {
              v224 = v440;
              sub_1DC51154C();
              v225 = sub_1DC51177C();
              v226 = *v439;
              (*v439)(v224, v212);
              if (v225)
              {
                type metadata accessor for NLRouterBypassUtils();
                v227 = v440;
                OUTLINED_FUNCTION_163_1();
                v228 = v435;
                sub_1DC51178C();
                v229 = v227;
                v180 = v438;
                v226(v229, v437);
                v230 = sub_1DC307E5C();
                v231 = v228;
                v212 = v437;
                (*v434)(v231, v436);
                if (v230)
                {
                  break;
                }
              }
            }

            v232 = *v441;
            v233 = OUTLINED_FUNCTION_78_6();
            v234(v233);
            v220 += v443;
            --isa;
            v185 = v223;
            if (!isa)
            {

              v54 = v423;
              v23 = v424;
LABEL_91:
              v346 = v429;
              v211 = v422;
              goto LABEL_93;
            }
          }

          sub_1DC51478C();

          v237 = *v441;
          v238 = OUTLINED_FUNCTION_78_6();
          v239(v238);
          v444[0] = v444[2];
          v444[1] = v445;
          if (!*(&v445 + 1))
          {
            sub_1DC28EB30(v444, &qword_1ECC7D3F0, &qword_1DC5238B0);

            v54 = v423;
            v23 = v424;
            v185 = v421;
            goto LABEL_91;
          }

          sub_1DC514A0C();
          v240 = swift_dynamicCast();
          v54 = v423;
          v23 = v424;
          v346 = v429;
          v211 = v422;
          if (v240)
          {

            v241 = OUTLINED_FUNCTION_132_2();
            v242(v241);
            if (sub_1DC307DE8(*(v419 + *(v392 + 24))))
            {
              sub_1DC517B9C();
              v243 = OUTLINED_FUNCTION_160_1();
              OUTLINED_FUNCTION_62_1();
              sub_1DC516F0C();

              OUTLINED_FUNCTION_36_7();
              OUTLINED_FUNCTION_149_2();
              sub_1DC32CDF4();
              OUTLINED_FUNCTION_142();
              v244 = OUTLINED_FUNCTION_145_4(v54);
              v245(v244);
            }

            break;
          }

          v185 = v421;
        }

        else
        {
        }

LABEL_93:
        ++v346;
        v235 = OUTLINED_FUNCTION_132_2();
        v236(v235);
      }

      v246 = sub_1DC3448B0();
      v254 = v416;
      v255 = v420;
      v256 = v411;
      if (v246)
      {
        v257 = v404;
        sub_1DC3E0BB4(v417, v247, v248, v249, v250, v251, v252, v253, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402);
        v258 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v258, v259, v255);
        if (v116)
        {
          sub_1DC28EB30(v257, &qword_1ECC7CA40, &unk_1DC5233A0);
        }

        else
        {
          v260 = v402;
          (*(v54 + 32))(v402, v257, v255);
          OUTLINED_FUNCTION_36_7();
          v261 = v405;
          sub_1DC32DE40();
          (v401)(v260, v255);
          OUTLINED_FUNCTION_142();
          (*(v54 + 40))(v256, v261, v255);
        }
      }

      OUTLINED_FUNCTION_36_7();
      v262 = sub_1DC5157DC();
      sub_1DC2E5408(v417, type metadata accessor for NLRouterNLParseResponse);
      if (v262)
      {
        v263 = 1;
      }

      else
      {
        v393(v254, v256, v255);
        v263 = 0;
      }

      v121 = v414;
      v120 = v415;
      v122 = v413;
      __swift_storeEnumTagSinglePayload(v254, v263, 1, v255);
      (v401)(v256, v255);
      goto LABEL_109;
    }

    if (v182 >= *(v183 + 16))
    {
      break;
    }

    v187 = *(v431 + 80);
    OUTLINED_FUNCTION_24();
    v191 = *(v190 + 72);
    v426 = v182;
    (*(v190 + 16))(v427, v189 + v188 + v191 * v182, v23);
    isa = *(sub_1DC5111AC() + 16);
    if (isa)
    {
      v192 = *(v425 + 80);
      OUTLINED_FUNCTION_24();
      v422 = v193;
      v195 = v193 + v194;
      v197 = *(v196 + 72);
      v198 = *(v196 + 16);
      v199 = v429;
      v443 = v198;
      while (1)
      {
        v198(v186, v195, v438);
        if (sub_1DC5114CC())
        {
          v200 = v440;
          sub_1DC51154C();
          v201 = sub_1DC51177C();
          v202 = *v199;
          v203 = v200;
          v204 = v437;
          (*v199)(v203, v437);
          if (v201)
          {
            v205 = v434;
            sub_1DC51154C();
            sub_1DC51178C();
            v202(v205, v204);
            v206 = v432;
            sub_1DC5138FC();
            if (!v206)
            {
              v432 = 0;
              v209 = OUTLINED_FUNCTION_127_2();
              v210(v209);
              sub_1DC3E1F44();
              OUTLINED_FUNCTION_149_0();

              v186 = v441;
              v184 = v442;
              (*v442)(v441, v438);
              v199 = v429;
              v198 = v443;
              goto LABEL_74;
            }

            v207 = OUTLINED_FUNCTION_127_2();
            v208(v207);
            v432 = 0;
            v186 = v441;
            v199 = v429;
          }

          v184 = v442;
          v198 = v443;
        }

        (*v184)(v186, v438);
LABEL_74:
        v195 += v197;
        if (!--isa)
        {

          v54 = v423;
          v23 = v424;
          v185 = v421;
          goto LABEL_78;
        }
      }
    }

LABEL_78:
    v182 = v426 + 1;
    (*v406)(v427, v23);
    v183 = v403;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void sub_1DC3DD07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1DC514BFC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v30);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C258, &qword_1DC523078);
  OUTLINED_FUNCTION_35(v135);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_20_0(&v118 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C260, &unk_1DC523080);
  v36 = OUTLINED_FUNCTION_10(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  v141 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  v146 = v45;
  OUTLINED_FUNCTION_12();
  v126 = sub_1DC510FDC();
  v46 = OUTLINED_FUNCTION_0(v126);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v51);
  v127 = sub_1DC51179C();
  v52 = OUTLINED_FUNCTION_0(v127);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_1();
  v59 = v58 - v57;
  v118 = sub_1DC51164C();
  v60 = OUTLINED_FUNCTION_0(v118);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_1();
  v67 = v66 - v65;
  v68 = *(v23 + 16);
  if (!v68)
  {
LABEL_44:
    OUTLINED_FUNCTION_34();
    return;
  }

  v122 = v41;
  v69 = 0;
  v71 = *(v62 + 16);
  v70 = v62 + 16;
  v72 = *(v70 + 64);
  OUTLINED_FUNCTION_24();
  v144 = v23 + v73;
  v145 = v74;
  v142 = v70 - 8;
  v138 = (v54 + 8);
  v123 = v48 + 8;
  v134 = *MEMORY[0x1E69D20A8];
  v133 = v27 + 104;
  OUTLINED_FUNCTION_141_2(v27 + 32);
  v143 = *(v70 + 56);
  v75 = v118;
  OUTLINED_FUNCTION_91_3();
  v139 = v24;
  v140 = v59;
  v136 = v68;
  v137 = v70;
  while (1)
  {
    v145(v67, v144 + v143 * v69, v75);
    if (sub_1DC5114CC())
    {
      break;
    }

    v108 = OUTLINED_FUNCTION_38_11();
    v109(v108, v75);
LABEL_41:
    if (++v69 == v68)
    {
      goto LABEL_44;
    }
  }

  sub_1DC51154C();
  v76 = sub_1DC51177C();
  v77 = *v138;
  (*v138)(v59, v23);
  if ((v76 & 1) == 0)
  {
    v110 = OUTLINED_FUNCTION_38_11();
    v111(v110, v75);
LABEL_40:
    v68 = v136;
    goto LABEL_41;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  v78 = v125;
  sub_1DC51178C();
  v77(v59, v23);
  v79 = sub_1DC307E5C();
  OUTLINED_FUNCTION_37(&v152);
  v80(v78, v126);
  if (!v79)
  {
LABEL_35:
    v112 = OUTLINED_FUNCTION_38_11();
    v113(v112, v75);
    OUTLINED_FUNCTION_91_3();
    v59 = v140;
    goto LABEL_40;
  }

  sub_1DC51478C();

  sub_1DC28F358(&v150, v148, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v23 = v124;
  if (!v149[1])
  {
    sub_1DC28EB30(v148, &qword_1ECC7D3F0, &qword_1DC5238B0);

    sub_1DC28EB30(&v150, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_35;
  }

  v120 = v79;
  sub_1DC51497C();
  v81 = swift_dynamicCast();
  v59 = v140;
  if (!v81)
  {
    OUTLINED_FUNCTION_86();
    goto LABEL_38;
  }

  v82 = v147;

  sub_1DC51475C();

  if (!v148[0] || (v83 = sub_1DC51476C(), , !v83))
  {
    OUTLINED_FUNCTION_86();

LABEL_38:

    sub_1DC28EB30(&v150, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v114 = OUTLINED_FUNCTION_38_11();
LABEL_39:
    v115(v114, v75);
    OUTLINED_FUNCTION_91_3();
    goto LABEL_40;
  }

  v132 = sub_1DC2C20B8(v83);
  v84 = 0;
  v131 = v83 & 0xC000000000000001;
  v130 = v83 & 0xFFFFFFFFFFFFFF8;
  v129 = v82;
  for (i = v83; ; v83 = i)
  {
    if (v132 == v84)
    {
      OUTLINED_FUNCTION_86();

      sub_1DC28EB30(&v150, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v114 = OUTLINED_FUNCTION_38_11();
      v75 = v118;
      goto LABEL_39;
    }

    if (v131)
    {
      MEMORY[0x1E1296800](v84, v83);
    }

    else
    {
      if (v84 >= *(v130 + 16))
      {
        goto LABEL_47;
      }

      v85 = *(v83 + 8 * v84 + 32);
    }

    if (__OFADD__(v84, 1))
    {
      break;
    }

    sub_1DC5146BC();
    if (v148[0] && (sub_1DC5148CC(), OUTLINED_FUNCTION_10_15(), v77))
    {
      sub_1DC514BEC();

      v77 = v139;
    }

    else
    {
      OUTLINED_FUNCTION_19();
      v77 = v139;
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v139);
    }

    OUTLINED_FUNCTION_37(&a17);
    v89 = v141;
    v90(v141, v134, v77);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v77);
    v94 = *(v135 + 48);
    sub_1DC28F358(v146, v23, &qword_1ECC7C260, &unk_1DC523080);
    sub_1DC28F358(v89, v23 + v94, &qword_1ECC7C260, &unk_1DC523080);
    OUTLINED_FUNCTION_39(v23, 1, v77);
    if (v101)
    {

      sub_1DC28EB30(v141, &qword_1ECC7C260, &unk_1DC523080);
      sub_1DC28EB30(v146, &qword_1ECC7C260, &unk_1DC523080);
      v95 = OUTLINED_FUNCTION_143_1();
      OUTLINED_FUNCTION_39(v95, v96, v77);
      v59 = v140;
      if (v101)
      {
        sub_1DC28EB30(v23, &qword_1ECC7C260, &unk_1DC523080);
LABEL_45:
        OUTLINED_FUNCTION_86();

        OUTLINED_FUNCTION_78();

        sub_1DC28EB30(&v150, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v116 = OUTLINED_FUNCTION_38_11();
        v117(v116, v118);
        goto LABEL_44;
      }

      goto LABEL_28;
    }

    v97 = v141;
    v98 = v122;
    sub_1DC28F358(v23, v122, &qword_1ECC7C260, &unk_1DC523080);
    v99 = OUTLINED_FUNCTION_143_1();
    OUTLINED_FUNCTION_39(v99, v100, v77);
    if (v101)
    {

      sub_1DC28EB30(v97, &qword_1ECC7C260, &unk_1DC523080);
      sub_1DC28EB30(v146, &qword_1ECC7C260, &unk_1DC523080);
      OUTLINED_FUNCTION_37(&v151);
      v102(v98, v77);
      v59 = v140;
LABEL_28:
      sub_1DC28EB30(v23, &qword_1ECC7C258, &qword_1DC523078);
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_37(v149);
    v103 = v23 + v94;
    v104 = v119;
    v105(v119, v103, v77);
    sub_1DC3E323C(&qword_1ECC7C268, MEMORY[0x1E69D2110]);
    v106 = sub_1DC5176CC();

    v77 = *v121;
    v107 = v104;
    v23 = v124;
    (*v121)(v107, v139);
    sub_1DC28EB30(v97, &qword_1ECC7C260, &unk_1DC523080);
    sub_1DC28EB30(v146, &qword_1ECC7C260, &unk_1DC523080);
    v77(v98, v139);
    sub_1DC28EB30(v23, &qword_1ECC7C260, &unk_1DC523080);
    v59 = v140;
    if (v106)
    {
      goto LABEL_45;
    }

LABEL_30:
    ++v84;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_1DC3DDA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v154 = sub_1DC5149BC();
  v24 = OUTLINED_FUNCTION_0(v154);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v29);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35(v150);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_20_0(v144 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v35 = OUTLINED_FUNCTION_10(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_8();
  v40 = v38 - v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = v144 - v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v45);
  v158 = sub_1DC510FDC();
  v46 = OUTLINED_FUNCTION_0(v158);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_1();
  v157 = v51;
  OUTLINED_FUNCTION_12();
  v162 = sub_1DC51179C();
  v52 = OUTLINED_FUNCTION_0(v162);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_1();
  v59 = v58 - v57;
  v60 = sub_1DC51164C();
  v61 = OUTLINED_FUNCTION_0(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_1();
  v67 = v66 - v65;
  v68 = *(v23 + 16);
  if (!v68)
  {
    goto LABEL_28;
  }

  v152 = v44;
  v151 = v40;
  v163 = *(v64 + 16);
  v69 = *(v64 + 80);
  OUTLINED_FUNCTION_24();
  v71 = v23 + v70;
  v73 = v72 - 8;
  v161 = (v54 + 8);
  v156 = v48 + 8;
  v148 = *MEMORY[0x1E69D1D40];
  v147 = v26 + 104;
  OUTLINED_FUNCTION_141_2(v26 + 32);
  v75 = *(v74 + 56);
  v76 = v74;
  v160 = v75;
  v146 = v74;
  while (1)
  {
    v163(v67, v71, v60);
    if (sub_1DC5114CC())
    {
      break;
    }

    v90 = OUTLINED_FUNCTION_30_16();
    v91(v90);
LABEL_17:
    v71 += v75;
    if (!--v68)
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_163_1();
  v77 = sub_1DC51177C();
  v78 = *v161;
  (*v161)(v59, v162);
  if ((v77 & 1) == 0)
  {
    goto LABEL_12;
  }

  type metadata accessor for NLRouterBypassUtils();
  OUTLINED_FUNCTION_163_1();
  v159 = v68;
  v79 = v67;
  v80 = v73;
  v81 = v60;
  v82 = v76;
  v83 = v157;
  sub_1DC51178C();
  v78(v59, v162);
  v84 = sub_1DC307E5C();
  OUTLINED_FUNCTION_37(&a18);
  v85 = v83;
  v76 = v82;
  v60 = v81;
  v73 = v80;
  v67 = v79;
  v68 = v159;
  v86(v85, v158);
  if (!v84)
  {
LABEL_12:
    v92 = OUTLINED_FUNCTION_30_16();
    v93(v92);
LABEL_13:
    v75 = v160;
    goto LABEL_17;
  }

  sub_1DC51478C();

  sub_1DC28F358(&v168, v167, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v167[3])
  {

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v94, v95, v96);
    v97 = OUTLINED_FUNCTION_30_16();
    v98(v97);
LABEL_16:
    v75 = v160;
    sub_1DC28EB30(v167, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_17;
  }

  sub_1DC28F358(v167, v166, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC51493C();
  if (!swift_dynamicCast())
  {

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v99, v100, v101);
    v102 = OUTLINED_FUNCTION_30_16();
    v103(v102);
    __swift_destroy_boxed_opaque_existential_1Tm(v166);
    goto LABEL_16;
  }

  v87 = v165;

  sub_1DC5148BC();
  v149 = v87;

  if (v164 && (v88 = sub_1DC51477C(), , v88))
  {
    sub_1DC5149AC();

    v89 = v154;
  }

  else
  {
    v104 = OUTLINED_FUNCTION_28_14(&a17);
    v89 = v154;
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v154);
  }

  OUTLINED_FUNCTION_37(&v170);
  v107 = v152;
  v108(v152, v148, v89);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v89);
  v112 = *(v150 + 48);
  v113 = OUTLINED_FUNCTION_34_3();
  v114 = v155;
  sub_1DC28F358(v113, v155, &qword_1ECC7C200, &qword_1DC523020);
  v153 = v112;
  sub_1DC28F358(v107, v114 + v112, &qword_1ECC7C200, &qword_1DC523020);
  v115 = v114;
  v116 = v154;
  OUTLINED_FUNCTION_39(v115, 1, v154);
  if (v126)
  {

    sub_1DC28EB30(v107, &qword_1ECC7C200, &qword_1DC523020);
    v117 = OUTLINED_FUNCTION_34_3();
    sub_1DC28EB30(v117, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28EB30(&v168, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v118 = OUTLINED_FUNCTION_30_16();
    v119(v118);
    v120 = v155;
    v121 = OUTLINED_FUNCTION_29_6(&a14);
    OUTLINED_FUNCTION_39(v121, v122, v123);
    v124 = v120;
    v76 = v146;
    if (!v126)
    {
      goto LABEL_30;
    }

    sub_1DC28EB30(v120, &qword_1ECC7C200, &qword_1DC523020);
    goto LABEL_27;
  }

  v125 = v155;
  sub_1DC28F358(v155, v151, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_39(v125 + v153, 1, v116);
  v76 = v146;
  if (!v126)
  {
    OUTLINED_FUNCTION_37(&v168);
    v127 = v145;
    v128(v145, v125 + v153, v116);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v129);
    OUTLINED_FUNCTION_11_23(&a12);
    LODWORD(v153) = sub_1DC5176CC();

    v149 = *v144[2];
    v149(v127, v116);
    v130 = OUTLINED_FUNCTION_69_7();
    sub_1DC28EB30(v130, &qword_1ECC7C200, &qword_1DC523020);
    v131 = OUTLINED_FUNCTION_34_3();
    sub_1DC28EB30(v131, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28EB30(&v168, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v132 = OUTLINED_FUNCTION_30_16();
    v133(v132);
    v134 = OUTLINED_FUNCTION_88_2(&a12);
    (v149)(v134);
    v68 = v159;
    sub_1DC28EB30(v155, &qword_1ECC7C200, &qword_1DC523020);
    if ((v153 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1Tm(v166);
    sub_1DC28EB30(v167, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_13;
  }

  v135 = OUTLINED_FUNCTION_11_23(&a13);
  sub_1DC28EB30(v135, v136, v137);
  v138 = OUTLINED_FUNCTION_11_23(&a17);
  sub_1DC28EB30(v138, v139, v140);
  sub_1DC28EB30(&v168, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v141 = OUTLINED_FUNCTION_30_16();
  v142(v141);
  OUTLINED_FUNCTION_37(&v169);
  v143(v151, v116);
  v124 = v125;
LABEL_30:
  sub_1DC28EB30(v124, &qword_1ECC7C238, &qword_1DC527190);
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1Tm(v166);
  sub_1DC28EB30(v167, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_28:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3DE3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1DC5149BC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v290 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v31);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  v32 = OUTLINED_FUNCTION_35(v282);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v43 = OUTLINED_FUNCTION_10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v57);
  v289 = sub_1DC510FDC();
  v58 = OUTLINED_FUNCTION_0(v289);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v64);
  v65 = sub_1DC51179C();
  v66 = OUTLINED_FUNCTION_0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v69);
  v70 = OUTLINED_FUNCTION_155_3();
  v71 = OUTLINED_FUNCTION_0(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v74);
  v75 = *(v25 + 16);
  if (!v75)
  {
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_53_13();
  v288 = v60 + 8;
  OUTLINED_FUNCTION_47_10(*MEMORY[0x1E69D1D40]);
  while (1)
  {
    v76 = OUTLINED_FUNCTION_134_1();
    v77(v76);
    if (sub_1DC5114CC())
    {
      break;
    }

    v84 = OUTLINED_FUNCTION_2_30();
    v85(v84);
LABEL_14:
    v25 += v26;
    if (!--v75)
    {
      goto LABEL_75;
    }
  }

  OUTLINED_FUNCTION_156_1();
  sub_1DC51177C();
  v78 = OUTLINED_FUNCTION_112_5();
  (v37)(v78);
  if ((v20 & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_2_30();
    v87(v86);
LABEL_12:
    v26 = v75;
LABEL_13:
    v75 = v290;
    goto LABEL_14;
  }

  v79 = type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  OUTLINED_FUNCTION_20_3(&a16);
  sub_1DC51178C();
  (v37)(v20, v65);
  sub_1DC307E5C();
  v80 = OUTLINED_FUNCTION_147_2();
  (v79)(v80);
  if (!v79)
  {
    v88 = OUTLINED_FUNCTION_2_30();
    v89(v88);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_119_4();
  v81 = OUTLINED_FUNCTION_133_2();
  (v37)(v81);
  OUTLINED_FUNCTION_158_1();
  if (v70)
  {

    OUTLINED_FUNCTION_34_3();

    (v79)(v79, v289);
    OUTLINED_FUNCTION_34_15();
    v82 = OUTLINED_FUNCTION_44_11();
    v83(v82);
    OUTLINED_FUNCTION_80_6();
    v65 = v21;
    v21 = v20;
LABEL_11:
    OUTLINED_FUNCTION_43_13();
    goto LABEL_12;
  }

  v90 = OUTLINED_FUNCTION_110_5();
  (v79)(v90);
  sub_1DC3E1F44();
  v26 = v75;
  if ((v91 & 1) == 0)
  {
    OUTLINED_FUNCTION_34_15();
    v20 = v284;
    v95 = OUTLINED_FUNCTION_44_11();
    v96(v95);
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_95_3();
    goto LABEL_13;
  }

  v92 = v286;

  sub_1DC51478C();

  v20 = &qword_1ECC7D3F0;
  v37 = &qword_1DC5238B0;
  sub_1DC28F358(&v300, v297, &qword_1ECC7D3F0, &qword_1DC5238B0);
  OUTLINED_FUNCTION_85_7();
  if (!v93)
  {

    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_34_15();
    v97 = OUTLINED_FUNCTION_107_4();
    v98(v97);
    OUTLINED_FUNCTION_41_8();
LABEL_24:
    OUTLINED_FUNCTION_123_3();
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_104_2();
  sub_1DC514A9C();
  OUTLINED_FUNCTION_15_14();
  v20 = MEMORY[0x1E69E7CA0];
  v65 = v21;
  if (OUTLINED_FUNCTION_118_2())
  {
    OUTLINED_FUNCTION_117_6();
    sub_1DC51392C();
    OUTLINED_FUNCTION_78_9();

    v94 = v291;
    OUTLINED_FUNCTION_92_3();
    if (v94 && (v20 = sub_1DC51477C(), , v20))
    {
      OUTLINED_FUNCTION_136_2();
      v94 = v20;
      sub_1DC5149AC();
    }

    else
    {
      OUTLINED_FUNCTION_136_2();
      OUTLINED_FUNCTION_22_14();
      __swift_storeEnumTagSinglePayload(v106, v107, v108, *(v105 - 256));
    }

    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_26_14();
    v109 = OUTLINED_FUNCTION_72_7();
    v110(v109);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v79);
    v79 = *(v282 + 48);
    OUTLINED_FUNCTION_74_6(&v303);
    sub_1DC28F358(v114, v115, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_152_1();
    sub_1DC28F358(v94, &qword_1DC5238B0 + v79, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_4_29(&qword_1DC5238B0);
    if (!v128)
    {
      OUTLINED_FUNCTION_82_5(&v303);
      OUTLINED_FUNCTION_74_6(&v299);
      sub_1DC28F358(v126, v127, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_151_2();
      OUTLINED_FUNCTION_4_29(v79 + v94);
      if (!v128)
      {
        OUTLINED_FUNCTION_18_19();
        v129 = OUTLINED_FUNCTION_6_23();
        v130(v129);
        OUTLINED_FUNCTION_0_50();
        sub_1DC3E323C(&qword_1ECC7C208, v131);
        OUTLINED_FUNCTION_16_12(&v299);
        LODWORD(v277) = sub_1DC5176CC();
        OUTLINED_FUNCTION_34_3();

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_36_17();

        OUTLINED_FUNCTION_148_1();
        OUTLINED_FUNCTION_58_11();
        (qword_1DC5238B0)();
        v132 = OUTLINED_FUNCTION_39_10(&v300);
        sub_1DC28EB30(v132, v133, &qword_1DC523020);
        v134 = OUTLINED_FUNCTION_39_10(&v302);
        sub_1DC28EB30(v134, v135, &qword_1DC523020);
        sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v136 = OUTLINED_FUNCTION_2_30();
        v137(v136);
        v138 = OUTLINED_FUNCTION_37_10(&v299);
        (qword_1DC5238B0)(v138);
        v139 = OUTLINED_FUNCTION_39_10(&v303);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_79_7();
      OUTLINED_FUNCTION_36_17();

      v242 = OUTLINED_FUNCTION_11_23(&v300);
      sub_1DC28EB30(v242, v243, v244);
      v245 = OUTLINED_FUNCTION_11_23(&v302);
      sub_1DC28EB30(v245, v246, v247);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v248 = OUTLINED_FUNCTION_2_30();
      v249(v248);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_73_6();
LABEL_78:
      v252(v250, v251);
      v158 = v79;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    v37 = &qword_1ECC7C200;
    sub_1DC28EB30(v94, &qword_1ECC7C200, &qword_1DC523020);
    v116 = OUTLINED_FUNCTION_89_4(&v302);
    sub_1DC28EB30(v116, v117, &qword_1DC523020);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v118 = OUTLINED_FUNCTION_2_30();
    v119(v118);
    v104 = v283;
    v120 = OUTLINED_FUNCTION_25_13(&v285);
LABEL_44:
    OUTLINED_FUNCTION_39(v120, v121, v122);
    v158 = v104;
    if (!v128)
    {
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_90_0();
LABEL_47:
    sub_1DC28EB30(v159, v160, v161);
LABEL_65:
    v99 = OUTLINED_FUNCTION_169_2();
    v100 = &qword_1ECC7D3F0;
    v101 = &qword_1DC5238B0;
LABEL_66:
    sub_1DC28EB30(v99, v100, v101);
    OUTLINED_FUNCTION_95_3();
    goto LABEL_14;
  }

  sub_1DC514DAC();
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_92_3();
  if (v102)
  {
    OUTLINED_FUNCTION_117_6();
    sub_1DC5148BC();
    v277 = v92;

    v103 = v291;
    OUTLINED_FUNCTION_59_8();
    if (v103 && (v79 = sub_1DC51477C(), , v79))
    {
      v104 = v79;
      sub_1DC5149AC();

      OUTLINED_FUNCTION_81_5();
    }

    else
    {
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_22_14();
      v104 = *(v142 - 256);
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v104);
    }

    OUTLINED_FUNCTION_26_14();
    v146 = OUTLINED_FUNCTION_66_9();
    v147(v146, v280, v104);
    OUTLINED_FUNCTION_12_20(v79);
    v37 = *(v148 + 48);
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_139_1();
    sub_1DC28F358(v149, v104, &qword_1ECC7C200, &qword_1DC523020);
    v150 = OUTLINED_FUNCTION_121_2();
    sub_1DC28F358(v150, v151, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_39(v152, 1, v104);
    if (v128)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v37 = &qword_1ECC7C200;
      sub_1DC28EB30(v79, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_90_0();
      sub_1DC28EB30(v153, v154, v155);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v156 = OUTLINED_FUNCTION_2_30();
      v157(v156);
      OUTLINED_FUNCTION_139_1();
      v120 = OUTLINED_FUNCTION_29_6(&v286);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_82_5(&v298);
    OUTLINED_FUNCTION_74_6(&v296);
    sub_1DC28F358(v162, v163, &qword_1ECC7C200, &qword_1DC523020);
    v164 = OUTLINED_FUNCTION_40_14();
    OUTLINED_FUNCTION_39(v164, v165, v104);
    if (v166)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v253 = OUTLINED_FUNCTION_49_11(v297);
      sub_1DC28EB30(v253, v254, &qword_1DC523020);
      v255 = OUTLINED_FUNCTION_49_11(v301);
      sub_1DC28EB30(v255, v256, &qword_1DC523020);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v257 = OUTLINED_FUNCTION_2_30();
      v258(v257);
      OUTLINED_FUNCTION_24_13();
      v250 = v37;
      v251 = v104;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_144_3();
    v167 = OUTLINED_FUNCTION_66_9();
    v168(v167);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v169);
    OUTLINED_FUNCTION_16_12(&v296);
    v278 = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_67_4();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_58_11();
    v104();
    v170 = OUTLINED_FUNCTION_39_10(v297);
    sub_1DC28EB30(v170, v171, &qword_1DC523020);
    v172 = OUTLINED_FUNCTION_39_10(v301);
    sub_1DC28EB30(v172, v173, &qword_1DC523020);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v174 = OUTLINED_FUNCTION_2_30();
    v175(v174);
    v176 = OUTLINED_FUNCTION_37_10(&v296);
    (v104)(v176);
    v177 = &v298;
    goto LABEL_63;
  }

  sub_1DC514B9C();
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_59_8();
  if (v123)
  {
    v124 = v292;

    sub_1DC514C8C();

    v125 = v291;
    OUTLINED_FUNCTION_152_1();
    if (v125 && (sub_1DC51477C(), OUTLINED_FUNCTION_10_15(), &qword_1DC5238B0))
    {
      OUTLINED_FUNCTION_159_1();
    }

    else
    {
      OUTLINED_FUNCTION_82_5(&v295);
      OUTLINED_FUNCTION_22_14();
      __swift_storeEnumTagSinglePayload(v179, v180, v181, *(v178 - 256));
    }

    OUTLINED_FUNCTION_26_14();
    v182 = OUTLINED_FUNCTION_10_22();
    v183(v182);
    OUTLINED_FUNCTION_12_20(&qword_1DC5238B0);
    v185 = OUTLINED_FUNCTION_109_4(v184);
    sub_1DC28F358(v185, v186, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_78_9();
    sub_1DC28F358(&qword_1DC5238B0, v125 + v124, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_4_29(v124);
    if (v128)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v37 = &qword_1ECC7C200;
      sub_1DC28EB30(&qword_1DC5238B0, &qword_1ECC7C200, &qword_1DC523020);
      v187 = OUTLINED_FUNCTION_89_4(&v295);
      sub_1DC28EB30(v187, v188, &qword_1DC523020);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v189 = OUTLINED_FUNCTION_2_30();
      v190(v189);
      OUTLINED_FUNCTION_61_3();
      OUTLINED_FUNCTION_4_29(v124 + v191);
      v161 = &qword_1DC523020;
      v125 = v124;
      if (!v128)
      {
        goto LABEL_82;
      }

      v159 = v124;
      v160 = &qword_1ECC7C200;
      goto LABEL_47;
    }

    v197 = OUTLINED_FUNCTION_114_2();
    sub_1DC28F358(v197, v198, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_61_3();
    OUTLINED_FUNCTION_4_29(v125 + v199);
    v37 = v277;
    if (v200)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_36_17();

      v259 = OUTLINED_FUNCTION_49_11(&v293);
      sub_1DC28EB30(v259, v260, &qword_1DC523020);
      v261 = OUTLINED_FUNCTION_49_11(&v295);
      sub_1DC28EB30(v261, v262, &qword_1DC523020);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v263 = OUTLINED_FUNCTION_2_30();
      v264(v263);
      v265 = OUTLINED_FUNCTION_14_12();
      v266(v265);
LABEL_82:
      v158 = v125;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_144_3();
    v201 = OUTLINED_FUNCTION_6_23();
    v202(v201);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v203);
    OUTLINED_FUNCTION_16_12(&v292);
    v278 = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_58_11();
    v125();
    v204 = OUTLINED_FUNCTION_39_10(&v293);
    sub_1DC28EB30(v204, v205, &qword_1DC523020);
    v206 = OUTLINED_FUNCTION_39_10(&v295);
    sub_1DC28EB30(v206, v207, &qword_1DC523020);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v208 = OUTLINED_FUNCTION_2_30();
    v209(v208);
    v210 = OUTLINED_FUNCTION_37_10(&v292);
    (v125)(v210);
    v177 = &v288;
LABEL_63:
    v211 = OUTLINED_FUNCTION_39_10(v177);
    sub_1DC28EB30(v211, v212, &qword_1DC523020);
    v141 = &v286;
LABEL_64:
    if ((*(v141 - 32) & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_65;
  }

  sub_1DC514C4C();
  OUTLINED_FUNCTION_15_14();
  if (!OUTLINED_FUNCTION_45_6())
  {
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_123_3();
    sub_1DC28EB30(v192, v193, v194);
    v195 = OUTLINED_FUNCTION_2_30();
    v196(v195);
    __swift_destroy_boxed_opaque_existential_1Tm(&v293);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_117_6();
  sub_1DC5148BC();
  OUTLINED_FUNCTION_78_9();

  if (v291 && (sub_1DC51477C(), OUTLINED_FUNCTION_10_15(), &qword_1DC5238B0))
  {
    sub_1DC5149AC();
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_22_14();
    __swift_storeEnumTagSinglePayload(v214, v215, v216, *(v213 - 256));
  }

  OUTLINED_FUNCTION_26_14();
  v217 = OUTLINED_FUNCTION_10_22();
  v218(v217);
  OUTLINED_FUNCTION_12_20(&qword_1DC5238B0);
  v220 = *(v219 + 48);
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_74_6(&v287);
  sub_1DC28F358(v221, v222, &qword_1ECC7C200, &qword_1DC523020);
  v223 = OUTLINED_FUNCTION_97_4();
  sub_1DC28F358(v223, v224, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_4_29(&qword_1DC5238B0);
  if (v128)
  {
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    sub_1DC28EB30(v220, &qword_1ECC7C200, &qword_1DC523020);
    v225 = OUTLINED_FUNCTION_16_12(&v294);
    sub_1DC28EB30(v225, v226, v227);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v228 = OUTLINED_FUNCTION_2_30();
    v229(v228);
    v37 = v279;
    OUTLINED_FUNCTION_4_29(v277 + v279);
    if (!v128)
    {
      goto LABEL_84;
    }

    v159 = OUTLINED_FUNCTION_41();
    v161 = &qword_1DC523020;
    goto LABEL_47;
  }

  v37 = v279;
  v230 = OUTLINED_FUNCTION_41();
  sub_1DC28F358(v230, v231, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_4_29(v37 + v220);
  if (!v232)
  {
    OUTLINED_FUNCTION_18_19();
    v233 = OUTLINED_FUNCTION_6_23();
    v234(v233);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v235);
    OUTLINED_FUNCTION_16_12(&v304);
    LODWORD(v277) = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    v236 = OUTLINED_FUNCTION_76_6();
    v237(v236);
    sub_1DC28EB30(v281, &qword_1ECC7C200, &qword_1DC523020);
    v238 = OUTLINED_FUNCTION_65_4();
    sub_1DC28EB30(v238, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v239 = OUTLINED_FUNCTION_2_30();
    v240(v239);
    v241 = OUTLINED_FUNCTION_88_2(&v304);
    (v286)(v241);
    v139 = v279;
    v140 = &qword_1ECC7C200;
LABEL_39:
    sub_1DC28EB30(v139, v140, &qword_1DC523020);
    v141 = &v285;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_79_7();
  OUTLINED_FUNCTION_36_17();

  v267 = OUTLINED_FUNCTION_11_23(&v291);
  sub_1DC28EB30(v267, v268, v269);
  v270 = OUTLINED_FUNCTION_11_23(&v294);
  sub_1DC28EB30(v270, v271, v272);
  sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v273 = OUTLINED_FUNCTION_2_30();
  v274(v273);
  v275 = OUTLINED_FUNCTION_14_12();
  v276(v275);
LABEL_84:
  v158 = v37;
LABEL_79:
  sub_1DC28EB30(v158, &qword_1ECC7C238, &qword_1DC527190);
LABEL_80:
  __swift_destroy_boxed_opaque_existential_1Tm(&v293);
  sub_1DC28EB30(v297, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_75:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3DF7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1DC5149BC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v290 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v31);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  v32 = OUTLINED_FUNCTION_35(v282);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v43 = OUTLINED_FUNCTION_10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v57);
  v289 = sub_1DC510FDC();
  v58 = OUTLINED_FUNCTION_0(v289);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v64);
  v65 = sub_1DC51179C();
  v66 = OUTLINED_FUNCTION_0(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v69);
  v70 = OUTLINED_FUNCTION_155_3();
  v71 = OUTLINED_FUNCTION_0(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v74);
  v75 = *(v25 + 16);
  if (!v75)
  {
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_53_13();
  v288 = v60 + 8;
  OUTLINED_FUNCTION_47_10(*MEMORY[0x1E69D1D40]);
  while (1)
  {
    v76 = OUTLINED_FUNCTION_134_1();
    v77(v76);
    if (sub_1DC5114CC())
    {
      break;
    }

    v84 = OUTLINED_FUNCTION_2_30();
    v85(v84);
LABEL_14:
    v25 += v26;
    if (!--v75)
    {
      goto LABEL_75;
    }
  }

  OUTLINED_FUNCTION_156_1();
  sub_1DC51177C();
  v78 = OUTLINED_FUNCTION_112_5();
  (v37)(v78);
  if ((v20 & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_2_30();
    v87(v86);
LABEL_12:
    v26 = v75;
LABEL_13:
    v75 = v290;
    goto LABEL_14;
  }

  v79 = type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  OUTLINED_FUNCTION_20_3(&a16);
  sub_1DC51178C();
  (v37)(v20, v65);
  sub_1DC307E5C();
  v80 = OUTLINED_FUNCTION_147_2();
  (v79)(v80);
  if (!v79)
  {
    v88 = OUTLINED_FUNCTION_2_30();
    v89(v88);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_119_4();
  v81 = OUTLINED_FUNCTION_133_2();
  (v37)(v81);
  OUTLINED_FUNCTION_158_1();
  if (v70)
  {

    OUTLINED_FUNCTION_34_3();

    (v79)(v79, v289);
    OUTLINED_FUNCTION_34_15();
    v82 = OUTLINED_FUNCTION_44_11();
    v83(v82);
    OUTLINED_FUNCTION_80_6();
    v65 = v21;
    v21 = v20;
LABEL_11:
    OUTLINED_FUNCTION_43_13();
    goto LABEL_12;
  }

  v90 = OUTLINED_FUNCTION_110_5();
  (v79)(v90);
  sub_1DC3E1F44();
  v26 = v75;
  if (v91)
  {
    OUTLINED_FUNCTION_34_15();
    v20 = v284;
    v92 = OUTLINED_FUNCTION_44_11();
    v93(v92);
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_95_3();
    goto LABEL_13;
  }

  v94 = v286;

  sub_1DC51478C();

  v20 = &qword_1ECC7D3F0;
  v37 = &qword_1DC5238B0;
  sub_1DC28F358(&v300, v297, &qword_1ECC7D3F0, &qword_1DC5238B0);
  OUTLINED_FUNCTION_85_7();
  if (!v95)
  {

    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_34_15();
    v97 = OUTLINED_FUNCTION_107_4();
    v98(v97);
    OUTLINED_FUNCTION_41_8();
LABEL_24:
    OUTLINED_FUNCTION_123_3();
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_104_2();
  sub_1DC514A9C();
  OUTLINED_FUNCTION_15_14();
  v20 = MEMORY[0x1E69E7CA0];
  v65 = v21;
  if (OUTLINED_FUNCTION_118_2())
  {
    OUTLINED_FUNCTION_117_6();
    sub_1DC51392C();
    OUTLINED_FUNCTION_78_9();

    v96 = v291;
    OUTLINED_FUNCTION_92_3();
    if (v96 && (v20 = sub_1DC51477C(), , v20))
    {
      OUTLINED_FUNCTION_136_2();
      v96 = v20;
      sub_1DC5149AC();
    }

    else
    {
      OUTLINED_FUNCTION_136_2();
      OUTLINED_FUNCTION_22_14();
      __swift_storeEnumTagSinglePayload(v106, v107, v108, *(v105 - 256));
    }

    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_26_14();
    v109 = OUTLINED_FUNCTION_72_7();
    v110(v109);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v79);
    v79 = *(v282 + 48);
    OUTLINED_FUNCTION_74_6(&v303);
    sub_1DC28F358(v114, v115, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_152_1();
    sub_1DC28F358(v96, &qword_1DC5238B0 + v79, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_4_29(&qword_1DC5238B0);
    if (!v128)
    {
      OUTLINED_FUNCTION_82_5(&v303);
      OUTLINED_FUNCTION_74_6(&v299);
      sub_1DC28F358(v126, v127, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_151_2();
      OUTLINED_FUNCTION_4_29(v79 + v96);
      if (!v128)
      {
        OUTLINED_FUNCTION_18_19();
        v129 = OUTLINED_FUNCTION_6_23();
        v130(v129);
        OUTLINED_FUNCTION_0_50();
        sub_1DC3E323C(&qword_1ECC7C208, v131);
        OUTLINED_FUNCTION_16_12(&v299);
        LODWORD(v277) = sub_1DC5176CC();
        OUTLINED_FUNCTION_34_3();

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_36_17();

        OUTLINED_FUNCTION_148_1();
        OUTLINED_FUNCTION_58_11();
        (qword_1DC5238B0)();
        v132 = OUTLINED_FUNCTION_39_10(&v300);
        sub_1DC28EB30(v132, v133, &qword_1DC523020);
        v134 = OUTLINED_FUNCTION_39_10(&v302);
        sub_1DC28EB30(v134, v135, &qword_1DC523020);
        sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v136 = OUTLINED_FUNCTION_2_30();
        v137(v136);
        v138 = OUTLINED_FUNCTION_37_10(&v299);
        (qword_1DC5238B0)(v138);
        v139 = OUTLINED_FUNCTION_39_10(&v303);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_79_7();
      OUTLINED_FUNCTION_36_17();

      v242 = OUTLINED_FUNCTION_11_23(&v300);
      sub_1DC28EB30(v242, v243, v244);
      v245 = OUTLINED_FUNCTION_11_23(&v302);
      sub_1DC28EB30(v245, v246, v247);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v248 = OUTLINED_FUNCTION_2_30();
      v249(v248);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_73_6();
LABEL_78:
      v252(v250, v251);
      v158 = v79;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    v37 = &qword_1ECC7C200;
    sub_1DC28EB30(v96, &qword_1ECC7C200, &qword_1DC523020);
    v116 = OUTLINED_FUNCTION_89_4(&v302);
    sub_1DC28EB30(v116, v117, &qword_1DC523020);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v118 = OUTLINED_FUNCTION_2_30();
    v119(v118);
    v104 = v283;
    v120 = OUTLINED_FUNCTION_25_13(&v285);
LABEL_44:
    OUTLINED_FUNCTION_39(v120, v121, v122);
    v158 = v104;
    if (!v128)
    {
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_90_0();
LABEL_47:
    sub_1DC28EB30(v159, v160, v161);
LABEL_65:
    v99 = OUTLINED_FUNCTION_169_2();
    v100 = &qword_1ECC7D3F0;
    v101 = &qword_1DC5238B0;
LABEL_66:
    sub_1DC28EB30(v99, v100, v101);
    OUTLINED_FUNCTION_95_3();
    goto LABEL_14;
  }

  sub_1DC514DAC();
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_92_3();
  if (v102)
  {
    OUTLINED_FUNCTION_117_6();
    sub_1DC5148BC();
    v277 = v94;

    v103 = v291;
    OUTLINED_FUNCTION_59_8();
    if (v103 && (v79 = sub_1DC51477C(), , v79))
    {
      v104 = v79;
      sub_1DC5149AC();

      OUTLINED_FUNCTION_81_5();
    }

    else
    {
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_22_14();
      v104 = *(v142 - 256);
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v104);
    }

    OUTLINED_FUNCTION_26_14();
    v146 = OUTLINED_FUNCTION_66_9();
    v147(v146, v280, v104);
    OUTLINED_FUNCTION_12_20(v79);
    v37 = *(v148 + 48);
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_139_1();
    sub_1DC28F358(v149, v104, &qword_1ECC7C200, &qword_1DC523020);
    v150 = OUTLINED_FUNCTION_121_2();
    sub_1DC28F358(v150, v151, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_39(v152, 1, v104);
    if (v128)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v37 = &qword_1ECC7C200;
      sub_1DC28EB30(v79, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_90_0();
      sub_1DC28EB30(v153, v154, v155);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v156 = OUTLINED_FUNCTION_2_30();
      v157(v156);
      OUTLINED_FUNCTION_139_1();
      v120 = OUTLINED_FUNCTION_29_6(&v286);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_82_5(&v298);
    OUTLINED_FUNCTION_74_6(&v296);
    sub_1DC28F358(v162, v163, &qword_1ECC7C200, &qword_1DC523020);
    v164 = OUTLINED_FUNCTION_40_14();
    OUTLINED_FUNCTION_39(v164, v165, v104);
    if (v166)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v253 = OUTLINED_FUNCTION_49_11(v297);
      sub_1DC28EB30(v253, v254, &qword_1DC523020);
      v255 = OUTLINED_FUNCTION_49_11(v301);
      sub_1DC28EB30(v255, v256, &qword_1DC523020);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v257 = OUTLINED_FUNCTION_2_30();
      v258(v257);
      OUTLINED_FUNCTION_24_13();
      v250 = v37;
      v251 = v104;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_144_3();
    v167 = OUTLINED_FUNCTION_66_9();
    v168(v167);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v169);
    OUTLINED_FUNCTION_16_12(&v296);
    v278 = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_67_4();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_58_11();
    v104();
    v170 = OUTLINED_FUNCTION_39_10(v297);
    sub_1DC28EB30(v170, v171, &qword_1DC523020);
    v172 = OUTLINED_FUNCTION_39_10(v301);
    sub_1DC28EB30(v172, v173, &qword_1DC523020);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v174 = OUTLINED_FUNCTION_2_30();
    v175(v174);
    v176 = OUTLINED_FUNCTION_37_10(&v296);
    (v104)(v176);
    v177 = &v298;
    goto LABEL_63;
  }

  sub_1DC514B9C();
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_59_8();
  if (v123)
  {
    v124 = v292;

    sub_1DC514C8C();

    v125 = v291;
    OUTLINED_FUNCTION_152_1();
    if (v125 && (sub_1DC51477C(), OUTLINED_FUNCTION_10_15(), &qword_1DC5238B0))
    {
      OUTLINED_FUNCTION_159_1();
    }

    else
    {
      OUTLINED_FUNCTION_82_5(&v295);
      OUTLINED_FUNCTION_22_14();
      __swift_storeEnumTagSinglePayload(v179, v180, v181, *(v178 - 256));
    }

    OUTLINED_FUNCTION_26_14();
    v182 = OUTLINED_FUNCTION_10_22();
    v183(v182);
    OUTLINED_FUNCTION_12_20(&qword_1DC5238B0);
    v185 = OUTLINED_FUNCTION_109_4(v184);
    sub_1DC28F358(v185, v186, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_78_9();
    sub_1DC28F358(&qword_1DC5238B0, v125 + v124, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_4_29(v124);
    if (v128)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_67_4();

      OUTLINED_FUNCTION_36_17();

      v37 = &qword_1ECC7C200;
      sub_1DC28EB30(&qword_1DC5238B0, &qword_1ECC7C200, &qword_1DC523020);
      v187 = OUTLINED_FUNCTION_89_4(&v295);
      sub_1DC28EB30(v187, v188, &qword_1DC523020);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v189 = OUTLINED_FUNCTION_2_30();
      v190(v189);
      OUTLINED_FUNCTION_61_3();
      OUTLINED_FUNCTION_4_29(v124 + v191);
      v161 = &qword_1DC523020;
      v125 = v124;
      if (!v128)
      {
        goto LABEL_82;
      }

      v159 = v124;
      v160 = &qword_1ECC7C200;
      goto LABEL_47;
    }

    v197 = OUTLINED_FUNCTION_114_2();
    sub_1DC28F358(v197, v198, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_61_3();
    OUTLINED_FUNCTION_4_29(v125 + v199);
    v37 = v277;
    if (v200)
    {
      OUTLINED_FUNCTION_34_3();

      OUTLINED_FUNCTION_36_17();

      v259 = OUTLINED_FUNCTION_49_11(&v293);
      sub_1DC28EB30(v259, v260, &qword_1DC523020);
      v261 = OUTLINED_FUNCTION_49_11(&v295);
      sub_1DC28EB30(v261, v262, &qword_1DC523020);
      sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v263 = OUTLINED_FUNCTION_2_30();
      v264(v263);
      v265 = OUTLINED_FUNCTION_14_12();
      v266(v265);
LABEL_82:
      v158 = v125;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_18_19();
    OUTLINED_FUNCTION_144_3();
    v201 = OUTLINED_FUNCTION_6_23();
    v202(v201);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v203);
    OUTLINED_FUNCTION_16_12(&v292);
    v278 = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_42_12();
    OUTLINED_FUNCTION_58_11();
    v125();
    v204 = OUTLINED_FUNCTION_39_10(&v293);
    sub_1DC28EB30(v204, v205, &qword_1DC523020);
    v206 = OUTLINED_FUNCTION_39_10(&v295);
    sub_1DC28EB30(v206, v207, &qword_1DC523020);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v208 = OUTLINED_FUNCTION_2_30();
    v209(v208);
    v210 = OUTLINED_FUNCTION_37_10(&v292);
    (v125)(v210);
    v177 = &v288;
LABEL_63:
    v211 = OUTLINED_FUNCTION_39_10(v177);
    sub_1DC28EB30(v211, v212, &qword_1DC523020);
    v141 = &v286;
LABEL_64:
    if ((*(v141 - 32) & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_65;
  }

  sub_1DC514C4C();
  OUTLINED_FUNCTION_15_14();
  if (!OUTLINED_FUNCTION_45_6())
  {
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_123_3();
    sub_1DC28EB30(v192, v193, v194);
    v195 = OUTLINED_FUNCTION_2_30();
    v196(v195);
    __swift_destroy_boxed_opaque_existential_1Tm(&v293);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_117_6();
  sub_1DC5148BC();
  OUTLINED_FUNCTION_78_9();

  if (v291 && (sub_1DC51477C(), OUTLINED_FUNCTION_10_15(), &qword_1DC5238B0))
  {
    sub_1DC5149AC();
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_22_14();
    __swift_storeEnumTagSinglePayload(v214, v215, v216, *(v213 - 256));
  }

  OUTLINED_FUNCTION_26_14();
  v217 = OUTLINED_FUNCTION_10_22();
  v218(v217);
  OUTLINED_FUNCTION_12_20(&qword_1DC5238B0);
  v220 = *(v219 + 48);
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_74_6(&v287);
  sub_1DC28F358(v221, v222, &qword_1ECC7C200, &qword_1DC523020);
  v223 = OUTLINED_FUNCTION_97_4();
  sub_1DC28F358(v223, v224, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_4_29(&qword_1DC5238B0);
  if (v128)
  {
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    sub_1DC28EB30(v220, &qword_1ECC7C200, &qword_1DC523020);
    v225 = OUTLINED_FUNCTION_16_12(&v294);
    sub_1DC28EB30(v225, v226, v227);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v228 = OUTLINED_FUNCTION_2_30();
    v229(v228);
    v37 = v279;
    OUTLINED_FUNCTION_4_29(v277 + v279);
    if (!v128)
    {
      goto LABEL_84;
    }

    v159 = OUTLINED_FUNCTION_41();
    v161 = &qword_1DC523020;
    goto LABEL_47;
  }

  v37 = v279;
  v230 = OUTLINED_FUNCTION_41();
  sub_1DC28F358(v230, v231, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_4_29(v37 + v220);
  if (!v232)
  {
    OUTLINED_FUNCTION_18_19();
    v233 = OUTLINED_FUNCTION_6_23();
    v234(v233);
    OUTLINED_FUNCTION_0_50();
    sub_1DC3E323C(&qword_1ECC7C208, v235);
    OUTLINED_FUNCTION_16_12(&v304);
    LODWORD(v277) = sub_1DC5176CC();
    OUTLINED_FUNCTION_34_3();

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_36_17();

    v236 = OUTLINED_FUNCTION_76_6();
    v237(v236);
    sub_1DC28EB30(v281, &qword_1ECC7C200, &qword_1DC523020);
    v238 = OUTLINED_FUNCTION_65_4();
    sub_1DC28EB30(v238, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v239 = OUTLINED_FUNCTION_2_30();
    v240(v239);
    v241 = OUTLINED_FUNCTION_88_2(&v304);
    (v286)(v241);
    v139 = v279;
    v140 = &qword_1ECC7C200;
LABEL_39:
    sub_1DC28EB30(v139, v140, &qword_1DC523020);
    v141 = &v285;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_79_7();
  OUTLINED_FUNCTION_36_17();

  v267 = OUTLINED_FUNCTION_11_23(&v291);
  sub_1DC28EB30(v267, v268, v269);
  v270 = OUTLINED_FUNCTION_11_23(&v294);
  sub_1DC28EB30(v270, v271, v272);
  sub_1DC28EB30(&v300, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v273 = OUTLINED_FUNCTION_2_30();
  v274(v273);
  v275 = OUTLINED_FUNCTION_14_12();
  v276(v275);
LABEL_84:
  v158 = v37;
LABEL_79:
  sub_1DC28EB30(v158, &qword_1ECC7C238, &qword_1DC527190);
LABEL_80:
  __swift_destroy_boxed_opaque_existential_1Tm(&v293);
  sub_1DC28EB30(v297, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_75:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3E0BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v225 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v27 = OUTLINED_FUNCTION_10(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v31);
  v238 = sub_1DC5157EC();
  v32 = OUTLINED_FUNCTION_0(v238);
  v222 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v37);
  v237 = sub_1DC5149BC();
  v38 = OUTLINED_FUNCTION_0(v237);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v43);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  v44 = OUTLINED_FUNCTION_35(v236);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v50 = OUTLINED_FUNCTION_10(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v218 - v55;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v60);
  v257[0] = sub_1DC510FDC();
  v61 = OUTLINED_FUNCTION_0(v257[0]);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_9();
  v67 = sub_1DC51179C();
  v68 = OUTLINED_FUNCTION_0(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_62();
  v262 = v74;
  OUTLINED_FUNCTION_12();
  v75 = sub_1DC51164C();
  v76 = OUTLINED_FUNCTION_0(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_1();
  v83 = v82 - v81;
  v245 = sub_1DC51122C();
  v84 = OUTLINED_FUNCTION_0(v245);
  v246 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v88);
  v247 = *v24;
  v243 = *(v247 + 16);
  if (!v243)
  {
LABEL_62:
    v194 = OUTLINED_FUNCTION_28_14(&v254);
    __swift_storeEnumTagSinglePayload(v194, v195, v196, v238);
    goto LABEL_63;
  }

  v89 = v67;
  OUTLINED_FUNCTION_80_6();
  v90 = *(v246 + 80);
  OUTLINED_FUNCTION_24();
  v242 = v247 + v91;
  v241 = v92 + 16;
  v240 = v92 + 8;
  v263 = v78 + 8;
  v264 = v78 + 16;
  v93 = (v70 + 8);
  v256 = (v63 + 8);
  v234 = *MEMORY[0x1E69D1D40];
  v233 = v40 + 104;
  v223 = v40 + 32;
  v227 = (v40 + 8);
  v94 = 0;
  v248 = v56;
  v252 = v75;
  v250 = v20;
  v253[0] = v67;
  v249 = v78;
  v258 = v93;
  while (1)
  {
    if (v94 >= *(v247 + 16))
    {
      __break(1u);
      return;
    }

    v95 = v246;
    v96 = *(v246 + 72);
    v251 = v94;
    v97 = v242 + v96 * v94;
    v98 = v244;
    v99 = v245;
    (*(v246 + 16))(v244, v97, v245);
    v100 = sub_1DC5111AC();
    (*(v95 + 8))(v98, v99);
    v101 = *(v100 + 16);
    if (v101)
    {
      break;
    }

LABEL_61:
    v94 = v251 + 1;

    if (v94 == v243)
    {
      goto LABEL_62;
    }
  }

  v102 = 0;
  v103 = *(v78 + 80);
  OUTLINED_FUNCTION_23_21();
  v265 = v104;
  v260 = v101;
  v261 = v100;
  while (1)
  {
    if (v102 >= *(v100 + 16))
    {
      __break(1u);
LABEL_65:

      v204 = v75;
      v201 = *(v222 + 32);
      v202 = v221;
      v203 = v221;
LABEL_67:
      v205 = v238;
      v201(v203, v204, v238);
      v201(v225, v202, v205);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v206, v207, v208, v205);
      __swift_destroy_boxed_opaque_existential_1Tm(v267);
      v209 = &qword_1ECC7D3F0;
      v210 = &qword_1DC5238B0;
      v211 = v268;
      goto LABEL_70;
    }

    (*(v78 + 16))(v83, v265 + *(v78 + 72) * v102, v75);
    if (sub_1DC5114CC())
    {
      break;
    }

    v114 = OUTLINED_FUNCTION_31_14();
    v115(v114, v75);
LABEL_14:
    if (v101 == ++v102)
    {
      goto LABEL_61;
    }
  }

  v105 = v262;
  sub_1DC51154C();
  v106 = sub_1DC51177C();
  v107 = *v258;
  (*v258)(v105, v89);
  if ((v106 & 1) == 0)
  {
    OUTLINED_FUNCTION_60_11();
    v116(v83, v75);
    goto LABEL_13;
  }

  v108 = v257[1];
  OUTLINED_FUNCTION_163_1();
  sub_1DC51178C();
  v107(v108, v89);
  v109 = v89;
  v110 = v259;
  v111 = sub_1DC5138FC();
  if (v110)
  {

    OUTLINED_FUNCTION_37(&a14);
    v112(v20, v257[0]);
    OUTLINED_FUNCTION_60_11();
    v113(v83, v75);
    OUTLINED_FUNCTION_80_6();
    v89 = v109;
LABEL_13:
    v101 = v260;
    v100 = v261;
    goto LABEL_14;
  }

  v255 = v111;
  v259 = 0;
  v117 = v20;
  v20 = v256;
  v254 = *v256;
  v89 = v257[0];
  v254(v117, v257[0]);
  v253[1] = type metadata accessor for NLRouterBypassUtils();
  v118 = v262;
  sub_1DC51154C();
  OUTLINED_FUNCTION_20_3(&v271);
  sub_1DC51178C();
  v107(v118, v109);
  v119 = sub_1DC307E5C();
  v254(v75, v89);
  if (!v119)
  {
    OUTLINED_FUNCTION_60_11();
    OUTLINED_FUNCTION_70_8();
    v126();
    OUTLINED_FUNCTION_69_7();

    OUTLINED_FUNCTION_137_1();
    v78 = v249;
    goto LABEL_13;
  }

  v89 = v255;
  v120 = sub_1DC309EB4();
  v121 = v248;
  v78 = v249;
  if ((v120 & 1) == 0)
  {
    OUTLINED_FUNCTION_60_11();
    OUTLINED_FUNCTION_70_8();
    v127();

    OUTLINED_FUNCTION_137_1();
    goto LABEL_13;
  }

  sub_1DC51478C();

  sub_1DC28F358(&v269, v268, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v89 = v253[0];
  v100 = v261;
  if (!v268[3])
  {

    OUTLINED_FUNCTION_69_7();

    sub_1DC28EB30(&v269, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_31_14();
    OUTLINED_FUNCTION_70_8();
    v128();
LABEL_37:
    sub_1DC28EB30(v268, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v101 = v260;
    v20 = v250;
    goto LABEL_14;
  }

  v254 = v119;
  sub_1DC28F358(v268, v267, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC51497C();
  OUTLINED_FUNCTION_15_14();
  if (OUTLINED_FUNCTION_45_6())
  {

    OUTLINED_FUNCTION_154_1(v122);
    v101 = v260;
    if (v266 && (v123 = sub_1DC51477C(), , v123))
    {
      v124 = v239;
      sub_1DC5149AC();

      v125 = v237;
    }

    else
    {
      v124 = v239;
      OUTLINED_FUNCTION_19();
      v125 = v237;
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v237);
    }

    v136 = v230;
    OUTLINED_FUNCTION_18_19();
    v137(v136, v234, v125);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v138, v139, v140, v125);
    v141 = *(v236 + 48);
    v142 = v124;
    v143 = v231;
    sub_1DC28F358(v142, v231, &qword_1ECC7C200, &qword_1DC523020);
    sub_1DC28F358(v136, v143 + v141, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_39(v143, 1, v125);
    v100 = v261;
    if (v147)
    {
      v144 = v136;
      v75 = &qword_1DC523020;
      sub_1DC28EB30(v144, &qword_1ECC7C200, &qword_1DC523020);
      sub_1DC28EB30(v239, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_39(v143 + v141, 1, v125);
      v145 = v143;
      v20 = v250;
      if (v147)
      {
        sub_1DC28EB30(v143, &qword_1ECC7C200, &qword_1DC523020);
        OUTLINED_FUNCTION_91_3();
LABEL_66:
        OUTLINED_FUNCTION_78();

        OUTLINED_FUNCTION_69_7();

        OUTLINED_FUNCTION_26_1();
        sub_1DC28EB30(v197, v198, v199);
        OUTLINED_FUNCTION_31_14();
        OUTLINED_FUNCTION_73_6();
        goto LABEL_69;
      }
    }

    else
    {
      sub_1DC28F358(v143, v232, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_39(v143 + v141, 1, v125);
      v20 = v250;
      if (!v147)
      {
        OUTLINED_FUNCTION_37(v253);
        v165 = v224;
        v166(v224, v143 + v141, v125);
        OUTLINED_FUNCTION_0_50();
        sub_1DC3E323C(&qword_1ECC7C208, v167);
        OUTLINED_FUNCTION_36_17();
        v219 = sub_1DC5176CC();
        v168 = *v227;
        v169 = v165;
        v100 = v261;
        (*v227)(v169, v125);
        v170 = v136;
        v75 = &qword_1DC523020;
        sub_1DC28EB30(v170, &qword_1ECC7C200, &qword_1DC523020);
        sub_1DC28EB30(v239, &qword_1ECC7C200, &qword_1DC523020);
        v171 = OUTLINED_FUNCTION_36_17();
        v168(v171, v125);
        v101 = v260;
        sub_1DC28EB30(v143, &qword_1ECC7C200, &qword_1DC523020);
        OUTLINED_FUNCTION_91_3();
        if (v219)
        {
          goto LABEL_66;
        }

        goto LABEL_49;
      }

      v148 = v136;
      v75 = &qword_1DC523020;
      sub_1DC28EB30(v148, &qword_1ECC7C200, &qword_1DC523020);
      v149 = OUTLINED_FUNCTION_88_2(v267);
      sub_1DC28EB30(v149, v150, &qword_1DC523020);
      OUTLINED_FUNCTION_37(&v256);
      v151(v232, v125);
      v145 = v143;
    }

    sub_1DC28EB30(v145, &qword_1ECC7C238, &qword_1DC527190);
    OUTLINED_FUNCTION_91_3();
LABEL_49:
    sub_1DC51475C();

    OUTLINED_FUNCTION_20_3(&v258);
    sub_1DC3E28A0();
    OUTLINED_FUNCTION_78();

    OUTLINED_FUNCTION_69_7();

    sub_1DC28EB30(&v269, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_31_14();
    OUTLINED_FUNCTION_73_6();
    v172();
    OUTLINED_FUNCTION_39(&qword_1DC523020, 1, v238);
    if (!v147)
    {
      goto LABEL_65;
    }

    sub_1DC28EB30(&qword_1DC523020, &qword_1ECC7CA40, &unk_1DC5233A0);
    v75 = v252;
    goto LABEL_60;
  }

  sub_1DC514A1C();
  OUTLINED_FUNCTION_15_14();
  if (!OUTLINED_FUNCTION_45_6())
  {
    OUTLINED_FUNCTION_78();

    OUTLINED_FUNCTION_69_7();

    sub_1DC28EB30(&v269, &qword_1ECC7D3F0, &qword_1DC5238B0);
    OUTLINED_FUNCTION_31_14();
    OUTLINED_FUNCTION_70_8();
    v146();
    __swift_destroy_boxed_opaque_existential_1Tm(v267);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_154_1(v129);
  if (v266 && (v130 = sub_1DC51477C(), , v130))
  {
    v131 = v228;
    sub_1DC5149AC();

    v132 = v237;
  }

  else
  {
    v131 = v228;
    OUTLINED_FUNCTION_19();
    v132 = v237;
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v237);
  }

  OUTLINED_FUNCTION_18_19();
  v155(v121, v234, v132);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v132);
  v159 = *(v236 + 48);
  v160 = v226;
  sub_1DC28F358(v131, v226, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28F358(v121, v160 + v159, &qword_1ECC7C200, &qword_1DC523020);
  v161 = v132;
  OUTLINED_FUNCTION_39(v160, 1, v132);
  if (!v147)
  {
    sub_1DC28F358(v160, v229, &qword_1ECC7C200, &qword_1DC523020);
    v173 = OUTLINED_FUNCTION_143_1();
    OUTLINED_FUNCTION_39(v173, v174, v132);
    v20 = v250;
    if (!v175)
    {
      OUTLINED_FUNCTION_37(v253);
      v183(v224, v160 + v159, v161);
      OUTLINED_FUNCTION_0_50();
      sub_1DC3E323C(&qword_1ECC7C208, v184);
      OUTLINED_FUNCTION_67_4();
      v219 = sub_1DC5176CC();
      v218 = *v227;
      v185 = OUTLINED_FUNCTION_78_6();
      v186(v185);
      v187 = OUTLINED_FUNCTION_86();
      sub_1DC28EB30(v187, &qword_1ECC7C200, &qword_1DC523020);
      v188 = OUTLINED_FUNCTION_88_2(v257);
      sub_1DC28EB30(v188, v189, &qword_1DC523020);
      v190 = OUTLINED_FUNCTION_67_4();
      v218(v190, v161);
      sub_1DC28EB30(v160, &qword_1ECC7C200, &qword_1DC523020);
      v75 = v252;
      v100 = v261;
      if (v219)
      {
        goto LABEL_68;
      }

LABEL_57:
      sub_1DC51475C();

      sub_1DC3E28A0();

      OUTLINED_FUNCTION_69_7();

      sub_1DC28EB30(&v269, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v191 = OUTLINED_FUNCTION_31_14();
      v192(v191, v75);
      OUTLINED_FUNCTION_39(v235, 1, v238);
      if (!v147)
      {

        v201 = *(v222 + 32);
        v202 = v220;
        v203 = v220;
        v204 = v235;
        goto LABEL_67;
      }

      sub_1DC28EB30(v235, &qword_1ECC7CA40, &unk_1DC5233A0);
      v101 = v260;
LABEL_60:
      v193 = OUTLINED_FUNCTION_169_2();
      sub_1DC28EB30(v193, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v89 = v253[0];
      goto LABEL_14;
    }

    v176 = OUTLINED_FUNCTION_49_11(&v270);
    sub_1DC28EB30(v176, v177, &qword_1DC523020);
    v178 = OUTLINED_FUNCTION_11_23(v257);
    sub_1DC28EB30(v178, v179, v180);
    OUTLINED_FUNCTION_37(&v256);
    v181 = OUTLINED_FUNCTION_78_6();
    v182(v181);
    v164 = v160;
    v75 = v252;
    v100 = v261;
LABEL_55:
    sub_1DC28EB30(v164, &qword_1ECC7C238, &qword_1DC527190);
    goto LABEL_57;
  }

  sub_1DC28EB30(v121, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28EB30(v131, &qword_1ECC7C200, &qword_1DC523020);
  v162 = OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_39(v162, v163, v132);
  v164 = v160;
  v75 = v252;
  v20 = v250;
  v100 = v261;
  if (!v147)
  {
    goto LABEL_55;
  }

  sub_1DC28EB30(v160, &qword_1ECC7C200, &qword_1DC523020);
LABEL_68:

  OUTLINED_FUNCTION_69_7();

  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v212, v213, v214);
  OUTLINED_FUNCTION_31_14();
LABEL_69:
  v200();
  v215 = OUTLINED_FUNCTION_28_14(&v254);
  __swift_storeEnumTagSinglePayload(v215, v216, v217, v238);
  OUTLINED_FUNCTION_169_2();
  OUTLINED_FUNCTION_26_1();
LABEL_70:
  sub_1DC28EB30(v211, v209, v210);
LABEL_63:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3E1F44()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC514ECC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v147 = v4;
  v148 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v142 = v7;
  OUTLINED_FUNCTION_12();
  v155 = sub_1DC514E7C();
  v8 = OUTLINED_FUNCTION_0(v155);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v144 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  v150 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  v141 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_9();
  v19 = sub_1DC514E3C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v149 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  v152 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  v145 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v136 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  v34 = OUTLINED_FUNCTION_10(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  v139 = v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  v140 = v39;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  v151 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  v146 = v43;
  v143 = v0;
  v44 = sub_1DC514EEC();
  v45 = 0;
  v46 = *(v44 + 16);
  v47 = (v10 + 8);
  v153 = (v22 + 8);
  v154 = v22 + 16;
  v156 = v19;
  while (1)
  {
    if (v46 == v45)
    {

      v55 = 1;
      v56 = v147;
      v57 = v148;
      v58 = v146;
      goto LABEL_13;
    }

    if (v45 >= *(v44 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v48 = *(v22 + 80);
    OUTLINED_FUNCTION_23_21();
    (*(v22 + 16))(v32, v49 + *(v22 + 72) * v45, v19);
    sub_1DC514E0C();
    v50 = sub_1DC514E6C();
    v52 = v51;
    (*v47)(v1, v155);
    v53 = v50 == 1802723700 && v52 == 0xE400000000000000;
    if (v53)
    {
      break;
    }

    v54 = sub_1DC51825C();

    if (v54)
    {
      goto LABEL_12;
    }

    v19 = v156;
    (*v153)(v32, v156);
    ++v45;
  }

LABEL_12:

  v58 = v146;
  v19 = v156;
  (*(v22 + 32))(v146, v32, v156);
  v55 = 0;
  v56 = v147;
  v57 = v148;
LABEL_13:
  v59 = v151;
  __swift_storeEnumTagSinglePayload(v58, v55, 1, v19);
  sub_1DC28F358(v58, v59, &qword_1ECC7C1A0, &qword_1DC522F80);
  v60 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v60, v61, v19);
  if (v53)
  {
    sub_1DC28EB30(v58, &qword_1ECC7C1A0, &qword_1DC522F80);
    v58 = v59;
LABEL_44:
    sub_1DC28EB30(v58, &qword_1ECC7C1A0, &qword_1DC522F80);
    OUTLINED_FUNCTION_34();
    return;
  }

  v62 = *(v22 + 32);
  OUTLINED_FUNCTION_62_3();
  v137 = v64;
  v138 = v63;
  v64();
  v65 = sub_1DC514EFC();
  v66 = sub_1DC514E1C();
  if ((v66 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (v66 < *(v65 + 16))
  {
    (*(v56 + 16))(v142, v65 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v66, v57);

    v67 = v141;
    sub_1DC514EBC();
    sub_1DC514E6C();
    v151 = *v47;
    v151(v67, v155);
    OUTLINED_FUNCTION_116_4();
    v68 = sub_1DC51795C();

    if (v68)
    {
      v69 = sub_1DC514EEC();
      v70 = 0;
      v71 = *(v69 + 16);
      v72 = v156;
      v73 = v150;
      while (v71 != v70)
      {
        if (v70 >= *(v69 + 16))
        {
          goto LABEL_46;
        }

        v74 = *(v22 + 80);
        OUTLINED_FUNCTION_24();
        (*(v22 + 16))(v152, v69 + v75 + *(v22 + 72) * v70, v72);
        sub_1DC514E0C();
        v76 = sub_1DC514E6C();
        v78 = v77;
        v151(v73, v155);
        if (v76 == 0x6F43676E69727473 && v78 == 0xED0000746E65746ELL)
        {

LABEL_39:

          v58 = v140;
          v100 = v156;
          (v137)(v140, v152, v156);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
          v104 = OUTLINED_FUNCTION_103_1();
          v105(v104);
          v106 = OUTLINED_FUNCTION_68_6();
          v107(v106, v100);
          sub_1DC28EB30(v146, &qword_1ECC7C1A0, &qword_1DC522F80);
          goto LABEL_44;
        }

        v80 = sub_1DC51825C();

        if (v80)
        {
          goto LABEL_39;
        }

        v72 = v156;
        (*v153)(v152, v156);
        ++v70;
      }

      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v72);
      v89 = sub_1DC514EEC();
      v90 = 0;
      v91 = *(v89 + 16);
      v92 = v144;
      while (1)
      {
        if (v91 == v90)
        {

          v108 = OUTLINED_FUNCTION_103_1();
          v109(v108);
          v110 = OUTLINED_FUNCTION_68_6();
          v111 = v156;
          v112(v110, v156);
          OUTLINED_FUNCTION_59_2();
          sub_1DC28EB30(v113, v114, v115);
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v116, v117, v118, v111);
          OUTLINED_FUNCTION_59_2();
          sub_1DC28EB30(v119, v120, v121);
          goto LABEL_43;
        }

        if (v90 >= *(v89 + 16))
        {
          goto LABEL_47;
        }

        v93 = *(v22 + 80);
        OUTLINED_FUNCTION_23_21();
        (*(v22 + 16))(v149, v94 + *(v22 + 72) * v90, v156);
        sub_1DC514E0C();
        v95 = sub_1DC514E6C();
        v97 = v96;
        v151(v92, v155);
        if (v95 == 0x7463656A627573 && v97 == 0xE700000000000000)
        {
          break;
        }

        OUTLINED_FUNCTION_62_3();
        v99 = sub_1DC51825C();

        if (v99)
        {
          goto LABEL_42;
        }

        (*v153)(v149, v156);
        ++v90;
      }

LABEL_42:

      v122 = OUTLINED_FUNCTION_103_1();
      v123(v122);
      v124 = OUTLINED_FUNCTION_68_6();
      v125 = v156;
      v126(v124, v156);
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v127, v128, v129);
      (v137)(v139, v149, v125);
      OUTLINED_FUNCTION_61();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v125);
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v133, v134, v135);
LABEL_43:
      v58 = v140;
    }

    else
    {
      v81 = *(v56 + 8);
      v82 = OUTLINED_FUNCTION_78_6();
      v83(v82);
      v84 = OUTLINED_FUNCTION_68_6();
      v85(v84, v156);
    }

    goto LABEL_44;
  }

LABEL_49:
  __break(1u);
}

void sub_1DC3E28A0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C260, &unk_1DC523080);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v39 - v8;
  v10 = sub_1DC514BFC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  if (v1)
  {
    v19 = sub_1DC51476C();
    if (v19)
    {
      v20 = sub_1DC2C20B8(v19);

      if (v20 == 1)
      {
        v21 = sub_1DC51476C();
        if (v21)
        {
          v22 = v21;
          if (sub_1DC2C20B8(v21))
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E1296800](0, v22);
            }

            else
            {
              if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_27;
              }

              v23 = *(v22 + 32);
            }

            sub_1DC5146BC();

            if (v39[1])
            {
              if (sub_1DC5148CC())
              {
                sub_1DC514BEC();
                OUTLINED_FUNCTION_39(v9, 1, v10);
                if (!v24)
                {
                  (*(v13 + 32))(v18, v9, v10);
                  if (qword_1ECC8A170 == -1)
                  {
LABEL_20:
                    v33 = sub_1DC3E2CE0(v18, qword_1ECC8F9D0);
                    sub_1DC517B9C();
                    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                    v34 = sub_1DC2BE518();
                    v35 = (v13 + 8);
                    sub_1DC516F0C();
                    if (v33)
                    {

                      v36 = MEMORY[0x1E69D02D8];
                    }

                    else
                    {

                      v36 = MEMORY[0x1E69D02F8];
                    }

                    (*v35)(v18, v10);
                    v32 = *v36;
                    goto LABEL_24;
                  }

LABEL_27:
                  OUTLINED_FUNCTION_21_13();
                  goto LABEL_20;
                }

                sub_1DC28EB30(v9, &qword_1ECC7C260, &unk_1DC523080);
                sub_1DC517B9C();
                sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                v25 = sub_1DC2BE518();
                OUTLINED_FUNCTION_62_1();
                sub_1DC516F0C();

                v26 = MEMORY[0x1E69D02F8];
              }

              else
              {
                sub_1DC517B9C();
                sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                v31 = sub_1DC2BE518();
                OUTLINED_FUNCTION_62_1();
                sub_1DC516F0C();

                v26 = MEMORY[0x1E69D02D8];
              }

              v32 = *v26;
LABEL_24:
              v37 = sub_1DC5157EC();
              OUTLINED_FUNCTION_35(v37);
              (*(v38 + 104))(v3, v32, v37);
              OUTLINED_FUNCTION_61();
              v30 = v37;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  sub_1DC5157EC();
  OUTLINED_FUNCTION_19();
LABEL_16:
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC3E2CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC514BFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_1DC3E323C(&qword_1ECC7D590, MEMORY[0x1E69D2110]);
  v18 = a1;
  v10 = sub_1DC51767C();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_1DC3E323C(&qword_1ECC7C268, MEMORY[0x1E69D2110]);
    v16 = sub_1DC5176CC();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

uint64_t sub_1DC3E2EF8(uint64_t a1)
{
  v2 = sub_1DC514BFC();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5A0, &qword_1DC528670);
  result = sub_1DC517F0C();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_1DC3E323C(&qword_1ECC7D590, MEMORY[0x1E69D2110]);
    v16 = sub_1DC51767C();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_1DC3E323C(&qword_1ECC7C268, MEMORY[0x1E69D2110]);
      v23 = sub_1DC5176CC();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DC3E323C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_86_4()
{

  return sub_1DC291244(v0, v1, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_104_2()
{
  *(v3 - 504) = v2;

  return sub_1DC28F358(v3 - 160, v3 - 192, v0, v1);
}

uint64_t OUTLINED_FUNCTION_105_1()
{
  *(v1 - 272) = v0;
  v3 = *(v1 - 312);

  return sub_1DC51154C();
}

uint64_t OUTLINED_FUNCTION_109_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 48);
  result = v1;
  v5 = *(v2 - 512);
  return result;
}

uint64_t OUTLINED_FUNCTION_110_5()
{
  *(v2 - 264) = v1;
  result = v0;
  v5 = *(v2 - 256);
  v4 = *(v2 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_118_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_127_2()
{
  v2 = **(v0 + 296);
  result = v1;
  v4 = *(v0 + 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_145_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 40);
  result = v2;
  v5 = *(v1 + 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_154_1(uint64_t a1)
{
  *(v1 - 320) = a1;

  return sub_1DC51475C();
}

uint64_t OUTLINED_FUNCTION_155_3()
{

  return sub_1DC51164C();
}

id OUTLINED_FUNCTION_160_1()
{
  v2 = *(v0 + 216);

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_162_4(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 128));
}

id sub_1DC3E352C()
{
  result = [*(v0 + 32) tcuId];
  if (result)
  {
    v2 = result;
    v3 = sub_1DC51772C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DC3E3608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1DC3E3650()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DC3E36AC()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DC3E36D4()
{
  sub_1DC3E36AC();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1DC3E3878(void (*a1)(uint64_t))
{
  v61 = a1;
  v2 = sub_1DC5160CC();
  v64 = OUTLINED_FUNCTION_0(v2);
  v65 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_15();
  v63 = v6;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v62 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC516F7C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v19 = v18;
  OUTLINED_FUNCTION_12();
  v20 = sub_1DC51620C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  (*(v23 + 104))(v28, *MEMORY[0x1E69D0810], v20);
  sub_1DC51627C();
  (*(v23 + 8))(v28, v20);
  if (v70[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5B0, "ޕ");
    if (swift_dynamicCast())
    {
      if (*(&v67 + 1))
      {
        sub_1DC28F9B0(&v66, v71);
        v30 = sub_1DC29120C();
        (*(v12 + 16))(v19, v30, v9);
        v31 = sub_1DC516F6C();
        v32 = sub_1DC517B9C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_1DC287000, v31, v32, "Found RequestSummaries from SessionStore", v33, 2u);
          MEMORY[0x1E1298840](v33, -1, -1);
        }

        (*(v12 + 8))(v19, v9);
        __swift_project_boxed_opaque_existential_1(v71, v71[3]);
        v34 = sub_1DC51624C();
        v35 = *(v34 + 16);
        if (v35)
        {
          v70[0] = MEMORY[0x1E69E7CC0];
          sub_1DC3E4F04(0, v35, 0);
          v36 = v70[0];
          v61 = *(v65 + 16);
          v37 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v59 = v34;
          v38 = v34 + v37;
          v60 = *(v65 + 72);
          v65 += 16;
          v39 = (v65 - 8);
          do
          {
            v41 = v61;
            v40 = v62;
            v42 = v64;
            (v61)(v62, v38, v64);
            v43 = v63;
            v44 = OUTLINED_FUNCTION_11_24();
            v41(v44);
            v45 = sub_1DC3E3E24(v43, &v66);
            (*v39)(v40, v42, v45);
            v46 = v66;
            v47 = v67;
            v48 = v68;
            v49 = v69;
            v70[0] = v36;
            v51 = *(v36 + 16);
            v50 = *(v36 + 24);
            if (v51 >= v50 >> 1)
            {
              v58 = v67;
              sub_1DC3E4F04((v50 > 1), v51 + 1, 1);
              v47 = v58;
              v36 = v70[0];
            }

            *(v36 + 16) = v51 + 1;
            v52 = v36 + 48 * v51;
            *(v52 + 32) = v46;
            *(v52 + 48) = v47;
            *(v52 + 64) = v48;
            *(v52 + 72) = v49;
            v38 += v60;
            --v35;
          }

          while (v35);
        }

        else
        {

          v36 = MEMORY[0x1E69E7CC0];
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        return v36;
      }
    }

    else
    {
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
    }
  }

  else
  {
    sub_1DC28EB30(v70, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  sub_1DC28EB30(&v66, &qword_1ECC7D5A8, "ܕ");
  v53 = sub_1DC29120C();
  (*(v12 + 16))(v17, v53, v9);
  v54 = sub_1DC516F6C();
  v55 = sub_1DC517B9C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1DC287000, v54, v55, "No history in SessionStore yet", v56, 2u);
    MEMORY[0x1E1298840](v56, -1, -1);
  }

  (*(v12 + 8))(v17, v9);
  return MEMORY[0x1E69E7CC0];
}

__n128 sub_1DC3E3E24@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v209 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v206 = &v182 - v7;
  v8 = OUTLINED_FUNCTION_12();
  v9 = type metadata accessor for TurnSummary(v8);
  v207 = *(v9 - 8);
  v10 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_1();
  v208 = (v12 - v11);
  OUTLINED_FUNCTION_12();
  v13 = sub_1DC515FCC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v204 = v15;
  v205 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v211 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v202 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  v22 = OUTLINED_FUNCTION_10(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v186 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  v187 = v27;
  OUTLINED_FUNCTION_12();
  v192 = sub_1DC5161CC();
  v28 = OUTLINED_FUNCTION_0(v192);
  v188 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v182 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  v183 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5B8, "ޕ");
  v36 = OUTLINED_FUNCTION_10(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v189 = &v182 - v39;
  OUTLINED_FUNCTION_12();
  v193 = sub_1DC51605C();
  v40 = OUTLINED_FUNCTION_0(v193);
  v190 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v184 = v44;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_62();
  v185 = v46;
  OUTLINED_FUNCTION_12();
  v191 = sub_1DC51600C();
  v47 = OUTLINED_FUNCTION_0(v191);
  v196 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  v195 = v52 - v51;
  OUTLINED_FUNCTION_12();
  v194 = sub_1DC51601C();
  v53 = OUTLINED_FUNCTION_0(v194);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_1();
  v60 = v59 - v58;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v62 = OUTLINED_FUNCTION_10(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_15();
  v203 = v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_62();
  v210 = v67;
  OUTLINED_FUNCTION_12();
  v68 = sub_1DC51609C();
  v69 = OUTLINED_FUNCTION_0(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_1();
  v76 = v75 - v74;
  v77 = sub_1DC51606C();
  v78 = OUTLINED_FUNCTION_0(v77);
  v80 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_1();
  v85 = v84 - v83;
  sub_1DC5160BC();
  v86 = (*(v80 + 88))(v85, v77);
  if (v86 == *MEMORY[0x1E69D06C8])
  {
    (*(v80 + 96))(v85, v77);
    (*(v71 + 32))(v76, v85, v68);
    v87 = sub_1DC51602C();
    v88 = a1;
    if (v87 && (v89 = v87, v90 = sub_1DC51622C(), v89, v90))
    {
      v200 = 0;
      v201 = 0;
      v199 = 2;
    }

    else
    {
      v92 = sub_1DC51608C();
      v200 = v93;
      v201 = v92;
      v199 = 0;
    }

    v198 = sub_1DC51607C();
    v197 = v94;
    (*(v71 + 8))(v76, v68);
  }

  else
  {
    if (v86 == *MEMORY[0x1E69D06C0])
    {
      OUTLINED_FUNCTION_13_23();
      v91 = 1;
    }

    else
    {
      (*(v80 + 8))(v85, v77);
      OUTLINED_FUNCTION_13_23();
      v91 = 2;
    }

    v199 = v91;
    v88 = a1;
  }

  v95 = v204;
  sub_1DC51603C();
  v96 = v55[11];
  v97 = OUTLINED_FUNCTION_265();
  v99 = v98(v97);
  if (v99 == *MEMORY[0x1E69D0668])
  {
    v100 = v55[12];
    v101 = OUTLINED_FUNCTION_265();
    v102(v101);
    v103 = v195;
    v104 = v191;
    (*(v196 + 32))(v195, v60, v191);
    v105 = v189;
    sub_1DC515FFC();
    v106 = v193;
    if (__swift_getEnumTagSinglePayload(v105, 1, v193) == 1)
    {
      sub_1DC28EB30(v105, &qword_1ECC7D5B8, "ޕ");
      v107 = 2;
      v108 = v205;
      v60 = v210;
    }

    else
    {
      OUTLINED_FUNCTION_10_23();
      v119 = v185;
      v120(v185, v105, v106);
      v121 = v187;
      sub_1DC3E4C2C(v119, v187);
      v123 = *(v103 + 8);
      v122 = v103 + 8;
      v123(v119, v106);
      OUTLINED_FUNCTION_14_13();
      v108 = v205;
      v60 = v210;
      if (v118)
      {
        sub_1DC28EB30(v121, &qword_1ECC7BF98, &qword_1DC5224C0);
        v107 = 2;
      }

      else
      {
        v129 = *(v188 + 32);
        v130 = v183;
        v129(v183, v121, v122);
        v129(v60, v130, v122);
        v107 = 0;
      }
    }

    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v60, v107, 4, v131);
    type metadata accessor for TurnSummary.ExecutionSource(0);
    v132 = OUTLINED_FUNCTION_7_23();
    __swift_storeEnumTagSinglePayload(v132, v133, 1, v134);
    v135 = v195;
    v136 = sub_1DC515FEC();
    (*(v196 + 8))(v135, v104);
    LODWORD(v204) = v136 & 1;
    goto LABEL_27;
  }

  v109 = v99;
  if (v99 == *MEMORY[0x1E69D0670])
  {
    v110 = v55[12];
    v111 = OUTLINED_FUNCTION_265();
    v112(v111);
    OUTLINED_FUNCTION_10_23();
    v113 = v184;
    v114 = v193;
    v115(v184, v60, v193);
    v116 = v186;
    sub_1DC3E4C2C(v113, v186);
    v117 = v88 + 8;
    (*(v88 + 8))(v113, v114);
    OUTLINED_FUNCTION_14_13();
    if (!v118)
    {
      v124 = *(v188 + 32);
      v125 = v182;
      v124(v182, v116, v117);
      v60 = v210;
      v124(v210, v125, v117);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
      v126 = OUTLINED_FUNCTION_7_23();
LABEL_26:
      __swift_storeEnumTagSinglePayload(v126, v127, 4, v128);
      type metadata accessor for TurnSummary.ExecutionSource(0);
      v137 = OUTLINED_FUNCTION_7_23();
      __swift_storeEnumTagSinglePayload(v137, v138, 1, v139);
      LODWORD(v204) = 0;
      v108 = v205;
      goto LABEL_27;
    }

    sub_1DC28EB30(v116, &qword_1ECC7BF98, &qword_1DC5224C0);
    goto LABEL_25;
  }

  if (v99 == *MEMORY[0x1E69D0678])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v126 = OUTLINED_FUNCTION_6_24();
    v127 = 1;
    goto LABEL_26;
  }

  if (v99 == *MEMORY[0x1E69D0680])
  {
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v126 = OUTLINED_FUNCTION_6_24();
    v127 = 2;
    goto LABEL_26;
  }

  if (v99 == *MEMORY[0x1E69D0660])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v126 = OUTLINED_FUNCTION_6_24();
    v127 = 3;
    goto LABEL_26;
  }

  v177 = *MEMORY[0x1E69D0688];
  v178 = type metadata accessor for TurnSummary.ExecutionSource(0);
  __swift_storeEnumTagSinglePayload(v210, 1, 1, v178);
  if (v109 != v177)
  {
    v179 = v55[1];
    v180 = OUTLINED_FUNCTION_265();
    v181(v180);
  }

  LODWORD(v204) = 0;
  v108 = v205;
  v60 = v210;
LABEL_27:
  v140 = v202;
  sub_1DC515FDC();
  sub_1DC515FBC();
  v142 = v141;
  v143 = *(v95 + 8);
  v143(v140, v108);
  if (v142)
  {

    sub_1DC515FDC();
    v144 = sub_1DC515FBC();
    v146 = v145;
    v147 = OUTLINED_FUNCTION_11_24();
    (v143)(v147);
    v148 = v88;
    sub_1DC515FDC();
    v149 = sub_1DC515F9C();
  }

  else
  {
    sub_1DC515FDC();
    v144 = sub_1DC515FAC();
    v146 = v151;
    v152 = OUTLINED_FUNCTION_11_24();
    (v143)(v152);
    v148 = v88;
    sub_1DC515FDC();
    v149 = sub_1DC515F8C();
  }

  v153 = v149;
  v154 = v150;
  v155 = OUTLINED_FUNCTION_11_24();
  (v143)(v155);
  if (!v146)
  {
    v158 = 0;
    if (v154)
    {
      goto LABEL_32;
    }

LABEL_34:
    v161 = 0;
    goto LABEL_35;
  }

  v156 = *(**sub_1DC328998() + 104);

  v144 = v156(v144, v146);
  v158 = v157;
  swift_bridgeObjectRelease_n();

  if (!v154)
  {
    goto LABEL_34;
  }

LABEL_32:

  v159 = *(**sub_1DC328998() + 104);

  v153 = v159(v153, v154);
  v161 = v160;
  swift_bridgeObjectRelease_n();

LABEL_35:
  v162 = sub_1DC3E4F24(v60, v203);
  MEMORY[0x1E12948F0](v162);
  v163 = v208;
  sub_1DC430668(v198, v197, v144, v158, v153, v161, v204, v208);
  v164 = sub_1DC5160AC();
  v166 = v165;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5C0, "֕");
  v167 = *(v207 + 72);
  v168 = (*(v207 + 80) + 32) & ~*(v207 + 80);
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_1DC522F20;
  sub_1DC2DACB8(v163, v169 + v168);
  v212 = v199;
  sub_1DC432274(v164, v166, v201, v200, v169, &v212, v213);
  v170 = sub_1DC5160CC();
  OUTLINED_FUNCTION_35(v170);
  (*(v171 + 8))(v148);
  sub_1DC3E4F94(v163);
  sub_1DC28EB30(v60, &qword_1ECC7BFC8, &unk_1DC524050);
  v172 = v213[1];
  v173 = v215;
  v174 = v216;
  result = v214;
  v176 = v209;
  v209->n128_u64[0] = v213[0];
  v176->n128_u64[1] = v172;
  v176[1] = result;
  v176[2].n128_u64[0] = v173;
  v176[2].n128_u8[8] = v174;
  return result;
}

uint64_t sub_1DC3E4C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC51605C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  (*(v16 + 16))(v20 - v19, a1, v13);
  v22 = (*(v16 + 88))(v21, v13);
  if (v22 == *MEMORY[0x1E69D06A8])
  {
    v23 = MEMORY[0x1E69D0720];
LABEL_7:
    v24 = *v23;
    v25 = sub_1DC5161CC();
    OUTLINED_FUNCTION_35(v25);
    (*(v26 + 104))(a2, v24, v25);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v25);
  }

  if (v22 == *MEMORY[0x1E69D06B8])
  {
    v23 = MEMORY[0x1E69D0730];
    goto LABEL_7;
  }

  if (v22 == *MEMORY[0x1E69D06B0])
  {
    v23 = MEMORY[0x1E69D0728];
    goto LABEL_7;
  }

  v28 = sub_1DC29120C();
  (*(v7 + 16))(v12, v28, v4);
  v29 = sub_1DC516F6C();
  v30 = sub_1DC517B9C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1DC287000, v29, v30, "No genAI tool matched", v31, 2u);
    MEMORY[0x1E1298840](v31, -1, -1);
  }

  (*(v7 + 8))(v12, v4);
  v32 = sub_1DC5161CC();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v32);
  return (*(v16 + 8))(v21, v13);
}

char *sub_1DC3E4F04(char *a1, int64_t a2, char a3)
{
  result = sub_1DC3E4FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC3E4F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3E4F94(uint64_t a1)
{
  v2 = type metadata accessor for TurnSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1DC3E4FF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5C8, &qword_1DC529690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC3E5104(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v325 = a4;
  v324 = a3;
  v326 = a2;
  v332 = sub_1DC516B8C();
  v8 = OUTLINED_FUNCTION_0(v332);
  v333 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v327 = &v324 - v13;
  OUTLINED_FUNCTION_12();
  v340 = sub_1DC5172FC();
  v14 = OUTLINED_FUNCTION_0(v340);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v339 = v20 - v19;
  OUTLINED_FUNCTION_12();
  v345 = sub_1DC5171DC();
  v21 = OUTLINED_FUNCTION_0(v345);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v344 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v29 = OUTLINED_FUNCTION_10(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v350 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v324 - v35);
  v37 = sub_1DC516C7C();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_153();
  v47 = 0;
  v351 = a1;
  v48 = *(a1 + 16);
  LODWORD(v346) = *MEMORY[0x1E69DAE70];
  LODWORD(v343) = *MEMORY[0x1E69DAE28];
  v338 = (v23 + 16);
  v337 = (v16 + 8);
  v353 = (a5 + 7);
  v354 = a5;
  v49 = v23 + 8;
  v50 = v40 + 16;
  v336 = v49;
  v334 = (v40 + 32);
  v352 = v40 + 8;
  v341 = MEMORY[0x1E69E7CC0];
  v342 = v51;
  v349 = v40 + 16;
  v347 = v40;
  while (v47 != v48)
  {
    v52 = *(v40 + 72);
    (*(v40 + 16))(v5, v351 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + v52 * v47++, v37);
    sub_1DC516C5C();
    v53 = sub_1DC5172AC();
    if (__swift_getEnumTagSinglePayload(v36, 1, v53) == 1)
    {
      goto LABEL_22;
    }

    v348 = v52;
    v54 = v50;
    sub_1DC35D0B4(v36, v350);
    OUTLINED_FUNCTION_2_3();
    v56 = v55;
    v58 = *(v57 + 88);
    v59 = OUTLINED_FUNCTION_122();
    v61 = v60(v59);
    if (v61 == v346)
    {
      (*(v56 + 8))(v350, v53);
      v78 = v37;
LABEL_15:
      v79 = v341;
      sub_1DC2BE530(v36, &qword_1ECC7BFF8, &qword_1DC522580);
      v80 = *v334;
      (*v334)(v335, v5, v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v359 = v79;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC3E7B2C(0, *(v79 + 16) + 1, 1);
        v79 = v359;
      }

      v82 = v79;
      v37 = *(v79 + 16);
      v83 = *(v79 + 24);
      if (v37 >= v83 >> 1)
      {
        v89 = OUTLINED_FUNCTION_26(v83);
        sub_1DC3E7B2C(v89, v37 + 1, 1);
        v82 = v359;
      }

      *(v82 + 16) = v37 + 1;
      v341 = v82;
      OUTLINED_FUNCTION_18_20();
      v80(v84);
      v50 = v349;
      v40 = v347;
    }

    else
    {
      if (v61 == v343)
      {
        v62 = v350;
        (*(v56 + 96))(v350, v53);
        v63 = *v62;
        v64 = swift_projectBox();
        (*v338)(v344, v64, v345);
        v65 = v339;
        sub_1DC5171CC();
        v66 = sub_1DC5172BC();
        v37 = v67;
        (*v337)(v65, v340);
        if (v354[2])
        {
          v68 = v354;
          v69 = v354[5];
          sub_1DC5182FC();
          sub_1DC51769C();
          v70 = sub_1DC51833C();
          v71 = ~(-1 << *(v68 + 32));
          while (1)
          {
            v72 = v70 & v71;
            if (((*&v353[((v70 & v71) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v70 & v71)) & 1) == 0)
            {
              break;
            }

            v73 = (v354[6] + 16 * v72);
            v74 = *v73 == v66 && v73[1] == v37;
            if (!v74)
            {
              v75 = sub_1DC51825C();
              v70 = v72 + 1;
              if ((v75 & 1) == 0)
              {
                continue;
              }
            }

            v76 = OUTLINED_FUNCTION_12_21();
            v77(v76);

            v78 = v342;
            goto LABEL_15;
          }
        }

        v85 = OUTLINED_FUNCTION_12_21();
        v86(v85);

        OUTLINED_FUNCTION_18_20();
        v50 = v349;
        v40 = v347;
      }

      else
      {
        (*(v56 + 8))(v350, v53);
        v40 = v347;
        v50 = v54;
      }

LABEL_22:
      sub_1DC2BE530(v36, &qword_1ECC7BFF8, &qword_1DC522580);
      v87 = OUTLINED_FUNCTION_4_30();
      v88(v87);
    }
  }

  v338 = sub_1DC3E6A54(v341, v324, v325);
  v91 = v90;
  v93 = v92;
  v95 = v94;

  v96 = v95 >> 1;
  v97 = v330;
  switch(v326)
  {
    case 1:
      v166 = v96 - v93;
      if (v96 == v93)
      {
        v167 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        if (v96 <= v93)
        {
LABEL_183:
          __break(1u);
LABEL_184:
          result = sub_1DC51829C();
          __break(1u);
          return result;
        }

        v249 = v40;
        v250 = *(v40 + 72);
        v251 = *(v249 + 16);
        v252 = v91 + v93 * v250;
        v167 = MEMORY[0x1E69E7CC0];
        do
        {
          v253 = v331;
          v251(v331, v252, v37);
          v254 = sub_1DC3E6E44();
          v256 = v255;
          (*v352)(v253, v37);
          if (v256)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v260 = *(v167 + 2);
              v261 = OUTLINED_FUNCTION_13_0();
              v167 = sub_1DC2ACCD4(v261, v262, v263, v167);
            }

            v258 = *(v167 + 2);
            v257 = *(v167 + 3);
            if (v258 >= v257 >> 1)
            {
              v264 = OUTLINED_FUNCTION_26(v257);
              v167 = sub_1DC2ACCD4(v264, v258 + 1, 1, v167);
            }

            *(v167 + 2) = v258 + 1;
            v259 = &v167[16 * v258];
            *(v259 + 4) = v254;
            *(v259 + 5) = v256;
          }

          v252 += v250;
          --v166;
        }

        while (v166);
      }

      v168 = sub_1DC322E3C(v167);
      if (!*(v168 + 16))
      {
        goto LABEL_86;
      }

      LOBYTE(v359) = 10;
      sub_1DC30D6EC();
      v169 = sub_1DC51823C();
      OUTLINED_FUNCTION_13_24(v169, v170);
      v171 = 1 << *(v168 + 32);
      v172 = -1;
      if (v171 < 64)
      {
        v172 = ~(-1 << v171);
      }

      v173 = v172 & *(v168 + 56);
      v174 = (v171 + 63) >> 6;

      v175 = 0;
      v176 = MEMORY[0x1E69E7CC0];
      if (v173)
      {
        goto LABEL_78;
      }

      while (1)
      {
        do
        {
          v177 = v175 + 1;
          if (__OFADD__(v175, 1))
          {
            goto LABEL_171;
          }

          if (v177 >= v174)
          {

            v359 = v176;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
            OUTLINED_FUNCTION_1_6();
            sub_1DC327B3C(v197, &qword_1ECC7C130, &unk_1DC5240F0);
            OUTLINED_FUNCTION_8_18();
            sub_1DC5176AC();
            v194 = v198;

            v195 = OUTLINED_FUNCTION_21_14();
            goto LABEL_90;
          }

          v173 = *(v168 + 56 + 8 * v177);
          ++v175;
        }

        while (!v173);
        v175 = v177;
        do
        {
LABEL_78:
          v178 = (*(v168 + 48) + ((v175 << 10) | (16 * __clz(__rbit64(v173)))));
          v180 = *v178;
          v179 = v178[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v184 = *(v176 + 2);
            v185 = OUTLINED_FUNCTION_13_0();
            v176 = sub_1DC2ACCD4(v185, v186, v187, v176);
          }

          v182 = *(v176 + 2);
          v181 = *(v176 + 3);
          if (v182 >= v181 >> 1)
          {
            v188 = OUTLINED_FUNCTION_26(v181);
            v176 = sub_1DC2ACCD4(v188, v182 + 1, 1, v176);
          }

          v173 &= v173 - 1;
          *(v176 + 2) = v182 + 1;
          v183 = &v176[16 * v182];
          *(v183 + 4) = v180;
          *(v183 + 5) = v179;
        }

        while (v173);
      }

    case 2:
      v99 = v96 - v93;
      if (v96 == v93)
      {
        v100 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        if (v96 <= v93)
        {
          goto LABEL_181;
        }

        v199 = *(v40 + 72);
        v353 = *(v40 + 16);
        v350 = (v333 + 8);
        v351 = v333 + 16;
        v354 = v199;
        v200 = v91 + v93 * v199;
        v100 = MEMORY[0x1E69E7CC0];
        v201 = v329;
        do
        {
          (v353)(v201, v200, v37);
          if (*(sub_1DC516C6C() + 16))
          {
            OUTLINED_FUNCTION_11_25();
            v202 = v327;
            v203 = v332;
            v204(v327);

            v205 = sub_1DC516B4C();
            v207 = v206;
            v208 = v202;
            v201 = v329;
            v36[1](v208, v203);
            v209 = sub_1DC3E6E44();
            v211 = v210;
            v212 = OUTLINED_FUNCTION_4_30();
            v213(v212);
            if (v211)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v218 = v100[2];
                v219 = OUTLINED_FUNCTION_13_0();
                v100 = sub_1DC303F84(v219, v220, v221, v100);
              }

              v37 = v100[2];
              v214 = v100[3];
              v36 = (v37 + 1);
              if (v37 >= v214 >> 1)
              {
                v222 = OUTLINED_FUNCTION_26(v214);
                v100 = sub_1DC303F84(v222, v37 + 1, 1, v100);
              }

              v100[2] = v36;
              v215 = &v100[4 * v37];
              v215[4] = v205;
              v215[5] = v207;
              v215[6] = v209;
              v215[7] = v211;
              OUTLINED_FUNCTION_18_20();
            }

            else
            {
            }
          }

          else
          {

            v216 = OUTLINED_FUNCTION_4_30();
            v217(v216);
          }

          v200 += v354;
          --v99;
        }

        while (v99);
      }

      v101 = 0;
      v102 = v100[2];
      v103 = v100 + 7;
      v104 = MEMORY[0x1E69E7CC0];
      while (v102 != v101)
      {
        if (v101 >= v100[2])
        {
          goto LABEL_170;
        }

        v106 = *(v103 - 1);
        v105 = *v103;
        v108 = *(v103 - 3);
        v107 = *(v103 - 2);
        OUTLINED_FUNCTION_15_15(91);

        MEMORY[0x1E1296160](v108, v107);
        MEMORY[0x1E1296160](8236, 0xE200000000000000);
        MEMORY[0x1E1296160](v106, v105);
        OUTLINED_FUNCTION_26_15();

        v109 = v356;
        v110 = v357;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = *(v104 + 2);
          v115 = OUTLINED_FUNCTION_13_0();
          v104 = sub_1DC2ACCD4(v115, v116, v117, v104);
        }

        v112 = *(v104 + 2);
        v111 = *(v104 + 3);
        if (v112 >= v111 >> 1)
        {
          v118 = OUTLINED_FUNCTION_26(v111);
          v104 = sub_1DC2ACCD4(v118, v112 + 1, 1, v104);
        }

        *(v104 + 2) = v112 + 1;
        v113 = &v104[16 * v112];
        *(v113 + 4) = v109;
        *(v113 + 5) = v110;
        v103 += 4;
        ++v101;
      }

      v189 = sub_1DC322E3C(v104);
      if (*(v189 + 16))
      {
        LOBYTE(v359) = 11;
        sub_1DC30D6EC();
        v190 = sub_1DC51823C();
        OUTLINED_FUNCTION_13_24(v190, v191);
        v359 = v189;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC8, &qword_1DC526220);
        sub_1DC327B3C(&unk_1ECC7D5E0, &qword_1ECC7CFC8, &qword_1DC526220);
        sub_1DC2A32B0();
        OUTLINED_FUNCTION_8_18();
        v192 = sub_1DC5179DC();
        v194 = v193;

        v195 = v192;
LABEL_90:
        MEMORY[0x1E1296160](v195, v194);

        OUTLINED_FUNCTION_26_15();
        goto LABEL_162;
      }

LABEL_86:

      sub_1DC517B9C();
      sub_1DC297814();
      v98 = sub_1DC296DBC();
LABEL_87:
      sub_1DC516F0C();
      swift_unknownObjectRelease();

      return 0;
    case 3:
      v119 = v96 - v93;
      if (v96 == v93)
      {
        v354 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        if (v96 <= v93)
        {
          goto LABEL_182;
        }

        v223 = v40;
        v224 = *(v40 + 72);
        v353 = *(v223 + 16);
        v350 = (v333 + 8);
        v351 = v333 + 16;
        v225 = v91 + v93 * v224;
        v354 = MEMORY[0x1E69E7CC0];
        do
        {
          (v353)(v97, v225, v37);
          if (*(sub_1DC516C6C() + 16))
          {
            OUTLINED_FUNCTION_11_25();
            v226 = v328;
            v227 = v332;
            v228(v328);

            v229 = sub_1DC516B4C();
            v231 = v230;
            v232 = v226;
            v97 = v330;
            v36[1](v232, v227);
            v233 = sub_1DC3E6E44();
            v235 = v234;
            v236 = OUTLINED_FUNCTION_4_30();
            v237(v236);
            if (v235)
            {
              v238 = v354;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v244 = v238[2];
                v245 = OUTLINED_FUNCTION_13_0();
                v238 = sub_1DC303F84(v245, v246, v247, v238);
              }

              v37 = v238[2];
              v239 = v238[3];
              v354 = v238;
              v36 = (v37 + 1);
              if (v37 >= v239 >> 1)
              {
                v248 = OUTLINED_FUNCTION_26(v239);
                v354 = sub_1DC303F84(v248, v37 + 1, 1, v354);
              }

              v240 = v354;
              v354[2] = v36;
              v241 = &v240[4 * v37];
              v241[4] = v229;
              v241[5] = v231;
              v241[6] = v233;
              v241[7] = v235;
              OUTLINED_FUNCTION_18_20();
            }

            else
            {
            }
          }

          else
          {

            v242 = OUTLINED_FUNCTION_4_30();
            v243(v242);
          }

          v225 += v224;
          --v119;
        }

        while (v119);
      }

      v120 = v354;
      v351 = v354[2];
      if (v351)
      {
        v121 = 0;
        v122 = v354 + 7;
        v123 = MEMORY[0x1E69E7CC8];
        while (v121 < v120[2])
        {
          v125 = *(v122 - 3);
          v124 = *(v122 - 2);
          v126 = *(v122 - 1);
          v127 = *v122;
          v128 = *(v123 + 16);

          v353 = v124;
          if (v128 && (v129 = sub_1DC2AEB04(v125, v124), (v130 & 1) != 0))
          {
            v131 = *(*(v123 + 56) + 8 * v129);
          }

          else
          {
            v131 = MEMORY[0x1E69E7CC8];
          }

          v132 = v131[2];
          v347 = v123;
          if (v132)
          {
            v133 = OUTLINED_FUNCTION_19_18();
            v135 = sub_1DC2AEB04(v133, v134);
            if (v136)
            {
              v132 = *(v131[7] + 8 * v135);
            }

            else
            {
              v132 = 0;
            }
          }

          v137 = v132 + 1;
          if (__OFADD__(v132, 1))
          {
            goto LABEL_173;
          }

          v352 = v121;
          swift_isUniquelyReferenced_nonNull_native();
          v356 = v131;
          v138 = OUTLINED_FUNCTION_19_18();
          v140 = sub_1DC2AEB04(v138, v139);
          if (__OFADD__(v131[2], (v141 & 1) == 0))
          {
            goto LABEL_174;
          }

          v142 = v140;
          v143 = v141;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D5D0, &unk_1DC528818);
          if (sub_1DC517FFC())
          {
            v144 = OUTLINED_FUNCTION_19_18();
            v146 = sub_1DC2AEB04(v144, v145);
            if ((v143 & 1) != (v147 & 1))
            {
              goto LABEL_184;
            }

            v142 = v146;
          }

          if (v143)
          {

            v148 = v356;
            *(v356[7] + 8 * v142) = v137;
          }

          else
          {
            v148 = v356;
            v356[(v142 >> 6) + 8] |= 1 << v142;
            v149 = (v148[6] + 16 * v142);
            *v149 = v126;
            v149[1] = v127;
            *(v148[7] + 8 * v142) = v137;
            v150 = v148[2];
            v151 = __OFADD__(v150, 1);
            v152 = v150 + 1;
            if (v151)
            {
              goto LABEL_176;
            }

            v148[2] = v152;
          }

          v153 = v347;
          swift_isUniquelyReferenced_nonNull_native();
          v356 = v153;
          v154 = v353;
          v155 = sub_1DC2AEB04(v125, v353);
          v120 = v354;
          if (__OFADD__(*(v153 + 16), (v156 & 1) == 0))
          {
            goto LABEL_175;
          }

          v157 = v155;
          v158 = v156;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D5D8, &unk_1DC528820);
          if (sub_1DC517FFC())
          {
            v159 = sub_1DC2AEB04(v125, v154);
            if ((v158 & 1) != (v160 & 1))
            {
              goto LABEL_184;
            }

            v157 = v159;
          }

          v123 = v356;
          if (v158)
          {
            v161 = v356[7];
            v162 = *(v161 + 8 * v157);
            *(v161 + 8 * v157) = v148;
          }

          else
          {
            v356[(v157 >> 6) + 8] |= 1 << v157;
            v163 = (*(v123 + 48) + 16 * v157);
            *v163 = v125;
            v163[1] = v154;
            *(*(v123 + 56) + 8 * v157) = v148;
            v164 = *(v123 + 16);
            v151 = __OFADD__(v164, 1);
            v165 = v164 + 1;
            if (v151)
            {
              goto LABEL_177;
            }

            *(v123 + 16) = v165;
          }

          v121 = v352 + 1;
          v122 += 4;
          if (v351 == v352 + 1)
          {
            goto LABEL_128;
          }
        }

        goto LABEL_172;
      }

      v123 = MEMORY[0x1E69E7CC8];
LABEL_128:

      v265 = *(v123 + 16);
      v266 = MEMORY[0x1E69E7CC0];
      if (!v265)
      {
        v267 = MEMORY[0x1E69E7CC0];
        goto LABEL_160;
      }

      v355 = MEMORY[0x1E69E7CC0];
      sub_1DC2DF6FC(0, v265, 0);
      v267 = v355;
      v269 = sub_1DC3743F8(v123);
      v271 = v270;
      v272 = 0;
      v339 = v123 + 64;
      v347 = v123;
      v337 = v265;
      while (2)
      {
        if (v269 < 0 || v269 >= 1 << *(v123 + 32))
        {
          goto LABEL_178;
        }

        if (((*(v339 + ((v269 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v269) & 1) == 0)
        {
          goto LABEL_179;
        }

        if (*(v123 + 36) != v271)
        {
          goto LABEL_180;
        }

        LODWORD(v345) = v268;
        v346 = v272;
        v273 = (*(v123 + 48) + 16 * v269);
        v274 = *v273;
        v275 = *(*(v123 + 56) + 8 * v269);
        v276 = *(v275 + 16);
        v344 = v273[1];

        if (!v276)
        {
          goto LABEL_154;
        }

        v340 = v274;
        v341 = v271;
        v342 = v269;
        v343 = v267;
        v359 = v266;
        sub_1DC2DF6FC(0, v276, 0);
        v354 = v359;
        v279 = sub_1DC3743F8(v275);
        v280 = 0;
        v281 = v275 + 64;
        v349 = v277;
        v350 = v276;
        v348 = v275 + 72;
        v351 = v275 + 64;
        do
        {
          if (v279 < 0 || v279 >= 1 << *(v275 + 32))
          {
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v282 = v279 >> 6;
          if ((*(v281 + 8 * (v279 >> 6)) & (1 << v279)) == 0)
          {
            goto LABEL_165;
          }

          if (*(v275 + 36) != v277)
          {
            goto LABEL_166;
          }

          v353 = v277;
          LODWORD(v352) = v278;
          v283 = (*(v275 + 48) + 16 * v279);
          v285 = *v283;
          v284 = v283[1];
          v286 = *(*(v275 + 56) + 8 * v279);
          OUTLINED_FUNCTION_15_15(91);

          MEMORY[0x1E1296160](v285, v284);
          MEMORY[0x1E1296160](8236, 0xE200000000000000);
          v358 = v286;
          v287 = sub_1DC51823C();
          MEMORY[0x1E1296160](v287);

          OUTLINED_FUNCTION_26_15();

          v289 = v356;
          v288 = v357;
          v290 = v354;
          v359 = v354;
          v292 = v354[2];
          v291 = v354[3];
          if (v292 >= v291 >> 1)
          {
            v302 = OUTLINED_FUNCTION_26(v291);
            sub_1DC2DF6FC(v302, v292 + 1, 1);
            v290 = v359;
          }

          v290[2] = v292 + 1;
          v293 = &v290[2 * v292];
          v293[4] = v289;
          v293[5] = v288;
          v294 = 1 << *(v275 + 32);
          if (v279 >= v294)
          {
            goto LABEL_167;
          }

          v281 = v351;
          v295 = *(v351 + 8 * v282);
          if ((v295 & (1 << v279)) == 0)
          {
            goto LABEL_168;
          }

          if (*(v275 + 36) != v353)
          {
            goto LABEL_169;
          }

          v354 = v290;
          v296 = v295 & (-2 << (v279 & 0x3F));
          if (v296)
          {
            v294 = __clz(__rbit64(v296)) | v279 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v297 = v282 << 6;
            v298 = (v348 + 8 * v282);
            v299 = v282 + 1;
            while (v299 < (v294 + 63) >> 6)
            {
              v301 = *v298++;
              v300 = v301;
              v297 += 64;
              ++v299;
              if (v301)
              {
                sub_1DC3EA158(v279, v353, v352 & 1);
                v294 = __clz(__rbit64(v300)) + v297;
                goto LABEL_152;
              }
            }

            sub_1DC3EA158(v279, v353, v352 & 1);
          }

LABEL_152:
          v278 = 0;
          v280 = (v280 + 1);
          v279 = v294;
          v277 = v349;
        }

        while (v280 != v350);
        v267 = v343;
        v269 = v342;
        LODWORD(v271) = v341;
        v266 = v354;
LABEL_154:
        OUTLINED_FUNCTION_15_15(123);
        v303 = OUTLINED_FUNCTION_21_14();
        MEMORY[0x1E1296160](v303, v344);
        MEMORY[0x1E1296160](5972026, 0xE300000000000000);
        v359 = v266;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
        OUTLINED_FUNCTION_1_6();
        sub_1DC327B3C(&qword_1ECC7B9F0, &qword_1ECC7C130, &unk_1DC5240F0);
        OUTLINED_FUNCTION_8_18();
        sub_1DC5176AC();
        v305 = v304;

        v306 = OUTLINED_FUNCTION_21_14();
        MEMORY[0x1E1296160](v306, v305);

        MEMORY[0x1E1296160](32093, 0xE200000000000000);
        v307 = v356;
        v308 = v357;

        v355 = v267;
        v310 = v267[2];
        v309 = v267[3];
        v311 = v346;
        if (v310 >= v309 >> 1)
        {
          v316 = OUTLINED_FUNCTION_26(v309);
          sub_1DC2DF6FC(v316, v310 + 1, 1);
          v267 = v355;
        }

        v312 = v311 + 1;
        v267[2] = v310 + 1;
        v313 = &v267[2 * v310];
        v313[4] = v307;
        v313[5] = v308;
        v123 = v347;
        v314 = sub_1DC3EA0D8(v269, v271, v345 & 1, v347);
        v269 = v314;
        v271 = v315;
        v74 = v312 == v337;
        v272 = v312;
        v266 = MEMORY[0x1E69E7CC0];
        if (!v74)
        {
          continue;
        }

        break;
      }

      sub_1DC3EA158(v314, v315, v268 & 1);
LABEL_160:
      if (v267[2])
      {
        LOBYTE(v359) = 11;
        sub_1DC30D6EC();
        v317 = sub_1DC51823C();
        OUTLINED_FUNCTION_13_24(v317, v318);
        v359 = v267;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
        OUTLINED_FUNCTION_1_6();
        sub_1DC327B3C(v319, &qword_1ECC7C130, &unk_1DC5240F0);
        OUTLINED_FUNCTION_8_18();
        sub_1DC5176AC();
        v321 = v320;

        v322 = OUTLINED_FUNCTION_21_14();
        MEMORY[0x1E1296160](v322, v321);

        OUTLINED_FUNCTION_26_15();

LABEL_162:
        swift_unknownObjectRelease();
        return v356;
      }

      else
      {

        sub_1DC517B9C();
        sub_1DC297814();
        v323 = sub_1DC296DBC();
        sub_1DC516F0C();

        swift_unknownObjectRelease();
        return 0;
      }

    default:
      sub_1DC517B9C();
      sub_1DC297814();
      v98 = sub_1DC296DBC();
      goto LABEL_87;
  }
}

uint64_t sub_1DC3E6A54(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1DC516B8C();
  v38 = OUTLINED_FUNCTION_0(v7);
  v39 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1();
  v37 = v12 - v11;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DC516C7C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_153();
  switch(a3)
  {
    case 1:
      v42 = a1;

      sub_1DC3E7D00(&v42);
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      __break(1u);

      __break(1u);
      return result;
    case 2:
      goto LABEL_4;
    case 3:
      sub_1DC3EA01C(0, *(a1 + 16), a1);
      goto LABEL_19;
    default:
      v42 = a1;

      sub_1DC3E9D80();
      if (a2 < 0)
      {
        __break(1u);
LABEL_4:
        v21 = 0;
        v22 = *&a2;
        v40 = *(a1 + 16);
        v34 = (v16 + 32);
        v35 = v20;
        v36 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v40 == v21)
          {
            sub_1DC3EA01C(0, *(v36 + 16), v36);
            OUTLINED_FUNCTION_24_14();

            return v3;
          }

          v23 = (*(v16 + 80) + 32) & ~*(v16 + 80);
          v24 = *(v16 + 72);
          (*(v16 + 16))(v4, a1 + v23 + v24 * v21, v13);
          v25 = sub_1DC516C6C();
          if (*(v25 + 16))
          {
            v3 = v13;
            (*(v39 + 16))(v37, v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v38);

            sub_1DC516B1C();
            v27 = v26;
            (*(v39 + 8))(v37, v38);
            if (v27 < v22)
            {
              goto LABEL_8;
            }

LABEL_10:
            v28 = *v34;
            (*v34)(v35, v4, v13);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = v36;
            v42 = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1DC3E7B2C(0, *(v36 + 16) + 1, 1);
              v30 = v42;
            }

            v3 = *(v30 + 16);
            v31 = *(v30 + 24);
            if (v3 >= v31 >> 1)
            {
              v32 = OUTLINED_FUNCTION_26(v31);
              sub_1DC3E7B2C(v32, v3 + 1, 1);
              v30 = v42;
            }

            ++v21;
            *(v30 + 16) = v3 + 1;
            v36 = v30;
            v28(v30 + v23 + v3 * v24, v35, v13);
          }

          else
          {

            if (v22 <= 0.0)
            {
              goto LABEL_10;
            }

LABEL_8:
            (*(v16 + 8))(v4, v13);
            ++v21;
          }
        }
      }

LABEL_18:
      sub_1DC3E7424(a2, v42);
LABEL_19:
      OUTLINED_FUNCTION_24_14();
      return v3;
  }
}

unint64_t sub_1DC3E6E44()
{
  v1 = sub_1DC5172FC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v83 = v3;
  v84 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v82 = (v7 - v6);
  OUTLINED_FUNCTION_12();
  v8 = sub_1DC5171DC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v80 = v10;
  v81 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC51728C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_153();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v27 = OUTLINED_FUNCTION_10(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v79 - v34;
  sub_1DC516C5C();
  v36 = sub_1DC5172AC();
  v37 = 0;
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) != 1)
  {
    v38 = OUTLINED_FUNCTION_19_18();
    sub_1DC35D0B4(v38, v39);
    OUTLINED_FUNCTION_2_3();
    v41 = v40;
    v43 = *(v42 + 88);
    v44 = OUTLINED_FUNCTION_122();
    v46 = v45(v44);
    if (v46 == *MEMORY[0x1E69DAE70])
    {
      v47 = *(v41 + 96);
      v48 = OUTLINED_FUNCTION_122();
      v49(v48);
      v50 = *v32;
      v51 = swift_projectBox();
      v52 = v19[2];
      v52(v0, v51, v16);
      v52(v24, v0, v16);
      v53 = v19[11];
      v54 = OUTLINED_FUNCTION_47_0();
      v56 = v55(v54);
      if (v56 == *MEMORY[0x1E69DADE8])
      {
        v57 = v19[1];
        v57(v0, v16);
        v58 = OUTLINED_FUNCTION_47_0();
        (v57)(v58);

        v37 = 0x6550746E65746E49;
        goto LABEL_15;
      }

      if (v56 == *MEMORY[0x1E69DADA8])
      {
        v71 = v19[1];
        v71(v0, v16);
        v72 = OUTLINED_FUNCTION_47_0();
        (v71)(v72);

        v37 = 0xD000000000000011;
        goto LABEL_15;
      }

      v76 = v19[1];
      v76(v0, v16);
      v77 = OUTLINED_FUNCTION_47_0();
      (v76)(v77);
    }

    else
    {
      if (v46 != *MEMORY[0x1E69DAE28])
      {
        v73 = *(v41 + 8);
        v74 = OUTLINED_FUNCTION_122();
        v75(v74);
LABEL_14:
        v37 = 0;
        goto LABEL_15;
      }

      v59 = *(v41 + 96);
      v60 = OUTLINED_FUNCTION_122();
      v61(v60);
      v62 = *v32;
      v63 = swift_projectBox();
      v65 = v80;
      v64 = v81;
      (*(v80 + 16))(v15, v63, v81);
      v66 = v82;
      sub_1DC5171CC();
      (*(v65 + 8))(v15, v64);
      v68 = v83;
      v67 = v84;
      if ((*(v83 + 88))(v66, v84) == *MEMORY[0x1E69DB098])
      {
        (*(v68 + 96))(v66, v67);
        v69 = *v66;
        v37 = *(*v66 + 32);
        v70 = *(v69 + 40);

        goto LABEL_15;
      }

      (*(v68 + 8))(v66, v67);
    }

    goto LABEL_14;
  }

LABEL_15:
  sub_1DC2BE530(v35, &qword_1ECC7BFF8, &qword_1DC522580);
  return v37;
}

uint64_t sub_1DC3E737C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC516B8C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1DC3E7424(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DC2DAEF4(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1DC3EA01C(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1DC3E74B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D600, &unk_1DC528A30);
  v1 = OUTLINED_FUNCTION_10(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_1DC516C6C();
  sub_1DC3E737C(v10, v9);

  v11 = sub_1DC516B8C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
  {
    sub_1DC2BE530(v9, &qword_1ECC7D600, &unk_1DC528A30);
    v12 = 0.0;
  }

  else
  {
    sub_1DC516B1C();
    v12 = v13;
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  v14 = sub_1DC516C6C();
  sub_1DC3E737C(v14, v6);

  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_1DC2BE530(v6, &qword_1ECC7D600, &unk_1DC528A30);
    v15 = 0.0;
  }

  else
  {
    sub_1DC516B1C();
    v15 = v16;
    (*(*(v11 - 8) + 8))(v6, v11);
  }

  return v15 < v12;
}

uint64_t sub_1DC3E768C(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1DC3E76BC()
{
  sub_1DC5182FC();
  sub_1DC51831C();
  return sub_1DC51833C();
}

uint64_t sub_1DC3E7728()
{
  sub_1DC5182FC();
  sub_1DC51831C();
  return sub_1DC51833C();
}

uint64_t sub_1DC3E776C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3E768C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3E77A4(uint64_t result)
{
  if (result >= 3u)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1DC3E77B8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3E77A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3E77E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F10;
  v1 = *MEMORY[0x1E69D2398];
  *(v0 + 32) = sub_1DC51772C();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69D23A8];
  result = sub_1DC51772C();
  *(v0 + 48) = result;
  *(v0 + 56) = v5;
  qword_1ECC8F9D8 = v0;
  return result;
}

uint64_t *sub_1DC3E7860()
{
  if (qword_1ECC8A180 != -1)
  {
    swift_once();
  }

  return &qword_1ECC8F9D8;
}

uint64_t sub_1DC3E78B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC523AA0;
  v1 = *MEMORY[0x1E69D2398];
  *(v0 + 32) = sub_1DC51772C();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69D23A8];
  *(v0 + 48) = sub_1DC51772C();
  *(v0 + 56) = v4;
  v5 = sub_1DC3EAA94();
  v7 = *v5;
  v6 = v5[1];
  *(v0 + 64) = v7;
  *(v0 + 72) = v6;

  v8 = sub_1DC3EAAA0();
  v10 = *v8;
  v9 = v8[1];
  *(v0 + 80) = v10;
  *(v0 + 88) = v9;

  v11 = sub_1DC3EAAAC();
  v13 = *v11;
  v12 = v11[1];
  *(v0 + 96) = v13;
  *(v0 + 104) = v12;

  v14 = sub_1DC3EAAC4();
  v16 = *v14;
  v15 = v14[1];
  *(v0 + 112) = v16;
  *(v0 + 120) = v15;

  v17 = sub_1DC3EAB00();
  v19 = *v17;
  v18 = v17[1];
  *(v0 + 128) = v19;
  *(v0 + 136) = v18;

  v20 = sub_1DC3EAB60();
  v22 = *v20;
  v21 = v20[1];
  *(v0 + 144) = v22;
  *(v0 + 152) = v21;

  v23 = sub_1DC3EAB3C();
  v25 = *v23;
  v24 = v23[1];
  *(v0 + 160) = v25;
  *(v0 + 168) = v24;

  v26 = sub_1DC3EAAD0();
  v28 = *v26;
  v27 = v26[1];
  *(v0 + 176) = v28;
  *(v0 + 184) = v27;

  v29 = sub_1DC3EAB18();
  v31 = *v29;
  v30 = v29[1];
  *(v0 + 192) = v31;
  *(v0 + 200) = v30;

  v32 = sub_1DC3EAB24();
  v34 = *v32;
  v33 = v32[1];
  *(v0 + 208) = v34;
  *(v0 + 216) = v33;

  v35 = sub_1DC3EAB48();
  v37 = *v35;
  v36 = v35[1];
  *(v0 + 224) = v37;
  *(v0 + 232) = v36;

  v38 = sub_1DC3EAB78();
  v40 = *v38;
  v39 = v38[1];
  *(v0 + 240) = v40;
  *(v0 + 248) = v39;

  v41 = sub_1DC3EAA88();
  v43 = *v41;
  v42 = v41[1];
  *(v0 + 256) = v43;
  *(v0 + 264) = v42;
  qword_1ECC8F9E0 = v0;
}

uint64_t *sub_1DC3E7A08()
{
  if (qword_1ECC8A188 != -1)
  {
    swift_once();
  }

  return &qword_1ECC8F9E0;
}

uint64_t sub_1DC3E7A58(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC516C7C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC516C7C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1DC3E7B2C(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC3E7B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC3E7B4C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5F8, &qword_1DC529670);
  v10 = *(sub_1DC516C7C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC516C7C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC3E7A58(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DC3E7D00(size_t *a1)
{
  v2 = *(sub_1DC516C7C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DC3EA0C4(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1DC3E7DA8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1DC3E7DA8(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DC51822C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DC516C7C();
        v6 = sub_1DC517A4C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DC516C7C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DC3E83C0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DC3E7ED8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DC3E7ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D600, &unk_1DC528A30);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v51 - v13;
  v14 = sub_1DC516C7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v67 = &v51 - v23;
  v53 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v64 = *(v22 + 16);
    v65 = v22 + 16;
    v25 = *(v22 + 72);
    v62 = (v22 + 8);
    v63 = v12;
    v26 = v24 + v25 * (a3 - 1);
    v58 = -v25;
    v59 = (v22 + 32);
    v27 = a1 - a3;
    v60 = v24;
    v52 = v25;
    v28 = v24 + v25 * a3;
    while (2)
    {
      v56 = v26;
      v57 = a3;
      v54 = v28;
      v55 = v27;
      v29 = v27;
      do
      {
        v30 = v64;
        v64(v67, v28, v14);
        v31 = v20;
        v30(v20, v26, v14);
        v32 = sub_1DC516C6C();
        v33 = *(v32 + 16);
        v34 = sub_1DC516B8C();
        v35 = v34;
        if (v33)
        {
          v36 = v66;
          (*(*(v34 - 8) + 16))(v66, v32 + ((*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80)), v34);
          v37 = 0;
        }

        else
        {
          v37 = 1;
          v36 = v66;
        }

        __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v35);
        v39 = v36;
        v20 = v31;
        if (EnumTagSinglePayload == 1)
        {
          sub_1DC2BE530(v39, &qword_1ECC7D600, &unk_1DC528A30);
          v40 = 0.0;
        }

        else
        {
          sub_1DC516B1C();
          v40 = v41;
          (*(*(v35 - 8) + 8))(v39, v35);
        }

        v42 = v63;
        v43 = sub_1DC516C6C();
        if (*(v43 + 16))
        {
          (*(*(v35 - 8) + 16))(v42, v43 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)), v35);
          v44 = 0;
        }

        else
        {
          v44 = 1;
        }

        __swift_storeEnumTagSinglePayload(v42, v44, 1, v35);

        if (__swift_getEnumTagSinglePayload(v42, 1, v35) == 1)
        {
          sub_1DC2BE530(v42, &qword_1ECC7D600, &unk_1DC528A30);
          v45 = 0.0;
        }

        else
        {
          sub_1DC516B1C();
          v45 = v46;
          (*(*(v35 - 8) + 8))(v42, v35);
        }

        v47 = *v62;
        (*v62)(v20, v14);
        result = (v47)(v67, v14);
        if (v45 >= v40)
        {
          break;
        }

        if (!v60)
        {
          __break(1u);
          return result;
        }

        v48 = *v59;
        v49 = v61;
        (*v59)(v61, v28, v14);
        swift_arrayInitWithTakeFrontToBack();
        result = (v48)(v26, v49, v14);
        v26 += v58;
        v28 += v58;
      }

      while (!__CFADD__(v29++, 1));
      a3 = v57 + 1;
      v26 = v56 + v52;
      v27 = v55 - 1;
      v28 = v54 + v52;
      if (v57 + 1 != v53)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC3E83C0(int64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v164 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D600, &unk_1DC528A30);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v183 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v159 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v159 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v159 - v16;
  v18 = sub_1DC516C7C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v167 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v181 = &v159 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v188 = &v159 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v187 = &v159 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v179 = &v159 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v177 = &v159 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  result = MEMORY[0x1EEE9AC00](v32);
  v175 = v35;
  v176 = a3;
  v37 = a3[1];
  if (v37 < 1)
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_125:
    a4 = *v164;
    if (!*v164)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_127;
    }

    goto LABEL_162;
  }

  v160 = &v159 - v34;
  v161 = v36;
  v169 = v17;
  v38 = 0;
  v185 = v35 + 16;
  v186 = (v35 + 8);
  v184 = (v35 + 32);
  v39 = MEMORY[0x1E69E7CC0];
  v163 = a4;
  v182 = v12;
  v170 = v15;
  while (1)
  {
    v40 = v38 + 1;
    v168 = v38;
    if (v38 + 1 >= v37)
    {
      v70 = v38;
    }

    else
    {
      v174 = v37;
      v41 = *v176;
      v42 = *(v35 + 72);
      v43 = *v176 + v42 * v40;
      v44 = *(v35 + 16);
      v45 = v160;
      v44(v160, v43, v18);
      v180 = v41;
      v46 = v41 + v42 * v168;
      v47 = v161;
      v172 = v44;
      v44(v161, v46, v18);
      LODWORD(v173) = sub_1DC3E74B8();
      if (v178)
      {
        v158 = *v186;
        (*v186)(v47, v18);
        (v158)(v45, v18);
      }

      v162 = v39;
      v48 = *v186;
      (*v186)(v47, v18);
      v171 = v48;
      result = (v48)(v45, v18);
      v49 = v168 + 2;
      v50 = v180 + v42 * (v168 + 2);
      v51 = v42;
      v180 = v42;
      v52 = v174;
      while (1)
      {
        v39 = v49;
        if (v40 + 1 >= v52)
        {
          break;
        }

        v53 = v40;
        v54 = v172;
        (v172)(v177, v50, v18);
        v54(v179, v43, v18);
        v55 = sub_1DC516C6C();
        v56 = *(v55 + 16);
        v57 = sub_1DC516B8C();
        v58 = v57;
        if (v56)
        {
          v59 = v169;
          (*(*(v57 - 8) + 16))(v169, v55 + ((*(*(v57 - 8) + 80) + 32) & ~*(*(v57 - 8) + 80)), v57);
          v60 = 0;
        }

        else
        {
          v60 = 1;
          v59 = v169;
        }

        __swift_storeEnumTagSinglePayload(v59, v60, 1, v58);

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v58);
        v62 = v170;
        if (EnumTagSinglePayload == 1)
        {
          sub_1DC2BE530(v59, &qword_1ECC7D600, &unk_1DC528A30);
          v63 = 0.0;
        }

        else
        {
          sub_1DC516B1C();
          v63 = v64;
          (*(*(v58 - 8) + 8))(v59, v58);
        }

        v52 = v174;
        v65 = sub_1DC516C6C();
        if (*(v65 + 16))
        {
          (*(*(v58 - 8) + 16))(v62, v65 + ((*(*(v58 - 8) + 80) + 32) & ~*(*(v58 - 8) + 80)), v58);
          v66 = 0;
        }

        else
        {
          v66 = 1;
        }

        __swift_storeEnumTagSinglePayload(v62, v66, 1, v58);

        if (__swift_getEnumTagSinglePayload(v62, 1, v58) == 1)
        {
          sub_1DC2BE530(v62, &qword_1ECC7D600, &unk_1DC528A30);
          v67 = 0.0;
        }

        else
        {
          sub_1DC516B1C();
          v67 = v68;
          (*(*(v58 - 8) + 8))(v62, v58);
        }

        v69 = v171;
        (v171)(v179, v18);
        result = v69(v177, v18);
        v51 = v180;
        v50 += v180;
        v43 += v180;
        v40 = v53 + 1;
        v49 = v39 + 1;
        if (((v173 ^ (v67 >= v63)) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v40 = v52;
LABEL_23:
      a4 = v163;
      if (v173)
      {
        v70 = v168;
        if (v40 < v168)
        {
          goto LABEL_161;
        }

        if (v168 >= v40)
        {
          v39 = v162;
        }

        else
        {
          v71 = v52 >= v39 ? v39 : v52;
          v72 = v51 * (v71 - 1);
          v73 = v51 * v71;
          v74 = v40;
          v75 = v168 * v51;
          v174 = v74;
          v76 = v168;
          do
          {
            if (v76 != --v74)
            {
              v77 = *v176;
              if (!*v176)
              {
                goto LABEL_166;
              }

              v78 = *v184;
              (*v184)(v167, v77 + v75, v18);
              v79 = v75 < v72 || v77 + v75 >= v77 + v73;
              if (v79)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v75 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v78)(v77 + v72, v167, v18);
              v70 = v168;
              v51 = v180;
            }

            ++v76;
            v72 -= v51;
            v73 -= v51;
            v75 += v51;
          }

          while (v76 < v74);
          a4 = v163;
          v39 = v162;
          v40 = v174;
        }
      }

      else
      {
        v39 = v162;
        v70 = v168;
      }
    }

    v80 = v176[1];
    if (v40 < v80)
    {
      if (__OFSUB__(v40, v70))
      {
        goto LABEL_158;
      }

      if (v40 - v70 < a4)
      {
        break;
      }
    }

LABEL_73:
    if (v40 < v70)
    {
      goto LABEL_157;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC30B0C0(0, *(v39 + 16) + 1, 1, v39);
      v39 = result;
    }

    v108 = *(v39 + 16);
    v107 = *(v39 + 24);
    v109 = v108 + 1;
    v174 = v40;
    if (v108 >= v107 >> 1)
    {
      result = sub_1DC30B0C0((v107 > 1), v108 + 1, 1, v39);
      v39 = result;
    }

    *(v39 + 16) = v109;
    v110 = v39 + 32;
    v111 = (v39 + 32 + 16 * v108);
    v112 = v174;
    *v111 = v70;
    v111[1] = v112;
    v180 = *v164;
    if (!v180)
    {
      goto LABEL_167;
    }

    if (v108)
    {
      while (1)
      {
        v113 = v109 - 1;
        v114 = (v110 + 16 * (v109 - 1));
        v115 = (v39 + 16 * v109);
        if (v109 >= 4)
        {
          break;
        }

        if (v109 == 3)
        {
          v116 = *(v39 + 32);
          v117 = *(v39 + 40);
          v126 = __OFSUB__(v117, v116);
          v118 = v117 - v116;
          v119 = v126;
LABEL_93:
          if (v119)
          {
            goto LABEL_144;
          }

          v131 = *v115;
          v130 = v115[1];
          v132 = __OFSUB__(v130, v131);
          v133 = v130 - v131;
          v134 = v132;
          if (v132)
          {
            goto LABEL_147;
          }

          v135 = v114[1];
          v136 = v135 - *v114;
          if (__OFSUB__(v135, *v114))
          {
            goto LABEL_150;
          }

          if (__OFADD__(v133, v136))
          {
            goto LABEL_152;
          }

          if (v133 + v136 >= v118)
          {
            if (v118 < v136)
            {
              v113 = v109 - 2;
            }

            goto LABEL_115;
          }

          goto LABEL_108;
        }

        if (v109 < 2)
        {
          goto LABEL_146;
        }

        v138 = *v115;
        v137 = v115[1];
        v126 = __OFSUB__(v137, v138);
        v133 = v137 - v138;
        v134 = v126;
LABEL_108:
        if (v134)
        {
          goto LABEL_149;
        }

        v140 = *v114;
        v139 = v114[1];
        v126 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v126)
        {
          goto LABEL_151;
        }

        if (v141 < v133)
        {
          goto LABEL_122;
        }

LABEL_115:
        if (v113 - 1 >= v109)
        {
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (!*v176)
        {
          goto LABEL_164;
        }

        v145 = v39;
        v146 = (v110 + 16 * (v113 - 1));
        v39 = *v146;
        v147 = (v110 + 16 * v113);
        v148 = v147[1];
        v149 = v178;
        sub_1DC3E92E4(*v176 + *(v175 + 72) * *v146, *v176 + *(v175 + 72) * *v147, *v176 + *(v175 + 72) * v148, v180);
        v178 = v149;
        if (v149)
        {
        }

        if (v148 < v39)
        {
          goto LABEL_139;
        }

        a4 = *(v145 + 16);
        if (v113 > a4)
        {
          goto LABEL_140;
        }

        *v146 = v39;
        v146[1] = v148;
        if (v113 >= a4)
        {
          goto LABEL_141;
        }

        v109 = a4 - 1;
        result = memmove((v110 + 16 * v113), v147 + 2, 16 * (a4 - 1 - v113));
        v39 = v145;
        *(v145 + 16) = a4 - 1;
        if (a4 <= 2)
        {
          goto LABEL_122;
        }
      }

      v120 = v110 + 16 * v109;
      v121 = *(v120 - 64);
      v122 = *(v120 - 56);
      v126 = __OFSUB__(v122, v121);
      v123 = v122 - v121;
      if (v126)
      {
        goto LABEL_142;
      }

      v125 = *(v120 - 48);
      v124 = *(v120 - 40);
      v126 = __OFSUB__(v124, v125);
      v118 = v124 - v125;
      v119 = v126;
      if (v126)
      {
        goto LABEL_143;
      }

      v127 = v115[1];
      v128 = v127 - *v115;
      if (__OFSUB__(v127, *v115))
      {
        goto LABEL_145;
      }

      v126 = __OFADD__(v118, v128);
      v129 = v118 + v128;
      if (v126)
      {
        goto LABEL_148;
      }

      if (v129 >= v123)
      {
        v143 = *v114;
        v142 = v114[1];
        v126 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v126)
        {
          goto LABEL_156;
        }

        if (v118 < v144)
        {
          v113 = v109 - 2;
        }

        goto LABEL_115;
      }

      goto LABEL_93;
    }

LABEL_122:
    v35 = v175;
    v37 = v176[1];
    v38 = v174;
    a4 = v163;
    if (v174 >= v37)
    {
      goto LABEL_125;
    }
  }

  v81 = v70 + a4;
  if (__OFADD__(v70, a4))
  {
    goto LABEL_159;
  }

  if (v81 >= v80)
  {
    v81 = v176[1];
  }

  if (v81 < v70)
  {
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    result = sub_1DC30D6B0(v39);
    v39 = result;
LABEL_127:
    v150 = (v39 + 16);
    v151 = *(v39 + 16);
    while (v151 >= 2)
    {
      if (!*v176)
      {
        goto LABEL_165;
      }

      v152 = v39;
      v153 = (v39 + 16 * v151);
      v39 = *v153;
      v154 = &v150[2 * v151];
      v155 = v154[1];
      v156 = v178;
      sub_1DC3E92E4(*v176 + *(v175 + 72) * *v153, *v176 + *(v175 + 72) * *v154, *v176 + *(v175 + 72) * v155, a4);
      v178 = v156;
      if (v156)
      {
        break;
      }

      if (v155 < v39)
      {
        goto LABEL_153;
      }

      if (v151 - 2 >= *v150)
      {
        goto LABEL_154;
      }

      *v153 = v39;
      v153[1] = v155;
      v157 = *v150 - v151;
      if (*v150 < v151)
      {
        goto LABEL_155;
      }

      v151 = *v150 - 1;
      result = memmove(v154, v154 + 2, 16 * v157);
      *v150 = v151;
      v39 = v152;
    }
  }

  if (v40 == v81)
  {
    goto LABEL_73;
  }

  v162 = v39;
  v82 = *v176;
  v83 = *(v175 + 72);
  v84 = *(v175 + 16);
  a4 = *v176 + v83 * (v40 - 1);
  v85 = v40;
  v86 = -v83;
  v87 = (v70 - v85);
  v174 = v85;
  v180 = v82;
  v165 = v83;
  v88 = (v82 + v85 * v83);
  v166 = v81;
LABEL_54:
  v171 = v88;
  v172 = v87;
  v173 = a4;
  while (1)
  {
    v84(v187, v88, v18);
    v84(v188, a4, v18);
    v89 = sub_1DC516C6C();
    v90 = *(v89 + 16);
    v91 = sub_1DC516B8C();
    v92 = v91;
    if (v90)
    {
      v93 = v182;
      (*(*(v91 - 8) + 16))(v182, v89 + ((*(*(v91 - 8) + 80) + 32) & ~*(*(v91 - 8) + 80)), v91);
      v94 = 0;
    }

    else
    {
      v94 = 1;
      v93 = v182;
    }

    __swift_storeEnumTagSinglePayload(v93, v94, 1, v92);

    v95 = __swift_getEnumTagSinglePayload(v93, 1, v92);
    v96 = v93;
    v97 = v183;
    if (v95 == 1)
    {
      sub_1DC2BE530(v96, &qword_1ECC7D600, &unk_1DC528A30);
      v98 = 0.0;
    }

    else
    {
      sub_1DC516B1C();
      v98 = v99;
      (*(*(v92 - 8) + 8))(v96, v92);
    }

    v100 = sub_1DC516C6C();
    if (*(v100 + 16))
    {
      (*(*(v92 - 8) + 16))(v97, v100 + ((*(*(v92 - 8) + 80) + 32) & ~*(*(v92 - 8) + 80)), v92);
      v101 = 0;
    }

    else
    {
      v101 = 1;
    }

    __swift_storeEnumTagSinglePayload(v97, v101, 1, v92);

    if (__swift_getEnumTagSinglePayload(v97, 1, v92) == 1)
    {
      sub_1DC2BE530(v97, &qword_1ECC7D600, &unk_1DC528A30);
      v102 = 0.0;
    }

    else
    {
      sub_1DC516B1C();
      v102 = v103;
      (*(*(v92 - 8) + 8))(v97, v92);
    }

    v104 = *v186;
    (*v186)(v188, v18);
    result = (v104)(v187, v18);
    if (v102 >= v98)
    {
LABEL_71:
      a4 = v173 + v165;
      v87 = v172 - 1;
      v88 = &v171[v165];
      if (++v174 == v166)
      {
        v40 = v166;
        v39 = v162;
        v70 = v168;
        goto LABEL_73;
      }

      goto LABEL_54;
    }

    if (!v180)
    {
      break;
    }

    v105 = *v184;
    v106 = v181;
    (*v184)(v181, v88, v18);
    swift_arrayInitWithTakeFrontToBack();
    v105(a4, v106, v18);
    a4 += v86;
    v88 += v86;
    v79 = __CFADD__(v87++, 1);
    if (v79)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_1DC3E92E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D600, &unk_1DC528A30);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v92 = &v91 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v91 - v17;
  v18 = sub_1DC516C7C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v99 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v96 = &v91 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v103 = &v91 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v102 = &v91 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    return result;
  }

  v31 = a2 - a1 == 0x8000000000000000 && v30 == -1;
  if (v31)
  {
    goto LABEL_85;
  }

  v32 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_86;
  }

  v98 = a3;
  v34 = (a2 - a1) / v30;
  v106 = a1;
  v105 = a4;
  v100 = (v27 + 8);
  v101 = (v27 + 16);
  v35 = v32 / v30;
  if (v34 >= v32 / v30)
  {
    sub_1DC3E7A58(a2, v32 / v30, a4);
    v60 = v30;
    v61 = a4 + v35 * v30;
    v62 = -v60;
    v63 = v61;
    v64 = v98;
    v103 = -v60;
LABEL_49:
    v102 = a2;
    v97 = v63;
    v98 = a2 + v62;
    v65 = v64;
    v66 = v63;
    v67 = v63;
    while (1)
    {
      if (v61 <= a4)
      {
        v106 = v102;
        v104 = v66;
        goto LABEL_83;
      }

      if (v102 <= a1)
      {
        break;
      }

      v95 = v66;
      v68 = a4;
      v69 = v61 + v62;
      v70 = *v101;
      (*v101)(v96, v69, v18);
      v70(v99, v98, v18);
      v71 = sub_1DC516C6C();
      v72 = *(v71 + 16);
      v73 = sub_1DC516B8C();
      v74 = v73;
      if (v72)
      {
        v75 = v92;
        (*(*(v73 - 8) + 16))(v92, v71 + ((*(*(v73 - 8) + 80) + 32) & ~*(*(v73 - 8) + 80)), v73);
        v76 = 0;
      }

      else
      {
        v76 = 1;
        v75 = v92;
      }

      __swift_storeEnumTagSinglePayload(v75, v76, 1, v74);

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v74);
      v78 = v75;
      a4 = v68;
      if (EnumTagSinglePayload == 1)
      {
        sub_1DC2BE530(v78, &qword_1ECC7D600, &unk_1DC528A30);
        v79 = 0.0;
      }

      else
      {
        sub_1DC516B1C();
        v79 = v80;
        (*(*(v74 - 8) + 8))(v78, v74);
      }

      v81 = v93;
      v82 = sub_1DC516C6C();
      if (*(v82 + 16))
      {
        (*(*(v74 - 8) + 16))(v81, v82 + ((*(*(v74 - 8) + 80) + 32) & ~*(*(v74 - 8) + 80)), v74);
        v83 = 0;
      }

      else
      {
        v83 = 1;
      }

      __swift_storeEnumTagSinglePayload(v81, v83, 1, v74);

      if (__swift_getEnumTagSinglePayload(v81, 1, v74) == 1)
      {
        sub_1DC2BE530(v81, &qword_1ECC7D600, &unk_1DC528A30);
        v84 = 0.0;
      }

      else
      {
        sub_1DC516B1C();
        v84 = v85;
        (*(*(v74 - 8) + 8))(v81, v74);
      }

      v64 = &v103[v65];
      v86 = *v100;
      (*v100)(v99, v18);
      v86(v96, v18);
      if (v84 < v79)
      {
        if (v65 < v102 || v64 >= v102)
        {
          a2 = v98;
          swift_arrayInitWithTakeFrontToBack();
          v63 = v95;
          v62 = v103;
        }

        else
        {
          v63 = v95;
          v89 = v98;
          a2 = v98;
          v62 = v103;
          if (v65 != v102)
          {
            v90 = v95;
            swift_arrayInitWithTakeBackToFront();
            a2 = v89;
            v63 = v90;
          }
        }

        goto LABEL_49;
      }

      if (v65 < v61 || v64 >= v61)
      {
        swift_arrayInitWithTakeFrontToBack();
        v65 = v64;
        v61 = v69;
        v66 = v69;
        v62 = v103;
        v67 = v97;
      }

      else
      {
        v66 = v69;
        v31 = v61 == v65;
        v65 = v64;
        v61 = v69;
        v62 = v103;
        v67 = v97;
        if (!v31)
        {
          swift_arrayInitWithTakeBackToFront();
          v65 = v64;
          v61 = v69;
          v66 = v69;
        }
      }
    }

    v106 = v102;
    v104 = v67;
  }

  else
  {
    sub_1DC3E7A58(a1, (a2 - a1) / v30, a4);
    v99 = (a4 + v34 * v30);
    v104 = v99;
    v36 = v98;
    v94 = v16;
    v95 = v30;
    while (a4 < v99 && a2 < v36)
    {
      v38 = *v101;
      v39 = a2;
      (*v101)(v102, a2, v18);
      v40 = a4;
      v41 = v18;
      v38(v103, a4, v18);
      v42 = sub_1DC516C6C();
      v43 = *(v42 + 16);
      v44 = sub_1DC516B8C();
      v45 = v44;
      if (v43)
      {
        v46 = v97;
        (*(*(v44 - 8) + 16))(v97, v42 + ((*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80)), v44);
        v47 = 0;
      }

      else
      {
        v47 = 1;
        v46 = v97;
      }

      __swift_storeEnumTagSinglePayload(v46, v47, 1, v45);

      a4 = v40;
      if (__swift_getEnumTagSinglePayload(v46, 1, v45) == 1)
      {
        sub_1DC2BE530(v46, &qword_1ECC7D600, &unk_1DC528A30);
        v48 = 0.0;
      }

      else
      {
        sub_1DC516B1C();
        v48 = v49;
        (*(*(v45 - 8) + 8))(v46, v45);
      }

      a2 = v39;
      v18 = v41;
      v50 = v94;
      v51 = sub_1DC516C6C();
      if (*(v51 + 16))
      {
        (*(*(v45 - 8) + 16))(v50, v51 + ((*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80)), v45);
        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      __swift_storeEnumTagSinglePayload(v50, v52, 1, v45);

      if (__swift_getEnumTagSinglePayload(v50, 1, v45) == 1)
      {
        sub_1DC2BE530(v50, &qword_1ECC7D600, &unk_1DC528A30);
        v53 = 0.0;
      }

      else
      {
        sub_1DC516B1C();
        v53 = v54;
        (*(*(v45 - 8) + 8))(v50, v45);
      }

      v36 = v98;
      v55 = *v100;
      (*v100)(v103, v41);
      v55(v102, v41);
      if (v53 >= v48)
      {
        v56 = v95;
        v58 = a4 + v95;
        if (a1 < a4 || a1 >= v58)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v105 = v58;
        a4 += v56;
      }

      else
      {
        v56 = v95;
        if (a1 < a2 || a1 >= a2 + v95)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v56;
      }

      a1 += v56;
      v106 = a1;
    }
  }

LABEL_83:
  sub_1DC3E9CA0(&v106, &v105, &v104);
  return 1;
}

uint64_t sub_1DC3E9CA0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1DC516C7C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC3E9D80()
{
  v1 = sub_1DC516C7C();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v30 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v31 = &v23 - v6;
  v26 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v23 = v8 - 2;
    v24 = (v27 + 40);
    v25 = v27 + 16;
    while (1)
    {
      v32 = 0;
      result = MEMORY[0x1E1298860](&v32, 8);
      v11 = (v32 * v8) >> 64;
      if (v8 > v32 * v8)
      {
        v12 = -v8 % v8;
        if (v12 > v32 * v8)
        {
          do
          {
            v32 = 0;
            result = MEMORY[0x1E1298860](&v32, 8);
          }

          while (v12 > v32 * v8);
          v11 = (v32 * v8) >> 64;
        }
      }

      v13 = v10 + v11;
      if (__OFADD__(v10, v11))
      {
        break;
      }

      if (v10 != v13)
      {
        v14 = *(v7 + 16);
        if (v10 >= v14)
        {
          goto LABEL_20;
        }

        v15 = v1;
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v16 = v7 + v29;
        v17 = *(v27 + 72);
        v18 = *(v27 + 16);
        v28 = v17 * v10;
        result = v18(v31, v7 + v29 + v17 * v10, v15);
        if (v13 >= v14)
        {
          goto LABEL_21;
        }

        v19 = v17 * v13;
        v18(v30, v16 + v17 * v13, v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v15;
        if ((result & 1) == 0)
        {
          result = sub_1DC3EA0C4(v7);
          v7 = result;
        }

        if (v10 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        v20 = v7 + v29;
        v21 = *v24;
        result = (*v24)(v7 + v29 + v28, v30, v15);
        if (v13 >= *(v7 + 16))
        {
          goto LABEL_23;
        }

        result = v21(v20 + v19, v31, v15);
        *v26 = v7;
        v9 = v23;
      }

      --v8;
      if (v10++ == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DC3EA01C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_1DC516C7C() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DC3EA0D8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_1DC517ECC();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DC3EA158(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DC3EA168()
{
  result = qword_1ECC7D5E8;
  if (!qword_1ECC7D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D5E8);
  }

  return result;
}

unint64_t sub_1DC3EA1C0()
{
  result = qword_1ECC7D5F0;
  if (!qword_1ECC7D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D5F0);
  }

  return result;
}

_BYTE *sub_1DC3EA220(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}