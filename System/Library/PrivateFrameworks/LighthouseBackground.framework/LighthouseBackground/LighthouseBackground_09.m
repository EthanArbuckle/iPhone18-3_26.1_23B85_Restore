id MLHostExtension.configuration.getter@<X0>(void *a1@<X8>)
{
  result = sub_1DF221C8C(v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DF21EB44(void *a1, uint64_t a2)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

void sub_1DF21EBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for SandboxExtension();
  v6 = swift_allocObject();
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 16) = a1;
  v7 = qword_1ED8E7530;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);

  v9 = sub_1DF22A8A0();
  v10 = sub_1DF22B100();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v56 = v12;
    *v11 = 136315138;

    v13 = SandboxExtension.description.getter();
    v15 = v14;

    v16 = sub_1DF160728(v13, v15, &v56);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1DF15A000, v9, v10, "Processing sandbox extension: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12D0B40](v12, -1, -1);
    MEMORY[0x1E12D0B40](v11, -1, -1);
  }

  SandboxExtension.consume()();
  if (v17)
  {
    v59 = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
    if (!swift_dynamicCast())
    {
LABEL_9:

      v22 = sub_1DF22A8A0();
      v23 = sub_1DF22B110();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v56 = v54;
        *v24 = 136315138;

        v25 = sub_1DF2269DC(16);
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v32 = MEMORY[0x1E12CF7D0](v25, v27, v29, v31);
        v34 = v33;

        v35 = sub_1DF160728(v32, v34, &v56);

        *(v24 + 4) = v35;
        _os_log_impl(&dword_1DF15A000, v22, v23, "Failed at consuming sandbox extension for token: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x1E12D0B40](v54, -1, -1);
        MEMORY[0x1E12D0B40](v24, -1, -1);
      }

      return;
    }

    v20 = v56;
    v19 = v57;
    v21 = v58;
    if ((v58 - 1) < 2)
    {
      sub_1DF222EA0(v56, v57, v58);
      goto LABEL_9;
    }

    v46 = sub_1DF22A8A0();
    v47 = sub_1DF22B110();
    sub_1DF222EA0(v20, v19, v21);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v48 = 67109378;
      *(v48 + 4) = v20;
      *(v48 + 8) = 2080;
      if (v21)
      {
        v50 = v19;
      }

      else
      {
        v50 = 0;
      }

      if (v21)
      {
        v51 = v21;
      }

      else
      {
        v51 = 0xE000000000000000;
      }

      v52 = sub_1DF160728(v50, v51, &v55);

      *(v48 + 10) = v52;
      _os_log_impl(&dword_1DF15A000, v46, v47, "Failed at consuming sandbox extension: %d %s", v48, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1E12D0B40](v49, -1, -1);
      MEMORY[0x1E12D0B40](v48, -1, -1);
    }

    else
    {

      sub_1DF222EA0(v20, v19, v21);
    }
  }

  else
  {
    v36 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
    swift_beginAccess();

    MEMORY[0x1E12CF930](v37);
    if (*((*(v3 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v36) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v53 = *((*(v3 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1DF22AEC0();
    }

    sub_1DF22AF00();
    swift_endAccess();

    v38 = sub_1DF22A8A0();
    v39 = sub_1DF22B100();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = v41;
      *v40 = 136315138;

      v42 = SandboxExtension.description.getter();
      v44 = v43;

      v45 = sub_1DF160728(v42, v44, &v56);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1DF15A000, v38, v39, "Consumed sandbox extension: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1E12D0B40](v41, -1, -1);
      MEMORY[0x1E12D0B40](v40, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1DF21F23C(void *a1)
{
  v2 = sub_1DF22ACC0();
  v4 = v3;
  v5 = a1;
  sub_1DF21EBD0(v2, v4);
}

uint64_t sub_1DF21F2A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[45] = a6;
  v7[46] = a7;
  v7[43] = a4;
  v7[44] = a5;
  v7[47] = *MEMORY[0x1E69E7D40] & *a4;
  v10 = swift_task_alloc();
  v7[48] = v10;
  *v10 = v7;
  v10[1] = sub_1DF21F388;

  return sub_1DF2207B4((v7 + 19), a4, a5);
}

uint64_t sub_1DF21F388()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF21F484, 0, 0);
}

uint64_t sub_1DF21F484()
{
  v58 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 248);
  v3 = *(v0 + 168);
  v4 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v4;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v1;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v3;
  v5 = *(v0 + 264);
  *(v0 + 112) = v2;
  *(v0 + 128) = v5;
  *(v0 + 143) = *(v0 + 279);
  if (*(v0 + 16) && (v6 = *(v0 + 16), v7 = , v8 = satisfiesTargetingRules(_:)(v7), , !v8))
  {
    v19 = (v0 + 320);
    sub_1DF218A30(v0 + 16);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 352);
    v21 = sub_1DF22A8C0();
    __swift_project_value_buffer(v21, qword_1ED8E92C0);
    v22 = v20;
    v23 = sub_1DF22A8A0();
    v24 = sub_1DF22B0F0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 352);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v57 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_1DF160728(*(v25 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName), *(v25 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8), &v57);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_1DF160728(*(v25 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId), *(v25 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8), &v57);
      _os_log_impl(&dword_1DF15A000, v23, v24, "Task %s [id: %s] doesn't satisfy targeting rules. Skipping execution.", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v27, -1, -1);
      MEMORY[0x1E12D0B40](v26, -1, -1);
    }

    v28 = 328;
  }

  else
  {
    if (!*(v0 + 24) || (v9 = *(v0 + 24), v10 = , v11 = satisifiesOSEligibilityRules(_:)(v10), , v11))
    {
      v13 = *(v0 + 48);
      v12 = *(v0 + 56);
      *(v0 + 392) = v13;
      *(v0 + 400) = v12;
      v14 = *(v0 + 64);
      v15 = *(v0 + 72);
      *(v0 + 408) = v14;
      *(v0 + 416) = v15;
      if (v12)
      {
        sub_1DF180D2C(v13, v12);
        v16 = swift_task_alloc();
        *(v0 + 424) = v16;
        *v16 = v0;
        v16[1] = sub_1DF21FAC0;
        v17 = *(v0 + 352);

        return sub_1DF19BCE4(v17, v13, v12, v14, v15);
      }

      else
      {
        v48 = *(v0 + 376);
        v49 = *((*MEMORY[0x1E69E7D40] & **(v0 + 344)) + 0x60);
        v50 = *(v48 + 88);
        *(v0 + 440) = v50;
        v51 = *(v50 + 16);
        v52 = *(v48 + 80);
        *(v0 + 448) = v52;
        v56 = (v51 + *v51);
        v53 = v51[1];
        v54 = swift_task_alloc();
        *(v0 + 456) = v54;
        *v54 = v0;
        v54[1] = sub_1DF22023C;
        v55 = *(v0 + 352);

        return v56(v55, v52, v50);
      }
    }

    v19 = (v0 + 304);
    sub_1DF218A30(v0 + 16);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 352);
    v30 = sub_1DF22A8C0();
    __swift_project_value_buffer(v30, qword_1ED8E92C0);
    v31 = v29;
    v32 = sub_1DF22A8A0();
    v33 = sub_1DF22B0F0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 352);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v57 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_1DF160728(*(v34 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName), *(v34 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8), &v57);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_1DF160728(*(v34 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId), *(v34 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8), &v57);
      _os_log_impl(&dword_1DF15A000, v32, v33, "Task %s [id: %s] doesn't satisfy OS Eligibility rules. Skipping execution.", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v36, -1, -1);
      MEMORY[0x1E12D0B40](v35, -1, -1);
    }

    v28 = 312;
  }

  v37 = *(v0 + 368);
  v38 = *(v0 + 376);
  v40 = *(v0 + 352);
  v39 = *(v0 + 360);
  v41 = type metadata accessor for MLHostResult();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 2;
  *&v42[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = 1;
  v43 = &v42[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v43 = 0;
  *(v43 + 1) = 0;
  v19->receiver = v42;
  *(v0 + v28) = v41;
  v44 = [(objc_super *)v19 init];
  v45 = *(v38 + 80);
  v46 = *(v38 + 88);
  sub_1DF2221D0(v44, v40, v39, v37);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1DF21FAC0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v12 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    sub_1DF218A30(v4 + 16);
    v6 = sub_1DF21FE98;
  }

  else
  {
    v7 = *(v4 + 408);
    v8 = *(v4 + 416);
    v9 = *(v4 + 392);
    v10 = *(v4 + 400);
    *(v4 + 148) = a1 & 1;
    sub_1DF180DA8(v9, v10);
    v6 = sub_1DF21FBFC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DF21FBFC()
{
  if (*(v0 + 148))
  {
    v1 = *(v0 + 376);
    v2 = *((*MEMORY[0x1E69E7D40] & **(v0 + 344)) + 0x60);
    v3 = *(v1 + 88);
    *(v0 + 440) = v3;
    v4 = *(v3 + 16);
    v5 = *(v1 + 80);
    *(v0 + 448) = v5;
    v23 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 456) = v7;
    *v7 = v0;
    v7[1] = sub_1DF22023C;
    v8 = *(v0 + 352);

    return v23(v8, v5, v3);
  }

  else
  {
    sub_1DF218A30(v0 + 16);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF22A8C0();
    __swift_project_value_buffer(v10, qword_1ED8E92C0);
    v11 = sub_1DF22A8A0();
    v12 = sub_1DF22B0F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DF15A000, v11, v12, "MobileAsset not available. Rescheduling.", v13, 2u);
      MEMORY[0x1E12D0B40](v13, -1, -1);
    }

    v14 = *(v0 + 368);
    v15 = *(v0 + 376);
    v17 = *(v0 + 352);
    v16 = *(v0 + 360);

    v18 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v19 = sub_1DF2219C8(1, 1, v18);
    v20 = *(v15 + 80);
    v21 = *(v15 + 88);
    sub_1DF2221D0(v19, v17, v16, v14);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1DF21FE98()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  sub_1DF180DA8(*(v0 + 392), *(v0 + 400));
  *(v0 + 336) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 147);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF22A8C0();
    __swift_project_value_buffer(v6, qword_1ED8E92C0);
    v7 = sub_1DF22A8A0();
    v8 = sub_1DF22B110();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      sub_1DF19DA38();
      swift_allocError();
      *v11 = v5;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1DF15A000, v7, v8, "Got MLHostError while accessing MAAutoAsset: %@", v9, 0xCu);
      sub_1DF16184C(v10, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v10, -1, -1);
      MEMORY[0x1E12D0B40](v9, -1, -1);
    }

    v13 = *(v0 + 368);
    v14 = *(v0 + 376);
    v16 = *(v0 + 352);
    v15 = *(v0 + 360);

    v17 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v18 = sub_1DF221800(v5, 1, v17);
    v19 = *(v14 + 80);
    v20 = *(v14 + 88);
    sub_1DF2221D0(v18, v16, v15, v13);

    v21 = *(v0 + 336);
  }

  else
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 432);
    v23 = sub_1DF22A8C0();
    __swift_project_value_buffer(v23, qword_1ED8E92C0);
    v24 = v22;
    v25 = sub_1DF22A8A0();
    v26 = sub_1DF22B110();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 432);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v27;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1DF15A000, v25, v26, "Got unexpected non-MLHostError while accessing MAAutoAsset: %@", v28, 0xCu);
      sub_1DF16184C(v29, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v29, -1, -1);
      MEMORY[0x1E12D0B40](v28, -1, -1);
    }

    v32 = *(v0 + 432);
    v33 = *(v0 + 368);
    v34 = *(v0 + 376);
    v36 = *(v0 + 352);
    v35 = *(v0 + 360);

    v37 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v38 = sub_1DF2219C8(2, 1, v37);
    v39 = *(v34 + 80);
    v40 = *(v34 + 88);
    sub_1DF2221D0(v38, v36, v35, v33);

    v21 = v32;
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1DF22023C(uint64_t a1)
{
  v2 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF22033C, 0, 0);
}

