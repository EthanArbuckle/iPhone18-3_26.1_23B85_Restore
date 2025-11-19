uint64_t sub_1D2356284()
{
  v1[3] = v0;
  v2 = sub_1D2873CB8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428);
  v1[9] = swift_task_alloc();
  v3 = sub_1D28729E8();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = sub_1D2878568();
  v1[14] = sub_1D2878558();
  v4 = swift_task_alloc();
  v1[15] = v4;
  *v4 = v1;
  v4[1] = sub_1D235643C;

  return sub_1D235EAB0();
}

uint64_t sub_1D235643C(uint64_t a1)
{
  v2 = *v1;
  v2[16] = a1;

  v4 = sub_1D28784F8();
  v2[17] = v4;
  v2[18] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2356588, v4, v3);
}

uint64_t sub_1D2356588()
{
  v1 = v0[16];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[3];
  v3 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_modelAssertion;
  v0[19] = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_modelAssertion;
  if (*(v2 + v3))
  {
    goto LABEL_3;
  }

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_1D28780A8();
    v10 = v9;

    if (v8 == 0xD000000000000040 && 0x80000001D28B2080 == v10)
    {

      goto LABEL_3;
    }

    v12 = sub_1D2879618();

    if (v12)
    {
LABEL_3:

LABEL_4:

LABEL_5:

      v4 = v0[1];

      return v4();
    }
  }

  if (qword_1ED8A3548 != -1)
  {
    swift_once();
  }

  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430);
  v17 = __swift_project_value_buffer(v16, qword_1ED8A3550);
  os_unfair_lock_lock(v17);
  sub_1D22BD1D0(v17 + *(v16 + 28), v15, &qword_1EC6DA428);
  os_unfair_lock_unlock(v17);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_1D22BD238(v0[9], &qword_1EC6DA428);
  }

  else
  {
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[10];
    (*(v19 + 32))(v18, v0[9], v20);
    v21 = sub_1D28729C8();
    v23 = v22;
    (*(v19 + 8))(v18, v20);
    if (v23)
    {
      if (v21 == 0xD000000000000032 && v23 == 0x80000001D28B2040)
      {
      }

      else
      {
        v24 = sub_1D2879618();

        if ((v24 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      sub_1D28725B8();
      v25 = sub_1D2873CA8();
      v26 = sub_1D2878A38();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[8];
      v29 = v0[4];
      v30 = v0[5];
      if (v27)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1D226E000, v25, v26, "Skipping model assertion for FedAutoEvalPlugin.", v31, 2u);
        MEMORY[0x1D38A3520](v31, -1, -1);
      }

      (*(v30 + 8))(v28, v29);
      goto LABEL_5;
    }
  }

LABEL_27:
  v0[2] = v1;
  v32 = swift_task_alloc();
  v0[20] = v32;
  v33 = sub_1D28731D8();
  *v32 = v0;
  v32[1] = sub_1D23569D0;
  v34 = MEMORY[0x1E69DFF90];

  return MEMORY[0x1EEE4F990](v33, v34);
}

uint64_t sub_1D23569D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = v4[17];
    v6 = v4[18];
    v7 = sub_1D2356C6C;
  }

  else
  {
    v4[22] = a1;
    v5 = v4[17];
    v6 = v4[18];
    v7 = sub_1D2356AF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2356AF8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[3];

  *(v3 + v2) = v1;

  sub_1D28725B8();
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A38();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "Acquired model assertion.", v10, 2u);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v7, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2356C6C()
{
  v1 = v0[21];

  sub_1D28725B8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[21];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to acquire model assertion: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2356E38()
{
  v1[2] = v0;
  v2 = sub_1D2873CB8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1D2878568();
  v1[6] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2356F2C, v4, v3);
}

uint64_t sub_1D2356F2C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_modelAssertion;
  v0[9] = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_modelAssertion;
  v3 = *(v1 + v2);
  v0[10] = v3;
  if (v3)
  {
    sub_1D2870F78();
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1D2357024;

    return MEMORY[0x1EEE1F4D0]();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D2357024()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D2357144, v3, v2);
}

uint64_t sub_1D2357144()
{
  v1 = v0[9];
  v2 = v0[2];

  *(v2 + v1) = 0;

  sub_1D28725B8();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A38();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D226E000, v3, v4, "Released model assertion.", v9, 2u);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D2357288()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725B8();
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A38();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "Cancel generation.", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled) = 1;
  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask))
  {
    sub_1D2870F78();
    sub_1D28786B8();
  }

  v9 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask;
  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask))
  {
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    sub_1D28786B8();

    *(v1 + v9) = 0;
  }

  v10 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptRewriteTask;
  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptRewriteTask))
  {
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    sub_1D28786B8();

    *(v1 + v10) = 0;
  }

  swift_beginAccess();
  sub_1D25F51CC();
  return swift_endAccess();
}

uint64_t sub_1D23574F8()
{
  v1 = v0;
  v52 = sub_1D2872008();
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2872978();
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v41 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120);
  v11 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v41 - v12;
  v14 = *(v0 + 40);
  swift_getKeyPath();
  v62 = v14;
  sub_1D238C24C(&qword_1EC6DA420, _s22OnDeviceImageGeneratorC27GenerativePlaygroundStorageCMa);
  sub_1D2870F78();
  sub_1D28719E8();

  v15 = v14[2];
  sub_1D2870F78();

  if (v15)
  {
    v16 = sub_1D2872DD8();
  }

  else
  {
    v16 = sub_1D2872948();
    v18 = swift_allocObject();
    *(v18 + 16) = &unk_1D2883858;
    *(v18 + 24) = v1;
    v62 = &unk_1D2883860;
    v63 = v18;
    sub_1D2870F78();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
    sub_1D2878638();

    result = (*(v11 + 8))(v13, v61);
  }

  v54 = v3;
  v50 = *(v16 + 16);
  if (v50)
  {
    v19 = 0;
    v48 = v56 + 16;
    v47 = *MEMORY[0x1E69DFC78];
    v46 = v56 + 104;
    v20 = *MEMORY[0x1E69DFC68];
    v44 = *MEMORY[0x1E69DFC58];
    v45 = v20;
    v21 = *MEMORY[0x1E69DFC60];
    v42 = *MEMORY[0x1E69DFC70];
    v43 = v21;
    v59 = (v56 + 32);
    v41 = (v56 + 8);
    v22 = MEMORY[0x1E69E7CC0];
    v49 = v16;
    while (v19 < *(v16 + 16))
    {
      v61 = v22;
      v23 = v56;
      v24 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v25 = *(v56 + 72);
      (*(v56 + 16))(v10, v16 + v24 + v25 * v19, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA590);
      v26 = swift_allocObject();
      v58 = v24;
      v28 = *(v23 + 104);
      v27 = v26 + v24;
      v28(v26 + v24, v47, v4);
      v28(v27 + v25, v45, v4);
      v28(v27 + 2 * v25, v44, v4);
      v57 = 3 * v25;
      v28(v27 + 3 * v25, v43, v4);
      v53 = 4 * v25;
      v28(v27 + 4 * v25, v42, v4);
      sub_1D238C24C(&qword_1ED8A6BC8, MEMORY[0x1E69DFC80]);
      if (sub_1D2877F98() & 1) != 0 || (sub_1D2877F98() & 1) != 0 || (sub_1D2877F98() & 1) != 0 || (sub_1D2877F98() & 1) != 0 || (sub_1D2877F98())
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v29 = *v59;
        (*v59)(v60, v10, v4);
        v22 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8238(0, v22[2] + 1, 1);
          v22 = v62;
        }

        v16 = v49;
        v32 = v22[2];
        v31 = v22[3];
        if (v32 >= v31 >> 1)
        {
          sub_1D23D8238(v31 > 1, v32 + 1, 1);
          v22 = v62;
        }

        v22[2] = v32 + 1;
        result = (v29)(v22 + v58 + v32 * v25, v60, v4);
      }

      else
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        result = (*v41)(v10, v4);
        v22 = v61;
        v16 = v49;
      }

      if (v50 == ++v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v33 = v22[2];
    if (v33)
    {
      v60 = *(v56 + 16);
      v61 = v22;
      v34 = v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v35 = *(v56 + 72);
      v36 = (v56 + 8);
      v37 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = v51;
        (v60)(v51, v34, v4);
        sub_1D2872968();
        sub_1D2871EA8();
        (*v36)(v38, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1D27CC780(0, v37[2] + 1, 1, v37);
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1D27CC780(v39 > 1, v40 + 1, 1, v37);
        }

        v37[2] = v40 + 1;
        (*(v55 + 32))(v37 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v40, v54, v52);
        v34 += v35;
        --v33;
      }

      while (v33);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v37;
  }

  return result;
}

uint64_t sub_1D2357D60()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725B8();
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A38();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "Reset cancellation.", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled) = 0;
  return result;
}

uint64_t sub_1D2357EAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D2873CB8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = sub_1D2878568();
  v2[11] = sub_1D2878558();
  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v2;
  v4[1] = sub_1D2357FDC;

  return sub_1D235EAB0();
}

uint64_t sub_1D2357FDC(uint64_t a1)
{
  v2 = *v1;
  v2[13] = a1;

  v4 = sub_1D28784F8();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2358128, v4, v3);
}

uint64_t sub_1D2358128()
{
  v27 = v0;
  if (!v0[13])
  {
LABEL_6:

    v4 = v0[1];

    return v4();
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v1 = sub_1D2878A58();
  v2 = sub_1D2878068();
  v3 = [v1 BOOLForKey_];

  if (v3)
  {

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA570);
  v6 = *(sub_1D28718F8() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[16] = v8;
  *(v8 + 16) = xmmword_1D287F500;
  sub_1D27F9808(v8 + v7);
  sub_1D28725B8();
  sub_1D2870F68();
  v9 = sub_1D2873CA8();
  v10 = sub_1D2878A38();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  v14 = v0[4];
  v13 = v0[5];
  if (v11)
  {
    v25 = v0[4];
    v16 = v0[2];
    v15 = v0[3];
    v17 = swift_slowAlloc();
    v24 = v12;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1D23D7C84(v16, v15, &v26);
    _os_log_impl(&dword_1D226E000, v9, v10, "Will check lexicon validity of '%s'.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1D38A3520](v18, -1, -1);
    MEMORY[0x1D38A3520](v17, -1, -1);

    v19 = *(v13 + 8);
    v19(v24, v25);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v0[17] = v19;
  v20 = swift_task_alloc();
  v0[18] = v20;
  *v20 = v0;
  v20[1] = sub_1D23584BC;
  v22 = v0[2];
  v21 = v0[3];
  v23 = MEMORY[0x1E69E7CD0];

  return MEMORY[0x1EEE4F540](v22, v21, v8, v23);
}

uint64_t sub_1D23584BC(char a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    v7 = sub_1D2358984;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    v7 = sub_1D2358604;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2358604()
{
  v29 = v0;
  v1 = *(v0 + 160);

  if (v1)
  {
    sub_1D28725B8();
    sub_1D2870F68();
    v2 = sub_1D2873CA8();
    v3 = sub_1D2878A38();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 136);
    v6 = *(v0 + 56);
    v7 = *(v0 + 32);
    if (v4)
    {
      v25 = *(v0 + 56);
      v26 = *(v0 + 136);
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1D23D7C84(v9, v8, v28);
      _os_log_impl(&dword_1D226E000, v2, v3, "Did check lexicon validity of '%s'.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);

      v26(v25, v7);
    }

    else
    {

      v5(v6, v7);
    }

    v22 = *(v0 + 8);
  }

  else
  {
    sub_1D28725B8();
    sub_1D2870F68();
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A38();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 136);
    v16 = *(v0 + 64);
    v17 = *(v0 + 32);
    if (v14)
    {
      v27 = *(v0 + 136);
      v19 = *(v0 + 16);
      v18 = *(v0 + 24);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1D23D7C84(v19, v18, v28);
      _os_log_impl(&dword_1D226E000, v12, v13, "Unsupported language for '%s'.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38A3520](v21, -1, -1);
      MEMORY[0x1D38A3520](v20, -1, -1);

      v27(v16, v17);
    }

    else
    {

      v15(v16, v17);
    }

    sub_1D22BCE64();
    swift_allocError();
    *v23 = xmmword_1D287CB60;
    *(v23 + 16) = -96;
    swift_willThrow();

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_1D2358984()
{
  v24 = v0;
  v1 = v0[19];

  sub_1D28725B8();
  sub_1D2870F68();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v21 = v0[6];
    v22 = v0[17];
    v6 = v0[3];
    v20 = v0[4];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1D23D7C84(v7, v6, &v23);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to check lexicon validity of '%s'. %@", v8, 0x16u);
    sub_1D22BD238(v9, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v22(v21, v20);
  }

  else
  {
    v13 = v0[17];
    v14 = v0[6];
    v15 = v0[4];

    v13(v14, v15);
  }

  v16 = v0[19];
  sub_1D22BCE64();
  swift_allocError();
  *v17 = xmmword_1D287CB60;
  *(v17 + 16) = -96;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D2358C20(uint64_t a1)
{
  v34[1] = a1;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v34[0] = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  v36 = v1;
  v16 = v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  swift_beginAccess();
  v17 = type metadata accessor for ImageGeneration.GenerationParameters();
  v18 = 1;
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    (*(v3 + 16))(v15, v16 + *(v17 + 52), v2);
    v18 = 0;
  }

  v19 = v3;
  v20 = *(v3 + 56);
  v20(v15, v18, 1, v2);
  sub_1D2871FC8();
  v20(v12, 0, 1, v2);
  v21 = *(v5 + 48);
  sub_1D22BD1D0(v15, v7, &qword_1EC6D9A30);
  sub_1D22BD1D0(v12, &v7[v21], &qword_1EC6D9A30);
  v22 = *(v19 + 48);
  if (v22(v7, 1, v2) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6D9A30);
    sub_1D22BD238(v15, &qword_1EC6D9A30);
    if (v22(&v7[v21], 1, v2) == 1)
    {
      sub_1D22BD238(v7, &qword_1EC6D9A30);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v23 = v35;
  sub_1D22BD1D0(v7, v35, &qword_1EC6D9A30);
  if (v22(&v7[v21], 1, v2) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6D9A30);
    sub_1D22BD238(v15, &qword_1EC6D9A30);
    (*(v19 + 8))(v23, v2);
LABEL_8:
    sub_1D22BD238(v7, &unk_1EC6E1D60);
    goto LABEL_9;
  }

  v27 = v34[0];
  (*(v19 + 32))(v34[0], &v7[v21], v2);
  sub_1D238C24C(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v28 = sub_1D2877F98();
  v29 = *(v19 + 8);
  v29(v27, v2);
  sub_1D22BD238(v12, &qword_1EC6D9A30);
  sub_1D22BD238(v15, &qword_1EC6D9A30);
  v29(v23, v2);
  sub_1D22BD238(v7, &qword_1EC6D9A30);
  if (v28)
  {
LABEL_12:
    v30 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_emojiConfiguration;
    v31 = v36;
    swift_beginAccess();
    v32 = sub_1D28734C8();
    if (!(*(*(v32 - 8) + 48))(v31 + v30, 1, v32))
    {
      sub_1D2873458();
    }

    return swift_endAccess();
  }

LABEL_9:
  v24 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configuration;
  v25 = v36;
  swift_beginAccess();
  v26 = sub_1D2873068();
  if (!(*(*(v26 - 8) + 48))(v25 + v24, 1, v26))
  {
    sub_1D2872F98();
  }

  return swift_endAccess();
}

uint64_t sub_1D23591EC()
{
  v1[5] = v0;
  v2 = sub_1D2872008();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for ImageGeneration.GenerationParameters();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_1D2878568();
  v1[13] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2359374, v5, v4);
}

uint64_t sub_1D2359374()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v3, &qword_1EC6DA490);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(v0[9], &qword_1EC6DA490);
    return sub_1D2879398();
  }

  else
  {
    v7 = v0[12];
    v8 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    sub_1D238C294(v0[9], v7, type metadata accessor for ImageGeneration.GenerationParameters);
    v12 = *(v8 + 52);
    sub_1D2871FC8();
    LOBYTE(v7) = MEMORY[0x1D389AA00](v7 + v12, v9);
    (*(v10 + 8))(v9, v11);
    if (v7)
    {
      v13 = swift_task_alloc();
      v0[16] = v13;
      *v13 = v0;
      v13[1] = sub_1D23595D8;
      v14 = v0[12];

      return sub_1D2368C5C(v14);
    }

    else
    {
      v15 = swift_task_alloc();
      v0[18] = v15;
      *v15 = v0;
      v15[1] = sub_1D23597B8;
      v16 = v0[12];

      return sub_1D236A8E0(v16);
    }
  }
}

uint64_t sub_1D23595D8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1D23598F4;
  }

  else
  {
    v5 = sub_1D2359714;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2359714()
{
  v1 = *(v0 + 96);

  sub_1D238DA5C(v1, type metadata accessor for ImageGeneration.GenerationParameters);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D23597B8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1D2359998;
  }

  else
  {
    v5 = sub_1D238DC90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23598F4()
{
  v1 = *(v0 + 96);

  sub_1D238DA5C(v1, type metadata accessor for ImageGeneration.GenerationParameters);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2359998()
{
  v1 = *(v0 + 96);

  sub_1D238DA5C(v1, type metadata accessor for ImageGeneration.GenerationParameters);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2359A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_1D2872008();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_1D2873C48();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = sub_1D2873C28();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v11 = type metadata accessor for ImageGeneration.GenerationParameters();
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = sub_1D2878568();
  v7[31] = sub_1D2878558();
  v13 = sub_1D28784F8();
  v7[32] = v13;
  v7[33] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D2359CBC, v13, v12);
}

uint64_t sub_1D2359CBC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 96);
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  *(v0 + 272) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v3, &qword_1EC6DA490);
  v6 = *(v2 + 48);
  *(v0 + 280) = v6;
  *(v0 + 288) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_1D22BD238(*(v0 + 200), &qword_1EC6DA490);
    return sub_1D2879398();
  }

  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  v13 = *(v0 + 96);
  sub_1D238C294(*(v0 + 200), v8, type metadata accessor for ImageGeneration.GenerationParameters);
  v14 = *(v8 + *(v9 + 88));
  v15 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker;
  *(v13 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker) = v14;
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v16 = *(v12 + 8);
  v16(v10, v11);
  v17 = *(v13 + v15);
  *(v0 + 408) = v17;
  sub_1D28720E8();
  v18 = sub_1D2873C38();
  v19 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    if (v17)
    {
      v20 = "generateImagesFacePicker";
    }

    else
    {
      v20 = "generateImages";
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v18, v19, v22, v20, "", v21, 2u);
    MEMORY[0x1D38A3520](v21, -1, -1);
  }

  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v27 = *(v0 + 144);
  v28 = *(v0 + 128);

  (*(v26 + 16))(v24, v23, v25);
  sub_1D2873C88();
  swift_allocObject();
  *(v0 + 296) = sub_1D2873C78();
  v16(v27, v28);
  sub_1D2872188();
  if ((sub_1D2872108() & 1) == 0)
  {

    sub_1D22BCE64();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = -96;
    goto LABEL_12;
  }

  v29 = *(v0 + 96);
  v30 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled;
  *(v0 + 304) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled;
  if (*(v29 + v30))
  {

    sub_1D22BCEB8();
    swift_allocError();
    *v31 = 3;
LABEL_12:
    swift_willThrow();
    v33 = *(v0 + 232);
    v34 = *(v0 + 184);
    v35 = *(v0 + 160);
    v36 = *(v0 + 168);
    if (*(v0 + 408))
    {
      v37 = "generateImagesFacePicker";
    }

    else
    {
      v37 = "generateImages";
    }

    if (*(v0 + 408))
    {
      v38 = 24;
    }

    else
    {
      v38 = 14;
    }

    sub_1D237C8C0(v37, v38, 2, *(v0 + 296), *(v0 + 96));

    (*(v36 + 8))(v34, v35);
    sub_1D238DA5C(v33, type metadata accessor for ImageGeneration.GenerationParameters);

    v39 = *(v0 + 8);

    return v39();
  }

  v40 = *(v0 + 232);
  v42 = *(v0 + 112);
  v41 = *(v0 + 120);
  v43 = *(v0 + 104);
  v44 = *(*(v0 + 208) + 52);
  sub_1D2871FC8();
  LOBYTE(v40) = MEMORY[0x1D389AA00](v40 + v44, v41);
  (*(v42 + 8))(v41, v43);
  if (v40)
  {
    *(v0 + 312) = sub_1D2878558();
    v46 = sub_1D28784F8();
    *(v0 + 320) = v46;
    *(v0 + 328) = v45;

    return MEMORY[0x1EEE6DFA0](sub_1D235A270, v46, v45);
  }

  else
  {
    v47 = swift_task_alloc();
    *(v0 + 384) = v47;
    *v47 = v0;
    v47[1] = sub_1D235AAD0;
    v48 = *(v0 + 88);
    v49 = *(v0 + 72);
    v50 = *(v0 + 80);
    v51 = *(v0 + 56);
    v52 = *(v0 + 64);
    v53 = *(v0 + 48);

    return sub_1D238A81C(v53, v51, v52, v49, v50, v48);
  }
}

uint64_t sub_1D235A270()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  sub_1D22BD1D0(*(v0 + 96) + *(v0 + 272), v3, &qword_1EC6DA490);
  if (v1(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 192);

    sub_1D22BD238(v4, &qword_1EC6DA490);
    sub_1D22BCE64();
    v5 = swift_allocError();
    *v6 = xmmword_1D2883040;
    *(v6 + 16) = -96;
    swift_willThrow();
    *(v0 + 376) = v5;
    v7 = *(v0 + 256);
    v8 = *(v0 + 264);

    return MEMORY[0x1EEE6DFA0](sub_1D235A8A8, v7, v8);
  }

  else
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 96);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);
    v20 = *(v0 + 48);
    sub_1D238C294(*(v0 + 192), v9, type metadata accessor for ImageGeneration.GenerationParameters);
    v14 = sub_1D2878558();
    *(v0 + 336) = v14;
    v15 = swift_task_alloc();
    *(v0 + 344) = v15;
    *(v15 + 16) = v10;
    *(v15 + 24) = 0;
    *(v15 + 32) = v9;
    *(v15 + 40) = v20;
    *(v15 + 56) = v11;
    *(v15 + 64) = v13;
    *(v15 + 72) = v12;
    v16 = swift_task_alloc();
    *(v0 + 352) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498);
    *v16 = v0;
    v16[1] = sub_1D235A4DC;
    v18 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 40, v14, v18, 0xD000000000000056, 0x80000001D28B2180, sub_1D238C2FC, v15, v17);
  }
}

uint64_t sub_1D235A4DC()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_1D235A800;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_1D235A600;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D235A600()
{
  v1 = v0[28];

  v0[46] = v0[5];
  sub_1D238DA5C(v1, type metadata accessor for ImageGeneration.GenerationParameters);
  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1D235A68C, v2, v3);
}

uint64_t sub_1D235A68C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 408);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v12 = *(v0 + 368);
  v7 = *(v0 + 96);

  if (v2)
  {
    v8 = "generateImagesFacePicker";
  }

  else
  {
    v8 = "generateImages";
  }

  if (v2)
  {
    v9 = 24;
  }

  else
  {
    v9 = 14;
  }

  sub_1D237C8C0(v8, v9, 2, v1, v7);

  (*(v6 + 8))(v4, v5);
  sub_1D238DA5C(v3, type metadata accessor for ImageGeneration.GenerationParameters);

  v10 = *(v0 + 8);

  return v10(v12);
}

uint64_t sub_1D235A800()
{
  v1 = v0[28];

  sub_1D238DA5C(v1, type metadata accessor for ImageGeneration.GenerationParameters);
  v0[47] = v0[45];
  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1D235A8A8, v2, v3);
}

uint64_t sub_1D235A8A8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  v3 = *(v0 + 96);

  if (*(v3 + v2))
  {
    sub_1D2878538();
    sub_1D238C24C(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v4 = swift_allocError();
    sub_1D2877E68();
    sub_1D22BCE64();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = 0;
    *(v5 + 16) = 16;
    swift_willThrow();
  }

  else
  {
    swift_willThrow();
  }

  v6 = *(v0 + 232);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  if (*(v0 + 408))
  {
    v10 = "generateImagesFacePicker";
  }

  else
  {
    v10 = "generateImages";
  }

  if (*(v0 + 408))
  {
    v11 = 24;
  }

  else
  {
    v11 = 14;
  }

  sub_1D237C8C0(v10, v11, 2, *(v0 + 296), *(v0 + 96));

  (*(v9 + 8))(v7, v8);
  sub_1D238DA5C(v6, type metadata accessor for ImageGeneration.GenerationParameters);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D235AAD0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = v4[32];
    v6 = v4[33];
    v7 = sub_1D235AD6C;
  }

  else
  {
    v4[50] = a1;
    v5 = v4[32];
    v6 = v4[33];
    v7 = sub_1D235ABF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D235ABF8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 408);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v12 = *(v0 + 400);
  v7 = *(v0 + 96);

  if (v2)
  {
    v8 = "generateImagesFacePicker";
  }

  else
  {
    v8 = "generateImages";
  }

  if (v2)
  {
    v9 = 24;
  }

  else
  {
    v9 = 14;
  }

  sub_1D237C8C0(v8, v9, 2, v1, v7);

  (*(v6 + 8))(v4, v5);
  sub_1D238DA5C(v3, type metadata accessor for ImageGeneration.GenerationParameters);

  v10 = *(v0 + 8);

  return v10(v12);
}

uint64_t sub_1D235AD6C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 304);
  v3 = *(v0 + 96);

  if (*(v3 + v2))
  {
    sub_1D2878538();
    sub_1D238C24C(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v4 = swift_allocError();
    sub_1D2877E68();
    sub_1D22BCE64();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = 0;
    *(v5 + 16) = 16;
    swift_willThrow();
  }

  else
  {
    swift_willThrow();
  }

  v6 = *(v0 + 232);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  if (*(v0 + 408))
  {
    v10 = "generateImagesFacePicker";
  }

  else
  {
    v10 = "generateImages";
  }

  if (*(v0 + 408))
  {
    v11 = 24;
  }

  else
  {
    v11 = 14;
  }

  sub_1D237C8C0(v10, v11, 2, *(v0 + 296), *(v0 + 96));

  (*(v9 + 8))(v7, v8);
  sub_1D238DA5C(v6, type metadata accessor for ImageGeneration.GenerationParameters);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D235AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[70] = v5;
  v6[69] = a5;
  v6[68] = a4;
  v6[67] = a3;
  v6[66] = a2;
  v6[65] = a1;
  v7 = sub_1D2873748();
  v6[71] = v7;
  v6[72] = *(v7 - 8);
  v6[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA438);
  v6[74] = swift_task_alloc();
  v8 = sub_1D2872CD8();
  v6[75] = v8;
  v6[76] = *(v8 - 8);
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA440);
  v6[79] = swift_task_alloc();
  v9 = sub_1D28731F8();
  v6[80] = v9;
  v6[81] = *(v9 - 8);
  v6[82] = swift_task_alloc();
  v10 = sub_1D2878538();
  v6[83] = v10;
  v6[84] = *(v10 - 8);
  v6[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA448);
  v6[86] = swift_task_alloc();
  v11 = sub_1D2872A48();
  v6[87] = v11;
  v6[88] = *(v11 - 8);
  v6[89] = swift_task_alloc();
  v12 = sub_1D2873CB8();
  v6[90] = v12;
  v6[91] = *(v12 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v13 = sub_1D2872CE8();
  v6[99] = v13;
  v6[100] = *(v13 - 8);
  v6[101] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA450);
  v6[102] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA458);
  v6[103] = v14;
  v6[104] = *(v14 - 8);
  v6[105] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA460);
  v6[106] = v15;
  v6[107] = *(v15 - 8);
  v6[108] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v6[109] = swift_task_alloc();
  v16 = sub_1D2873C48();
  v6[110] = v16;
  v6[111] = *(v16 - 8);
  v6[112] = swift_task_alloc();
  v6[113] = swift_task_alloc();
  v17 = sub_1D2873C28();
  v6[114] = v17;
  v6[115] = *(v17 - 8);
  v6[116] = swift_task_alloc();
  v6[117] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v6[118] = swift_task_alloc();
  v18 = type metadata accessor for PlaygroundImage();
  v6[119] = v18;
  v6[120] = *(v18 - 8);
  v6[121] = swift_task_alloc();
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v19 = sub_1D2872008();
  v6[124] = v19;
  v6[125] = *(v19 - 8);
  v6[126] = swift_task_alloc();
  v6[127] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  v6[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v6[129] = swift_task_alloc();
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v6[132] = sub_1D2878568();
  v6[133] = sub_1D2878558();
  v20 = swift_task_alloc();
  v6[134] = v20;
  *v20 = v6;
  v20[1] = sub_1D235B77C;

  return sub_1D235EAB0();
}

uint64_t sub_1D235B77C(uint64_t a1)
{
  v2 = *v1;
  v2[135] = a1;

  v4 = sub_1D28784F8();
  v2[136] = v4;
  v2[137] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D235B8CC, v4, v3);
}

