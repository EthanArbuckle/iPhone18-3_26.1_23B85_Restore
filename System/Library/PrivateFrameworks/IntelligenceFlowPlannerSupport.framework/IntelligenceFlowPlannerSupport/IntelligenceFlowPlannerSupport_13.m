id sub_22BF1B700(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22C26DEE4();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_22C26DF64();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_22C26DE84();

    swift_willThrow();
    v11 = sub_22C26DF64();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void SbertCachableModel.deinit()
{
  sub_22BE19460();
  v1 = sub_22C2720A4();
  v2 = sub_22BE179D8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v5 = sub_22C26DF64();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v13 = v12 - v11;
  v14 = type metadata accessor for SbertCachableModel.ModelOptions(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_22BE179EC();
  v18 = v17 - v16;
  v19 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse;
  sub_22BF1C1F8(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_modelInUse, v17 - v16);
  v20 = sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
  v21 = &qword_27D90B000;
  if (sub_22BE1AEA8(v18, 1, v20) != 1)
  {
    (*(v8 + 32))(v13, v18, v5);
    v22 = v0[4];
    if (v22 >> 60 == 15 || (v23 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale + 8), v23 >> 60 == 15))
    {
      v24 = *(v8 + 8);
      v25 = sub_22BE1AB1C();
      v26(v25);
    }

    else
    {
      v28 = v0[3];
      v29 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
      sub_22BF1C1E4(v28, v22);
      sub_22BF1C1E4(v29, v23);
      sub_22BF186E4();
      v30 = *(v8 + 8);
      v31 = sub_22BE1AB1C();
      v32(v31);
      sub_22BF158B4(v29, v23);
      sub_22BF158B4(v28, v22);
    }

    v21 = &qword_27D90B000;
  }

  v27 = v0[2];

  sub_22BF158B4(v0[3], v0[4]);
  sub_22BF1C168(v0 + v19);
  sub_22BF158B4(*(v0 + v21[68]), *(v0 + v21[68] + 8));
  sub_22BE1AABC();
}

uint64_t SbertCachableModel.__deallocating_deinit()
{
  SbertCachableModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SbertCachableModel.prewarm()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22BF1BCCC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_22BF1BCCC(void **a1)
{
  v24[17] = *MEMORY[0x277D85DE8];
  v3 = sub_22BE5CE4C(&qword_27D90B250, &qword_22C28C708);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v24[0] = 0;
  sub_22BF1C754();
  sub_22C2720B4();
  v24[0] = 0;
  sub_22C2720B4();
  sub_22BE5CE4C(&qword_27D90B258, &qword_22C28C710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C2759F0;
  *(inited + 32) = 0x64695F6E656B6F74;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 72) = v3;
  v12 = sub_22BE62524((inited + 48));
  v13 = v4[2];
  v13(v12, v10, v3);
  strcpy((inited + 80), "padding_mask");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 120) = v3;
  v14 = sub_22BE62524((inited + 96));
  v13(v14, v8, v3);
  sub_22C272E84();
  v15 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v16 = sub_22BF646D8();
  if (!v1)
  {
    v17 = v16;
    v18 = *a1;
    v24[0] = 0;
    if ([v18 predictionFromFeatures:v17 error:v24])
    {
      v19 = v24[0];

      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v24[0];
      sub_22C26DE84();

      swift_willThrow();
    }
  }

  v21 = v4[1];
  v21(v8, v3);
  result = (v21)(v10, v3);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22BF1BFF8(uint64_t a1, void *a2)
{
  result = SbertCachableModel.__allocating_init(parameters:)();
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

void sub_22BF1C028(void *a1)
{
  SbertCachableModel.prewarm()();
  if (v2)
  {
    *a1 = v2;
  }
}

uint64_t sub_22BF1C058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_22C272FF4();

  v7 = sub_22C272FF4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_22C273024();

  return v9;
}

unint64_t sub_22BF1C114()
{
  result = qword_27D90B1F0;
  if (!qword_27D90B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B1F0);
  }

  return result;
}

uint64_t sub_22BF1C168(uint64_t a1)
{
  v2 = type metadata accessor for SbertCachableModel.ModelOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BF1C1E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BE29D7C(a1, a2);
  }

  return a1;
}

uint64_t sub_22BF1C1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SbertCachableModel.ModelOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF1C25C(uint64_t a1, uint64_t a2)
{
  result = sub_22BF1C2E4(&qword_2810783D0, a2, type metadata accessor for SentencePieceCachableModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BF1C2E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22BF1C32C(uint64_t a1)
{
  result = sub_22BF1C2E4(qword_28107B2D0, 255, type metadata accessor for SbertCachableModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BF1C3D0()
{
  result = sub_22C271C14();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolRetrievalCompiledModel(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BF1C5A4()
{
  result = type metadata accessor for SbertCachableModel.ModelOptions(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BF1C6B4()
{
  sub_22BF1C70C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22BF1C70C()
{
  if (!qword_27D90B248)
  {
    v0 = sub_22C26DF64();
    if (!v1)
    {
      atomic_store(v0, &qword_27D90B248);
    }
  }
}

unint64_t sub_22BF1C754()
{
  result = qword_28106DF90[0];
  if (!qword_28106DF90[0])
  {
    sub_22BE7431C(&qword_27D90B250, &qword_22C28C708);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106DF90);
  }

  return result;
}

uint64_t sub_22BF1C7CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116000(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22BF24AE0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22BF1C8E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_22BF255E0(a5, a6);
  v8 = sub_22C271BD4();
  if (v11)
  {
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (sub_22C273FF4())
    {
    }

    else
    {
      swift_allocError();
      *v9 = v12;
    }
  }

  return v8;
}

void (*MutableToolbox.__allocating_init<A, B>(delegate:planGenerationDelegate:databasePath:sandboxIdentifier:toolbox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))(uint64_t, uint64_t)
{
  v48 = a8;
  v52 = a6;
  v53 = a4;
  v54 = a5;
  v49 = a3;
  v59 = a2;
  v50 = a9;
  v51 = a10;
  v13 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v47 - v16;
  v18 = *(a8 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE17C68();
  v23 = v22;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v47 - v30;
  v56 = v23;
  v32 = *(v23 + 16);
  v32(v47 - v30, a1, a7);
  v47[1] = type metadata accessor for QueryableToolbox();
  v58 = a1;
  v33 = a1;
  v34 = v49;
  v32(v29, v33, a7);
  v35 = v48;
  v57 = v18;
  v36 = v18;
  v37 = v50;
  (*(v36 + 16))(v21, v59, v48);
  v61 = 1;
  sub_22BF25580(v34, v17, &qword_27D908088, &qword_22C278EC0);
  v38 = v52;
  sub_22BF1CDC0(v52, v60);
  v39 = v55;
  v40 = sub_22BF26B58(v29, v21, &v61, v17, v53, v54, v60, 0, a7, v35, v37, v51);
  if (v39)
  {
    sub_22BF1CE1C(v38);
    sub_22BE233E8(v34, &qword_27D908088, &qword_22C278EC0);
    v41 = sub_22BE285E0();
    v42(v41);
    v43 = *(v56 + 8);
    v43(v58, a7);
    v43(v31, a7);
  }

  else
  {
    v43 = MutableToolbox.__allocating_init<A>(delegate:queryableToolbox:)(v31, v40, a7, v37);
    sub_22BF1CE1C(v38);
    sub_22BE233E8(v34, &qword_27D908088, &qword_22C278EC0);
    v44 = sub_22BE285E0();
    v45(v44);
    (*(v56 + 8))(v58, a7);
  }

  return v43;
}

uint64_t MutableToolbox.__allocating_init<A>(delegate:queryableToolbox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = sub_22BE18240();
  MutableToolbox.init<A>(delegate:queryableToolbox:)(v7, v8, a3, a4);
  return v6;
}

uint64_t *MutableToolbox.init<A>(delegate:queryableToolbox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_22BE62524(v4 + 2);
  sub_22BE1BC24(a3);
  (*(v7 + 32))();
  v4[7] = a2;
  return v4;
}

uint64_t sub_22BF1CF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v12 = *(*(_s19SentinelFileManagerVMa() - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v13 = sub_22C2720A4();
  v8[10] = v13;
  v14 = *(v13 - 8);
  v8[11] = v14;
  v15 = *(v14 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v16 = sub_22C26E2F4();
  v8[14] = v16;
  v17 = *(v16 - 8);
  v8[15] = v17;
  v18 = *(v17 + 64) + 15;
  v8[16] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[17] = v19;
  *v19 = v8;
  v19[1] = sub_22BF1D10C;

  return sub_22BF1E000(a6, a7, a8);
}

uint64_t sub_22BF1D10C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE19230();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF1D208()
{
  sub_22BE27B90();
  sub_22BE201F0();
  v1 = *(v0 + 48);

  sub_22BE1B080();

  sub_22BE1A26C();
  sub_22BE1AF3C();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BF1D294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  v17 = *(v16 + 144);
  *(v16 + 16) = v17;
  v18 = *(v16 + 128);
  v19 = *(v16 + 112);
  v20 = v17;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22BE19454();
  if (!swift_dynamicCast())
  {
LABEL_6:
    v50 = *(v16 + 144);
    v51 = *(v16 + 96);
    v52 = *(v16 + 32);

    sub_22C271AD4();
    v53 = v50;

    v54 = sub_22C272084();
    v55 = sub_22C2737A4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v16 + 144);
      v57 = *(v16 + 88);
      a10 = *(v16 + 80);
      a11 = *(v16 + 96);
      v58 = *(v16 + 24);
      v59 = *(v16 + 32);
      v60 = sub_22BE2B808();
      v61 = swift_slowAlloc();
      a12 = sub_22BE25618();
      v64 = sub_22BE22DD4(4.8151e-34, a12, v62, v63);
      sub_22BE28744(v64);
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 14) = v65;
      *v61 = v65;
      sub_22BE25F34(&dword_22BE15000, v66, v67, "MutableToolbox %s unexpected error: %@");
      sub_22BE233E8(v61, &qword_27D907870, &qword_22C27AB50);
      sub_22BE183C8();
      sub_22BE26B64(a12);
      sub_22BE183C8();
      sub_22BE183C8();

      (*(v57 + 8))(a11, a10);
    }

    else
    {
      v69 = *(v16 + 88);
      v68 = *(v16 + 96);
      v70 = *(v16 + 80);

      v71 = *(v69 + 8);
      v72 = sub_22BE33FD8();
      v73(v72);
    }

    v74 = *(v16 + 144);
    v75 = *(v16 + 128);
    v77 = *(v16 + 96);
    v76 = *(v16 + 104);
    v79 = *(v16 + 64);
    v78 = *(v16 + 72);
    v81 = *(v16 + 48);
    v80 = *(v16 + 56);
    swift_willThrow();

    sub_22BE17A94();
    v82 = *(v16 + 144);
    goto LABEL_12;
  }

  if ((*(*(v16 + 120) + 88))(*(v16 + 128), *(v16 + 112)) != *MEMORY[0x277D781A0])
  {
    (*(*(v16 + 120) + 8))(*(v16 + 128), *(v16 + 112));
    goto LABEL_6;
  }

  v22 = *(v16 + 120);
  v21 = *(v16 + 128);
  v24 = *(v16 + 104);
  v23 = *(v16 + 112);
  v25 = *(v16 + 32);

  v26 = *(v22 + 96);
  v27 = sub_22BE18944();
  v28(v27);
  v30 = *v21;
  v29 = v21[1];
  sub_22C271AD4();

  v31 = sub_22C272084();
  v32 = sub_22C2737A4();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v16 + 104);
  v36 = *(v16 + 80);
  v35 = *(v16 + 88);
  if (v33)
  {
    a11 = *(v16 + 104);
    v37 = *(v16 + 24);
    v38 = *(v16 + 32);
    v39 = sub_22BE2B808();
    swift_slowAlloc();
    sub_22BE40BF4();
    v43 = sub_22BE1B760(4.8151e-34, v40, v41, v42);
    v47 = sub_22BE41078(v43, v44, v45, v46);

    *(v39 + 14) = v47;
    sub_22BE3EA60(&dword_22BE15000, v48, v49, "MutableToolbox %s failed due to unrecoverable error: %s");
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v35 + 8))(a11, a10);
  }

  else
  {

    (*(v35 + 8))(v34, v36);
  }

  v83 = *(v16 + 72);
  v84 = *(v16 + 48);
  sub_22BE3C394(*(*(*(v16 + 40) + 56) + 16));
  sub_22BF2B12C();
  sub_22BF249B8(v83);

  sub_22BE1B080();

  sub_22BE1A26C();
LABEL_12:
  sub_22BE285F4();

  return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF1D6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[3] = a2;
  v11 = *(*(_s19SentinelFileManagerVMa() - 8) + 64) + 15;
  v9[8] = swift_task_alloc();
  v12 = sub_22C2720A4();
  v9[9] = v12;
  v13 = *(v12 - 8);
  v9[10] = v13;
  v14 = *(v13 + 64) + 15;
  v9[11] = swift_task_alloc();
  v9[12] = swift_task_alloc();
  v15 = sub_22C26E2F4();
  v9[13] = v15;
  v16 = *(v15 - 8);
  v9[14] = v16;
  v17 = *(v16 + 64) + 15;
  v9[15] = swift_task_alloc();
  v18 = swift_task_alloc();
  v9[16] = v18;
  *v18 = v9;
  v18[1] = sub_22BF1D858;

  return sub_22BF1F9A0(a1, a5, a6);
}

uint64_t sub_22BF1D858()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE19230();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF1D954()
{
  sub_22BE183FC();
  v1 = v0[6];

  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  v6 = v0[8];

  sub_22BE1A26C();

  return v7();
}

uint64_t sub_22BF1D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  v17 = *(v16 + 136);
  *(v16 + 16) = v17;
  v18 = *(v16 + 120);
  v19 = *(v16 + 104);
  v20 = v17;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22BE19454();
  if (!swift_dynamicCast())
  {
LABEL_6:
    v50 = *(v16 + 136);
    v51 = *(v16 + 88);
    v52 = *(v16 + 32);

    sub_22C271AD4();
    v53 = v50;

    v54 = sub_22C272084();
    v55 = sub_22C2737A4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v16 + 136);
      v57 = *(v16 + 80);
      a10 = *(v16 + 72);
      a11 = *(v16 + 88);
      v58 = *(v16 + 24);
      v59 = *(v16 + 32);
      v60 = sub_22BE2B808();
      v61 = swift_slowAlloc();
      a12 = sub_22BE25618();
      v64 = sub_22BE22DD4(4.8151e-34, a12, v62, v63);
      sub_22BE28744(v64);
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 14) = v65;
      *v61 = v65;
      sub_22BE25F34(&dword_22BE15000, v66, v67, "MutableToolbox %s unexpected error: %@");
      sub_22BE233E8(v61, &qword_27D907870, &qword_22C27AB50);
      sub_22BE183C8();
      sub_22BE26B64(a12);
      sub_22BE183C8();
      sub_22BE183C8();

      (*(v57 + 8))(a11, a10);
    }

    else
    {
      v69 = *(v16 + 80);
      v68 = *(v16 + 88);
      v70 = *(v16 + 72);

      v71 = *(v69 + 8);
      v72 = sub_22BE33FD8();
      v73(v72);
    }

    v74 = *(v16 + 136);
    v75 = *(v16 + 120);
    v77 = *(v16 + 88);
    v76 = *(v16 + 96);
    v79 = *(v16 + 56);
    v78 = *(v16 + 64);
    v80 = *(v16 + 48);
    swift_willThrow();

    sub_22BE17A94();
    v81 = *(v16 + 136);
    goto LABEL_12;
  }

  if ((*(*(v16 + 112) + 88))(*(v16 + 120), *(v16 + 104)) != *MEMORY[0x277D781A0])
  {
    (*(*(v16 + 112) + 8))(*(v16 + 120), *(v16 + 104));
    goto LABEL_6;
  }

  v22 = *(v16 + 112);
  v21 = *(v16 + 120);
  v24 = *(v16 + 96);
  v23 = *(v16 + 104);
  v25 = *(v16 + 32);

  v26 = *(v22 + 96);
  v27 = sub_22BE18944();
  v28(v27);
  v30 = *v21;
  v29 = v21[1];
  sub_22C271AD4();

  v31 = sub_22C272084();
  v32 = sub_22C2737A4();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v16 + 96);
  v36 = *(v16 + 72);
  v35 = *(v16 + 80);
  if (v33)
  {
    a11 = *(v16 + 96);
    v37 = *(v16 + 24);
    v38 = *(v16 + 32);
    v39 = sub_22BE2B808();
    swift_slowAlloc();
    sub_22BE40BF4();
    v43 = sub_22BE1B760(4.8151e-34, v40, v41, v42);
    v47 = sub_22BE41078(v43, v44, v45, v46);

    *(v39 + 14) = v47;
    sub_22BE3EA60(&dword_22BE15000, v48, v49, "MutableToolbox %s failed due to unrecoverable error: %s");
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v35 + 8))(a11, a10);
  }

  else
  {

    (*(v35 + 8))(v34, v36);
  }

  v82 = *(v16 + 64);
  v83 = *(v16 + 48);
  sub_22BE3C394(*(*(*(v16 + 40) + 56) + 16));
  sub_22BF2B12C();
  sub_22BF249B8(v82);

  v84 = *(v16 + 120);
  v86 = *(v16 + 88);
  v85 = *(v16 + 96);
  v87 = *(v16 + 56);
  v88 = *(v16 + 64);

  sub_22BE1A26C();
LABEL_12:
  sub_22BE285F4();

  return v90(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t MutableToolbox.replaceClientActions(clientIdentifier:toolDefinitions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22BE18DA0();
}

uint64_t sub_22BF1DE0C()
{
  sub_22BE183FC();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22BF1DEE0;
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_22BF1CF54(v4, 0xD000000000000037, 0x800000022C2D3EC0, v5, v5, v7, v8, v6);
}

uint64_t sub_22BF1DEE0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE19230();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF1DFDC()
{
  sub_22BE17A94();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t sub_22BF1E000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(_s19SentinelFileManagerVMa() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF1E0C4, 0, 0);
}

uint64_t sub_22BF1E0C4()
{
  sub_22BE183F0();
  v1 = *(v0[5] + 56);
  v0[11] = v1;
  v0[12] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_22BF1E16C;

  return sub_22BF45440();
}

uint64_t sub_22BF1E16C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF1E26C()
{
  sub_22BE27B90();
  sub_22BE201F0();
  v1 = v0[14];
  v2 = v0[10];
  sub_22BE3C394(*(v0[11] + 16));
  sub_22BF2B144();
  sub_22BF249B8(v2);
  if (v1)
  {
    v4 = v0[9];
    v3 = v0[10];
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];

    sub_22BE19220();
    sub_22BE1AF3C();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22BF1E38C;
    v18 = v0[5];
    sub_22BE1AF3C();

    return MutableToolbox.toolRetrievalModelMetadata()();
  }
}

uint64_t sub_22BF1E38C()
{
  sub_22BE27B90();
  sub_22BE201F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v8;
  v3[18] = v9;
  v3[19] = v10;

  if (v0)
  {
    v12 = v3[9];
    v11 = v3[10];
    v14 = v3[7];
    v13 = v3[8];
    v15 = v3[6];

    sub_22BE17A94();
    sub_22BE1AF3C();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    sub_22BE201FC();
    sub_22BE1AF3C();

    return MEMORY[0x2822009F8](v25, v26, v27);
  }
}

uint64_t sub_22BF1E4E8()
{
  sub_22BE183F0();
  v0[20] = *(v0[11] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_22BF1E594;
  v2 = v0[3];
  v3 = v0[2];
  sub_22BE3E2E8(v0[4]);

  return sub_22BF45938();
}

uint64_t sub_22BF1E594()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (!v0)
  {
    v9 = *(v3 + 160);
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22BF1E694()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_22BF1C1E4(v0[16], v3);
  v4 = sub_22BE19454();
  sub_22BF1C1E4(v4, v5);
  v6 = sub_22BE19454();
  sub_22BF158B4(v6, v7);
  v8 = v0[22];
  if (v3 >> 60 != 15)
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[9];
    v12 = sub_22BE17C90(v0[11]);
    sub_22BF1F294(v12, v11);
    sub_22BE200D4();
    sub_22BF2B170();
    sub_22BF249B8(v11);
    v13 = sub_22BE200D4();
    sub_22BF158B4(v13, v14);
    if (v8)
    {
      v15 = v0[18];
      v16 = v0[19];
      v17 = v0[16];
      v18 = v0[17];
LABEL_7:
      v37 = sub_22BE1A6A0(v15, v16);
      goto LABEL_11;
    }
  }

  v19 = v0[18];
  v20 = v0[19];
  v22 = v0[16];
  v21 = v0[17];
  v23 = sub_22BE1AB1C();
  sub_22BF1C1E4(v23, v24);
  v25 = sub_22BE19454();
  sub_22BF1C1E4(v25, v26);
  v27 = sub_22BE1AB1C();
  sub_22BF158B4(v27, v28);
  sub_22BF2562C();
  if (!(!v30 & v29))
  {
    v31 = v0[18];
    v32 = v0[19];
    v33 = v0[8];
    v34 = sub_22BE17C90(v0[11]);
    sub_22BF1F294(v34, v33);
    sub_22BE19454();
    sub_22BF2B19C();
    sub_22BF249B8(v33);
    v35 = v0[18];
    v36 = v0[19];
    if (v8)
    {
      v15 = sub_22BE1A6A0(v0[16], v0[17]);
      goto LABEL_7;
    }

    v39 = sub_22BE19454();
    sub_22BF158B4(v39, v40);
  }

  v41 = v0[7];
  v42 = sub_22BE17C90(v0[11]);
  sub_22BF1F294(v42, v41);
  sub_22BF2B1C8();
  sub_22BF249B8(v41);
  v44 = v0[18];
  v43 = v0[19];
  v46 = v0[16];
  v45 = v0[17];
  if (!v8)
  {
    v56 = v0[10];
    v58 = v0[8];
    v57 = v0[9];
    v59 = v0[6];
    v65 = v0[7];
    v60 = sub_22BE17C90(v0[11]);
    sub_22BF1F294(v60, v59);
    sub_22BF2B1F4();
    v61 = sub_22BE18240();
    sub_22BF158B4(v61, v62);
    v63 = sub_22BE200D4();
    sub_22BF158B4(v63, v64);
    sub_22BF249B8(v59);

    sub_22BE1A26C();
LABEL_12:
    sub_22BE25CF0();

    __asm { BRAA            X1, X16 }
  }

  v47 = sub_22BE18240();
  sub_22BF158B4(v47, v48);
  v37 = sub_22BE200D4();
LABEL_11:
  sub_22BF158B4(v37, v38);
  v50 = v0[9];
  v49 = v0[10];
  v52 = v0[7];
  v51 = v0[8];
  v53 = v0[6];

  sub_22BE19220();
  goto LABEL_12;
}