uint64_t sub_1DF22033C()
{
  v44 = v0;
  v1 = *(*(v0 + 464) + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy);
  sub_1DF218A30(v0 + 16);
  if (v1)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF22A8C0();
    __swift_project_value_buffer(v2, qword_1ED8E92C0);
    v3 = sub_1DF22A8A0();
    v4 = sub_1DF22B0F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF15A000, v3, v4, "Extension indicated shouldRun() = false.", v5, 2u);
      MEMORY[0x1E12D0B40](v5, -1, -1);
    }

    v6 = *(v0 + 464);
    v8 = *(v0 + 440);
    v7 = *(v0 + 448);
    v10 = *(v0 + 360);
    v9 = *(v0 + 368);
    v11 = *(v0 + 352);

    sub_1DF2221D0(v6, v11, v10, v9);
    goto LABEL_22;
  }

  if (*(v0 + 40))
  {
LABEL_17:
    v6 = *(v0 + 464);
    v27 = *(v0 + 440);
    v26 = *(v0 + 448);
    sub_1DF2221D0(v6, *(v0 + 352), *(v0 + 360), *(v0 + 368));
    goto LABEL_22;
  }

  v12 = *(v0 + 32);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 352);
  v14 = sub_1DF22A8C0();
  __swift_project_value_buffer(v14, qword_1ED8E92C0);
  v15 = v13;
  v16 = sub_1DF22A8A0();
  v17 = sub_1DF22B0F0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 352);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1DF160728(*(v18 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId), *(v18 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8), &v43);
    _os_log_impl(&dword_1DF15A000, v16, v17, "Evaluating system sampling condition for task: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12D0B40](v20, -1, -1);
    MEMORY[0x1E12D0B40](v19, -1, -1);
  }

  v21 = sub_1DF221774(0x20000000000001uLL);
  if (v21 == 0x20000000000000)
  {
    v22 = 1.0;
    if (v12 >= 1.0)
    {
LABEL_14:
      v23 = sub_1DF22A8A0();
      v24 = sub_1DF22B0F0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = v22;
        _os_log_impl(&dword_1DF15A000, v23, v24, "Device has been selected for execution this time. Executing. Score: %f", v25, 0xCu);
        MEMORY[0x1E12D0B40](v25, -1, -1);
      }

      goto LABEL_17;
    }
  }

  else
  {
    v28 = vcvtd_n_f64_u64(v21, 0x35uLL);
    v22 = v28 + 0.0;
    if (v12 >= v28)
    {
      goto LABEL_14;
    }
  }

  v29 = sub_1DF22A8A0();
  v30 = sub_1DF22B0F0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v22;
    _os_log_impl(&dword_1DF15A000, v29, v30, "Device has not been selected for execution this time. Rescheduling. Score: %f", v31, 0xCu);
    MEMORY[0x1E12D0B40](v31, -1, -1);
  }

  v6 = *(v0 + 464);
  v33 = *(v0 + 440);
  v32 = *(v0 + 448);
  v35 = *(v0 + 360);
  v34 = *(v0 + 368);
  v36 = *(v0 + 352);

  v37 = type metadata accessor for MLHostResult();
  v38 = objc_allocWithZone(v37);
  *&v38[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 2;
  *&v38[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = 1;
  v39 = &v38[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v39 = 0;
  *(v39 + 1) = 0;
  *(v0 + 288) = v38;
  *(v0 + 296) = v37;
  v40 = objc_msgSendSuper2((v0 + 288), sel_init);
  sub_1DF2221D0(v40, v36, v35, v34);

LABEL_22:
  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1DF2207B4(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 288) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x60);
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x58);
  v7 = *(v6 + 32);
  v8 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v14 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v3 + 296) = v10;
  v11 = sub_1DF222DD4();
  v12 = sub_1DF222E28();
  *v10 = v3;
  v10[1] = sub_1DF220958;

  return v14(v3 + 152, a3, &type metadata for MLHostEmptyParameters, v11, v12, v8, v6);
}