uint64_t sub_1D235B8CC()
{
  if (!*(v0 + 1080))
  {

    sub_1D22BCE64();
    swift_allocError();
    *v15 = xmmword_1D2883070;
    *(v15 + 16) = -96;
    swift_willThrow();
LABEL_25:

    v62 = *(v0 + 8);
    goto LABEL_26;
  }

  v1 = *(v0 + 560) + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  swift_beginAccess();
  v2 = type metadata accessor for ImageGeneration.GenerationParameters();
  v3 = 1;
  v70 = *(*(v2 - 8) + 48);
  if (!v70(v1, 1, v2))
  {
    (*(*(v0 + 1000) + 16))(*(v0 + 1048), v1 + *(v2 + 52), *(v0 + 992));
    v3 = 0;
  }

  v71 = v2;
  v72 = v1;
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v8 + 56);
  v10(v4, v3, 1, v9);
  sub_1D2871FC8();
  v10(v5, 0, 1, v9);
  v11 = *(v7 + 48);
  sub_1D22BD1D0(v4, v6, &qword_1EC6D9A30);
  sub_1D22BD1D0(v5, v6 + v11, &qword_1EC6D9A30);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v9) == 1)
  {
    v13 = *(v0 + 1048);
    v14 = *(v0 + 992);
    sub_1D22BD238(*(v0 + 1040), &qword_1EC6D9A30);
    sub_1D22BD238(v13, &qword_1EC6D9A30);
    if (v12(v6 + v11, 1, v14) == 1)
    {
      sub_1D22BD238(*(v0 + 1024), &qword_1EC6D9A30);
LABEL_19:
      v56 = *(v0 + 528);

      v57 = *(v56 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
      if (*(v57 + 16))
      {
        v58 = *(v0 + 976);
        v59 = *(v0 + 968);
        v60 = *(v0 + 520);
        v61 = *(*(v0 + 960) + 80);
        sub_1D238D0B8(v57 + ((v61 + 32) & ~v61), v59, type metadata accessor for PlaygroundImage);

        sub_1D238C294(v59, v58, type metadata accessor for PlaygroundImage);
        v30 = v58;
        v31 = v60;
        goto LABEL_21;
      }

      sub_1D22BCE64();
      swift_allocError();
      v64 = xmmword_1D2883060;
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v16 = *(v0 + 992);
  sub_1D22BD1D0(*(v0 + 1024), *(v0 + 1032), &qword_1EC6D9A30);
  v17 = v12(v6 + v11, 1, v16);
  v18 = *(v0 + 1048);
  v19 = *(v0 + 1040);
  v20 = *(v0 + 1032);
  if (v17 == 1)
  {
    v21 = *(v0 + 1000);
    v22 = *(v0 + 992);
    sub_1D22BD238(*(v0 + 1040), &qword_1EC6D9A30);
    sub_1D22BD238(v18, &qword_1EC6D9A30);
    (*(v21 + 8))(v20, v22);
LABEL_10:
    sub_1D22BD238(*(v0 + 1024), &unk_1EC6E1D60);
    goto LABEL_11;
  }

  v69 = *(v0 + 1024);
  v51 = *(v0 + 1008);
  v52 = *(v0 + 1000);
  v53 = *(v0 + 992);
  (*(v52 + 32))(v51, v6 + v11, v53);
  sub_1D238C24C(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v54 = sub_1D2877F98();
  v55 = *(v52 + 8);
  v55(v51, v53);
  sub_1D22BD238(v19, &qword_1EC6D9A30);
  sub_1D22BD238(v18, &qword_1EC6D9A30);
  v55(v20, v53);
  sub_1D22BD238(v69, &qword_1EC6D9A30);
  if (v54)
  {
    goto LABEL_19;
  }

LABEL_11:
  v23 = *(v0 + 528);
  v24 = *(type metadata accessor for ImageGeneration.PreviewImage(0) + 24);
  sub_1D22D7044(v23 + v24, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA468);
  if (swift_dynamicCast())
  {
    v25 = *(v0 + 984);
    v26 = *(v0 + 960);
    v27 = *(v0 + 952);
    v28 = *(v0 + 944);
    v29 = *(v0 + 520);

    (*(v26 + 56))(v28, 0, 1, v27);
    sub_1D238C294(v28, v25, type metadata accessor for PlaygroundImage);
    v30 = v25;
    v31 = v29;
LABEL_21:
    sub_1D238C294(v30, v31, type metadata accessor for PlaygroundImage);

    v62 = *(v0 + 8);
LABEL_26:

    return v62();
  }

  v32 = *(v0 + 944);
  (*(*(v0 + 960) + 56))(v32, 1, 1, *(v0 + 952));
  sub_1D22BD238(v32, &unk_1EC6DE5A0);
  sub_1D22D7044(v23 + v24, v0 + 56);
  sub_1D2872E18();
  if (!swift_dynamicCast())
  {

    sub_1D22BCE64();
    swift_allocError();
    v64 = xmmword_1D2883050;
LABEL_24:
    *v63 = v64;
    *(v63 + 16) = -96;
    swift_willThrow();

    goto LABEL_25;
  }

  v33 = *(v0 + 904);
  v34 = *(v0 + 888);
  v35 = *(v0 + 880);
  v36 = *(v0 + 488);
  *(v0 + 1104) = v36;
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v68 = *(v34 + 8);
  v68(v33, v35);
  sub_1D28720E8();
  v37 = sub_1D2873C38();
  v38 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v37, v38, v40, "generateUpscaledImage", "", v39, 2u);
    MEMORY[0x1D38A3520](v39, -1, -1);
  }

  v41 = *(v0 + 936);
  v42 = *(v0 + 928);
  v43 = *(v0 + 920);
  v44 = *(v0 + 912);
  v45 = *(v0 + 896);
  v46 = *(v0 + 880);

  (*(v43 + 16))(v42, v41, v44);
  sub_1D2873C88();
  swift_allocObject();
  *(v0 + 1112) = sub_1D2873C78();
  v68(v45, v46);
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v47 = swift_allocObject();
  *(v0 + 1120) = v47;
  *(v47 + 16) = xmmword_1D28809B0;
  *(v47 + 32) = v36;
  v48 = v70(v72, 1, v71);
  v49 = *(v0 + 872);
  if (v48)
  {
    v50 = sub_1D2871818();
    (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
  }

  else
  {
    sub_1D22BD1D0(v72 + *(v71 + 84), *(v0 + 872), &qword_1EC6D8F70);
  }

  sub_1D2870F78();
  v66 = swift_task_alloc();
  *(v0 + 1128) = v66;
  *v66 = v0;
  v66[1] = sub_1D235C5AC;
  v67 = *(v0 + 872);

  return MEMORY[0x1EEE4F510](v47, v67);
}

uint64_t sub_1D235C5AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  *(*v1 + 1136) = a1;

  sub_1D22BD238(v3, &qword_1EC6D8F70);
  v4 = *(v2 + 1096);
  v5 = *(v2 + 1088);

  return MEMORY[0x1EEE6DFA0](sub_1D235C724, v5, v4);
}

uint64_t sub_1D235C724()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  sub_1D2872CF8();
  sub_1D2878658();
  (*(v2 + 8))(v1, v3);
  *(v0 + 1144) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_lastUpdatedGenerationState;
  v4 = MEMORY[0x1E69DFE38];
  *(v0 + 1192) = *MEMORY[0x1E69DFE18];
  *(v0 + 1196) = *v4;
  *(v0 + 1200) = *MEMORY[0x1E69DFE48];
  v5 = MEMORY[0x1E69DFE40];
  *(v0 + 1204) = *MEMORY[0x1E69DFE28];
  *(v0 + 1208) = *v5;
  *(v0 + 1212) = *MEMORY[0x1E69DFE20];
  *(v0 + 1216) = *MEMORY[0x1E69DFE30];
  v6 = sub_1D2878558();
  *(v0 + 1152) = v6;
  v7 = swift_task_alloc();
  *(v0 + 1160) = v7;
  *v7 = v0;
  v7[1] = sub_1D235C8B0;
  v8 = *(v0 + 848);
  v9 = *(v0 + 816);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v9, v6, v10, v8);
}

uint64_t sub_1D235C8B0()
{
  v1 = *v0;

  v2 = *(v1 + 1096);
  v3 = *(v1 + 1088);

  return MEMORY[0x1EEE6DFA0](sub_1D235C9F4, v3, v2);
}

uint64_t sub_1D235C9F4()
{
  v168 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  if ((*(v2 + 48))(v1, 1, v3) != 1)
  {
    v6 = *(v0 + 1192);
    v7 = *(v0 + 808);
    (*(v2 + 32))(v7, v1, v3);
    v8 = (*(v2 + 88))(v7, v3);
    if (v8 == v6)
    {
      v9 = *(v0 + 1144);
      v10 = *(v0 + 808);
      v11 = *(v0 + 688);
      v12 = *(v0 + 560);
      (*(*(v0 + 800) + 96))(v10, *(v0 + 792));
      v13 = sub_1D2872908();
      v14 = *(v13 - 8);
      (*(v14 + 32))(v11, v10, v13);
      (*(v14 + 56))(v11, 0, 1, v13);
      swift_beginAccess();
      sub_1D22BD298(v11, v12 + v9, &qword_1EC6DA448);
      swift_endAccess();
      goto LABEL_75;
    }

    if (v8 == *(v0 + 1196))
    {
      v15 = *(v0 + 808);
      (*(*(v0 + 800) + 96))(v15, *(v0 + 792));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v15 + 16);
      sub_1D28725B8();
      v19 = sub_1D2873CA8();
      v20 = sub_1D2878A38();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = v21;
        *v21 = 134218240;
        *(v21 + 4) = v17;
        *(v21 + 12) = 2048;
        if (v18)
        {
          v23 = 0;
        }

        else
        {
          v23 = v16;
        }

        *(v21 + 14) = v23;
        _os_log_impl(&dword_1D226E000, v19, v20, "Final generation progress: %ld/%ld.", v21, 0x16u);
        MEMORY[0x1D38A3520](v22, -1, -1);
      }

      v24 = *(v0 + 776);
      v25 = *(v0 + 728);
      v26 = *(v0 + 720);

      (*(v25 + 8))(v24, v26);
      goto LABEL_75;
    }

    if (v8 == *(v0 + 1200))
    {
      v84 = *(v0 + 808);
      v85 = *(v0 + 712);
      v86 = *(v0 + 704);
      v87 = *(v0 + 696);
      (*(*(v0 + 800) + 96))(v84, *(v0 + 792));
      v88 = *(v86 + 32);
      v88(v85, v84, v87);
      sub_1D28725B8();
      v89 = sub_1D2873CA8();
      v90 = sub_1D2878A38();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1D226E000, v89, v90, "Generated one final image.", v91, 2u);
        MEMORY[0x1D38A3520](v91, -1, -1);
      }

      v92 = *(v0 + 768);
      v93 = *(v0 + 728);
      v94 = *(v0 + 720);
      v95 = *(v0 + 712);
      v96 = *(v0 + 696);

      (*(v93 + 8))(v92, v94);
      *(v0 + 400) = v96;
      *(v0 + 408) = &protocol witness table for GeneratedImage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
      v88(boxed_opaque_existential_1, v95, v96);
      sub_1D22BD238(v0 + 96, &qword_1EC6DA470);
      v98 = *(v0 + 392);
      *(v0 + 96) = *(v0 + 376);
      *(v0 + 112) = v98;
      *(v0 + 128) = *(v0 + 408);
      goto LABEL_75;
    }

    if (v8 == *(v0 + 1204))
    {
      v111 = *(v0 + 808);
      (*(*(v0 + 800) + 96))(v111, *(v0 + 792));
      v27 = *v111;
      sub_1D28725B8();
      v112 = v27;
      v113 = sub_1D2873CA8();
      v114 = sub_1D2878A18();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *v115 = 138412290;
        v117 = v27;
        v118 = _swift_stdlib_bridgeErrorToNSError();
        *(v115 + 4) = v118;
        *v116 = v118;
        _os_log_impl(&dword_1D226E000, v113, v114, "Final generation failed with error: %@.", v115, 0xCu);
        sub_1D22BD238(v116, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v116, -1, -1);
        MEMORY[0x1D38A3520](v115, -1, -1);
      }

      v119 = *(v0 + 864);
      v120 = *(v0 + 856);
      v121 = *(v0 + 848);
      v122 = *(v0 + 760);
      v123 = *(v0 + 728);
      v124 = *(v0 + 720);

      (*(v123 + 8))(v122, v124);
      swift_willThrow();

      (*(v120 + 8))(v119, v121);
      v29 = v0 + 96;
      goto LABEL_14;
    }

    if (v8 == *(v0 + 1208))
    {
      sub_1D28725B8();
      v129 = sub_1D2873CA8();
      v130 = sub_1D2878A38();
      v131 = os_log_type_enabled(v129, v130);
      v132 = *(v0 + 784);
      v133 = *(v0 + 728);
      v134 = *(v0 + 720);
      if (v131)
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        v136 = "Starting final generation.";
LABEL_63:
        _os_log_impl(&dword_1D226E000, v129, v130, v136, v135, 2u);
        MEMORY[0x1D38A3520](v135, -1, -1);
      }
    }

    else
    {
      if (v8 == *(v0 + 1212))
      {
LABEL_75:
        v148 = sub_1D2878558();
        *(v0 + 1152) = v148;
        v149 = swift_task_alloc();
        *(v0 + 1160) = v149;
        *v149 = v0;
        v149[1] = sub_1D235C8B0;
        v33 = *(v0 + 848);
        v30 = *(v0 + 816);
        v32 = MEMORY[0x1E69E85E0];
        v31 = v148;

        return MEMORY[0x1EEE6D9C8](v30, v31, v32, v33);
      }

      if (v8 != *(v0 + 1216))
      {
        sub_1D28725B8();
        v151 = sub_1D2873CA8();
        v152 = sub_1D2878A18();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          *v153 = 0;
          _os_log_impl(&dword_1D226E000, v151, v152, "ONDEVICE UNKNOWN final generation event", v153, 2u);
          MEMORY[0x1D38A3520](v153, -1, -1);
        }

        v132 = *(v0 + 808);
        v133 = *(v0 + 800);
        v134 = *(v0 + 792);
        v154 = *(v0 + 744);
        v155 = *(v0 + 728);
        v156 = *(v0 + 720);

        (*(v155 + 8))(v154, v156);
        goto LABEL_65;
      }

      sub_1D28725B8();
      v129 = sub_1D2873CA8();
      v130 = sub_1D2878A38();
      v150 = os_log_type_enabled(v129, v130);
      v132 = *(v0 + 752);
      v133 = *(v0 + 728);
      v134 = *(v0 + 720);
      if (v150)
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        v136 = "Final generation complete.";
        goto LABEL_63;
      }
    }

LABEL_65:
    (*(v133 + 8))(v132, v134);
    goto LABEL_75;
  }

  (*(*(v0 + 856) + 8))(*(v0 + 864), *(v0 + 848));
  sub_1D22BD1D0(v0 + 96, v0 + 176, &qword_1EC6DA470);
  if (*(v0 + 200))
  {
    sub_1D227268C((v0 + 176), v0 + 136);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v4);
    (*(v5 + 8))(v4, v5);
    v99 = *(v0 + 936);
    v100 = *(v0 + 920);
    v101 = *(v0 + 912);
    sub_1D22BD238(v0 + 96, &qword_1EC6DA470);

    __swift_destroy_boxed_opaque_existential_0(v0 + 136);
    sub_1D23884DC("generateUpscaledImage", 21, 2);

    (*(v100 + 8))(v99, v101);

    v102 = *(v0 + 8);
LABEL_70:

    return v102();
  }

  sub_1D22BD238(v0 + 176, &qword_1EC6DA470);
  sub_1D22BCEB8();
  v27 = swift_allocError();
  *v28 = 1;
  swift_willThrow();

  v29 = v0 + 96;
LABEL_14:
  v30 = sub_1D22BD238(v29, &qword_1EC6DA470);
  *(v0 + 1168) = v27;
  v34 = *(v0 + 552);
  v35 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
LABEL_85:
    __break(1u);
    return MEMORY[0x1EEE6D9C8](v30, v31, v32, v33);
  }

  if (v35 < 1)
  {

LABEL_19:
    v40 = *(v0 + 648);
    *(v0 + 496) = v27;
    v41 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    v42 = swift_dynamicCast();
    v43 = *(v40 + 56);
    if (v42)
    {
      v44 = *(v0 + 656);
      v45 = *(v0 + 648);
      v46 = *(v0 + 640);
      v47 = *(v0 + 632);
      v43(v47, 0, 1, v46);
      (*(v45 + 32))(v44, v47, v46);
      v48 = sub_1D28731E8();
      v49 = *(v48 + 16);
      if (v49)
      {
        v159 = v27;
        v50 = *(v0 + 608);
        v51 = v48 + 32;
        v52 = (v50 + 56);
        v53 = (v50 + 48);
        v164 = v50;
        v54 = (v50 + 32);
        v55 = MEMORY[0x1E69E7CC0];
        do
        {
          v56 = *(v0 + 600);
          v57 = *(v0 + 592);
          sub_1D22D7044(v51, v0 + 216);
          sub_1D227268C((v0 + 216), v0 + 256);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
          v58 = swift_dynamicCast();
          (*v52)(v57, v58 ^ 1u, 1, v56);
          if ((*v53)(v57, 1, v56) == 1)
          {
            sub_1D22BD238(*(v0 + 592), &qword_1EC6DA438);
          }

          else
          {
            v59 = *v54;
            (*v54)(*(v0 + 616), *(v0 + 592), *(v0 + 600));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_1D27CCA38(0, *(v55 + 2) + 1, 1, v55);
            }

            v61 = *(v55 + 2);
            v60 = *(v55 + 3);
            if (v61 >= v60 >> 1)
            {
              v55 = sub_1D27CCA38(v60 > 1, v61 + 1, 1, v55);
            }

            v62 = *(v0 + 616);
            v63 = *(v0 + 600);
            *(v55 + 2) = v61 + 1;
            v59(&v55[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v61], v62, v63);
          }

          v51 += 40;
          --v49;
        }

        while (v49);

        v27 = v159;
        if (*(v55 + 2))
        {
          goto LABEL_44;
        }
      }

      else
      {

        v55 = MEMORY[0x1E69E7CC0];
        if (*(MEMORY[0x1E69E7CC0] + 16))
        {
LABEL_44:
          (*(*(v0 + 608) + 16))(*(v0 + 624), &v55[(*(*(v0 + 608) + 80) + 32) & ~*(*(v0 + 608) + 80)], *(v0 + 600));

          if (sub_1D2381FD8())
          {
            v103 = *(v0 + 920);
            v160 = *(v0 + 912);
            v162 = *(v0 + 936);
            v157 = *(v0 + 656);
            v104 = *(v0 + 648);
            v105 = *(v0 + 640);
            v106 = *(v0 + 624);
            v107 = *(v0 + 608);
            v108 = *(v0 + 600);
            sub_1D22BCE64();
            swift_allocError();
            v110 = xmmword_1D28830A0;
LABEL_59:
            *v109 = v110;
            *(v109 + 16) = -96;
            swift_willThrow();

            (*(v107 + 8))(v106, v108);
            (*(v104 + 8))(v157, v105);
            sub_1D23884DC("generateUpscaledImage", 21, 2);

            (*(v103 + 8))(v162, v160);
LABEL_69:

            v102 = *(v0 + 8);
            goto LABEL_70;
          }

          if (sub_1D23821D4())
          {
            v103 = *(v0 + 920);
            v160 = *(v0 + 912);
            v162 = *(v0 + 936);
            v157 = *(v0 + 656);
            v104 = *(v0 + 648);
            v105 = *(v0 + 640);
            v106 = *(v0 + 624);
            v107 = *(v0 + 608);
            v108 = *(v0 + 600);
            sub_1D22BCE64();
            swift_allocError();
            v110 = xmmword_1D2883090;
            goto LABEL_59;
          }

          v137 = *(v0 + 656);
          v138 = *(v0 + 648);
          v139 = *(v0 + 640);
          (*(*(v0 + 608) + 8))(*(v0 + 624), *(v0 + 600));
          (*(v138 + 8))(v137, v139);
          goto LABEL_67;
        }
      }

      v30 = sub_1D28731E8();
      v125 = v30;
      v126 = *(v30 + 16);
      if (v126)
      {
        v127 = 0;
        v128 = v30 + 32;
        while (v127 < *(v125 + 16))
        {
          sub_1D22D7044(v128, v0 + 296);
          sub_1D227268C((v0 + 296), v0 + 336);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
          v30 = swift_dynamicCast();
          if (v30)
          {
            v141 = *(v0 + 920);
            v161 = *(v0 + 912);
            v163 = *(v0 + 936);
            v158 = *(v0 + 656);
            v142 = *(v0 + 648);
            v143 = *(v0 + 640);
            v144 = *(v0 + 584);
            v145 = *(v0 + 576);
            v146 = *(v0 + 568);

            (*(v145 + 8))(v144, v146);
            sub_1D22BCE64();
            swift_allocError();
            *v147 = xmmword_1D28830A0;
            *(v147 + 16) = -96;
            swift_willThrow();

            (*(v142 + 8))(v158, v143);
            sub_1D23884DC("generateUpscaledImage", 21, 2);

            (*(v141 + 8))(v163, v161);
            goto LABEL_69;
          }

          ++v127;
          v128 += 40;
          if (v126 == v127)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
        goto LABEL_85;
      }

LABEL_56:
      (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
    }

    else
    {
      v64 = *(v0 + 632);
      v43(v64, 1, 1, *(v0 + 640));
      sub_1D22BD238(v64, &qword_1EC6DA440);
      swift_getErrorValue();
      if (sub_1D2384D90())
      {
        v65 = *(v0 + 936);
        v66 = *(v0 + 920);
        v67 = *(v0 + 912);
        sub_1D22BCE64();
        swift_allocError();
        *v68 = xmmword_1D2883080;
        *(v68 + 16) = -96;
        swift_willThrow();

LABEL_68:
        sub_1D23884DC("generateUpscaledImage", 21, 2);

        (*(v66 + 8))(v65, v67);
        goto LABEL_69;
      }
    }

LABEL_67:
    v65 = *(v0 + 936);
    v66 = *(v0 + 920);
    v67 = *(v0 + 912);
    sub_1D22BCE64();
    swift_allocError();
    *v140 = v27;
    *(v140 + 8) = 0;
    *(v140 + 16) = 0;
    swift_willThrow();
    goto LABEL_68;
  }

  *(v0 + 512) = v27;
  v36 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    v37 = *(v0 + 680);
    v38 = *(v0 + 672);
    v39 = *(v0 + 664);

    (*(v38 + 8))(v37, v39);
    goto LABEL_19;
  }

  sub_1D28725B8();
  v69 = sub_1D2873CA8();
  v70 = sub_1D2878A38();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = v35;
    _os_log_impl(&dword_1D226E000, v69, v70, "Will retry to generate final image (%ld).", v71, 0xCu);
    MEMORY[0x1D38A3520](v71, -1, -1);
  }

  v72 = *(v0 + 736);
  v73 = *(v0 + 728);
  v74 = *(v0 + 720);
  v75 = *(v0 + 536);

  (*(v73 + 8))(v72, v74);
  if (v75)
  {
    v76 = *(v0 + 536);
    v165 = v27;
    v166 = 0;
    v167 = 64;
    v77 = v27;
    v76(&v165);
    sub_1D22BCDC4(v165, v166, v167);
  }

  v78 = swift_task_alloc();
  *(v0 + 1176) = v78;
  *v78 = v0;
  v78[1] = sub_1D235E0D0;
  v79 = *(v0 + 544);
  v80 = *(v0 + 536);
  v81 = *(v0 + 528);
  v82 = *(v0 + 520);

  return sub_1D235AF94(v82, v81, v80, v79, v35);
}

uint64_t sub_1D235E0D0()
{
  v2 = *v1;
  *(*v1 + 1184) = v0;

  v3 = *(v2 + 1096);
  v4 = *(v2 + 1088);
  if (v0)
  {
    v5 = sub_1D235E4C4;
  }

  else
  {
    v5 = sub_1D235E20C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D235E20C()
{
  v1 = v0[146];
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[114];

  sub_1D23884DC("generateUpscaledImage", 21, 2);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D235E4C4()
{
  v1 = v0[146];
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[114];

  sub_1D23884DC("generateUpscaledImage", 21, 2);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D235E780()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for PromptConceptAnalyzer();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = v2;
    *(v0 + 24) = v1;
    sub_1D2870F78();
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D235E7F0()
{
  swift_getKeyPath();
  sub_1D238C24C(&qword_1EC6DA420, _s22OnDeviceImageGeneratorC27GenerativePlaygroundStorageCMa);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D235E894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D238C24C(&qword_1EC6DA420, _s22OnDeviceImageGeneratorC27GenerativePlaygroundStorageCMa);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return sub_1D2870F78();
}

uint64_t sub_1D235E940()
{
  swift_getKeyPath();
  sub_1D238C24C(&qword_1EC6DA420, _s22OnDeviceImageGeneratorC27GenerativePlaygroundStorageCMa);
  sub_1D28719D8();
}

uint64_t sub_1D235EA0C()
{

  v1 = OBJC_IVAR____TtCCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator27GenerativePlaygroundStorage___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D235EAB0()
{
  v1[6] = v0;
  sub_1D2878568();
  v1[7] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D235EB48, v3, v2);
}

uint64_t sub_1D235EB48()
{
  v1 = v0[6];
  v2 = *(v1 + 40);
  swift_getKeyPath();
  v0[2] = v2;
  v0[10] = sub_1D238C24C(&qword_1EC6DA420, _s22OnDeviceImageGeneratorC27GenerativePlaygroundStorageCMa);
  sub_1D2870F78();
  sub_1D28719E8();

  v3 = *(v2 + 16);
  sub_1D2870F78();

  if (v3)
  {

    v4 = *(v1 + 40);
    swift_getKeyPath();
    v0[5] = v4;
    sub_1D2870F78();
    sub_1D28719E8();

    v5 = *(v4 + 16);
    sub_1D2870F78();

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = v0[6];
    v0[11] = sub_1D23C6F18();
    v0[12] = *(v1 + 40);
    v9 = *(v8 + 32);
    sub_1D2870F78();
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_1D235ED64;

    return sub_1D2459838(v9);
  }
}

uint64_t sub_1D235ED64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1D235F014;
  }

  else
  {
    v4[15] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1D235EE94;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D235EE94()
{
  v1 = v0[15];

  v2 = v0[12];
  v3 = v0[6];
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[3] = v2;
  sub_1D28719D8();

  v5 = *(v3 + 40);
  swift_getKeyPath();
  v0[4] = v5;
  sub_1D2870F78();
  sub_1D28719E8();

  v6 = *(v5 + 16);
  sub_1D2870F78();

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1D235F014()
{

  v1 = v0[12];
  v2 = v0[6];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v0[3] = v1;
  sub_1D28719D8();

  v4 = *(v2 + 40);
  swift_getKeyPath();
  v0[4] = v4;
  sub_1D2870F78();
  sub_1D28719E8();

  v5 = *(v4 + 16);
  sub_1D2870F78();

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1D235F184()
{
  v1 = v0;
  v2 = sub_1D28729E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
  }

  else
  {
    sub_1D2873618();
    static ExecutionContext.clientIdentity()(v4);
    v5 = MEMORY[0x1D389C080](v4);
    *(v1 + 48) = v5;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v5;
}

uint64_t sub_1D235F244(uint64_t a1, int a2)
{
  v54 = a2;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA598);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0);
  v13 = *(v12 - 8);
  v57 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - v14;
  *(v2 + 24) = 0;
  _s22OnDeviceImageGeneratorC27GenerativePlaygroundStorageCMa(0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_1D2871A18();
  *(v2 + 40) = v16;
  *(v2 + 48) = 0;
  type metadata accessor for AsyncClosureQueue();
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A8);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8650], v5);
  sub_1D2878608();
  (*(v6 + 8))(v8, v5);
  v18 = *(v13 + 32);
  v58 = v15;
  v59 = v12;
  v55 = v18;
  v56 = v13;
  v18(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream, v15, v12);
  (*(v51 + 32))(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_continuation, v11, v52);
  *(v2 + 56) = v17;
  *(v2 + 64) = 0;
  v19 = (v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_prewarmingState);
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_prewarmingState + 8) = 0;
  v20 = _s15PrewarmingStateVMa();
  *v19 = 0;
  v21 = v20[9];
  v22 = sub_1D2873C28();
  v23 = *(*(v22 - 8) + 56);
  v23(&v19[v21], 1, 1, v22);
  *&v19[v20[10]] = 0;
  v23(&v19[v20[11]], 1, 1, v22);
  *&v19[v20[12]] = 0;
  v24 = v53;
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled) = 0;
  v25 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  v26 = type metadata accessor for ImageGeneration.GenerationParameters();
  (*(*(v26 - 8) + 56))(v2 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configuration;
  v28 = sub_1D2873068();
  (*(*(v28 - 8) + 56))(v2 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_emojiConfiguration;
  v30 = sub_1D28734C8();
  (*(*(v30 - 8) + 56))(v2 + v29, 1, 1, v30);
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask) = 0;
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptRewriteTask) = 0;
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_currentPlaygroundGenerationTask) = 0;
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_emojiGenerationStrikeSizes) = &unk_1F4DBCAF0;
  v31 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_lastUpdatedGenerationState;
  v32 = sub_1D2872908();
  (*(*(v32 - 8) + 56))(v2 + v31, 1, 1, v32);
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker) = 0;
  v33 = v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpostName;
  *v33 = "ConfigToFirstImage";
  *(v33 + 8) = 18;
  *(v33 + 16) = 2;
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpost) = 0;
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_modelAssertion) = 0;
  *(v2 + 16) = v24;
  *(v2 + 32) = v54;
  v34 = objc_opt_self();
  sub_1D2870F78();
  v35 = [v34 defaultCenter];
  if (qword_1ED89F7B0 != -1)
  {
    swift_once();
  }

  v36 = qword_1ED8B0098;
  v37 = [objc_opt_self() mainQueue];
  v38 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D238DABC;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2745810;
  aBlock[3] = &block_descriptor_4;
  v39 = _Block_copy(aBlock);

  v40 = [v35 addObserverForName:v36 object:0 queue:v37 usingBlock:v39];
  _Block_release(v39);

  *(v2 + 64) = v40;
  swift_unknownObjectRelease();
  v41 = *(v2 + 56);
  v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream;
  v43 = sub_1D28785F8();
  v44 = v60;
  (*(*(v43 - 8) + 56))(v60, 1, 1, v43);
  v45 = v56 + 16;
  v47 = v58;
  v46 = v59;
  (*(v56 + 16))(v58, v41 + v42, v59);
  v48 = (*(v45 + 64) + 32) & ~*(v45 + 64);
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  v55(v49 + v48, v47, v46);
  sub_1D22AE01C(0, 0, v44, &unk_1D28838A0, v49);

  return v2;
}