uint64_t sub_22BF1E8BC()
{
  sub_22BE27B90();
  sub_22BE201F0();
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_22BF1E950()
{
  sub_22BE27B90();
  sub_22BE201F0();
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  v6 = sub_22BE232C8();
  v8 = sub_22BE1A6A0(v6, v7);
  sub_22BF158B4(v8, v9);
  v10 = v0[22];
  v12 = v0[9];
  v11 = v0[10];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];

  sub_22BE17A94();
  sub_22BE1AF3C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t MutableToolbox.toolRetrievalModelMetadata()()
{
  sub_22BE183F0();
  v1[2] = v0;
  v2 = *(*(_s19SentinelFileManagerVMa() - 8) + 64);
  v1[3] = sub_22BE25184();
  v3 = sub_22C273064();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64);
  v1[6] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BF1EACC()
{
  v102 = v0;
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  sub_22BE1BD3C(v1 + 2, v2);
  sub_22BE17C68();
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE25184();
  sub_22BE2C690(v5);
  v8();
  (*(v3 + 8))(&v101, v2, v3);
  v9 = *(v5 + 8);
  v10 = sub_22BE33FD8();
  v11(v10);
  if (v101)
  {
    if (qword_28107D1C8 != -1)
    {
      sub_22BE25234();
    }

    sub_22BE1859C();
    v17 = sub_22BE412BC(v12, v13, v14, v15, v16, type metadata accessor for SbertCachableModel);
    if (v2)
    {
LABEL_12:

      v47 = v0[6];
      v48 = v0[3];

      sub_22BE19220();
      sub_22BE25CF0();

      __asm { BRAA            X1, X16 }
    }

    v18 = *(v17 + 24);
    v19 = *(v17 + 32);
    v20 = sub_22BE29454();
    sub_22BF1C1E4(v20, v21);
  }

  else
  {
    v23 = v0[5];
    v22 = v0[6];
    v24 = v0[4];
    sub_22C273054();
    v18 = sub_22BF25638();
    v19 = v25;
    (*(v23 + 8))(v22, v24);
  }

  v0[7] = v18;
  v0[8] = v19;

  v26 = v1[5];
  v27 = v1[6];
  sub_22BE1BD3C(v1 + 2, v26);
  sub_22BE17C68();
  v29 = v28;
  v31 = *(v30 + 64);
  sub_22BE25184();
  sub_22BE2C690(v29);
  v32();
  v33 = *(v27 + 8);
  v34 = sub_22BE236C8();
  v35(v34);
  v36 = *(v29 + 8);
  v37 = sub_22BE33FD8();
  v38(v37);
  if ((v101 & 0x100) != 0)
  {
    if (qword_28107D1C8 != -1)
    {
      sub_22BE25234();
    }

    sub_22BE1859C();
    v44 = sub_22BE412BC(v39, v40, v41, v42, v43, type metadata accessor for SbertCachableModel);
    if (v26)
    {
      v45 = sub_22BE29454();
      sub_22BF158B4(v45, v46);
      goto LABEL_12;
    }

    v54 = *(v44 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale);
    v56 = *(v44 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport18SbertCachableModel_locale + 8);
    sub_22BF1C1E4(v54, v56);
  }

  else
  {
    v52 = v0[5];
    v51 = v0[6];
    v53 = v0[4];
    sub_22C273054();
    v54 = sub_22BF25638();
    v56 = v55;
    (*(v52 + 8))(v51, v53);
  }

  v0[9] = v54;
  v0[10] = v56;
  v58 = v0[2];
  v57 = v0[3];

  v59 = *(v58 + 56);
  sub_22BE3C394(*(v59 + 16));
  v60 = sub_22BF2B5A4();
  v62 = v61;
  v0[11] = v60;
  v0[12] = v61;
  sub_22BF249B8(v57);
  if (v62 >> 60 == 15)
  {
LABEL_22:
    v70 = v0[6];
    v71 = v0[3];

    sub_22BE23ACC();
    sub_22BE25CF0();

    __asm { BRAA            X5, X16 }
  }

  v63 = v0[3];
  sub_22BF1F294(*(v59 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v63);
  v64 = sub_22BF2B5BC();
  v66 = v65;
  v0[13] = v64;
  v0[14] = v65;
  sub_22BF249B8(v63);
  sub_22BF2562C();
  if (!v68 & v67)
  {
    v66 = v62;
    v69 = v60;
LABEL_21:
    sub_22BF158B4(v69, v66);
    goto LABEL_22;
  }

  v74 = sub_22BE1A6BC();
  sub_22BF1C1E4(v74, v75);
  v76 = sub_22BE29454();
  sub_22BF1C1E4(v76, v77);
  if (v19 >> 60 == 15)
  {
    v78 = sub_22BE29454();
    sub_22BF158B4(v78, v79);
    v80 = sub_22BE1A6BC();
LABEL_27:
    sub_22BF158B4(v80, v81);
    goto LABEL_33;
  }

  v82 = sub_22BE29454();
  v83 = MEMORY[0x2318A6720](v82);
  v84 = sub_22BE1A6BC();
  sub_22BF158B4(v84, v85);
  v86 = sub_22BE29454();
  sub_22BF158B4(v86, v87);
  if (v83)
  {
    sub_22BF1C1E4(v64, v66);
    v69 = v64;
    v88 = sub_22BE236C8();
    sub_22BF1C1E4(v88, v89);
    if (v56 >> 60 == 15)
    {
      v90 = sub_22BE236C8();
      sub_22BF158B4(v90, v91);
      v80 = v64;
      v81 = v66;
      goto LABEL_27;
    }

    v92 = sub_22BE236C8();
    v93 = MEMORY[0x2318A6720](v92);
    sub_22BF158B4(v64, v66);
    v94 = sub_22BE236C8();
    sub_22BF158B4(v94, v95);
    if (v93)
    {
      v96 = sub_22BE1A6BC();
      sub_22BF158B4(v96, v97);
      goto LABEL_21;
    }
  }

LABEL_33:
  v0[15] = *(v59 + 16);

  v98 = swift_task_alloc();
  v0[16] = v98;
  *v98 = v0;
  v98[1] = sub_22BF1F060;
  sub_22BE25CF0();

  return sub_22BF471A8();
}

uint64_t sub_22BF1F060()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF1F160()
{
  sub_22BE183F0();
  v1 = v0[11];
  v2 = v0[12];
  v3 = sub_22BE1A6A0(v0[13], v0[14]);
  sub_22BF158B4(v3, v4);
  v5 = v0[6];
  v6 = v0[3];

  v7 = sub_22BE23ACC();

  return v8(v7);
}

uint64_t sub_22BF1F1D4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = sub_22BE19454();
  sub_22BF158B4(v10, v11);
  v12 = sub_22BE232C8();
  sub_22BF158B4(v12, v13);
  v14 = sub_22BE18240();
  sub_22BF158B4(v14, v15);
  sub_22BF158B4(v9, v8);
  v16 = v0[17];
  v17 = v0[6];
  v18 = v0[3];

  sub_22BE17A94();

  return v19();
}

uint64_t sub_22BF1F294(uint64_t a1, uint64_t a2)
{
  v4 = _s19SentinelFileManagerVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF1F2F8()
{
  sub_22BE183F0();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  v7 = *(*(_s19SentinelFileManagerVMa() - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = *v3;
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BF1F3A8()
{
  sub_22BE201F0();
  v1 = v0[10];
  v2 = *(v0[7] + 56);
  v0[13] = v2;
  sub_22BE3C394(*(v2 + 16));
  sub_22BF2B144();
  v4 = v0[11];
  v3 = v0[12];
  sub_22BF249B8(v0[10]);
  v5 = *(v2 + 16);

  sub_22BF461A8();

  v0[14] = *(v2 + 16);
  v0[2] = v4;
  v0[3] = v3;

  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_22BF1F518;
  v7 = v0[5];
  v8 = v0[6];
  sub_22BE3E2E8(v0[4]);

  return sub_22BF461FC();
}

uint64_t sub_22BF1F518()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v3 + 128) = v0;

  v9 = *(v3 + 112);

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF1F620()
{
  sub_22BE27B90();
  sub_22BE201F0();
  v1 = v0[16];
  v2 = v0[9];
  sub_22BE3C394(*(v0[13] + 16));
  sub_22BF2B1C8();
  if (v1)
  {
    sub_22BF249B8(v0[9]);
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];

    sub_22BE19220();
  }

  else
  {
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[8];
    sub_22BF249B8(v0[9]);
    sub_22BE3C394(*(v6 + 16));
    sub_22BF2B1F4();
    sub_22BF249B8(v8);

    sub_22BE1A26C();
  }

  sub_22BE1AF3C();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22BF1F710()
{
  sub_22BE183FC();
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  sub_22BE17A94();

  return v5();
}

uint64_t MutableToolbox.loadAllTools(isCancelled:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF1F79C()
{
  sub_22BE183FC();
  v2 = v0[2];
  v1 = v0[3];

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_22BF1F860;
  v5 = v0[2];
  v4 = v0[3];

  return sub_22BF1D6A8(v3, 0xD00000000000001ALL, 0x800000022C2D3F00, v4, v4, v5);
}

uint64_t sub_22BF1F860()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE19230();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF1F97C()
{
  sub_22BE17A94();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_22BF1F9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a2;
  v3[33] = a3;
  v4 = sub_22C2720A4();
  v3[34] = v4;
  v5 = *(v4 - 8);
  v3[35] = v5;
  v6 = *(v5 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF1FA6C, 0, 0);
}

uint64_t sub_22BF1FA6C()
{
  sub_22BE183FC();
  v1 = v0[37];
  sub_22C271AD4();
  v2 = sub_22C272084();
  v3 = sub_22C273784();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BE15000, v2, v3, "Toolbox indexing started. Notifying the system with TBToolboxIndexingStarted", v4, 2u);
    sub_22BE183C8();
  }

  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[35];

  v0[38] = *(v7 + 8);
  v8 = sub_22BE33FD8();
  v9(v8);
  v10 = objc_opt_self();
  v0[39] = v10;
  v11 = [v10 defaultCenter];
  v12 = sub_22C272FF4();
  v0[40] = sub_22BE5CE4C(&qword_27D90B270, &qword_22C28C7D8);
  inited = swift_initStackObject();
  v14 = sub_22BF25660(inited, xmmword_22C275160);
  *(v14 + 224) = v15;
  v0[29] = 0xE600000000000000;
  v16 = MEMORY[0x277D837D0];
  sub_22C273A04();
  inited[6].n128_u64[0] = v16;
  sub_22BE3610C();
  inited[4].n128_u64[1] = v17;
  inited[5].n128_u64[0] = v18;
  v19 = sub_22C272E84();
  sub_22BF25474(v12, 0, v19, v11);

  v20 = swift_task_alloc();
  v0[41] = v20;
  *v20 = v0;
  v20[1] = sub_22BF1FC7C;
  v21 = v0[32];
  v22 = sub_22BE3E2E8(v0[33]);

  return sub_22BF1FF90(v22);
}

uint64_t sub_22BF1FC7C()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;

  if (v0)
  {
    v10 = *(v3 + 288);
    v9 = *(v3 + 296);

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    sub_22BE27278();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22BF1FDB0()
{
  v1 = v0[36];
  sub_22C271AD4();
  v2 = sub_22C272084();
  v3 = sub_22C273784();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BE15000, v2, v3, "Toolbox indexing finished. Notifying the system with TBToolboxIndexingEnded", v4, 2u);
    sub_22BE183C8();
  }

  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[34];

  v8(v9, v11);
  v12 = [v5 defaultCenter];
  v13 = sub_22C272FF4();
  inited = swift_initStackObject();
  v15 = sub_22BF25660(inited, xmmword_22C275160);
  *(v15 + 240) = v16;
  v0[31] = 0xE600000000000000;
  v17 = MEMORY[0x277D837D0];
  sub_22C273A04();
  inited[6].n128_u64[0] = v17;
  sub_22BE3610C();
  inited[4].n128_u64[1] = v18;
  inited[5].n128_u64[0] = v19;
  v20 = sub_22C272E84();
  sub_22BF25474(v13, 0, v20, v12);

  sub_22BE1A26C();

  return v21();
}

uint64_t sub_22BF1FF90(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22C2720A4();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_22C270B14();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = *(*(_s19SentinelFileManagerVMa() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF20120, 0, 0);
}

uint64_t sub_22BF20120()
{
  sub_22BE183F0();
  v1 = *(v0[8] + 56);
  v0[22] = v1;
  v0[23] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_22BF201C8;

  return sub_22BF45440();
}

uint64_t sub_22BF201C8()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (!v0)
  {
    v9 = *(v3 + 184);
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF202C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = v12[25];
  v14 = v12[21];
  sub_22BE3C394(*(v12[22] + 16));
  sub_22BF2B144();
  sub_22BF249B8(v12[21]);
  if (v13)
  {
    sub_22BE256B0();

    sub_22BE19220();
    sub_22BE25494();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = swift_task_alloc();
    v12[26] = v24;
    *v24 = v12;
    v24[1] = sub_22BF203FC;
    v25 = v12[8];
    sub_22BE25494();

    return MutableToolbox.toolRetrievalModelMetadata()();
  }
}

uint64_t sub_22BF203FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  sub_22BE190F0();
  v15 = v14;
  sub_22BE18800();
  *v16 = v15;
  v18 = *(v17 + 208);
  *v16 = *v13;
  v15[27] = v19;
  v15[28] = v20;
  v15[29] = v21;
  v15[30] = v22;

  if (v12)
  {
    v24 = v15[20];
    v23 = v15[21];
    v26 = v15[18];
    v25 = v15[19];
    v28 = v15[16];
    v27 = v15[17];
    v30 = v15[14];
    v29 = v15[15];
    v31 = v15[11];

    sub_22BE17A94();
    sub_22BE25494();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  else
  {
    sub_22BE201FC();
    sub_22BE25494();

    return MEMORY[0x2822009F8](v41, v42, v43);
  }
}

uint64_t sub_22BF20580()
{
  sub_22BE183FC();
  v1 = *(v0 + 160);
  sub_22BF1F294(*(*(v0 + 176) + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v1);
  sub_22BF2B2A4();
  v3 = v2;
  sub_22BF249B8(v1);
  if (v3 >> 60 == 15 && (v4 = *(v0 + 160), sub_22BF1F294(*(*(v0 + 176) + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v4), sub_22BF2B2BC(), v6 = v5, sub_22BF249B8(v4), v6 >> 60 == 15))
  {
    v7 = 1;
  }

  else
  {
    v8 = sub_22BE18944();
    sub_22BF158B4(v8, v9);
    v7 = 0;
  }

  *(v0 + 304) = v7;
  sub_22BE26B00(*(*(v0 + 176) + 16) + 32, v0 + 16);
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_22BF206D0;
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);

  return sub_22BF217F8(v0 + 16, v11);
}

uint64_t sub_22BF206D0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 248);
  *v4 = *v1;
  *(v3 + 305) = v7;
  *(v3 + 256) = v0;

  sub_22BE26B64((v3 + 16));
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BF207DC()
{
  v1 = *(v0 + 104);
  (*(v1 + 104))(*(v0 + 112), *MEMORY[0x277D1EBD8], *(v0 + 96));
  v2 = sub_22C270B04();
  v3 = *(v1 + 8);
  v4 = sub_22BE18944();
  v5(v4);
  if (v2)
  {
    v6 = swift_task_alloc();
    *(v0 + 264) = v6;
    *v6 = v0;
    v6[1] = sub_22BF20CD0;
    v7 = *(v0 + 64);
    sub_22BE3E2E8(*(v0 + 56));
    sub_22BE18174();

    return sub_22BF23660(v8);
  }

  v11 = *(v0 + 88);
  sub_22C271AD4();
  v12 = sub_22C272084();
  v13 = sub_22C2737C4();
  v14 = os_log_type_enabled(v12, v13);
  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 72);
  if (v14)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22BE15000, v12, v13, "Skipping shim indexing since ShimToolRetrieval flag is disabled", v18, 2u);
    sub_22BE183C8();
  }

  v19 = *(v16 + 8);
  v20 = sub_22BE33FD8();
  v21(v20);
  v22 = *(v0 + 256);
  *(v0 + 307) = 0;
  v23 = *(v0 + 56);
  if (v23 && (*(v23 + 16) & 1) != 0)
  {
    v24 = *(v0 + 128);
    v25 = sub_22BE17C90(*(v0 + 176));
    sub_22BF1F294(v25, v24);
    sub_22BF2B2D4();
    if (v22)
    {
      sub_22BE2F154();
      sub_22BF249B8(*(v0 + 128));
      v52 = sub_22BE1AB1C();
LABEL_22:
      v50 = sub_22BE1A6A0(v52, v53);
      goto LABEL_23;
    }

    sub_22BE180A8();
    sub_22BE23CB4(*(v13 + 16));
    sub_22BF2B300();
    goto LABEL_36;
  }

  if ((*(v0 + 304) & 1) == 0)
  {
    sub_22BE37564();

    v28 = sub_22BF46A44();
    if (v22)
    {
      v30 = *(v0 + 232);
      v29 = *(v0 + 240);
      sub_22BF158B4(*(v0 + 216), *(v0 + 224));
      v31 = sub_22BE200D4();
      sub_22BF158B4(v31, v32);

LABEL_24:
      sub_22BE256B0();

      sub_22BE19220();
      goto LABEL_25;
    }

    v33 = v28;

    if (v33 <= 1000)
    {
      v34 = *(v0 + 232);
      v35 = *(v0 + 240);
      sub_22BF1C1E4(*(v0 + 216), *(v0 + 224));
      v36 = sub_22BE19454();
      sub_22BF1C1E4(v36, v37);
      v38 = sub_22BE19454();
      sub_22BF158B4(v38, v39);
      sub_22BE1C1C0();
      if (!(!v41 & v40))
      {
        v42 = *(v0 + 216);
        v43 = *(v0 + 224);
        v44 = *(v0 + 152);
        v45 = sub_22BE17C90(*(v0 + 176));
        sub_22BF1F294(v45, v44);
        sub_22BE23114();
        sub_22BF2B170();
        if (v44)
        {
          sub_22BE2F154();
          sub_22BF249B8(*(v0 + 152));
          v46 = sub_22BE1AB1C();
          v48 = sub_22BE1A6A0(v46, v47);
          sub_22BF158B4(v48, v49);
          v50 = sub_22BE1AB1C();
LABEL_23:
          sub_22BF158B4(v50, v51);
          goto LABEL_24;
        }

        v56 = *(v0 + 216);
        v57 = *(v0 + 224);
        sub_22BF249B8(*(v0 + 152));
        v58 = sub_22BE19454();
        sub_22BF158B4(v58, v59);
      }

      v60 = *(v0 + 232);
      v24 = *(v0 + 240);
      v62 = *(v0 + 216);
      v61 = *(v0 + 224);
      v63 = sub_22BE232C8();
      sub_22BF1C1E4(v63, v64);
      v65 = sub_22BE19454();
      sub_22BF1C1E4(v65, v66);
      v67 = sub_22BE232C8();
      sub_22BF158B4(v67, v68);
      sub_22BF2562C();
      if (!(!v41 & v40))
      {
        v69 = *(v0 + 232);
        v70 = *(v0 + 240);
        v71 = *(v0 + 144);
        v72 = sub_22BE17C90(*(v0 + 176));
        sub_22BF1F294(v72, v71);
        sub_22BE23114();
        sub_22BF2B19C();
        v73 = *(v0 + 232);
        v24 = *(v0 + 240);
        if (v71)
        {
          v75 = *(v0 + 216);
          v74 = *(v0 + 224);
          sub_22BF249B8(*(v0 + 144));
          v76 = sub_22BE1AB1C();
          v52 = sub_22BE1A6A0(v76, v77);
          goto LABEL_22;
        }

        sub_22BF249B8(*(v0 + 144));
        v78 = sub_22BE19454();
        sub_22BF158B4(v78, v79);
      }

      if ((*(v0 + 305) & 1) == 0 && !*(v0 + 307))
      {
LABEL_37:
        v82 = *(v0 + 232);
        v81 = *(v0 + 240);
        sub_22BE28F38();
        v83 = *(v0 + 144);
        v90 = *(v0 + 136);
        v91 = *(v0 + 128);
        v92 = *(v0 + 120);
        v93 = *(v0 + 112);
        v94 = *(v0 + 88);
        v85 = sub_22BE17C90(v84);
        sub_22BF1F294(v85, v24);
        sub_22BF2B1F4();
        v86 = sub_22BE18240();
        sub_22BF158B4(v86, v87);
        v88 = sub_22BE232C8();
        sub_22BF158B4(v88, v89);
        sub_22BF249B8(v24);

        sub_22BE1A26C();
LABEL_25:
        sub_22BE18174();

        __asm { BRAA            X1, X16 }
      }

      v15 = (v0 + 136);
      v24 = *(v0 + 136);
      v80 = sub_22BE17C90(*(v0 + 176));
      sub_22BF1F294(v80, v24);
      sub_22BF2B1C8();
LABEL_36:
      sub_22BF249B8(*v15);
      goto LABEL_37;
    }
  }

  sub_22BE37564();
  *(v0 + 280) = v12;

  v26 = swift_task_alloc();
  *(v0 + 288) = v26;
  *v26 = v0;
  sub_22BE3D44C(v26);
  sub_22BE18174();

  return sub_22BF46B28();
}