uint64_t sub_1DF220958()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF220A54, 0, 0);
}

uint64_t sub_1DF220A54()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 248);
  v3 = *(v0 + 168);
  v4 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v4;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v1;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v3;
  v5 = *(v0 + 264);
  *(v0 + 112) = v2;
  *(v0 + 128) = v5;
  *(v0 + 143) = *(v0 + 279);
  v6 = sub_1DF222E7C((v0 + 16));
  v7 = *(v0 + 288);
  if (v6 == 1)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0;
    *(v7 + 130) = 2;
  }

  else
  {
    *v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    v9 = *(v0 + 48);
    v10 = *(v0 + 80);
    *(v7 + 48) = *(v0 + 64);
    *(v7 + 64) = v10;
    *(v7 + 16) = v8;
    *(v7 + 32) = v9;
    v11 = *(v0 + 96);
    v12 = *(v0 + 112);
    v13 = *(v0 + 128);
    *(v7 + 127) = *(v0 + 143);
    *(v7 + 96) = v12;
    *(v7 + 112) = v13;
    *(v7 + 80) = v11;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DF220B98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - v12;
  v14 = sub_1DF22AFC0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v16 = v5;
  v17 = a1;

  v18 = sub_1DF21DC44(0, 0, v13, a5, v15);
  v19 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x70);
  v20 = *(v16 + v19);
  *(v16 + v19) = v18;
}

uint64_t sub_1DF220CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = *a4;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x60);
  v12 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x58);
  v7[5] = v12;
  v13 = *(v12 + 24);
  v14 = *((v10 & v9) + 0x50);
  v7[6] = v14;
  v18 = (v13 + *v13);
  v15 = v13[1];
  v16 = swift_task_alloc();
  v7[7] = v16;
  *v16 = v7;
  v16[1] = sub_1DF220E74;

  return v18(a5, v14, v12);
}

uint64_t sub_1DF220E74(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF220F74, 0, 0);
}

uint64_t sub_1DF220F74()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1DF2221D0(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF221024(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  sub_1DF220B98(v15, a6, v14, a7, a8);
}

void sub_1DF2210DC()
{
  v1 = v0;
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF22A8C0();
  __swift_project_value_buffer(v2, qword_1ED8E92C0);
  v3 = sub_1DF22A8A0();
  v4 = sub_1DF22B0F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DF15A000, v3, v4, "Extension asked to stop!", v5, 2u);
    MEMORY[0x1E12D0B40](v5, -1, -1);
  }

  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)))
  {

    sub_1DF22B010();
  }
}

void sub_1DF221230(void *a1)
{
  v1 = a1;
  sub_1DF2210DC();
}

unint64_t TaskErrorEvent.coreAnalyticsDictionary.getter()
{
  v1 = v0;
  v2 = sub_1DF19005C(MEMORY[0x1E69E7CC0]);
  v3 = type metadata accessor for TaskErrorEvent(0);
  v4 = v3[5];
  sub_1DF20803C();
  v5 = sub_1DF22ACA0();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v5, 0x6D61745365746164, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v7 = (v1 + v3[6]);
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_1DF22ACA0();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v10, 0x656D614E6B736174, 0xE800000000000000, v11);
  v12 = (v1 + v3[7]);
  v13 = *v12;
  v14 = v12[1];
  v15 = sub_1DF22ACA0();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v15, 0x73654D726F727265, 0xEC00000065676173, v16);
  return v2;
}

id sub_1DF2213BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1DF222BBC();
    v5 = sub_1DF22AB90();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1DF221448(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1DF22272C();
}

uint64_t sub_1DF221488(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
  v3 = *&a1[*((*v2 & *a1) + 0x68)];

  v4 = *&a1[*((*v2 & *a1) + 0x70)];
}

uint64_t sub_1DF221584(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF22167C;

  return v7(a1);
}

uint64_t sub_1DF22167C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1DF221774(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E12D0B60](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E12D0B60](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF221800(char a1, uint64_t a2, char *a3)
{
  v6 = 0xD000000000000014;
  ObjectType = swift_getObjectType();
  v26[3] = &type metadata for MLHostAssetError;
  v8 = sub_1DF222D2C();
  v26[4] = v8;
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 0;
  LOBYTE(v26[0]) = a1;
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = a2;
  v9 = __swift_project_boxed_opaque_existential_1(v26, &type metadata for MLHostAssetError);
  v10 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = (&v24 - v13);
  if (*v9)
  {
    if (*v9 == 1)
    {
      v15 = "failedToGetAutoAsset";
      v6 = 0xD00000000000001ELL;
    }

    else
    {
      v15 = "failedToExpressInterestInAsset";
      v6 = 0xD000000000000023;
    }
  }

  else
  {
    v15 = "CategoricalType";
  }

  *v14 = v6;
  v14[1] = v15 | 0x8000000000000000;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 40);
  v18 = *(*(*(AssociatedConformanceWitness + 8) + 8) + 8);
  v19 = sub_1DF22ADC0();
  v20 = &a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v20 = v19;
  v20[1] = v21;
  v25.receiver = a3;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v22;
}

id sub_1DF2219C8(char a1, uint64_t a2, char *a3)
{
  v6 = 0xD000000000000011;
  ObjectType = swift_getObjectType();
  v27[3] = &type metadata for MLHostCommonError;
  v8 = sub_1DF222D80();
  v27[4] = v8;
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 0;
  LOBYTE(v27[0]) = a1;
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = a2;
  v9 = __swift_project_boxed_opaque_existential_1(v27, &type metadata for MLHostCommonError);
  v10 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = (&v25 - v13);
  if (!*v9)
  {
    v6 = 0xD000000000000019;
    v16 = "extensionInvocationFailed";
LABEL_6:
    v15 = v16 - 32;
    goto LABEL_7;
  }

  if (*v9 != 1)
  {
    v16 = "mobileAssetFailed";
    goto LABEL_6;
  }

  v15 = "extensionInvocationFailed";
  v6 = 0xD000000000000016;
LABEL_7:
  *v14 = v6;
  v14[1] = v15 | 0x8000000000000000;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 40);
  v19 = *(*(*(AssociatedConformanceWitness + 8) + 8) + 8);
  v20 = sub_1DF22ADC0();
  v21 = &a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v21 = v20;
  v21[1] = v22;
  v26.receiver = a3;
  v26.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v26, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v23;
}