uint64_t sub_1D235FA30(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1D28785F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D2878568();
  sub_1D2870F78();
  v7 = sub_1D2878558();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1D22AE31C(0, 0, v5, &unk_1D28838B0, v8);
}

uint64_t sub_1D235FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1D2878568();
  v4[7] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D235FBEC, v6, v5);
}

uint64_t sub_1D235FBEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1D235FCF0;

    return sub_1D2356E38();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D235FCF0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D235FE34, v3, v2);
}

uint64_t sub_1D235FE34()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D235FEA8()
{
  sub_1D2878568();
  sub_1D2878558();
  sub_1D28784F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unknownObjectRelease();
  sub_1D238DA5C(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_prewarmingState, _s15PrewarmingStateVMa);
  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters, &qword_1EC6DA490);
  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configuration, &qword_1EC6DA530);
  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_emojiConfiguration, &qword_1EC6DA4E8);

  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_lastUpdatedGenerationState, &qword_1EC6DA448);

  return v0;
}

uint64_t sub_1D23600CC()
{
  sub_1D235FEA8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D2360130()
{
  sub_1D2878568();
  sub_1D2878558();
  v1 = sub_1D28784F8();
  v3 = v2;

  return MEMORY[0x1EEE6DF50](v0, sub_1D23600CC, v1, v3, 0);
}

uint64_t sub_1D23601C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2360254;

  return sub_1D235EAB0();
}

uint64_t sub_1D2360254()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D2360354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1D2872008();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  sub_1D2878568();
  v5[11] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2360454, v8, v7);
}

uint64_t sub_1D2360454()
{
  sub_1D28786F8();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v6, v3);
  sub_1D2871FC8();
  LOBYTE(v5) = MEMORY[0x1D389AA00](v2, v1);
  v7 = *(v4 + 8);
  v7(v1, v3);
  v7(v2, v3);
  if (v5)
  {
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_1D236061C;

    return sub_1D2360840();
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D236061C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1D23607CC;
  }

  else
  {
    v5 = sub_1D2360758;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2360758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23607CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2360840()
{
  v1[11] = v0;
  v2 = sub_1D2873CB8();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_1D28733E8();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_1D2873C28();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = sub_1D2873C48();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  sub_1D2878568();
  v1[25] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v1[26] = v7;
  v1[27] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2360A54, v7, v6);
}

uint64_t sub_1D2360A54()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_prewarmingState;
  v0[28] = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_prewarmingState;
  v3 = (v1 + v2);
  swift_beginAccess();
  if (v3[2] & 1) != 0 || (*v3)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1D28720E8();
    sub_1D2873C18();
    v6 = sub_1D2873C38();
    v7 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v6, v7, v9, "OnDeviceImageGenerator.prewarmEmojiGenerator", "", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v11 = v0[23];
    v10 = v0[24];
    v13 = v0[21];
    v12 = v0[22];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];

    (*(v15 + 16))(v14, v13, v16);
    sub_1D2873C88();
    swift_allocObject();
    v0[29] = sub_1D2873C78();
    (*(v15 + 8))(v13, v16);
    (*(v11 + 8))(v10, v12);
    swift_beginAccess();
    sub_1D25F58C8();
    swift_endAccess();
    v0[30] = sub_1D235F184();
    v17 = swift_task_alloc();
    v0[31] = v17;
    *v17 = v0;
    v17[1] = sub_1D2360D18;

    return MEMORY[0x1EEE4F838]();
  }
}

uint64_t sub_1D2360D18()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_1D23611BC;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_1D2360E34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2360E34()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v0[33] = *(v0[11] + 48);
  sub_1D2870F78();
  sub_1D28734B8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E0058], v3);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1D2360F20;
  v5 = v0[17];

  return MEMORY[0x1EEE4F948](v5);
}

uint64_t sub_1D2360F20()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  v3 = v2[27];
  v4 = v2[26];
  if (v0)
  {
    v5 = sub_1D23613B0;
  }

  else
  {
    v5 = sub_1D23610C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23610C4()
{

  swift_beginAccess();
  sub_1D25F5C60();
  swift_endAccess();
  sub_1D23884DC("OnDeviceImageGenerator.prewarmEmojiGenerator", 44, 2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23611BC()
{

  v1 = v0[32];

  sub_1D28725B8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1D226E000, v3, v4, "Could not pre-warm KeyboardEmojiGenerator with error '%@'.", v5, 0xCu);
    sub_1D22BD238(v6, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v6, -1, -1);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];

  (*(v9 + 8))(v10, v11);
  swift_willThrow();
  sub_1D23884DC("OnDeviceImageGenerator.prewarmEmojiGenerator", 44, 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D23613B0()
{
  v1 = v0[35];

  sub_1D28725B8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1D226E000, v3, v4, "Could not pre-warm KeyboardEmojiGenerator with error '%@'.", v5, 0xCu);
    sub_1D22BD238(v6, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v6, -1, -1);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];

  (*(v9 + 8))(v10, v11);
  swift_willThrow();
  sub_1D23884DC("OnDeviceImageGenerator.prewarmEmojiGenerator", 44, 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D236159C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1D2872008();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA448);
  v3[15] = swift_task_alloc();
  v5 = sub_1D2872908();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  sub_1D2878568();
  v3[19] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[20] = v7;
  v3[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D23617A8, v7, v6);
}

uint64_t sub_1D23617A8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[7];
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_lastUpdatedGenerationState;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v3, &qword_1EC6DA448);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[6];
    sub_1D22BD238(v0[15], &qword_1EC6DA448);
    sub_1D2871FC8();
    (*(v10 + 56))(v6, 0, 1, v9);
    v12 = *(v8 + 48);
    sub_1D22BD1D0(v11, v7, &qword_1EC6D9A30);
    sub_1D22BD1D0(v6, v7 + v12, &qword_1EC6D9A30);
    v13 = *(v10 + 48);
    if (v13(v7, 1, v9) == 1)
    {
      v14 = v0[8];
      sub_1D22BD238(v0[14], &qword_1EC6D9A30);
      if (v13(v7 + v12, 1, v14) == 1)
      {
        sub_1D22BD238(v0[12], &qword_1EC6D9A30);
LABEL_15:
        v0[22] = sub_1D235F184();
        v36 = swift_task_alloc();
        v0[23] = v36;
        *v36 = v0;
        v36[1] = sub_1D2361CA8;
        v37 = v0[5];

        return MEMORY[0x1EEE4F7B8](v37);
      }
    }

    else
    {
      v23 = v0[8];
      sub_1D22BD1D0(v0[12], v0[13], &qword_1EC6D9A30);
      v24 = v13(v7 + v12, 1, v23);
      v25 = v0[13];
      v26 = v0[14];
      if (v24 != 1)
      {
        v30 = v0[12];
        v32 = v0[9];
        v31 = v0[10];
        v33 = v0[8];
        (*(v32 + 32))(v31, v7 + v12, v33);
        sub_1D238C24C(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
        v34 = sub_1D2877F98();
        v35 = *(v32 + 8);
        v35(v31, v33);
        sub_1D22BD238(v26, &qword_1EC6D9A30);
        v35(v25, v33);
        sub_1D22BD238(v30, &qword_1EC6D9A30);
        if (v34)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      v27 = v0[8];
      v28 = v0[9];
      sub_1D22BD238(v0[14], &qword_1EC6D9A30);
      (*(v28 + 8))(v25, v27);
    }

    sub_1D22BD238(v0[12], &unk_1EC6E1D60);
LABEL_11:
    v29 = swift_task_alloc();
    v0[24] = v29;
    *v29 = v0;
    v29[1] = sub_1D2361EBC;

    return sub_1D235EAB0();
  }

  v15 = v0[18];
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[15];
  v19 = v0[5];

  v20 = *(v17 + 32);
  v20(v15, v18, v16);
  v20(v19, v15, v16);
  (*(v0[17] + 56))(v0[5], 0, 1, v0[16]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D2361CA8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D2361DEC, v3, v2);
}

uint64_t sub_1D2361DEC()
{

  (*(v0[17] + 56))(v0[5], 0, 1, v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2361EBC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D2361FE4, v4, v3);
}

uint64_t sub_1D2361FE4()
{
  if (v0[25])
  {
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_1D2362134;
    v2 = v0[5];

    return MEMORY[0x1EEE4F508](v2);
  }

  else
  {

    (*(v0[17] + 56))(v0[5], 1, 1, v0[16]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D2362134()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D238DC98, v3, v2);
}

uint64_t sub_1D2362278()
{
  v1 = v0;
  v22 = sub_1D2873C28();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v20 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v21 = sub_1D2873C48();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D236259C(0xD00000000000001CLL, 0x80000001D28B2560);
  if (*(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker) == 1)
  {
    v10 = v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpostName;
    *v10 = "ConfigToFirstImageFacePicker";
    *(v10 + 8) = 28;
    *(v10 + 16) = 2;
  }

  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v11 = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpostName);
  v12 = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpostName + 16);
  v13 = sub_1D2873C38();
  v14 = sub_1D2878BB8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v12 & 1) == 0)
  {
    if (v11)
    {
LABEL_11:
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v13, v14, v17, v11, "Image Generator Configured", v16, 2u);
      MEMORY[0x1D38A3520](v16, -1, -1);
LABEL_12:

      v18 = v22;
      (*(v2 + 16))(v20, v6, v22);
      sub_1D2873C88();
      swift_allocObject();
      v19 = sub_1D2873C78();
      (*(v2 + 8))(v6, v18);
      (*(v7 + 8))(v9, v21);
      *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpost) = v19;
    }

    __break(1u);
  }

  if (v11 >> 32)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v11 & 0xFFFFF800) != 0xD800)
  {
    if (v11 >> 16 <= 0x10)
    {
      v11 = &v23;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1D236259C(uint64_t a1, unint64_t a2)
{
  v38 = a1;
  v4 = sub_1D2873C58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2873C28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2873C48();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpost))
  {
    v32 = v5;
    v33 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpost;
    v34 = v14;
    v35 = v13;
    v36 = v9;
    v37 = v8;
    sub_1D2870F78();
    sub_1D28720E8();
    v17 = v2;
    v39 = *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpostName);
    v18 = *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configToFirstImageSignpostName + 16);
    sub_1D2870F68();
    v19 = sub_1D2873C38();
    sub_1D2873C68();
    v31 = sub_1D2878BA8();
    if ((sub_1D2878EE8() & 1) == 0)
    {

      (*(v36 + 8))(v11, v37);
      (*(v34 + 8))(v16, v35);
      v21 = v2;
LABEL_15:
      *(v21 + v33) = 0;

      return;
    }

    v30 = a2;
    if (v18)
    {
      if (!(v39 >> 32))
      {
        if ((v39 & 0xFFFFF800) == 0xD800)
        {
LABEL_20:
          __break(1u);
          return;
        }

        v22 = v32;
        if (v39 >> 16 <= 0x10)
        {
          v20 = v19;
          v21 = v17;

          v39 = &v40;
          goto LABEL_11;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      if (v39)
      {
        v20 = v19;
        v21 = v2;
        v22 = v32;
LABEL_11:
        sub_1D2870F78();
        sub_1D2873C98();

        if ((*(v22 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
        {
          v23 = 0;
          v24 = 0;
          v25 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22 + 8))(v7, v4);
          v25 = "%s";
          v24 = 2;
          v23 = 1;
        }

        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v40 = v27;
        *v26 = v24;
        *(v26 + 1) = v23;
        *(v26 + 2) = 2080;
        *(v26 + 4) = sub_1D23D7C84(v38, v30, &v40);
        v28 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v20, v31, v28, v39, v25, v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1D38A3520](v27, -1, -1);
        MEMORY[0x1D38A3520](v26, -1, -1);

        (*(v36 + 8))(v11, v37);
        (*(v34 + 8))(v16, v35);
        goto LABEL_15;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1D2362A04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA510);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v329 = (v282 - v4);
  v331 = sub_1D2873758();
  v330 = *(v331 - 8);
  MEMORY[0x1EEE9AC00](v331);
  v290 = v282 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_1D2873C58();
  v337 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338);
  v304 = v282 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v303 = v282 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v301 = v282 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA500);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v317 = v282 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v313 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v315 = v282 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v316 = v282 - v16;
  v350 = sub_1D2873598();
  v349 = *(v350 - 8);
  MEMORY[0x1EEE9AC00](v350);
  v348 = v282 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA558);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v311 = v282 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v296 = v282 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA560);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v288 = v282 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v297 = v282 - v25;
  v299 = sub_1D28737A8();
  v298 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v287 = v282 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v310 = v282 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v300 = v282 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v307 = v282 - v32;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  v356 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v295 = v282 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v294 = v282 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v293 = v282 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v308 = v282 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v326 = v282 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v318 = v282 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v333 = v282 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v354 = v282 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v351 = v282 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA568);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v306 = v282 - v51;
  v347 = sub_1D2873558();
  v346 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347);
  v363 = v282 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D2873678();
  v359 = *(v53 - 8);
  v360 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v305 = v282 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v358 = v282 - v56;
  v57 = sub_1D28734C8();
  v365 = *(v57 - 8);
  v366 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v368 = v282 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = sub_1D2873C48();
  v369 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v345 = v282 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v328 = v282 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v312 = v282 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v342 = v282 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v332 = v282 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v367 = v282 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v72 = v282 - v71;
  v370 = sub_1D2873C28();
  v364 = *(v370 - 8);
  MEMORY[0x1EEE9AC00](v370);
  v336 = v282 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v335 = v282 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v344 = v282 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v334 = v282 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v343 = v282 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v362 = v282 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v282 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4E8);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v89 = v282 - v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  MEMORY[0x1EEE9AC00](v90 - 8);
  v92 = v282 - v91;
  v93 = type metadata accessor for ImageGeneration.GenerationParameters();
  v94 = *(v93 + 88);
  v361 = a1;
  LOBYTE(v94) = *(a1 + v94);
  v95 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker;
  *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker) = v94;
  v96 = *(v93 - 8);
  v97 = *(v96 + 56);
  v357 = v93;
  v320 = v97;
  v319 = v96 + 56;
  (v97)(v92, 1, 1);
  v98 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  swift_beginAccess();
  v323 = v98;
  v325 = v92;
  sub_1D22BD298(v92, v1 + v98, &qword_1EC6DA490);
  swift_endAccess();
  v99 = *(v365 + 56);
  v322 = v365 + 56;
  v321 = v99;
  v99(v89, 1, 1, v366);
  v100 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_emojiConfiguration;
  swift_beginAccess();
  v324 = v100;
  v327 = v89;
  sub_1D22BD298(v89, v1 + v100, &qword_1EC6DA4E8);
  swift_endAccess();
  sub_1D2362278();
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v101 = *(v369 + 8);
  v341 = v72;
  v102 = v72;
  v103 = v86;
  v104 = v369 + 8;
  v101(v102, v373);
  v355 = v1;
  v340 = v95;
  v105 = *(v1 + v95);
  v106 = v367;
  if (v105)
  {
    v107 = "emojiGeneratorConfigurationFacePicker";
  }

  else
  {
    v107 = "emojiGeneratorConfiguration";
  }

  sub_1D28720E8();
  v108 = sub_1D2873C38();
  v109 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    v111 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v108, v109, v111, v107, "", v110, 2u);
    MEMORY[0x1D38A3520](v110, -1, -1);
  }

  v302 = v107;

  v112 = v364 + 16;
  v339 = *(v364 + 16);
  v339(v362, v103, v370);
  v113 = sub_1D2873C88();
  swift_allocObject();
  v114 = sub_1D2873C78();
  v353 = v103;
  v115 = v114;
  v101(v106, v373);
  v367 = v101;
  v116 = v368;
  sub_1D28734B8();
  v117 = v358;
  sub_1D2873668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA570);
  v118 = *(sub_1D28718F8() - 8);
  v119 = v104;
  v120 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v121 = swift_allocObject();
  v289 = xmmword_1D287F500;
  *(v121 + 16) = xmmword_1D287F500;
  sub_1D27F9808(v121 + v120);
  v122 = v352;
  sub_1D2873658();
  if (v122)
  {

    (*(v359 + 8))(v117, v360);
    (*(v365 + 8))(v116, v366);
    return (*(v364 + 8))(v353, v370);
  }

  v291 = v113;
  v286 = v115;

  sub_1D2873548();
  v124 = v357;
  v125 = v361;
  v126 = *(v361 + v357[19]) == 1;
  v285 = 0;
  if (v126)
  {
    v127 = v306;
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D23CD714();
  }

  else
  {
    v127 = v306;
  }

  sub_1D28734D8();
  sub_1D2873518();
  sub_1D28734E8();
  (*(v359 + 16))(v305, v117, v360);
  sub_1D2873538();
  sub_1D23920F8(1, 0, 1);
  sub_1D2873508();
  v128 = sub_1D28734F8();
  v369 = v119;
  v292 = v112;
  if (v128)
  {
    v129 = sub_1D27D8C8C();
    v130 = v307;
    if (v129)
    {
      v131 = *MEMORY[0x1E69DFFF0];
      v132 = sub_1D28732C8();
      (*(*(v132 - 8) + 104))(v127, v131, v132);
    }

    else
    {
      v134 = sub_1D2391DAC();
      v132 = sub_1D28732C8();
      if (v134)
      {
        v135 = MEMORY[0x1E69DFFE8];
      }

      else
      {
        v135 = MEMORY[0x1E69DFFF8];
      }

      (*(*(v132 - 8) + 104))(v127, *v135, v132);
    }

    sub_1D28732C8();
    (*(*(v132 - 8) + 56))(v127, 0, 1, v132);
  }

  else
  {
    v133 = sub_1D28732C8();
    (*(*(v133 - 8) + 56))(v127, 1, 1, v133);
    v130 = v307;
  }

  sub_1D2873528();
  v136 = type metadata accessor for PlaygroundImage();
  v137 = *(v136 - 8);
  v138 = v137;
  v283 = *(v137 + 56);
  v282[1] = v137 + 56;
  v283(v351, 1, 1, v136);
  v307 = v124[16];
  sub_1D22BD1D0(v125 + v307, v130, &qword_1EC6E33D0);
  v139 = *(v356 + 48);
  v140 = v309;
  v356 += 48;
  v306 = v139;
  v141 = (v139)(v130, 1, v309);
  v305 = v136;
  v284 = v138;
  if (v141 == 1)
  {
    sub_1D22BD238(v130, &qword_1EC6E33D0);
    v142 = v367;
    goto LABEL_42;
  }

  v143 = v130;
  v144 = v308;
  sub_1D22EC9BC(v143, v308, &qword_1EC6DA4A8);
  v145 = v293;
  sub_1D22BD1D0(v144, v293, &qword_1EC6DA4A8);
  v146 = v140[12];
  v147 = v140[24];
  sub_1D238D058(*(v145 + v140[28]));
  if ((*(v138 + 48))(v145 + v146, 1, v136) == 1)
  {
    sub_1D22BD238(v145 + v147, &unk_1EC6E33C0);
    sub_1D22BD238(v145 + v146, &unk_1EC6DE5A0);
    sub_1D22BD238(v145, &qword_1EC6D8F70);
  }

  else
  {
    v148 = v351;
    sub_1D22BD238(v351, &unk_1EC6DE5A0);
    sub_1D238C294(v145 + v146, v148, type metadata accessor for PlaygroundImage);
    sub_1D22BD238(v145 + v147, &unk_1EC6E33C0);
    sub_1D22BD238(v145, &qword_1EC6D8F70);
    v283(v148, 0, 1, v136);
  }

  v149 = v294;
  sub_1D22BD1D0(v144, v294, &qword_1EC6DA4A8);
  v150 = v140[12];
  v151 = *(v149 + v140[20]);
  v152 = v140[24];
  sub_1D238D058(*(v149 + v140[28]));
  sub_1D22BD238(v149 + v152, &unk_1EC6E33C0);
  sub_1D22BD238(v149 + v150, &unk_1EC6DE5A0);
  sub_1D22BD238(v149, &qword_1EC6D8F70);
  if ((v151 - 3) >= 2u)
  {
    sub_1D2873468();
  }

  v153 = v295;
  sub_1D22BD1D0(v144, v295, &qword_1EC6DA4A8);
  v154 = v140[12];
  v155 = v140[24];
  sub_1D238D058(*(v153 + v140[28]));
  v156 = v296;
  sub_1D22EC9BC(v153 + v155, v296, &unk_1EC6E33C0);
  v157 = type metadata accessor for ImageGenerationPerson.SkinTone();
  if ((*(*(v157 - 8) + 48))(v156, 1, v157) == 1)
  {
    sub_1D22BD238(v153 + v154, &unk_1EC6DE5A0);
    sub_1D22BD238(v153, &qword_1EC6D8F70);
    sub_1D22BD238(v156, &unk_1EC6E33C0);
    v158 = v297;
    (*(v298 + 56))(v297, 1, 1, v299);
  }

  else
  {
    v159 = v298;
    v158 = v297;
    v160 = v299;
    *&v352 = *(v298 + 16);
    (v352)(v297, v156, v299);
    sub_1D238DA5C(v156, type metadata accessor for ImageGenerationPerson.SkinTone);
    v161 = *(v159 + 56);
    v161(v158, 0, 1, v160);
    v162 = v153 + v154;
    v163 = v159;
    sub_1D22BD238(v162, &unk_1EC6DE5A0);
    sub_1D22BD238(v153, &qword_1EC6D8F70);
    if ((*(v159 + 48))(v158, 1, v160) != 1)
    {
      v164 = *(v159 + 32);
      v165 = v161;
      v166 = v287;
      v164(v287, v158, v160);
      v167 = v288;
      (v352)(v288, v166, v160);
      v165(v167, 0, 1, v160);
      sub_1D2873478();
      (*(v163 + 8))(v166, v160);
      goto LABEL_34;
    }
  }

  sub_1D22BD238(v158, &qword_1EC6DA560);
LABEL_34:
  v142 = v367;
  v168 = v300;
  v169 = v332;
  v125 = v361;
  if (!sub_1D2391DAC())
  {
    sub_1D22BD238(v308, &qword_1EC6DA4A8);
    v173 = v362;
    goto LABEL_43;
  }

  v170 = *(v125 + 104);
  sub_1D22BD1D0(v125 + v307, v168, &qword_1EC6E33D0);
  if ((v306)(v168, 1, v140) == 1)
  {
    sub_1D22BD238(v168, &qword_1EC6E33D0);
    v171 = 0;
    v172 = 0uLL;
  }

  else
  {
    v174 = v140[12];
    v175 = v140[24];
    v176 = v168 + v140[28];
    v352 = *v176;
    v171 = *(v176 + 16);
    sub_1D22BD238(v168 + v175, &unk_1EC6E33C0);
    sub_1D22BD238(v168 + v174, &unk_1EC6DE5A0);
    sub_1D22BD238(v168, &qword_1EC6D8F70);
    v172 = v352;
  }

  v371 = v172;
  v372 = v171;
  sub_1D238A500(v170, &v371, v125 + v357[13]);
  v178 = v177;
  sub_1D238D058(v371);
  if (v178)
  {
    sub_1D28734A8();
  }

  sub_1D22BD238(v308, &qword_1EC6DA4A8);
LABEL_42:
  v173 = v362;
  v169 = v332;
LABEL_43:
  v179 = v341;
  sub_1D28720E8();
  sub_1D2873C38();
  v180 = v343;
  sub_1D2873BF8();
  v142(v179, v373);
  if (*(v355 + v340))
  {
    v181 = "assignEmojiDescriptionFacePicker";
  }

  else
  {
    v181 = "assignEmojiDescription";
  }

  v332 = v181;
  sub_1D28720E8();
  v182 = sub_1D2873C38();
  v183 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v184 = swift_slowAlloc();
    *v184 = 0;
    v185 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v182, v183, v185, v332, "", v184, 2u);
    v186 = v184;
    v125 = v361;
    MEMORY[0x1D38A3520](v186, -1, -1);
  }

  v339(v173, v180, v370);
  swift_allocObject();
  *&v352 = sub_1D2873C78();
  (v367)(v169, v373);
  sub_1D2870F68();
  sub_1D2873418();
  sub_1D2870F68();
  sub_1D2873428();
  v187 = v346;
  v188 = v311;
  v189 = v347;
  (*(v346 + 16))(v311, v363, v347);
  (*(v187 + 56))(v188, 0, 1, v189);
  sub_1D2873408();
  v190 = *(v125 + 96);
  v191 = v310;
  sub_1D22BD1D0(v125 + v307, v310, &qword_1EC6E33D0);
  if ((v306)(v191, 1, v140) == 1)
  {
    sub_1D22BD238(v191, &qword_1EC6E33D0);
    v192 = sub_1D2871818();
    v193 = v316;
    (*(*(v192 - 8) + 56))(v316, 1, 1, v192);
  }

  else
  {
    v194 = v140[12];
    v195 = v140[24];
    sub_1D238D058(*(v191 + v140[28]));
    v193 = v316;
    sub_1D22EC9BC(v191, v316, &qword_1EC6D8F70);
    sub_1D22BD238(v191 + v195, &unk_1EC6E33C0);
    sub_1D22BD238(v191 + v194, &unk_1EC6DE5A0);
  }

  v196 = v348;
  sub_1D2873588();
  v197 = v315;
  sub_1D22BD1D0(v193, v315, &qword_1EC6D8F70);
  v198 = (*(v313 + 80) + 16) & ~*(v313 + 80);
  v199 = (v314 + v198 + 7) & 0xFFFFFFFFFFFFFFF8;
  v200 = swift_allocObject();
  sub_1D22EC9BC(v197, v200 + v198, &qword_1EC6D8F70);
  *(v200 + v199) = v190;
  sub_1D2870F68();
  sub_1D2873578();
  sub_1D2873568();
  sub_1D22BD238(v193, &qword_1EC6D8F70);
  v201 = v349;
  v202 = v317;
  v203 = v196;
  v204 = v350;
  (*(v349 + 16))(v317, v203, v350);
  (*(v201 + 56))(v202, 0, 1, v204);
  sub_1D28733F8();
  sub_1D28720E8();
  v205 = sub_1D2873C38();
  v206 = v334;
  sub_1D2873C68();
  v207 = sub_1D2878BA8();
  v208 = sub_1D2878EE8();
  v209 = v355;
  v210 = v312;
  if (v208)
  {
    sub_1D2870F78();
    v211 = v301;
    sub_1D2873C98();

    v212 = v337;
    v213 = v338;
    if ((*(v337 + 88))(v211, v338) == *MEMORY[0x1E69E93E8])
    {
      v214 = "[Error] Interval already ended";
    }

    else
    {
      (*(v212 + 8))(v211, v213);
      v214 = "";
    }

    v215 = swift_slowAlloc();
    *v215 = 0;
    v206 = v334;
    v216 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v205, v207, v216, v332, v214, v215, 2u);
    MEMORY[0x1D38A3520](v215, -1, -1);
  }

  v356 = *(v364 + 8);
  (v356)(v206, v370);
  v217 = v373;
  v218 = v367;
  (v367)(v342, v373);
  v219 = v341;
  sub_1D28720E8();
  sub_1D2873C38();
  v220 = v344;
  sub_1D2873BF8();
  v218(v219, v217);
  if (*(v209 + v340))
  {
    v221 = "assignEmojiBaseConditioningImageFacePicker";
  }

  else
  {
    v221 = "assignEmojiBaseConditioningImage";
  }

  sub_1D28720E8();
  v222 = sub_1D2873C38();
  v223 = sub_1D2878BB8();
  v224 = sub_1D2878EE8();
  v225 = v318;
  if (v224)
  {
    v226 = swift_slowAlloc();
    *v226 = 0;
    v227 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v222, v223, v227, v221, "", v226, 2u);
    v228 = v226;
    v218 = v367;
    MEMORY[0x1D38A3520](v228, -1, -1);
  }

  v342 = v221;

  v339(v362, v220, v370);
  swift_allocObject();
  v364 = sub_1D2873C78();
  v218(v210, v373);
  v229 = v357;
  v230 = v361;
  v231 = v333;
  sub_1D22BD1D0(v361 + v357[14], v333, &unk_1EC6DE5A0);
  v232 = *(v284 + 48);
  v233 = v305;
  v234 = v232(v231, 1, v305);
  v235 = v329;
  if (v234 == 1)
  {
    sub_1D22BD1D0(v230 + v229[15], v225, &unk_1EC6DE5A0);
    v236 = v232(v225, 1, v233);
    v237 = v326;
    if (v236 == 1)
    {
      sub_1D22BD1D0(v351, v354, &unk_1EC6DE5A0);
      if (v232(v225, 1, v233) != 1)
      {
        sub_1D22BD238(v225, &unk_1EC6DE5A0);
      }
    }

    else
    {
      v241 = v354;
      sub_1D238C294(v225, v354, type metadata accessor for PlaygroundImage);
      v242 = v241;
      v231 = v333;
      v283(v242, 0, 1, v233);
    }

    v243 = v232(v231, 1, v233);
    v240 = v331;
    if (v243 != 1)
    {
      sub_1D22BD238(v231, &unk_1EC6DE5A0);
    }
  }

  else
  {
    v238 = v231;
    v239 = v354;
    sub_1D238C294(v238, v354, type metadata accessor for PlaygroundImage);
    v283(v239, 0, 1, v233);
    v240 = v331;
    v237 = v326;
  }

  sub_1D22BD1D0(v354, v237, &unk_1EC6DE5A0);
  if (v232(v237, 1, v233) == 1)
  {
    sub_1D22BD238(v237, &unk_1EC6DE5A0);
    (*(v330 + 56))(v235, 1, 1, v240);
    v244 = v355;
  }

  else
  {
    sub_1D262C1D0(v235);
    sub_1D238DA5C(v237, type metadata accessor for PlaygroundImage);
    v245 = v330;
    v246 = (*(v330 + 48))(v235, 1, v240);
    v244 = v355;
    if (v246 != 1)
    {
      v247 = v290;
      (*(v245 + 32))(v290, v235, v240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA578);
      v248 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v249 = swift_allocObject();
      *(v249 + 16) = v289;
      (*(v245 + 16))(v249 + v248, v247, v240);
      sub_1D2873498();
      (*(v245 + 8))(v247, v240);
      goto LABEL_74;
    }
  }

  sub_1D22BD238(v235, &qword_1EC6DA510);
