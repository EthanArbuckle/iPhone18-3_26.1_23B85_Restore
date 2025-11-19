uint64_t EntropyError.hashValue.getter()
{
  v1 = *v0;
  sub_25A1F6FD0();
  MEMORY[0x25F84E9B0](v1);
  return sub_25A1F6FF0();
}

uint64_t sub_25A1F31A4()
{
  v1 = *v0;
  sub_25A1F6FD0();
  MEMORY[0x25F84E9B0](v1);
  return sub_25A1F6FF0();
}

uint64_t sub_25A1F3218()
{
  v1 = *v0;
  sub_25A1F6FD0();
  MEMORY[0x25F84E9B0](v1);
  return sub_25A1F6FF0();
}

uint64_t sub_25A1F326C()
{
  v0 = sub_25A1F6E30();
  sub_25A1F6D70(v0, qword_27FA03620);
  sub_25A1F4194(v0, qword_27FA03620);
  return sub_25A1F6E20();
}

uint64_t ModelMonitoringLighthouseWorker.doWork(context:durationThreshold:)(uint64_t a1, double a2)
{
  *(v2 + 64) = a2;
  *(v2 + 56) = a1;
  v3 = sub_25A1F6F00();
  *(v2 + 72) = v3;
  v4 = *(v3 - 8);
  *(v2 + 80) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v6 = sub_25A1F6F10();
  *(v2 + 104) = v6;
  v7 = *(v6 - 8);
  *(v2 + 112) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25A1F341C, 0, 0);
}

uint64_t sub_25A1F341C()
{
  v52 = v0;
  if (sub_25A1F6EA0())
  {
    if (qword_27FA03490 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 56);
    v2 = sub_25A1F6E30();
    sub_25A1F4194(v2, qword_27FA03620);
    v3 = v1;
    v4 = sub_25A1F6E10();
    v5 = sub_25A1F6EB0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 56);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v51[0] = v8;
      *v7 = 136315394;
      v9 = sub_25A1F6DF0();
      v11 = sub_25A1F5058(v9, v10, v51);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_25A1F6E00();
      v14 = sub_25A1F5058(v12, v13, v51);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_25A1F2000, v4, v5, "TaskId: %s, TaskName: %s: asked to stop!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F84EC80](v8, -1, -1);
      MEMORY[0x25F84EC80](v7, -1, -1);
    }

    v15 = *(v0 + 120);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    sub_25A1F6E90();
    sub_25A1F5600(&qword_27FA03450, MEMORY[0x277D85678]);
    swift_allocError();
    sub_25A1F6E40();
    swift_willThrow();

    v18 = *(v0 + 8);
LABEL_13:

    return v18(0);
  }

  *(v0 + 128) = 0;
  v19 = sub_25A1F6EA0();
  *(v0 + 33) = v19 & 1;
  if (v19)
  {
    if (qword_27FA03490 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 56);
    v21 = sub_25A1F6E30();
    sub_25A1F4194(v21, qword_27FA03620);
    v22 = v20;
    v23 = sub_25A1F6E10();
    v24 = sub_25A1F6EB0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 56);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51[0] = v27;
      *v26 = 136315650;
      v28 = sub_25A1F6DF0();
      v30 = sub_25A1F5058(v28, v29, v51);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = sub_25A1F6E00();
      v33 = sub_25A1F5058(v31, v32, v51);

      *(v26 + 14) = v33;
      *(v26 + 22) = 2048;
      *(v26 + 24) = 0;
      _os_log_impl(&dword_25A1F2000, v23, v24, "TaskId: %s, TaskName: %s: currentDuration: %f", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F84EC80](v27, -1, -1);
      MEMORY[0x25F84EC80](v26, -1, -1);
    }

    v34 = *(v0 + 120);
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);

    v18 = *(v0 + 8);
    goto LABEL_13;
  }

  v38 = *(v0 + 120);
  v40 = *(v0 + 96);
  v39 = *(v0 + 104);
  v42 = *(v0 + 80);
  v41 = *(v0 + 88);
  v43 = *(v0 + 72);
  sub_25A1F6F80();
  *(v0 + 40) = xmmword_25A1F7380;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v44 = sub_25A1F5600(&qword_27FA03440, MEMORY[0x277D85928]);
  sub_25A1F6F60();
  sub_25A1F5600(&qword_27FA03448, MEMORY[0x277D858F8]);
  sub_25A1F6F20();
  v45 = *(v42 + 8);
  *(v0 + 136) = v45;
  *(v0 + 144) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v41, v43);
  v46 = *(MEMORY[0x277D85A58] + 4);
  v47 = swift_task_alloc();
  *(v0 + 152) = v47;
  *v47 = v0;
  v47[1] = sub_25A1F39A4;
  v48 = *(v0 + 120);
  v50 = *(v0 + 96);
  v49 = *(v0 + 104);

  return MEMORY[0x2822008C8](v50, v0 + 16, v49, v44);
}