uint64_t sub_22BF20CD0()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  v8 = *(v7 + 264);
  v9 = *v1;
  sub_22BE18C2C();
  *v10 = v9;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 306) = v3 & 1;
  }

  sub_22BE27278();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BF20DDC()
{
  v4 = *(v2 + 272);
  *(v2 + 307) = *(v2 + 306);
  v5 = *(v2 + 56);
  if (v5 && (*(v5 + 16) & 1) != 0)
  {
    v6 = *(v2 + 128);
    v7 = sub_22BE17C90(*(v2 + 176));
    sub_22BF1F294(v7, v6);
    sub_22BF2B2D4();
    if (v4)
    {
      sub_22BE2F154();
      sub_22BF249B8(*(v2 + 128));
      v35 = sub_22BE1AB1C();
LABEL_16:
      v33 = sub_22BE1A6A0(v35, v36);
      goto LABEL_17;
    }

    sub_22BE180A8();
    sub_22BE23CB4(*(v3 + 16));
    sub_22BF2B300();
    goto LABEL_30;
  }

  if ((*(v2 + 304) & 1) == 0)
  {
    sub_22BE37564();

    v11 = sub_22BF46A44();
    if (v4)
    {
      v13 = *(v2 + 232);
      v12 = *(v2 + 240);
      sub_22BF158B4(*(v2 + 216), *(v2 + 224));
      v14 = sub_22BE200D4();
      sub_22BF158B4(v14, v15);

LABEL_18:
      sub_22BE256B0();

      sub_22BE19220();
      goto LABEL_19;
    }

    v16 = v11;

    if (v16 <= 1000)
    {
      v17 = *(v2 + 232);
      v18 = *(v2 + 240);
      sub_22BF1C1E4(*(v2 + 216), *(v2 + 224));
      v19 = sub_22BE19454();
      sub_22BF1C1E4(v19, v20);
      v21 = sub_22BE19454();
      sub_22BF158B4(v21, v22);
      sub_22BE1C1C0();
      if (!(!v24 & v23))
      {
        v25 = *(v2 + 216);
        v26 = *(v2 + 224);
        v27 = *(v2 + 152);
        v28 = sub_22BE17C90(*(v2 + 176));
        sub_22BF1F294(v28, v27);
        sub_22BE23114();
        sub_22BF2B170();
        if (v27)
        {
          sub_22BE2F154();
          sub_22BF249B8(*(v2 + 152));
          v29 = sub_22BE1AB1C();
          v31 = sub_22BE1A6A0(v29, v30);
          sub_22BF158B4(v31, v32);
          v33 = sub_22BE1AB1C();
LABEL_17:
          sub_22BF158B4(v33, v34);
          goto LABEL_18;
        }

        v39 = *(v2 + 216);
        v40 = *(v2 + 224);
        sub_22BF249B8(*(v2 + 152));
        v41 = sub_22BE19454();
        sub_22BF158B4(v41, v42);
      }

      v43 = *(v2 + 232);
      v6 = *(v2 + 240);
      v45 = *(v2 + 216);
      v44 = *(v2 + 224);
      v46 = sub_22BE232C8();
      sub_22BF1C1E4(v46, v47);
      v48 = sub_22BE19454();
      sub_22BF1C1E4(v48, v49);
      v50 = sub_22BE232C8();
      sub_22BF158B4(v50, v51);
      sub_22BF2562C();
      if (!(!v24 & v23))
      {
        v52 = *(v2 + 232);
        v53 = *(v2 + 240);
        v54 = *(v2 + 144);
        v55 = sub_22BE17C90(*(v2 + 176));
        sub_22BF1F294(v55, v54);
        sub_22BE23114();
        sub_22BF2B19C();
        v56 = *(v2 + 232);
        v6 = *(v2 + 240);
        if (v54)
        {
          v58 = *(v2 + 216);
          v57 = *(v2 + 224);
          sub_22BF249B8(*(v2 + 144));
          v59 = sub_22BE1AB1C();
          v35 = sub_22BE1A6A0(v59, v60);
          goto LABEL_16;
        }

        sub_22BF249B8(*(v2 + 144));
        v61 = sub_22BE19454();
        sub_22BF158B4(v61, v62);
      }

      if ((*(v2 + 305) & 1) == 0 && !*(v2 + 307))
      {
LABEL_31:
        v65 = *(v2 + 232);
        v64 = *(v2 + 240);
        sub_22BE28F38();
        v66 = *(v2 + 144);
        v73 = *(v2 + 136);
        v74 = *(v2 + 128);
        v75 = *(v2 + 120);
        v76 = *(v2 + 112);
        v77 = *(v2 + 88);
        v68 = sub_22BE17C90(v67);
        sub_22BF1F294(v68, v6);
        sub_22BF2B1F4();
        v69 = sub_22BE18240();
        sub_22BF158B4(v69, v70);
        v71 = sub_22BE232C8();
        sub_22BF158B4(v71, v72);
        sub_22BF249B8(v6);

        sub_22BE1A26C();
LABEL_19:
        sub_22BE18174();

        __asm { BRAA            X1, X16 }
      }

      v0 = (v2 + 136);
      v6 = *(v2 + 136);
      v63 = sub_22BE17C90(*(v2 + 176));
      sub_22BF1F294(v63, v6);
      sub_22BF2B1C8();
LABEL_30:
      sub_22BF249B8(*v0);
      goto LABEL_31;
    }
  }

  sub_22BE37564();
  *(v2 + 280) = v1;

  v8 = swift_task_alloc();
  *(v2 + 288) = v8;
  *v8 = v2;
  sub_22BE3D44C(v8);
  sub_22BE18174();

  return sub_22BF46B28();
}