id sub_1DF221B8C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)] = MEMORY[0x1E69E7CC0];
  *&v1[*((*v5 & *v1) + 0x70)] = 0;
  (*(*(*((v6 & v4) + 0x50) - 8) + 16))(&v1[*((*v5 & *v1) + 0x60)], a1);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t dispatch thunk of MLHostExtension.shouldRun(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF222EBC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLHostExtension.doWork(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF19A474;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLHostExtension.loadConfig<A>(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1DF1F0740;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1DF222070(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_1DF22214C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF222194(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DF2221D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v64 = a4;
  v62 = a2;
  v6 = type metadata accessor for TaskErrorEvent(0);
  v63 = *(v6 - 1);
  v7 = *(v63 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v52 - v12);
  v14 = *(sub_1DF22A800() - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v52 - v21;
  if (*(v19 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status))
  {
    return a3();
  }

  v24 = *(v19 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error + 8);
  if (!v24)
  {
    return a3();
  }

  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v61 = v19;
  v53 = *(v19 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error);
  v54 = v11;
  v25 = v20;

  sub_1DF22A7D0();
  sub_1DF22A730();
  v55 = v14[1];
  v56 = v14 + 1;
  v55(v22, v25);
  sub_1DF22A720();
  v26 = v62;
  v28 = *(v62 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId);
  v27 = *(v62 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8);
  v29 = v14[2];
  v30 = v13 + v6[5];
  v58 = v18;
  v59 = v25;
  v29(v30, v18, v25);
  v31 = *(v26 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName);
  v32 = *(v26 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8);
  *v13 = v28;
  v13[1] = v27;
  v33 = (v13 + v6[6]);
  *v33 = v31;
  v33[1] = v32;
  v34 = (v13 + v6[7]);
  *v34 = v53;
  v34[1] = v24;
  v35 = qword_1ED8E7530;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_1DF22A8C0();
  __swift_project_value_buffer(v36, qword_1ED8E92C0);
  v37 = v54;
  sub_1DF222A24(v13, v54);
  v38 = sub_1DF22A8A0();
  v39 = sub_1DF22B100();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    TaskErrorEvent.coreAnalyticsDictionary.getter();
    sub_1DF222BBC();
    v42 = sub_1DF22ABB0();
    v44 = v43;

    sub_1DF222A88(v37);
    v45 = sub_1DF160728(v42, v44, aBlock);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1DF15A000, v38, v39, "Sending Error: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E12D0B40](v41, -1, -1);
    MEMORY[0x1E12D0B40](v40, -1, -1);
  }

  else
  {

    sub_1DF222A88(v37);
  }

  v46 = v60;
  v47 = v57;
  v48 = sub_1DF22ACA0();
  sub_1DF222A24(v13, v47);
  v49 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v50 = swift_allocObject();
  sub_1DF222AE4(v47, v50 + v49);
  aBlock[4] = sub_1DF222B48;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF2213BC;
  aBlock[3] = &block_descriptor_3;
  v51 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v51);

  (v46)(v61);
  sub_1DF222A88(v13);
  return (v55)(v58, v59);
}

uint64_t sub_1DF222770(uint64_t a1)
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
  v10[1] = sub_1DF1F22C0;

  return sub_1DF220CF0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DF222844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF2228B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF1F22C0;

  return sub_1DF221584(a1, v5);
}

uint64_t sub_1DF22296C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF1F0740;

  return sub_1DF221584(a1, v5);
}

uint64_t sub_1DF222A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskErrorEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF222A88(uint64_t a1)
{
  v2 = type metadata accessor for TaskErrorEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF222AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskErrorEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF222B48()
{
  v1 = *(type metadata accessor for TaskErrorEvent(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return TaskErrorEvent.coreAnalyticsDictionary.getter();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF222BBC()
{
  result = qword_1ED8E6BE8;
  if (!qword_1ED8E6BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8E6BE8);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DF222C58(uint64_t a1)
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
  v10[1] = sub_1DF1F22C0;

  return sub_1DF21F2A4(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1DF222D2C()
{
  result = qword_1ECE0F320;
  if (!qword_1ECE0F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F320);
  }

  return result;
}

unint64_t sub_1DF222D80()
{
  result = qword_1ECE0F328;
  if (!qword_1ECE0F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F328);
  }

  return result;
}

unint64_t sub_1DF222DD4()
{
  result = qword_1ED8E74B8;
  if (!qword_1ED8E74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E74B8);
  }

  return result;
}

unint64_t sub_1DF222E28()
{
  result = qword_1ED8E74C0;
  if (!qword_1ED8E74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E74C0);
  }

  return result;
}

uint64_t sub_1DF222E7C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF222EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1DF222EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15 + 16;
  v27[0] = a3;
  v27[1] = a4;
  swift_beginAccess();
  v17 = *(v4 + 32);
  if (!*(v17 + 16))
  {
    goto LABEL_5;
  }

  v18 = *(v4 + 32);

  v19 = sub_1DF175254(a1, a2);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    v24 = 0;
    return v24 & 1;
  }

  sub_1DF17A6A8(*(v17 + 56) + *(v10 + 72) * v19, v14, &qword_1ECE0CD60, &qword_1DF22FFC0);

  v21 = sub_1DF196EF8(v14, v16);
  v22 = *&v16[*(v9 + 52)];
  MEMORY[0x1EEE9AC00](v21);
  *(&v26 - 2) = v27;
  v24 = sub_1DF1605F8(sub_1DF2262D4, (&v26 - 4), v23);
  sub_1DF16184C(v16, &qword_1ECE0CD60, &qword_1DF22FFC0);
  return v24 & 1;
}

uint64_t StateMachineAnalytics.firstEventTimestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  (*(a2 + 80))(a1, a2);
  v10 = type metadata accessor for LedgerState();
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1DF16184C(v9, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v11 = sub_1DF22A800();
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    v13 = *(v10 + 20);
    v14 = sub_1DF22A800();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a3, &v9[v13], v14);
    sub_1DF17B558(v9);
    return (*(v15 + 56))(a3, 0, 1, v14);
  }
}

uint64_t StateMachineAnalytics.lastEventTimestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  (*(a2 + 104))(a1, a2);
  v10 = type metadata accessor for LedgerState();
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1DF16184C(v9, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v11 = sub_1DF22A800();
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    v13 = *(v10 + 20);
    v14 = sub_1DF22A800();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a3, &v9[v13], v14);
    sub_1DF17B558(v9);
    return (*(v15 + 56))(a3, 0, 1, v14);
  }
}

uint64_t StateMachineAnalytics.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1DF22B300();
  MEMORY[0x1E12CF820](0xD000000000000023, 0x80000001DF23E5A0);
  v4 = *((*(a2 + 32))(a1, a2) + 16);

  v5 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v5);

  MEMORY[0x1E12CF820](0xD000000000000016, 0x80000001DF23E5D0);
  v6 = *((*(a2 + 56))(a1, a2) + 16);

  v7 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v7);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return 0;
}

char *LedgerStateMachine.__allocating_init(inputGraph:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1DF225A8C(a1);

  return v5;
}

uint64_t sub_1DF223638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  sub_1DF17A6A8(v2 + *(a1 + 24), &v15 - v7, &qword_1ECE0CCF8, &qword_1DF22FF80);
  v9 = type metadata accessor for LedgerState();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1DF16184C(v8, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v10 = sub_1DF22A800();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    v12 = *(v9 + 20);
    v13 = sub_1DF22A800();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, &v8[v12], v13);
    sub_1DF17B558(v8);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }
}

uint64_t sub_1DF223818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  sub_1DF17A6A8(v2 + *(a1 + 28), &v15 - v7, &qword_1ECE0CCF8, &qword_1DF22FF80);
  v9 = type metadata accessor for LedgerState();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1DF16184C(v8, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v10 = sub_1DF22A800();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    v12 = *(v9 + 20);
    v13 = sub_1DF22A800();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, &v8[v12], v13);
    sub_1DF17B558(v8);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }
}

LighthouseBackground::LedgerTransitionStatistics __swiftcall LedgerTransitionStatistics.init()()
{
  *v0 = 0x7FEFFFFFFFFFFFFFLL;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  return result;
}

Swift::Void __swiftcall LedgerTransitionStatistics.processTime(delta:)(Swift::Double delta)
{
  if (*v1 > delta)
  {
    *v1 = delta;
  }

  if (*(v1 + 8) < delta)
  {
    *(v1 + 8) = delta;
  }

  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    *(v1 + 16) = *(v1 + 16) + (delta - *(v1 + 16)) / v4;
  }
}

uint64_t LedgerTransitionStatistics.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1DF22B300();
  MEMORY[0x1E12CF820](0x203A6E61654DLL, 0xE600000000000000);
  sub_1DF22B050();
  MEMORY[0x1E12CF820](0x203A6E694D207C20, 0xE800000000000000);
  sub_1DF22B050();
  MEMORY[0x1E12CF820](0x203A78614D207C20, 0xE800000000000000);
  sub_1DF22B050();
  return 0;
}