uint64_t sub_25A1F39A4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  v4 = *(v2 + 144);
  if (v0)
  {
    (*(v2 + 136))(*(v2 + 96), *(v2 + 72));
    v5 = sub_25A1F3EC0;
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);
    v8 = *(v2 + 104);
    (*(v2 + 136))(*(v2 + 96), *(v2 + 72));
    (*(v7 + 8))(v6, v8);
    v5 = sub_25A1F3AFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25A1F3AFC()
{
  v37 = v0;
  v1 = *(v0 + 128) + 0.25;
  if (v1 >= *(v0 + 64))
  {
    v3 = *(v0 + 33) ^ 1;
    goto LABEL_5;
  }

  *(v0 + 128) = v1;
  v2 = sub_25A1F6EA0();
  *(v0 + 33) = v2 & 1;
  if (v2)
  {
    v3 = 0;
LABEL_5:
    if (qword_27FA03490 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 56);
    v5 = sub_25A1F6E30();
    sub_25A1F4194(v5, qword_27FA03620);
    v6 = v4;
    v7 = sub_25A1F6E10();
    v8 = sub_25A1F6EB0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 56);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315650;
      v12 = sub_25A1F6DF0();
      v14 = sub_25A1F5058(v12, v13, &v36);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_25A1F6E00();
      v17 = sub_25A1F5058(v15, v16, &v36);

      *(v10 + 14) = v17;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v1;
      _os_log_impl(&dword_25A1F2000, v7, v8, "TaskId: %s, TaskName: %s: currentDuration: %f", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F84EC80](v11, -1, -1);
      MEMORY[0x25F84EC80](v10, -1, -1);
    }

    v18 = *(v0 + 120);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);

    v21 = *(v0 + 8);

    return v21(v3 & 1);
  }

  v23 = *(v0 + 120);
  v25 = *(v0 + 96);
  v24 = *(v0 + 104);
  v27 = *(v0 + 80);
  v26 = *(v0 + 88);
  v28 = *(v0 + 72);
  sub_25A1F6F80();
  *(v0 + 40) = xmmword_25A1F7380;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v29 = sub_25A1F5600(&qword_27FA03440, MEMORY[0x277D85928]);
  sub_25A1F6F60();
  sub_25A1F5600(&qword_27FA03448, MEMORY[0x277D858F8]);
  sub_25A1F6F20();
  v30 = *(v27 + 8);
  *(v0 + 136) = v30;
  *(v0 + 144) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v26, v28);
  v31 = *(MEMORY[0x277D85A58] + 4);
  v32 = swift_task_alloc();
  *(v0 + 152) = v32;
  *v32 = v0;
  v32[1] = sub_25A1F39A4;
  v33 = *(v0 + 120);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);

  return MEMORY[0x2822008C8](v35, v0 + 16, v34, v29);
}