LABEL_74:
  v250 = v328;
  sub_1D28720E8();
  v251 = sub_1D2873C38();
  v252 = v335;
  sub_1D2873C68();
  v253 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    sub_1D2870F78();
    v254 = v303;
    sub_1D2873C98();

    v255 = v337;
    v256 = v338;
    if ((*(v337 + 88))(v254, v338) == *MEMORY[0x1E69E93E8])
    {
      v257 = "[Error] Interval already ended";
    }

    else
    {
      (*(v255 + 8))(v254, v256);
      v257 = "";
    }

    v258 = swift_slowAlloc();
    *v258 = 0;
    v259 = v335;
    v260 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v251, v253, v260, v342, v257, v258, 2u);
    MEMORY[0x1D38A3520](v258, -1, -1);
    v252 = v259;
  }

  (v356)(v252, v370);
  (v367)(v250, v373);
  v261 = v325;
  sub_1D238D0B8(v361, v325, type metadata accessor for ImageGeneration.GenerationParameters);
  v320(v261, 0, 1, v357);
  v262 = v323;
  swift_beginAccess();
  sub_1D22BD298(v261, v244 + v262, &qword_1EC6DA490);
  swift_endAccess();
  v264 = v365;
  v263 = v366;
  v265 = v327;
  v266 = v368;
  (*(v365 + 16))(v327, v368, v366);
  v321(v265, 0, 1, v263);
  v267 = v324;
  swift_beginAccess();
  sub_1D22BD298(v265, v244 + v267, &qword_1EC6DA4E8);
  swift_endAccess();
  sub_1D28720E8();
  v268 = sub_1D2873C38();
  v269 = v336;
  sub_1D2873C68();
  v270 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    sub_1D2870F78();
    v271 = v304;
    sub_1D2873C98();

    v272 = v337;
    v273 = v338;
    if ((*(v337 + 88))(v271, v338) == *MEMORY[0x1E69E93E8])
    {
      v274 = "[Error] Interval already ended";
    }

    else
    {
      (*(v272 + 8))(v271, v273);
      v274 = "";
    }

    v275 = swift_slowAlloc();
    *v275 = 0;
    v276 = v336;
    v277 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v268, v270, v277, v302, v274, v275, 2u);
    v278 = v275;
    v269 = v276;
    MEMORY[0x1D38A3520](v278, -1, -1);
    v266 = v368;
  }

  v279 = v269;
  v280 = v370;
  v281 = v356;
  (v356)(v279, v370);
  (v367)(v345, v373);
  sub_1D22BD238(v354, &unk_1EC6DE5A0);
  v281(v344, v280);
  (*(v349 + 8))(v348, v350);
  v281(v343, v280);
  sub_1D22BD238(v351, &unk_1EC6DE5A0);
  (*(v346 + 8))(v363, v347);
  (*(v359 + 8))(v358, v360);
  (*(v264 + 8))(v266, v263);
  return (v281)(v353, v280);
}

uint64_t sub_1D23655B0(uint64_t a1)
{
  v2 = v1;
  v337 = sub_1D2873C58();
  v336 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v335 = &v328 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v356 = &v328 - v6;
  v401 = type metadata accessor for CuratedPrompt();
  v400 = *(v401 - 8);
  MEMORY[0x1EEE9AC00](v401);
  v399 = &v328 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v341 = &v328 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA560);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v331 = &v328 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v342 = &v328 - v13;
  v344 = sub_1D28737A8();
  v343 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v330 = &v328 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = type metadata accessor for PlaygroundImage();
  v373 = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378);
  v334 = &v328 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v345 = &v328 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v363 = &v328 - v19;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  v368 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v340 = &v328 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v339 = &v328 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v338 = &v328 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v358 = &v328 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v359 = &v328 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA568);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v362 = &v328 - v30;
  v367 = sub_1D2872ED8();
  v366 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367);
  v392 = &v328 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = sub_1D2873678();
  v384 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385);
  v361 = &v328 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v388 = &v328 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA510);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v332 = &v328 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v333 = (&v328 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v357 = (&v328 - v40);
  v41 = sub_1D28718F8();
  v376 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v382 = &v328 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v381 = &v328 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v407 = &v328 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v408 = &v328 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v406 = &v328 - v50;
  v417 = sub_1D2871F38();
  v346 = *(v417 - 8);
  MEMORY[0x1EEE9AC00](v417);
  v398 = &v328 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v397 = &v328 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v396 = &v328 - v55;
  v414 = sub_1D2872978();
  v391 = *(v414 - 8);
  MEMORY[0x1EEE9AC00](v414);
  v380 = &v328 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v379 = &v328 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v375 = &v328 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v360 = &v328 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v372 = &v328 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v402 = (&v328 - v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1E0);
  v369 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v395 = &v328 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v394 = &v328 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v371 = &v328 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v370 = &v328 - v74;
  v423 = sub_1D2872008();
  v75 = *(v423 - 8);
  MEMORY[0x1EEE9AC00](v423);
  v393 = &v328 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v418 = &v328 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v328 - v80;
  v405 = sub_1D2873068();
  v404 = *(v405 - 8);
  MEMORY[0x1EEE9AC00](v405);
  v403 = &v328 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ImageGeneration.GenerationParameters();
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v377 = &v328 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v365 = &v328 - v87;
  v390 = sub_1D2873CB8();
  v389 = *(v390 - 8);
  MEMORY[0x1EEE9AC00](v390);
  v329 = &v328 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v383 = &v328 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v386 = &v328 - v92;
  v415 = sub_1D2873C48();
  v416 = *(v415 - 1);
  MEMORY[0x1EEE9AC00](v415);
  v355 = &v328 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v421 = &v328 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v328 - v97;
  v413 = sub_1D2873C28();
  v412 = *(v413 - 8);
  MEMORY[0x1EEE9AC00](v413);
  v410 = &v328 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  *&v422 = &v328 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v411 = &v328 - v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA530);
  MEMORY[0x1EEE9AC00](v104 - 8);
  v106 = &v328 - v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  v108 = MEMORY[0x1EEE9AC00](v107 - 8);
  v110 = &v328 - v109;
  v111 = *(v83 + 88);
  v419 = v83;
  v420 = a1;
  LOBYTE(v111) = *(a1 + v111);
  v112 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker;
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker) = v111;
  v113 = *(v84 + 56);
  v114 = v83;
  v115 = v416;
  v354 = v84 + 56;
  v347 = v113;
  (v113)(v110, 1, 1, v114, v108);
  v116 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  swift_beginAccess();
  v350 = v116;
  v117 = v2 + v116;
  v118 = v2;
  v119 = v421;
  v352 = v110;
  sub_1D22BD298(v110, v117, &qword_1EC6DA490);
  swift_endAccess();
  v120 = *(v404 + 56);
  v349 = v404 + 56;
  v348 = v120;
  v120(v106, 1, 1, v405);
  v121 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configuration;
  swift_beginAccess();
  v351 = v121;
  v353 = v106;
  sub_1D22BD298(v106, v118 + v121, &qword_1EC6DA530);
  swift_endAccess();
  sub_1D2362278();
  sub_1D28720E8();
  sub_1D2873C38();
  v122 = v411;
  sub_1D2873BF8();
  v409 = *(v115 + 1);
  v416 = v115 + 8;
  (v409)(v98, v415);
  v123 = *(v118 + v112);
  v124 = v118;
  if (v123)
  {
    v125 = "playgroundConfigurationFacePicker";
  }

  else
  {
    v125 = "playgroundConfiguration";
  }

  v387 = v125;
  sub_1D28720E8();
  v126 = sub_1D2873C38();
  v127 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    v129 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v126, v127, v129, v387, "", v128, 2u);
    MEMORY[0x1D38A3520](v128, -1, -1);
  }

  (*(v412 + 16))(v422, v122, v413);
  sub_1D2873C88();
  swift_allocObject();
  v130 = sub_1D2873C78();
  (v409)(v119, v415);
  v131 = v420;
  v132 = v420[12];
  v133 = *(sub_1D279EFD8(v132) + 16);

  v134 = *(sub_1D279F58C(v132) + 16);

  if (!sub_1D2391DAC() && ((*(v131 + *(v419 + 80)) & 1) != 0 || v134 || v133))
  {
    v201 = v386;
    sub_1D28725B8();
    v202 = v365;
    sub_1D238D0B8(v131, v365, type metadata accessor for ImageGeneration.GenerationParameters);
    v203 = sub_1D2873CA8();
    v204 = sub_1D2878A38();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = v133 != 0;
      v206 = swift_slowAlloc();
      *v206 = 67109632;
      v207 = *(v202 + *(v419 + 80));
      sub_1D238DA5C(v202, type metadata accessor for ImageGeneration.GenerationParameters);
      *(v206 + 4) = v207;
      *(v206 + 8) = 1024;
      *(v206 + 10) = v134 != 0;
      *(v206 + 14) = 1024;
      *(v206 + 16) = v205;
      _os_log_impl(&dword_1D226E000, v203, v204, "Prompt needs personalization (%{BOOL}d, %{BOOL}d, %{BOOL}d)", v206, 0x14u);
      MEMORY[0x1D38A3520](v206, -1, -1);
    }

    else
    {
      sub_1D238DA5C(v202, type metadata accessor for ImageGeneration.GenerationParameters);
    }

    (*(v389 + 8))(v201, v390);
    sub_1D22BCE64();
    swift_allocError();
    *v227 = xmmword_1D28830A0;
    *(v227 + 16) = -96;
    swift_willThrow();

    return (*(v412 + 8))(v411, v413);
  }

  v386 = v130;
  v135 = v403;
  sub_1D2873058();
  if (qword_1ED8A4928 != -1)
  {
    goto LABEL_128;
  }

LABEL_11:
  if (os_variant_has_internal_ui())
  {
    sub_1D22BCFD0(0, &qword_1ED89CDA0);
    v136 = sub_1D2878A58();
    v137 = sub_1D2878068();
    [v136 BOOLForKey_];
  }

  sub_1D2872FD8();
  v365 = v124;
  v138 = sub_1D23574F8();
  v139 = 0;
  v140 = *(v138 + 16);
  v421 = (v75 + 16);
  *&v422 = v75 + 8;
  do
  {
    if (v140 == v139)
    {
      v150 = v383;
      sub_1D28725B8();
      v151 = v377;
      sub_1D238D0B8(v420, v377, type metadata accessor for ImageGeneration.GenerationParameters);
      sub_1D2870F68();
      v152 = sub_1D2873CA8();
      v153 = sub_1D2878A18();

      if (os_log_type_enabled(v152, v153))
      {
        LODWORD(v399) = v153;
        v154 = swift_slowAlloc();
        v392 = swift_slowAlloc();
        v430 = v392;
        *v154 = 136315394;
        v155 = sub_1D24DC8F0();
        v157 = v156;
        sub_1D238DA5C(v151, type metadata accessor for ImageGeneration.GenerationParameters);
        v158 = sub_1D23D7C84(v155, v157, &v430);

        *(v154 + 4) = v158;
        *(v154 + 6) = 2080;
        v159 = *(v138 + 16);
        if (v159)
        {
          v387 = v154;
          v388 = v152;
          v424 = MEMORY[0x1E69E7CC0];
          sub_1D23D81B8(0, v159, 0);
          v160 = v138 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
          v161 = v424;
          v419 = *(v75 + 72);
          v420 = (v346 + 48);
          v410 = (v346 + 32);
          v409 = (v346 + 8);
          v402 = (v391 + 48);
          v401 = v391 + 32;
          v416 = *(v75 + 16);
          v400 = v391 + 8;
          while (1)
          {
            v162 = v418;
            (v416)(v418, v160, v423);
            if ((sub_1D2871F78() & 1) == 0)
            {
              v169 = v407;
              sub_1D2871F58();
              v170 = v162;
              v171 = v417;
              if ((*v420)(v169, 1, v417) == 1)
              {
                sub_1D22BD238(v169, &qword_1EC6D9D58);
                sub_1D2871F98();
                v172 = v395;
                sub_1D2872958();
                v173 = v414;
                v162 = v170;
                if ((*v402)(v172, 1, v414) == 1)
                {
                  sub_1D22BD238(v172, &qword_1EC6DA1E0);
                  v174 = 0;
                  v175 = 0xE000000000000000;
                }

                else
                {
                  v188 = v380;
                  (*v401)(v380, v172, v173);
                  v189 = v162;
                  v190 = v393;
                  sub_1D2871FC8();
                  LOBYTE(v189) = MEMORY[0x1D389AA00](v189, v190);
                  (*v422)(v190, v423);
                  if (v189)
                  {
                    sub_1D2877FE8();
                    sub_1D28718C8();
                    v174 = sub_1D28780E8();
                  }

                  else
                  {
                    v174 = sub_1D2872938();
                  }

                  v175 = v191;
                  (*v400)(v188, v173);
                  v162 = v418;
                }
              }

              else
              {
                v179 = v398;
                (*v410)(v398, v169, v171);
                v174 = sub_1D2871EF8();
                v175 = v180;
                (*v409)(v179, v171);
                v162 = v170;
              }

              goto LABEL_42;
            }

            v163 = v406;
            sub_1D2871F58();
            v164 = v417;
            v415 = *v420;
            if (v415(v163, 1, v417) == 1)
            {
              sub_1D22BD238(v163, &qword_1EC6D9D58);
              sub_1D2871F98();
              v165 = v394;
              sub_1D2872958();
              v166 = v414;
              if ((*v402)(v165, 1, v414) != 1)
              {
                v181 = v379;
                (*v401)(v379, v165, v166);
                v182 = v162;
                v183 = v393;
                sub_1D2871FC8();
                LOBYTE(v182) = MEMORY[0x1D389AA00](v182, v183);
                (*v422)(v183, v423);
                v184 = v166;
                v185 = v181;
                if (v182)
                {
                  sub_1D2877FE8();
                  sub_1D28718C8();
                  v186 = sub_1D28780E8();
                }

                else
                {
                  v186 = sub_1D2872938();
                }

                v167 = v186;
                v168 = v187;
                (*v400)(v185, v184);
                v178 = v408;
                v162 = v418;
                goto LABEL_38;
              }

              sub_1D22BD238(v165, &qword_1EC6DA1E0);
              v167 = 0;
              v168 = 0xE000000000000000;
            }

            else
            {
              v176 = v396;
              (*v410)(v396, v163, v164);
              v167 = sub_1D2871EF8();
              v168 = v177;
              (*v409)(v176, v164);
            }

            v178 = v408;
LABEL_38:
            *&v425 = v167;
            *(&v425 + 1) = v168;
            MEMORY[0x1D38A0C50](10, 0xE100000000000000);
            sub_1D2871F58();
            if (v415(v178, 1, v164) == 1)
            {
              sub_1D22BD238(v178, &qword_1EC6D9D58);
              v192 = 0;
              v193 = 0xE000000000000000;
            }

            else
            {
              v194 = v397;
              (*v410)(v397, v178, v164);
              v195 = sub_1D2871ED8();
              v193 = v196;
              v197 = v194;
              v162 = v418;
              (*v409)(v197, v164);
              v192 = v195;
            }

            MEMORY[0x1D38A0C50](v192, v193);

            v175 = *(&v425 + 1);
            v174 = v425;
LABEL_42:
            (*v422)(v162, v423);
            v424 = v161;
            v199 = *(v161 + 16);
            v198 = *(v161 + 24);
            if (v199 >= v198 >> 1)
            {
              sub_1D23D81B8((v198 > 1), v199 + 1, 1);
              v161 = v424;
            }

            *(v161 + 16) = v199 + 1;
            v200 = v161 + 16 * v199;
            *(v200 + 32) = v174;
            *(v200 + 40) = v175;
            v160 += v419;
            if (!--v159)
            {

              v150 = v383;
              v152 = v388;
              v154 = v387;
              goto LABEL_67;
            }
          }
        }

        v161 = MEMORY[0x1E69E7CC0];
LABEL_67:
        v228 = MEMORY[0x1D38A0E70](v161, MEMORY[0x1E69E6158]);
        v230 = v229;

        v231 = sub_1D23D7C84(v228, v230, &v430);

        *(v154 + 14) = v231;
        _os_log_impl(&dword_1D226E000, v152, v399, "generate - style %s not in the list of available styles %s", v154, 0x16u);
        v232 = v392;
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v232, -1, -1);
        MEMORY[0x1D38A3520](v154, -1, -1);

        (*(v389 + 8))(v150, v390);
        v208 = v411;
        v135 = v403;
      }

      else
      {

        sub_1D238DA5C(v151, type metadata accessor for ImageGeneration.GenerationParameters);
        (*(v389 + 8))(v150, v390);
        v208 = v411;
      }

      sub_1D22BCE64();
      swift_allocError();
      *v233 = xmmword_1D28830B0;
      *(v233 + 16) = -96;
      swift_willThrow();

      (*(v404 + 8))(v135, v405);
      return (*(v412 + 8))(v208, v413);
    }

    if (v139 >= *(v138 + 16))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      swift_once();
      goto LABEL_11;
    }

    v124 = v423;
    (*(v75 + 16))(v81, v138 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v139++, v423);
    v141 = *(v419 + 52);
    v142 = MEMORY[0x1D389AA00](v81, v420 + v141);
    (*(v75 + 8))(v81, v124);
  }

  while ((v142 & 1) == 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA588);
  v143 = (*(v369 + 80) + 32) & ~*(v369 + 80);
  v144 = swift_allocObject();
  v145 = v420;
  sub_1D2871F98();
  sub_1D2872958();
  v146 = v370;
  sub_1D22BD1D0(v144 + v143, v370, &qword_1EC6DA1E0);
  v147 = v371;
  sub_1D22EC9BC(v146, v371, &qword_1EC6DA1E0);
  v148 = v391;
  v149 = v414;
  if ((*(v391 + 48))(v147, 1, v414) == 1)
  {
    sub_1D22BD238(v147, &qword_1EC6DA1E0);
  }

  else
  {
    v209 = *(v148 + 32);
    v209(v375, v147, v149);
    v210 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v210 = sub_1D27CCA10(0, *(v210 + 2) + 1, 1, v210);
    }

    v212 = *(v210 + 2);
    v211 = *(v210 + 3);
    if (v212 >= v211 >> 1)
    {
      v210 = sub_1D27CCA10(v211 > 1, v212 + 1, 1, v210);
    }

    *(v210 + 2) = v212 + 1;
    v209(&v210[((*(v391 + 80) + 32) & ~*(v391 + 80)) + *(v391 + 72) * v212], v375, v414);
    v135 = v403;
    v145 = v420;
  }

  v213 = v419;
  swift_setDeallocating();
  sub_1D22BD238(v144 + v143, &qword_1EC6DA1E0);
  swift_deallocClassInstance();
  sub_1D2872F78();
  v214 = v372;
  sub_1D22BD1D0(v145 + v213[14], v372, &unk_1EC6DE5A0);
  v215 = v373;
  v216 = *(v373 + 48);
  v217 = v378;
  if (v216(v214, 1, v378) == 1)
  {
    sub_1D22BD1D0(v145 + v213[15], v402, &unk_1EC6DE5A0);
    v218 = v216(v214, 1, v217) == 1;
    v219 = v214;
    v220 = v376;
    if (!v218)
    {
      sub_1D22BD238(v219, &unk_1EC6DE5A0);
    }
  }

  else
  {
    v221 = v214;
    v222 = v402;
    sub_1D238C294(v221, v402, type metadata accessor for PlaygroundImage);
    (*(v215 + 56))(v222, 0, 1, v217);
    v220 = v376;
  }

  v223 = *(v145 + v213[17]);
  if (v223)
  {
    v224 = v223;
    sub_1D24F0BA8(v135, v224, v402, sub_1D238700C, 0);
  }

  else
  {
    v225 = v360;
    sub_1D22BD1D0(v402, v360, &unk_1EC6DE5A0);
    if (v216(v225, 1, v217) == 1)
    {
      sub_1D22BD238(v225, &unk_1EC6DE5A0);
      v226 = sub_1D2873758();
      (*(*(v226 - 8) + 56))(v357, 1, 1, v226);
    }

    else
    {
      sub_1D262C1D0(v357);
      sub_1D238DA5C(v225, type metadata accessor for PlaygroundImage);
    }

    sub_1D2873028();
  }

  v235 = v388;
  sub_1D2873668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA570);
  v236 = (*(v220 + 80) + 32) & ~*(v220 + 80);
  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_1D287F500;
  sub_1D27F9808(v237 + v236);
  v238 = v374;
  sub_1D2873658();
  if (!v238)
  {

    sub_1D2872EC8();
    if (*(v145 + *(v419 + 76)) == 1)
    {
      sub_1D23CD714();
    }

    v239 = v388;
    sub_1D2872E78();
    sub_1D2872E98();
    sub_1D2872E88();
    (*(v384 + 16))(v361, v239, v385);
    sub_1D2872EB8();
    sub_1D23920F8(1, 0, 1);
    sub_1D2872E68();
    v240 = sub_1D2872E58();
    *&v422 = v216;
    if (v240)
    {
      if (sub_1D27D8C8C())
      {
        v241 = *MEMORY[0x1E69DFFF0];
        v242 = sub_1D28732C8();
        v243 = v362;
        (*(*(v242 - 8) + 104))(v362, v241, v242);
      }

      else
      {
        v245 = sub_1D2391DAC();
        v242 = sub_1D28732C8();
        if (v245)
        {
          v246 = MEMORY[0x1E69DFFE8];
        }

        else
        {
          v246 = MEMORY[0x1E69DFFF8];
        }

        v243 = v362;
        (*(*(v242 - 8) + 104))(v362, *v246, v242);
      }

      sub_1D28732C8();
      (*(*(v242 - 8) + 56))(v243, 0, 1, v242);
    }

    else
    {
      v244 = sub_1D28732C8();
      (*(*(v244 - 8) + 56))(v362, 1, 1, v244);
    }

    v247 = v419;
    v248 = v358;
    sub_1D2872EA8();
    v75 = *(v247 + 64);
    v249 = v363;
    sub_1D22BD1D0(v145 + v75, v363, &qword_1EC6E33D0);
    v250 = v368 + 48;
    v251 = v364;
    v421 = *(v368 + 48);
    v252 = (v421)(v249, 1, v364);
    v423 = 0;
    if (v252 == 1)
    {
      sub_1D22BD238(v249, &qword_1EC6E33D0);
      v253 = sub_1D2391DAC();
      v135 = v403;
      v124 = v365;
      v81 = v410;
      if (v253)
      {
        v75 = v332;
        sub_1D2873018();
        v254 = sub_1D2873758();
        v255 = (*(*(v254 - 8) + 48))(v75, 1, v254);
        sub_1D22BD238(v75, &qword_1EC6DA510);
        if (v255 != 1)
        {
          v256 = v145[13];
          v425 = 0uLL;
          v426 = 0;
          sub_1D238A500(v256, &v425, v145 + v141);
          if (v257)
          {
            sub_1D2873038();
          }
        }
      }

LABEL_109:
      if (!sub_1D2391DAC())
      {
        v294 = 0;
        v295 = v145[13];
        v296 = *(v295 + 16);
        while (v296 != v294)
        {
          if (v294 >= *(v295 + 16))
          {
            goto LABEL_127;
          }

          v297 = v399;
          sub_1D238D0B8(v295 + ((*(v400 + 80) + 32) & ~*(v400 + 80)) + *(v400 + 72) * v294++, v399, type metadata accessor for CuratedPrompt);
          v298 = *(v297 + *(v401 + 80));
          v299 = v297;
          v81 = v410;
          sub_1D238DA5C(v299, type metadata accessor for CuratedPrompt);
          if (v298 == 1)
          {
            v300 = v145[1];
            v301 = *v145 & 0xFFFFFFFFFFFFLL;
            if ((v300 & 0x2000000000000000) != 0)
            {
              v301 = HIBYTE(v300) & 0xF;
            }

            if (!v301)
            {
              v323 = v329;
              sub_1D28725B8();
              v324 = sub_1D2873CA8();
              v325 = sub_1D2878A38();
              if (os_log_type_enabled(v324, v325))
              {
                v326 = swift_slowAlloc();
                *v326 = 0;
                _os_log_impl(&dword_1D226E000, v324, v325, "Costume and expression curated prompts require personalization.", v326, 2u);
                MEMORY[0x1D38A3520](v326, -1, -1);
              }

              (*(v389 + 8))(v323, v390);
              sub_1D22BCE64();
              swift_allocError();
              *v327 = xmmword_1D28830A0;
              *(v327 + 16) = -96;
              swift_willThrow();

              (*(v366 + 8))(v392, v367);
              (*(v384 + 8))(v388, v385);
              goto LABEL_73;
            }

            break;
          }
        }
      }

      v302 = v366;
      v303 = v356;
      v304 = v367;
      (*(v366 + 16))(v356, v392, v367);
      (*(v302 + 56))(v303, 0, 1, v304);
      sub_1D2872F58();
      v305 = v352;
      sub_1D238D0B8(v145, v352, type metadata accessor for ImageGeneration.GenerationParameters);
      v347(v305, 0, 1, v419);
      v306 = v350;
      swift_beginAccess();
      sub_1D22BD298(v305, v124 + v306, &qword_1EC6DA490);
      swift_endAccess();
      v307 = v353;
      v308 = v405;
      (*(v404 + 16))(v353, v135, v405);
      v348(v307, 0, 1, v308);
      v309 = v351;
      swift_beginAccess();
      sub_1D22BD298(v307, v124 + v309, &qword_1EC6DA530);
      swift_endAccess();
      v310 = v355;
      sub_1D28720E8();
      v311 = sub_1D2873C38();
      sub_1D2873C68();
      v312 = sub_1D2878BA8();
      if (sub_1D2878EE8())
      {
        sub_1D2870F78();
        v313 = v335;
        sub_1D2873C98();

        v314 = v336;
        v315 = v337;
        if ((*(v336 + 88))(v313, v337) == *MEMORY[0x1E69E93E8])
        {
          v316 = "[Error] Interval already ended";
        }

        else
        {
          (*(v314 + 8))(v313, v315);
          v316 = "";
        }

        v317 = swift_slowAlloc();
        *v317 = 0;
        v318 = v410;
        v319 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v311, v312, v319, v387, v316, v317, 2u);
        v320 = v317;
        v81 = v318;
        MEMORY[0x1D38A3520](v320, -1, -1);
      }

      v321 = *(v412 + 8);
      v322 = v413;
      v321(v81, v413);
      (v409)(v310, v415);
      (*(v366 + 8))(v392, v367);
      (*(v384 + 8))(v388, v385);
      sub_1D22BD238(v402, &unk_1EC6DE5A0);
      (*(v404 + 8))(v135, v405);
      return (v321)(v411, v322);
    }

    v368 = v250;
    v258 = v359;
    sub_1D22EC9BC(v249, v359, &qword_1EC6DA4A8);
    sub_1D22BD1D0(v258, v248, &qword_1EC6DA4A8);
    v259 = v251[12];
    v260 = v251[24];
    sub_1D238D058(*(v248 + v251[28]));
    if ((v422)(v248 + v259, 1, v378) == 1)
    {
      sub_1D22BD238(v248 + v260, &unk_1EC6E33C0);
      sub_1D22BD238(v248 + v259, &unk_1EC6DE5A0);
      sub_1D22BD238(v248, &qword_1EC6D8F70);
    }

    else
    {
      v261 = v334;
      sub_1D238C294(v248 + v259, v334, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v248 + v260, &unk_1EC6E33C0);
      sub_1D22BD238(v248, &qword_1EC6D8F70);
      sub_1D262C1D0(v333);
      sub_1D2873028();
      sub_1D238DA5C(v261, type metadata accessor for PlaygroundImage);
    }

    v262 = v341;
    v263 = v338;
    sub_1D22BD1D0(v258, v338, &qword_1EC6DA4A8);
    v264 = v251[12];
    v265 = v263 + v251[16];
    v266 = *(v265 + 16);
    v427 = *v265;
    v428 = v266;
    v429 = *(v265 + 32);
    v267 = v251[24];
    sub_1D238D058(*(v263 + v251[28]));
    v268 = v429;
    sub_1D22BD238(v263 + v267, &unk_1EC6E33C0);
    sub_1D22BD238(v263 + v264, &unk_1EC6DE5A0);
    sub_1D22BD238(v263, &qword_1EC6D8F70);
    if ((v268 & 1) == 0)
    {
      sub_1D2873008();
    }

    v269 = v339;
    sub_1D22BD1D0(v258, v339, &qword_1EC6DA4A8);
    v270 = v251[12];
    v271 = *(v269 + v251[20]);
    v272 = v251[24];
    sub_1D238D058(*(v269 + v251[28]));
    sub_1D22BD238(v269 + v272, &unk_1EC6E33C0);
    sub_1D22BD238(v269 + v270, &unk_1EC6DE5A0);
    sub_1D22BD238(v269, &qword_1EC6D8F70);
    if ((v271 - 3) >= 2u)
    {
      sub_1D2872FA8();
    }

    v273 = v258;
    v274 = v340;
    sub_1D22BD1D0(v273, v340, &qword_1EC6DA4A8);
    v275 = v251[12];
    v276 = v251[24];
    sub_1D238D058(*(v274 + v251[28]));
    sub_1D22EC9BC(v274 + v276, v262, &unk_1EC6E33C0);
    v277 = type metadata accessor for ImageGenerationPerson.SkinTone();
    if ((*(*(v277 - 8) + 48))(v262, 1, v277) == 1)
    {
      sub_1D22BD238(v274 + v275, &unk_1EC6DE5A0);
      sub_1D22BD238(v274, &qword_1EC6D8F70);
      sub_1D22BD238(v262, &unk_1EC6E33C0);
      v278 = v342;
      (*(v343 + 56))(v342, 1, 1, v344);
    }

    else
    {
      v279 = v343;
      v278 = v342;
      v280 = v344;
      *&v422 = *(v343 + 16);
      (v422)(v342, v262, v344);
      sub_1D238DA5C(v262, type metadata accessor for ImageGenerationPerson.SkinTone);
      v418 = *(v279 + 56);
      (v418)(v278, 0, 1, v280);
      v281 = v274 + v275;
      v282 = v279;
      v251 = v364;
      sub_1D22BD238(v281, &unk_1EC6DE5A0);
      sub_1D22BD238(v274, &qword_1EC6D8F70);
      if ((*(v282 + 48))(v278, 1, v280) != 1)
      {
        v283 = v330;
        (*(v282 + 32))(v330, v278, v280);
        v284 = v331;
        (v422)(v331, v283, v280);
        (v418)(v284, 0, 1, v280);
        sub_1D2872FB8();
        (*(v282 + 8))(v283, v280);
        goto LABEL_103;
      }
    }

    sub_1D22BD238(v278, &qword_1EC6DA560);