uint64_t sub_1DF223C28()
{
  v1 = 7235949;
  v2 = 1851876717;
  if (*v0 != 2)
  {
    v2 = 0x746E756F63;
  }

  if (*v0)
  {
    v1 = 7889261;
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

uint64_t sub_1DF223C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF226174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF223CB0(uint64_t a1)
{
  v2 = sub_1DF225CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF223CEC(uint64_t a1)
{
  v2 = sub_1DF225CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerTransitionStatistics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F330, &qword_1DF23C348);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF225CAC();
  sub_1DF22B740();
  v15[15] = 0;
  sub_1DF22B5A0();
  if (!v2)
  {
    v15[14] = 1;
    sub_1DF22B5A0();
    v15[13] = 2;
    sub_1DF22B5A0();
    v15[12] = 3;
    sub_1DF22B5B0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t LedgerTransitionStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F340, &unk_1DF23C350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF225CAC();
  sub_1DF22B730();
  if (!v2)
  {
    v19[15] = 0;
    sub_1DF22B4C0();
    v12 = v11;
    v19[14] = 1;
    sub_1DF22B4C0();
    v14 = v13;
    v19[13] = 2;
    sub_1DF22B4C0();
    v17 = v16;
    v19[12] = 3;
    v18 = sub_1DF22B4D0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF224140@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ECE0F348;
  swift_beginAccess();
  return sub_1DF17A6A8(v1 + v3, a1, &qword_1ECE0CCF8, &qword_1DF22FF80);
}

uint64_t sub_1DF2241A8(uint64_t a1)
{
  v3 = qword_1ECE0F348;
  swift_beginAccess();
  sub_1DF1FAE54(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DF224208@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DF2242A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

char *LedgerStateMachine.init(inputGraph:)(uint64_t a1)
{
  v1 = sub_1DF225A8C(a1);

  return v1;
}

uint64_t sub_1DF224384()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1DF1751D0(*(v2 + 16), 0);
  v5 = sub_1DF17A7EC(&v16, v4 + 4, v3, v2);

  sub_1DF178EDC();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E12CF970](v4, MEMORY[0x1E69E6158]);
  v8 = v7;

  v16 = v6;
  v17 = v8;

  MEMORY[0x1E12CF820](10, 0xE100000000000000);

  v10 = v16;
  v9 = v17;
  v11 = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v12 = sub_1DF22ABB0();
  v14 = v13;

  v16 = v10;
  v17 = v9;

  MEMORY[0x1E12CF820](v12, v14);

  return v16;
}

uint64_t sub_1DF224518(uint64_t a1)
{
  v24 = a1;
  v2 = *v1;
  v3 = type metadata accessor for LedgerState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 80);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  v22 = *(v4 + 56);
  v22(&v21 - v17, 1, 1, v3);
  sub_1DF2241A8(v18);
  (*(*(v2 + 88) + 144))(v8);
  sub_1DF2242A8(v11);
  sub_1DF17A6A8(v24, v16, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v4 + 48))(v16, 1, v3) == 1)
  {
    return sub_1DF16184C(v16, &qword_1ECE0CCF8, &qword_1DF22FF80);
  }

  v20 = v23;
  sub_1DF199278(v16, v23);
  sub_1DF17B4F4(v20, v18);
  v22(v18, 0, 1, v3);
  sub_1DF2241A8(v18);
  sub_1DF22500C(v20);
  return sub_1DF17B558(v20);
}

uint64_t sub_1DF2247C8(uint64_t *a1)
{
  v2 = v1;
  v89 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v85 - v9;
  v11 = type metadata accessor for LedgerState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v88 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v85 - v19);
  v21 = qword_1ECE0F348;
  swift_beginAccess();
  sub_1DF17A6A8(v1 + v21, v10, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v27 = v89;
    sub_1DF199278(v10, v20);
    v40 = v1[2];
    v41 = *v20;
    v42 = v20[1];
    v34 = a1[1];
    v87 = *a1;
    if ((sub_1DF222EC4(v41, v42, v87, v34) & 1) == 0)
    {
      if (qword_1ED8E7530 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

    sub_1DF2251C0(v20, a1);
    sub_1DF17B4F4(a1, v8);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_1DF2241A8(v8);
    v43 = v20;
    return sub_1DF17B558(v43);
  }

  sub_1DF16184C(v10, &qword_1ECE0CCF8, &qword_1DF22FF80);
  sub_1DF17B4F4(a1, v8);
  (*(v12 + 56))(v8, 0, 1, v11);
  sub_1DF2241A8(v8);
  v18 = *a1;
  v22 = a1[1];
  v88 = a1;
  v23 = *(*v1 + 112);
  swift_beginAccess();
  v25 = *(v89 + 80);
  v24 = *(v89 + 88);
  v26 = *(v24 + 48);

  v27 = v18;
  v20 = v26(v91, v25, v24);
  v29 = v28;
  v30 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v29;
  v32 = v90;
  *v29 = 0x8000000000000000;
  v34 = sub_1DF175254(v18, v22);
  v35 = *(v32 + 16);
  v36 = (v33 & 1) == 0;
  v37 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    __break(1u);
    goto LABEL_30;
  }

  v18 = v33;
  if (*(v32 + 24) < v37)
  {
    sub_1DF1A63D0(v37, isUniquelyReferenced_nonNull_native);
    v38 = sub_1DF175254(v27, v22);
    if ((v18 & 1) == (v39 & 1))
    {
      v34 = v38;
      goto LABEL_12;
    }

    goto LABEL_36;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_33;
  }

  while (1)
  {
LABEL_12:
    v58 = *v29;
    *v29 = v90;

    v59 = *v29;
    if (v18)
    {
    }

    else
    {
      sub_1DF1A8614(v34, v27, v22, 0, *v29);
    }

    v60 = *(v59 + 56);
    v61 = *(v60 + 8 * v34);
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (!v62)
    {
      *(v60 + 8 * v34) = v63;
      (v20)(v91, 0);
      swift_endAccess();
      return sub_1DF22500C(v88);
    }

LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
LABEL_9:
    v44 = sub_1DF22A8C0();
    __swift_project_value_buffer(v44, qword_1ED8E92C0);
    sub_1DF17B4F4(v20, v18);
    v45 = a1;
    v46 = v88;
    sub_1DF17B4F4(v45, v88);
    v47 = sub_1DF22A8A0();
    v48 = sub_1DF22B100();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v27;
    v86 = v20;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v91[0] = v85;
      *v51 = 136315394;
      v52 = *v18;
      v53 = *(v18 + 8);

      sub_1DF17B558(v18);
      v54 = sub_1DF160728(v52, v53, v91);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      v55 = *v46;
      v18 = v46[1];

      sub_1DF17B558(v46);
      v56 = sub_1DF160728(v55, v18, v91);

      *(v51 + 14) = v56;
      _os_log_impl(&dword_1DF15A000, v47, v48, "Invalid StateMachine transition, incrementing state: %s -> %s", v51, 0x16u);
      v57 = v85;
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v57, -1, -1);
      MEMORY[0x1E12D0B40](v51, -1, -1);
    }

    else
    {

      sub_1DF17B558(v46);
      sub_1DF17B558(v18);
    }

    a1 = v87;
    v65 = *(*v2 + 112);
    swift_beginAccess();
    v67 = *(v50 + 80);
    v66 = *(v50 + 88);
    v29 = *(v66 + 48);

    v2 = (v29)(v91, v67, v66);
    v20 = v68;
    v69 = *v68;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v34;
    v34 = v70;
    v90 = *v20;
    v72 = v90;
    *v20 = 0x8000000000000000;
    v22 = v71;
    v27 = sub_1DF175254(a1, v71);
    v74 = *(v72 + 16);
    v75 = (v73 & 1) == 0;
    v76 = v74 + v75;
    if (!__OFADD__(v74, v75))
    {
      break;
    }

    __break(1u);
LABEL_33:
    sub_1DF176390();
  }

  v77 = v73;
  if (*(v72 + 24) >= v76)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  sub_1DF1A63D0(v76, v34);
  v78 = sub_1DF175254(a1, v22);
  if ((v77 & 1) == (v79 & 1))
  {
    v27 = v78;
    while (1)
    {
LABEL_23:
      v80 = *v20;
      *v20 = v90;

      v81 = *v20;
      if (v77)
      {
      }

      else
      {
        sub_1DF1A8614(v27, a1, v22, 0, *v20);
      }

      v82 = *(v81 + 56);
      v83 = *(v82 + 8 * v27);
      v62 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (!v62)
      {
        break;
      }

      __break(1u);
LABEL_35:
      sub_1DF176390();
    }

    *(v82 + 8 * v27) = v84;
    v2(v91, 0);
    swift_endAccess();
    v43 = v86;
    return sub_1DF17B558(v43);
  }