uint64_t sub_25A1F3EC0()
{
  v27 = v0;
  (*(v0[14] + 8))(v0[15], v0[13]);
  if (qword_27FA03490 != -1)
  {
    swift_once();
  }

  v1 = sub_25A1F6E30();
  sub_25A1F4194(v1, qword_27FA03620);
  v2 = sub_25A1F6E10();
  v3 = sub_25A1F6EC0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25A1F2000, v2, v3, "Task interruped while sleeping.", v6, 2u);
    MEMORY[0x25F84EC80](v6, -1, -1);
  }

  v7 = v0[16];
  if (qword_27FA03490 != -1)
  {
    swift_once();
  }

  v8 = v0[7];
  sub_25A1F4194(v1, qword_27FA03620);
  v9 = v8;
  v10 = sub_25A1F6E10();
  v11 = sub_25A1F6EB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315650;
    v15 = sub_25A1F6DF0();
    v17 = sub_25A1F5058(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_25A1F6E00();
    v20 = sub_25A1F5058(v18, v19, &v26);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v7;
    _os_log_impl(&dword_25A1F2000, v10, v11, "TaskId: %s, TaskName: %s: currentDuration: %f", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F84EC80](v14, -1, -1);
    MEMORY[0x25F84EC80](v13, -1, -1);
  }

  v21 = v0[15];
  v22 = v0[11];
  v23 = v0[12];

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_25A1F4194(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ModelMonitoringLighthouseWorker.xLogx(x:)(Swift::Double x)
{
  v1 = x == 0.0;
  if (x >= 0.0)
  {
    result = 0.0;
    if (!v1)
    {
      return log(x) * x;
    }
  }

  else
  {
    sub_25A1F5648();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }

  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ModelMonitoringLighthouseWorker.entropy(nums:)(Swift::OpaquePointer nums)
{
  v2 = *(nums._rawValue + 2);
  if (v2 >= 2)
  {
    v4 = 0;
    v5 = (nums._rawValue + 32);
    while (v2 != v4)
    {
      v6 = v5[v4++];
      if (v6 < 0.0)
      {
LABEL_24:
        v3 = 0;
        goto LABEL_25;
      }
    }

    if (v2 > 3)
    {
      v7 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v9 = (nums._rawValue + 48);
      v8 = 0.0;
      v10 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v9;
        v8 = v8 + *(v9 - 2) + *(v9 - 1) + *v9 + v9[1];
        v9 += 4;
        v10 -= 4;
      }

      while (v10);
      if (v2 == v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0.0;
    }

    v12 = v2 - v7;
    v13 = (nums._rawValue + 8 * v7 + 32);
    do
    {
      v14 = *v13++;
      v8 = v8 + v14;
      --v12;
    }

    while (v12);
LABEL_14:
    v24 = MEMORY[0x277D84F90];
    sub_25A1F569C(0, v2, 0);
    v15 = *(v24 + 16);
    do
    {
      v16 = *v5;
      v17 = *(v24 + 24);
      v18 = v15 + 1;
      if (v15 >= v17 >> 1)
      {
        sub_25A1F569C((v17 > 1), v15 + 1, 1);
      }

      *(v24 + 16) = v18;
      *(v24 + 8 * v15 + 32) = v16 / v8;
      ++v5;
      ++v15;
      --v2;
    }

    while (v2);
    v1 = 0.0;
    do
    {
      v19 = v24 + 8 * v2;
      v20 = *(v19 + 32);
      if (v20 < 0.0)
      {

        goto LABEL_24;
      }

      v21 = 0.0;
      if (v20 != 0.0)
      {
        v21 = v20 * log(*(v19 + 32));
      }

      ++v2;
      v1 = v1 - v21;
    }

    while (v18 != v2);

    return v1;
  }

  v3 = 1;
LABEL_25:
  sub_25A1F5648();
  swift_allocError();
  *v22 = v3;
  swift_willThrow();
  return v1;
}

Swift::tuple_peopleSuggestionsSize_Int_numNoScore_Int_numMeanDeviations_Int_numEntropyDeviations_Int __swiftcall ModelMonitoringLighthouseWorker.monitorScores(mean:std:entropyMean:entropySd:)(Swift::Double mean, Swift::Double std, Swift::Double entropyMean, Swift::Double entropySd)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = [BiomeLibrary() MLSE];
  swift_unknownObjectRelease();
  v13 = [v12 ShareSheet];
  swift_unknownObjectRelease();
  v14 = [v13 Inference];
  swift_unknownObjectRelease();
  v15 = [v14 PeopleSuggestions];
  swift_unknownObjectRelease();
  v16 = [v15 publisher];

  v46 = nullsub_1;
  v47 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_25A1F6DEC;
  v45 = &unk_286BDC3D0;
  v17 = _Block_copy(&aBlock);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = mean;
  *(v18 + 32) = std;
  *(v18 + 40) = v10;
  *(v18 + 48) = entropyMean;
  *(v18 + 56) = entropySd;
  *(v18 + 64) = v11;
  *(v18 + 72) = v8;
  v46 = sub_25A1F5734;
  v47 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_25A1F6DEC;
  v45 = &unk_286BDC420;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 sinkWithCompletion:v17 receiveInput:v19];
  _Block_release(v19);
  _Block_release(v17);

  if (qword_27FA03490 != -1)
  {
    swift_once();
  }

  v21 = sub_25A1F6E30();
  sub_25A1F4194(v21, qword_27FA03620);

  v22 = sub_25A1F6E10();
  v23 = sub_25A1F6EB0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    swift_beginAccess();
    *(v24 + 4) = *(v8 + 16);

    _os_log_impl(&dword_25A1F2000, v22, v23, "mm plugin: peopleSuggestionsSize is %ld.", v24, 0xCu);
    MEMORY[0x25F84EC80](v24, -1, -1);
  }

  else
  {
  }

  v25 = sub_25A1F6E10();
  v26 = sub_25A1F6EB0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    swift_beginAccess();
    *(v27 + 4) = *(v9 + 16);

    _os_log_impl(&dword_25A1F2000, v25, v26, "mm plugin: numNoScore is %ld.", v27, 0xCu);
    MEMORY[0x25F84EC80](v27, -1, -1);
  }

  else
  {
  }

  v28 = sub_25A1F6E10();
  v29 = sub_25A1F6EB0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    swift_beginAccess();
    *(v30 + 4) = *(v10 + 16);

    _os_log_impl(&dword_25A1F2000, v28, v29, "mm plugin: numMeanDeviations is %ld.", v30, 0xCu);
    MEMORY[0x25F84EC80](v30, -1, -1);
  }

  else
  {
  }

  v31 = sub_25A1F6E10();
  v32 = sub_25A1F6EB0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    swift_beginAccess();
    *(v33 + 4) = *(v11 + 16);

    _os_log_impl(&dword_25A1F2000, v31, v32, "mm plugin: numEntropyDeviations is %ld.", v33, 0xCu);
    MEMORY[0x25F84EC80](v33, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v34 = *(v8 + 16);
  swift_beginAccess();
  v35 = *(v9 + 16);
  swift_beginAccess();
  v36 = *(v10 + 16);
  swift_beginAccess();
  v37 = *(v11 + 16);

  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  result.numEntropyDeviations = v41;
  result.numMeanDeviations = v40;
  result.numNoScore = v39;
  result.peopleSuggestionsSize = v38;
  return result;
}