LABEL_103:
    v145 = v420;
    v285 = v420[13];
    v286 = v345;
    sub_1D22BD1D0(v420 + v75, v345, &qword_1EC6E33D0);
    if ((v421)(v286, 1, v251) == 1)
    {
      sub_1D22BD238(v286, &qword_1EC6E33D0);
      v287 = 0;
      v288 = 0uLL;
    }

    else
    {
      v289 = v251[12];
      v290 = v251[24];
      v291 = v286 + v251[28];
      v422 = *v291;
      v287 = *(v291 + 16);
      sub_1D22BD238(v286 + v290, &unk_1EC6E33C0);
      sub_1D22BD238(v286 + v289, &unk_1EC6DE5A0);
      sub_1D22BD238(v286, &qword_1EC6D8F70);
      v288 = v422;
    }

    v135 = v403;
    v124 = v365;
    v425 = v288;
    v426 = v287;
    sub_1D238A500(v285, &v425, v145 + v141);
    v293 = v292;
    sub_1D238D058(v425);
    v81 = v410;
    if (v293)
    {
      sub_1D2873038();
    }

    sub_1D22BD238(v359, &qword_1EC6DA4A8);
    goto LABEL_109;
  }

  (*(v384 + 8))(v235, v385);
LABEL_73:
  sub_1D22BD238(v402, &unk_1EC6DE5A0);
  (*(v404 + 8))(v135, v405);
  return (*(v412 + 8))(v411, v413);
}

uint64_t sub_1D2368C5C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1D2872BA8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4D8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4E0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = sub_1D2872BC8();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_1D2873788();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = sub_1D2872988();
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_1D2873C58();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v8 = sub_1D2873CB8();
  v2[34] = v8;
  v2[35] = *(v8 - 8);
  v2[36] = swift_task_alloc();
  v9 = type metadata accessor for ImageGeneration.GenerationParameters();
  v2[37] = v9;
  v10 = *(v9 - 8);
  v2[38] = v10;
  v2[39] = *(v10 + 64);
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v2[41] = swift_task_alloc();
  v11 = sub_1D2873C48();
  v2[42] = v11;
  v2[43] = *(v11 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v12 = sub_1D2873C28();
  v2[47] = v12;
  v2[48] = *(v12 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4E8);
  v2[52] = swift_task_alloc();
  v2[53] = sub_1D2878568();
  v2[54] = sub_1D2878558();
  v14 = sub_1D28784F8();
  v2[55] = v14;
  v2[56] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D2369180, v14, v13);
}

uint64_t sub_1D2369180()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 88);
  v3 = sub_1D28734C8();
  v4 = swift_allocBox();
  v6 = v5;
  *(v0 + 456) = v4;
  v7 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_emojiConfiguration;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v7, v1, &qword_1EC6DA4E8);
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v1, 1, v3) == 1)
  {
    v9 = *(v0 + 416);

    sub_1D22BD238(v9, &qword_1EC6DA4E8);
    swift_deallocBox();
    sub_1D22BCE64();
    swift_allocError();
    *v10 = xmmword_1D2883040;
    *(v10 + 16) = -96;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v50 = v4;
    v13 = *(v0 + 368);
    v14 = *(v0 + 344);
    v49 = *(v0 + 336);
    v15 = *(v0 + 296);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    (*(v8 + 32))(v6, *(v0 + 416), v3);
    v18 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker;
    *(v16 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker) = *(v17 + *(v15 + 88));
    sub_1D28720E8();
    sub_1D2873C38();
    sub_1D2873BF8();
    v19 = *(v14 + 8);
    *(v0 + 464) = v19;
    *(v0 + 472) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v19;
    v19(v13, v49);
    v20 = *(v16 + v18);
    *(v0 + 57) = v20;
    sub_1D28720E8();
    v21 = sub_1D2873C38();
    v22 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      if (v20)
      {
        v23 = "assignPromptFacePicker";
      }

      else
      {
        v23 = "assignPrompt";
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v21, v22, v25, v23, "", v24, 2u);
      MEMORY[0x1D38A3520](v24, -1, -1);
    }

    v27 = *(v0 + 400);
    v26 = *(v0 + 408);
    v28 = *(v0 + 376);
    v29 = *(v0 + 384);
    v30 = *(v0 + 360);
    v32 = *(v0 + 328);
    v31 = *(v0 + 336);
    v47 = *(v0 + 312);
    v45 = *(v0 + 320);
    v46 = *(v0 + 304);
    v33 = *(v0 + 88);
    v44 = *(v0 + 80);

    (*(v29 + 16))(v27, v26, v28);
    sub_1D2873C88();
    swift_allocObject();
    *(v0 + 480) = sub_1D2873C78();
    v48(v30, v31);
    v34 = sub_1D28785F8();
    (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
    sub_1D238D0B8(v44, v45, type metadata accessor for ImageGeneration.GenerationParameters);
    sub_1D2870F78();
    sub_1D2870F78();
    v35 = sub_1D2878558();
    v36 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v37 = swift_allocObject();
    v38 = MEMORY[0x1E69E85E0];
    v37[2] = v35;
    v37[3] = v38;
    v37[4] = v33;
    sub_1D238C294(v45, v37 + v36, type metadata accessor for ImageGeneration.GenerationParameters);
    *(v37 + ((v47 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
    v39 = sub_1D23C8994(0, 0, v32, &unk_1D2883708, v37);
    *(v0 + 488) = v39;
    *(v33 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask) = v39;
    sub_1D2870F78();

    v40 = swift_task_alloc();
    *(v0 + 496) = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    *(v0 + 504) = v41;
    *v40 = v0;
    v40[1] = sub_1D23697A0;
    v42 = MEMORY[0x1E69E7288];
    v43 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v41, v39, v43, v41, v42);
  }
}

uint64_t sub_1D23697A0()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 448);
  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = sub_1D2369CB0;
  }

  else
  {
    v5 = sub_1D23698DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23698DC()
{
  sub_1D28725B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Did assign prompt.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);

  (*(v5 + 8))(v4, v6);
  sub_1D28720E8();
  v7 = sub_1D2873C38();
  sub_1D2873C68();
  v8 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v9 = *(v0 + 57);
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 248);

    if (v9)
    {
      v13 = "assignPromptFacePicker";
    }

    else
    {
      v13 = "assignPrompt";
    }

    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v7, v8, v16, v13, v14, v15, 2u);
    MEMORY[0x1D38A3520](v15, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 464);
  v18 = *(v0 + 408);
  v19 = *(v0 + 392);
  v21 = *(v0 + 376);
  v20 = *(v0 + 384);
  v22 = *(v0 + 352);
  v23 = *(v0 + 336);

  v24 = *(v20 + 8);
  v24(v19, v21);
  v17(v22, v23);
  v24(v18, v21);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D2369CB0()
{
  v1 = *(v0 + 88);

  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled))
  {
    sub_1D2878538();
    sub_1D238C24C(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v2 = swift_allocError();
    sub_1D2877E68();
    v3 = *(v0 + 512);
  }

  else
  {
    v4 = *(v0 + 512);
    v3 = *(v0 + 512);
    v2 = v3;
  }

  swift_willThrow();

  *(v0 + 64) = v2;
  v5 = v2;
  if (!swift_dynamicCast())
  {
    goto LABEL_26;
  }

  v6 = (*(*(v0 + 224) + 88))(*(v0 + 240), *(v0 + 216));
  if (v6 != *MEMORY[0x1E69DFC90])
  {
    if (v6 == *MEMORY[0x1E69DFC98] || v6 == *MEMORY[0x1E69DFCA0])
    {
      v102 = *(v0 + 408);
      v21 = *(v0 + 376);
      v20 = *(v0 + 384);
      v23 = *(v0 + 232);
      v22 = *(v0 + 240);
      v24 = v2;
      v26 = *(v0 + 216);
      v25 = *(v0 + 224);
      v27 = v6;

      (*(v25 + 96))(v22, v26);
      *v23 = *v22;
      (*(v25 + 104))(v23, v27, v26);
      sub_1D238C24C(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
      v28 = swift_allocError();
      (*(v25 + 16))(v29, v23, v26);
      sub_1D22BCE64();
      swift_allocError();
      *v30 = v28;
      *(v30 + 8) = 0;
      *(v30 + 16) = 48;
      swift_willThrow();

      (*(v25 + 8))(v23, v26);
      (*(v20 + 8))(v102, v21);
      goto LABEL_11;
    }

    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
LABEL_26:

    *(v0 + 72) = v2;
    v71 = v2;
    v72 = swift_dynamicCast();
    v73 = *(v0 + 408);
    v74 = *(v0 + 376);
    v75 = *(v0 + 384);
    if (v72)
    {
      sub_1D22BCDC4(*(v0 + 40), *(v0 + 48), *(v0 + 56));
    }

    else
    {
      sub_1D22BCE64();
      swift_allocError();
      *v76 = v2;
      *(v76 + 8) = 0;
      *(v76 + 16) = 32;
    }

    swift_willThrow();

    (*(v75 + 8))(v73, v74);

    goto LABEL_30;
  }

  v81 = v6;
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);

  (*(v9 + 96))(v7, v8);
  v10 = *v7;
  result = sub_1D2391DAC();
  if (result)
  {
LABEL_7:
    v12 = *(v0 + 408);
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    v15 = *(v0 + 216);
    v16 = *(v0 + 224);
    sub_1D238C24C(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
    v17 = swift_allocError();
    *v18 = v10;
    (*(v16 + 104))(v18, v81, v15);
    sub_1D22BCE64();
    swift_allocError();
    *v19 = v17;
    *(v19 + 8) = 0;
    *(v19 + 16) = 32;
    swift_willThrow();

    (*(v14 + 8))(v12, v13);
LABEL_11:

LABEL_30:

    v77 = *(v0 + 8);

    return v77();
  }

  v31 = *(v10 + 16);
  if (!v31)
  {
LABEL_24:
    v67 = *(v0 + 408);
    v68 = *(v0 + 376);
    v69 = *(v0 + 384);

    sub_1D22BCE64();
    swift_allocError();
    *v70 = xmmword_1D28830A0;
    *(v70 + 16) = -96;
    swift_willThrow();

    (*(v69 + 8))(v67, v68);

    goto LABEL_30;
  }

  v32 = 0;
  v33 = *(v0 + 192);
  v34 = *(v0 + 168);
  v98 = *(v0 + 120);
  v35 = *(v0 + 104);
  v101 = *MEMORY[0x1E69E0148];
  v97 = *MEMORY[0x1E69E0140];
  v103 = (v33 + 8);
  v94 = (v34 + 32);
  v95 = (v33 + 96);
  v93 = (v35 + 104);
  v92 = (v35 + 56);
  v100 = (v35 + 48);
  v91 = *MEMORY[0x1E69DFD28];
  v79 = (v35 + 32);
  v80 = (v35 + 8);
  v96 = (v34 + 8);
  v99 = v10;
  v89 = v33;
  v90 = *(v10 + 16);
  while (v32 < *(v10 + 16))
  {
    v40 = *(v0 + 200);
    v41 = *(v0 + 208);
    v42 = *(v0 + 184);
    v43 = *(v33 + 16);
    v43(v41, v10 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32, v42);
    v43(v40, v41, v42);
    v44 = (*(v33 + 88))(v40, v42);
    if (v44 == v101)
    {
      v45 = *(v0 + 200);
      v46 = *(v0 + 176);
      v48 = *(v0 + 152);
      v47 = *(v0 + 160);
      v49 = *(v0 + 144);
      v50 = *(v0 + 128);
      v51 = *(v0 + 96);
      (*v95)(v45, *(v0 + 184));
      (*v94)(v46, v45, v47);
      sub_1D2872BB8();
      (*v93)(v49, v91, v51);
      (*v92)(v49, 0, 1, v51);
      v52 = *(v98 + 48);
      sub_1D22BD1D0(v48, v50, &qword_1EC6DA4E0);
      sub_1D22BD1D0(v49, v50 + v52, &qword_1EC6DA4E0);
      v53 = *v100;
      if ((*v100)(v50, 1, v51) == 1)
      {
        v54 = *(v0 + 176);
        v55 = *(v0 + 184);
        v57 = *(v0 + 152);
        v56 = *(v0 + 160);
        v85 = *(v0 + 208);
        v87 = *(v0 + 96);
        sub_1D22BD238(*(v0 + 144), &qword_1EC6DA4E0);
        sub_1D22BD238(v57, &qword_1EC6DA4E0);
        (*v96)(v54, v56);
        (*v103)(v85, v55);
        if (v53(v50 + v52, 1, v87) != 1)
        {
          goto LABEL_34;
        }

        result = sub_1D22BD238(*(v0 + 128), &qword_1EC6DA4E0);
        v10 = v99;
        v33 = v89;
        v31 = v90;
      }

      else
      {
        v58 = *(v0 + 96);
        sub_1D22BD1D0(*(v0 + 128), *(v0 + 136), &qword_1EC6DA4E0);
        v59 = v53(v50 + v52, 1, v58);
        v86 = *(v0 + 184);
        v88 = *(v0 + 208);
        v84 = *(v0 + 176);
        v61 = *(v0 + 152);
        v60 = *(v0 + 160);
        v63 = *(v0 + 136);
        v62 = *(v0 + 144);
        if (v59 == 1)
        {
          v78 = *(v0 + 96);
          sub_1D22BD238(*(v0 + 144), &qword_1EC6DA4E0);
          sub_1D22BD238(v61, &qword_1EC6DA4E0);
          (*v96)(v84, v60);
          (*v103)(v88, v86);
          (*v80)(v63, v78);
LABEL_34:
          sub_1D22BD238(*(v0 + 128), &qword_1EC6DA4D8);
          v10 = v99;
          goto LABEL_7;
        }

        v83 = *(v0 + 128);
        v64 = *(v0 + 112);
        v65 = *(v0 + 96);
        (*v79)(v64, v50 + v52, v65);
        sub_1D238C24C(&qword_1EC6DA4F8, MEMORY[0x1E69DFD40]);
        v82 = sub_1D2877F98();
        v66 = *v80;
        (*v80)(v64, v65);
        sub_1D22BD238(v62, &qword_1EC6DA4E0);
        sub_1D22BD238(v61, &qword_1EC6DA4E0);
        (*v96)(v84, v60);
        (*v103)(v88, v86);
        v66(v63, v65);
        result = sub_1D22BD238(v83, &qword_1EC6DA4E0);
        v10 = v99;
        v33 = v89;
        v31 = v90;
        if ((v82 & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      v36 = v44;
      v37 = *(v0 + 200);
      v38 = *(v0 + 184);
      v39 = *v103;
      (*v103)(*(v0 + 208), v38);
      result = (v39)(v37, v38);
      if (v36 != v97)
      {
        goto LABEL_7;
      }
    }

    if (v31 == ++v32)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D236A8E0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1D2872B68();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_1D2872BA8();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4D8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4E0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = sub_1D2872BC8();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v6 = sub_1D2873788();
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_1D2872988();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v8 = sub_1D2873C58();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();
  v9 = sub_1D2873CB8();
  v2[38] = v9;
  v2[39] = *(v9 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v10 = type metadata accessor for ImageGeneration.GenerationParameters();
  v2[42] = v10;
  v11 = *(v10 - 8);
  v2[43] = v11;
  v2[44] = *(v11 + 64);
  v2[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v2[46] = swift_task_alloc();
  v12 = sub_1D2873C48();
  v2[47] = v12;
  v2[48] = *(v12 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v13 = sub_1D2873C28();
  v2[52] = v13;
  v2[53] = *(v13 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA530);
  v2[57] = swift_task_alloc();
  v2[58] = sub_1D2878568();
  v2[59] = sub_1D2878558();
  v14 = swift_task_alloc();
  v2[60] = v14;
  *v14 = v2;
  v14[1] = sub_1D236AE80;

  return sub_1D235EAB0();
}

uint64_t sub_1D236AE80(uint64_t a1)
{
  v2 = *v1;
  v2[61] = a1;

  v4 = sub_1D28784F8();
  v2[62] = v4;
  v2[63] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D236AFCC, v4, v3);
}

uint64_t sub_1D236AFCC()
{
  v1 = *(v0 + 488);
  if (!v1)
  {

    v12 = *(v0 + 8);
    goto LABEL_5;
  }

  v2 = *(v0 + 456);
  v3 = *(v0 + 96);
  v4 = sub_1D2873068();
  v5 = swift_allocBox();
  v7 = v6;
  *(v0 + 512) = v5;
  v8 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configuration;
  swift_beginAccess();
  sub_1D22BD1D0(v3 + v8, v2, &qword_1EC6DA530);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v2, 1, v4) == 1)
  {
    v10 = *(v0 + 456);

    sub_1D22BD238(v10, &qword_1EC6DA530);
    swift_deallocBox();
    sub_1D22BCE64();
    swift_allocError();
    *v11 = xmmword_1D2883040;
    *(v11 + 16) = -96;
    swift_willThrow();

    v12 = *(v0 + 8);
LABEL_5:

    return v12();
  }

  v50 = v5;
  v51 = v1;
  v14 = *(v0 + 408);
  v15 = *(v0 + 384);
  v52 = *(v0 + 376);
  v16 = *(v0 + 336);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  (*(v9 + 32))(v7, *(v0 + 456), v4);
  v19 = *(v18 + *(v16 + 88));
  v20 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker;
  *(v17 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker) = v19;
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v21 = *(v15 + 8);
  *(v0 + 520) = v21;
  *(v0 + 528) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v14, v52);
  v22 = *(v17 + v20);
  *(v0 + 57) = v22;
  sub_1D28720E8();
  v23 = sub_1D2873C38();
  v24 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    if (v22)
    {
      v25 = "assignPromptFacePicker";
    }

    else
    {
      v25 = "assignPrompt";
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v23, v24, v27, v25, "", v26, 2u);
    MEMORY[0x1D38A3520](v26, -1, -1);
  }

  v29 = *(v0 + 440);
  v28 = *(v0 + 448);
  v30 = *(v0 + 416);
  v31 = *(v0 + 424);
  v32 = *(v0 + 400);
  v33 = *(v0 + 376);
  v53 = *(v0 + 368);
  v49 = *(v0 + 352);
  v47 = *(v0 + 360);
  v48 = *(v0 + 344);
  v34 = *(v0 + 96);
  v46 = *(v0 + 88);

  (*(v31 + 16))(v29, v28, v30);
  sub_1D2873C88();
  swift_allocObject();
  *(v0 + 536) = sub_1D2873C78();
  v21(v32, v33);
  v35 = sub_1D28785F8();
  (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
  sub_1D238D0B8(v46, v47, type metadata accessor for ImageGeneration.GenerationParameters);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  v36 = sub_1D2878558();
  v37 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v38 = (v49 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  v39[2] = v36;
  v39[3] = v40;
  v39[4] = v34;
  sub_1D238C294(v47, v39 + v37, type metadata accessor for ImageGeneration.GenerationParameters);
  *(v39 + v38) = v50;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
  v41 = sub_1D23C8994(0, 0, v53, &unk_1D2883790, v39);
  *(v0 + 544) = v41;
  *(v34 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask) = v41;
  sub_1D2870F78();

  v42 = swift_task_alloc();
  *(v0 + 552) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  *(v0 + 560) = v43;
  *v42 = v0;
  v42[1] = sub_1D236B758;
  v44 = MEMORY[0x1E69E7288];
  v45 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v43, v41, v45, v43, v44);
}

uint64_t sub_1D236B758()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 496);
  if (v0)
  {
    v5 = sub_1D236BD20;
  }

  else
  {
    v5 = sub_1D236B894;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D236B894()
{
  sub_1D28725B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Did assign prompt.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);

  (*(v6 + 8))(v4, v5);
  sub_1D28720E8();
  v7 = sub_1D2873C38();
  sub_1D2873C68();
  v8 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v36 = v8;
    v9 = *(v0 + 57);
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);

    v13 = "assignPrompt";
    if (v9)
    {
      v13 = "assignPromptFacePicker";
    }

    name = v13;
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
      v14 = "";
    }

    v32 = *(v0 + 520);
    v22 = *(v0 + 424);
    v21 = *(v0 + 432);
    v23 = *(v0 + 416);
    v30 = *(v0 + 392);
    v31 = *(v0 + 448);
    v29 = *(v0 + 376);
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v7, v36, v25, name, v14, v24, 2u);
    MEMORY[0x1D38A3520](v24, -1, -1);

    v26 = *(v22 + 8);
    v26(v21, v23);
    v32(v30, v29);
    v26(v31, v23);
  }

  else
  {
    namea = *(v0 + 520);
    v33 = *(v0 + 448);
    v15 = *(v0 + 424);
    v16 = *(v0 + 432);
    v17 = *(v0 + 416);
    v18 = *(v0 + 392);
    v19 = *(v0 + 376);

    v20 = *(v15 + 8);
    v20(v16, v17);
    (namea)(v18, v19);
    v20(v33, v17);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1D236BD20()
{
  v123 = v0;
  v1 = *(v0 + 96);

  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled))
  {
    sub_1D2878538();
    sub_1D238C24C(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v2 = swift_allocError();
    sub_1D2877E68();
    v3 = *(v0 + 568);
  }

  else
  {
    v4 = *(v0 + 568);
    v3 = *(v0 + 568);
    v2 = v3;
  }

  swift_willThrow();

  *(v0 + 64) = v2;
  v5 = v2;
  if (!swift_dynamicCast())
  {
    goto LABEL_26;
  }

  v6 = (*(*(v0 + 256) + 88))(*(v0 + 272), *(v0 + 248));
  if (v6 != *MEMORY[0x1E69DFC90])
  {
    if (v6 == *MEMORY[0x1E69DFC98] || v6 == *MEMORY[0x1E69DFCA0])
    {
      v19 = v6;
      v120 = *(v0 + 448);
      v20 = *(v0 + 424);
      v117 = *(v0 + 416);
      v22 = *(v0 + 264);
      v21 = *(v0 + 272);
      v24 = *(v0 + 248);
      v23 = *(v0 + 256);

      (*(v23 + 96))(v21, v24);
      *v22 = *v21;
      (*(v23 + 104))(v22, v19, v24);
      sub_1D238C24C(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
      v25 = swift_allocError();
      (*(v23 + 16))(v26, v22, v24);
      sub_1D22BCE64();
      swift_allocError();
      *v27 = v25;
      *(v27 + 8) = 0;
      *(v27 + 16) = 48;
      swift_willThrow();

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v120, v117);
      goto LABEL_11;
    }

    (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
LABEL_26:

    *(v0 + 72) = v2;
    v68 = v2;
    if (swift_dynamicCast())
    {
      v69 = (*(*(v0 + 112) + 88))(*(v0 + 120), *(v0 + 104));
      v71 = *(v0 + 112);
      v70 = *(v0 + 120);
      v72 = *(v0 + 104);
      if (v69 == *MEMORY[0x1E69DFD10])
      {

        (*(v71 + 96))(v70, v72);
        v73 = *(v70 + 8);
        if (v73)
        {
          v74 = **(v0 + 120);
        }

        else
        {
          v73 = 0xE300000000000000;
          v74 = 4271950;
        }

        sub_1D28725B8();
        sub_1D2870F68();
        v81 = sub_1D2873CA8();
        v82 = sub_1D2878A38();

        v83 = os_log_type_enabled(v81, v82);
        v85 = *(v0 + 312);
        v84 = *(v0 + 320);
        v86 = *(v0 + 304);
        if (v83)
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v122[0] = v88;
          *v87 = 136315138;
          *(v87 + 4) = sub_1D23D7C84(v74, v73, v122);
          _os_log_impl(&dword_1D226E000, v81, v82, "Failed to assign playground configuration. Image caption analysis failed with reason: %s.", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
          MEMORY[0x1D38A3520](v88, -1, -1);
          MEMORY[0x1D38A3520](v87, -1, -1);
        }

        (*(v85 + 8))(v84, v86);
        v89 = *(v0 + 448);
        v90 = *(v0 + 416);
        v91 = *(v0 + 424);
        sub_1D22BCE64();
        swift_allocError();
        *v92 = v74;
        *(v92 + 8) = v73;
        *(v92 + 16) = 80;
        swift_willThrow();

        (*(v91 + 8))(v89, v90);

        goto LABEL_39;
      }

      (*(v71 + 8))(*(v0 + 120), *(v0 + 104));
    }

    *(v0 + 80) = v2;
    v75 = v2;
    v76 = swift_dynamicCast();
    v77 = *(v0 + 448);
    v78 = *(v0 + 416);
    v79 = *(v0 + 424);
    if (v76)
    {
      sub_1D22BCDC4(*(v0 + 40), *(v0 + 48), *(v0 + 56));
    }

    else
    {
      sub_1D22BCE64();
      swift_allocError();
      *v80 = v2;
      *(v80 + 8) = 0;
      *(v80 + 16) = 32;
    }

    swift_willThrow();

    (*(v79 + 8))(v77, v78);

    goto LABEL_40;
  }

  v97 = v6;
  v7 = *(v0 + 272);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);

  (*(v9 + 96))(v7, v8);
  v10 = *v7;
  result = sub_1D2391DAC();
  if (result)
  {
LABEL_7:
    v119 = *(v0 + 448);
    v12 = *(v0 + 416);
    v13 = *(v0 + 424);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    sub_1D238C24C(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
    v16 = swift_allocError();
    *v17 = v10;
    (*(v15 + 104))(v17, v97, v14);
    sub_1D22BCE64();
    swift_allocError();
    *v18 = v16;
    *(v18 + 8) = 0;
    *(v18 + 16) = 32;
    swift_willThrow();

    (*(v13 + 8))(v119, v12);
LABEL_11:

LABEL_39:

LABEL_40:

    v93 = *(v0 + 8);

    return v93();
  }

  v28 = *(v10 + 16);
  if (!v28)
  {
LABEL_24:
    v64 = *(v0 + 448);
    v65 = *(v0 + 416);
    v66 = *(v0 + 424);

    sub_1D22BCE64();
    swift_allocError();
    *v67 = xmmword_1D28830A0;
    *(v67 + 16) = -96;
    swift_willThrow();

    (*(v66 + 8))(v64, v65);

    goto LABEL_39;
  }

  v29 = 0;
  v30 = *(v0 + 224);
  v31 = *(v0 + 200);
  v114 = *(v0 + 152);
  v32 = *(v0 + 136);
  v118 = *MEMORY[0x1E69E0148];
  v113 = *MEMORY[0x1E69E0140];
  v121 = (v30 + 8);
  v110 = (v31 + 32);
  v111 = (v30 + 96);
  v109 = (v32 + 104);
  v108 = (v32 + 56);
  v116 = (v32 + 48);
  v107 = *MEMORY[0x1E69DFD28];
  v95 = (v32 + 32);
  v96 = (v32 + 8);
  v112 = (v31 + 8);
  v115 = v10;
  v105 = v30;
  v106 = *(v10 + 16);
  while (v29 < *(v10 + 16))
  {
    v37 = *(v0 + 232);
    v38 = *(v0 + 240);
    v39 = *(v0 + 216);
    v40 = *(v30 + 16);
    v40(v38, v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29, v39);
    v40(v37, v38, v39);
    v41 = (*(v30 + 88))(v37, v39);
    if (v41 == v118)
    {
      v42 = *(v0 + 232);
      v43 = *(v0 + 208);
      v45 = *(v0 + 184);
      v44 = *(v0 + 192);
      v46 = *(v0 + 176);
      v47 = *(v0 + 160);
      v48 = *(v0 + 128);
      (*v111)(v42, *(v0 + 216));
      (*v110)(v43, v42, v44);
      sub_1D2872BB8();
      (*v109)(v46, v107, v48);
      (*v108)(v46, 0, 1, v48);
      v49 = *(v114 + 48);
      sub_1D22BD1D0(v45, v47, &qword_1EC6DA4E0);
      sub_1D22BD1D0(v46, v47 + v49, &qword_1EC6DA4E0);
      v50 = *v116;
      if ((*v116)(v47, 1, v48) == 1)
      {
        v51 = *(v0 + 208);
        v52 = *(v0 + 216);
        v54 = *(v0 + 184);
        v53 = *(v0 + 192);
        v101 = *(v0 + 240);
        v103 = *(v0 + 128);
        sub_1D22BD238(*(v0 + 176), &qword_1EC6DA4E0);
        sub_1D22BD238(v54, &qword_1EC6DA4E0);
        (*v112)(v51, v53);
        (*v121)(v101, v52);
        if (v50(v47 + v49, 1, v103) != 1)
        {
          goto LABEL_44;
        }

        result = sub_1D22BD238(*(v0 + 160), &qword_1EC6DA4E0);
        v10 = v115;
        v30 = v105;
        v28 = v106;
      }

      else
      {
        v55 = *(v0 + 128);
        sub_1D22BD1D0(*(v0 + 160), *(v0 + 168), &qword_1EC6DA4E0);
        v56 = v50(v47 + v49, 1, v55);
        v102 = *(v0 + 216);
        v104 = *(v0 + 240);
        v100 = *(v0 + 208);
        v58 = *(v0 + 184);
        v57 = *(v0 + 192);
        v60 = *(v0 + 168);
        v59 = *(v0 + 176);
        if (v56 == 1)
        {
          v94 = *(v0 + 128);
          sub_1D22BD238(*(v0 + 176), &qword_1EC6DA4E0);
          sub_1D22BD238(v58, &qword_1EC6DA4E0);
          (*v112)(v100, v57);
          (*v121)(v104, v102);
          (*v96)(v60, v94);
LABEL_44:
          sub_1D22BD238(*(v0 + 160), &qword_1EC6DA4D8);
          v10 = v115;
          goto LABEL_7;
        }

        v99 = *(v0 + 160);
        v61 = *(v0 + 144);
        v62 = *(v0 + 128);
        (*v95)(v61, v47 + v49, v62);
        sub_1D238C24C(&qword_1EC6DA4F8, MEMORY[0x1E69DFD40]);
        v98 = sub_1D2877F98();
        v63 = *v96;
        (*v96)(v61, v62);
        sub_1D22BD238(v59, &qword_1EC6DA4E0);
        sub_1D22BD238(v58, &qword_1EC6DA4E0);
        (*v112)(v100, v57);
        (*v121)(v104, v102);
        v63(v60, v62);
        result = sub_1D22BD238(v99, &qword_1EC6DA4E0);
        v10 = v115;
        v30 = v105;
        v28 = v106;
        if ((v98 & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      v33 = v41;
      v34 = *(v0 + 232);
      v35 = *(v0 + 216);
      v36 = *v121;
      (*v121)(*(v0 + 240), v35);
      result = (v36)(v34, v35);
      if (v33 != v113)
      {
        goto LABEL_7;
      }
    }

    if (v28 == ++v29)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D236CBB0()
{
  v1[5] = v0;
  v2 = sub_1D2873CB8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = sub_1D2872008();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for ImageGeneration.GenerationParameters();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  sub_1D2878568();
  v1[17] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v1[18] = v6;
  v1[19] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D236CDA0, v6, v5);
}

uint64_t sub_1D236CDA0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_parameters;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v3, &qword_1EC6DA490);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(v0[13], &qword_1EC6DA490);
    return sub_1D2879398();
  }

  else
  {
    v7 = v0[16];
    v8 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    sub_1D238C294(v0[13], v7, type metadata accessor for ImageGeneration.GenerationParameters);
    v12 = *(v8 + 52);
    sub_1D2871FC8();
    LOBYTE(v7) = MEMORY[0x1D389AA00](v7 + v12, v9);
    (*(v10 + 8))(v9, v11);
    if (v7)
    {
      v13 = swift_task_alloc();
      v0[20] = v13;
      *v13 = v0;
      v13[1] = sub_1D236D004;

      return sub_1D236DBC8();
    }

    else
    {
      v14 = swift_task_alloc();
      v0[22] = v14;
      *v14 = v0;
      v14[1] = sub_1D236D204;

      return sub_1D236F2B0();
    }
  }
}

uint64_t sub_1D236D004()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1D236D340;
  }

  else
  {
    v5 = sub_1D236D140;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D236D140()
{

  sub_1D238DA5C(*(v0 + 128), type metadata accessor for ImageGeneration.GenerationParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D236D204()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1D236D784;
  }

  else
  {
    v5 = sub_1D238DC8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D236D340()
{
  sub_1D28725B8();
  has_internal_ui = os_variant_has_internal_ui();
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  if (has_internal_ui)
  {
    v5 = sub_1D2873CA8();
    (*(v4 + 8))(v2, v3);
    v6 = sub_1D2878A18();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "Rewrite configuration failed, reassigning the original configuration.", v7, 2u);
      MEMORY[0x1D38A3520](v7, -1, -1);
    }
  }

  else
  {
    (*(v4 + 8))(v0[9], v0[6]);
  }

  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1D236D4A4;
  v9 = v0[16];

  return sub_1D2368C5C(v9);
}

uint64_t sub_1D236D4A4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1D236D6B0;
  }

  else
  {
    v5 = sub_1D236D5E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D236D5E0()
{
  v1 = v0[21];

  sub_1D238DA5C(v0[16], type metadata accessor for ImageGeneration.GenerationParameters);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D236D6B0()
{
  v1 = v0[21];
  v2 = v0[16];

  sub_1D238DA5C(v2, type metadata accessor for ImageGeneration.GenerationParameters);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D236D784()
{
  sub_1D28725B8();
  has_internal_ui = os_variant_has_internal_ui();
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  if (has_internal_ui)
  {
    v5 = sub_1D2873CA8();
    (*(v3 + 8))(v2, v4);
    v6 = sub_1D2878A18();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "Rewrite configuration failed, reassigning the original configuration.", v7, 2u);
      MEMORY[0x1D38A3520](v7, -1, -1);
    }
  }

  else
  {
    (*(v3 + 8))(v0[8], v0[6]);
  }

  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_1D236D8E8;
  v9 = v0[16];

  return sub_1D236A8E0(v9);
}

uint64_t sub_1D236D8E8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1D236DAF4;
  }

  else
  {
    v5 = sub_1D236DA24;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D236DA24()
{
  v1 = v0[23];

  sub_1D238DA5C(v0[16], type metadata accessor for ImageGeneration.GenerationParameters);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D236DAF4()
{
  v1 = v0[23];
  v2 = v0[16];

  sub_1D238DA5C(v2, type metadata accessor for ImageGeneration.GenerationParameters);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D236DBC8()
{
  v1[10] = v0;
  v2 = sub_1D2872988();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_1D2873C58();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_1D2873CB8();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v1[25] = swift_task_alloc();
  v5 = sub_1D2873C48();
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = sub_1D2873C28();
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4E8);
  v1[36] = swift_task_alloc();
  v7 = sub_1D28734C8();
  v1[37] = v7;
  v8 = *(v7 - 8);
  v1[38] = v8;
  v1[39] = *(v8 + 64);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = sub_1D2878568();
  v1[43] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v1[44] = v10;
  v1[45] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D236DF7C, v10, v9);
}

uint64_t sub_1D236DF7C()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_emojiConfiguration;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v3, &qword_1EC6DA4E8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[36];

    sub_1D22BD238(v6, &qword_1EC6DA4E8);
    sub_1D22BCE64();
    swift_allocError();
    *v7 = xmmword_1D2883040;
    *(v7 + 16) = -96;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[30];
    v11 = v0[26];
    v12 = v0[27];
    v41 = *(v0[38] + 32);
    v41(v0[41], v0[36], v0[37]);
    sub_1D28720E8();
    sub_1D2873C38();
    sub_1D2873BF8();
    v13 = *(v12 + 8);
    v0[46] = v13;
    v0[47] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40 = v13;
    v13(v10, v11);
    sub_1D28720E8();
    v14 = sub_1D2873C38();
    v15 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v14, v15, v17, "rewriteConfiguration", "", v16, 2u);
      MEMORY[0x1D38A3520](v16, -1, -1);
    }

    v39 = v0[41];
    v18 = v0[38];
    v37 = v0[37];
    v38 = v0[40];
    v20 = v0[34];
    v19 = v0[35];
    v22 = v0[31];
    v21 = v0[32];
    v23 = v0[29];
    v35 = v0[26];
    v36 = v0[25];
    v24 = v0[10];

    (*(v21 + 16))(v20, v19, v22);
    sub_1D2873C88();
    swift_allocObject();
    v0[48] = sub_1D2873C78();
    v40(v23, v35);
    v25 = sub_1D28785F8();
    (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
    (*(v18 + 16))(v38, v39, v37);
    sub_1D2870F78();
    v26 = sub_1D2878558();
    v27 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    *(v28 + 2) = v26;
    *(v28 + 3) = v29;
    *(v28 + 4) = v24;
    v41(&v28[v27], v38, v37);
    v30 = sub_1D23C8994(0, 0, v36, &unk_1D2883778, v28);
    v0[49] = v30;
    *(v24 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptRewriteTask) = v30;
    sub_1D2870F78();

    v31 = swift_task_alloc();
    v0[50] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    v0[51] = v32;
    *v31 = v0;
    v31[1] = sub_1D236E4C4;
    v33 = MEMORY[0x1E69E7288];
    v34 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v32, v30, v34, v32, v33);
  }
}