LABEL_36:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t sub_1DF224F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(type metadata accessor for LedgerState() - 8);
    v6 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
    v7 = *(v5 + 72);
    do
    {
      sub_1DF2247C8(v6);
      v6 = (v6 + v7);
      --v3;
    }

    while (v3);
  }

  return sub_1DF224208(a2);
}

uint64_t sub_1DF22500C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  sub_1DF17B4F4(a1, &v15 - v7);
  v9 = type metadata accessor for LedgerState();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = *(*v2 + 112);
  swift_beginAccess();
  v12 = *(v4 + 88);
  v13 = *(v4 + 80);
  (*(v12 + 88))(v8, v13, v12);
  sub_1DF17B4F4(a1, v8);
  v10(v8, 0, 1, v9);
  (*(v12 + 112))(v8, v13, v12);
  return swift_endAccess();
}

uint64_t sub_1DF2251C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v56 - v9;
  v10 = a1[1];
  v61 = *a1;
  v12 = *a2;
  v11 = a2[1];
  v56 = type metadata accessor for LedgerState();
  v13 = *(v56 + 20);
  swift_bridgeObjectRetain_n();
  v62 = v10;

  v57 = a2;
  sub_1DF22A7F0();
  v15 = v14;
  v16 = *(*v3 + 112);
  swift_beginAccess();
  v17 = *(v6 + 88);
  v18 = v17[6];
  v60 = *(v6 + 80);
  v19 = v17;
  v59 = v18(v65);
  v21 = v20;
  v22 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v21;
  v63 = v12;
  v64 = v24;
  *v21 = 0x8000000000000000;
  v26 = sub_1DF175254(v12, v11);
  v27 = v24[2];
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v13) = v25;
  if (v24[3] >= v29)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_29;
    }

    while (1)
    {
LABEL_6:
      v32 = v60;
      v33 = v19;
      v34 = *v21;
      *v21 = v64;

      v35 = *v21;
      if (v13)
      {
      }

      else
      {
        sub_1DF1A8614(v26, v63, v11, 0, *v21);
      }

      v36 = v35[7];
      v37 = *(v36 + 8 * v26);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      *(v36 + 8 * v26) = v39;
      v59(v65, 0);
      swift_endAccess();
      swift_beginAccess();
      v60 = (v19[9])(v65, v32, v19);
      v19 = v40;
      v41 = *v40;
      LOBYTE(v13) = swift_isUniquelyReferenced_nonNull_native();
      v64 = *v19;
      v42 = v64;
      *v19 = 0x8000000000000000;
      v21 = sub_1DF1752CC(v61, v62, v63, v11);
      v44 = v42[2];
      v45 = (v43 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_27;
      }

      v26 = v43;
      if (v42[3] >= v46)
      {
        if ((v13 & 1) == 0)
        {
          sub_1DF176200();
        }
      }

      else
      {
        sub_1DF1A60CC(v46, v13);
        v47 = sub_1DF1752CC(v61, v62, v63, v11);
        if ((v26 & 1) != (v48 & 1))
        {
          goto LABEL_31;
        }

        v21 = v47;
      }

      v49 = *v19;
      *v19 = v64;

      v50 = *v19;
      if (v26)
      {
      }

      else
      {
        sub_1DF1A85B8(v21, v61, v62, v63, v11, 0, *v19, 1.79769313e308, 0.0, 0.0);
      }

      v51 = *(v50 + 56) + 32 * v21;
      if (v15 < *v51)
      {
        *v51 = v15;
      }

      if (*(v51 + 8) < v15)
      {
        *(v51 + 8) = v15;
      }

      v52 = *(v51 + 24);
      v38 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (!v38)
      {
        *(v51 + 24) = v53;
        *(v51 + 16) = *(v51 + 16) + (v15 - *(v51 + 16)) / v53;
        v60(v65, 0);
        swift_endAccess();
        v54 = v58;
        sub_1DF17B4F4(v57, v58);
        (*(*(v56 - 8) + 56))(v54, 0, 1);
        swift_beginAccess();
        (v33[14])(v54, v32, v33);
        return swift_endAccess();
      }

LABEL_28:
      __break(1u);
LABEL_29:
      sub_1DF176390();
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1DF1A63D0(v29, isUniquelyReferenced_nonNull_native);
  v30 = sub_1DF175254(v63, v11);
  if ((v13 & 1) == (v31 & 1))
  {
    v26 = v30;
    goto LABEL_6;
  }

  sub_1DF22B660();
  __break(1u);
LABEL_31:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t static LedgerStateMachine.meanEdgeLatencySumForPath(path:computedAnalytics:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v3 = v2 - 1;
  if (v2 != 1)
  {
    v4 = result;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1DF160DF8(0, v3, 0);
    v5 = v33;
    v6 = (v4 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *(v6 - 1);
      v9 = *v6;
      v12 = *(v33 + 16);
      v11 = *(v33 + 24);
      v13 = v12 + 1;

      if (v12 >= v11 >> 1)
      {
        result = sub_1DF160DF8((v11 > 1), v12 + 1, 1);
      }

      *(v33 + 16) = v13;
      v14 = (v33 + 32 * v12);
      v14[4] = v7;
      v14[5] = v8;
      v14[6] = v10;
      v14[7] = v9;
      v6 += 2;
      --v3;
    }

    while (v3);
LABEL_9:
    v15 = 0;
    v16 = (v5 + 56);
    v17 = 0.0;
    v30 = v5;
    while (v15 < *(v5 + 16))
    {
      v19 = *(v16 - 3);
      v18 = *(v16 - 2);
      v21 = *(v16 - 1);
      v20 = *v16;
      v23 = a2[3];
      v22 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v23);
      v32 = *(v22 + 56);

      v24 = v32(v23, v22);
      if (!*(v24 + 16))
      {

LABEL_16:

        v29 = 0.0;
        goto LABEL_17;
      }

      v25 = sub_1DF1752CC(v19, v18, v21, v20);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      ++v15;
      v28 = *(*(v24 + 56) + 32 * v25 + 16);

      v17 = v17 + v28;
      v16 += 4;
      v5 = v30;
      if (v13 == v15)
      {
        v29 = v17;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v13 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v13)
  {
    goto LABEL_9;
  }

  v29 = 0.0;
LABEL_17:

  return *&v29;
}

uint64_t static LedgerStateMachine.averageLatencyAcrossPaths(paths:computedAnalytics:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = (result + 32);
    v6 = 0.0;
    do
    {
      v7 = *v5;

      v9 = COERCE_DOUBLE(static LedgerStateMachine.meanEdgeLatencySumForPath(path:computedAnalytics:)(v8, a2));
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          return result;
        }

        v6 = v6 + (v9 - v6) / v4;
      }

      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

char *LedgerStateMachine.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  sub_1DF16184C(&v0[qword_1ECE0F348], &qword_1ECE0CCF8, &qword_1DF22FF80);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 112)]);
  return v0;
}