Swift::Int __swiftcall ModelMonitoringLighthouseWorker.monitorVirtualFeatureStore()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = [BiomeLibrary() MLSE];
  swift_unknownObjectRelease();
  v2 = [v1 ShareSheet];
  swift_unknownObjectRelease();
  v3 = [v2 VirtualFeatureStore];
  swift_unknownObjectRelease();
  v4 = [v3 publisher];

  v18 = nullsub_1;
  v19 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_25A1F6DEC;
  v17 = &unk_286BDC448;
  v5 = _Block_copy(&aBlock);
  v18 = sub_25A1F5EC0;
  v19 = v0;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_25A1F6DEC;
  v17 = &unk_286BDC470;
  v6 = _Block_copy(&aBlock);

  v7 = [v4 sinkWithCompletion:v5 receiveInput:v6];
  _Block_release(v6);
  _Block_release(v5);

  if (qword_27FA03490 != -1)
  {
    swift_once();
  }

  v8 = sub_25A1F6E30();
  sub_25A1F4194(v8, qword_27FA03620);

  v9 = sub_25A1F6E10();
  v10 = sub_25A1F6EB0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 16);

    _os_log_impl(&dword_25A1F2000, v9, v10, "mm plugin: featureStoreSize is %ld.", v11, 0xCu);
    MEMORY[0x25F84EC80](v11, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v12 = *(v0 + 16);

  return v12;
}