uint64_t sub_1D236E4C4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_1D236E98C;
  }

  else
  {
    v5 = sub_1D236E600;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D236E600()
{

  sub_1D28725B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Did rewrite.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = v0[24];
  v5 = v0[18];
  v6 = v0[19];

  (*(v6 + 8))(v4, v5);
  sub_1D28720E8();
  v7 = sub_1D2873C38();
  sub_1D2873C68();
  v8 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v9 = v0[16];
    v10 = v0[17];
    v11 = v0[15];
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v9 + 88))(v10, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[16] + 8))(v0[17], v0[15]);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v7, v8, v14, "rewriteConfiguration", v12, v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  v26 = v0[46];
  v15 = v0[41];
  v16 = v0[38];
  v27 = v0[37];
  v25 = v0[35];
  v17 = v0[33];
  v18 = v0[31];
  v19 = v0[32];
  v20 = v0[28];
  v21 = v0[26];

  v22 = *(v19 + 8);
  v22(v17, v18);
  v26(v20, v21);
  v22(v25, v18);
  (*(v16 + 8))(v15, v27);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D236E98C()
{
  v1 = *(v0 + 80);

  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled))
  {
    sub_1D2878538();
    sub_1D238C24C(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v2 = swift_allocError();
    sub_1D2877E68();
    v3 = *(v0 + 416);
  }

  else
  {
    v4 = *(v0 + 416);
    v3 = *(v0 + 416);
    v2 = v3;
  }

  swift_willThrow();

  *(v0 + 64) = v2;
  v5 = v2;
  if (swift_dynamicCast())
  {
    v6 = (*(*(v0 + 96) + 88))(*(v0 + 112), *(v0 + 88));
    v7 = v6;
    if (v6 == *MEMORY[0x1E69DFC90])
    {
      v8 = *(v0 + 112);
      v10 = *(v0 + 88);
      v9 = *(v0 + 96);

      (*(v9 + 96))(v8, v10);
      v74 = *v8;
      sub_1D28725B8();
      v11 = sub_1D2873CA8();
      v12 = sub_1D2878A18();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1D226E000, v11, v12, "Have PromptError.disallowedConcepts.", v13, 2u);
        MEMORY[0x1D38A3520](v13, -1, -1);
      }

      v14 = *(v0 + 304);
      v70 = *(v0 + 296);
      v72 = *(v0 + 328);
      v68 = *(v0 + 280);
      v15 = *(v0 + 256);
      v65 = *(v0 + 248);
      v16 = *(v0 + 184);
      v17 = *(v0 + 144);
      v18 = *(v0 + 152);
      v19 = *(v0 + 88);
      v20 = *(v0 + 96);

      (*(v18 + 8))(v16, v17);
      sub_1D238C24C(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
      v21 = swift_allocError();
      *v22 = v74;
      (*(v20 + 104))(v22, v7, v19);
      sub_1D22BCE64();
      swift_allocError();
      *v23 = v21;
      *(v23 + 8) = 0;
      *(v23 + 16) = 32;
      swift_willThrow();

      (*(v15 + 8))(v68, v65);
      (*(v14 + 8))(v72, v70);
      goto LABEL_18;
    }

    if (v6 == *MEMORY[0x1E69DFC98])
    {
      v24 = *(v0 + 112);
      v26 = *(v0 + 88);
      v25 = *(v0 + 96);

      (*(v25 + 96))(v24, v26);
      v75 = *v24;
      sub_1D28725B8();
      v27 = sub_1D2873CA8();
      v28 = sub_1D2878A18();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1D226E000, v27, v28, "Have PromptError.personalizationUnavailable.", v29, 2u);
        MEMORY[0x1D38A3520](v29, -1, -1);
      }

      v71 = *(v0 + 296);
      v73 = *(v0 + 328);
      v67 = *(v0 + 280);
      v69 = *(v0 + 304);
      v30 = *(v0 + 256);
      v66 = *(v0 + 248);
      v31 = *(v0 + 168);
LABEL_17:
      v37 = *(v0 + 144);
      v38 = *(v0 + 152);
      v39 = *(v0 + 96);
      v40 = *(v0 + 104);
      v41 = *(v0 + 88);

      (*(v38 + 8))(v31, v37);
      *v40 = v75;
      (*(v39 + 104))(v40, v7, v41);
      sub_1D238C24C(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
      v42 = swift_allocError();
      (*(v39 + 16))(v43, v40, v41);
      sub_1D22BCE64();
      swift_allocError();
      *v44 = v42;
      *(v44 + 8) = 0;
      *(v44 + 16) = 48;
      swift_willThrow();

      (*(v39 + 8))(v40, v41);
      (*(v30 + 8))(v67, v66);
      (*(v69 + 8))(v73, v71);
LABEL_18:

      goto LABEL_26;
    }

    if (v6 == *MEMORY[0x1E69DFCA0])
    {
      v32 = *(v0 + 112);
      v34 = *(v0 + 88);
      v33 = *(v0 + 96);

      (*(v33 + 96))(v32, v34);
      v75 = *v32;
      sub_1D28725B8();
      v27 = sub_1D2873CA8();
      v35 = sub_1D2878A18();
      if (os_log_type_enabled(v27, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1D226E000, v27, v35, "Have PromptError.personalizationUnavailableForEntities.", v36, 2u);
        MEMORY[0x1D38A3520](v36, -1, -1);
      }

      v71 = *(v0 + 296);
      v73 = *(v0 + 328);
      v67 = *(v0 + 280);
      v69 = *(v0 + 304);
      v30 = *(v0 + 256);
      v66 = *(v0 + 248);
      v31 = *(v0 + 176);
      goto LABEL_17;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
  }

  sub_1D28725B8();
  v45 = v2;
  v46 = sub_1D2873CA8();
  v47 = sub_1D2878A18();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    v50 = v2;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_1D226E000, v46, v47, "Rewrite configuration failed: %@.", v48, 0xCu);
    sub_1D22BD238(v49, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v49, -1, -1);
    MEMORY[0x1D38A3520](v48, -1, -1);
  }

  v52 = *(v0 + 152);
  v53 = *(v0 + 160);
  v54 = *(v0 + 144);

  (*(v52 + 8))(v53, v54);
  *(v0 + 72) = v2;
  v55 = v2;
  v56 = swift_dynamicCast();
  v76 = *(v0 + 328);
  v58 = *(v0 + 296);
  v57 = *(v0 + 304);
  v59 = *(v0 + 280);
  v61 = *(v0 + 248);
  v60 = *(v0 + 256);
  if (v56)
  {
    sub_1D22BCDC4(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  }

  else
  {
    sub_1D22BCE64();
    swift_allocError();
    *v62 = v2;
    *(v62 + 8) = 0;
    *(v62 + 16) = 32;
  }

  swift_willThrow();

  (*(v60 + 8))(v59, v61);
  (*(v57 + 8))(v76, v58);
LABEL_26:

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1D236F2B0()
{
  v1[10] = v0;
  v2 = sub_1D2872988();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_1D2873C58();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_1D2873CB8();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v1[25] = swift_task_alloc();
  v5 = sub_1D2873C48();
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = sub_1D2873C28();
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA530);
  v1[36] = swift_task_alloc();
  v7 = sub_1D2873068();
  v1[37] = v7;
  v8 = *(v7 - 8);
  v1[38] = v8;
  v1[39] = *(v8 + 64);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = sub_1D2878568();
  v1[43] = sub_1D2878558();
  v9 = swift_task_alloc();
  v1[44] = v9;
  *v9 = v1;
  v9[1] = sub_1D236F678;

  return sub_1D235EAB0();
}

uint64_t sub_1D236F678(uint64_t a1)
{
  v2 = *v1;
  v2[45] = a1;

  v4 = sub_1D28784F8();
  v2[46] = v4;
  v2[47] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D236F7C4, v4, v3);
}

uint64_t sub_1D236F7C4()
{
  v1 = v0[45];
  if (!v1)
  {

    v9 = v0[1];
    goto LABEL_5;
  }

  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[10];
  v6 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_configuration;
  swift_beginAccess();
  sub_1D22BD1D0(v5 + v6, v4, &qword_1EC6DA530);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v7 = v0[36];

    sub_1D22BD238(v7, &qword_1EC6DA530);
    sub_1D22BCE64();
    swift_allocError();
    *v8 = xmmword_1D2883040;
    *(v8 + 16) = -96;
    swift_willThrow();

    v9 = v0[1];
LABEL_5:

    return v9();
  }

  v43 = v1;
  v11 = v0[30];
  v12 = v0[26];
  v13 = v0[27];
  v42 = *(v0[38] + 32);
  v42(v0[41], v0[36], v0[37]);
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v14 = *(v13 + 8);
  v0[48] = v14;
  v0[49] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41 = v14;
  v14(v11, v12);
  sub_1D28720E8();
  v15 = sub_1D2873C38();
  v16 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v15, v16, v18, "rewritePrompt", "", v17, 2u);
    MEMORY[0x1D38A3520](v17, -1, -1);
  }

  v40 = v0[41];
  v19 = v0[38];
  v38 = v0[37];
  v39 = v0[40];
  v21 = v0[34];
  v20 = v0[35];
  v23 = v0[31];
  v22 = v0[32];
  v24 = v0[26];
  v36 = v0[29];
  v37 = v0[25];
  v25 = v0[10];

  (*(v22 + 16))(v21, v20, v23);
  sub_1D2873C88();
  swift_allocObject();
  v0[50] = sub_1D2873C78();
  v41(v36, v24);
  v26 = sub_1D28785F8();
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  (*(v19 + 16))(v39, v40, v38);
  sub_1D2870F78();
  sub_1D2870F78();
  v27 = sub_1D2878558();
  v28 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  *(v29 + 2) = v27;
  *(v29 + 3) = v30;
  *(v29 + 4) = v25;
  *(v29 + 5) = v43;
  v42(&v29[v28], v39, v38);
  v31 = sub_1D23C8994(0, 0, v37, &unk_1D28837B8, v29);
  v0[51] = v31;
  *(v25 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptRewriteTask) = v31;
  sub_1D2870F78();

  v32 = swift_task_alloc();
  v0[52] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  v0[53] = v33;
  *v32 = v0;
  v32[1] = sub_1D236FE08;
  v34 = MEMORY[0x1E69E7288];
  v35 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v33, v31, v35, v33, v34);
}

uint64_t sub_1D236FE08()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);
  if (v0)
  {
    v5 = sub_1D2370378;
  }

  else
  {
    v5 = sub_1D236FF44;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D236FF44()
{

  sub_1D28725B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Did rewrite.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = v0[24];
  v5 = v0[18];
  v6 = v0[19];

  (*(v6 + 8))(v4, v5);
  sub_1D28720E8();
  v7 = sub_1D2873C38();
  sub_1D2873C68();
  v8 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[16] + 8))(v0[17], v0[15]);
      v12 = "";
    }

    v34 = v0[48];
    v20 = v0[38];
    v36 = v0[37];
    v38 = v0[41];
    v22 = v0[32];
    v21 = v0[33];
    v23 = v0[31];
    v30 = v0[28];
    v32 = v0[35];
    v29 = v0[26];
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v7, v8, v25, "rewritePrompt", v12, v24, 2u);
    MEMORY[0x1D38A3520](v24, -1, -1);

    v26 = *(v22 + 8);
    v26(v21, v23);
    v34(v30, v29);
    v26(v32, v23);
    (*(v20 + 8))(v38, v36);
  }

  else
  {
    v33 = v0[48];
    v13 = v0[38];
    v35 = v0[37];
    v37 = v0[41];
    v31 = v0[35];
    v14 = v0[32];
    v15 = v0[33];
    v16 = v0[31];
    v17 = v0[28];
    v18 = v0[26];

    v19 = *(v14 + 8);
    v19(v15, v16);
    v33(v17, v18);
    v19(v31, v16);
    (*(v13 + 8))(v37, v35);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D2370378()
{
  v1 = *(v0 + 80);

  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator__isCancelled))
  {
    sub_1D2878538();
    sub_1D238C24C(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v2 = swift_allocError();
    sub_1D2877E68();
    v3 = *(v0 + 432);
  }

  else
  {
    v4 = *(v0 + 432);
    v3 = *(v0 + 432);
    v2 = v3;
  }

  swift_willThrow();

  *(v0 + 64) = v2;
  v5 = v2;
  if (swift_dynamicCast())
  {
    v6 = (*(*(v0 + 96) + 88))(*(v0 + 112), *(v0 + 88));
    v7 = v6;
    if (v6 == *MEMORY[0x1E69DFC90])
    {
      v8 = *(v0 + 112);
      v10 = *(v0 + 88);
      v9 = *(v0 + 96);

      (*(v9 + 96))(v8, v10);
      v71 = *v8;
      sub_1D28725B8();
      v11 = sub_1D2873CA8();
      v12 = sub_1D2878A18();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1D226E000, v11, v12, "Have PromptError.disallowedConcepts.", v13, 2u);
        MEMORY[0x1D38A3520](v13, -1, -1);
      }

      v14 = *(v0 + 304);
      v66 = *(v0 + 296);
      v68 = *(v0 + 328);
      v64 = *(v0 + 280);
      v15 = *(v0 + 256);
      v62 = *(v0 + 248);
      v16 = *(v0 + 184);
      v17 = *(v0 + 144);
      v18 = *(v0 + 152);
      v19 = *(v0 + 88);
      v20 = *(v0 + 96);

      (*(v18 + 8))(v16, v17);
      sub_1D238C24C(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
      v21 = swift_allocError();
      *v22 = v71;
      (*(v20 + 104))(v22, v7, v19);
      sub_1D22BCE64();
      swift_allocError();
      *v23 = v21;
      *(v23 + 8) = 0;
      *(v23 + 16) = 32;
      swift_willThrow();

      (*(v15 + 8))(v64, v62);
      (*(v14 + 8))(v68, v66);
      goto LABEL_18;
    }

    if (v6 == *MEMORY[0x1E69DFC98])
    {
      v24 = *(v0 + 112);
      v26 = *(v0 + 88);
      v25 = *(v0 + 96);

      (*(v25 + 96))(v24, v26);
      v72 = *v24;
      sub_1D28725B8();
      v27 = sub_1D2873CA8();
      v28 = sub_1D2878A18();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1D226E000, v27, v28, "Have PromptError.personalizationUnavailable.", v29, 2u);
        MEMORY[0x1D38A3520](v29, -1, -1);
      }

      v67 = *(v0 + 296);
      v69 = *(v0 + 328);
      v63 = *(v0 + 280);
      v65 = *(v0 + 304);
      v30 = *(v0 + 256);
      v61 = *(v0 + 248);
      v31 = *(v0 + 168);
LABEL_17:
      v37 = *(v0 + 144);
      v38 = *(v0 + 152);
      v39 = *(v0 + 96);
      v40 = *(v0 + 104);
      v41 = *(v0 + 88);

      (*(v38 + 8))(v31, v37);
      *v40 = v72;
      (*(v39 + 104))(v40, v7, v41);
      sub_1D238C24C(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
      v42 = swift_allocError();
      (*(v39 + 16))(v43, v40, v41);
      sub_1D22BCE64();
      swift_allocError();
      *v44 = v42;
      *(v44 + 8) = 0;
      *(v44 + 16) = 48;
      swift_willThrow();

      (*(v39 + 8))(v40, v41);
      (*(v30 + 8))(v63, v61);
      (*(v65 + 8))(v69, v67);
LABEL_18:

      goto LABEL_26;
    }

    if (v6 == *MEMORY[0x1E69DFCA0])
    {
      v32 = *(v0 + 112);
      v34 = *(v0 + 88);
      v33 = *(v0 + 96);

      (*(v33 + 96))(v32, v34);
      v72 = *v32;
      sub_1D28725B8();
      v27 = sub_1D2873CA8();
      v35 = sub_1D2878A18();
      if (os_log_type_enabled(v27, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1D226E000, v27, v35, "Have PromptError.personalizationUnavailableForEntities.", v36, 2u);
        MEMORY[0x1D38A3520](v36, -1, -1);
      }

      v67 = *(v0 + 296);
      v69 = *(v0 + 328);
      v63 = *(v0 + 280);
      v65 = *(v0 + 304);
      v30 = *(v0 + 256);
      v61 = *(v0 + 248);
      v31 = *(v0 + 176);
      goto LABEL_17;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
  }

  sub_1D28725B8();
  v45 = sub_1D2873CA8();
  v46 = sub_1D2878A18();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1D226E000, v45, v46, "rewrite configuration failed.", v47, 2u);
    MEMORY[0x1D38A3520](v47, -1, -1);
  }

  v48 = *(v0 + 152);
  v49 = *(v0 + 160);
  v50 = *(v0 + 144);

  (*(v48 + 8))(v49, v50);
  *(v0 + 72) = v2;
  v51 = v2;
  v52 = swift_dynamicCast();
  v53 = *(v0 + 328);
  v54 = *(v0 + 304);
  v70 = *(v0 + 296);
  v55 = *(v0 + 280);
  v57 = *(v0 + 248);
  v56 = *(v0 + 256);
  if (v52)
  {
    sub_1D22BCDC4(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  }

  else
  {
    sub_1D22BCE64();
    swift_allocError();
    *v58 = v2;
    *(v58 + 8) = 0;
    *(v58 + 16) = 32;
  }

  swift_willThrow();

  (*(v56 + 8))(v55, v57);
  (*(v54 + 8))(v53, v70);
LABEL_26:

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1D2370CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D2873CB8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  sub_1D2878568();
  v5[8] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2370DA8, v8, v7);
}