uint64_t LedgerStateMachine.__deallocating_deinit()
{
  LedgerStateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1DF225A8C(uint64_t a1)
{
  v2 = v1;
  v18 = *v1;
  v4 = *(v18 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = qword_1ECE0F348;
  v14 = type metadata accessor for LedgerState();
  v15 = *(*(v14 - 8) + 56);
  v15(&v2[v13], 1, 1, v14);
  *(v2 + 2) = a1;
  v15(v12, 1, 1, v14);
  v16 = qword_1ECE0F348;
  swift_beginAccess();

  sub_1DF1FAE54(v12, &v2[v16]);
  swift_endAccess();
  (*(*(v18 + 88) + 144))(v4);
  (*(v5 + 32))(&v2[*(*v2 + 112)], v8, v4);
  return v2;
}

unint64_t sub_1DF225CAC()
{
  result = qword_1ECE0F338;
  if (!qword_1ECE0F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F338);
  }

  return result;
}

void sub_1DF225E3C(uint64_t a1)
{
  sub_1DF1FBEB0();
  if (v3 <= 0x3F)
  {
    v7 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

unint64_t sub_1DF226070()
{
  result = qword_1ECE0F3D0;
  if (!qword_1ECE0F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3D0);
  }

  return result;
}

unint64_t sub_1DF2260C8()
{
  result = qword_1ECE0F3D8;
  if (!qword_1ECE0F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3D8);
  }

  return result;
}

unint64_t sub_1DF226120()
{
  result = qword_1ECE0F3E0;
  if (!qword_1ECE0F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3E0);
  }

  return result;
}

uint64_t sub_1DF226174(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851876717 && a2 == 0xE400000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DF2262D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == *v2 && *(a1 + 24) == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620() & 1;
  }
}

uint64_t SandboxExtension.__allocating_init(token:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 16) = a1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.consume()()
{
  v1 = v0;
  if (*(v0 + 40))
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_1DF22ACF0();
    v4 = sandbox_extension_consume();

    if (v4 < 0)
    {
      v14 = MEMORY[0x1E12CF490](v5);
      v15 = MEMORY[0x1E12CF490]();
      if (strerror(v15))
      {
        v16 = sub_1DF22AC90();
        v18 = v17;
        sub_1DF2265BC();
        swift_allocError();
        *v19 = v14;
        v19[1] = v16;
        v19[2] = v18;
        swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(v1 + 32) = v4;
      *(v1 + 40) = 0;
    }
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF22A8C0();
    __swift_project_value_buffer(v6, qword_1ED8E92C0);

    v7 = sub_1DF22A8A0();
    v8 = sub_1DF22B100();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = SandboxExtension.description.getter();
      v13 = sub_1DF160728(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DF15A000, v7, v8, "SandboxExtension already consumed: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12D0B40](v10, -1, -1);
      MEMORY[0x1E12D0B40](v9, -1, -1);
    }
  }
}

uint64_t SandboxExtension.token.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SandboxExtension.init(token:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 16) = a1;
  return v2;
}

unint64_t sub_1DF2265BC()
{
  result = qword_1ECE0F3E8;
  if (!qword_1ECE0F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3E8);
  }

  return result;
}

uint64_t SandboxExtension.deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = *(v0 + 32);
    sandbox_extension_release();
  }

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SandboxExtension.__deallocating_deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = *(v0 + 32);
    sandbox_extension_release();
  }

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

unint64_t SandboxExtension.description.getter()
{
  v1 = v0;
  sub_1DF22B300();

  v2 = *(v0 + 16);
  v3 = *(v1 + 24);

  v4 = sub_1DF2269DC(16);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x1E12CF7D0](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x1E12CF820](v11, v13);

  MEMORY[0x1E12CF820](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  v14 = *(v1 + 32);
  *(v1 + 40);
  v15 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v15);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return 0xD000000000000018;
}

char *static SandboxExtension.issue(auditToken:url:readonly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = MEMORY[0x1E69E9BB0];
  if (a6)
  {
    v6 = MEMORY[0x1E69E9BA8];
  }

  v22 = *v6;
  sub_1DF22A680();
  v7 = *MEMORY[0x1E69E9BE0];
  v8 = sub_1DF22ACF0();

  v9 = sandbox_extension_issue_file_to_process();

  if (v9)
  {
    v11 = sub_1DF22AC90();
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v8 = swift_allocObject();
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      *(v8 + 40) = 1;
      *(v8 + 16) = v13;
    }

    else
    {
      sub_1DF2265BC();
      swift_allocError();
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 1;
      swift_willThrow();
    }

    free(v9);
    return v8;
  }

  v15 = MEMORY[0x1E12CF490](v10);
  v16 = MEMORY[0x1E12CF490]();
  result = strerror(v16);
  if (result)
  {
    v18 = sub_1DF22AC90();
    v8 = v19;
    sub_1DF2265BC();
    swift_allocError();
    *v20 = v15;
    v20[1] = v18;
    v20[2] = v8;
    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF2269DC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DF22AD40();

    return sub_1DF22ADD0();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20LighthouseBackground12SandboxErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF226A9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF226B04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_1DF226B58(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t LedgerStateDefinition.index.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LedgerStateDefinition.index.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static LedgerStateDefinition.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620();
  }
}

uint64_t sub_1DF226CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF226D40(uint64_t a1)
{
  v2 = sub_1DF226EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF226D7C(uint64_t a1)
{
  v2 = sub_1DF226EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerStateDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F3F0, &qword_1DF23C6A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF226EF4();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF226EF4()
{
  result = qword_1ECE0F3F8;
  if (!qword_1ECE0F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3F8);
  }

  return result;
}

uint64_t LedgerStateDefinition.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DF22AD20();
}

uint64_t LedgerStateDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t LedgerStateDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F400, &qword_1DF23C6A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF226EF4();
  sub_1DF22B730();
  if (!v2)
  {
    v11 = sub_1DF22B4A0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF227110()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF22715C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DF22AD20();
}

uint64_t sub_1DF227164()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF2271C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F3F0, &qword_1DF23C6A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF226EF4();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DF227300(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620();
  }
}

uint64_t LedgerRecipe.project.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LedgerRecipe.project.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LedgerRecipe.events.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t LedgerRecipe.transitions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

LighthouseBackground::LedgerRecipe __swiftcall LedgerRecipe.init(project:events:transitions:)(Swift::String project, Swift::OpaquePointer events, Swift::OpaquePointer transitions)
{
  *v3 = project;
  *(v3 + 16) = events;
  *(v3 + 24) = transitions;
  result.project = project;
  result.transitions = transitions;
  result.events = events;
  return result;
}

uint64_t sub_1DF22746C()
{
  v1 = 0x73746E657665;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656A6F7270;
  }
}

uint64_t sub_1DF2274CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF227F60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF2274F4(uint64_t a1)
{
  v2 = sub_1DF227790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF227530(uint64_t a1)
{
  v2 = sub_1DF227790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerRecipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F408, &qword_1DF23C6B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF227790();
  sub_1DF22B740();
  LOBYTE(v19) = 0;
  v12 = v17;
  sub_1DF22B580();
  if (!v12)
  {
    v13 = v15;
    v19 = v16;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F418, &qword_1DF23C6B8);
    sub_1DF227B30(&qword_1ECE0F420, sub_1DF2277E4);
    sub_1DF22B5C0();
    v19 = v13;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
    sub_1DF1663F4();
    sub_1DF22B5C0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF227790()
{
  result = qword_1ECE0F410;
  if (!qword_1ECE0F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F410);
  }

  return result;
}

unint64_t sub_1DF2277E4()
{
  result = qword_1ECE0F428;
  if (!qword_1ECE0F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F428);
  }

  return result;
}

uint64_t LedgerRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F430, &qword_1DF23C6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF227790();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F418, &qword_1DF23C6B8);
  v20 = 1;
  sub_1DF227B30(&qword_1ECE0F438, sub_1DF227BA8);
  sub_1DF22B4E0();
  v18 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
  v20 = 2;
  sub_1DF1666C0();
  sub_1DF22B4E0();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v15 = v18;
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF227B30(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0F418, &qword_1DF23C6B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF227BA8()
{
  result = qword_1ECE0F440;
  if (!qword_1ECE0F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F440);
  }

  return result;
}

unint64_t sub_1DF227BFC(void *a1)
{
  a1[1] = sub_1DF227BA8();
  a1[2] = sub_1DF2277E4();
  result = sub_1DF227C34();
  a1[3] = result;
  return result;
}