uint64_t sub_22BF2118C()
{
  sub_22BE183FC();
  v2 = *v1;
  sub_22BE18800();
  *v4 = v3;
  v5 = *(v2 + 288);
  *v4 = *v1;
  *(v3 + 296) = v0;

  v6 = *(v2 + 280);

  sub_22BE27278();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF212AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE1AF20();
  v17 = *(v16 + 296);
  v18 = *(v16 + 232);
  v19 = *(v16 + 240);
  v20 = *(v16 + 224);
  sub_22BF1C1E4(*(v16 + 216), v20);
  v21 = sub_22BE19454();
  sub_22BF1C1E4(v21, v22);
  v23 = sub_22BE19454();
  sub_22BF158B4(v23, v24);
  if (v20 >> 60 != 15)
  {
    v25 = *(v16 + 216);
    v26 = *(v16 + 224);
    v27 = *(v16 + 152);
    sub_22BF25678(*(*(v16 + 176) + 16));
    sub_22BE19454();
    sub_22BF2B170();
    if (v17)
    {
      sub_22BE2F154();
      sub_22BF249B8(*(v16 + 152));
      v28 = sub_22BE1AB1C();
      v30 = sub_22BE1A6A0(v28, v29);
      sub_22BF158B4(v30, v31);
      v32 = sub_22BE1AB1C();
LABEL_14:
      sub_22BF158B4(v32, v33);
      sub_22BE256B0();

      sub_22BE19220();
      goto LABEL_17;
    }

    v34 = *(v16 + 216);
    v19 = *(v16 + 224);
    sub_22BF249B8(*(v16 + 152));
    v35 = sub_22BE19454();
    sub_22BF158B4(v35, v36);
  }

  sub_22BE2F154();
  v37 = sub_22BE1AB1C();
  sub_22BF1C1E4(v37, v38);
  v39 = sub_22BE19454();
  sub_22BF1C1E4(v39, v40);
  v41 = sub_22BE1AB1C();
  sub_22BF158B4(v41, v42);
  sub_22BF2562C();
  if (!(!v44 & v43))
  {
    v45 = *(v16 + 232);
    v46 = *(v16 + 240);
    v47 = *(v16 + 144);
    sub_22BF25678(*(*(v16 + 176) + 16));
    sub_22BE19454();
    sub_22BF2B19C();
    v48 = *(v16 + 232);
    v19 = *(v16 + 240);
    if (v17)
    {
      v50 = *(v16 + 216);
      v49 = *(v16 + 224);
      sub_22BF249B8(*(v16 + 144));
      v51 = sub_22BE1AB1C();
      v53 = sub_22BE1A6A0(v51, v52);
LABEL_13:
      v32 = sub_22BE1A6A0(v53, v54);
      goto LABEL_14;
    }

    sub_22BF249B8(*(v16 + 144));
    v55 = sub_22BE19454();
    sub_22BF158B4(v55, v56);
  }

  if ((*(v16 + 305) & 1) != 0 || *(v16 + 307))
  {
    v19 = *(v16 + 136);
    sub_22BE3C394(*(*(v16 + 176) + 16));
    sub_22BF2B1C8();
    if (v17)
    {
      sub_22BE2F154();
      sub_22BF249B8(*(v16 + 136));
      v53 = sub_22BE1AB1C();
      goto LABEL_13;
    }

    sub_22BF249B8(*(v16 + 136));
  }

  v58 = *(v16 + 232);
  v57 = *(v16 + 240);
  sub_22BE28F38();
  v59 = *(v16 + 136);
  v60 = *(v16 + 144);
  a9 = *(v16 + 128);
  a10 = *(v16 + 120);
  a11 = *(v16 + 112);
  a12 = *(v16 + 88);
  v63 = *v62;
  sub_22BE3C394(*(v61 + 16));
  sub_22BF2B1F4();
  v64 = sub_22BE18240();
  sub_22BF158B4(v64, v65);
  v66 = sub_22BE232C8();
  sub_22BF158B4(v66, v67);
  sub_22BF249B8(v19);

  sub_22BE1A26C();
LABEL_17:
  sub_22BE285F4();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BF21540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = *(v12 + 184);

  v14 = *(v12 + 200);
  sub_22BE19F24();

  sub_22BE17A94();
  sub_22BE25494();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_22BF215E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = v12[29];
  v14 = v12[30];
  v15 = sub_22BE1A6A0(v12[27], v12[28]);
  sub_22BF158B4(v15, v16);
  v17 = v12[32];
  sub_22BE19F24();

  sub_22BE17A94();
  sub_22BE25494();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_22BF21698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = v12[29];
  v14 = v12[30];
  v15 = sub_22BE1A6A0(v12[27], v12[28]);
  sub_22BF158B4(v15, v16);
  v17 = v12[34];
  sub_22BE19F24();

  sub_22BE17A94();
  sub_22BE25494();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_22BF21748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = v12[29];
  v14 = v12[30];
  v15 = sub_22BE1A6A0(v12[27], v12[28]);
  sub_22BF158B4(v15, v16);
  v17 = v12[37];
  sub_22BE19F24();

  sub_22BE17A94();
  sub_22BE25494();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_22BF217F8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_22C273064();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_22C26E514();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = sub_22C26EA04();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v13 = *(*(sub_22BE5CE4C(&qword_27D90B200, &qword_22C28C460) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = type metadata accessor for ToolboxVersion(0);
  v3[17] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v16 = sub_22C2720A4();
  v3[19] = v16;
  v17 = *(v16 - 8);
  v3[20] = v17;
  v18 = *(v17 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v19 = *(*(sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v20 = sub_22C26E1D4();
  v3[25] = v20;
  v21 = *(v20 - 8);
  v3[26] = v21;
  v22 = *(v21 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v23 = *(*(_s19SentinelFileManagerVMa() - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v24 = *(*(sub_22BE5CE4C(&qword_27D90B278, &qword_22C28C808) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF21BA8, 0, 0);
}

uint64_t sub_22BF21BA8()
{
  v306 = v0;
  v1 = *(v0 + 264);
  v2 = *(*(v0 + 48) + 56);
  *(v0 + 304) = v2;
  v3 = sub_22BE23CB4(*(v2 + 16));
  v4 = sub_22BF2B32C(v3);
  v6 = v5;
  sub_22BF249B8(v1);
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  sub_22BE200D4();
  sub_22C26E174();
  if (sub_22BE1AEA8(v8, 1, v7) == 1)
  {
    v9 = *(v0 + 192);

    sub_22BE233E8(v9, &qword_27D9082F0, &qword_22C27AB00);
LABEL_4:
    v10 = *(v0 + 288);
    v11 = *(v0 + 32);
    v12 = v11[3];
    v13 = v11[4];
    sub_22BE1BD3C(v11, v12);
    v14 = sub_22C272404();
    v15 = *(v13 + 88);
    v16 = sub_22BF255E0(&qword_28106DF60, MEMORY[0x277D726E8]);
    v15(v14, v14, v16, v12, v13);
    v51 = *(v0 + 280);
    sub_22BF25510(*(v0 + 288), *(v0 + 296));
    v52 = sub_22BE18944();
    sub_22BF25580(v52, v53, v54, v55);
    v56 = sub_22C272424();
    v57 = sub_22BE1AEA8(v51, 1, v56);
    if (v57 == 1)
    {
      sub_22BE233E8(*(v0 + 280), &qword_27D90B278, &qword_22C28C808);
      v24 = 0;
    }

    else
    {
      v62 = *(v0 + 280);
      sub_22BF24164();
      v24 = v116;
      (*(*(v56 - 8) + 8))(*(v0 + 280), v56);
    }

    goto LABEL_11;
  }

  v292 = v2;
  v296 = v4;
  v17 = *(v0 + 296);
  v299 = v6;
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 184);
  v21 = *(v0 + 48);
  (*(v19 + 32))(*(v0 + 224), *(v0 + 192), *(v0 + 200));
  v22 = *(v19 + 16);
  v23 = sub_22BE1AB1C();
  v24 = v299;
  v25(v23);
  sub_22C272414();
  v56 = sub_22C272424();
  sub_22BE19DC4(v17, 0, 1, v56);
  sub_22C271AD4();

  v26 = sub_22C272084();
  LOBYTE(v17) = sub_22C273784();

  v282 = v17;
  v27 = os_log_type_enabled(v26, v17);
  v28 = *(v0 + 224);
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v31 = *(v0 + 184);
  v32 = *(v0 + 160);
  v286 = *(v0 + 152);
  if (v27)
  {
    v263 = *(v0 + 208);
    v33 = *(v0 + 144);
    v257 = *(v0 + 136);
    v278 = *(v0 + 224);
    v34 = *(v0 + 48);
    v272 = *(v0 + 200);
    v35 = sub_22BE2B808();
    v305[0] = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_22BE61C88(v296, v299, v305);
    *(v35 + 12) = 2080;
    log = v26;
    v37 = v34[5];
    v36 = v34[6];
    sub_22BE1BD3C(v34 + 2, v37);
    sub_22BE17C68();
    v266 = v31;
    v39 = v38;
    v41 = *(v40 + 64);
    v42 = sub_22BE25184();
    sub_22BE2C690(v39);
    v43();
    (*(v36 + 16))(v37, v36);
    (*(v39 + 8))(v42, v37);
    v44 = *(v257 + 20);
    v45 = sub_22C26FDE4();
    v47 = v46;
    v48 = sub_22C26FDF4();
    sub_22BE18524(v48);
    (*(v49 + 8))(v33 + v44);
    v24 = v299;

    v50 = sub_22BE61C88(v45, v47, v305);

    *(v35 + 14) = v50;
    _os_log_impl(&dword_22BE15000, log, v282, "MutableToolbox: using %s as toolbox version for\n%s.", v35, 0x16u);
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v32 + 8))(v266, v286);
    (*(v263 + 8))(v278, v272);
  }

  else
  {

    (*(v32 + 8))(v31, v286);
    (*(v29 + 8))(v28, v30);
  }

  v2 = v292;
LABEL_11:
  *(v0 + 312) = v24;
  v58 = *(v0 + 272);
  sub_22BF25580(*(v0 + 296), v58, &qword_27D90B278, &qword_22C28C808);
  sub_22C272424();
  if (sub_22BE1AEA8(v58, 1, v56) == 1)
  {
    sub_22BE233E8(*(v0 + 272), &qword_27D90B278, &qword_22C28C808);
    v59 = 0;
    v60 = 0xF000000000000000;
  }

  else
  {
    v61 = *(v0 + 272);
    ToolDatabase.LaunchServicesDatabaseVersion.encodedLSDBVersion()();
    v59 = v72;
    v60 = v73;
    v74 = *(v0 + 272);
    sub_22BE1BC24(v56);
    (*(v75 + 8))();
  }

  *(v0 + 320) = v59;
  *(v0 + 328) = v60;
  v76 = *(v0 + 264);
  sub_22BE23CB4(*(v2 + 16));
  v77 = sub_22BF2B2BC();
  v79 = v78;
  *(v0 + 336) = v77;
  *(v0 + 344) = v78;
  sub_22BF249B8(v76);
  sub_22BE1C1C0();
  if (!v81 & v80)
  {
    v82 = 1;
  }

  else
  {
    v82 = v60 >> 60 == 15;
  }

  v270 = v59;
  v301 = v24;
  v280 = v77;
  v284 = v79;
  if (v82)
  {
    goto LABEL_26;
  }

  v83 = sub_22BE2C254();
  sub_22BF1C1E4(v83, v84);
  sub_22BF1C1E4(v59, v60);
  v85 = sub_22BE2C254();
  if ((MEMORY[0x2318A6720](v85) & 1) == 0)
  {
    sub_22BF158B4(v59, v60);
    v113 = sub_22BE2C254();
    sub_22BF158B4(v113, v114);
LABEL_26:
    v115 = 0;
    goto LABEL_29;
  }

  v86 = *(v0 + 176);
  v87 = *(v0 + 48);
  sub_22C271AD4();

  v88 = sub_22C272084();
  v89 = sub_22C273784();

  v90 = os_log_type_enabled(v88, v89);
  v91 = *(v0 + 176);
  v92 = *(v0 + 160);
  v288 = *(v0 + 152);
  if (v90)
  {
    v294 = v2;
    v93 = *(v0 + 144);
    v258 = *(v0 + 136);
    v267 = v88;
    v94 = *(v0 + 48);
    v95 = swift_slowAlloc();
    v264 = sub_22BE25618();
    v305[0] = v264;
    *v95 = 136315138;
    v274 = v91;
    v97 = v94[5];
    v96 = v94[6];
    sub_22BE1BD3C(v94 + 2, v97);
    sub_22BE17C68();
    loga = v89;
    v98 = v60;
    v100 = v99;
    v102 = *(v101 + 64);
    v103 = sub_22BE25184();
    sub_22BE2C690(v100);
    v104();
    (*(v96 + 16))(v97, v96);
    (*(v100 + 8))(v103, v97);
    v60 = v98;
    v105 = *(v258 + 20);
    v106 = sub_22C26FDE4();
    v108 = v107;
    v109 = sub_22C26FDF4();
    sub_22BE18524(v109);
    v111 = v93 + v105;
    v2 = v294;
    (*(v110 + 8))(v111);

    v112 = sub_22BE61C88(v106, v108, v305);

    *(v95 + 4) = v112;
    _os_log_impl(&dword_22BE15000, v267, loga, "ToolEmbeddingDatabase: %s.\nStored toolDefinitionsVersion is equal to the passed in version.", v95, 0xCu);
    sub_22BE26B64(v264);
    sub_22BE183C8();
    sub_22BE183C8();
    sub_22BF158B4(v280, v284);
    sub_22BF158B4(v270, v60);

    (*(v92 + 8))(v274, v288);
  }

  else
  {
    sub_22BF158B4(v280, v284);
    sub_22BF158B4(v59, v60);

    (*(v92 + 8))(v91, v288);
  }

  v115 = 1;
LABEL_29:
  v117 = *(v0 + 264);
  sub_22BE23CB4(*(v2 + 16));
  v118 = sub_22BF2B3E8();
  v120 = v119;
  *(v0 + 352) = v118;
  *(v0 + 360) = v119;
  sub_22BF249B8(v117);
  type metadata accessor for QueryableToolbox();
  static QueryableToolbox.getLanguageCode()();
  if (v121)
  {
    v268 = v115;
    v289 = v60;
    v295 = v118;
    v275 = v120;
    v123 = *(v0 + 120);
    v122 = *(v0 + 128);
    v125 = *(v0 + 104);
    v124 = *(v0 + 112);
    v127 = *(v0 + 88);
    v126 = *(v0 + 96);
    v128 = *(v0 + 80);
    sub_22C26E9F4();
    (*(v127 + 104))(v126, *MEMORY[0x277D1C238], v128);
    sub_22BE35838();
    sub_22C26E9E4();

    (*(v127 + 8))(v126, v128);
    v129 = *(v124 + 8);
    v130 = sub_22BE2C254();
    v131(v130);
    v132 = sub_22C270264();
    v133 = sub_22BE1AEA8(v122, 1, v132);
    v134 = *(v0 + 128);
    if (v133 == 1)
    {
      sub_22BE233E8(*(v0 + 128), &qword_27D90B200, &qword_22C28C460);
      v135 = 0;
      v136 = 0xF000000000000000;
      v137 = v301;
      v60 = v289;
      v120 = v275;
    }

    else
    {
      v138 = sub_22C270254();
      sub_22BE1BC24(v132);
      (*(v139 + 8))(v134, v132);
      v60 = v289;
      v120 = v275;
      if (v138 && (sub_22BF16E4C(0x6E6F6973726576, 0xE700000000000000, v138), v141 = v140, , v141))
      {
        v142 = *(v0 + 64);
        v143 = *(v0 + 72);
        v144 = *(v0 + 56);
        sub_22C273054();
        v135 = sub_22C273034();
        v136 = v145;

        v146 = *(v142 + 8);
        v147 = sub_22BE236C8();
        v148(v147);
        if (v136 >> 60 != 15)
        {
          v137 = v301;
          v60 = v289;
          v118 = v295;
          if (v275 >> 60 != 15)
          {
            v246 = sub_22BE194C4();
            sub_22BF1C1E4(v246, v247);
            v248 = sub_22BE1ABB0();
            v249 = MEMORY[0x2318A6720](v248);
            sub_22BF158B4(v295, v275);
            v250 = sub_22BE194C4();
            sub_22BF158B4(v250, v251);
            v252 = sub_22BE194C4();
            sub_22BF158B4(v252, v253);
            if (v268 & v249)
            {
              goto LABEL_42;
            }

            v181 = 0;
            goto LABEL_47;
          }

          v181 = 0;
LABEL_45:
          v182 = sub_22BE1ABB0();
          sub_22BF158B4(v182, v183);
          sub_22BF158B4(v118, v120);
          goto LABEL_47;
        }

        v137 = v301;
        v60 = v289;
      }

      else
      {
        v135 = 0;
        v136 = 0xF000000000000000;
        v137 = v301;
      }
    }

    v118 = v295;
    v115 = v268;
  }

  else
  {
    v135 = 0;
    v136 = 0xF000000000000000;
    v137 = v301;
  }

  if (v120 >> 60 != 15)
  {
    v181 = 1;
    goto LABEL_45;
  }

  v149 = sub_22BE1ABB0();
  sub_22BF158B4(v149, v150);
  if (v115)
  {
    v295 = v118;
LABEL_42:
    v151 = *(v0 + 168);
    v152 = *(v0 + 48);

    sub_22C271AD4();

    v153 = sub_22C272084();
    LOBYTE(v151) = sub_22C273784();

    v302 = v151;
    v154 = os_log_type_enabled(v153, v151);
    v155 = *(v0 + 296);
    v156 = *(v0 + 160);
    v157 = *(v0 + 168);
    v158 = *(v0 + 152);
    if (v154)
    {
      v269 = *(v0 + 160);
      v254 = *(v0 + 144);
      v255 = *(v0 + 136);
      v298 = *(v0 + 296);
      v159 = *(v0 + 48);
      buf = swift_slowAlloc();
      v259 = sub_22BE25618();
      v305[0] = v259;
      *buf = 136315138;
      v265 = v157;
      v290 = v60;
      v160 = v159[5];
      v161 = v159[6];
      sub_22BE1BD3C(v159 + 2, v160);
      sub_22BE17C68();
      v276 = v120;
      v163 = v162;
      v165 = *(v164 + 64);
      logb = v158;
      v166 = sub_22BE25184();
      sub_22BE2C690(v163);
      v167();
      v168 = *(v161 + 16);
      v169 = sub_22BE236C8();
      v170(v169);
      (*(v163 + 8))(v166, v160);
      v171 = *(v255 + 20);
      v172 = sub_22C26FDE4();
      v174 = v173;
      v175 = sub_22C26FDF4();
      sub_22BE18524(v175);
      (*(v176 + 8))(v254 + v171);

      v177 = sub_22BE61C88(v172, v174, v305);

      *(buf + 4) = v177;
      _os_log_impl(&dword_22BE15000, v153, v302, "ToolEmbeddingDatabase: %s.\nStored toolDenyListVersion and ToolKit versions are up to date.", buf, 0xCu);
      sub_22BE26B64(v259);
      sub_22BE183C8();
      sub_22BE183C8();

      sub_22BF158B4(v270, v290);
      sub_22BF158B4(v295, v276);
      v178 = sub_22BE194C4();
      sub_22BF158B4(v178, v179);
      sub_22BF158B4(v280, v284);
      (v269[1].isa)(v265, logb);
      v180 = v298;
    }

    else
    {

      sub_22BF158B4(v270, v60);
      sub_22BF158B4(v295, v120);
      v198 = sub_22BE194C4();
      sub_22BF158B4(v198, v199);
      sub_22BF158B4(v280, v284);
      (*(v156 + 8))(v157, v158);
      v180 = v155;
    }

    sub_22BE233E8(v180, &qword_27D90B278, &qword_22C28C808);
    v303 = 0;
    goto LABEL_68;
  }

  v181 = 1;
LABEL_47:
  *(v0 + 368) = v136;
  *(v0 + 376) = v135;
  *(v0 + 400) = v181;
  if (!v137)
  {
    v187 = *(v0 + 40);
    if (v187 && (*(v187 + 16) & 1) != 0)
    {
      v188 = *(v0 + 240);
      v189 = sub_22BE17C90(*(v0 + 304));
      sub_22BF1F294(v189, v188);
      sub_22BF2B458();
      v233 = *(v0 + 304);
      v234 = *(v0 + 232);
      sub_22BF249B8(*(v0 + 240));
      sub_22BE23CB4(*(v233 + 16));
      sub_22BF2B484();
      v235 = sub_22BE2501C();
      v236 = *(v0 + 232);
      v238 = sub_22BE3AFFC(v235, v237);
      v239 = v60;
LABEL_66:
      sub_22BF158B4(v238, v239);
      sub_22BF249B8(v236);
      sub_22BE233E8(v120, &qword_27D90B278, &qword_22C28C808);
      goto LABEL_67;
    }

    v190 = *(v0 + 328);
    sub_22BF2562C();
    if (!v81 & v80)
    {
      if (!v181)
      {
LABEL_65:
        v219 = *(v0 + 368);
        v220 = *(v0 + 376);
        v221 = *(v0 + 248);
        v222 = sub_22BE17C90(*(v0 + 304));
        sub_22BF1F294(v222, v221);
        sub_22BE18944();
        sub_22BF2B42C();
        v223 = *(v0 + 352);
        v224 = *(v0 + 360);
        v226 = *(v0 + 336);
        v225 = *(v0 + 344);
        v228 = *(v0 + 320);
        v227 = *(v0 + 328);
        v120 = *(v0 + 296);
        v236 = *(v0 + 248);
        sub_22BF158B4(*(v0 + 376), *(v0 + 368));
        v229 = sub_22BE196A8();
        v231 = sub_22BE1A6A0(v229, v230);
        sub_22BF158B4(v231, v232);
        v238 = sub_22BE1AB1C();
        goto LABEL_66;
      }
    }

    else
    {
      v200 = *(v0 + 320);
      v201 = *(v0 + 256);
      v202 = sub_22BE17C90(*(v0 + 304));
      sub_22BF1F294(v202, v201);
      v203 = sub_22BE19454();
      sub_22BE29D7C(v203, v204);
      sub_22BE23114();
      sub_22BF2B400();
      if (v201)
      {
        v205 = *(v0 + 368);
        v206 = *(v0 + 376);
        v208 = *(v0 + 352);
        v207 = *(v0 + 360);
        v209 = *(v0 + 336);
        v304 = *(v0 + 344);
        v211 = *(v0 + 320);
        v210 = *(v0 + 328);
        v212 = *(v0 + 296);
        v213 = *(v0 + 256);
        sub_22BF158B4(v211, v210);
        v214 = sub_22BE3AFFC(v211, v210);
        sub_22BF158B4(v214, v304);
        sub_22BF249B8(v213);
        sub_22BE233E8(v212, &qword_27D90B278, &qword_22C28C808);
        v64 = *(v0 + 288);
        v63 = *(v0 + 296);
        v66 = *(v0 + 272);
        v65 = *(v0 + 280);
        v68 = *(v0 + 256);
        v67 = *(v0 + 264);
        sub_22BE3C824();
        v273 = *(v0 + 176);
        v279 = *(v0 + 168);
        v283 = *(v0 + 144);
        v287 = *(v0 + 128);
        v293 = *(v0 + 120);
        v297 = *(v0 + 96);
        v300 = *(v0 + 72);

        v69 = sub_22BE2B7F8();
LABEL_15:

        return v70(v69);
      }

      v215 = *(v0 + 320);
      v216 = *(v0 + 328);
      sub_22BF249B8(*(v0 + 256));
      v217 = sub_22BE19454();
      sub_22BF158B4(v217, v218);
      if ((*(v0 + 400) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v191 = sub_22BE3E8E8();
    sub_22BE233E8(v191, &qword_27D90B278, &qword_22C28C808);
    v192 = sub_22BE18240();
    v194 = sub_22BE1A6A0(v192, v193);
    sub_22BF158B4(v194, v195);
    v196 = sub_22BE232C8();
    sub_22BF158B4(v196, v197);
LABEL_67:
    v303 = 1;
LABEL_68:
    v241 = *(v0 + 288);
    v240 = *(v0 + 296);
    v242 = *(v0 + 272);
    v243 = *(v0 + 280);
    v245 = *(v0 + 256);
    v244 = *(v0 + 264);
    sub_22BE3C824();
    v271 = *(v0 + 176);
    v277 = *(v0 + 168);
    v281 = *(v0 + 144);
    v285 = *(v0 + 128);
    v291 = *(v0 + 120);
    sub_22BE2352C();

    sub_22BE2589C();
    v69 = v303;
    goto LABEL_15;
  }

  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v184 = swift_task_alloc();
  *(v0 + 384) = v184;
  *v184 = v0;
  v184[1] = sub_22BF22F50;
  v185 = *(v0 + 40);
  v186 = *(v0 + 48);

  return sub_22BF1F2F8();
}

uint64_t sub_22BF22F50()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v3 + 392) = v0;

  v9 = *(v3 + 312);

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF23058()
{
  v3 = *(v0 + 392);
  v4 = *(v0 + 40);
  if (v4 && (*(v4 + 16) & 1) != 0)
  {
    v5 = *(v0 + 240);
    sub_22BE3C394(*(*(v0 + 304) + 16));
    sub_22BF2B458();
    if (v3)
    {
      v7 = *(v0 + 368);
      v6 = *(v0 + 376);
      v9 = *(v0 + 352);
      v8 = *(v0 + 360);
      v11 = *(v0 + 336);
      v10 = *(v0 + 344);
      v12 = *(v0 + 296);
      v13 = *(v0 + 240);
      sub_22BF158B4(*(v0 + 320), *(v0 + 328));
      v14 = sub_22BE18240();
      sub_22BF158B4(v14, v15);
      sub_22BF158B4(v6, v7);
      v16 = v11;
      v17 = v10;
LABEL_8:
      sub_22BF158B4(v16, v17);
      sub_22BF249B8(v13);
      sub_22BE233E8(v12, &qword_27D90B278, &qword_22C28C808);
LABEL_15:
      v66 = *(v0 + 288);
      v65 = *(v0 + 296);
      v67 = *(v0 + 272);
      v68 = *(v0 + 280);
      v70 = *(v0 + 256);
      v69 = *(v0 + 264);
      sub_22BE3C824();
      v86 = *(v0 + 176);
      v88 = *(v0 + 168);
      v90 = *(v0 + 144);
      v92 = *(v0 + 128);
      v94 = *(v0 + 120);
      sub_22BE2352C();

      v71 = sub_22BE2B7F8();
      goto LABEL_17;
    }

    v61 = *(v0 + 304);
    v62 = *(v0 + 232);
    sub_22BF249B8(*(v0 + 240));
    sub_22BE3C394(*(v61 + 16));
    sub_22BF2B484();
    v63 = sub_22BE2501C();
    v54 = *(v0 + 232);
    v59 = sub_22BE3AFFC(v63, v64);
    v60 = v1;
  }

  else
  {
    v18 = *(v0 + 328);
    sub_22BF2562C();
    if (!(!v20 & v19))
    {
      v21 = *(v0 + 320);
      v22 = *(v0 + 256);
      sub_22BF25678(*(*(v0 + 304) + 16));
      v23 = sub_22BE19454();
      sub_22BE29D7C(v23, v24);
      sub_22BE19454();
      sub_22BF2B400();
      if (v3)
      {
        v26 = *(v0 + 368);
        v25 = *(v0 + 376);
        v28 = *(v0 + 352);
        v27 = *(v0 + 360);
        v29 = *(v0 + 336);
        v97 = *(v0 + 344);
        v30 = *(v0 + 320);
        v31 = *(v0 + 328);
        v12 = *(v0 + 296);
        v13 = *(v0 + 256);
        sub_22BF158B4(v30, v31);
        sub_22BF158B4(v30, v31);
        v32 = sub_22BE196A8();
        sub_22BF158B4(v32, v33);
        sub_22BF158B4(v25, v26);
        v16 = v29;
        v17 = v97;
        goto LABEL_8;
      }

      v34 = *(v0 + 320);
      v35 = *(v0 + 328);
      sub_22BF249B8(*(v0 + 256));
      v36 = sub_22BE19454();
      sub_22BF158B4(v36, v37);
    }

    if (*(v0 + 400) == 1)
    {
      v38 = sub_22BE3E8E8();
      sub_22BE233E8(v38, &qword_27D90B278, &qword_22C28C808);
      v39 = sub_22BE18240();
      v41 = sub_22BE1A6A0(v39, v40);
      sub_22BF158B4(v41, v42);
      v43 = sub_22BE232C8();
      sub_22BF158B4(v43, v44);
      goto LABEL_16;
    }

    v45 = *(v0 + 368);
    v46 = *(v0 + 376);
    v47 = *(v0 + 248);
    sub_22BF25678(*(*(v0 + 304) + 16));
    sub_22BE18944();
    sub_22BF2B42C();
    v48 = *(v0 + 352);
    v49 = *(v0 + 360);
    v51 = *(v0 + 336);
    v50 = *(v0 + 344);
    v53 = *(v0 + 320);
    v52 = *(v0 + 328);
    v2 = *(v0 + 296);
    v54 = *(v0 + 248);
    sub_22BF158B4(*(v0 + 376), *(v0 + 368));
    v55 = sub_22BE196A8();
    v57 = sub_22BE1A6A0(v55, v56);
    sub_22BF158B4(v57, v58);
    v59 = sub_22BE1AB1C();
  }

  sub_22BF158B4(v59, v60);
  sub_22BF249B8(v54);
  sub_22BE233E8(v2, &qword_27D90B278, &qword_22C28C808);
  if (v3)
  {
    goto LABEL_15;
  }

LABEL_16:
  v74 = *(v0 + 288);
  v73 = *(v0 + 296);
  v75 = *(v0 + 272);
  v76 = *(v0 + 280);
  v78 = *(v0 + 256);
  v77 = *(v0 + 264);
  v80 = *(v0 + 240);
  v79 = *(v0 + 248);
  v82 = *(v0 + 224);
  v81 = *(v0 + 232);
  v84 = *(v0 + 216);
  v85 = *(v0 + 192);
  v87 = *(v0 + 184);
  v89 = *(v0 + 176);
  v91 = *(v0 + 168);
  v93 = *(v0 + 144);
  v95 = *(v0 + 128);
  v96 = *(v0 + 120);
  sub_22BE2352C();

  sub_22BE2589C();
  v71 = 1;
LABEL_17:

  return v72(v71);
}

uint64_t sub_22BF234C8()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[37];
  sub_22BF158B4(v0[40], v0[41]);
  v8 = sub_22BE232C8();
  sub_22BF158B4(v8, v9);
  v10 = sub_22BE18944();
  sub_22BF158B4(v10, v11);
  v12 = sub_22BE18240();
  sub_22BF158B4(v12, v13);
  sub_22BE233E8(v7, &qword_27D90B278, &qword_22C28C808);
  v28 = v0[49];
  v15 = v0[36];
  v14 = v0[37];
  v17 = v0[34];
  v16 = v0[35];
  v19 = v0[32];
  v18 = v0[33];
  sub_22BE3C824();
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[18];
  v26 = v0[16];
  v27 = v0[15];
  sub_22BE2352C();

  v20 = sub_22BE2B7F8();

  return v21(v20);
}

uint64_t sub_22BF23660(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for ToolboxVersion(0);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_22C2720A4();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = sub_22C272224();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = *(*(_s19SentinelFileManagerVMa() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF237F0, 0, 0);
}

uint64_t sub_22BF237F0()
{
  v111 = v0;
  v1 = v0;
  v2 = sub_22BF3C48C();
  v0[16] = v2;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v6 = v1[11];
    v110[0] = MEMORY[0x277D84F90];
    sub_22BE70138();
    v4 = v110[0];
    v7 = *(v6 + 16);
    v6 += 16;
    v8 = v5 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v106 = *(v6 + 56);
    log = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[12];
      v11 = v1;
      v12 = v1[10];
      (log)(v10, v8, v12);
      v13 = sub_22C2721E4();
      v15 = v14;
      (*v9)(v10, v12);
      v110[0] = v4;
      v16 = *(v4 + 16);
      if (v16 >= *(v4 + 24) >> 1)
      {
        sub_22BE70138();
        v4 = v110[0];
      }

      *(v4 + 16) = v16 + 1;
      v17 = v4 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v8 += v106;
      --v3;
      v1 = v11;
    }

    while (v3);
  }

  v110[0] = v4;

  sub_22BF1C7CC(v110);
  v18 = v1[15];
  v19 = v1[4];

  v1[2] = v110[0];
  sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
  sub_22BEBAF64();
  sub_22C272FB4();

  static ToolBoxUtility.stableHashData(hashableString:)();
  v21 = v20;

  v22 = sub_22C26E034();
  v24 = v23;

  v1[17] = v22;
  v1[18] = v24;
  v25 = *(v19 + 56);
  v1[19] = v25;
  sub_22BF1F294(*(v25 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v18);
  sub_22BF2B4B0();
  sub_22BF249B8(v18);
  sub_22BF2562C();
  if (!v31 & v30)
  {
    sub_22BE1C1C0();
    if (!v31 & v30)
    {
      v26 = sub_22BE232C8();
      sub_22BE29D7C(v26, v27);

      v28 = sub_22BE35838();
      sub_22BF158B4(v28, v29);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  sub_22BE1C1C0();
  if (!v31 & v30)
  {
LABEL_13:
    v32 = sub_22BE232C8();
    sub_22BE29D7C(v32, v33);
    v34 = sub_22BE35838();
    sub_22BF158B4(v34, v35);
    v36 = sub_22BE232C8();
    sub_22BF158B4(v36, v37);
    goto LABEL_14;
  }

  v45 = sub_22BE232C8();
  sub_22BE29D7C(v45, v46);
  v47 = sub_22BE232C8();
  sub_22BE29D7C(v47, v48);
  v49 = sub_22BE35838();
  sub_22BF1C1E4(v49, v50);
  v51 = sub_22BE35838();
  v52 = MEMORY[0x2318A6720](v51);
  v53 = sub_22BE232C8();
  sub_22BF158B4(v53, v54);
  v55 = sub_22BE232C8();
  sub_22BE29DD4(v55, v56);
  v57 = sub_22BE35838();
  sub_22BF158B4(v57, v58);
  v59 = sub_22BE35838();
  sub_22BF158B4(v59, v60);
  if (v52)
  {

LABEL_19:
    v61 = v1[9];
    v62 = v1[4];
    sub_22C271AD4();

    v63 = sub_22C272084();
    v64 = sub_22C273784();

    v65 = os_log_type_enabled(v63, v64);
    v67 = v1[8];
    v66 = v1[9];
    v68 = v1[7];
    if (v65)
    {
      v69 = v1[6];
      v102 = v1[5];
      loga = v63;
      v70 = v1[4];
      buf = swift_slowAlloc();
      v105 = sub_22BE25618();
      v110[0] = v105;
      *buf = 136315138;
      v104 = v64;
      v71 = v70[5];
      v72 = v70[6];
      sub_22BE1BD3C(v70 + 2, v71);
      sub_22BE17C68();
      v107 = v68;
      v74 = v73;
      v76 = *(v75 + 64);
      sub_22BE25184();
      sub_22BE2C690(v74);
      v77();
      (*(v72 + 16))(v71, v72);
      v78 = *(v74 + 8);
      v79 = sub_22BE196A8();
      v80(v79);
      v81 = v66;
      v82 = *(v102 + 20);
      v83 = sub_22C26FDE4();
      v85 = v84;
      v86 = sub_22C26FDF4();
      sub_22BE18524(v86);
      (*(v87 + 8))(v69 + v82);

      v88 = sub_22BE61C88(v83, v85, v110);

      *(buf + 4) = v88;
      _os_log_impl(&dword_22BE15000, loga, v104, "ToolEmbeddingDatabase: %s\nloadAllSiriXShims is a no-op. Stored SiriX shims version is equal to the passed in version.", buf, 0xCu);
      sub_22BE26B64(v105);
      sub_22BE183C8();
      sub_22BE183C8();

      v89 = sub_22BE232C8();
      sub_22BE29DD4(v89, v90);
      (*(v67 + 8))(v81, v107);
    }

    else
    {
      v91 = sub_22BE232C8();
      sub_22BE29DD4(v91, v92);

      (*(v67 + 8))(v66, v68);
    }

    v94 = v1[14];
    v93 = v1[15];
    v96 = v1[12];
    v95 = v1[13];
    v97 = v1[9];
    v98 = v1[6];

    v99 = v1[1];
    sub_22BE2946C();

    __asm { BRAA            X2, X16 }
  }

LABEL_14:
  v38 = swift_task_alloc();
  v1[20] = v38;
  *v38 = v1;
  v38[1] = sub_22BF23E30;
  v39 = v1[4];
  sub_22BE2946C();

  return sub_22BF1E000(v40, v41, v42);
}

uint64_t sub_22BF23E30()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;
  *(v3 + 168) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BF23F30()
{
  v1 = v0[3];
  if (v1 && (*(v1 + 16) & 1) != 0)
  {
    v2 = v0[21];
    v3 = v0[13];
    sub_22BE3C394(*(v0[19] + 16));
    sub_22BF2B578();
    v4 = v0[17];
    v5 = v0[18];
    v6 = v0[13];
  }

  else
  {
    v2 = v0[21];
    v7 = v0[18];
    v8 = v0[17];
    v9 = v0[14];
    sub_22BF25678(*(v0[19] + 16));
    sub_22BE19454();
    sub_22BF2B4C8();
    v10 = v0[17];
    v11 = v0[18];
    v6 = v0[14];
  }

  sub_22BF249B8(v6);
  v12 = sub_22BE19454();
  sub_22BE29DD4(v12, v13);
  v15 = v0[14];
  v14 = v0[15];
  if (v2)
  {
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[9];
    v19 = v0[6];

    v20 = sub_22BE2B7F8();
  }

  else
  {
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[9];
    v25 = v0[6];

    sub_22BE2589C();
    v20 = 1;
  }

  return v21(v20);
}

uint64_t sub_22BF240B0()
{
  sub_22BE201F0();
  v1 = v0[16];
  sub_22BE29DD4(v0[17], v0[18]);

  v2 = v0[21];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];
  v8 = v0[6];

  v9 = sub_22BE2B7F8();

  return v10(v9);
}

char *sub_22BF24164()
{
  v1 = sub_22C273064();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C26DC34();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_22C26DC24();
  sub_22C272424();
  sub_22BF255E0(&qword_28106DF58, MEMORY[0x277D726F0]);
  v8 = sub_22C26DC04();
  v10 = v9;

  if (!v0)
  {
    sub_22C273054();
    v11 = sub_22C273044();
    if (v12)
    {
      v4 = v11;
    }

    else
    {
      v4 = 0x800000022C2D4060;
      sub_22BF103C8();
      swift_allocError();
      *v14 = 0xD00000000000007FLL;
      *(v14 + 8) = 0x800000022C2D3FE0;
      *(v14 + 16) = xmmword_22C28C730;
      *(v14 + 32) = 0x800000022C2D4060;
      swift_willThrow();
    }

    sub_22BE29DD4(v8, v10);
  }

  return v4;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MutableToolbox.count()()
{
  v1 = *(v0 + 56);

  sub_22BF275C8();
  return result;
}

uint64_t MutableToolbox.allowList(toolDefinitions:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF243D8()
{
  sub_22BE183F0();
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22BF24470;
  v3 = sub_22BE3E2E8(v0[2]);

  return QueryableToolbox.allowList(toolDefinitions:)(v3);
}

uint64_t sub_22BF24470()
{
  sub_22BE183F0();
  v3 = v2;
  sub_22BE190F0();
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;

  sub_22BE2589C();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t MutableToolbox.metadata(enableAllowList:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF24574()
{
  sub_22BE183F0();
  v1 = *(v0[2] + 56);
  v0[3] = v1;
  v0[4] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  sub_22BE23878(v2);

  return sub_22BF3AE08();
}

uint64_t sub_22BF24618()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v6 = *(v5 + 40);
  *v4 = *v1;
  v3[6] = v7;
  v3[7] = v0;

  if (!v0)
  {
    v8 = v3[4];
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF24720()
{
  sub_22BE183F0();
  v0[8] = *(v0[3] + 16);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  sub_22BE23878(v1);

  return sub_22BF3B42C();
}

uint64_t sub_22BF247BC()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  sub_22BE18C2C();
  *v10 = v9;
  v5[10] = v0;

  if (v0)
  {
    sub_22BE27278();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[8];

    v15 = *(v9 + 8);
    v16 = v5[6];

    return v15(v16, v3);
  }
}

uint64_t sub_22BF248F8()
{
  sub_22BE183F0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  sub_22BE17A94();

  return v3();
}

uint64_t sub_22BF24954()
{
  sub_22BE183F0();
  v1 = v0[6];

  v2 = v0[10];
  v3 = v0[8];

  sub_22BE17A94();

  return v4();
}

uint64_t sub_22BF249B8(uint64_t a1)
{
  v2 = _s19SentinelFileManagerVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MutableToolbox.deinit()
{
  sub_22BE26B64((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t MutableToolbox.__deallocating_deinit()
{
  sub_22BE26B64((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_22BF24AE0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C273FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22BF24C9C(v7, v8, a1, v4);
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
    return sub_22BF24BD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BF24BD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_22C274014();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BF24C9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_22C274014();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_22C274014()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_22C274014() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_22BE6614C();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_22BE6614C();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_22BF252D0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_22BF251A4(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_22BF251A4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C115CA4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22BF252D0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22BF252D0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22BE67CB0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_22BE67CB0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_22C274014() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_22BF25474(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_22C272E44();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_22BF25510(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B278, &qword_22C28C808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF25580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BE5CE4C(a3, a4);
  sub_22BE1BC24(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

uint64_t sub_22BF255E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BF25638()
{

  return sub_22C273034();
}

uint64_t sub_22BF25678@<X0>(uint64_t a1@<X8>)
{

  return sub_22BF1F294(a1 + v1, v2);
}

uint64_t sub_22BF25690(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000797265;
  v3 = 0x7551797469746E65;
  v4 = a1;
  v5 = 0x7551797469746E65;
  v6 = 0xEB00000000797265;
  switch(v4)
  {
    case 1:
      v5 = 0x61636F5669726973;
      v6 = 0xEE007972616C7562;
      break;
    case 2:
      v5 = 0xD000000000000014;
      v6 = 0x800000022C2D29F0;
      break;
    case 3:
      v5 = 0x656D6F646167656DLL;
      v7 = 5391173;
      goto LABEL_8;
    case 4:
      v5 = 0x52747865746E6F63;
      v6 = 0xEF79727473696765;
      break;
    case 5:
      v5 = 0x61566E7275746572;
      v7 = 6649196;
LABEL_8:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v5 = 0x6D6F725072657375;
      v6 = 0xEA00000000007470;
      break;
    case 7:
      v5 = 0x72616573696E6D6FLL;
      v6 = 0xEA00000000006863;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x61636F5669726973;
      v2 = 0xEE007972616C7562;
      break;
    case 2:
      v3 = 0xD000000000000014;
      v2 = 0x800000022C2D29F0;
      break;
    case 3:
      v3 = 0x656D6F646167656DLL;
      v8 = 5391173;
      goto LABEL_17;
    case 4:
      v3 = 0x52747865746E6F63;
      v2 = 0xEF79727473696765;
      break;
    case 5:
      v3 = 0x61566E7275746572;
      v8 = 6649196;
LABEL_17:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v3 = 0x6D6F725072657375;
      v2 = 0xEA00000000007470;
      break;
    case 7:
      v3 = 0x72616573696E6D6FLL;
      v2 = 0xEA00000000006863;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22BE1A6C8();
  }

  return v10 & 1;
}

uint64_t sub_22BF258F8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7469725764616572;
  }

  else
  {
    v3 = 0x796C6E4F64616572;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (a2)
  {
    v5 = 0x7469725764616572;
  }

  else
  {
    v5 = 0x796C6E4F64616572;
  }

  if (a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0();
  }

  return v8 & 1;
}

uint64_t sub_22BF25990(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000073656C70;
  v3 = 0x6D6178655F736F70;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6D6178655F67656ELL;
    }

    else
    {
      v5 = 0x7470697263736564;
    }

    if (v4 == 1)
    {
      v6 = 0xEC00000073656C70;
    }

    else
    {
      v6 = 0xEB000000006E6F69;
    }
  }

  else
  {
    v5 = 0x6D6178655F736F70;
    v6 = 0xEC00000073656C70;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x6D6178655F67656ELL : 0x7470697263736564;
    if (a2 != 1)
    {
      v2 = 0xEB000000006E6F69;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE1A6C8();
  }

  return v8 & 1;
}

uint64_t sub_22BF25AA4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x4149445F4C4C5546;
  }

  if (v2)
  {
    v4 = 0xEB00000000474F4CLL;
  }

  else
  {
    v4 = 0x800000022C2D2980;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x4149445F4C4C5546;
  }

  if (a2)
  {
    v6 = 0x800000022C2D2980;
  }

  else
  {
    v6 = 0xEB00000000474F4CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0();
  }

  return v8 & 1;
}

uint64_t sub_22BF25B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22BE17CA0();
  }

  return v9 & 1;
}

uint64_t sub_22BF25C14(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65747441666C6573;
  }

  else
  {
    v3 = 0x676E69727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006E6F69746ELL;
  }

  if (a2)
  {
    v5 = 0x65747441666C6573;
  }

  else
  {
    v5 = 0x676E69727473;
  }

  if (a2)
  {
    v6 = 0xED00006E6F69746ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0();
  }

  return v8 & 1;
}

uint64_t sub_22BF25CB0(unsigned __int8 a1, char a2)
{
  v2 = 0x74706D6F7270;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x444974706D6F7270;
    }

    else
    {
      v4 = 0x655474706D6F7270;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEE006574616C706DLL;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x74706D6F7270;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x444974706D6F7270;
    }

    else
    {
      v2 = 0x655474706D6F7270;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEE006574616C706DLL;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0();
  }

  return v8 & 1;
}

uint64_t sub_22BF25DB4(char a1, char a2)
{
  v3 = 0xE100000000000000;
  v4 = 61;
  switch(a1)
  {
    case 1:
      v3 = 0xE200000000000000;
      v4 = 15649;
      break;
    case 2:
      v4 = 62;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v4 = 15678;
      break;
    case 4:
      v4 = 60;
      break;
    case 5:
      v3 = 0xE200000000000000;
      v4 = 15676;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v4 = 0x736E6961746E6F63;
      break;
    case 7:
      v4 = 0x666572705F736168;
      goto LABEL_11;
    case 8:
      v4 = 0x666675735F736168;
LABEL_11:
      v3 = 0xEA00000000007869;
      break;
    case 9:
      v4 = 0x65777465625F7369;
      v3 = 0xEA00000000006E65;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 61;
  switch(a2)
  {
    case 1:
      v5 = 0xE200000000000000;
      v6 = 15649;
      break;
    case 2:
      v6 = 62;
      break;
    case 3:
      v5 = 0xE200000000000000;
      v6 = 15678;
      break;
    case 4:
      v6 = 60;
      break;
    case 5:
      v5 = 0xE200000000000000;
      v6 = 15676;
      break;
    case 6:
      v5 = 0xE800000000000000;
      v6 = 0x736E6961746E6F63;
      break;
    case 7:
      v6 = 0x666572705F736168;
      goto LABEL_22;
    case 8:
      v6 = 0x666675735F736168;
LABEL_22:
      v5 = 0xEA00000000007869;
      break;
    case 9:
      v6 = 0x65777465625F7369;
      v5 = 0xEA00000000006E65;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0();
  }

  return v8 & 1;
}

uint64_t sub_22BF25F94(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000064726177;
  v3 = 0x726F466563696F76;
  v4 = a1;
  v5 = 0x726F466563696F76;
  v6 = 0xEC00000064726177;
  switch(v4)
  {
    case 1:
      v5 = 0x6C6E4F6563696F76;
      v6 = 0xE900000000000079;
      break;
    case 2:
      v5 = 0x4679616C70736964;
      v6 = 0xEE0064726177726FLL;
      break;
    case 3:
      v5 = 0x4F79616C70736964;
      v6 = 0xEB00000000796C6ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6C6E4F6563696F76;
      v2 = 0xE900000000000079;
      break;
    case 2:
      v3 = 0x4679616C70736964;
      v2 = 0xEE0064726177726FLL;
      break;
    case 3:
      v3 = 0x4F79616C70736964;
      v2 = 0xEB00000000796C6ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE1A6C8();
  }

  return v8 & 1;
}

uint64_t sub_22BF2610C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1868852853;
  }

  else
  {
    v3 = 0x6D726F66726570;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1868852853;
  }

  else
  {
    v5 = 0x6D726F66726570;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BE17CA0();
  }

  return v8 & 1;
}

uint64_t sub_22BF26198()
{
  sub_22C272274();
  sub_22BF269FC();
  sub_22C2733C4();
  sub_22C2733C4();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_22C274014();
  }

  return v1 & 1;
}

uint64_t PlannerToolboxDelegate.version.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_22BE5CE4C(&qword_27D90B280, &qword_22C28C820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_22C26FDF4();
  v7 = sub_22BE179D8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v14 = v13 - v12;
  swift_getKeyPath();
  sub_22C26E624();

  sub_22C26FDD4();
  if (sub_22BE1AEA8(v5, 1, v6) == 1)
  {
    sub_22BF26408(v14);
    if (sub_22BE1AEA8(v5, 1, v6) != 1)
    {
      sub_22BF26590(v5);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v5, v6);
  }

  *a1 = 14;
  v15 = type metadata accessor for ToolboxVersion(0);
  return (*(v9 + 32))(&a1[*(v15 + 20)], v14, v6);
}

uint64_t sub_22BF26408@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C2720A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C271B14();
  v7 = sub_22C272084();
  v8 = sub_22C2737A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22BE15000, v7, v8, "Unknown planner type, will assume agenticPlanner for toolbox version", v9, 2u);
    MEMORY[0x2318AD180](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *MEMORY[0x277D1CE80];
  v11 = sub_22C26FDF4();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_22BF26590(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B280, &qword_22C28C820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlannerToolboxDelegate.toolFilter(_:)(uint64_t a1)
{
  v2 = sub_22C272224();
  v3 = sub_22BE179D8(v2);
  v42 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22C2720A4();
  v11 = sub_22BE179D8(v10);
  v43 = v12;
  v44 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v17 = v16 - v15;
  v18 = sub_22C272274();
  v19 = sub_22BE179D8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v42 - v27;
  sub_22C272214();
  (*(v21 + 104))(v26, *MEMORY[0x277D723F0], v18);
  v29 = sub_22BF26198();
  v30 = *(v21 + 8);
  v30(v26, v18);
  v30(v28, v18);
  if (v29)
  {
    ToolDefinition.isAvailableForToolboxIndexing.getter();
    if (v31)
    {
      return 1;
    }

    sub_22C271B24();
    v33 = v42;
    (*(v42 + 16))(v9, a1, v2);
    v34 = sub_22C272084();
    v35 = sub_22C2737C4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45 = v37;
      *v36 = 136315138;
      v38 = sub_22C2721D4();
      v40 = v39;
      (*(v33 + 8))(v9, v2);
      v41 = sub_22BE61C88(v38, v40, &v45);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_22BE15000, v34, v35, "PlannerToolboxDelegate: Skipping tool due to unsatisfied requirements: %s", v36, 0xCu);
      sub_22BE26B64(v37);
      MEMORY[0x2318AD180](v37, -1, -1);
      MEMORY[0x2318AD180](v36, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v9, v2);
    }

    (*(v43 + 8))(v17, v44);
  }

  return 0;
}

unint64_t sub_22BF269FC()
{
  result = qword_27D90B288;
  if (!qword_27D90B288)
  {
    sub_22C272274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B288);
  }

  return result;
}

uint64_t static QueryableToolbox.getLanguageCode()()
{
  v0 = [objc_opt_self() sharedPreferences];
  sub_22BF2ADF0(v0);
  v2 = v1;
  if (v1)
  {
    sub_22BE699D0();
    v3 = sub_22C273954();

    if (v3[2])
    {
      v4 = v3[4];
      v5 = v3[5];
      v6 = v3[6];
      v7 = v3[7];
      swift_bridgeObjectRetain_n();

      v2 = MEMORY[0x2318AB7C0](v4, v5, v6, v7);
      swift_bridgeObjectRelease_n();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

uint64_t sub_22BF26B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  sub_22BF27224(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, SWORD1(a10), SWORD2(a10), SBYTE6(a10), SHIBYTE(a10), a11, a12, a9, a10, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29);
  return v18;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryableToolbox.count()()
{

  sub_22BF275C8();
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryableToolbox.countToolDefinitions()()
{

  sub_22BE1BF08();
  return sub_22BF27AD0(v0, v1, v2, v3, v4);
}

uint64_t QueryableToolbox.allowList(toolDefinitions:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22BF26D2C, 0, 0);
}

uint64_t sub_22BF26D2C()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22BF26DC8;
  v3 = v0[2];

  return sub_22BF4C7A0();
}

uint64_t sub_22BF26DC8(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t QueryableToolbox.isReady.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void QueryableToolbox.__allocating_init<A, B>(delegate:planGenerationDelegate:databasePath:sandboxIdentifier:toolbox:toolkitCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BE19130();
  a22 = v27;
  a23 = v28;
  v74 = v26;
  v30 = v29;
  v72 = v31;
  v73 = v32;
  v70 = v34;
  v71 = v33;
  v67 = v35;
  v75 = v36;
  v38 = v37;
  v66 = v37;
  v68 = a26;
  v39 = a24;
  v69 = a25;
  v40 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v41 = sub_22BE19448(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v65 - v44;
  sub_22BE17C68();
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE179EC();
  v53 = v52 - v51;
  sub_22BE17C68();
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE179EC();
  v61 = v60 - v59;
  (*(v55 + 16))(v60 - v59, v38, v30);
  v62 = v39;
  (*(v47 + 16))(v53, v75, v39);
  a13 = 0;
  v63 = v67;
  sub_22BF2AF04(v67, v45, &qword_27D908088, &qword_22C278EC0);
  v64 = v70;
  sub_22BF1CDC0(v70, v76);
  sub_22BF26B58(v61, v53, &a13, v45, v71, v72, v76, v73, v30, v62, v69, v68);
  sub_22BF1CE1C(v64);
  sub_22BE23388(v63, &qword_27D908088, &qword_22C278EC0);
  (*(v47 + 8))(v75, v62);
  (*(v55 + 8))(v66, v30);
  sub_22BE18478();
}

void sub_22BF27224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BE19130();
  a23 = v30;
  a24 = v31;
  v82 = v32;
  v81 = v33;
  v83 = v34;
  v84 = v35;
  v89 = v36;
  v87 = v37;
  v79 = v38;
  v40 = v39;
  v41 = a25;
  v42 = a26;
  v80 = a28;
  v88 = a27;
  v77 = *v28;
  v43 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v44 = sub_22BE19448(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v77 - v47;
  sub_22BE17C68();
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE179EC();
  v56 = v55 - v54;
  sub_22BE17C68();
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE179EC();
  v64 = v63 - v62;
  v65 = v88;
  a10 = *v87;
  v87 = v28;
  v28[24] = 0;
  (*(v65 + 8))(v90, v41);
  v66 = 128;
  if (LOBYTE(v90[0]))
  {
    v66 = 384;
  }

  v78 = v66;
  type metadata accessor for ToolEmbeddingsDatabase(0);
  v67 = *(v58 + 16);
  v86 = v40;
  v68 = v40;
  v69 = v79;
  v67(v64, v68, v41);
  v85 = v50;
  (*(v50 + 16))(v56, v69, v42);
  sub_22BF2AF04(v89, v48, &qword_27D908088, &qword_22C278EC0);
  a14 = a10;
  v70 = v81;
  sub_22BF1CDC0(v81, v90);
  v71 = sub_22BF47390(v64, v56, v48, &a14, v78, v83, v84, v90, v82, v41, v42, v88, v80);
  if (v29)
  {
    sub_22BF1CE1C(v70);
    sub_22BE23388(v89, &qword_27D908088, &qword_22C278EC0);
    v72 = sub_22BE23128();
    v73(v72);
    (*(v58 + 8))(v86, v41);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v74 = v71;
    sub_22BF1CE1C(v70);
    sub_22BE23388(v89, &qword_27D908088, &qword_22C278EC0);
    v75 = sub_22BE23128();
    v76(v75);
    (*(v58 + 8))(v86, v41);
    *(v87 + 2) = v74;
  }

  sub_22BE18478();
}

void sub_22BF275C8()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v58 = v5;
  v56 = v6;
  v61 = v7;
  v8 = _s19SentinelFileManagerVMa();
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v57 = v13 - v12;
  sub_22C2720A4();
  sub_22BE17C68();
  v59 = v15;
  v60 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  sub_22C26E2F4();
  sub_22BE17C68();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v30 = (v29 - v28);
  v31 = *(*(v2 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22C26E314();
  if (v0)
  {
    v62 = v2;
    v32 = v0;
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (swift_dynamicCast())
    {
      v33 = v24[11];
      v34 = sub_22BE1B328();
      v36 = v35(v34);
      if (v36 == *MEMORY[0x277D781A0])
      {

        v37 = v24[12];
        v38 = sub_22BE1B328();
        v39(v38);
        v41 = *v30;
        v40 = v30[1];
        sub_22C271AD4();
        v42 = v58;

        v43 = sub_22C272084();
        v44 = sub_22C2737A4();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v63[0] = swift_slowAlloc();
          *v45 = 136315394;
          *(v45 + 4) = sub_22BE61C88(v56, v42, v63);
          *(v45 + 12) = 2080;
          v46 = sub_22BE61C88(v41, v40, v63);

          *(v45 + 14) = v46;
          _os_log_impl(&dword_22BE15000, v43, v44, "QueryableToolbox %s failed due to unrecoverable error: %s", v45, 0x16u);
          swift_arrayDestroy();
          sub_22BE183C8();
          sub_22BE183C8();
        }

        else
        {
        }

        (*(v59 + 8))(v20, v60);
        v52 = v57;
        sub_22BF1F294(*(v4 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v57);
        sub_22BF2B12C();
        sub_22BF249B8(v52);
        sub_22BE189D8();
        *(v4 + 24) = 0;

LABEL_13:

        goto LABEL_16;
      }

      if (v36 == *MEMORY[0x277D781A8])
      {

        sub_22C271AD4();
        v47 = v58;

        v48 = sub_22C272084();
        v49 = sub_22C2737C4();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v63[0] = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_22BE61C88(v56, v47, v63);
          _os_log_impl(&dword_22BE15000, v48, v49, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v50, 0xCu);
          sub_22BE26B64(v51);
          sub_22BE183C8();
          sub_22BE183C8();
        }

        (*(v59 + 8))(v22, v60);
        sub_22BE189D8();
        *(v4 + 24) = 0;

        goto LABEL_13;
      }

      v53 = v24[1];
      v54 = sub_22BE1B328();
      v55(v54);
    }

    goto LABEL_16;
  }

  sub_22BE189D8();
  *(v4 + 24) = 1;

LABEL_16:
  sub_22BE18478();
}

uint64_t sub_22BF27AD0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v43 = a2;
  v48 = a1;
  v8 = _s19SentinelFileManagerVMa();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C2720A4();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = sub_22C26E2F4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a5 + 16);
  sub_22BF4B6F0();
  if (!v5)
  {
    v35 = v24;
    swift_beginAccess();
    *(a4 + 24) = 1;

    return v35;
  }

  v49 = a5;
  v51 = v5;
  v25 = v5;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (swift_dynamicCast())
  {
    v26 = (*(v19 + 88))(v22, v18);
    if (v26 == *MEMORY[0x277D781A0])
    {

      (*(v19 + 96))(v22, v18);
      v28 = *v22;
      v27 = v22[1];
      sub_22C271AD4();
      v29 = v45;

      v30 = sub_22C272084();
      v31 = sub_22C2737A4();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v50[0] = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_22BE61C88(v43, v29, v50);
        *(v32 + 12) = 2080;
        v34 = sub_22BE61C88(v28, v27, v50);

        *(v32 + 14) = v34;
        _os_log_impl(&dword_22BE15000, v30, v31, "QueryableToolbox %s failed due to unrecoverable error: %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318AD180](v33, -1, -1);
        MEMORY[0x2318AD180](v32, -1, -1);
      }

      else
      {
      }

      (*(v46 + 8))(v15, v47);
      v42 = v44;
      sub_22BF1F294(*(a4 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v44);
      sub_22BF2B12C();
      sub_22BF249B8(v42);
      swift_beginAccess();
      *(a4 + 24) = 0;

LABEL_13:

      return v48;
    }

    if (v26 == *MEMORY[0x277D781A8])
    {

      sub_22C271AD4();
      v37 = v45;

      v38 = sub_22C272084();
      v39 = sub_22C2737C4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v50[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_22BE61C88(v43, v37, v50);
        _os_log_impl(&dword_22BE15000, v38, v39, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v40, 0xCu);
        sub_22BE26B64(v41);
        MEMORY[0x2318AD180](v41, -1, -1);
        MEMORY[0x2318AD180](v40, -1, -1);
      }

      (*(v46 + 8))(v17, v47);
      swift_beginAccess();
      *(a4 + 24) = 0;

      goto LABEL_13;
    }

    (*(v19 + 8))(v22, v18);
  }
}

void *sub_22BF2805C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v52 = a3;
  v49 = a2;
  v55 = a1;
  v11 = _s19SentinelFileManagerVMa();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C2720A4();
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v48 = &v48 - v18;
  v19 = sub_22C26E2F4();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a5 + 16);
  LOBYTE(v57[0]) = a6;
  sub_22BF4B988();
  if (v6)
  {
    v58 = v6;
    v25 = v6;
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (swift_dynamicCast())
    {
      v26 = v56;
      v27 = (*(v56 + 88))(v22, v19);
      if (v27 == *MEMORY[0x277D781A0])
      {

        (*(v26 + 96))(v22, v19);
        v28 = *v22;
        v29 = v22[1];
        v30 = v51;
        sub_22C271AD4();
        v31 = v52;

        v32 = sub_22C272084();
        v33 = sub_22C2737A4();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = v31;
          v37 = v35;
          v57[0] = v35;
          *v34 = 136315394;
          *(v34 + 4) = sub_22BE61C88(v49, v36, v57);
          *(v34 + 12) = 2080;
          v38 = sub_22BE61C88(v28, v29, v57);

          *(v34 + 14) = v38;
          _os_log_impl(&dword_22BE15000, v32, v33, "QueryableToolbox %s failed due to unrecoverable error: %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318AD180](v37, -1, -1);
          MEMORY[0x2318AD180](v34, -1, -1);

          (*(v53 + 8))(v51, v54);
        }

        else
        {

          (*(v53 + 8))(v30, v54);
        }

        v7 = v55;
        v45 = v50;
        sub_22BF1F294(*(a4 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v50);
        sub_22BF2B12C();
        sub_22BF249B8(v45);
        swift_beginAccess();
        *(a4 + 24) = 0;

        goto LABEL_13;
      }

      if (v27 == *MEMORY[0x277D781A8])
      {

        v39 = v48;
        sub_22C271AD4();
        v40 = v52;

        v41 = sub_22C272084();
        v42 = sub_22C2737C4();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v57[0] = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_22BE61C88(v49, v40, v57);
          _os_log_impl(&dword_22BE15000, v41, v42, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v43, 0xCu);
          sub_22BE26B64(v44);
          MEMORY[0x2318AD180](v44, -1, -1);
          MEMORY[0x2318AD180](v43, -1, -1);
        }

        (*(v53 + 8))(v39, v54);
        swift_beginAccess();
        *(a4 + 24) = 0;

        v7 = v55;
        goto LABEL_13;
      }

      v46 = *(v26 + 8);
      v7 = (v26 + 8);
      v46(v22, v19);
    }

    return v7;
  }

  v7 = v24;
  swift_beginAccess();
  *(a4 + 24) = 1;

LABEL_13:

  return v7;
}

uint64_t sub_22BF28648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a8;
  v69 = a7;
  v60 = a3;
  v57 = a2;
  v63 = a1;
  v65 = a4;
  v66 = a13;
  v15 = a9;
  v16 = _s19SentinelFileManagerVMa();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v58 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C2720A4();
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v59 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v56 = &v56 - v23;
  v24 = sub_22C26E2F4();
  v64 = *(v24 - 8);
  v25 = *(v64 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(a5 + 16);
  v29 = v68;
  v68 = a9;
  v30 = v67;
  sub_22BF47454(a6, v69, v29, a9, a10, a11, a12, v66, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  if (!v30)
  {
    v15 = v31;
    v44 = v65;
    swift_beginAccess();
    *(v44 + 24) = 1;

LABEL_17:

    return v15;
  }

  v71 = v30;
  v32 = v30;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (swift_dynamicCast())
  {
    v33 = v64;
    v34 = (*(v64 + 88))(v27, v24);
    if (v34 == *MEMORY[0x277D781A0])
    {

      (*(v33 + 96))(v27, v24);
      v35 = v27[1];
      v67 = *v27;
      v36 = v59;
      sub_22C271AD4();
      v37 = v60;

      v38 = sub_22C272084();
      v39 = sub_22C2737A4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = v37;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v70[0] = v42;
        *v41 = 136315394;
        *(v41 + 4) = sub_22BE61C88(v57, v40, v70);
        *(v41 + 12) = 2080;
        v43 = sub_22BE61C88(v67, v35, v70);

        *(v41 + 14) = v43;
        _os_log_impl(&dword_22BE15000, v38, v39, "QueryableToolbox %s failed due to unrecoverable error: %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318AD180](v42, -1, -1);
        MEMORY[0x2318AD180](v41, -1, -1);

        (*(v61 + 8))(v59, v62);
      }

      else
      {

        (*(v61 + 8))(v36, v62);
      }

      v51 = v65;
      v52 = v58;
      sub_22BF1F294(*(v65 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v58);
      sub_22BF2B12C();
      sub_22BF249B8(v52);
      swift_beginAccess();
      *(v51 + 24) = 0;
      v53 = v71;
      v15 = v63;
LABEL_16:

      goto LABEL_17;
    }

    if (v34 == *MEMORY[0x277D781A8])
    {

      v45 = v56;
      sub_22C271AD4();
      v46 = v60;

      v47 = sub_22C272084();
      v48 = sub_22C2737C4();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v70[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_22BE61C88(v57, v46, v70);
        _os_log_impl(&dword_22BE15000, v47, v48, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v49, 0xCu);
        sub_22BE26B64(v50);
        MEMORY[0x2318AD180](v50, -1, -1);
        MEMORY[0x2318AD180](v49, -1, -1);

        (*(v61 + 8))(v56, v62);
      }

      else
      {

        (*(v61 + 8))(v45, v62);
      }

      v15 = v63;
      v54 = v65;
      swift_beginAccess();
      *(v54 + 24) = 0;
      v53 = v71;
      goto LABEL_16;
    }

    (*(v33 + 8))(v27, v24);
  }

  return v15;
}

uint64_t sub_22BF28CA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v65 = a8;
  v67 = a7;
  v63 = a3;
  v64 = a4;
  v56 = a2;
  v61 = a1;
  v12 = _s19SentinelFileManagerVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C2720A4();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v55 - v19;
  v20 = sub_22C26E2F4();
  v62 = *(v20 - 8);
  v21 = *(v62 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a5[2];
  v25 = v66;
  sub_22BF47D78();
  if (v25)
  {
    v66 = a5;
    v69 = v25;
    v27 = v25;
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (swift_dynamicCast())
    {
      v28 = v62;
      v29 = (*(v62 + 88))(v23, v20);
      if (v29 == *MEMORY[0x277D781A0])
      {

        (*(v28 + 96))(v23, v20);
        v31 = *v23;
        v30 = v23[1];
        v32 = v57;
        sub_22C271AD4();
        v33 = v63;

        v34 = sub_22C272084();
        v35 = sub_22C2737A4();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v38 = v33;
          v39 = v37;
          v68[0] = v37;
          *v36 = 136315394;
          *(v36 + 4) = sub_22BE61C88(v56, v38, v68);
          *(v36 + 12) = 2080;
          v40 = sub_22BE61C88(v31, v30, v68);

          *(v36 + 14) = v40;
          _os_log_impl(&dword_22BE15000, v34, v35, "QueryableToolbox %s failed due to unrecoverable error: %s", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318AD180](v39, -1, -1);
          MEMORY[0x2318AD180](v36, -1, -1);
        }

        else
        {
        }

        (*(v59 + 8))(v32, v60);
        v50 = v64;
        v51 = v58;
        sub_22BF1F294(*(v64 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v58);
        sub_22BF2B12C();
        sub_22BF249B8(v51);
        swift_beginAccess();
        *(v50 + 24) = 0;
        v52 = v69;
        a10 = v61;

LABEL_13:

        goto LABEL_14;
      }

      v42 = v63;
      if (v29 == *MEMORY[0x277D781A8])
      {

        v43 = v55;
        sub_22C271AD4();

        v44 = sub_22C272084();
        v45 = sub_22C2737C4();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v68[0] = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_22BE61C88(v56, v42, v68);
          _os_log_impl(&dword_22BE15000, v44, v45, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v46, 0xCu);
          sub_22BE26B64(v47);
          MEMORY[0x2318AD180](v47, -1, -1);
          MEMORY[0x2318AD180](v46, -1, -1);
        }

        (*(v59 + 8))(v43, v60);
        a10 = v61;
        v48 = v64;
        swift_beginAccess();
        *(v48 + 24) = 0;
        v49 = v69;

        goto LABEL_13;
      }

      v53 = *(v28 + 8);
      a10 = v28 + 8;
      v53(v23, v20);
    }

    return a10;
  }

  a10 = v26;
  v41 = v64;
  swift_beginAccess();
  *(v41 + 24) = 1;

LABEL_14:

  return a10;
}

void sub_22BF292C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_22BE19130();
  v91 = v24;
  v92 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v89 = v31;
  v90 = v32;
  v82 = v33;
  v87 = v34;
  v35 = _s19SentinelFileManagerVMa();
  v36 = sub_22BE19448(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE179EC();
  v83 = v40 - v39;
  sub_22C2720A4();
  sub_22BE17C68();
  v85 = v42;
  v86 = v41;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v41);
  v84 = &v80 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v81 = &v80 - v47;
  v48 = sub_22C26E2F4();
  sub_22BE17C68();
  v88 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE179EC();
  v55 = (v54 - v53);
  v56 = *(v30 + 16);
  v57 = v92;
  a23(v28, v26, v91, a21, a22);
  if (!v57)
  {
    v70 = v90;
    swift_beginAccess();
    *(v70 + 24) = 1;

LABEL_17:

    goto LABEL_18;
  }

  v58 = v57;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (swift_dynamicCast())
  {
    v59 = v88;
    v60 = (*(v88 + 88))(v55, v48);
    if (v60 == *MEMORY[0x277D781A0])
    {

      (*(v59 + 96))(v55, v48);
      v61 = v55[1];
      v92 = *v55;
      v62 = v84;
      sub_22C271AD4();
      v63 = v89;

      v64 = sub_22C272084();
      v65 = sub_22C2737A4();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = v63;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v88 = v26;
        v93[0] = v68;
        *v67 = 136315394;
        *(v67 + 4) = sub_22BE61C88(v82, v66, v93);
        *(v67 + 12) = 2080;
        v69 = sub_22BE61C88(v92, v61, v93);

        *(v67 + 14) = v69;
        _os_log_impl(&dword_22BE15000, v64, v65, "QueryableToolbox %s failed due to unrecoverable error: %s", v67, 0x16u);
        swift_arrayDestroy();
        sub_22BE183C8();
        sub_22BE183C8();

        (*(v85 + 8))(v84, v86);
      }

      else
      {

        (*(v85 + 8))(v62, v86);
      }

      v77 = v90;
      v78 = v83;
      sub_22BF1F294(*(v90 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v83);
      sub_22BF2B12C();
      sub_22BF249B8(v78);
      sub_22BE189D8();
      *(v77 + 24) = 0;
LABEL_16:

      goto LABEL_17;
    }

    v71 = v89;
    if (v60 == *MEMORY[0x277D781A8])
    {

      v72 = v81;
      sub_22C271AD4();

      v73 = sub_22C272084();
      v74 = sub_22C2737C4();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v93[0] = v76;
        *v75 = 136315138;
        *(v75 + 4) = sub_22BE61C88(v82, v71, v93);
        _os_log_impl(&dword_22BE15000, v73, v74, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v75, 0xCu);
        sub_22BE26B64(v76);
        sub_22BE183C8();
        sub_22BE183C8();

        (*(v85 + 8))(v81, v86);
      }

      else
      {

        (*(v85 + 8))(v72, v86);
      }

      v79 = v90;
      sub_22BE189D8();
      *(v79 + 24) = 0;
      goto LABEL_16;
    }

    (*(v59 + 8))(v55, v48);
  }

LABEL_18:
  sub_22BE18478();
}

void sub_22BF2988C(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v57 = a4;
  v54 = a3;
  v60 = a2;
  v9 = _s19SentinelFileManagerVMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C2720A4();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = &v50 - v16;
  v17 = sub_22C26E2F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_22BE5CE4C(&qword_27D90B290, &qword_22C28C8F0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v50 - v25;
  a1(v24);
  if (!v6)
  {
    swift_beginAccess();
    *(v5 + 24) = 1;
    sub_22BF2AF6C(v26, a5);
    return;
  }

  v51 = v5;
  v52 = a5;
  v62 = v6;
  v27 = v6;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (swift_dynamicCast())
  {
    v28 = (*(v18 + 88))(v21, v17);
    if (v28 == *MEMORY[0x277D781A0])
    {

      (*(v18 + 96))(v21, v17);
      v30 = *v21;
      v29 = v21[1];
      v31 = v55;
      sub_22C271AD4();
      v32 = v57;

      v33 = sub_22C272084();
      v34 = sub_22C2737A4();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v61[0] = v36;
        *v35 = 136315394;
        *(v35 + 4) = sub_22BE61C88(v54, v32, v61);
        *(v35 + 12) = 2080;
        v37 = sub_22BE61C88(v30, v29, v61);

        *(v35 + 14) = v37;
        _os_log_impl(&dword_22BE15000, v33, v34, "QueryableToolbox %s failed due to unrecoverable error: %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318AD180](v36, -1, -1);
        MEMORY[0x2318AD180](v35, -1, -1);
      }

      else
      {
      }

      (*(v58 + 8))(v31, v59);
      v48 = v51;
      v49 = v56;
      sub_22BF1F294(*(v51 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v56);
      sub_22BF2B12C();
      sub_22BF249B8(v49);
      swift_beginAccess();
      *(v48 + 24) = 0;
      v46 = v60;
      v47 = v52;
LABEL_13:
      sub_22BF2AF04(v46, v47, &qword_27D90B290, &qword_22C28C8F0);

      return;
    }

    if (v28 == *MEMORY[0x277D781A8])
    {

      v38 = v53;
      sub_22C271AD4();
      v39 = v57;

      v40 = sub_22C272084();
      v41 = sub_22C2737C4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v61[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_22BE61C88(v54, v39, v61);
        _os_log_impl(&dword_22BE15000, v40, v41, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v42, 0xCu);
        sub_22BE26B64(v43);
        MEMORY[0x2318AD180](v43, -1, -1);
        MEMORY[0x2318AD180](v42, -1, -1);
      }

      (*(v58 + 8))(v38, v59);
      v45 = v51;
      v44 = v52;
      swift_beginAccess();
      *(v45 + 24) = 0;
      v46 = v60;
      v47 = v44;
      goto LABEL_13;
    }

    (*(v18 + 8))(v21, v17);
  }
}

void *sub_22BF29E94(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v53 = a3;
  v50 = a2;
  v56 = a1;
  v11 = _s19SentinelFileManagerVMa();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C2720A4();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v52 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v49 - v18;
  v19 = sub_22C26E2F4();
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a5 + 16);
  LOBYTE(v58[0]) = a6;
  sub_22BF4C2B0();
  if (v6)
  {
    v59 = v6;
    v25 = v6;
    sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
    if (swift_dynamicCast())
    {
      v26 = v57;
      v27 = (*(v57 + 88))(v22, v19);
      if (v27 == *MEMORY[0x277D781A0])
      {

        (*(v26 + 96))(v22, v19);
        v28 = *v22;
        v29 = v22[1];
        v30 = v52;
        sub_22C271AD4();
        v31 = v53;

        v32 = sub_22C272084();
        v33 = sub_22C2737A4();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = v31;
          v37 = v35;
          v58[0] = v35;
          *v34 = 136315394;
          *(v34 + 4) = sub_22BE61C88(v50, v36, v58);
          *(v34 + 12) = 2080;
          v38 = sub_22BE61C88(v28, v29, v58);

          *(v34 + 14) = v38;
          _os_log_impl(&dword_22BE15000, v32, v33, "QueryableToolbox %s failed due to unrecoverable error: %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318AD180](v37, -1, -1);
          MEMORY[0x2318AD180](v34, -1, -1);

          (*(v54 + 8))(v52, v55);
        }

        else
        {

          (*(v54 + 8))(v30, v55);
        }

        v45 = v51;
        sub_22BF1F294(*(a4 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v51);
        sub_22BF2B12C();
        sub_22BF249B8(v45);
LABEL_13:
        swift_beginAccess();
        *(a4 + 24) = 0;
        v46 = v59;
        v7 = v56;

        goto LABEL_14;
      }

      if (v27 == *MEMORY[0x277D781A8])
      {

        v39 = v49;
        sub_22C271AD4();
        v40 = v53;

        v41 = sub_22C272084();
        v42 = sub_22C2737C4();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v58[0] = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_22BE61C88(v50, v40, v58);
          _os_log_impl(&dword_22BE15000, v41, v42, "QueryableToolbox %s: read only connection cannot create database. Falling back to empty results.", v43, 0xCu);
          sub_22BE26B64(v44);
          MEMORY[0x2318AD180](v44, -1, -1);
          MEMORY[0x2318AD180](v43, -1, -1);
        }

        (*(v54 + 8))(v39, v55);
        goto LABEL_13;
      }

      v47 = *(v26 + 8);
      v7 = (v26 + 8);
      v47(v22, v19);
    }

    return v7;
  }

  v7 = v24;
  swift_beginAccess();
  *(a4 + 24) = 1;

LABEL_14:

  return v7;
}

uint64_t QueryableToolbox.search(query:numOfUniqueTools:bundleIDs:clientIdentifier:deviceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_22BE1BF08();
  return sub_22BF28648(v16, v17, v18, v19, v20, a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t QueryableToolbox.search(query:numOfUniqueTools:clientIdentifier:deviceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_22BE1BF08();
  return sub_22BF28CA0(v10, v11, v12, v13, v14, a1, a2, a3, a4, a5);
}

uint64_t QueryableToolbox.toolMapping(customKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D90B290, &qword_22C28C8F0);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  v14 = v2;
  v15 = a1;
  v11 = type metadata accessor for ToolboxCustomKeyResult(0);
  sub_22BE19DC4(v10, 1, 1, v11);
  sub_22BF2988C(sub_22BF2AE60, v10, 0xD000000000000017, 0x800000022C2D41B0, a2);
  return sub_22BE23388(v10, &qword_27D90B290, &qword_22C28C8F0);
}

void *QueryableToolbox.allowListToolIds()()
{
  sub_22C2720A4();
  sub_22BE17C68();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v7 = *(v0 + 16);
  v8 = v7[7];
  v9 = v7[8];
  v10 = sub_22BE1BD3C(v7 + 4, v8);
  (*(v9 + 96))(v22, v8, v9);
  if (!v1)
  {
    v11 = v22[0];
    if (v22[0])
    {
      v12 = v22[1];

      sub_22BF2A9E0(v13, v12);
      v10 = v14;
      sub_22BF2AE88(v11);
    }

    else
    {
      sub_22C271AD4();
      v15 = sub_22C272084();
      v16 = sub_22C2737A4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_22BE15000, v15, v16, "No Allowlist found for Toolbox", v17, 2u);
        sub_22BE183C8();
      }

      v18 = *(v3 + 8);
      v19 = sub_22BE1B328();
      v20(v19);
      return MEMORY[0x277D84FA0];
    }
  }

  return v10;
}

void sub_22BF2A9E0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v23[2] = a2;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  sub_22BE185B4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v3;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];

      sub_22C1A7B60(v23, v15, v16, v17, v18, v19, v20, v21, v22, v23[0]);
    }

    while (v9);
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(v5 + 8 * v12);
    ++v3;
    if (v9)
    {
      v3 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_22BF2AAD0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v14[1] = a2;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  sub_22BE185B4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v3;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_22C1A8734(v14, *(*(a1 + 48) + ((v12 << 9) | (8 * v13))));
    }

    while (v9);
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(v5 + 8 * v12);
    ++v3;
    if (v9)
    {
      v3 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void *QueryableToolbox.listTools(toolType:clientIdentifier:)(char *a1)
{
  v1 = *a1;

  sub_22BE1BF08();
  return sub_22BF29E94(v2, v3, v4, v5, v6, v1);
}

uint64_t sub_22BF2ACA4(uint64_t (*a1)(uint64_t))
{
  v3 = _s19SentinelFileManagerVMa();
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22BF1F294(*(v1 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager, v8 - v7);
  v11 = a1(v10);
  sub_22BF249B8(v9);
  return v11;
}

uint64_t QueryableToolbox.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t QueryableToolbox.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_22BF2ADF0(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C273024();

  return v3;
}

uint64_t sub_22BF2AE88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22BF2AF04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BE5CE4C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22BF2AF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B290, &qword_22C28C8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s19SentinelFileManagerVMa()
{
  result = qword_281079B80;
  if (!qword_281079B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BF2B050()
{
  result = sub_22C26DF64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BF2B0CC(uint64_t a1, uint64_t a2)
{
  sub_22BF2D478(a1, a2);

  return 0;
}

void sub_22BF2B20C()
{
  if (qword_281079B90 != -1)
  {
    sub_22BE18DB0();
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BE1BA64();
  sub_22BF6B0F4();
  if (&dword_281079B98)
  {

    os_unfair_lock_unlock(&dword_281079B98);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(&dword_281079B98);
  }
}

void sub_22BF2B4F4()
{
  if (qword_281079B90 != -1)
  {
    sub_22BE18DB0();
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BE1A27C();
  os_unfair_lock_unlock(&dword_281079B98);
}

uint64_t sub_22BF2B5D4()
{
  if (qword_281079B90 != -1)
  {
    sub_22BE18DB0();
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BE1BA64();
  sub_22BF6B0F4();
  if (&dword_281079B98)
  {

    os_unfair_lock_unlock(&dword_281079B98);
    return 0;
  }

  else
  {
    os_unfair_lock_unlock(&dword_281079B98);
    return v1;
  }
}

uint64_t sub_22BF2B688()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2B76C()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2B850()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2B934()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2BA18()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2BAFC()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2BBE0()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2BCC4()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2BDA8()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

uint64_t sub_22BF2BE8C()
{
  v0 = sub_22BE3E58C();
  v1 = sub_22BE1BF18(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE17CBC();
  v4 = _s19SentinelFileManagerVMa();
  sub_22BE1923C(v4);
  sub_22BE3B02C(v5);
  v6 = *MEMORY[0x277CC91D8];
  v7 = sub_22BE1A6E4();
  v8(v7);
  sub_22BE699D0();
  sub_22BE2313C();
  v9 = sub_22BE1B3D4();
  return v10(v9);
}

void sub_22BF2BFF4()
{
  if (qword_281079B90 != -1)
  {
    sub_22BE18DB0();
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BE1A27C();
  os_unfair_lock_unlock(&dword_281079B98);
}

uint64_t sub_22BF2C074@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_22C26DF64();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v13 = v12 - v11;
  a1();
  v14 = sub_22C26DFA4();
  if (v2)
  {
    return (*(v8 + 8))(v13, v5);
  }

  v17 = v14;
  v18 = v15;
  result = (*(v8 + 8))(v13, v5);
  *a2 = v17;
  a2[1] = v18;
  return result;
}

uint64_t sub_22BF2C238@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C273064();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22C26DF64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BF2BDA8();
  sub_22C273054();
  v10 = sub_22C272FE4();
  if (v1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v10;
  v14 = v11;
  (*(v6 + 8))(v9, v5);
  result = sub_22BF2B0CC(v13, v14);
  *a1 = result;
  *(a1 + 8) = v15 & 1;
  return result;
}

void sub_22BF2C3B8()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_22C26DF14();
  v1 = sub_22C272FF4();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_22C26DEE4();
    v8[0] = 0;
    v4 = [v0 removeItemAtURL:v3 error:v8];

    if (v4)
    {
      v5 = v8[0];
    }

    else
    {
      v6 = v8[0];
      sub_22C26DE84();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22BF2C4E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_22C26DF64();
  v8 = sub_22BE1BF18(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17CBC();
  a4();
  sub_22C26E044();
  return (*(v10 + 8))(v5, v4);
}

uint64_t sub_22BF2C5CC()
{
  v0 = sub_22C273064();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C26DF64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C26E074();
  v12[0] = sub_22C273664();
  v12[1] = v10;
  sub_22BF2BDA8();
  sub_22C273054();
  sub_22BE699D0();
  sub_22C273944();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_22BF2C790@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22C273064();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22C26DF64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BF2BBE0();
  sub_22C273054();
  v10 = sub_22C272FE4();
  if (v1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v10;
  v14 = v11;
  result = (*(v6 + 8))(v9, v5);
  *a1 = v13;
  a1[1] = v14;
  return result;
}

uint64_t sub_22BF2C8FC(uint64_t a1, void (*a2)(void))
{
  v5 = sub_22C26DF64();
  v6 = sub_22BE1BF18(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  a2();
  sub_22BF2C3B8();
  return (*(v8 + 8))(v3, v2);
}

void sub_22BF2C9C8(uint64_t a1, void (*a2)(void))
{
  v3 = sub_22C26DF64();
  v4 = sub_22BE179D8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = [objc_opt_self() defaultManager];
  a2();
  sub_22C26DF14();
  (*(v6 + 8))(v11, v3);
  v13 = sub_22C272FF4();

  [v12 createFileAtPath:v13 contents:0 attributes:0];
}

void sub_22BF2CB0C(_BYTE *a1@<X8>)
{
  v2 = sub_22C26DF64();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = [objc_opt_self() defaultManager];
  sub_22BF2BE8C();
  sub_22C26DF14();
  (*(v5 + 8))(v10, v2);
  v12 = sub_22C272FF4();

  LOBYTE(v2) = [v11 fileExistsAtPath_];

  *a1 = v2;
}

void sub_22BF2CC4C()
{
  v1 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22C26DF64();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  v50 = _s19SentinelFileManagerVMa();
  v11 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = sub_22C2720A4();
  v16 = sub_22BE179D8(v15);
  v47 = v17;
  v48 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v22 = v21 - v20;
  sub_22C271AD4();
  sub_22BF1F294(v0, v14);
  v23 = sub_22C272084();
  v24 = sub_22C2737C4();
  v49 = v2;
  if (os_log_type_enabled(v23, v24))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52[0] = v46;
    *v45 = 136315138;
    v25 = *(v50 + 20);
    sub_22BF2D58C(&qword_28107F350, MEMORY[0x277CC9260]);
    v26 = sub_22C273FD4();
    v27 = v1;
    v29 = v28;
    sub_22BF249B8(v14);
    v30 = sub_22BE61C88(v26, v29, v52);
    v1 = v27;

    *(v45 + 4) = v30;
    _os_log_impl(&dword_22BE15000, v23, v24, "Recovering from corrupted database at %s", v45, 0xCu);
    sub_22BE26B64(v46);
    MEMORY[0x2318AD180](v46, -1, -1);
    MEMORY[0x2318AD180](v45, -1, -1);
  }

  else
  {

    sub_22BF249B8(v14);
  }

  (*(v47 + 8))(v22, v48);
  v31 = [objc_opt_self() defaultManager];
  v32 = v1 + *(v50 + 20);
  v33 = sub_22C26DEE4();
  v51 = v31;
  v52[0] = 0;
  v34 = [v31 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:0 error:v52];

  v35 = v52[0];
  if (v34)
  {
    v36 = sub_22C273494();
    v37 = v35;

    v38 = 0;
    v39 = *(v36 + 16);
    while (1)
    {
      if (v39 == v38)
      {

        goto LABEL_14;
      }

      if (v38 >= *(v36 + 16))
      {
        __break(1u);
      }

      (*(v5 + 16))(v10, v36 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v38, v49);
      v40 = sub_22C26DEE4();
      (*(v5 + 8))(v10, v49);
      v52[0] = 0;
      v41 = [v51 removeItemAtURL:v40 error:v52];

      v42 = v52[0];
      if (!v41)
      {
        break;
      }

      ++v38;
    }

    v43 = v42;
  }

  else
  {
    v43 = v52[0];
  }

  sub_22C26DE84();

  swift_willThrow();
LABEL_14:
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22BF2D0D8@<X0>(uint64_t a1@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = sub_22C26DF64();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v10 = v9 - v8;
  sub_22BF2BCC4();
  sub_22C26DF14();
  (*(v5 + 8))(v10, v2);
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  v13 = sub_22C272FF4();
  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    v15 = [v11 defaultManager];
    v16 = sub_22C272FF4();

    *&v34 = 0;
    v17 = [v15 attributesOfItemAtPath:v16 error:&v34];

    v18 = v34;
    if (v17)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_22BF2D58C(&qword_28106DB38, type metadata accessor for FileAttributeKey);
      v19 = sub_22C272E54();
      v20 = v18;

      v21 = *MEMORY[0x277CCA150];
      sub_22BF16DE8(v19, &v34);

      if (v35)
      {
        v22 = sub_22C26E164();
        v23 = swift_dynamicCast() ^ 1;
        v24 = a1;
        v25 = 1;
        v26 = v22;
      }

      else
      {
        sub_22BF2D5D4(&v34);
        sub_22C26E164();
        v24 = sub_22BE3C838();
      }

      result = sub_22BE19DC4(v24, v23, v25, v26);
    }

    else
    {
      v32 = v34;
      sub_22C26DE84();

      result = swift_willThrow();
    }
  }

  else
  {
    sub_22C26E164();
    v27 = sub_22BE3C838();
    sub_22BE19DC4(v27, v28, v29, v30);
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22BF2D40C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_22BF2D478(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_22C273A64();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_22BF2D58C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BF2D5D4(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B260, &qword_22C28C718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BF2DAA4(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v5 = sub_22BEF4C64(0, a1);
    v7 = v6;
    v8 = *(a2 + 32);
    sub_22BEA7680(v8);
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v8;
}

uint64_t sub_22BF2DB0C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    sub_22BE38368();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  }

  v8 = sub_22BE36128();

  return sub_22BE19DC4(v8, v9, v10, v11);
}

uint64_t sub_22BF2DBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C259378();
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_22BF393F4(result, v5, 0, a1);
    v7 = 0;
  }

  v8 = type metadata accessor for ToolboxCustomKeyResult(0);

  return sub_22BE19DC4(a2, v7, 1, v8);
}

unint64_t sub_22BF2DC40(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_22BE18378();
    sub_22C26CBFC();
    if ((v2 & 0x1000000000000000) != 0)
    {
      v9 = sub_22C273A94();
    }

    else
    {
      v6 = v5 >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v19[0] = v3;
        v19[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          sub_22BF394BC();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v7 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_22C273B44();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          sub_22BF394BC();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v4 == 0;
  return v9 | ((v4 == 0) << 32);
}

uint64_t sub_22BF2DDC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = sub_22BE5CE4C(a2, a3);
  if (v3)
  {
    v5 = *(*(v4 - 8) + 80);
    sub_22BE19E14();
    sub_22BE22868();
  }

  v6 = sub_22BE36128();

  return sub_22BE19DC4(v6, v7, v8, v9);
}

uint64_t sub_22BF2DED0(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = a2(0);
  if (v2)
  {
    v4 = *(*(v3 - 8) + 80);
    sub_22BE19E14();
    sub_22BF386AC();
  }

  v5 = sub_22BE36128();

  return sub_22BE19DC4(v5, v6, v7, v8);
}

uint64_t sub_22BF2DF7C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_22C2732A4();
  }

  else
  {
    return 0;
  }
}

void sub_22BF2DFC4()
{
  sub_22BE19130();
  v2 = v1;
  v31 = v3;
  v32 = v4;
  v34 = sub_22C272224();
  v5 = sub_22BE179D8(v34);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  v28 = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = 0;
  v33 = *(v2 + 16);
  v30 = v7 + 16;
  v15 = (v7 + 8);
  v27 = (v7 + 32);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v33 == v14)
    {

LABEL_15:
      sub_22BE18478();
      return;
    }

    if (v14 >= *(v2 + 16))
    {
      break;
    }

    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = *(v7 + 72);
    v18 = v2;
    (*(v7 + 16))(v13, v2 + v16 + v17 * v14, v34);
    v19 = v31(v13);
    if (v0)
    {
      (*v15)(v13, v34);

      goto LABEL_15;
    }

    if (v19)
    {
      v26 = *v27;
      v26(v28, v13, v34);
      v20 = v29;
      v35 = v29;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v21 = v20;
      }

      else
      {
        sub_22BF394EC(*(v20 + 16));
        v21 = v35;
      }

      v2 = v18;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v29 = v23 + 1;
        v25 = v23;
        sub_22BE711C4(v22 > 1, v23 + 1, 1);
        v24 = v29;
        v23 = v25;
        v2 = v18;
        v21 = v35;
      }

      ++v14;
      *(v21 + 16) = v24;
      v29 = v21;
      v26(v21 + v16 + v23 * v17, v28, v34);
    }

    else
    {
      (*v15)(v13, v34);
      ++v14;
    }
  }

  __break(1u);
}

BOOL sub_22BF2E274()
{
  v1 = sub_22BE5CE4C(&qword_27D90B2C0, &qword_22C28C980);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_22C272D44();
  sub_22BE19DC4(v4, 1, 1, v5);
  v6 = *(v0 + 16);
  v7 = sub_22C272BD4();
  sub_22BE33928(v4, &qword_27D90B2C0, &qword_22C28C980);
  v8 = *(v7 + 16);

  return v8 != 0;
}

Swift::Bool __swiftcall AssistantSchemaProviding.contains(schemaKind:)(Swift::String schemaKind)
{
  v3 = v2;
  v4 = v1;
  object = schemaKind._object;
  countAndFlagsBits = schemaKind._countAndFlagsBits;
  v7 = sub_22BE1B18C();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  sub_22C272D44();
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v18);
  v19 = (*(v3 + 32))(countAndFlagsBits, object, v14, v4, v3);
  sub_22BE33928(v14, &qword_27D90B2C0, &qword_22C28C980);
  v20 = *(v19 + 16);

  return v20 != 0;
}

void ToolDefinition.isAvailableForToolboxIndexing.getter()
{
  sub_22BE19460();
  v1 = sub_22C2729F4();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v7);
  sub_22BE181E4();
  v8 = sub_22C272144();
  v24 = *(v8 + 16);
  if (v24)
  {
    v9 = 0;
    v10 = *(v4 + 80);
    sub_22BE19E14();
    v23 = v8 + v11;
    v22 = *MEMORY[0x277D72FD8];
    v12 = (v4 + 8);
    while (v9 < *(v8 + 16))
    {
      v13 = *(v4 + 16);
      v13(v0, v23 + *(v4 + 72) * v9, v1);
      v14 = sub_22BE2590C();
      (v13)(v14);
      v15 = *(v4 + 88);
      v16 = sub_22BE1AB74();
      if (v17(v16) == v22)
      {
        v18 = sub_22C2729E4();
        v19 = *v12;
        (*v12)(v0, v1);
        if ((v18 & 1) == 0)
        {

          v21 = sub_22BE1AB74();
          v19(v21);
          goto LABEL_10;
        }
      }

      else
      {
        v19 = *v12;
        (*v12)(v0, v1);
      }

      ++v9;
      v20 = sub_22BE1AB74();
      v19(v20);
      if (v24 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

LABEL_10:
    sub_22BE1AABC();
  }
}

uint64_t sub_22BF2E644()
{
  v0 = sub_22C26E244();
  sub_22BE952A4(v0, qword_27D90B298);
  v1 = sub_22BE19454();
  sub_22BE199F4(v1, v2);
  return sub_22C26E1E4();
}

uint64_t static Toolbox.staticDataLocale.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D906378 != -1)
  {
    sub_22BE185D0();
    swift_once();
  }

  v2 = sub_22C26E244();
  sub_22BE199F4(v2, qword_27D90B298);
  sub_22BE38368();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t Toolbox.clientActions.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Toolbox.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C2724D4();
  result = sub_22C2724C4();
  if (!v1)
  {
    v10[3] = v3;
    v10[4] = &protocol witness table for ToolDatabase;
    v10[0] = result;
    if (qword_281072040 != -1)
    {
      swift_once();
    }

    v5 = sub_22C271C14();
    sub_22BE199F4(v5, qword_28108A218);
    sub_22BE23C8C();
    v6 = type metadata accessor for SharedAssistantSchemaProvider();
    sub_22BE199AC(qword_281076450, type metadata accessor for SharedAssistantSchemaProvider);
    v9[3] = v6;
    v9[4] = &protocol witness table for SharedAssistantSchemaProvider;
    v9[0] = sub_22C271BD4();
    type metadata accessor for ToolboxCache();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    sub_22BE40C08(v7, MEMORY[0x277D84F98]);
    sub_22BE26B00(v10, a1 + 16);
    *(a1 + 56) = MEMORY[0x277D84F90];
    sub_22BE26B00(v9, a1 + 64);
    sub_22BE5CE4C(&qword_27D90B2C8, &qword_22C28C988);
    v8 = swift_allocObject();
    sub_22BE256D4(v8);
    sub_22BE26B64(v9);
    result = sub_22BE26B64(v10);
    *(a1 + 8) = v8;
  }

  return result;
}

double sub_22BF2E964@<D0>(_OWORD *a1@<X8>)
{
  v76 = a1;
  v1 = sub_22C2720A4();
  v74 = *(v1 - 8);
  v75 = v1;
  v2 = *(v74 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v67 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v73 = (v61 - v5);
  v6 = sub_22C26DEA4();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9 - 8);
  v69 = v61 - v11;
  v70 = sub_22C26DF64();
  v66 = *(v70 - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x28223BE20](v70);
  v61[1] = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = v61 - v16;
  MEMORY[0x28223BE20](v15);
  v68 = v61 - v17;
  v18 = sub_22C26E514();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C26EA04();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22BE5CE4C(&qword_27D90B200, &qword_22C28C460);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28 - 8);
  v31 = v61 - v30;
  v32 = sub_22C270264();
  v71 = *(v32 - 8);
  v33 = *(v71 + 64);
  MEMORY[0x28223BE20](v32);
  v72 = v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QueryableToolbox();
  static QueryableToolbox.getLanguageCode()();
  if (v35)
  {
    sub_22C26E9F4();
    (*(v19 + 104))(v22, *MEMORY[0x277D1C238], v18);
    sub_22C26E9E4();

    (*(v19 + 8))(v22, v18);
    (*(v24 + 8))(v27, v23);
    if (sub_22BE1AEA8(v31, 1, v32) == 1)
    {
      v36 = &qword_27D90B200;
      v37 = &qword_22C28C460;
      v38 = v31;
    }

    else
    {
      v40 = v71;
      v39 = v72;
      (*(v71 + 32))(v72, v31, v32);
      v41 = v69;
      sub_22C270244();
      v42 = v70;
      if (sub_22BE1AEA8(v41, 1, v70) != 1)
      {
        *&v77 = 0xD000000000000019;
        *(&v77 + 1) = 0x800000022C2D4470;
        v50 = v63;
        v49 = v64;
        v51 = v65;
        (*(v64 + 104))(v63, *MEMORY[0x277CC91D8], v65);
        sub_22BE699D0();
        v52 = v62;
        sub_22C26DF54();
        (*(v49 + 8))(v50, v51);
        v53 = v66;
        v73 = *(v66 + 8);
        v69 = (v66 + 8);
        v73(v41, v42);
        v54 = v68;
        (*(v53 + 32))(v68, v52, v42);
        v55 = sub_22C26DFA4();
        v57 = v56;
        v58 = sub_22C26DDB4();
        v59 = *(v58 + 48);
        v60 = *(v58 + 52);
        swift_allocObject();
        sub_22C26DDA4();
        sub_22BF393A0();
        sub_22C26DD94();

        sub_22BE29DD4(v55, v57);
        v73(v54, v42);
        (*(v40 + 8))(v72, v32);
        result = *&v77;
        *v76 = v77;
        return result;
      }

      (*(v40 + 8))(v39, v32);
      v36 = &qword_27D908088;
      v37 = &qword_22C278EC0;
      v38 = v41;
    }

    sub_22BE33928(v38, v36, v37);
  }

  v43 = v73;
  sub_22C271AD4();
  v44 = sub_22C272084();
  v45 = sub_22C2737A4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_22BE15000, v44, v45, "Tool Retrieval Deny List not found", v46, 2u);
    MEMORY[0x2318AD180](v46, -1, -1);
  }

  (*(v74 + 8))(v43, v75);
  v48 = v76;
  *v76 = 0;
  *(v48 + 1) = 0;
  return result;
}

IntelligenceFlowPlannerSupport::ActionClass_optional __swiftcall Toolbox.actionClass(tool:)(IntelligenceFlowPlannerSupport::GlobalToolIdentifier *tool)
{
  v3 = v1;
  v4 = sub_22BE5CE4C(&qword_27D90B2D0, &unk_22C28C990);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for Toolbox.Entry(0);
  v11 = sub_22BE18000(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v14);
  sub_22BE26800();
  object = tool->toolId._object;
  representsBuiltInTool = tool->representsBuiltInTool;
  v20[1] = tool->toolId._countAndFlagsBits;
  v20[2] = object;
  deviceIdsId = tool->deviceIdsId;
  v22 = representsBuiltInTool;
  Toolbox.entry(tool:)();
  sub_22BE1AB5C(v9, 1, v10);
  if (v17)
  {
    result.value = sub_22BE33928(v9, &qword_27D90B2D0, &unk_22C28C990);
    EnumCaseMultiPayload = 4;
  }

  else
  {
    sub_22BF38654();
    sub_22BE1AB1C();
    sub_22BF38654();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result.value = sub_22BF36794();
  }

  *v3 = EnumCaseMultiPayload;
  return result;
}

void Toolbox.entry(tool:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v7 = sub_22BE5CE4C(&qword_27D90B2E0, &unk_22C28C9A0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v79 = v11;
  sub_22BE183BC();
  v78 = sub_22C272114();
  v12 = sub_22BE179D8(v78);
  v75 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE190A8(v16);
  v17 = sub_22BE5CE4C(&qword_27D90B2E8, &unk_22C28EBB0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v83 = v21;
  sub_22BE183BC();
  v84 = sub_22C272CA4();
  v22 = sub_22BE179D8(v84);
  v77 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v76 = v26;
  sub_22BE183BC();
  v27 = sub_22C272224();
  v28 = sub_22BE179D8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v33);
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v34);
  sub_22BE19490();
  v85 = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  v37 = 0;
  v86 = *v2;
  v87 = v2[1];
  v81 = v2[2];
  v82 = v2[3];
  v80 = *(v2 + 32);
  v38 = v0[7];
  v39 = *(v38 + 16);
  while (v39 != v37)
  {
    if (v37 >= *(v38 + 16))
    {
      __break(1u);
LABEL_22:
      sub_22BE185D0();
      swift_once();
      goto LABEL_20;
    }

    v40 = *(v30 + 80);
    sub_22BE19E14();
    v42 = v27;
    (*(v30 + 16))(v0, v38 + v41 + *(v30 + 72) * v37, v27);
    v44 = sub_22C2721D4() == v86 && v43 == v87;
    if (v44)
    {

LABEL_14:
      v46 = *(v30 + 32);
      (v46)(v85, v0, v42);
      v47 = sub_22BE1AB1C();
      v46(v47);
      v48 = sub_22BE27288();
      v46(v48);
      type metadata accessor for Toolbox.Entry(0);
      sub_22BE311A8();
      goto LABEL_15;
    }

    v45 = sub_22C274014();

    if (v45)
    {
      goto LABEL_14;
    }

    v27 = v42;
    (*(v30 + 8))(v0, v42);
    ++v37;
  }

  v38 = v27;

  AssistantSchemaIdentifier.init(id:)();
  sub_22BE1AB5C(v83, 1, v84);
  if (v44)
  {
    sub_22BE33928(v83, &qword_27D90B2E8, &unk_22C28EBB0);
    v37 = v82;
  }

  else
  {
    v52 = *(v77 + 32);
    v53 = sub_22BE25EFC();
    v54(v53);
    v55 = v0[11];
    v56 = v0[12];
    sub_22BE1BD3C(v0 + 8, v55);
    v57 = (*(v56 + 8))(v55, v56);
    sub_22BF16EA0(v57, v79);

    (*(v77 + 8))(v76, v84);
    sub_22BE1AB5C(v79, 1, v78);
    v37 = v82;
    if (!v58)
    {
      v46 = *(v75 + 32);
      (v46)(v74, v79, v78);
      v73 = sub_22BE1A8C4();
      v46(v73);
      type metadata accessor for Toolbox.Entry(0);
      sub_22BE311A8();
      goto LABEL_15;
    }

    sub_22BE33928(v79, &qword_27D90B2E0, &unk_22C28C9A0);
  }

  v59 = qword_27D906378;
  v39 = v87;

  if (v59 != -1)
  {
    goto LABEL_22;
  }

LABEL_20:
  v60 = sub_22C26E244();
  v61 = sub_22BE199F4(v60, qword_27D90B298);
  v88[0] = v86;
  v88[1] = v39;
  v88[2] = v81;
  v88[3] = v37;
  v89 = v80;
  Toolbox.subscript.getter(v88, v61, v62, v63, v64, v65, v66, v67, v74, v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75));

  sub_22BE187DC();
  sub_22BE19DC4(v68, v69, v70, v38);
  v46 = *(v30 + 32);
  v71 = sub_22BE1AB1C();
  v46(v71);
  v72 = sub_22BE27288();
  v46(v72);
  type metadata accessor for Toolbox.Entry(0);
  sub_22BE311A8();
LABEL_15:
  swift_storeEnumTagMultiPayload();
  sub_22BE187DC();
  sub_22BE19DC4(v49, v50, v51, v46);
  sub_22BE1AABC();
}

uint64_t Toolbox.entry(id:)()
{

  Toolbox.entry(tool:)();
}

void AssistantSchemaIdentifier.init(id:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22C273064();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v12 = v11 - v10;
  v13 = sub_22BE5CE4C(&qword_27D90B2E8, &unk_22C28EBB0);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v17);
  sub_22BE181E4();
  sub_22C273054();
  sub_22C273034();
  v19 = v18;

  (*(v7 + 8))(v12, v4);
  if (v19 >> 60 == 15)
  {
    v20 = sub_22C272CA4();
    sub_22BE1A140();
    sub_22BE19DC4(v21, v22, v23, v20);
  }

  else
  {
    v24 = sub_22BE196A8();
    sub_22BE29D7C(v24, v25);
    if (qword_27D906388 != -1)
    {
      swift_once();
    }

    v20 = sub_22C272CA4();
    sub_22BE3D470();
    sub_22BE199AC(v26, v27);
    sub_22BE3EA80();
    sub_22C26DB54();
    sub_22BE19DC4(v1, 0, 1, v20);
    v28 = sub_22BE196A8();
    sub_22BF158B4(v28, v29);
    v30 = sub_22BE196A8();
    sub_22BF158B4(v30, v31);
  }

  sub_22BEBFD18();
  sub_22C272CA4();
  sub_22BE1AB5C(v0, 1, v20);
  if (v32)
  {
    sub_22BE33928(v0, &qword_27D90B2E8, &unk_22C28EBB0);
    v33 = 1;
  }

  else
  {
    (*(*(v20 - 8) + 32))(v3, v0, v20);
    v33 = 0;
  }

  sub_22BE19DC4(v3, v33, 1, v20);
  sub_22BE1AABC();
}

void Toolbox.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  v138 = v17;
  v139 = v15;
  v141 = v18;
  v142 = v14;
  sub_22BE17BC4();
  v19 = sub_22C2720A4();
  v20 = sub_22BE179D8(v19);
  v132 = v21;
  v133 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v24);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  sub_22BE190A8(v26);
  v27 = sub_22BE5CE4C(&qword_27D90B2F0, &unk_22C28C9B0);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A174();
  v136 = v31;
  v135 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  v32 = sub_22BE18000(v135);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE19E94();
  v134 = v37;
  sub_22BE183BC();
  v38 = sub_22C272224();
  v39 = sub_22BE179D8(v38);
  v145 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17B98();
  v131 = v43;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v44);
  v46 = v127 - v45;
  v47 = type metadata accessor for ToolboxCache.ToolCacheKey(0);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE179EC();
  sub_22BE1AB80();
  v52 = *v13;
  v51 = v13[1];
  v54 = v13[2];
  v53 = v13[3];
  v55 = *(v13 + 32);
  v57 = *(v56 + 28);
  v58 = sub_22C26E244();
  sub_22BE18000(v58);
  v60 = v16 + v57;
  v61 = v52;
  (*(v59 + 16))(v60, v141);
  *v16 = v52;
  *(v16 + 8) = v51;
  v129 = v54;
  *(v16 + 16) = v54;
  *(v16 + 24) = v53;
  v140 = v16;
  v149 = v55;
  *(v16 + 32) = v55;
  v62 = v142[7];
  v63 = *(v62 + 16);
  v143 = (v145 + 16);
  v144 = v63;
  v64 = (v145 + 8);

  v137 = v53;

  for (i = 0; ; ++i)
  {
    if (v144 == i)
    {
      v144 = v38;
      v74 = v142;
      v75 = *v142;
      v76 = v136;
      sub_22BF30C54();
      sub_22BE1AB5C(v76, 1, v135);
      if (v70)
      {
        v135 = v75;
        sub_22BE33928(v76, &qword_27D90B2F0, &unk_22C28C9B0);
        v78 = v74[5];
        v77 = v74[6];
        sub_22BE1BD3C(v74 + 2, v78);
        v147[0] = v61;
        v147[1] = v51;
        v147[2] = v129;
        v147[3] = v137;
        v148 = v149;
        v79 = *(v77 + 16);

        v80 = v131;
        v81 = v139;
        v79(v147, v141, v78, v77);
        if (v81)
        {

          v147[0] = v81;
          v82 = v81;
          sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
          if (swift_dynamicCast() && (a13 & 1) == 0)
          {

            v111 = v127[0];
            sub_22C271B24();

            v112 = sub_22C272084();
            v113 = sub_22C2737C4();

            if (os_log_type_enabled(v112, v113))
            {
              sub_22BE1A260();
              v114 = swift_slowAlloc();
              sub_22BE2386C();
              v115 = swift_slowAlloc();
              v146 = v115;
              *v114 = 136315138;
              v116 = sub_22BE33560();
              *(v114 + 4) = sub_22BE61C88(v116, v117, v118);
              sub_22BF3952C(&dword_22BE15000, v119, v120, "Error unableToFindMatchingTool %s - Toolbox caching nil");
              sub_22BE26B64(v115);
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();
              sub_22BE1B2A4();
              MEMORY[0x2318AD180]();
            }

            (*(v132 + 8))(v111, v133);
            v121 = v128;
            sub_22BE1A140();
            sub_22BE19DC4(v122, v123, v124, v125);
            sub_22BF30CA0();
            sub_22BE33928(v121, &qword_27D90B2D8, &qword_22C2B5080);
            sub_22BF385E0();
            sub_22BE196B4();
            *v126 = 1;
            swift_willThrow();
            sub_22BE1924C();
            sub_22BF36794();

            goto LABEL_20;
          }

          v145 = v61;

          v83 = v51;
          v84 = v127[1];
          sub_22C271B24();

          v85 = v81;
          v86 = sub_22C272084();
          v87 = sub_22C2737A4();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            sub_22BE2386C();
            v90 = swift_slowAlloc();
            v147[0] = v90;
            *v88 = 138412546;
            v91 = v81;
            v92 = _swift_stdlib_bridgeErrorToNSError();
            *(v88 + 4) = v92;
            *v89 = v92;
            *(v88 + 12) = 2080;
            *(v88 + 14) = sub_22BE61C88(v145, v83, v147);
            _os_log_impl(&dword_22BE15000, v86, v87, "Unexpected error %@ for %s - Toolbox not caching nil", v88, 0x16u);
            sub_22BE33928(v89, &qword_27D907870, &qword_22C27AB50);
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
            sub_22BE26B64(v90);
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
          }

          (*(v132 + 8))(v84, v133);
          swift_willThrow();
          sub_22BE1924C();
          goto LABEL_25;
        }

        v38 = v144;
        v107 = v128;
        (*v143)(v128, v80, v144);
        sub_22BE187DC();
        sub_22BE19DC4(v108, v109, v110, v38);
        sub_22BF30CA0();
        sub_22BE33928(v107, &qword_27D90B2D8, &qword_22C2B5080);
        v46 = v80;
      }

      else
      {
        v93 = v134;
        sub_22BEBFD18();
        v94 = v130;
        sub_22BE22868();
        v38 = v144;
        v95 = sub_22BE1AEA8(v94, 1, v144);
        if (v95 == 1)
        {
          sub_22BE33928(v94, &qword_27D90B2D8, &qword_22C2B5080);
          v96 = v127[2];
          sub_22C271B24();

          v97 = sub_22C272084();
          v98 = sub_22C273784();

          if (os_log_type_enabled(v97, v98))
          {
            sub_22BE1A260();
            v99 = swift_slowAlloc();
            sub_22BE2386C();
            v100 = swift_slowAlloc();
            v147[0] = v100;
            *v99 = 136315138;
            v101 = sub_22BE33560();
            *(v99 + 4) = sub_22BE61C88(v101, v102, v103);
            sub_22BF3952C(&dword_22BE15000, v104, v105, "Toolbox cached nil for %s");
            sub_22BE26B64(v100);
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
          }

          (*(v132 + 8))(v96, v133);
          sub_22BF385E0();
          sub_22BE196B4();
          *v106 = 0;
          swift_willThrow();
          sub_22BE33928(v134, &qword_27D90B2D8, &qword_22C2B5080);
          sub_22BE1924C();
LABEL_25:
          sub_22BF36794();
          goto LABEL_20;
        }

        sub_22BE33928(v93, &qword_27D90B2D8, &qword_22C2B5080);
        v46 = v94;
      }

LABEL_19:
      sub_22BE1924C();
      sub_22BF36794();
      (*(v145 + 4))(v138, v46, v38);
LABEL_20:
      sub_22BE18478();
      return;
    }

    if (i >= *(v62 + 16))
    {
      break;
    }

    v66 = v145[80];
    sub_22BE19E14();
    (*(v68 + 16))(v46, v62 + v67 + *(v68 + 72) * i, v38);
    v70 = sub_22C2721D4() == v61 && v69 == v51;
    if (v70)
    {

      goto LABEL_19;
    }

    v71 = v61;
    v72 = v51;
    sub_22BE30F20();
    v73 = sub_22C274014();

    if (v73)
    {
      goto LABEL_19;
    }

    (*v64)(v46, v38);
    v51 = v72;
    v61 = v71;
  }

  __break(1u);
}

void Toolbox.Entry.parameters.getter()
{
  sub_22BE19460();
  v2 = type metadata accessor for Toolbox.BuiltInDefinition(0);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22C272114();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE22DB8();
  v13 = sub_22C272224();
  v14 = sub_22BE179D8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1AB80();
  v19 = type metadata accessor for Toolbox.Entry(0);
  v20 = sub_22BE18000(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  v25 = v24 - v23;
  sub_22BF386AC();
  sub_22BE289D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v29 = *(v10 + 32);
      v30 = sub_22BE1AEE4();
      v31(v30);
      sub_22C2720E4();
      v32 = *(v10 + 8);
      v33 = sub_22BE33560();
      v34(v33);
      break;
    case 3u:
      sub_22BF38654();
      sub_22BE19454();
      sub_22BF386AC();
      (*(v16 + 32))(v1, v0, v13);
      sub_22C272134();
      v35 = *(v16 + 8);
      v36 = sub_22BE1C2A0();
      v37(v36);
      sub_22BF36794();
      break;
    default:
      (*(v16 + 32))(v1, v25, v13);
      sub_22C272134();
      v26 = *(v16 + 8);
      v27 = sub_22BE1C2A0();
      v28(v27);
      break;
  }

  sub_22BE1AABC();
}

uint64_t Toolbox.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = qword_27D906378;

  if (v4 != -1)
  {
    sub_22BE185D0();
    swift_once();
  }

  v5 = sub_22C26E244();
  v6 = sub_22BE199F4(v5, qword_27D90B298);
  v15[1] = a2;
  v15[2] = 0;
  v15[3] = 0;
  v16 = 0;
  Toolbox.subscript.getter(v15, v6, v7, v8, v9, v10, v11, v12, v14, a1, SWORD2(a1), SBYTE6(a1), SHIBYTE(a1));
}

void sub_22BF30C54()
{
  sub_22BE39064();
  sub_22BF367E8(v1);

  os_unfair_lock_unlock(v0 + 4);
}

void sub_22BF30CA0()
{
  sub_22BF3950C();
  v1 = sub_22BE1C2A0();
  sub_22BF374A8(v1, v2);

  os_unfair_lock_unlock(v0 + 4);
}

void static Toolbox.ContainerForTypeLookup.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = sub_22C272AC4();
  v3 = sub_22BE179D8(v2);
  v48 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v46 = v7;
  v8 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  sub_22BE18000(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v47 = v12;
  v13 = sub_22BE5CE4C(&qword_27D9071E8, &unk_22C28C9C0);
  sub_22BE18000(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1AB80();
  v17 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  v23 = v22 - v21;
  v24 = sub_22BE5CE4C(&qword_27D9071F0, &qword_22C275070);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE336DC();
  v29 = *(v28 + 56);
  sub_22BF386AC();
  sub_22BF386AC();
  sub_22BE1AB5C(v0, 1, v8);
  if (v30)
  {
    sub_22BE1AB5C(v0 + v29, 1, v8);
    if (v30)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_22BE17CD4();
    sub_22BF386AC();
    sub_22BE1AB5C(v0 + v29, 1, v8);
    if (!v30)
    {
      v31 = *(v13 + 48);
      sub_22BEBFD18();
      sub_22BEBFD18();
      sub_22BE3675C();
      sub_22BE1AB5C(v32, v33, v34);
      if (v35)
      {
        sub_22BE3675C();
        sub_22BE1AB5C(v36, v37, v38);
        if (v30)
        {
          sub_22BE33928(v1, &unk_27D906F38, qword_22C274D30);
LABEL_19:
          sub_22BF394A4();
          sub_22BF36794();
          goto LABEL_20;
        }
      }

      else
      {
        sub_22BE22868();
        sub_22BE3675C();
        sub_22BE1AB5C(v39, v40, v41);
        if (!v42)
        {
          (*(v48 + 32))(v46, v1 + v31, v2);
          sub_22BE3E5A4();
          sub_22BE199AC(v43, v44);
          sub_22BE196A8();
          sub_22C272FD4();
          v45 = *(v48 + 8);
          v45(v46, v2);
          v45(v47, v2);
          sub_22BE33928(v1, &unk_27D906F38, qword_22C274D30);
          goto LABEL_19;
        }

        (*(v48 + 8))(v47, v2);
      }

      sub_22BE33928(v1, &qword_27D9071E8, &unk_22C28C9C0);
      goto LABEL_19;
    }

    sub_22BE33928(v23, &unk_27D906F38, qword_22C274D30);
  }

  sub_22BE33928(v0, &qword_27D9071F0, &qword_22C275070);
LABEL_20:
  sub_22BE1AABC();
}

void Toolbox.ContainerForTypeLookup.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  sub_22BE23C8C();
  v24 = sub_22C272AC4();
  v25 = sub_22BE179D8(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  v32 = v31 - v30;
  v33 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v40 = type metadata accessor for Toolbox.ContainerForTypeLookup(0);
  v41 = sub_22BE19448(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22BE17CD4();
  sub_22BE1B18C();
  sub_22BF386AC();
  sub_22BE1AB5C(v21, 1, v33);
  if (v44)
  {
    MEMORY[0x2318AC860](1);
  }

  else
  {
    sub_22BEBFD18();
    MEMORY[0x2318AC860](0);
    sub_22BE2590C();
    sub_22BE22868();
    sub_22BE1AB5C(v20, 1, v24);
    if (v44)
    {
      sub_22C274174();
    }

    else
    {
      (*(v27 + 32))(v32, v20, v24);
      sub_22C274174();
      sub_22BE3E5A4();
      sub_22BE199AC(v45, v46);
      sub_22C272EE4();
      (*(v27 + 8))(v32, v24);
    }

    sub_22BE33928(v39, &unk_27D906F38, qword_22C274D30);
  }

  sub_22BE1AABC();
}

void Toolbox.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v165 = v21;
  v162 = v20;
  v163 = v25;
  v167 = v26;
  v28 = v27;
  v154 = v29;
  v164 = sub_22C2728E4();
  v30 = sub_22BE179D8(v164);
  v153 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v155 = v34;
  sub_22BE183BC();
  v35 = sub_22C272984();
  v36 = sub_22BE179D8(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v42);
  sub_22BE19E94();
  v149 = v43;
  sub_22BE183BC();
  v44 = sub_22C2720A4();
  v45 = sub_22BE179D8(v44);
  v160 = v46;
  v161 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  v152 = v49;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v50);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19E94();
  v150 = v52;
  v53 = sub_22BE5CE4C(&qword_27D90B308, &qword_22C28C9D0);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  v58 = &v146 - v57;
  v59 = sub_22BE5CE4C(&qword_27D90B310, &qword_22C28C9D8);
  v60 = sub_22BE18000(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE17B98();
  v151 = v63;
  sub_22BE1B99C();
  v65 = MEMORY[0x28223BE20](v64);
  v67 = &v146 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = &v146 - v68;
  v70 = type metadata accessor for ToolboxCache.TypeCacheKey(0);
  v71 = v70 - 8;
  v72 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  sub_22BE179EC();
  sub_22BE1AB80();
  v158 = v38;
  v159 = v35;
  v73 = *(v38 + 16);
  v74 = sub_22BE2590C();
  v75 = v162;
  v156 = v76;
  v157 = v38 + 16;
  v76(v74);
  v77 = *(v71 + 28);
  sub_22BE17CD4();
  sub_22BF386AC();
  v78 = *(v71 + 32);
  v79 = sub_22C26E244();
  sub_22BE18000(v79);
  v81 = v163;
  (*(v80 + 16))(v22 + v78);
  v82 = *v75;
  v166 = v22;
  sub_22BF31DDC();
  sub_22BE1AB5C(v58, 1, v59);
  if (!v101)
  {
    sub_22BEBFD18();
    sub_22BE1AEE4();
    sub_22BE22868();
    v100 = v164;
    sub_22BE1AB5C(v67, 1, v164);
    if (!v101)
    {
      v85 = v67;
      v113 = v153;
LABEL_15:
      sub_22BE33928(v69, &qword_27D90B310, &qword_22C28C9D8);
      sub_22BE1BA7C();
      sub_22BF36794();
      (*(v113 + 32))(v154, v85, v100);
      goto LABEL_21;
    }

    sub_22BE33928(v67, &qword_27D90B310, &qword_22C28C9D8);
    v102 = v150;
    sub_22C271B24();
    v103 = v149;
    v156(v149, v28, v159);
    v104 = sub_22C272084();
    v105 = sub_22C273784();
    if (os_log_type_enabled(v104, v105))
    {
      sub_22BE1A260();
      v106 = swift_slowAlloc();
      sub_22BE2386C();
      v107 = v69;
      v108 = swift_slowAlloc();
      a10 = v108;
      *v106 = 136315138;
      v109 = v103;
      sub_22C272944();
      sub_22BE194EC();
      v111 = v110;
      sub_22BE26874();
      v112();
      sub_22BE61C88(v109, v111, &a10);
      sub_22BE194EC();

      *(v106 + 4) = v109;
      _os_log_impl(&dword_22BE15000, v104, v105, "Toolbox cached nil for %s", v106, 0xCu);
      sub_22BE26B64(v108);
      v69 = v107;
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    else
    {

      sub_22BE26874();
      v135 = sub_22BE289D8();
      v136(v135);
    }

    (*(v160 + 8))(v102, v161);
    sub_22BF385E0();
    sub_22BE196B4();
    *v137 = 1;
    swift_willThrow();
    sub_22BE33928(v69, &qword_27D90B310, &qword_22C28C9D8);
LABEL_20:
    sub_22BE1BA7C();
    sub_22BF36794();
    goto LABEL_21;
  }

  v150 = v82;
  v100 = v164;
  sub_22BE33928(v58, &qword_27D90B308, &qword_22C28C9D0);
  v83 = v75[5];
  v84 = v75[6];
  sub_22BE1BD3C(v75 + 2, v83);
  v85 = v155;
  v86 = v165;
  (*(v84 + 24))(v28, v167, v81, v83, v84);
  if (!v86)
  {
    v113 = v153;
    v129 = *(v153 + 16);
    v69 = v151;
    v130 = sub_22BE18240();
    v131(v130);
    sub_22BE187DC();
    sub_22BE19DC4(v132, v133, v134, v100);
    sub_22BF31E28();
    goto LABEL_15;
  }

  a10 = v86;
  v87 = v86;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if (!swift_dynamicCast() || v169 != 1)
  {

    v114 = v152;
    sub_22C271B24();
    v115 = sub_22BE33560();
    (v156)(v115);
    v116 = v86;
    v117 = sub_22C272084();
    v118 = sub_22C2737A4();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      sub_22BE2386C();
      v167 = swift_slowAlloc();
      a10 = v167;
      *v119 = 138412546;
      v121 = v86;
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v119 + 4) = v122;
      *v120 = v122;
      *(v119 + 12) = 2080;
      sub_22C272944();
      sub_22BE26874();
      v123 = sub_22BE27BA4();
      v124(v123);
      v125 = sub_22BE3E8FC();
      v128 = sub_22BE61C88(v125, v126, v127);

      *(v119 + 14) = v128;
      _os_log_impl(&dword_22BE15000, v117, v118, "Unexpected error %@ for %s - Toolbox not caching nil", v119, 0x16u);
      sub_22BE33928(v120, &qword_27D907870, &qword_22C27AB50);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE26B64(v167);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      (*(v160 + 8))(v152, v161);
    }

    else
    {

      sub_22BE26874();
      v138 = sub_22BE27BA4();
      v139(v138);
      (*(v160 + 8))(v114, v161);
    }

    swift_willThrow();
    goto LABEL_20;
  }

  v88 = v148;
  sub_22C271B24();
  v89 = v147;
  v90 = v159;
  v156(v147, v28, v159);
  v91 = sub_22C272084();
  v92 = sub_22C2737C4();
  if (os_log_type_enabled(v91, v92))
  {
    sub_22BE1A260();
    v93 = swift_slowAlloc();
    sub_22BE2386C();
    v94 = swift_slowAlloc();
    v168 = v94;
    *v93 = 136315138;
    sub_22C272944();
    sub_22BE26874();
    v95();
    v96 = sub_22BE3E8FC();
    v99 = sub_22BE61C88(v96, v97, v98);

    *(v93 + 4) = v99;
    _os_log_impl(&dword_22BE15000, v91, v92, "Error unableToFindMatchingType %s - Toolbox caching nil", v93, 0xCu);
    sub_22BE26B64(v94);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  else
  {

    sub_22BE26874();
    v140(v89, v90);
  }

  (*(v160 + 8))(v88, v161);
  v141 = v151;
  sub_22BE1A140();
  sub_22BE19DC4(v142, v143, v144, v100);
  sub_22BE2590C();
  sub_22BF31E28();
  sub_22BE33928(v141, &qword_27D90B310, &qword_22C28C9D8);
  sub_22BF385E0();
  sub_22BE196B4();
  *v145 = 1;
  swift_willThrow();
  sub_22BE1BA7C();
  sub_22BF36794();

LABEL_21:
  sub_22BE18478();
}