uint64_t sub_1D2370DA8()
{
  sub_1D28725B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Starting rewrite task.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v0[11] = v8;
  v8(v4, v5);
  v0[12] = *(v7 + 16);
  v9 = sub_1D23C7CA8();
  v10 = sub_1D2878068();
  v11 = sub_1D2878068();
  v12 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v9 + 48))
  {
    sub_1D2870F68();
    v13 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v13, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v15 = sub_1D2878068();
  v16 = sub_1D2418030(v12);

  if (v16)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D238C24C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v17 = sub_1D2877E78();
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_opt_self();
  v0[13] = v18;
  [v18 asyncSendSignal:v11 toChannel:v10 withNullableUniqueStringID:v15 withPayload:v17];

  v0[14] = sub_1D235F184();
  v19 = sub_1D2873448();
  v21 = v20;
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_1D23710E0;

  return MEMORY[0x1EEE4F828](v19, v21 & 1);
}

uint64_t sub_1D23710E0(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    v7 = sub_1D2371574;
  }

  else
  {

    *(v4 + 136) = a1 & 1;
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    v7 = sub_1D2371214;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2371214()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    sub_1D23797AC(*(v0 + 16));

    v2 = *(v0 + 8);
  }

  else
  {
    sub_1D22BCE64();
    swift_allocError();
    *v3 = xmmword_1D28830C0;
    *(v3 + 16) = -96;
    swift_willThrow();
    sub_1D28725B8();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Failed rewriteConfiguration.", v6, 2u);
      MEMORY[0x1D38A3520](v6, -1, -1);
    }

    v7 = *(v0 + 88);
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);

    v7(v8, v9);
    v10 = sub_1D23C7CA8();
    v11 = sub_1D2878068();
    v12 = sub_1D2878068();
    v13 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    if (*(v10 + 48))
    {
      sub_1D2870F68();
      v14 = sub_1D2878068();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D24E8054(v14, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    v16 = sub_1D2878068();
    v17 = sub_1D2418030(v13);

    if (v17)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D238C24C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v18 = sub_1D2877E78();
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 16);
    [*(v0 + 104) asyncSendSignal:v12 toChannel:v11 withNullableUniqueStringID:v16 withPayload:v18];

    swift_willThrow();
    sub_1D23797AC(v19);

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_1D2371574()
{

  sub_1D28725B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Failed rewriteConfiguration.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  v4(v5, v6);
  v7 = sub_1D23C7CA8();
  v8 = sub_1D2878068();
  v9 = sub_1D2878068();
  v10 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v7 + 48))
  {
    sub_1D2870F68();
    v11 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v11, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v13 = sub_1D2878068();
  v14 = sub_1D2418030(v10);

  if (v14)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D238C24C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v15 = sub_1D2877E78();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + 16);
  [*(v0 + 104) asyncSendSignal:v9 toChannel:v8 withNullableUniqueStringID:v13 withPayload:v15];

  swift_willThrow();
  sub_1D23797AC(v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D2371874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[50] = a4;
  v5[51] = a5;
  v6 = sub_1D2872B68();
  v5[52] = v6;
  v5[53] = *(v6 - 8);
  v5[54] = swift_task_alloc();
  v7 = sub_1D2872C28();
  v5[55] = v7;
  v5[56] = *(v7 - 8);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v8 = sub_1D2872C68();
  v5[59] = v8;
  v5[60] = *(v8 - 8);
  v5[61] = swift_task_alloc();
  v9 = sub_1D2872C88();
  v5[62] = v9;
  v5[63] = *(v9 - 8);
  v5[64] = swift_task_alloc();
  v10 = sub_1D28733E8();
  v5[65] = v10;
  v5[66] = *(v10 - 8);
  v5[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA500);
  v5[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0);
  v5[69] = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70) - 8);
  v5[70] = v11;
  v5[71] = *(v11 + 64);
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v12 = sub_1D2873598();
  v5[74] = v12;
  v5[75] = *(v12 - 8);
  v5[76] = swift_task_alloc();
  v13 = sub_1D2873C58();
  v5[77] = v13;
  v5[78] = *(v13 - 8);
  v5[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA508);
  v5[80] = swift_task_alloc();
  v14 = sub_1D28735D8();
  v5[81] = v14;
  v5[82] = *(v14 - 8);
  v5[83] = swift_task_alloc();
  v15 = type metadata accessor for PlaygroundImage();
  v5[84] = v15;
  v5[85] = *(v15 - 8);
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA510);
  v5[93] = swift_task_alloc();
  v16 = sub_1D2873758();
  v5[94] = v16;
  v5[95] = *(v16 - 8);
  v5[96] = swift_task_alloc();
  v17 = type metadata accessor for CuratedPrompt();
  v5[97] = v17;
  v5[98] = *(v17 - 8);
  v5[99] = swift_task_alloc();
  v18 = sub_1D2873C48();
  v5[100] = v18;
  v5[101] = *(v18 - 8);
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v5[104] = swift_task_alloc();
  v5[105] = swift_task_alloc();
  v19 = sub_1D2873C28();
  v5[106] = v19;
  v5[107] = *(v19 - 8);
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v5[110] = swift_task_alloc();
  v5[111] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v5[112] = swift_task_alloc();
  v5[113] = type metadata accessor for ImageGeneration.GenerationParameters();
  v5[114] = swift_task_alloc();
  v20 = sub_1D2873CB8();
  v5[115] = v20;
  v5[116] = *(v20 - 8);
  v5[117] = swift_task_alloc();
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v5[127] = swift_task_alloc();
  v5[128] = sub_1D28734C8();
  v5[129] = swift_projectBox();
  v5[130] = sub_1D2878568();
  v5[131] = sub_1D2878558();
  v22 = sub_1D28784F8();
  v5[132] = v22;
  v5[133] = v21;

  return MEMORY[0x1EEE6DFA0](sub_1D2372138, v22, v21);
}

uint64_t sub_1D2372138()
{
  v215 = v0;
  v1 = *(v0 + 912);
  v2 = *(v0 + 408);
  sub_1D28725B8();
  sub_1D238D0B8(v2, v1, type metadata accessor for ImageGeneration.GenerationParameters);
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A38();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 928);
  v8 = *(v0 + 920);
  v9 = *(v0 + 912);
  if (v5)
  {
    v210 = *(v0 + 1016);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v214[0] = v11;
    *v10 = 136315138;
    v12 = sub_1D239258C();
    v14 = v13;
    sub_1D238DA5C(v9, type metadata accessor for ImageGeneration.GenerationParameters);
    v15 = sub_1D23D7C84(v12, v14, v214);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D226E000, v3, v4, "Starting assignment task for prompt '%s'.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v10, -1, -1);

    v16 = *(v7 + 8);
    v16(v210, v8);
  }

  else
  {

    sub_1D238DA5C(v9, type metadata accessor for ImageGeneration.GenerationParameters);
    v16 = *(v7 + 8);
    v16(v6, v8);
  }

  *(v0 + 1072) = v16;
  if (!sub_1D2391DAC())
  {
    sub_1D23C7044();
    v17 = sub_1D27ED8C8();

    if ((v17 & 1) == 0)
    {
      v98 = *(v0 + 896);
      v99 = sub_1D239258C();
      v101 = v100;
      v102 = sub_1D235E780();
      v103 = sub_1D28785F8();
      (*(*(v103 - 8) + 56))(v98, 1, 1, v103);
      sub_1D2870F78();
      v104 = sub_1D2878558();
      v105 = swift_allocObject();
      v106 = MEMORY[0x1E69E85E0];
      v105[2] = v104;
      v105[3] = v106;
      v105[4] = v102;
      v105[5] = v99;
      v105[6] = v101;
      v27 = sub_1D22AE630(0, 0, v98, &unk_1D2883730, v105);
      *(v0 + 1080) = v27;

      v107 = swift_task_alloc();
      *(v0 + 1088) = v107;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
      *v107 = v0;
      v107[1] = sub_1D237388C;
      v30 = v0 + 360;
      goto LABEL_48;
    }
  }

  if (!sub_1D2391DAC())
  {
    v18 = *(v0 + 408);
    v19 = *(v18 + 88);
    if (v19)
    {
      v20 = *(v0 + 896);
      v21 = *(v18 + 80);
      v22 = sub_1D235E780();
      v23 = sub_1D28785F8();
      (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
      sub_1D2870F78();
      sub_1D2870F68();
      v24 = sub_1D2878558();
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E85E0];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v22;
      v25[5] = v21;
      v25[6] = v19;
      v27 = sub_1D22AE630(0, 0, v20, &unk_1D2883760, v25);
      *(v0 + 1096) = v27;

      v28 = swift_task_alloc();
      *(v0 + 1104) = v28;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
      *v28 = v0;
      v28[1] = sub_1D23751F8;
      v30 = v0 + 392;
LABEL_48:

      return MEMORY[0x1EEE6DA40](v30, v27, v29);
    }
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v31 = sub_1D23CE688();
  if (v31 >= 1)
  {
    v32 = v31;
    swift_beginAccess();
    v33 = sub_1D2873488();
    swift_endAccess();
    v34 = *(v33 + 16);

    if (!v34)
    {
      v193 = v32;
      v35 = *(v0 + 840);
      v36 = *(v0 + 808);
      v37 = *(v0 + 800);
      v38 = *(v0 + 400);
      sub_1D28720E8();
      sub_1D2873C38();
      sub_1D2873BF8();
      v194 = *(v36 + 8);
      v194(v35, v37);
      if (*(v38 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker))
      {
        v39 = "assignEmojiAdditionalConditioningImagesFacePicker";
      }

      else
      {
        v39 = "assignEmojiAdditionalConditioningImages";
      }

      sub_1D28720E8();
      v40 = sub_1D2873C38();
      v41 = sub_1D2878BB8();
      if (sub_1D2878EE8())
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v40, v41, v43, v39, "", v42, 2u);
        MEMORY[0x1D38A3520](v42, -1, -1);
      }

      name = v39;
      v44 = *(v0 + 888);
      v45 = *(v0 + 880);
      v46 = *(v0 + 856);
      v47 = *(v0 + 848);
      v48 = *(v0 + 832);
      v49 = *(v0 + 800);
      v50 = *(v0 + 408);

      (*(v46 + 16))(v45, v44, v47);
      sub_1D2873C88();
      swift_allocObject();
      sub_1D2873C78();
      v194(v48, v49);
      v51 = *(v50 + 104);
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = *(v0 + 784);
        v196 = *(v0 + 776);
        v54 = (*(v0 + 792) + *(v196 + 48));
        v55 = v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v56 = *(v0 + 680);
        v197 = (v56 + 56);
        v195 = v56;
        v211 = (v56 + 48);
        v57 = *(v0 + 760);
        v201 = *(v0 + 400);
        v198 = (v57 + 56);
        v199 = v57;
        v205 = (v57 + 48);
        v207 = *(v53 + 72);
        v204 = (v57 + 32);
        v58 = MEMORY[0x1E69E7CC0];
        v202 = v54;
        do
        {
          sub_1D238D0B8(v55, *(v0 + 792), type metadata accessor for CuratedPrompt);
          v59 = v54[1];
          if (v59)
          {
            v209 = v58;
            v60 = *v54;
            v61 = *(v201 + 16);
            v62 = type metadata accessor for EmojiImageProvider();
            swift_beginAccess();
            v63 = *(v61 + 16);
            if (*(v63 + 16) && (v64 = sub_1D25D0574(v62), (v65 & 1) != 0))
            {
              sub_1D22D7044(*(v63 + 56) + 40 * v64, v0 + 16);
              swift_endAccess();
              sub_1D227268C((v0 + 16), v0 + 56);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
              swift_dynamicCast();
              v66 = *(v0 + 384);
            }

            else
            {
              swift_endAccess();
              v66 = swift_allocObject();
              *(v66 + 16) = MEMORY[0x1E69E7CC8];
              *(v66 + 24) = 0x4074000000000000;
              v214[3] = v62;
              v214[4] = &off_1F4DD8D38;
              v214[0] = v66;
              swift_beginAccess();
              sub_1D2870F78();
              sub_1D25CDC34(v214, v62);
              swift_endAccess();
            }

            swift_beginAccess();
            v67 = *(v66 + 16);
            if (*(v67 + 16) && (v68 = sub_1D25D05B0(v60, v59), (v69 & 1) != 0))
            {
              v70 = *(v0 + 736);
              v71 = *(v0 + 696);
              v72 = *(v0 + 672);
              sub_1D238D0B8(*(v67 + 56) + *(v195 + 72) * v68, v71, type metadata accessor for PlaygroundImage);
              sub_1D238C294(v71, v70, type metadata accessor for PlaygroundImage);
              swift_endAccess();
              (*(v195 + 56))(v70, 0, 1, v72);

              v73 = *(v195 + 48);
              v54 = v202;
            }

            else
            {
              v203 = v52;
              v74 = *(v0 + 728);
              v75 = v60;
              v76 = *(v0 + 720);
              v77 = *(v0 + 672);
              swift_endAccess();
              v200 = v75;
              sub_1D284E808(v75, v59, v74, 320.0);
              sub_1D22BD1D0(v74, v76, &unk_1EC6DE5A0);
              v73 = *v211;
              v78 = (*v211)(v76, 1, v77);
              v79 = *(v0 + 720);
              if (v78 == 1)
              {
                sub_1D22BD238(v79, &unk_1EC6DE5A0);
              }

              else
              {
                v84 = *(v0 + 712);
                v85 = *(v0 + 688);
                v86 = *(v0 + 672);
                sub_1D238C294(v79, v85, type metadata accessor for PlaygroundImage);
                sub_1D238D0B8(v85, v84, type metadata accessor for PlaygroundImage);
                (*v197)(v84, 0, 1, v86);
                swift_beginAccess();
                sub_1D2870F68();
                sub_1D25CE748(v84, v200, v59);
                swift_endAccess();
                sub_1D238DA5C(v85, type metadata accessor for PlaygroundImage);
              }

              v54 = v202;
              sub_1D22EC9BC(*(v0 + 728), *(v0 + 736), &unk_1EC6DE5A0);

              v52 = v203;
            }

            v87 = *(v0 + 736);
            if (v73(v87, 1, *(v0 + 672)) == 1)
            {
              v88 = *(v0 + 752);
              v89 = *(v0 + 744);
              sub_1D22BD238(v87, &unk_1EC6DE5A0);
              (*v198)(v89, 1, 1, v88);
            }

            else
            {
              sub_1D262C1D0(*(v0 + 744));
              sub_1D238DA5C(v87, type metadata accessor for PlaygroundImage);
            }

            v58 = v209;
          }

          else
          {
            v80 = *(v0 + 704);
            v81 = *(v0 + 672);
            sub_1D22BD1D0(*(v0 + 792) + *(v196 + 36), v80, &unk_1EC6DE5A0);
            if ((*v211)(v80, 1, v81) == 1)
            {
              v82 = *(v0 + 752);
              v83 = *(v0 + 744);
              sub_1D22BD238(*(v0 + 704), &unk_1EC6DE5A0);
              (*v198)(v83, 1, 1, v82);
            }

            else
            {
              v90 = *(v0 + 704);
              sub_1D262C1D0(*(v0 + 744));
              sub_1D238DA5C(v90, type metadata accessor for PlaygroundImage);
            }
          }

          v91 = *(v0 + 752);
          v92 = *(v0 + 744);
          sub_1D238DA5C(*(v0 + 792), type metadata accessor for CuratedPrompt);
          if ((*v205)(v92, 1, v91) == 1)
          {
            sub_1D22BD238(*(v0 + 744), &qword_1EC6DA510);
          }

          else
          {
            v93 = *v204;
            (*v204)(*(v0 + 768), *(v0 + 744), *(v0 + 752));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_1D27CCDB0(0, v58[2] + 1, 1, v58);
            }

            v95 = v58[2];
            v94 = v58[3];
            if (v95 >= v94 >> 1)
            {
              v58 = sub_1D27CCDB0(v94 > 1, v95 + 1, 1, v58);
            }

            v96 = *(v0 + 768);
            v97 = *(v0 + 752);
            v58[2] = v95 + 1;
            v93(v58 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v95, v96, v97);
          }

          v55 += v207;
          --v52;
        }

        while (v52);
      }

      else
      {
        v58 = MEMORY[0x1E69E7CC0];
      }

      v108 = sub_1D23789E8(v58, v193);

      v214[0] = v108;
      sub_1D286F8FC();
      v112 = sub_1D268CB0C(v193, v214[0]);
      if (v111)
      {
        v113 = v111;
        v114 = v110;
        v115 = v109;
        sub_1D2879678();
        swift_unknownObjectRetain_n();
        v116 = swift_dynamicCastClass();
        if (!v116)
        {
          swift_unknownObjectRelease();
          v116 = MEMORY[0x1E69E7CC0];
        }

        v117 = *(v116 + 16);

        if (__OFSUB__(v113 >> 1, v114))
        {
          __break(1u);
        }

        else if (v117 == (v113 >> 1) - v114)
        {
          v118 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v118)
          {
LABEL_60:
            swift_beginAccess();
            sub_1D2873498();
            swift_endAccess();
            swift_beginAccess();
            v119 = sub_1D2873488();
            swift_endAccess();
            v120 = *(v119 + 16);

            if (v120)
            {
              v121 = *(v0 + 664);
              v122 = *(v0 + 656);
              v123 = *(v0 + 648);
              v124 = *(v0 + 640);
              sub_1D28735C8();
              sub_1D28735A8();
              sub_1D28735B8();
              (*(v122 + 16))(v124, v121, v123);
              (*(v122 + 56))(v124, 0, 1, v123);
              swift_beginAccess();
              sub_1D2873438();
              swift_endAccess();
              sub_1D28725B8();
              v125 = sub_1D2873CA8();
              v126 = sub_1D2878A08();
              if (os_log_type_enabled(v125, v126))
              {
                v127 = swift_slowAlloc();
                *v127 = 0;
                _os_log_impl(&dword_1D226E000, v125, v126, "Did set configuration to disable image captioning for conditioning images", v127, 2u);
                MEMORY[0x1D38A3520](v127, -1, -1);
              }

              v128 = *(v0 + 1072);
              v129 = *(v0 + 992);
              v130 = *(v0 + 920);
              v131 = *(v0 + 664);
              v132 = *(v0 + 656);
              v133 = *(v0 + 648);

              v128(v129, v130);
              (*(v132 + 8))(v131, v133);
            }

            sub_1D28720E8();
            v134 = sub_1D2873C38();
            sub_1D2873C68();
            v135 = sub_1D2878BA8();
            if (sub_1D2878EE8())
            {
              v136 = *(v0 + 632);
              v137 = *(v0 + 624);
              v138 = *(v0 + 616);
              sub_1D2870F78();
              sub_1D2873C98();

              if ((*(v137 + 88))(v136, v138) == *MEMORY[0x1E69E93E8])
              {
                v139 = "[Error] Interval already ended";
              }

              else
              {
                (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
                v139 = "";
              }

              v140 = swift_slowAlloc();
              *v140 = 0;
              v141 = sub_1D2873C08();
              _os_signpost_emit_with_name_impl(&dword_1D226E000, v134, v135, v141, name, v139, v140, 2u);
              MEMORY[0x1D38A3520](v140, -1, -1);
            }

            v142 = *(v0 + 888);
            v143 = *(v0 + 872);
            v144 = *(v0 + 856);
            v145 = *(v0 + 848);
            v146 = *(v0 + 824);
            v147 = *(v0 + 800);

            v148 = *(v144 + 8);
            v148(v143, v145);
            v194(v146, v147);
            v148(v142, v145);
            goto LABEL_70;
          }

LABEL_59:
          swift_unknownObjectRelease();
          goto LABEL_60;
        }

        swift_unknownObjectRelease();
        v111 = v113;
        v110 = v114;
        v109 = v115;
      }

      sub_1D268E7D0(v112, v109, v110, v111);
      goto LABEL_59;
    }
  }

LABEL_70:
  v149 = *(v0 + 552);
  v150 = *(v0 + 408);
  v151 = *(v150 + 96);
  sub_1D22BD1D0(v150 + *(*(v0 + 904) + 64), v149, &qword_1EC6E33D0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  v153 = (*(*(v152 - 1) + 48))(v149, 1, v152);
  v154 = *(v0 + 584);
  v155 = *(v0 + 552);
  v212 = v151;
  if (v153 == 1)
  {
    sub_1D22BD238(v155, &qword_1EC6E33D0);
    v156 = sub_1D2871818();
    (*(*(v156 - 8) + 56))(v154, 1, 1, v156);
  }

  else
  {
    v157 = v152[12];
    v158 = v152[24];
    sub_1D238D058(*(v155 + v152[28]));
    sub_1D22EC9BC(v155, v154, &qword_1EC6D8F70);
    sub_1D22BD238(v155 + v158, &unk_1EC6E33C0);
    sub_1D22BD238(v155 + v157, &unk_1EC6DE5A0);
  }

  v159 = *(v0 + 608);
  v160 = *(v0 + 600);
  v208 = *(v0 + 592);
  v161 = *(v0 + 584);
  v162 = *(v0 + 576);
  v163 = *(v0 + 568);
  v164 = *(v0 + 560);
  v206 = *(v0 + 544);
  sub_1D2873588();
  sub_1D22BD1D0(v161, v162, &qword_1EC6D8F70);
  v165 = (*(v164 + 80) + 16) & ~*(v164 + 80);
  v166 = (v163 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
  v167 = swift_allocObject();
  sub_1D22EC9BC(v162, v167 + v165, &qword_1EC6D8F70);
  *(v167 + v166) = v212;
  sub_1D2870F68();
  sub_1D2873578();
  sub_1D2873568();
  sub_1D22BD238(v161, &qword_1EC6D8F70);
  swift_beginAccess();
  sub_1D2870F68();
  sub_1D2873418();
  sub_1D2870F68();
  sub_1D2873428();
  (*(v160 + 16))(v206, v159, v208);
  (*(v160 + 56))(v206, 0, 1, v208);
  sub_1D28733F8();
  swift_endAccess();
  sub_1D28720E8();
  sub_1D2873C18();
  v168 = sub_1D2873C38();
  v169 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v170 = swift_slowAlloc();
    *v170 = 0;
    v171 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v168, v169, v171, "OnDeviceImageGenerator.emoji.assignConfiguration", "", v170, 2u);
    MEMORY[0x1D38A3520](v170, -1, -1);
  }

  v172 = *(v0 + 880);
  v173 = *(v0 + 864);
  v174 = *(v0 + 856);
  v175 = *(v0 + 848);
  v176 = *(v0 + 816);
  v177 = *(v0 + 808);
  v178 = *(v0 + 800);

  (*(v174 + 16))(v172, v173, v175);
  sub_1D2873C88();
  swift_allocObject();
  *(v0 + 1112) = sub_1D2873C78();
  (*(v174 + 8))(v173, v175);
  (*(v177 + 8))(v176, v178);
  sub_1D28725B8();
  v179 = sub_1D2873CA8();
  v180 = sub_1D2878A38();
  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    *v181 = 0;
    _os_log_impl(&dword_1D226E000, v179, v180, "Will assign playground configuration.", v181, 2u);
    MEMORY[0x1D38A3520](v181, -1, -1);
  }

  v182 = *(v0 + 1072);
  v183 = *(v0 + 1032);
  v184 = *(v0 + 1024);
  v185 = *(v0 + 984);
  v186 = *(v0 + 920);
  v187 = *(v0 + 536);
  v188 = *(v0 + 528);
  v213 = *(v0 + 520);

  v182(v185, v186);
  *(v0 + 1120) = sub_1D235F184();
  swift_beginAccess();
  (*(*(v184 - 8) + 16))(v187, v183, v184);
  (*(v188 + 104))(v187, *MEMORY[0x1E69E0058], v213);
  v189 = swift_task_alloc();
  *(v0 + 1128) = v189;
  *v189 = v0;
  v189[1] = sub_1D23769D4;
  v190 = *(v0 + 536);

  return MEMORY[0x1EEE4F948](v190);
}

uint64_t sub_1D237388C()
{
  v1 = *v0;

  v2 = *(v1 + 1064);
  v3 = *(v1 + 1056);

  return MEMORY[0x1EEE6DFA0](sub_1D23739D0, v3, v2);
}