void sub_25A1F4DE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *sub_25A1F4E50(char *result, int64_t a2, char a3, char *a4)
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
    sub_25A1F6550(&qword_27FA03478, &qword_25A1F74D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_25A1F4F54(char *result, int64_t a2, char a3, char *a4)
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
    sub_25A1F6550(&qword_27FA03470, &qword_25A1F74D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_25A1F5058(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25A1F5124(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25A1F6D14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_25A1F6504(v11);
  return v7;
}

unint64_t sub_25A1F5124(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25A1F5230(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25A1F6EF0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25A1F5230(uint64_t a1, unint64_t a2)
{
  v4 = sub_25A1F527C(a1, a2);
  sub_25A1F53AC(&unk_286BDC380);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25A1F527C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25A1F5498(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25A1F6EF0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25A1F6E50();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25A1F5498(v10, 0);
        result = sub_25A1F6ED0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25A1F53AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25A1F550C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25A1F5498(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_25A1F6550(&unk_27FA03480, &unk_25A1F74E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25A1F550C(char *result, int64_t a2, char a3, char *a4)
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
    sub_25A1F6550(&unk_27FA03480, &unk_25A1F74E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_25A1F5600(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25A1F5648()
{
  result = qword_27FA03458;
  if (!qword_27FA03458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA03458);
  }

  return result;
}

char *sub_25A1F569C(char *a1, int64_t a2, char a3)
{
  result = sub_25A1F61FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25A1F56CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25A1F56E4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void sub_25A1F5734(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = [a1 eventBody];
  if (v11)
  {
    v12 = v11;
    v73 = v9;
    v13 = [v11 peopleSuggestions];
    sub_25A1F61B0();
    v14 = sub_25A1F6E60();

    if (v14 >> 62)
    {
      v15 = sub_25A1F6F30();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    oslog = v12;
    v71 = v10;
    v72 = v6;
    if (v15)
    {
      if (v15 < 1)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v10 = 0;
      v16 = MEMORY[0x277D84F90];
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x25F84E8B0](v10, v14);
        }

        else
        {
          v17 = *(v14 + 8 * v10 + 32);
        }

        v18 = v17;
        [v17 score];
        v20 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_25A1F4F54(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        v2 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v16 = sub_25A1F4F54((v21 > 1), v22 + 1, 1, v16);
        }

        ++v10;

        *(v16 + 2) = v2;
        *&v16[8 * v22 + 32] = v20;
      }

      while (v15 != v10);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    if (qword_27FA03490 != -1)
    {
      swift_once();
    }

    v26 = sub_25A1F6E30();
    sub_25A1F4194(v26, qword_27FA03620);
    v27 = sub_25A1F6E10();
    v28 = sub_25A1F6EB0();
    if (os_log_type_enabled(v27, v28))
    {
      v10 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v76[0] = v2;
      *v10 = 136315138;

      v30 = MEMORY[0x25F84E840](v29, MEMORY[0x277D839F8]);
      v32 = v31;

      v33 = sub_25A1F5058(v30, v32, v76);

      *(v10 + 4) = v33;
      _os_log_impl(&dword_25A1F2000, v27, v28, "mm plugin: scores are %s", v10, 0xCu);
      sub_25A1F6504(v2);
      MEMORY[0x25F84EC80](v2, -1, -1);
      MEMORY[0x25F84EC80](v10, -1, -1);
    }

    v34 = 0;
    v35 = *(v16 + 2);
    while (v35 != v34)
    {
      v36 = &v16[8 * v34++];
      if (*(v36 + 4) != -1.0)
      {
        if (v35 <= 3)
        {
          v37 = 0;
          v38 = 0.0;
          goto LABEL_37;
        }

        v37 = v35 & 0x7FFFFFFFFFFFFFFCLL;
        v43 = v16 + 48;
        v38 = 0.0;
        v44 = v35 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = *v43;
          v38 = v38 + *(v43 - 2) + *(v43 - 1) + *v43 + *(v43 + 1);
          v43 += 32;
          v44 -= 4;
        }

        while (v44);
        if (v35 != v37)
        {
LABEL_37:
          v46 = v35 - v37;
          v47 = &v16[8 * v37 + 32];
          do
          {
            v48 = *v47++;
            v38 = v38 + v48;
            --v46;
          }

          while (v46);
        }

        v49 = v38 / v35;
        if (v4 + v5 + v5 < v49 || v49 < v4 - (v5 + v5))
        {
          v51 = v72;
          swift_beginAccess();
          v52 = v72[2];
          v40 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (!v40)
          {
            v72[2] = v53;
            goto LABEL_46;
          }

          __break(1u);
        }

        else
        {
LABEL_46:
          v54 = sub_25A1F6E10();
          v55 = sub_25A1F6EB0();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 134217984;
            *(v56 + 4) = v49;
            _os_log_impl(&dword_25A1F2000, v54, v55, "mm plugin: mean score is %f.", v56, 0xCu);
            MEMORY[0x25F84EC80](v56, -1, -1);
          }

          v76[0] = v16;
          swift_bridgeObjectRetain_n();
          sub_25A1F6300(v76);

          v10 = v76[0];
          if (*(v76[0] + 2) >= 5uLL)
          {
            v2 = 5;
          }

          else
          {
            v2 = *(v76[0] + 2);
          }

          sub_25A1F6F50();
          swift_unknownObjectRetain_n();
          v57 = swift_dynamicCastClass();
          if (!v57)
          {
            swift_unknownObjectRelease();
            v57 = MEMORY[0x277D84F90];
          }

          v58 = *(v57 + 16);

          if (v58 == v2)
          {
            v59 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (!v59)
            {
              v59 = MEMORY[0x277D84F90];
              goto LABEL_56;
            }

            goto LABEL_57;
          }

LABEL_72:
          swift_unknownObjectRelease();
          sub_25A1F6434(v10, v10 + 32, 0, (2 * v2) | 1);
          v59 = v70;
LABEL_56:
          swift_unknownObjectRelease();
LABEL_57:
          v61 = ModelMonitoringLighthouseWorker.entropy(nums:)(v59);
          if (v60)
          {

            v62 = sub_25A1F6E10();
            v63 = sub_25A1F6EC0();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&dword_25A1F2000, v62, v63, "mm plugin: Not able to compute the entropy.", v64, 2u);
              MEMORY[0x25F84EC80](v64, -1, -1);
            }

            v42 = v73;
            goto LABEL_65;
          }

          v65 = v61;

          v42 = v73;
          if (v7 + v8 >= v65 && v65 >= v7 - v8)
          {
            goto LABEL_65;
          }

          v51 = v71;
          swift_beginAccess();
          v66 = v71[2];
          v40 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (!v40)
          {
            v71[2] = v67;
            goto LABEL_65;
          }
        }

        __break(1u);

        __break(1u);
        return;
      }
    }

    swift_beginAccess();
    v39 = *(v3 + 16);
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      __break(1u);
      goto LABEL_72;
    }

    *(v3 + 16) = v41;
    v42 = v73;
LABEL_65:
    swift_beginAccess();
    v68 = *(v42 + 16);
    v40 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (!v40)
    {
      *(v42 + 16) = v69;

      return;
    }

    __break(1u);
    goto LABEL_69;
  }

  if (qword_27FA03490 != -1)
  {
LABEL_70:
    swift_once();
  }

  v23 = sub_25A1F6E30();
  sub_25A1F4194(v23, qword_27FA03620);
  osloga = sub_25A1F6E10();
  v24 = sub_25A1F6EC0();
  if (os_log_type_enabled(osloga, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_25A1F2000, osloga, v24, "incorrect item in stream", v25, 2u);
    MEMORY[0x25F84EC80](v25, -1, -1);
  }
}

uint64_t sub_25A1F5EC0()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return result;
}

unint64_t sub_25A1F5F08()
{
  result = qword_27FA03460;
  if (!qword_27FA03460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA03460);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntropyError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EntropyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelMonitoringLighthouseWorker(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ModelMonitoringLighthouseWorker(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25A1F61B0()
{
  result = qword_27FA03468;
  if (!qword_27FA03468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA03468);
  }

  return result;
}

char *sub_25A1F61FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_25A1F6550(&qword_27FA03470, &qword_25A1F74D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_25A1F6300(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25A1F6D00(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25A1F6F40();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25A1F6E80();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25A1F659C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_25A1F6434(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_25A1F6550(&qword_27FA03470, &qword_25A1F74D0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_25A1F6504(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25A1F6550(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25A1F659C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25A1F6CEC(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_25A1F6AF8((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v13 >= v14;
        ++v12;
        v13 = v14;
        if ((((v11 < v10) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25A1F4E50(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_25A1F4E50((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_25A1F6AF8((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*v27 >= v25)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_25A1F6AF8(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_25A1F6D14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_25A1F6D70(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}