unint64_t sub_1DF227C34()
{
  result = qword_1ECE0F448;
  if (!qword_1ECE0F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F448);
  }

  return result;
}

unint64_t sub_1DF227C8C()
{
  result = qword_1ECE0F450;
  if (!qword_1ECE0F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F450);
  }

  return result;
}

unint64_t sub_1DF227D54()
{
  result = qword_1ECE0F458;
  if (!qword_1ECE0F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F458);
  }

  return result;
}

unint64_t sub_1DF227DAC()
{
  result = qword_1ECE0F460;
  if (!qword_1ECE0F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F460);
  }

  return result;
}

unint64_t sub_1DF227E04()
{
  result = qword_1ECE0F468;
  if (!qword_1ECE0F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F468);
  }

  return result;
}

unint64_t sub_1DF227E5C()
{
  result = qword_1ECE0F470;
  if (!qword_1ECE0F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F470);
  }

  return result;
}

unint64_t sub_1DF227EB4()
{
  result = qword_1ECE0F478;
  if (!qword_1ECE0F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F478);
  }

  return result;
}

unint64_t sub_1DF227F0C()
{
  result = qword_1ECE0F480;
  if (!qword_1ECE0F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F480);
  }

  return result;
}

uint64_t sub_1DF227F60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A6F7270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697469736E617274 && a2 == 0xEB00000000736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF22B620();

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

uint64_t sub_1DF228078()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF2281A4()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF2282A0()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF22838C()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF2284C8()
{
  sub_1DF22AD20();
}

uint64_t sub_1DF2285FC()
{
  sub_1DF22AD20();
}

uint64_t sub_1DF228790()
{
  sub_1DF22AD20();
}

uint64_t sub_1DF228924()
{
  sub_1DF22AD20();
}

uint64_t sub_1DF228AD8()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF228BD0()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF228D00()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF228E38(uint64_t a1, char a2)
{
  sub_1DF22B6C0();
  MEMORY[0x1E12D01B0](qword_1DF23CD88[a2]);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF228E88()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF228FB0()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF2290B8()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF22922C()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF229374()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

unint64_t OnDemandError.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5264696C61766E69;
  v3 = 0x61766E496B736174;
  v4 = 0x6E6E75526B736174;
  if (v1 != 4)
  {
    v4 = 0x646E65506B736174;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x696C756465686373;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

LighthouseBackground::OnDemandError_optional __swiftcall OnDemandError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF2295C8()
{
  *v0;
  *v0;
  sub_1DF22AD20();
}

void sub_1DF229700(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00747365757165;
  v4 = 0x5264696C61766E69;
  v5 = 0xEB0000000064696CLL;
  v6 = 0x61766E496B736174;
  v7 = 0x6E6E75526B736174;
  if (v2 != 4)
  {
    v7 = 0x646E65506B736174;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xEB00000000676E69;
  }

  if (v2 != 1)
  {
    v4 = 0x696C756465686373;
    v3 = 0xEF726F727245676ELL;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DF23D6C0;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t OnDemandResult.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DF22B420();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1DF229940()
{
  result = qword_1ECE0F488;
  if (!qword_1ECE0F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F488);
  }

  return result;
}

unint64_t sub_1DF2299C8()
{
  result = qword_1ECE0F4A0;
  if (!qword_1ECE0F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F4A0);
  }

  return result;
}

uint64_t sub_1DF229A1C()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF229AA0()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF229AFC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF22B420();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_1DF229C88()
{
  result = qword_1ECE0F4B8;
  if (!qword_1ECE0F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F4B8);
  }

  return result;
}

unint64_t sub_1DF229CDC()
{
  result = qword_1ECE0F4C0;
  if (!qword_1ECE0F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F4C0);
  }

  return result;
}

uint64_t RemoteProcessInfo.auditToken.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t RemoteProcessInfo.auditToken.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t RemoteProcessInfo.bundleIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t RemoteProcessInfo.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void RemoteProcessInfo.init(auditToken:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v18.val = a1;
  *&v18.val[2] = a2;
  *&v18.val[4] = a3;
  *&v18.val[6] = a4;
  v10 = audit_token_to_pid(&v18);
  *v18.val = a1;
  *&v18.val[2] = a2;
  *&v18.val[4] = a3;
  *&v18.val[6] = a4;
  v11 = audit_token_to_pidversion(&v18);
  *v18.val = a1;
  *&v18.val[2] = a2;
  *&v18.val[4] = a3;
  *&v18.val[6] = a4;
  v12 = SecTaskCreateWithAuditToken(0, &v18);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v14 = SecTaskCopySigningIdentifier(v12, 0);
  if (!v14)
  {

LABEL_9:
    v17 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  v15 = v14;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_9;
  }

  *v18.val = 0;
  *&v18.val[2] = 0;
  sub_1DF22ACB0();

  v17 = *v18.val;
  v16 = *&v18.val[2];
  if (!*&v18.val[2])
  {
    v17 = 0;
  }

LABEL_10:
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v10;
  *(a5 + 36) = v11;
  *(a5 + 40) = v17;
  *(a5 + 48) = v16;
}

Swift::String_optional __swiftcall RemoteProcessInfo.valueString(forEntitlement:)(Swift::String forEntitlement)
{
  v2 = v1[1];
  *v12.val = *v1;
  *&v12.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &v12);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_1DF22ACA0();
  v6 = SecTaskCopyValueForEntitlement(v4, v5, 0);

  if (!v6)
  {

LABEL_7:
    v3 = 0;
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  type metadata accessor for CFString(0);
  swift_unknownObjectRetain();
  if (!swift_dynamicCastUnknownClass())
  {

    swift_unknownObjectRelease_n();
    goto LABEL_7;
  }

  v7 = sub_1DF22ACC0();
  v9 = v8;

  swift_unknownObjectRelease_n();
  v10 = v9;
  v3 = v7;
LABEL_9:
  result.value._object = v10;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::OpaquePointer_optional __swiftcall RemoteProcessInfo.valueStringArray(forEntitlement:)(Swift::String forEntitlement)
{
  v2 = v1[1];
  *v8.val = *v1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &v8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = v3;
  v6 = sub_1DF22ACA0();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

  if (!v7)
  {
    goto LABEL_9;
  }

  type metadata accessor for CFArray(0);
  if (!swift_dynamicCastUnknownClass())
  {

    swift_unknownObjectRelease();
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_9:

    goto LABEL_10;
  }

  *v8.val = 0;
  swift_unknownObjectRetain();
  sub_1DF22AE80();
  swift_unknownObjectRelease_n();

  v3 = *v8.val;
  if (!*v8.val)
  {
    goto LABEL_10;
  }

LABEL_11:
  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::Bool_optional __swiftcall RemoteProcessInfo.valueBool(forEntitlement:)(Swift::String forEntitlement)
{
  v2 = v1[1];
  *v10.val = *v1;
  *&v10.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &v10);
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  v5 = sub_1DF22ACA0();
  v6 = SecTaskCopyValueForEntitlement(v4, v5, 0);

  if (!v6)
  {
    goto LABEL_9;
  }

  type metadata accessor for CFBoolean(0);
  if (!swift_dynamicCastUnknownClass())
  {

    swift_unknownObjectRelease();
    return 2;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_9:

    return 2;
  }

  v8 = v7;
  LOBYTE(v10.val[0]) = 2;
  swift_unknownObjectRetain();
  MEMORY[0x1E12CFA50](v8, &v10);
  swift_unknownObjectRelease_n();

  result.value = v10.val[0];
  if (LOBYTE(v10.val[0]) == 2)
  {
    return 2;
  }

  return result;
}

unint64_t RemoteProcessInfo.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 36);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  sub_1DF22B300();

  v5 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v5);

  MEMORY[0x1E12CF820](0x726576646970202CLL, 0xEE00203A6E6F6973);
  v6 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v6);

  MEMORY[0x1E12CF820](0xD000000000000014, 0x80000001DF23D840);
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v3)
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x1E12CF820](v7, v3);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1DF22A3E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1DF22A440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}