uint64_t sub_1D23739D0()
{
  v196 = v0;
  v1 = sub_1D279F58C(*(v0 + 360));

  v2 = *(v1 + 16);

  if (v2)
  {

    sub_1D28725B8();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A18();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D226E000, v3, v4, "Found named entities in concatenated prompt but personalization is not supported.", v5, 2u);
      MEMORY[0x1D38A3520](v5, -1, -1);
    }

    v6 = *(v0 + 1072);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 920);
    v9 = *(v0 + 400);

    v6(v7, v8);
    sub_1D22BCE64();
    swift_allocError();
    *v10 = xmmword_1D28830A0;
    *(v10 + 16) = -96;
    swift_willThrow();
    sub_1D2384398(v9, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

    v11 = *(v0 + 8);

    return v11();
  }

  if (!sub_1D2391DAC())
  {
    v13 = *(v0 + 408);
    v14 = *(v13 + 88);
    if (v14)
    {
      v15 = *(v0 + 896);
      v16 = *(v13 + 80);
      v17 = sub_1D235E780();
      v18 = sub_1D28785F8();
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
      sub_1D2870F78();
      sub_1D2870F68();
      v19 = sub_1D2878558();
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E85E0];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v17;
      v20[5] = v16;
      v20[6] = v14;
      v22 = sub_1D22AE630(0, 0, v15, &unk_1D2883760, v20);
      *(v0 + 1096) = v22;

      v23 = swift_task_alloc();
      *(v0 + 1104) = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
      *v23 = v0;
      v23[1] = sub_1D23751F8;

      return MEMORY[0x1EEE6DA40](v0 + 392, v22, v24);
    }
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v25 = sub_1D23CE688();
  if (v25 >= 1)
  {
    v26 = v25;
    swift_beginAccess();
    v27 = sub_1D2873488();
    swift_endAccess();
    v28 = *(v27 + 16);

    if (!v28)
    {
      v175 = v26;
      v29 = *(v0 + 840);
      v30 = *(v0 + 808);
      v31 = *(v0 + 800);
      v32 = *(v0 + 400);
      sub_1D28720E8();
      sub_1D2873C38();
      sub_1D2873BF8();
      v176 = *(v30 + 8);
      v176(v29, v31);
      if (*(v32 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker))
      {
        v33 = "assignEmojiAdditionalConditioningImagesFacePicker";
      }

      else
      {
        v33 = "assignEmojiAdditionalConditioningImages";
      }

      sub_1D28720E8();
      v34 = sub_1D2873C38();
      v35 = sub_1D2878BB8();
      if (sub_1D2878EE8())
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v34, v35, v37, v33, "", v36, 2u);
        MEMORY[0x1D38A3520](v36, -1, -1);
      }

      name = v33;
      v38 = *(v0 + 888);
      v39 = *(v0 + 880);
      v40 = *(v0 + 856);
      v41 = *(v0 + 848);
      v42 = *(v0 + 832);
      v43 = *(v0 + 800);
      v44 = *(v0 + 408);

      (*(v40 + 16))(v39, v38, v41);
      sub_1D2873C88();
      swift_allocObject();
      sub_1D2873C78();
      v176(v42, v43);
      v45 = *(v44 + 104);
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = *(v0 + 784);
        v178 = *(v0 + 776);
        v48 = (*(v0 + 792) + *(v178 + 48));
        v49 = v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v50 = *(v0 + 680);
        v179 = (v50 + 56);
        v177 = v50;
        v192 = (v50 + 48);
        v51 = *(v0 + 760);
        v183 = *(v0 + 400);
        v188 = *(v47 + 72);
        v181 = (v51 + 56);
        v182 = v51;
        v185 = (v51 + 32);
        v186 = (v51 + 48);
        v52 = MEMORY[0x1E69E7CC0];
        v180 = v48;
        do
        {
          sub_1D238D0B8(v49, *(v0 + 792), type metadata accessor for CuratedPrompt);
          v53 = v48[1];
          if (v53)
          {
            v190 = v49;
            v191 = v52;
            v54 = *v48;
            v55 = *(v183 + 16);
            v56 = type metadata accessor for EmojiImageProvider();
            swift_beginAccess();
            v57 = *(v55 + 16);
            if (*(v57 + 16) && (v58 = sub_1D25D0574(v56), (v59 & 1) != 0))
            {
              sub_1D22D7044(*(v57 + 56) + 40 * v58, v0 + 16);
              swift_endAccess();
              sub_1D227268C((v0 + 16), v0 + 56);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
              swift_dynamicCast();
              v60 = *(v0 + 384);
            }

            else
            {
              swift_endAccess();
              v60 = swift_allocObject();
              *(v60 + 16) = MEMORY[0x1E69E7CC8];
              *(v60 + 24) = 0x4074000000000000;
              v195[3] = v56;
              v195[4] = &off_1F4DD8D38;
              v195[0] = v60;
              swift_beginAccess();
              sub_1D2870F78();
              sub_1D25CDC34(v195, v56);
              swift_endAccess();
            }

            swift_beginAccess();
            v61 = *(v60 + 16);
            if (*(v61 + 16) && (v62 = sub_1D25D05B0(v54, v53), (v63 & 1) != 0))
            {
              v64 = *(v0 + 736);
              v65 = *(v0 + 696);
              v66 = *(v0 + 672);
              sub_1D238D0B8(*(v61 + 56) + *(v177 + 72) * v62, v65, type metadata accessor for PlaygroundImage);
              sub_1D238C294(v65, v64, type metadata accessor for PlaygroundImage);
              swift_endAccess();
              (*(v177 + 56))(v64, 0, 1, v66);

              v67 = *(v177 + 48);
              v52 = v191;
            }

            else
            {
              v184 = v46;
              v68 = *(v0 + 728);
              v69 = *(v0 + 720);
              v70 = *(v0 + 672);
              swift_endAccess();
              sub_1D284E808(v54, v53, v68, 320.0);
              sub_1D22BD1D0(v68, v69, &unk_1EC6DE5A0);
              v67 = *v192;
              v71 = (*v192)(v69, 1, v70);
              v72 = *(v0 + 720);
              if (v71 == 1)
              {
                sub_1D22BD238(v72, &unk_1EC6DE5A0);
              }

              else
              {
                v77 = *(v0 + 712);
                v78 = *(v0 + 688);
                v79 = *(v0 + 672);
                sub_1D238C294(v72, v78, type metadata accessor for PlaygroundImage);
                sub_1D238D0B8(v78, v77, type metadata accessor for PlaygroundImage);
                (*v179)(v77, 0, 1, v79);
                swift_beginAccess();
                sub_1D2870F68();
                sub_1D25CE748(v77, v54, v53);
                swift_endAccess();
                sub_1D238DA5C(v78, type metadata accessor for PlaygroundImage);
              }

              v52 = v191;
              sub_1D22EC9BC(*(v0 + 728), *(v0 + 736), &unk_1EC6DE5A0);

              v48 = v180;
              v46 = v184;
            }

            v80 = *(v0 + 736);
            v49 = v190;
            if (v67(v80, 1, *(v0 + 672)) == 1)
            {
              v81 = *(v0 + 752);
              v82 = *(v0 + 744);
              sub_1D22BD238(v80, &unk_1EC6DE5A0);
              (*v181)(v82, 1, 1, v81);
            }

            else
            {
              sub_1D262C1D0(*(v0 + 744));
              sub_1D238DA5C(v80, type metadata accessor for PlaygroundImage);
            }
          }

          else
          {
            v73 = *(v0 + 704);
            v74 = *(v0 + 672);
            sub_1D22BD1D0(*(v0 + 792) + *(v178 + 36), v73, &unk_1EC6DE5A0);
            if ((*v192)(v73, 1, v74) == 1)
            {
              v75 = *(v0 + 752);
              v76 = *(v0 + 744);
              sub_1D22BD238(*(v0 + 704), &unk_1EC6DE5A0);
              (*v181)(v76, 1, 1, v75);
            }

            else
            {
              v83 = *(v0 + 704);
              sub_1D262C1D0(*(v0 + 744));
              sub_1D238DA5C(v83, type metadata accessor for PlaygroundImage);
            }
          }

          v84 = *(v0 + 752);
          v85 = *(v0 + 744);
          sub_1D238DA5C(*(v0 + 792), type metadata accessor for CuratedPrompt);
          if ((*v186)(v85, 1, v84) == 1)
          {
            sub_1D22BD238(*(v0 + 744), &qword_1EC6DA510);
          }

          else
          {
            v86 = *v185;
            (*v185)(*(v0 + 768), *(v0 + 744), *(v0 + 752));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_1D27CCDB0(0, v52[2] + 1, 1, v52);
            }

            v88 = v52[2];
            v87 = v52[3];
            if (v88 >= v87 >> 1)
            {
              v52 = sub_1D27CCDB0(v87 > 1, v88 + 1, 1, v52);
            }

            v89 = *(v0 + 768);
            v90 = *(v0 + 752);
            v52[2] = v88 + 1;
            v86(v52 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v88, v89, v90);
          }

          v49 += v188;
          --v46;
        }

        while (v46);
      }

      else
      {
        v52 = MEMORY[0x1E69E7CC0];
      }

      v91 = sub_1D23789E8(v52, v175);

      v195[0] = v91;
      sub_1D286F8FC();
      v95 = sub_1D268CB0C(v175, v195[0]);
      if (v94)
      {
        v96 = v94;
        v97 = v93;
        v98 = v92;
        sub_1D2879678();
        swift_unknownObjectRetain_n();
        v99 = swift_dynamicCastClass();
        if (!v99)
        {
          swift_unknownObjectRelease();
          v99 = MEMORY[0x1E69E7CC0];
        }

        v100 = *(v99 + 16);

        if (__OFSUB__(v96 >> 1, v97))
        {
          __break(1u);
        }

        else if (v100 == (v96 >> 1) - v97)
        {
          v101 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v101)
          {
LABEL_58:
            swift_beginAccess();
            sub_1D2873498();
            swift_endAccess();
            swift_beginAccess();
            v102 = sub_1D2873488();
            swift_endAccess();
            v103 = *(v102 + 16);

            if (v103)
            {
              v104 = *(v0 + 664);
              v105 = *(v0 + 656);
              v106 = *(v0 + 648);
              v107 = *(v0 + 640);
              sub_1D28735C8();
              sub_1D28735A8();
              sub_1D28735B8();
              (*(v105 + 16))(v107, v104, v106);
              (*(v105 + 56))(v107, 0, 1, v106);
              swift_beginAccess();
              sub_1D2873438();
              swift_endAccess();
              sub_1D28725B8();
              v108 = sub_1D2873CA8();
              v109 = sub_1D2878A08();
              if (os_log_type_enabled(v108, v109))
              {
                v110 = swift_slowAlloc();
                *v110 = 0;
                _os_log_impl(&dword_1D226E000, v108, v109, "Did set configuration to disable image captioning for conditioning images", v110, 2u);
                MEMORY[0x1D38A3520](v110, -1, -1);
              }

              v111 = *(v0 + 1072);
              v112 = *(v0 + 992);
              v113 = *(v0 + 920);
              v114 = *(v0 + 664);
              v115 = *(v0 + 656);
              v116 = *(v0 + 648);

              v111(v112, v113);
              (*(v115 + 8))(v114, v116);
            }

            sub_1D28720E8();
            v117 = sub_1D2873C38();
            sub_1D2873C68();
            v118 = sub_1D2878BA8();
            if (sub_1D2878EE8())
            {
              v119 = *(v0 + 632);
              v120 = *(v0 + 624);
              v121 = *(v0 + 616);
              sub_1D2870F78();
              sub_1D2873C98();

              if ((*(v120 + 88))(v119, v121) == *MEMORY[0x1E69E93E8])
              {
                v122 = "[Error] Interval already ended";
              }

              else
              {
                (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
                v122 = "";
              }

              v123 = swift_slowAlloc();
              *v123 = 0;
              v124 = sub_1D2873C08();
              _os_signpost_emit_with_name_impl(&dword_1D226E000, v117, v118, v124, name, v122, v123, 2u);
              MEMORY[0x1D38A3520](v123, -1, -1);
            }

            v125 = *(v0 + 888);
            v126 = *(v0 + 872);
            v127 = *(v0 + 856);
            v128 = *(v0 + 848);
            v129 = *(v0 + 824);
            v130 = *(v0 + 800);

            v131 = *(v127 + 8);
            v131(v126, v128);
            v176(v129, v130);
            v131(v125, v128);
            goto LABEL_68;
          }

LABEL_57:
          swift_unknownObjectRelease();
          goto LABEL_58;
        }

        swift_unknownObjectRelease();
        v94 = v96;
        v93 = v97;
        v92 = v98;
      }

      sub_1D268E7D0(v95, v92, v93, v94);
      goto LABEL_57;
    }
  }

LABEL_68:
  v132 = *(v0 + 552);
  v133 = *(v0 + 408);
  v134 = *(v133 + 96);
  sub_1D22BD1D0(v133 + *(*(v0 + 904) + 64), v132, &qword_1EC6E33D0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  v136 = (*(*(v135 - 1) + 48))(v132, 1, v135);
  v137 = *(v0 + 584);
  v138 = *(v0 + 552);
  v193 = v134;
  if (v136 == 1)
  {
    sub_1D22BD238(v138, &qword_1EC6E33D0);
    v139 = sub_1D2871818();
    (*(*(v139 - 8) + 56))(v137, 1, 1, v139);
  }

  else
  {
    v140 = v135[12];
    v141 = v135[24];
    sub_1D238D058(*(v138 + v135[28]));
    sub_1D22EC9BC(v138, v137, &qword_1EC6D8F70);
    sub_1D22BD238(v138 + v141, &unk_1EC6E33C0);
    sub_1D22BD238(v138 + v140, &unk_1EC6DE5A0);
  }

  v142 = *(v0 + 608);
  v143 = *(v0 + 600);
  v144 = *(v0 + 584);
  v145 = *(v0 + 576);
  v146 = *(v0 + 568);
  v147 = *(v0 + 560);
  v187 = *(v0 + 544);
  v189 = *(v0 + 592);
  sub_1D2873588();
  sub_1D22BD1D0(v144, v145, &qword_1EC6D8F70);
  v148 = (*(v147 + 80) + 16) & ~*(v147 + 80);
  v149 = (v146 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
  v150 = swift_allocObject();
  sub_1D22EC9BC(v145, v150 + v148, &qword_1EC6D8F70);
  *(v150 + v149) = v193;
  sub_1D2870F68();
  sub_1D2873578();
  sub_1D2873568();
  sub_1D22BD238(v144, &qword_1EC6D8F70);
  swift_beginAccess();
  sub_1D2870F68();
  sub_1D2873418();
  sub_1D2870F68();
  sub_1D2873428();
  (*(v143 + 16))(v187, v142, v189);
  (*(v143 + 56))(v187, 0, 1, v189);
  sub_1D28733F8();
  swift_endAccess();
  sub_1D28720E8();
  sub_1D2873C18();
  v151 = sub_1D2873C38();
  v152 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    v154 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v151, v152, v154, "OnDeviceImageGenerator.emoji.assignConfiguration", "", v153, 2u);
    MEMORY[0x1D38A3520](v153, -1, -1);
  }

  v155 = *(v0 + 880);
  v156 = *(v0 + 864);
  v157 = *(v0 + 856);
  v158 = *(v0 + 848);
  v159 = *(v0 + 816);
  v160 = *(v0 + 808);
  v161 = *(v0 + 800);

  (*(v157 + 16))(v155, v156, v158);
  sub_1D2873C88();
  swift_allocObject();
  *(v0 + 1112) = sub_1D2873C78();
  (*(v157 + 8))(v156, v158);
  (*(v160 + 8))(v159, v161);
  sub_1D28725B8();
  v162 = sub_1D2873CA8();
  v163 = sub_1D2878A38();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    *v164 = 0;
    _os_log_impl(&dword_1D226E000, v162, v163, "Will assign playground configuration.", v164, 2u);
    MEMORY[0x1D38A3520](v164, -1, -1);
  }

  v165 = *(v0 + 1072);
  v166 = *(v0 + 1032);
  v167 = *(v0 + 1024);
  v168 = *(v0 + 984);
  v169 = *(v0 + 920);
  v170 = *(v0 + 536);
  v171 = *(v0 + 528);
  v194 = *(v0 + 520);

  v165(v168, v169);
  *(v0 + 1120) = sub_1D235F184();
  swift_beginAccess();
  (*(*(v167 - 8) + 16))(v170, v166, v167);
  (*(v171 + 104))(v170, *MEMORY[0x1E69E0058], v194);
  v172 = swift_task_alloc();
  *(v0 + 1128) = v172;
  *v172 = v0;
  v172[1] = sub_1D23769D4;
  v173 = *(v0 + 536);

  return MEMORY[0x1EEE4F948](v173);
}

uint64_t sub_1D23751F8()
{
  v1 = *v0;

  v2 = *(v1 + 1064);
  v3 = *(v1 + 1056);

  return MEMORY[0x1EEE6DFA0](sub_1D237533C, v3, v2);
}

uint64_t sub_1D237533C()
{
  v184 = v0;
  v1 = *(*(v0 + 392) + 16);

  if (v1)
  {

    sub_1D28725B8();
    v2 = sub_1D2873CA8();
    v3 = sub_1D2878A18();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D226E000, v2, v3, "Found entities requiring personalization in genmoji present in prompt.", v4, 2u);
      MEMORY[0x1D38A3520](v4, -1, -1);
    }

    v5 = *(v0 + 1072);
    v6 = *(v0 + 1000);
    v7 = *(v0 + 920);
    v8 = *(v0 + 400);

    v5(v6, v7);
    sub_1D22BCE64();
    swift_allocError();
    *v9 = xmmword_1D28830A0;
    *(v9 + 16) = -96;
    swift_willThrow();
    sub_1D2384398(v8, &OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_promptAssignmentTask, "Finished assignment task.");

    v10 = *(v0 + 8);

    return v10();
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v12 = sub_1D23CE688();
  if (v12 >= 1)
  {
    v13 = v12;
    swift_beginAccess();
    v14 = sub_1D2873488();
    swift_endAccess();
    v15 = *(v14 + 16);

    if (!v15)
    {
      v163 = v13;
      v16 = *(v0 + 840);
      v17 = *(v0 + 808);
      v18 = *(v0 + 800);
      v19 = *(v0 + 400);
      sub_1D28720E8();
      sub_1D2873C38();
      sub_1D2873BF8();
      v164 = *(v17 + 8);
      v164(v16, v18);
      if (*(v19 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration22OnDeviceImageGenerator_isFromFacePicker))
      {
        v20 = "assignEmojiAdditionalConditioningImagesFacePicker";
      }

      else
      {
        v20 = "assignEmojiAdditionalConditioningImages";
      }

      sub_1D28720E8();
      v21 = sub_1D2873C38();
      v22 = sub_1D2878BB8();
      if (sub_1D2878EE8())
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v21, v22, v24, v20, "", v23, 2u);
        MEMORY[0x1D38A3520](v23, -1, -1);
      }

      name = v20;
      v25 = *(v0 + 888);
      v26 = *(v0 + 880);
      v27 = *(v0 + 856);
      v28 = *(v0 + 848);
      v29 = *(v0 + 832);
      v30 = *(v0 + 800);
      v31 = *(v0 + 408);

      (*(v27 + 16))(v26, v25, v28);
      sub_1D2873C88();
      swift_allocObject();
      sub_1D2873C78();
      v164(v29, v30);
      v32 = *(v31 + 104);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = *(v0 + 784);
        v166 = *(v0 + 776);
        v35 = (*(v0 + 792) + *(v166 + 48));
        v36 = v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
        v37 = *(v0 + 680);
        v167 = (v37 + 56);
        v165 = v37;
        v180 = (v37 + 48);
        v38 = *(v0 + 760);
        v171 = *(v0 + 400);
        v177 = *(v34 + 72);
        v168 = (v38 + 56);
        v175 = (v38 + 48);
        v169 = v38;
        v174 = (v38 + 32);
        v39 = MEMORY[0x1E69E7CC0];
        v172 = v35;
        do
        {
          sub_1D238D0B8(v36, *(v0 + 792), type metadata accessor for CuratedPrompt);
          v40 = v35[1];
          if (v40)
          {
            v179 = v39;
            v41 = *v35;
            v42 = *(v171 + 16);
            v43 = type metadata accessor for EmojiImageProvider();
            swift_beginAccess();
            v44 = *(v42 + 16);
            if (*(v44 + 16) && (v45 = sub_1D25D0574(v43), (v46 & 1) != 0))
            {
              sub_1D22D7044(*(v44 + 56) + 40 * v45, v0 + 16);
              swift_endAccess();
              sub_1D227268C((v0 + 16), v0 + 56);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
              swift_dynamicCast();
              v47 = *(v0 + 384);
            }

            else
            {
              swift_endAccess();
              v47 = swift_allocObject();
              *(v47 + 16) = MEMORY[0x1E69E7CC8];
              *(v47 + 24) = 0x4074000000000000;
              v183[3] = v43;
              v183[4] = &off_1F4DD8D38;
              v183[0] = v47;
              swift_beginAccess();
              sub_1D2870F78();
              sub_1D25CDC34(v183, v43);
              swift_endAccess();
            }

            swift_beginAccess();
            v48 = *(v47 + 16);
            if (*(v48 + 16) && (v49 = sub_1D25D05B0(v41, v40), (v50 & 1) != 0))
            {
              v51 = *(v0 + 736);
              v52 = *(v0 + 696);
              v53 = *(v0 + 672);
              sub_1D238D0B8(*(v48 + 56) + *(v165 + 72) * v49, v52, type metadata accessor for PlaygroundImage);
              sub_1D238C294(v52, v51, type metadata accessor for PlaygroundImage);
              swift_endAccess();
              (*(v165 + 56))(v51, 0, 1, v53);

              v54 = *(v165 + 48);
              v35 = v172;
            }

            else
            {
              v173 = v33;
              v55 = *(v0 + 728);
              v56 = v41;
              v57 = *(v0 + 720);
              v58 = *(v0 + 672);
              swift_endAccess();
              v170 = v56;
              sub_1D284E808(v56, v40, v55, 320.0);
              sub_1D22BD1D0(v55, v57, &unk_1EC6DE5A0);
              v54 = *v180;
              v59 = (*v180)(v57, 1, v58);
              v60 = *(v0 + 720);
              if (v59 == 1)
              {
                sub_1D22BD238(v60, &unk_1EC6DE5A0);
              }

              else
              {
                v65 = *(v0 + 712);
                v66 = *(v0 + 688);
                v67 = *(v0 + 672);
                sub_1D238C294(v60, v66, type metadata accessor for PlaygroundImage);
                sub_1D238D0B8(v66, v65, type metadata accessor for PlaygroundImage);
                (*v167)(v65, 0, 1, v67);
                swift_beginAccess();
                sub_1D2870F68();
                sub_1D25CE748(v65, v170, v40);
                swift_endAccess();
                sub_1D238DA5C(v66, type metadata accessor for PlaygroundImage);
              }

              v35 = v172;
              sub_1D22EC9BC(*(v0 + 728), *(v0 + 736), &unk_1EC6DE5A0);

              v33 = v173;
            }

            v68 = *(v0 + 736);
            if (v54(v68, 1, *(v0 + 672)) == 1)
            {
              v69 = *(v0 + 752);
              v70 = *(v0 + 744);
              sub_1D22BD238(v68, &unk_1EC6DE5A0);
              (*v168)(v70, 1, 1, v69);
            }

            else
            {
              sub_1D262C1D0(*(v0 + 744));
              sub_1D238DA5C(v68, type metadata accessor for PlaygroundImage);
            }

            v39 = v179;
          }

          else
          {
            v61 = *(v0 + 704);
            v62 = *(v0 + 672);
            sub_1D22BD1D0(*(v0 + 792) + *(v166 + 36), v61, &unk_1EC6DE5A0);
            if ((*v180)(v61, 1, v62) == 1)
            {
              v63 = *(v0 + 752);
              v64 = *(v0 + 744);
              sub_1D22BD238(*(v0 + 704), &unk_1EC6DE5A0);
              (*v168)(v64, 1, 1, v63);
            }

            else
            {
              v71 = *(v0 + 704);
              sub_1D262C1D0(*(v0 + 744));
              sub_1D238DA5C(v71, type metadata accessor for PlaygroundImage);
            }
          }

          v72 = *(v0 + 752);
          v73 = *(v0 + 744);
          sub_1D238DA5C(*(v0 + 792), type metadata accessor for CuratedPrompt);
          if ((*v175)(v73, 1, v72) == 1)
          {
            sub_1D22BD238(*(v0 + 744), &qword_1EC6DA510);
          }

          else
          {
            v74 = *v174;
            (*v174)(*(v0 + 768), *(v0 + 744), *(v0 + 752));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_1D27CCDB0(0, v39[2] + 1, 1, v39);
            }

            v76 = v39[2];
            v75 = v39[3];
            if (v76 >= v75 >> 1)
            {
              v39 = sub_1D27CCDB0(v75 > 1, v76 + 1, 1, v39);
            }

            v77 = *(v0 + 768);
            v78 = *(v0 + 752);
            v39[2] = v76 + 1;
            v74(v39 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v76, v77, v78);
          }

          v36 += v177;
          --v33;
        }

        while (v33);
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

      v79 = sub_1D23789E8(v39, v163);

      v183[0] = v79;
      sub_1D286F8FC();
      v83 = sub_1D268CB0C(v163, v183[0]);
      if (v82)
      {
        v84 = v82;
        v85 = v81;
        v86 = v80;
        sub_1D2879678();
        swift_unknownObjectRetain_n();
        v87 = swift_dynamicCastClass();
        if (!v87)
        {
          swift_unknownObjectRelease();
          v87 = MEMORY[0x1E69E7CC0];
        }

        v88 = *(v87 + 16);

        if (__OFSUB__(v84 >> 1, v85))
        {
          __break(1u);
        }

        else if (v88 == (v84 >> 1) - v85)
        {
          v89 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v89)
          {
LABEL_54:
            swift_beginAccess();
            sub_1D2873498();
            swift_endAccess();
            swift_beginAccess();
            v90 = sub_1D2873488();
            swift_endAccess();
            v91 = *(v90 + 16);

            if (v91)
            {
              v92 = *(v0 + 664);
              v93 = *(v0 + 656);
              v94 = *(v0 + 648);
              v95 = *(v0 + 640);
              sub_1D28735C8();
              sub_1D28735A8();
              sub_1D28735B8();
              (*(v93 + 16))(v95, v92, v94);
              (*(v93 + 56))(v95, 0, 1, v94);
              swift_beginAccess();
              sub_1D2873438();
              swift_endAccess();
              sub_1D28725B8();
              v96 = sub_1D2873CA8();
              v97 = sub_1D2878A08();
              if (os_log_type_enabled(v96, v97))
              {
                v98 = swift_slowAlloc();
                *v98 = 0;
                _os_log_impl(&dword_1D226E000, v96, v97, "Did set configuration to disable image captioning for conditioning images", v98, 2u);
                MEMORY[0x1D38A3520](v98, -1, -1);
              }

              v99 = *(v0 + 1072);
              v100 = *(v0 + 992);
              v101 = *(v0 + 920);
              v102 = *(v0 + 664);
              v103 = *(v0 + 656);
              v104 = *(v0 + 648);

              v99(v100, v101);
              (*(v103 + 8))(v102, v104);
            }

            sub_1D28720E8();
            v105 = sub_1D2873C38();
            sub_1D2873C68();
            v106 = sub_1D2878BA8();
            if (sub_1D2878EE8())
            {
              v107 = *(v0 + 632);
              v108 = *(v0 + 624);
              v109 = *(v0 + 616);
              sub_1D2870F78();
              sub_1D2873C98();

              if ((*(v108 + 88))(v107, v109) == *MEMORY[0x1E69E93E8])
              {
                v110 = "[Error] Interval already ended";
              }

              else
              {
                (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
                v110 = "";
              }

              v111 = swift_slowAlloc();
              *v111 = 0;
              v112 = sub_1D2873C08();
              _os_signpost_emit_with_name_impl(&dword_1D226E000, v105, v106, v112, name, v110, v111, 2u);
              MEMORY[0x1D38A3520](v111, -1, -1);
            }

            v113 = *(v0 + 888);
            v114 = *(v0 + 872);
            v115 = *(v0 + 856);
            v116 = *(v0 + 848);
            v117 = *(v0 + 824);
            v118 = *(v0 + 800);

            v119 = *(v115 + 8);
            v119(v114, v116);
            v164(v117, v118);
            v119(v113, v116);
            goto LABEL_64;
          }

LABEL_53:
          swift_unknownObjectRelease();
          goto LABEL_54;
        }

        swift_unknownObjectRelease();
        v82 = v84;
        v81 = v85;
        v80 = v86;
      }

      sub_1D268E7D0(v83, v80, v81, v82);
      goto LABEL_53;
    }
  }

LABEL_64:
  v120 = *(v0 + 552);
  v121 = *(v0 + 408);
  v122 = *(v121 + 96);
  sub_1D22BD1D0(v121 + *(*(v0 + 904) + 64), v120, &qword_1EC6E33D0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  v124 = (*(*(v123 - 1) + 48))(v120, 1, v123);
  v125 = *(v0 + 584);
  v126 = *(v0 + 552);
  v181 = v122;
  if (v124 == 1)
  {
    sub_1D22BD238(v126, &qword_1EC6E33D0);
    v127 = sub_1D2871818();
    (*(*(v127 - 8) + 56))(v125, 1, 1, v127);
  }

  else
  {
    v128 = v123[12];
    v129 = v123[24];
    sub_1D238D058(*(v126 + v123[28]));
    sub_1D22EC9BC(v126, v125, &qword_1EC6D8F70);
    sub_1D22BD238(v126 + v129, &unk_1EC6E33C0);
    sub_1D22BD238(v126 + v128, &unk_1EC6DE5A0);
  }

  v130 = *(v0 + 608);
  v131 = *(v0 + 600);
  v132 = *(v0 + 584);
  v133 = *(v0 + 576);
  v134 = *(v0 + 568);
  v135 = *(v0 + 560);
  v176 = *(v0 + 544);
  v178 = *(v0 + 592);
  sub_1D2873588();
  sub_1D22BD1D0(v132, v133, &qword_1EC6D8F70);
  v136 = (*(v135 + 80) + 16) & ~*(v135 + 80);
  v137 = (v134 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = swift_allocObject();
  sub_1D22EC9BC(v133, v138 + v136, &qword_1EC6D8F70);
  *(v138 + v137) = v181;
  sub_1D2870F68();
  sub_1D2873578();
  sub_1D2873568();
  sub_1D22BD238(v132, &qword_1EC6D8F70);
  swift_beginAccess();
  sub_1D2870F68();
  sub_1D2873418();
  sub_1D2870F68();
  sub_1D2873428();
  (*(v131 + 16))(v176, v130, v178);
  (*(v131 + 56))(v176, 0, 1, v178);
  sub_1D28733F8();
  swift_endAccess();
  sub_1D28720E8();
  sub_1D2873C18();
  v139 = sub_1D2873C38();
  v140 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    v142 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v139, v140, v142, "OnDeviceImageGenerator.emoji.assignConfiguration", "", v141, 2u);
    MEMORY[0x1D38A3520](v141, -1, -1);
  }

  v143 = *(v0 + 880);
  v144 = *(v0 + 864);
  v145 = *(v0 + 856);
  v146 = *(v0 + 848);
  v147 = *(v0 + 816);
  v148 = *(v0 + 808);
  v149 = *(v0 + 800);

  (*(v145 + 16))(v143, v144, v146);
  sub_1D2873C88();
  swift_allocObject();
  *(v0 + 1112) = sub_1D2873C78();
  (*(v145 + 8))(v144, v146);
  (*(v148 + 8))(v147, v149);
  sub_1D28725B8();
  v150 = sub_1D2873CA8();
  v151 = sub_1D2878A38();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    _os_log_impl(&dword_1D226E000, v150, v151, "Will assign playground configuration.", v152, 2u);
    MEMORY[0x1D38A3520](v152, -1, -1);
  }

  v153 = *(v0 + 1072);
  v154 = *(v0 + 1032);
  v155 = *(v0 + 1024);
  v156 = *(v0 + 984);
  v157 = *(v0 + 920);
  v158 = *(v0 + 536);
  v159 = *(v0 + 528);
  v182 = *(v0 + 520);

  v153(v156, v157);
  *(v0 + 1120) = sub_1D235F184();
  swift_beginAccess();
  (*(*(v155 - 8) + 16))(v158, v154, v155);
  (*(v159 + 104))(v158, *MEMORY[0x1E69E0058], v182);
  v160 = swift_task_alloc();
  *(v0 + 1128) = v160;
  *v160 = v0;
  v160[1] = sub_1D23769D4;
  v161 = *(v0 + 536);

  return MEMORY[0x1EEE4F948](v161);
}