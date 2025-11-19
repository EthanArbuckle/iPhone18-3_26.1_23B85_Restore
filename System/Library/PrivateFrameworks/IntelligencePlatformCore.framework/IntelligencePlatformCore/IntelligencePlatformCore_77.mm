uint64_t sub_1C4AE8C60()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - v4;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FDD64(v8))
  {
    v9 = sub_1C43FCED0();
    sub_1C4402BFC(v9);
    sub_1C440A5A8();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    sub_1C43FFD4C();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  sub_1C43FCEE8(v0, qword_1EDE2DD70);
  sub_1C4400C28();
  v15 = sub_1C4402B58();
  sub_1C4431194(v15, v16, v17);
  v18 = type metadata accessor for Configuration();
  sub_1C440BAA8(v5, 0, 1, v18);
  sub_1C445FE5C();
  v19 = sub_1C4404050();
  sub_1C45A6EE0(v19, v20);
  swift_endAccess();
  sub_1C4A4D33C();
  type metadata accessor for SimpleScheduledBackgroundTask();
  sub_1C44149FC();
  v21 = swift_allocObject();
  sub_1C4AF19AC(0x657069506C6C7546, 0xEC000000656E696CLL, v21, &type metadata for ScheduledTasks.FullPipelineRunner, &off_1F43FB080, v22, v23, v24);
  sub_1C4AEAAD0();

  sub_1C44149FC();
  v25 = swift_allocObject();
  sub_1C4AF19AC(0xD000000000000011, 0x80000001C4FB14F0, v25, &type metadata for ScheduledTasks.FastpassPipelineRunner, &off_1F43FB098, v26, v27, v28);
  sub_1C4AEAAD0();

  type metadata accessor for ScheduledTasks.AutonamingMessagesPipelineRunner();
  sub_1C44042C4();
  v29 = swift_allocObject();
  sub_1C43FBDF0();
  *(v30 + 16) = 0xD00000000000001ALL;
  *(v30 + 24) = v31;
  type metadata accessor for SimpleScheduledTask();
  sub_1C44149FC();
  v32 = swift_allocObject();
  sub_1C4AF18EC(v29, v32, type metadata accessor for ScheduledTasks.AutonamingMessagesPipelineRunner, &off_1F43FA668);
  sub_1C4A4CFA8();

  type metadata accessor for ScheduledTasks.AutonamingMessagesAggregationAccuracyRunner();
  sub_1C44042C4();
  v33 = swift_allocObject();
  sub_1C43FBDF0();
  *(v34 + 16) = 0xD000000000000025;
  *(v34 + 24) = v35;
  sub_1C44149FC();
  v36 = swift_allocObject();
  sub_1C4AF18EC(v33, v36, type metadata accessor for ScheduledTasks.AutonamingMessagesAggregationAccuracyRunner, &off_1F43FA630);
  sub_1C4A4CFA8();
}

uint64_t sub_1C4AE8F50()
{
  sub_1C43FBCD4();
  v1 = *v0;
  v2 = sub_1C440A014(dword_1C4F50128);
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  sub_1C43FC688(v3);

  return v6();
}

uint64_t sub_1C4AE8FD8()
{
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9078, 0, 0);
}

uint64_t sub_1C4AE9078()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 56);
  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C44024C0(v7);
    *v8 = v9;
    v10 = sub_1C440FAFC(v8);

    return sub_1C4A4D5EC(v10);
  }

  return result;
}

uint64_t sub_1C4AE9144()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);
    sub_1C441A3D8();
    sub_1C44542C0(v12, v13);

    sub_1C43FC1B0();

    return v14();
  }
}

uint64_t sub_1C4AE9270()
{
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9310, 0, 0);
}

uint64_t sub_1C4AE9310()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 56);
  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C44024C0(v7);
    *v8 = v9;
    v10 = sub_1C440FAFC(v8);

    return sub_1C4A4D9C8(v10);
  }

  return result;
}

uint64_t sub_1C4AE93DC()
{
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE947C, 0, 0);
}

uint64_t sub_1C4AE947C()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 56);
  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C44024C0(v7);
    *v8 = v9;
    v10 = sub_1C440FAFC(v8);

    return sub_1C4A4DC4C(v10);
  }

  return result;
}

uint64_t sub_1C4AE9548()
{
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE95E8, 0, 0);
}

uint64_t sub_1C4AE95E8()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 56);
  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C44024C0(v7);
    *v8 = v9;
    v10 = sub_1C440FAFC(v8);

    return sub_1C4A4DDCC(v10);
  }

  return result;
}

uint64_t sub_1C4AE96B4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);
    sub_1C441A3D8();
    sub_1C44542C0(v12, v13);

    sub_1C43FC1B0();

    return v14();
  }
}

uint64_t sub_1C4AE97E0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C441A3D8();
  sub_1C44542C0(v1, v2);

  sub_1C43FBDA0();
  v4 = *(v0 + 72);

  return v3();
}

uint64_t sub_1C4AE984C()
{
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE98EC, 0, 0);
}

uint64_t sub_1C4AE98EC()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 56);
  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C44024C0(v7);
    *v8 = v9;
    v10 = sub_1C440FAFC(v8);

    return sub_1C4A4E00C(v10);
  }

  return result;
}

uint64_t sub_1C4AE99B8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9A58, 0, 0);
}

uint64_t sub_1C4AE9A58()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 64);
  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C444B284(v7);
    *v8 = v9;
    v10 = sub_1C43FDD4C(v8);

    return sub_1C4AEADE8(v10);
  }

  return result;
}

uint64_t sub_1C4AE9B24()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);
    sub_1C441A3D8();
    sub_1C44542C0(v12, v13);

    sub_1C43FC1B0();

    return v14();
  }
}

uint64_t sub_1C4AE9C50()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 64);
  sub_1C441A3D8();
  sub_1C44542C0(v1, v2);

  sub_1C43FBDA0();
  v4 = *(v0 + 80);

  return v3();
}

uint64_t sub_1C4AE9CBC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9D5C, 0, 0);
}

uint64_t sub_1C4AE9D5C()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 64);
  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C444B284(v7);
    *v8 = v9;
    v10 = sub_1C43FDD4C(v8);

    return sub_1C4AEB110(v10);
  }

  return result;
}

uint64_t sub_1C4AE9E28()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);
    sub_1C441A3D8();
    sub_1C44542C0(v12, v13);

    sub_1C43FC1B0();

    return v14();
  }
}

uint64_t sub_1C4AE9F54(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9FF4, 0, 0);
}

uint64_t sub_1C4AE9FF4()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 64);
  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C444B284(v7);
    *v8 = v9;
    v10 = sub_1C43FDD4C(v8);

    return sub_1C4AEB3E0(v10);
  }

  return result;
}

uint64_t sub_1C4AEA0C0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEA160, 0, 0);
}

uint64_t sub_1C4AEA160()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 64);
  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C444B284(v7);
    *v8 = v9;
    v10 = sub_1C43FDD4C(v8);

    return sub_1C4AEB5B0(v10);
  }

  return result;
}

uint64_t sub_1C4AEA22C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEA2CC, 0, 0);
}

uint64_t sub_1C4AEA2CC()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 64);
  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C444B284(v7);
    *v8 = v9;
    v10 = sub_1C43FDD4C(v8);

    return sub_1C4AEB780(v10);
  }

  return result;
}

uint64_t sub_1C4AEA398(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEA438, 0, 0);
}

uint64_t sub_1C4AEA438()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = *(v0 + 64);
  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v4);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = sub_1C444B284(v7);
    *v8 = v9;
    v10 = sub_1C43FDD4C(v8);

    return sub_1C4AEB950(v10);
  }

  return result;
}

uint64_t sub_1C4AEA508()
{
  sub_1C43FBCD4();
  v1 = *v0;
  v2 = sub_1C440A014(&unk_1C4F50140);
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  sub_1C43FC688(v3);

  return v6();
}

uint64_t sub_1C4AEA590()
{
  sub_1C43FBCD4();
  v1 = *v0;
  v2 = sub_1C440A014(&unk_1C4F50150);
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  sub_1C43FC688(v3);

  return v6();
}

uint64_t sub_1C4AEA618()
{
  sub_1C43FBCD4();
  v1 = *v0;
  v2 = sub_1C440A014(&unk_1C4F50160);
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  sub_1C43FC688(v3);

  return v6();
}

uint64_t sub_1C4AEA6A0()
{
  sub_1C43FBCD4();
  v1 = *v0;
  v2 = sub_1C440A014(dword_1C4F50170);
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  sub_1C43FC688(v3);

  return v6();
}

uint64_t sub_1C4AEA728()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  v3 = sub_1C442B738(v1, v2);
  v4 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v3, 1, 1, v4);
}

uint64_t sub_1C4AEA7A0()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - v4;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DE10);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FDD64(v8))
  {
    v9 = sub_1C43FCED0();
    sub_1C4402BFC(v9);
    sub_1C440A5A8();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    sub_1C43FFD4C();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  sub_1C43FCEE8(v0, qword_1EDE2DD70);
  sub_1C4400C28();
  v15 = sub_1C4404C28();
  sub_1C4431194(v15, v16, v17);
  v18 = type metadata accessor for Configuration();
  sub_1C440BAA8(v5, 0, 1, v18);
  sub_1C445FE5C();
  v19 = sub_1C43FBC98();
  sub_1C45A6EE0(v19, v20);
  swift_endAccess();
  type metadata accessor for SimpleScheduledTask();
  sub_1C44149FC();
  v21 = swift_allocObject();
  sub_1C4AF186C(0x6C69614477656956, 0xE900000000000079, v21, &type metadata for ScheduledTasks.ViewDailyRunner, &off_1F43FB0B0, v22, v23, v24);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v25 = swift_allocObject();
  sub_1C4AF186C(0xD000000000000017, 0x80000001C4FB14B0, v25, &type metadata for ScheduledTasks.ViewDailyWithNetworkingRunner, &off_1F43FB0D0, v26, v27, v28);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v29 = swift_allocObject();
  sub_1C4AF186C(0x6B65655777656956, 0xEA0000000000796CLL, v29, &type metadata for ScheduledTasks.ViewWeeklyRunner, &off_1F43FB0F0, v30, v31, v32);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v33 = swift_allocObject();
  sub_1C4AF186C(0x7265764577656956, 0xEF7372756F483279, v33, &type metadata for ScheduledTasks.ViewEvery2HoursRunner, &off_1F43FB110, v34, v35, v36);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v37 = swift_allocObject();
  sub_1C4AF186C(0x7265764577656956, 0xEF7372756F483479, v37, &type metadata for ScheduledTasks.ViewEvery4HoursRunner, &off_1F43FB130, v38, v39, v40);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v41 = swift_allocObject();
  sub_1C4AF186C(0xD000000000000017, 0x80000001C4FB14D0, v41, &type metadata for ScheduledTasks.ResetDisabledViewsDailyRunner, &off_1F43FB150, v42, v43, v44);
  sub_1C4A4CFA8();
}

void sub_1C4AEAAD0()
{
  v1 = v0;
  v2 = v0[6];
  sub_1C4409678(v0 + 2, v0[5]);
  v3 = *(v2 + 8);
  v4 = sub_1C4402B58();
  v6 = v5(v4);
  v8 = v7;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v9 = sub_1C4F00978();
  v10 = sub_1C442B738(v9, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_1C43FD084();
    v14 = sub_1C43FFD34();
    v36[0] = v14;
    *v13 = 136315138;
    v15 = sub_1C4404C28();
    *(v13 + 4) = sub_1C441D828(v15, v16, v17);
    sub_1C4417FB0(&dword_1C43F8000, v18, v12, "ScheduledTask: %s: Registering");
    sub_1C440962C(v14);
    sub_1C43FBE2C();
    sub_1C43FFD18();
  }

  v19 = [objc_opt_self() sharedScheduler];
  sub_1C43FBDF0();
  v20 = sub_1C4404C28();
  MEMORY[0x1C6940010](v20);
  v21 = sub_1C4F01108();

  v22 = swift_allocObject();
  v22[2] = v6;
  v22[3] = v8;
  v22[4] = v1;
  v36[4] = sub_1C4AF1A34;
  v36[5] = v22;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 1107296256;
  v36[2] = sub_1C4440590;
  v36[3] = &unk_1F43FA6C8;
  v23 = _Block_copy(v36);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  [v19 registerForTaskWithIdentifier:v21 usingQueue:0 launchHandler:v23];
  _Block_release(v23);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();

  if (os_log_type_enabled(v24, v25))
  {
    sub_1C43FD084();
    v26 = sub_1C440E550();
    v36[0] = v26;
    *v10 = 136315138;
    v27 = sub_1C4404C28();
    v30 = sub_1C441D828(v27, v28, v29);

    *(v10 + 4) = v30;
    sub_1C4404B90();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_1C440962C(v26);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }
}

uint64_t sub_1C4AEAE08()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  v5 = sub_1C4403684(2u);

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4AEAF08()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4AEB008()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C4AEB060()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AE99B8(v2, v3);
}

uint64_t sub_1C4AEB130()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  v5 = sub_1C4403684(3u);

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4AEB230()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4AEB330()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AE9CBC(v2, v3);
}

uint64_t sub_1C4AEB400()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  v5 = sub_1C4403684(4u);

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4AEB500()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AE9F54(v2, v3);
}

uint64_t sub_1C4AEB5D0()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  v5 = sub_1C4403684(6u);

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4AEB6D0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEA0C0(v2, v3);
}

uint64_t sub_1C4AEB7A0()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  v5 = sub_1C4403684(5u);

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4AEB8A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEA22C(v2, v3);
}

uint64_t sub_1C4AEB970()
{
  v22 = v0;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = v0[2];
  v2 = sub_1C4415590();
  v0[3] = v2;
  v3 = *(v2 + 16);
  v0[4] = v3;
  v4 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1C4AEBFE8;
  *(v5 + 24) = 0;
  *(v5 + 32) = v3;

  v6 = sub_1C49A5770(sub_1C498DB0C, v5);
  v0[5] = v6;

  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C43FCEE8(v7, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    swift_slowAlloc();
    v10 = sub_1C440E550();
    v21 = v10;
    *v5 = 134218242;
    *(v5 + 4) = *(v6 + 16);

    *(v5 + 12) = 2080;
    v11 = MEMORY[0x1C6940380](v6, MEMORY[0x1E69E6158]);
    v13 = sub_1C441D828(v11, v12, &v21);

    *(v5 + 14) = v13;
    sub_1C4404B90();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    sub_1C440962C(v10);
    sub_1C43FFD18();
    sub_1C43FEA20();
  }

  else
  {
  }

  v19 = swift_task_alloc();
  v0[6] = v19;
  *v19 = v0;
  sub_1C43FC688(v19);

  return sub_1C4CE0544(v6, 0x4000);
}

uint64_t sub_1C4AEBC24()
{
  sub_1C43FCF70();
  sub_1C43FDB88();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    *(v3 + 80) = 3;
    v13 = (v3 + 80);
    v14 = swift_task_alloc();
    *(v13 - 2) = v14;
    *v14 = v7;
    v14[1] = sub_1C4AEBDB4;
    v15 = *(v13 - 7);

    return sub_1C4427590(0x10000, 0x8000, 0, 0, 1, v13);
  }
}

uint64_t sub_1C4AEBDB4()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4AEBEB4()
{
  sub_1C43FBCD4();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C4AEBF14()
{
  sub_1C43FBCD4();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v0[7];
  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4AEBF84()
{
  sub_1C43FBCD4();
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[9];
  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4AEBFE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4BB9AC8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AEC014()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEA398(v2, v3);
}

uint64_t sub_1C4AEC0C4()
{
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 104) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEC160, 0, 0);
}

uint64_t sub_1C4AEC160()
{
  sub_1C43FCF70();
  *(v0 + 16) = 2;
  sub_1C43FBDF0();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = v1;
  *(v0 + 48) = xmmword_1C4F4FDC0;
  *(v0 + 64) = vdupq_n_s64(0x3BuLL);
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v2 = *(v0 + 112);
  sub_1C442B738(*(v0 + 104), qword_1EDE2DD70);
  sub_1C440D164();
  v3 = sub_1C4404C28();
  sub_1C4466EEC(v3, v4);
  v5 = type metadata accessor for Configuration();
  result = sub_1C440175C(v2, 1, v5);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_1C4AEC29C;
    v9 = *(v0 + 112);

    return sub_1C47C0D20(v9);
  }

  return result;
}

uint64_t sub_1C4AEC29C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 128) = v0;

  sub_1C4AF1D68(v3 + 16);
  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 112);
    sub_1C441A3D8();
    sub_1C44542C0(v12, v13);

    sub_1C43FC1B0();

    return v14();
  }
}

uint64_t sub_1C4AEC3D0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 112);
  sub_1C441A3D8();
  sub_1C44542C0(v1, v2);

  sub_1C43FBDA0();
  v4 = *(v0 + 128);

  return v3();
}

uint64_t sub_1C4AEC43C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEC0C4();
}

uint64_t sub_1C4AEC4D4()
{
  v1 = type metadata accessor for LongitudinalDataCollectionTask();
  v0[5] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEC5AC, 0, 0);
}

uint64_t sub_1C4AEC5AC()
{
  sub_1C43FCF70();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v2 = v1[9];
  sub_1C43FCEE8(v1[7], qword_1EDE2DD70);
  sub_1C43FC600();
  sub_1C4466EEC(v0, v2);
  v3 = type metadata accessor for Configuration();
  result = sub_1C440175C(v2, 1, v3);
  if (v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = (v1[9] + *(v3 + 20));
  v8 = *v6;
  v7 = v6[1];
  if (qword_1EDDDBEF8 != -1)
  {
    swift_once();
  }

  if ((xmmword_1EDDDBF00 & ~v8) != 0)
  {
    sub_1C44542C0(v1[9], type metadata accessor for Configuration);
  }

  else
  {
    v9 = *(&xmmword_1EDDDBF00 + 1) & ~v7;
    sub_1C441A3D8();
    sub_1C44542C0(v10, v11);
    if (!v9)
    {
      v12 = v1[8];
      sub_1C4466EEC(v0, v12);
      result = sub_1C440175C(v12, 1, v3);
      if (!v5)
      {
        v13 = v1[8];
        v14 = v1[5];
        v15 = v1[6];
        sub_1C4426D84();
        sub_1C4AF1DBC(v16, v15, v17);
        v18 = v15 + v14[5];
        *v18 = 2;
        *(v18 + 8) = 0;
        v19 = (v15 + v14[6]);
        *v19 = 0xD00000000000001ALL;
        v19[1] = 0x80000001C4FB1610;
        *(v15 + v14[7]) = 1;
        *(v15 + v14[8]) = 23;
        *(v15 + v14[9]) = 59;
        *(v15 + v14[10]) = 59;
        v20 = swift_task_alloc();
        v1[10] = v20;
        *v20 = v1;
        v20[1] = sub_1C4AEC818;
        v21 = v1[6];

        return sub_1C4A27BF8();
      }

LABEL_17:
      __break(1u);
      return result;
    }
  }

  v23 = v1[8];
  v22 = v1[9];
  v24 = v1[6];

  sub_1C43FC1B0();

  return v25();
}

uint64_t sub_1C4AEC818()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *(v5 + 48);
  v8 = *v1;
  sub_1C43FBDAC();
  *v9 = v8;
  v3[11] = v0;

  sub_1C44542C0(v7, type metadata accessor for LongitudinalDataCollectionTask);
  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v14 = v3[8];
    v13 = v3[9];
    v15 = v3[6];

    sub_1C43FC1B0();

    return v16();
  }
}

uint64_t sub_1C4AEC984()
{
  sub_1C43FBCD4();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];

  sub_1C43FBDA0();
  v5 = v0[11];

  return v4();
}

uint64_t sub_1C4AEC9F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEC4D4();
}

uint64_t sub_1C4AECA8C()
{
  *(v1 + 16) = v0;
  v2 = *(*(type metadata accessor for Configuration() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AECB1C, 0, 0);
}

uint64_t sub_1C4AECB1C()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner() + 20);
  sub_1C4400C28();
  sub_1C4431194(v2 + v4, v1, v5);
  v6 = type metadata accessor for AutonamingFeedbackCAEventLogger();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_1C456902C(&qword_1EC0B97D8, &qword_1C4F0F958);
  sub_1C45B1E90();
  *(v9 + 16) = sub_1C4F00F28();
  sub_1C4426D84();
  sub_1C4AF1DBC(v1, v9 + v10, v11);
  sub_1C45AD814();
  swift_setDeallocating();
  sub_1C45AF6DC();

  sub_1C43FC1B0();

  return v12();
}

uint64_t sub_1C4AECC1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AECA8C();
}

uint64_t sub_1C4AECCA8(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = type metadata accessor for Pipeline.StatusStore();
  v2[15] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[17] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AECD84, 0, 0);
}

uint64_t sub_1C4AECD84()
{
  v61 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v1 = v0[14];
  v2 = sub_1C4F00978();
  v0[20] = sub_1C442B738(v2, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = sub_1C43FD084();
    v8 = sub_1C43FFD34();
    v60[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C441D828(v6, v5, v60);
    sub_1C4417FB0(&dword_1C43F8000, v9, v4, "ConstructionSystemTasks: %s: starting pipeline run.");
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FFD18();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v10 = v0[19];
  sub_1C442B738(v0[17], qword_1EDE2DD70);
  sub_1C43FC600();
  v11 = sub_1C4404050();
  sub_1C4466EEC(v11, v12);
  v13 = type metadata accessor for Configuration();
  v14 = sub_1C440EF74();
  result = sub_1C440175C(v14, v15, v13);
  if (v17)
  {
    __break(1u);
    return result;
  }

  if (qword_1EDDF0AB0 != -1)
  {
    sub_1C4402D88();
  }

  v18 = v0[19];
  v19 = sub_1C4468E90();
  v0[21] = v19;
  v20 = v0[19];
  v22 = v0[15];
  v21 = v0[16];
  sub_1C441A3D8();
  sub_1C44542C0(v23, v24);
  sub_1C4400C28();
  sub_1C4431194(v19 + v25, v21, v26);
  *(v21 + *(v22 + 20)) = 1;
  LOBYTE(v22) = Pipeline.StatusStore.isLongRunningPipelineActivated()();
  sub_1C44542C0(v21, type metadata accessor for Pipeline.StatusStore);
  if (v22)
  {
    v27 = v0[14];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = v0[13];
      v30 = v0[14];
      v32 = sub_1C43FD084();
      v33 = sub_1C43FFD34();
      v60[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1C441D828(v31, v30, v60);
      _os_log_impl(&dword_1C43F8000, v28, v29, "ConstructionSystemTasks: Need for long running exception activity. Exiting %s", v32, 0xCu);
      sub_1C440962C(v33);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    if (qword_1EDDFC178 != -1)
    {
      swift_once();
    }

    v34 = v0[18];
    sub_1C442B738(v0[17], qword_1EDE2DD88);
    sub_1C440D164();
    v35 = sub_1C4404050();
    sub_1C4466EEC(v35, v36);
    v37 = sub_1C440EF74();
    v39 = sub_1C44157D4(v37, v38, v13);
    sub_1C4420C3C(v34, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (v39 == 1)
    {
      sub_1C446D0DC();
      v40 = swift_allocError();
      *v41 = 0xD000000000000037;
      *(v41 + 8) = 0x80000001C4FB1670;
      *(v41 + 16) = 2;
      swift_willThrow();
      v42 = v40;
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();

      if (!os_log_type_enabled(v43, v44))
      {

        goto LABEL_24;
      }

      v45 = sub_1C43FD084();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v40;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      sub_1C4402B48();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      sub_1C4420C3C(v46, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD18();
      sub_1C43FE9D4();
    }

    else
    {
      type metadata accessor for OneShotSingletons();
      v55 = sub_1C442ECD4();
      sub_1C446703C(v55);
      sub_1C4467260();
    }

LABEL_24:
    v57 = v0[18];
    v56 = v0[19];
    v58 = v0[16];

    sub_1C43FC1B0();

    return v59();
  }

  v54 = swift_task_alloc();
  v0[22] = v54;
  *v54 = v0;
  sub_1C43FC688(v54);

  return sub_1C4ABFCBC(2);
}

uint64_t sub_1C4AED44C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4AED544()
{
  sub_1C43FBCD4();
  v1 = v0[21];

  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];

  sub_1C43FC1B0();

  return v5();
}

uint64_t sub_1C4AED5B8()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 168);

  v2 = *(v0 + 184);
  *(v0 + 88) = v2;
  v3 = (v0 + 88);
  v4 = v2;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 96) = v2;
    v18 = v2;
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 64);
      v20 = *(v0 + 72);
      v21 = *(v0 + 80);
      v22 = v21 == 2 && v19 == 3;
      if (v22 && !v20)
      {

        v3 = (v0 + 96);
        goto LABEL_3;
      }

      sub_1C4AF1E18(v19, v20, v21);
    }

    v24 = *(v0 + 144);
    v23 = *(v0 + 152);
    v25 = *(v0 + 128);

    sub_1C43FBDA0();
    goto LABEL_13;
  }

LABEL_3:
  v5 = *(v0 + 160);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (sub_1C4402B64(v7))
  {
    v8 = sub_1C43FCED0();
    sub_1C43FBD24(v8);
    sub_1C4402B48();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_1C43FE9D4();
  }

  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v16 = *(v0 + 128);

  sub_1C43FC1B0();
LABEL_13:

  return v17();
}

uint64_t sub_1C4AED770()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AECCA8(v2, v3);
}

uint64_t sub_1C4AED82C()
{
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 40) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AED8C8, 0, 0);
}

uint64_t sub_1C4AED8C8()
{
  sub_1C43FCF70();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DE10);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C4402B48();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_1C43FE9D4();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v10 = v0[6];
  sub_1C440E41C(v0[5], qword_1EDE2DD70);
  v11 = sub_1C43FBC98();
  sub_1C4466EEC(v11, v12);
  v13 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v13);
  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      sub_1C4402D88();
    }

    v16 = v0[6];
    v0[7] = sub_1C4468E90();
    v17 = v0[6];
    sub_1C441A3D8();
    sub_1C44542C0(v18, v19);
    v20 = swift_task_alloc();
    v21 = sub_1C44024C0(v20);
    *v21 = v22;
    sub_1C43FC688(v21);

    return sub_1C4470C88(2);
  }

  return result;
}

uint64_t sub_1C4AEDA98()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    sub_1C43FC1B0();

    return v14();
  }
}

uint64_t sub_1C4AEDBBC()
{
  sub_1C43FBCD4();
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[6];

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4AEDC20(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v12 = sub_1C4F00978();
  sub_1C43FCEE8(v12, qword_1EDE2DE10);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();
  if (sub_1C43FDD64(v14))
  {
    v15 = sub_1C43FCED0();
    sub_1C4402BFC(v15);
    _os_log_impl(&dword_1C43F8000, v13, v3, a3, v4, 2u);
    sub_1C43FFD4C();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  sub_1C43FCEE8(v6, qword_1EDE2DD70);
  sub_1C440D164();
  sub_1C4466EEC(v13, v11);
  v16 = type metadata accessor for Configuration();
  result = sub_1C440175C(v11, 1, v16);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      sub_1C4402D88();
    }

    sub_1C4468E90();
    sub_1C441A3D8();
    sub_1C44542C0(v11, v19);
    sub_1C4ABF738();
  }

  return result;
}

uint64_t sub_1C4AEDDF4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AED82C();
}

uint64_t sub_1C4AEDEB0()
{
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[23] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEDF58, 0, 0);
}

uint64_t sub_1C4AEDF58()
{
  sub_1C4404D98();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = v0[25];
  v2 = sub_1C442B738(v0[23], qword_1EDE2DD70);
  sub_1C440D164();
  v3 = sub_1C43FBC98();
  sub_1C4466EEC(v3, v4);
  v5 = type metadata accessor for Configuration();
  v6 = sub_1C440EF74();
  result = sub_1C440175C(v6, v7, v5);
  if (v9)
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = *(v0[25] + *(v5 + 20));
  if (qword_1EDDFFAB8 != -1)
  {
    sub_1C440BEF4();
    v10 = v40;
    v39 = v0[25];
  }

  v11 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEBF8, v10), xmmword_1EDDFEBF8));
  v12 = v11.i8[0] & v11.i8[4];
  sub_1C441A3D8();
  sub_1C44542C0(v13, v14);
  if ((v12 & 1) == 0 || (sub_1C442ECD4(), v15 = sub_1C4F01108(), v16 = sub_1C44C1028(v15), v15, !v16))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v29 = sub_1C4F00978();
    sub_1C43FCEE8(v29, qword_1EDDFECB8);
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CF8();
    if (!sub_1C4402B64(v31))
    {
      goto LABEL_22;
    }

    v32 = "ConstructionSystemTasks: AutonamingMessagesInferenceTask: feature flag is not enabled.";
    goto LABEL_21;
  }

  type metadata accessor for AutonamingMessagesModelHandler();
  if (sub_1C45C3790())
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v17 = sub_1C4F00978();
    sub_1C43FCEE8(v17, qword_1EDDFECB8);
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    if (sub_1C43FDD64(v19))
    {
      v20 = sub_1C43FCED0();
      sub_1C4402BFC(v20);
      sub_1C440A5A8();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      sub_1C43FFD4C();
    }

    v26 = v0[24];

    sub_1C4466EEC(v2, v26);
    result = sub_1C440175C(v26, 1, v5);
    if (!v9)
    {
      v27 = v0[24];
      type metadata accessor for AutonamingMessagesUpdateHandler();
      v0[26] = swift_initStackObject();
      v0[27] = AutonamingMessagesUpdateHandler.init(config:)(v27);
      v28 = swift_task_alloc();
      v0[28] = v28;
      *v28 = v0;
      sub_1C43FC688(v28);

      return sub_1C45CDEF0();
    }

LABEL_30:
    __break(1u);
    return result;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v37 = sub_1C4F00978();
  sub_1C43FCEE8(v37, qword_1EDDFECB8);
  v30 = sub_1C4F00968();
  v38 = sub_1C4F01CD8();
  if (sub_1C4402B64(v38))
  {
    v32 = "ConstructionSystemTasks: AutonamingMessagesInferenceTask: unavailable - GenerativeModels unavailable on current system.";
LABEL_21:
    v33 = sub_1C43FCED0();
    *v33 = 0;
    _os_log_impl(&dword_1C43F8000, v30, v2, v32, v33, 2u);
    sub_1C43FEA20();
  }

LABEL_22:

  v35 = v0[24];
  v34 = v0[25];

  sub_1C43FC1B0();

  return v36();
}

uint64_t sub_1C4AEE2D0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 224);
  v3 = *(v1 + 216);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AEE3D4()
{
  sub_1C43FCF70();
  sub_1C4F01968();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4AEE478()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4AEDEB0();
}

uint64_t sub_1C4AEE508()
{
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[5] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEE5B0, 0, 0);
}

uint64_t sub_1C4AEE5B0()
{
  sub_1C4404D98();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v2 = v1[7];
  sub_1C440E41C(v1[5], qword_1EDE2DD70);
  v3 = sub_1C43FBC98();
  sub_1C4466EEC(v3, v4);
  v5 = type metadata accessor for Configuration();
  v6 = sub_1C440EF74();
  result = sub_1C440175C(v6, v7, v5);
  if (v9)
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = *(v1[7] + *(v5 + 20));
  if (qword_1EDDFFAB8 != -1)
  {
    sub_1C440BEF4();
    v10 = v44;
    v43 = v1[7];
  }

  v11 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEBF8, v10), xmmword_1EDDFEBF8));
  v12 = v11.i8[0] & v11.i8[4];
  sub_1C441A3D8();
  sub_1C44542C0(v13, v14);
  if (v12)
  {
    sub_1C442ECD4();
    v15 = sub_1C4F01108();
    v16 = sub_1C44C1028(v15);

    if (v16)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v17 = sub_1C4F00978();
      sub_1C43FCEE8(v17, qword_1EDDFECB8);
      v18 = sub_1C4F00968();
      v19 = sub_1C4F01CF8();
      if (sub_1C43FDD64(v19))
      {
        v20 = sub_1C43FCED0();
        sub_1C4402BFC(v20);
        sub_1C440A5A8();
        _os_log_impl(v21, v22, v23, v24, v25, 2u);
        sub_1C43FFD4C();
      }

      v26 = v1[6];

      sub_1C4466EEC(v0, v26);
      result = sub_1C440175C(v26, 1, v5);
      if (!v9)
      {
        v27 = v1[6];
        type metadata accessor for AutonamingMessagesAggregationHandler();
        swift_allocObject();
        v1[8] = AutonamingMessagesAggregationHandler.init(config:)(v27);
        v28 = swift_task_alloc();
        v29 = sub_1C444B284(v28);
        *v29 = v30;
        sub_1C43FC688(v29);

        return sub_1C45B4458();
      }

LABEL_24:
      __break(1u);
      return result;
    }
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v31 = sub_1C4F00978();
  sub_1C43FCEE8(v31, qword_1EDDFECB8);
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CF8();
  if (sub_1C4402B64(v33))
  {
    v34 = sub_1C43FCED0();
    sub_1C43FBD24(v34);
    sub_1C4402B48();
    _os_log_impl(v35, v36, v37, v38, v39, 2u);
    sub_1C43FE9D4();
  }

  v41 = v1[6];
  v40 = v1[7];

  sub_1C43FC1B0();

  return v42();
}

uint64_t sub_1C4AEE8AC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AEE9B0()
{
  sub_1C43FCF70();
  sub_1C4F01968();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4AEEA54()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442F080;

  return sub_1C4AEE508();
}

uint64_t sub_1C4AEEAE4()
{
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[5] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEEBA4, 0, 0);
}

uint64_t sub_1C4AEEFC4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEEAE4();
}

uint64_t sub_1C4AEF05C()
{
  v1 = type metadata accessor for Configuration();
  v0[8] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[9] = swift_task_alloc();
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v0[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEF128, 0, 0);
}

uint64_t sub_1C4AEF128()
{
  sub_1C43FEAEC();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v1 = v0[11];
  v2 = v0[8];
  sub_1C442B738(v0[10], qword_1EDE2DD70);
  sub_1C43FC600();
  v3 = sub_1C4404050();
  sub_1C4466EEC(v3, v4);
  v5 = sub_1C440EF74();
  result = sub_1C440175C(v5, v6, v2);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[11];
    v10 = v0[9];
    type metadata accessor for AssetRegistryFullServer();
    sub_1C4400C28();
    sub_1C4431194(v9, v10, v11);
    v12 = sub_1C4EF9348();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_1C4EF9338();
    v15 = sub_1C4473C20(v10);
    v16 = v0[11];
    sub_1C441A3D8();
    sub_1C44542C0(v17, v18);
    type metadata accessor for AssetRegistryOverrideStoreCleanupTask();
    *(swift_initStackObject() + 16) = v15;
    sub_1C45A3350();

    v19 = v0[11];
    v20 = v0[9];

    sub_1C43FC1B0();

    return v21();
  }

  return result;
}

uint64_t sub_1C4AEF380()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEF05C();
}

uint64_t sub_1C4AEF418()
{
  v1 = sub_1C4EF9CD8();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v0[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEF510, 0, 0);
}

uint64_t sub_1C4AEF510()
{
  sub_1C4404D98();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4404B90();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FEA20();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  v9 = v0[9];
  sub_1C442B738(v0[8], qword_1EDE2DD70);
  sub_1C43FC600();
  v10 = sub_1C4404050();
  sub_1C4466EEC(v10, v11);
  v12 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v12);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[9];
    type metadata accessor for GlobalKnowledgeStore(0);
    sub_1C48300AC(v15);
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    sub_1C4EF9CC8();
    sub_1C4EF9C58();
    v20 = v19;
    (*(v17 + 8))(v16, v18);
    sub_1C49F1BE0(v20);

    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (sub_1C4402B64(v22))
    {
      v23 = sub_1C43FCED0();
      sub_1C43FBD24(v23);
      sub_1C4402B48();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      sub_1C43FE9D4();
    }

    v29 = v0[9];
    v30 = v0[7];

    sub_1C43FC1B0();

    return v31();
  }

  return result;
}

uint64_t sub_1C4AEF740()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEF418();
}

uint64_t sub_1C4AEF7D8()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_1C4AEF7EC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AEF848()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C4AEF870()
{
  sub_1C4AEF848();

  return swift_deallocClassInstance();
}

void sub_1C4AEF8EC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C442B738(v8, qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v12, v11);
  v13 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v11, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = &v11[*(v13 + 20)];
    v15 = *v14;
    v16 = *(v14 + 1);
    sub_1C44542C0(v11, type metadata accessor for Configuration);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v15) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v16) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v26 = sub_1C4F00978();
      sub_1C442B738(v26, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v27 = sub_1C4F00968();
      v28 = sub_1C4F01CF8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_1C441D828(a2, a3, aBlock);
        _os_log_impl(&dword_1C43F8000, v27, v28, "ScheduledTask: %s: registered as a no-op.", v29, 0xCu);
        sub_1C440962C(v30);
        MEMORY[0x1C6942830](v30, -1, -1);
        MEMORY[0x1C6942830](v29, -1, -1);
      }
    }

    else
    {
      aBlock[4] = sub_1C4AF1A40;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C4833DD0;
      aBlock[3] = &unk_1F43FA6F0;
      v18 = _Block_copy(aBlock);

      [a1 setExpirationHandler_];
      _Block_release(v18);
      v19 = *(a4 + 56);
      MEMORY[0x1EEE9AC00](v20);
      *(&v36 - 2) = a1;
      os_unfair_lock_lock(v19 + 6);
      sub_1C4AF1A48(&v19[4]);
      os_unfair_lock_unlock(v19 + 6);
      sub_1C442E860(a4 + 16, aBlock);
      sub_1C456902C(&qword_1EC0C3230, &qword_1C4F50198);
      sub_1C456902C(&qword_1EC0C3238, &unk_1C4F501A0);
      if (swift_dynamicCast())
      {
        sub_1C441D670(v39, v38);
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v21 = sub_1C4F00978();
        sub_1C442B738(v21, qword_1EDE2DE10);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v22 = sub_1C4F00968();
        v23 = sub_1C4F01CF8();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v37 = v25;
          *v24 = 136315138;
          *(v24 + 4) = sub_1C441D828(a2, a3, &v37);
          _os_log_impl(&dword_1C43F8000, v22, v23, "SimpleScheduledBackgroundTask: %s: task state set, calling async runner", v24, 0xCu);
          sub_1C440962C(v25);
          MEMORY[0x1C6942830](v25, -1, -1);
          MEMORY[0x1C6942830](v24, -1, -1);
        }

        sub_1C4AF00F0(v38);
        sub_1C440962C(v38);
      }

      else
      {
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v31 = sub_1C4F00978();
        sub_1C442B738(v31, qword_1EDE2DE10);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v32 = sub_1C4F00968();
        v33 = sub_1C4F01CB8();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *&v39[0] = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_1C441D828(a2, a3, v39);
          _os_log_impl(&dword_1C43F8000, v32, v33, "SimpleScheduledBackgroundTask: %s: has no runner", v34, 0xCu);
          sub_1C440962C(v35);
          MEMORY[0x1C6942830](v35, -1, -1);
          MEMORY[0x1C6942830](v34, -1, -1);
        }
      }

      sub_1C440962C(aBlock);
    }
  }
}

void sub_1C4AEFF1C(uint64_t a1)
{
  v1 = *(a1 + 56);
  os_unfair_lock_lock((v1 + 24));
  sub_1C4AF1B8C((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4AEFF78(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v3 + 32) = 1;
  if (*(v3 + 24))
  {
    v4 = *(v3 + 24);

    sub_1C4F01918();
  }

  sub_1C442E860(a2 + 16, v10);
  sub_1C456902C(&qword_1EC0C3230, &qword_1C4F50198);
  sub_1C456902C(&qword_1EC0C3240, &unk_1C4F47090);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v8, v11);
    v5 = v12;
    v6 = v13;
    sub_1C4409678(v11, v12);
    (*(v6 + 8))(v5, v6);
    return sub_1C440962C(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    return sub_1C4420C3C(v8, &unk_1EC0C1C60, qword_1C4F501C0);
  }
}

id sub_1C4AF00B4(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 16);
  *(*a1 + 16) = a2;

  return a2;
}

uint64_t sub_1C4AF00F0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v5 = a1[3];
  v4 = a1[4];
  sub_1C4409678(a1, v5);
  (*(*(v4 + 8) + 8))(v5);
  v6 = v2[7];
  os_unfair_lock_lock((v6 + 24));
  sub_1C4AF1A64((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

void sub_1C4AF01BC(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  v16 = *a1;
  if (*(v16 + 32) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v27[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1C441D828(a2, a3, v27);
      _os_log_impl(&dword_1C43F8000, v18, v19, "SimpleScheduledBackgroundTask: %s: state was set to be expired before the task was launched.", v20, 0xCu);
      sub_1C440962C(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v20, -1, -1);
    }

    sub_1C4AF0458(a2, a3, v16);
  }

  else
  {
    *(v16 + 32) = 0;
    sub_1C4F01898();
    v22 = sub_1C4F018C8();
    sub_1C440BAA8(v15, 0, 1, v22);
    sub_1C442E860(a4, v27);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    sub_1C441D670(v27, (v23 + 4));
    v23[9] = a2;
    v23[10] = a3;
    v23[11] = a5;
    v23[12] = a6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v24 = sub_1C4CDA340(0, 0, v15, &unk_1C4F501B8, v23);
    sub_1C4420C3C(v15, &qword_1EC0BC660, &qword_1C4F29150);
    v25 = *(v16 + 24);
    *(v16 + 24) = v24;
  }
}

void sub_1C4AF0458(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  if (v5)
  {
    v22[0] = 0;
    if ([v5 setTaskExpiredWithRetryAfter:v22 error:300.0])
    {
      v7 = v22[0];
    }

    else
    {
      v8 = v22[0];
      v9 = sub_1C4EF97A8();

      swift_willThrow();
      if (qword_1EDDFD028 != -1)
      {
        sub_1C43FE9B4();
      }

      v10 = sub_1C4F00978();
      sub_1C43FCEE8(v10, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = v9;
      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CD8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v22[0] = swift_slowAlloc();
        *v14 = 136315394;
        *(v14 + 4) = sub_1C441D828(a1, a2, v22);
        *(v14 + 12) = 2080;
        v15 = v9;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v16 = sub_1C4F01198();
        v18 = sub_1C441D828(v16, v17, v22);

        *(v14 + 14) = v18;
        _os_log_impl(&dword_1C43F8000, v12, v13, "SimpleScheduledBackgroundTask: %s: Setting task to completed with error: %s", v14, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FFD18();
      }

      v19 = *(a3 + 16);
      if (v19)
      {
        v20 = v19;
        [v20 setTaskCompleted];
      }

      else
      {
      }
    }
  }

  *(a3 + 32) = 0;
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C4AF06AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C4AF06D4, 0, 0);
}

uint64_t sub_1C4AF06D4()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 24);
  v2 = v1[4];
  sub_1C4409678(v1, v1[3]);
  sub_1C441CD2C(v2);
  v11 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = sub_1C44024C0(v6);
  *v7 = v8;
  sub_1C43FC688(v7);
  v9 = sub_1C4402B58();

  return v11(v9);
}

uint64_t sub_1C4AF07DC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 72) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C4AF08D4()
{
  sub_1C4404D98();
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v2[7];
  os_unfair_lock_lock((v6 + 24));
  sub_1C4AF0BD0((v6 + 16), 1, v5, v4, v2);
  os_unfair_lock_unlock((v6 + 24));
  if (!v1)
  {
    sub_1C43FBDA0();

    v7();
  }
}

uint64_t sub_1C4AF0998()
{
  v27 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = sub_1C4F00978();
  sub_1C43FCEE8(v3, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = v1;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 72);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1C441D828(v9, v8, v26);
    *(v10 + 12) = 2080;
    *(v0 + 16) = v7;
    v11 = v7;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v12 = sub_1C4F01198();
    v14 = sub_1C441D828(v12, v13, v26);

    *(v10 + 14) = v14;
    sub_1C4402B48();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    swift_arrayDestroy();
    sub_1C43FEA20();
    sub_1C43FE9D4();
  }

  v20 = *(v0 + 56);
  v25 = *(v0 + 32);
  v21 = *(*(v0 + 48) + 56);
  v22 = swift_task_alloc();
  *(v22 + 16) = v25;
  *(v22 + 32) = v20;
  os_unfair_lock_lock((v21 + 24));
  sub_1C4AF1B58((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));

  sub_1C43FBDA0();

  return v23();
}

void sub_1C4AF0BD0(uint64_t *a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *a1;
  if (a2)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      [v7 setTaskCompleted];
    }
  }

  else if (*(v6 + 32) == 1)
  {
    sub_1C4AF0458(a3, a4, v6);
    return;
  }

  v8 = a5[5];
  v9 = a5[6];
  sub_1C4409678(a5 + 2, v8);
  (*(v9 + 16))(v6, v8, v9);
}

xpc_activity_state_t sub_1C4AF0C80(uint64_t *a1, uint64_t a2, xpc_activity_state_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  *(v4 + 24) = a2;
  swift_unknownObjectRelease();
  v6 = swift_unknownObjectRetain();
  result = xpc_activity_get_state(v6);
  *a3 = result;
  return result;
}

void sub_1C4AF0D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, const char *a7)
{
  sub_1C43FFB44();
  if (v11(v7, 3))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v43 = sub_1C4F00968();
    a5();
    v13 = sub_1C440F210();
    if (sub_1C441DE30(v13, v14, v15, v16, v17, v18, v19, v20, v43))
    {
      v21 = sub_1C43FD084();
      sub_1C43FFD34();
      sub_1C440D1D4();
      *v21 = 136315138;
      v22 = sub_1C4404C28();
      *(v21 + 4) = sub_1C441D828(v22, v23, v24);
      sub_1C443F744();
      _os_log_impl(v25, v26, v27, a6, v21, 0xCu);
      sub_1C440962C(a5);
      sub_1C43FFD4C();
LABEL_10:
      sub_1C43FBE2C();

      return;
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v28 = sub_1C4F00978();
    sub_1C43FCEE8(v28, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = sub_1C4F00968();
    sub_1C4F01CD8();
    v29 = sub_1C440F210();
    if (sub_1C441DE30(v29, v30, v31, v32, v33, v34, v35, v36, v45))
    {
      sub_1C43FD084();
      sub_1C440E550();
      sub_1C440D1D4();
      *a6 = 136315138;
      v37 = sub_1C4404C28();
      *(a6 + 4) = sub_1C441D828(v37, v38, v39);
      sub_1C443F744();
      _os_log_impl(v40, v41, v42, a7, a6, 0xCu);
      sub_1C440962C(a5);
      sub_1C43FFD4C();
      goto LABEL_10;
    }
  }
}

BOOL sub_1C4AF0F58@<W0>(xpc_activity_t activity@<X1>, _BYTE *a2@<X8>)
{
  result = xpc_activity_should_defer(activity);
  *a2 = result;
  return result;
}

void sub_1C4AF0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  sub_1C43FFB44();
  if (v12(v7, v11))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4F00968();
    sub_1C4F01CF8();
    v14 = sub_1C440F210();
    if (sub_1C441DE30(v14, v15, v16, v17, v18, v19, v20, v21, v44))
    {
      v22 = sub_1C43FD084();
      sub_1C43FFD34();
      sub_1C440D1D4();
      *v22 = 136315138;
      v23 = sub_1C4404C28();
      *(v22 + 4) = sub_1C441D828(v23, v24, v25);
      sub_1C443F744();
      _os_log_impl(v26, v27, v28, a6, v22, 0xCu);
      sub_1C440962C(v8);
      sub_1C43FFD4C();
LABEL_10:
      sub_1C43FBE2C();

      return;
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v29 = sub_1C4F00978();
    sub_1C43FCEE8(v29, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = sub_1C4F00968();
    sub_1C4F01CD8();
    v30 = sub_1C440F210();
    if (sub_1C441DE30(v30, v31, v32, v33, v34, v35, v36, v37, v46))
    {
      sub_1C43FD084();
      sub_1C440E550();
      sub_1C440D1D4();
      *a6 = 136315138;
      v38 = sub_1C4404C28();
      *(a6 + 4) = sub_1C441D828(v38, v39, v40);
      sub_1C443F744();
      _os_log_impl(v41, v42, v43, a7, a6, 0xCu);
      sub_1C440962C(v8);
      sub_1C43FFD4C();
      goto LABEL_10;
    }
  }
}

void sub_1C4AF1190()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  sub_1C4AF1990((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4AF11E8(void *a1, void *a2)
{
  v3 = a2[5];
  v4 = a2[6];
  sub_1C4409678(a2 + 2, v3);
  return (*(v4 + 16))(*a1, v3, v4);
}

uint64_t sub_1C4AF1254()
{
  sub_1C440962C((v0 + 16));
  v1 = *(v0 + 56);

  sub_1C44149FC();

  return swift_deallocClassInstance();
}

void sub_1C4AF12B4()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 6);
  sub_1C4AF1744(&v1[4]);

  os_unfair_lock_unlock(v1 + 6);
}

void sub_1C4AF130C(uint64_t a1, void *a2)
{
  if (!*(*a1 + 24))
  {
    __break(1u);
LABEL_10:
    os_unfair_lock_unlock((v3 + 24));
    __break(1u);
    return;
  }

  if (*(*a1 + 16) == 1)
  {
    v5 = *(*a1 + 24);
    v6 = swift_unknownObjectRetain();
    if (!xpc_activity_copy_criteria(v6) || (swift_getObjectType(), v7 = sub_1C4A4E438(), swift_unknownObjectRelease(), v7))
    {
      v8 = a2[11];
      v9 = a2[12];
      sub_1C4409678(a2 + 8, v8);
      v3 = (*(v9 + 16))(v8, v9);
      v10 = MEMORY[0x1EEE9AC00](v3);
      os_unfair_lock_lock(v10 + 6);
      sub_1C4AF1760((v3 + 16));
      if (!v2)
      {
        os_unfair_lock_unlock((v3 + 24));
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }
}

void sub_1C4AF143C(uint64_t a1, _xpc_activity_s *a2)
{
  v5 = v2[6];
  sub_1C4409678(v2 + 2, v2[5]);
  v6 = *(v5 + 8);
  v7 = sub_1C4402B58();
  v8(v7);
  if (*(a1 + 16) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v9 = sub_1C4F00978();
    sub_1C43FCEE8(v9, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v41 = sub_1C4F00968();
    sub_1C4F01CB8();
    v10 = sub_1C440F210();
    if (sub_1C441DE30(v10, v11, v12, v13, v14, v15, v16, v17, v41))
    {
      v18 = sub_1C43FD084();
      v43 = sub_1C43FFD34();
      *v18 = 136315138;
      v19 = sub_1C4404C28();
      v22 = sub_1C441D828(v19, v20, v21);

      *(v18 + 4) = v22;
      sub_1C443F744();
      _os_log_impl(v23, v24, v25, v26, v18, 0xCu);
      sub_1C440962C(v43);
      sub_1C43FEA20();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v27 = sub_1C4F00978();
    sub_1C43FCEE8(v27, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CB8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = sub_1C43FD084();
      v44 = sub_1C43FFD34();
      *v30 = 136315138;
      v31 = sub_1C4404C28();
      v34 = sub_1C441D828(v31, v32, v33);

      *(v30 + 4) = v34;
      sub_1C440A5A8();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      sub_1C440962C(v44);
      sub_1C43FFD18();
      sub_1C43FFD4C();
    }

    else
    {
    }

    sub_1C4A4E2C4();
    xpc_activity_set_criteria(a2, v40);

    swift_unknownObjectRelease();
  }
}

uint64_t *sub_1C4AF16BC()
{
  sub_1C440962C(v0 + 2);
  v1 = v0[7];

  sub_1C440962C(v0 + 8);
  return v0;
}

uint64_t sub_1C4AF16EC()
{
  sub_1C4AF16BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AF1794(uint64_t a1, uint64_t a2)
{
  v8[3] = type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner();
  v8[4] = &off_1F43FB060;
  v4 = sub_1C4422F90(v8);
  sub_1C4AF1DBC(a1, v4, type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner);
  sub_1C442E860(v8, a2 + 16);
  type metadata accessor for ScheduledRunnerState();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  sub_1C456902C(&qword_1EC0C1C70, &qword_1C4F470B0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  sub_1C440962C(v8);
  *(a2 + 56) = v6;
  return a2;
}

uint64_t sub_1C4AF186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C4434200(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14[0], v14[1], v14[2], v14[3], v14[4]);
  type metadata accessor for ScheduledRunnerState();
  v10 = swift_allocObject();
  sub_1C4423C90(v10);
  sub_1C456902C(&qword_1EC0C1C70, &qword_1C4F470B0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v9;
  sub_1C440962C(v14);
  *(v8 + 56) = v11;
  return v8;
}

uint64_t sub_1C4AF18EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C43FFB44();
  v11[3] = v7(0);
  v11[4] = a4;
  v11[0] = v5;
  sub_1C442E860(v11, v4 + 16);
  type metadata accessor for ScheduledRunnerState();
  v8 = swift_allocObject();
  sub_1C4423C90(v8);
  sub_1C456902C(&qword_1EC0C1C70, &qword_1C4F470B0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = a4;
  sub_1C440962C(v11);
  *(v4 + 56) = v9;
  return v4;
}

uint64_t sub_1C4AF19AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C4434200(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13[0], v13[1], v13[2], v13[3], v13[4]);
  type metadata accessor for BackgroundTaskScheduledRunnerState();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  sub_1C456902C(&qword_1EC0C3228, &qword_1C4F50190);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  sub_1C440962C(v13);
  *(v8 + 56) = v10;
  return v8;
}

uint64_t sub_1C4AF1A88()
{
  sub_1C4404D98();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[12];
  v9 = swift_task_alloc();
  v10 = sub_1C43FC218(v9);
  *v10 = v11;
  v10[1] = sub_1C442E8C4;

  return sub_1C4AF06AC(v2, v3, v4, (v0 + 4), v5, v6, v7, v8);
}

uint64_t type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner()
{
  result = qword_1EDDE9528;
  if (!qword_1EDDE9528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AF1C6C()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4AF1DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C4AF1E18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C4AF1E6C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v11 = type metadata accessor for Source();
  *(v3 + 48) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v17 = type metadata accessor for ScreenTimeSourceIngestor();
  *(v3 + 88) = v17;
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 129) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4AF1FD0, 0, 0);
}

uint64_t sub_1C4AF1FD0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  sub_1C441A3F0();
  sub_1C4471B4C(v3, v4, v5);
  if (qword_1EDDFD340 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 129);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 64);
  v19 = *(v0 + 56);
  v20 = *(v0 + 72);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 48), qword_1EDDFD348);
  *(v0 + 112) = v13;
  sub_1C4471B4C(v13, v7 + *(v9 + 20), type metadata accessor for Source);
  *(v7 + *(v9 + 24)) = v6;
  sub_1C4471B4C(v12, v10, type metadata accessor for PhaseStores);
  sub_1C4471B4C(v13, v11, type metadata accessor for Source);
  sub_1C4471B4C(v7, v8, type metadata accessor for ScreenTimeSourceIngestor);
  sub_1C4471B4C(v13, v19, type metadata accessor for Source);
  sub_1C4471B4C(v12, v20, type metadata accessor for PhaseStores);
  *(v0 + 128) = v6;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_1C4AF21AC;
  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  v17 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4AF21AC()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4AF22A8, 0, 0);
}

uint64_t sub_1C4AF22A8()
{
  v1 = *(v0 + 129);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v23 = *(v0 + 64);
  v24 = *(v0 + 80);
  v6 = *(v0 + 32);
  v25 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1C4471B4C(*(v0 + 112), *(v0 + 56), type metadata accessor for Source);
  sub_1C441A3F0();
  sub_1C4471B4C(v8, v5, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44855BC(v8, type metadata accessor for PhaseStores);
  sub_1C44855BC(v2, type metadata accessor for ScreenTimeSourceIngestor);
  v10 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v3;
  v10[4] = sub_1C4AF2590();
  v11 = sub_1C4422F90(v10);
  sub_1C4AF25E8(v4, v11, type metadata accessor for ScreenTimeSourceIngestor);
  sub_1C441FDB8();
  sub_1C4AF25E8(v23, v12, v13);
  sub_1C441FDB8();
  sub_1C4AF25E8(v24, v14, v15);
  sub_1C441FDB8();
  sub_1C4AF25E8(v25, v16, v17);
  sub_1C441FDB8();
  sub_1C4AF25E8(v6, v18, v19);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);

  return v20(v21);
}

uint64_t type metadata accessor for ScreenTimePhase()
{
  result = qword_1EDDE75B8;
  if (!qword_1EDDE75B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C4AF2590()
{
  result = qword_1EDDE1930;
  if (!qword_1EDDE1930)
  {
    type metadata accessor for ScreenTimeSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1930);
  }

  return result;
}

uint64_t sub_1C4AF25E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for ScreenTimeSourceIngestor()
{
  result = qword_1EDDE1910;
  if (!qword_1EDDE1910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AF26BC()
{
  sub_1C43FBCD4();
  v1[4] = v0;
  v2 = sub_1C4EFC4E8();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AF2778, 0, 0);
}

uint64_t sub_1C4AF2778()
{
  sub_1C4EFC508();
  if (MEMORY[0x1C693B1E0]())
  {
    v1 = v0[7];
    v0[2] = 0;
    v0[3] = 0;
    sub_1C4EFC4D8();
    v2 = *(MEMORY[0x1E69667B0] + 4);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1C4AF2950;
    v4 = v0[7];

    return MEMORY[0x1EEDC05F8]();
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "DeviceActivityAuthorization returns not authorized. ScreenTime ingest is blocked.", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    v10 = v0[7];

    sub_1C43FBDA0();

    return v11();
  }
}

uint64_t sub_1C4AF2950()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1C4AF2B90;
  }

  else
  {
    v3 = sub_1C4AF2A60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C4AF2A60()
{
  *(v0 + 80) = 0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v3 + *(type metadata accessor for PhaseStores() + 24));
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v0 + 16;
  v5[4] = v0 + 24;
  v5[5] = v3;
  v5[6] = v0 + 80;
  v6 = sub_1C441A408();
  GraphStore.tripleInsertingTransaction(transactionBody:)(v6, v7);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);

  if (v1)
  {
    v12 = sub_1C44064DC();
    v13(v12);
    sub_1C442D260();
    v14 = *(v0 + 56);
  }

  else
  {
    sub_1C4EF9AE8();
    sub_1C46465D0();
    v16 = sub_1C44064DC();
    v17(v16);
    sub_1C442D260();
  }

  sub_1C43FBDA0();

  return v15();
}

uint64_t sub_1C4AF2B90()
{
  v18 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v17[0] = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v1, 0xD00000000000003CLL, 0x80000001C4FB1710, v2, v17);

  *(v0 + 80) = 0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v4 + *(type metadata accessor for PhaseStores() + 24));
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v0 + 16;
  v6[4] = v0 + 24;
  v6[5] = v4;
  v6[6] = v0 + 80;
  v7 = sub_1C441A408();
  GraphStore.tripleInsertingTransaction(transactionBody:)(v7, v8);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = *(v0 + 32);

  sub_1C4EF9AE8();
  sub_1C46465D0();
  v13 = sub_1C44064DC();
  v14(v13);
  sub_1C442D260();

  sub_1C43FBDA0();

  return v15();
}

uint64_t sub_1C4AF2D00(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C44311F0(a1, v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = *(a1 + *(type metadata accessor for ScreenTimeSourceIngestor() + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCBEC(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4AF2F88(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X8>)
{
  v9 = v8;
  v167 = a7;
  v164 = a6;
  v174 = a5;
  v181 = a4;
  v178 = a1;
  v179 = a2;
  v166 = a8;
  v11 = type metadata accessor for EntityTriple(0);
  v170 = *(v11 - 8);
  v171 = v11;
  v12 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4EFC3D8();
  v183 = *(v15 - 8);
  v184 = v15;
  v16 = v183[8];
  MEMORY[0x1EEE9AC00](v15);
  v173 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&qword_1EC0C3248, &qword_1C4F50838);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v175 = &v128 - v20;
  v182 = sub_1C456902C(&qword_1EC0C3250, &unk_1C4F50840);
  v177 = *(v182 - 8);
  v21 = v177[8];
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v128 - v22;
  v161 = sub_1C4EFC458();
  v176 = *(v161 - 8);
  v23 = v176[8];
  MEMORY[0x1EEE9AC00](v161);
  v172 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v155 = &v128 - v26;
  v165 = sub_1C4EFC478();
  v162 = *(v165 - 8);
  v27 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v169 = &v128 - v30;
  v160 = sub_1C4EFC538();
  v159 = *(v160 - 8);
  v31 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v33 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C4EFC558();
  v158 = *(v34 - 8);
  v35 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C4EFC438();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C4EFC4A8();
  if (!v8)
  {
    v156 = v39;
    v150 = v42;
    v154 = v43;
    v152 = v38;
    v151 = v33;
    v168 = v37;
    v146 = v34;
    v157 = a3;
    if (qword_1EDDFECB0 == -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      swift_once();
LABEL_8:
      v49 = sub_1C4F00978();
      v50 = sub_1C442B738(v49, qword_1EDDFECB8);
      v51 = v154;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v143 = v50;
      v52 = sub_1C4F00968();
      v53 = sub_1C4F01CC8();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v181;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v185 = v57;
        *v56 = 136380675;
        sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        v58 = sub_1C4F00EE8();
        v60 = sub_1C441D828(v58, v59, &v185);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_1C43F8000, v52, v53, "Device user map: %{private}s", v56, 0xCu);
        sub_1C440962C(v57);
        MEMORY[0x1C6942830](v57, -1, -1);
        v55 = v181;
        MEMORY[0x1C6942830](v56, -1, -1);
      }

      v63 = v175;
      v62 = v176;
      v64 = v151;
      v65 = v152;
      v66 = v177;
      v67 = 0;
      v68 = v51 + 64;
      v69 = 1 << *(v51 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v51 + 64);
      v72 = (v69 + 63) >> 6;
      v148 = (v156 + 8);
      v189 = *MEMORY[0x1E69667D8];
      v147 = (v159 + 104);
      v142 = v162 + 16;
      v153 = (v162 + 8);
      v176 = (v183 + 1);
      v177 = (v183 + 4);
      v140 = (v66 + 1);
      v141 = (v62 + 1);
      v145 = (v158 + 8);
      *&v61 = 136315138;
      v136 = v61;
      v73 = v51;
      v74 = v150;
      v135 = v68;
      v134 = v72;
      if (v71)
      {
        while (1)
        {
          v75 = v67;
LABEL_17:
          v76 = v71;
          v138 = v75;
          v77 = __clz(__rbit64(v71)) | (v75 << 6);
          v78 = *(v73 + 56);
          v79 = (*(v73 + 48) + 16 * v77);
          v80 = v79[1];
          v149 = *v79;
          v81 = *(v78 + 8 * v77);
          v158 = v80;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v159 = v81;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFC4C8();
          sub_1C4EFC418();
          v83 = v82;
          (*v148)(v74, v65);
          if (v83)
          {
          }

          v84 = (v76 - 1) & v76;
          v85 = v159;
          v86 = *(v159 + 16);
          if (v86)
          {
            break;
          }

          v71 = v84;
LABEL_45:
          v67 = v138;
          v73 = v154;
          v68 = v135;
          v72 = v134;
          if (!v71)
          {
            goto LABEL_14;
          }
        }

        v87 = 0;
        v88 = v159 + 32;
        v129 = v84;
        v133 = v86;
        v132 = v159 + 32;
        while (v87 < *(v85 + 16))
        {
          v137 = v87;
          v89 = (v88 + 16 * v87);
          v91 = *v89;
          v90 = v89[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EF94A8();
          (*v147)(v64, v189, v160);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v92 = v168;
          sub_1C4EFC548();
          v93 = sub_1C4EFC4B8();
          v94 = v93;
          v95 = *(v93 + 16);
          if (v95)
          {
            v96 = 0;
            v97 = v162;
            v98 = v93 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
            v99 = v169;
            v139 = v93;
            v131 = v95;
            v130 = v98;
            while (2)
            {
              if (v96 >= *(v94 + 16))
              {
                goto LABEL_53;
              }

              v100 = *(v97 + 72);
              v156 = v96;
              v101 = *(v97 + 16);
              v102 = v165;
              v101(v99, v98 + v100 * v96, v165);
              v101(v163, v99, v102);
              v103 = sub_1C4F00968();
              v104 = sub_1C4F01CC8();
              if (os_log_type_enabled(v103, v104))
              {
                v105 = swift_slowAlloc();
                v106 = swift_slowAlloc();
                *&v185 = v106;
                *v105 = v136;
                v107 = v163;
                sub_1C4EFC468();
                v108 = sub_1C4F01198();
                v110 = v109;
                v144 = *v153;
                v144(v107, v165);
                v111 = sub_1C441D828(v108, v110, &v185);
                v63 = v175;

                *(v105 + 4) = v111;
                _os_log_impl(&dword_1C43F8000, v103, v104, "Device activity data: %s", v105, 0xCu);
                sub_1C440962C(v106);
                MEMORY[0x1C6942830](v106, -1, -1);
                v55 = v181;
                MEMORY[0x1C6942830](v105, -1, -1);
              }

              else
              {

                v144 = *v153;
                v144(v163, v102);
              }

              v112 = v172;
              v113 = v173;
              ++v156;
              sub_1C4EFC468();
              v114 = v180;
              sub_1C4EFC3E8();
              v115 = v174;
              while (1)
              {
                sub_1C4EFC488();
                v116 = v184;
                if (sub_1C44157D4(v63, 1, v184) == 1)
                {
                  break;
                }

                (*v177)(v113, v63, v116);
                if (__OFADD__(*v55, 1))
                {
                  __break(1u);
LABEL_50:
                  __break(1u);
                  goto LABEL_51;
                }

                ++*v55;
                v117 = sub_1C46BE844(v112, 0);
                v183 = 0;
                v118 = *(v117 + 16);
                if (v118)
                {
                  v188 = MEMORY[0x1E69E7CC0];
                  sub_1C459DD58();
                  v119 = v188;
                  v120 = v171;
                  v121 = v117 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
                  v122 = *(v170 + 72);
                  do
                  {
                    sub_1C44311F0(v121, v14, type metadata accessor for EntityTriple);
                    v188 = v119;
                    v123 = *(v119 + 16);
                    if (v123 >= *(v119 + 24) >> 1)
                    {
                      sub_1C459DD58();
                      v120 = v171;
                      v119 = v188;
                    }

                    v186 = v120;
                    v187 = sub_1C4AF4494(&qword_1EDDF8D78, type metadata accessor for EntityTriple);
                    v124 = sub_1C4422F90(&v185);
                    sub_1C44311F0(v14, v124, type metadata accessor for EntityTriple);
                    *(v119 + 16) = v123 + 1;
                    sub_1C441D670(&v185, v119 + 40 * v123 + 32);
                    sub_1C44BCBEC(v14, type metadata accessor for EntityTriple);
                    v121 += v122;
                    --v118;
                  }

                  while (v118);

                  v113 = v173;
                  v125 = v174;
                  v112 = v172;
                  v63 = v175;
                }

                else
                {
                  v125 = v115;

                  v119 = MEMORY[0x1E69E7CC0];
                }

                v126 = v183;
                v178(v119);
                v9 = v126;
                v114 = v180;
                if (v126)
                {

                  (*v176)(v113, v184);
                  (*v140)(v114, v182);
                  (*v141)(v112, v161);
                  v144(v169, v165);
                  (*v145)(v168, v146);
                  goto LABEL_2;
                }

                (*v176)(v113, v184);

                if (__OFADD__(*v125, 1))
                {
                  goto LABEL_50;
                }

                v115 = v125;
                ++*v125;
                v55 = v181;
              }

              (*v140)(v114, v182);
              (*v141)(v112, v161);
              v99 = v169;
              v144(v169, v165);
              v96 = v156;
              v92 = v168;
              v97 = v162;
              v64 = v151;
              v74 = v150;
              v94 = v139;
              v98 = v130;
              if (v156 != v131)
              {
                continue;
              }

              break;
            }
          }

          v85 = v159;
          v127 = v137 + 1;
          (*v145)(v92, v146);
          v87 = v127;
          v65 = v152;
          v88 = v132;
          if (v127 == v133)
          {

            v71 = v129;
            goto LABEL_45;
          }
        }
      }

      else
      {
LABEL_14:
        while (1)
        {
          v75 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          if (v75 >= v72)
          {

LABEL_4:
            v48 = v167;
            goto LABEL_6;
          }

          v71 = *(v68 + 8 * v75);
          ++v67;
          if (v71)
          {
            goto LABEL_17;
          }
        }

LABEL_51:
        __break(1u);
      }

      __break(1u);
LABEL_53:
      __break(1u);
    }
  }

LABEL_2:
  *&v185 = v9;
  v44 = v9;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {

    v45 = v188;
    sub_1C465B58C();
    v46 = swift_allocError();
    *v47 = v45;
    v190 = 1;
    static Transformers.reportError(error:context:config:pipelineType:)(v46, 0x69546E6565726353, 0xEA0000000000656DLL, v164, &v190);

    goto LABEL_4;
  }

  LOBYTE(v185) = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v9, 0x69546E6565726353, 0xEA0000000000656DLL, v164, &v185);

  v48 = v167;
  *v167 = 1;
LABEL_6:
  *v166 = *v48;
}

uint64_t sub_1C4AF4270()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C4AF26BC();
}

uint64_t sub_1C4AF4368(uint64_t a1)
{
  result = sub_1C4AF4494(qword_1EDDE1938, type metadata accessor for ScreenTimeSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AF43C0(uint64_t a1)
{
  result = sub_1C4AF4494(&qword_1EDDE1920, type metadata accessor for ScreenTimeSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AF4418(uint64_t a1)
{
  result = sub_1C4AF4494(&qword_1EDDE1928, type metadata accessor for ScreenTimeSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AF4494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4AF44F4()
{
  v6 = v0[2];
  v5 = *v0;
  v1 = *(*(v0 + 2) + 16);

  sub_1C47D23E8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4AF457C()
{
  v1 = v0;
  v2 = v0[2];
  memcpy(__dst, v1, sizeof(__dst));
  v3 = *(v2 + 16);

  sub_1C47D23E8();
  v5 = v4;

  return v5;
}

uint64_t sub_1C4AF460C()
{
  sub_1C44201E4();
  v1 = *v0;
  memcpy(__dst, v2, sizeof(__dst));
  v3 = *(v1 + 16);

  sub_1C47D23E8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4AF4688()
{
  v1 = v0;
  v2 = v0[2];
  memcpy(__dst, v1, sizeof(__dst));
  v3 = *(v2 + 16);

  sub_1C47D23E8();
  v5 = v4;

  return v5;
}

uint64_t sub_1C4AF4718()
{
  v1 = *(*(v0 + 24) + 16);

  sub_1C47D23E8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4AF4790()
{
  v7 = *(v0 + 4);
  v5 = *v0;
  v6 = v0[1];
  v1 = *(*(v0 + 3) + 16);

  sub_1C47D23E8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4AF4814()
{
  v1 = *(*(v0 + 32) + 16);

  sub_1C47D23E8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4AF488C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);

  sub_1C47D23E8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4AF4904()
{
  v1 = *(*(v0 + 24) + 16);

  sub_1C47D23E8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4AF497C()
{
  v1 = *v0;
  memcpy(__dst, v0, sizeof(__dst));
  v2 = *(v1 + 16);

  sub_1C47D23E8();
  v4 = v3;

  return v4;
}

uint64_t sub_1C4AF4A14()
{
  v1 = *(*(v0 + 32) + 16);

  sub_1C47D23E8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4AF4A8C()
{
  v7 = *(v0 + 4);
  v5 = *v0;
  v6 = v0[1];
  v1 = *(*(v0 + 3) + 16);

  sub_1C47D23E8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4AF4B10()
{
  v6 = v0[2];
  v5 = *v0;
  v1 = *(*(v0 + 2) + 16);

  sub_1C47D23E8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4AF4B98()
{
  v1 = v0[2];
  memcpy(__dst, v0, sizeof(__dst));
  v2 = *(v1 + 16);

  sub_1C47D23E8();
  v4 = v3;

  return v4;
}

uint64_t sub_1C4AF4C30()
{
  v1 = v0[2];
  memcpy(__dst, v0, sizeof(__dst));
  v2 = *(v1 + 16);

  sub_1C47D23E8();
  v4 = v3;

  return v4;
}

uint64_t sub_1C4AF4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);

  sub_1C47D23E8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4AF4D28()
{
  sub_1C44201E4();
  sub_1C43FF518(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return sub_1C4AF460C();
}

uint64_t sub_1C4AF4D60()
{
  sub_1C44201E4();
  sub_1C43FF518(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return sub_1C4AF497C();
}

uint64_t sub_1C4AF4E90()
{
  sub_1C44201E4();
  sub_1C43FF518(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return sub_1C4AF4688();
}

uint64_t sub_1C4AF4EC8()
{
  sub_1C44201E4();
  sub_1C43FF518(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return sub_1C4AF4C30();
}

uint64_t sub_1C4AF4F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v26, "SELECT * FROM ");
  HIBYTE(v26[0]) = -18;
  v9 = *(a2 + 8);
  v24 = *a2;
  v25 = v9;
  MEMORY[0x1C6940010]();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v10 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DF70);
    v12 = *(a2 + 16);
    v29 = *(a2 + 24);
    v28 = *(a2 + 32);
    v13 = v25;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4AF994C(&v29, v26);
    sub_1C448DB48(&v28, v26);
    v14 = v2;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    sub_1C4423A0C(&v29, &qword_1EC0BB018, qword_1C4F50870);
    sub_1C4471348(&v28);

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v26[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_1C441D828(v24, v13, v26);
      *(v17 + 12) = 2112;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v22 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v10;
}

uint64_t sub_1C4AF52EC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v26, "SELECT * FROM ");
  HIBYTE(v26[0]) = -18;
  v9 = a2[1];
  v25 = *a2;
  v28 = v9;
  MEMORY[0x1C6940010]();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v10 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DF70);
    sub_1C4AF9A80(a2, v26);
    v12 = v2;
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v26[0] = v17;
      *v15 = 136315394;
      v18 = v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9ADC(a2);
      v19 = sub_1C441D828(v25, v18, v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Error when reading from table %s: %@", v15, 0x16u);
      sub_1C4423A0C(v16, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v16, -1, -1);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    else
    {

      sub_1C4AF9ADC(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v22 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v10;
}

uint64_t sub_1C4AF569C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v26, "SELECT * FROM ");
  HIBYTE(v26[0]) = -18;
  v9 = *(a2 + 16);
  v25 = *(a2 + 8);
  v28 = v9;
  MEMORY[0x1C6940010]();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v10 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DF70);
    sub_1C46A9810(a2, v26);
    v12 = v2;
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v26[0] = v17;
      *v15 = 136315394;
      v18 = v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF99F4(a2);
      v19 = sub_1C441D828(v25, v18, v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Error when reading from table %s: %@", v15, 0x16u);
      sub_1C4423A0C(v16, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v16, -1, -1);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    else
    {

      sub_1C4AF99F4(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v22 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v10;
}

uint64_t sub_1C4AF5A4C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v26, "SELECT * FROM ");
  HIBYTE(v26[0]) = -18;
  v9 = a2[1];
  v25 = *a2;
  v28 = v9;
  MEMORY[0x1C6940010]();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v10 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DF70);
    sub_1C4A4CA50(a2, v26);
    v12 = v2;
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v26[0] = v17;
      *v15 = 136315394;
      v18 = v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9888(a2);
      v19 = sub_1C441D828(v25, v18, v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Error when reading from table %s: %@", v15, 0x16u);
      sub_1C4423A0C(v16, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v16, -1, -1);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    else
    {

      sub_1C4AF9888(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v22 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v10;
}

uint64_t sub_1C4AF5DFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[7] = a4;
  v7 = sub_1C4EFB768();
  v8 = sub_1C4412DFC(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4400C40();
  sub_1C4F02248();

  sub_1C441A424();
  v28[0] = v11;
  v28[1] = v12;
  MEMORY[0x1C6940010](a2, a3);
  sub_1C4408F48();
  sub_1C4EFBC18();
  if (v4)
  {

    v13 = sub_1C4411080();
    v14(v13);
    sub_1C4423A0C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = v4;
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_1C441D828(a2, a3, v28);
      *(v19 + 12) = 2112;
      v22 = v4;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Error when reading from table %s: %@", v19, 0x16u);
      sub_1C4423A0C(v20, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C440962C(v21);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C47DCC80();
    swift_allocError();
    *v24 = v4;
    swift_willThrow();
  }

  else
  {

    v25 = sub_1C4411080();
    v26(v25);
    sub_1C4423A0C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return sub_1C440E410();
}

uint64_t sub_1C4AF6124(uint64_t a1, void *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v23, "SELECT * FROM ");
  HIBYTE(v23[0]) = -18;
  MEMORY[0x1C6940010](*a2, a2[1]);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v23, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    sub_1C4AF9BE8(a2, v23);
    v11 = v2;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v14 = 136315394;
      v17 = v23[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9C44(v23);
      v18 = sub_1C441D828(v17, *(&v17 + 1), &v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Error when reading from table %s: %@", v14, 0x16u);
      sub_1C4423A0C(v15, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v15, -1, -1);
      sub_1C440962C(v16);
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v14, -1, -1);
    }

    else
    {

      sub_1C4AF9C44(v23);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v21 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v23, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v9;
}

uint64_t sub_1C4AF64CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v26, "SELECT * FROM ");
  HIBYTE(v26[0]) = -18;
  v9 = a2[1];
  v24 = *a2;
  v25 = v9;
  MEMORY[0x1C6940010]();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v10 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DF70);
    v12 = a2[3];
    v28 = a2[4];
    v13 = v25;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4AF994C(&v28, v26);
    v14 = v2;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    sub_1C4423A0C(&v28, &qword_1EC0BB018, qword_1C4F50870);

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v26[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_1C441D828(v24, v13, v26);
      *(v17 + 12) = 2112;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v22 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v10;
}

uint64_t sub_1C4AF688C(uint64_t a1, void *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v23, "SELECT * FROM ");
  HIBYTE(v23[0]) = -18;
  MEMORY[0x1C6940010](*a2, a2[1]);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v23, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    sub_1C4707E5C(a2, v23);
    v11 = v2;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v14 = 136315394;
      v17 = v23[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4707ED4(v23);
      v18 = sub_1C441D828(v17, *(&v17 + 1), &v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Error when reading from table %s: %@", v14, 0x16u);
      sub_1C4423A0C(v15, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v15, -1, -1);
      sub_1C440962C(v16);
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v14, -1, -1);
    }

    else
    {

      sub_1C4707ED4(v23);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v21 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    sub_1C4423A0C(v23, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v9;
}

uint64_t sub_1C4AF6C78(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v26, "SELECT * FROM ");
  HIBYTE(v26[0]) = -18;
  MEMORY[0x1C6940010](*a2, a2[1]);
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v28 = a3;
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v12 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    sub_1C4AF9BE8(a2, v26);
    v14 = v3;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v17 = 136315394;
      v20 = v26[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9C44(v26);
      v21 = sub_1C441D828(v20, *(&v20 + 1), &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    else
    {

      sub_1C4AF9C44(v26);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v24 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v12;
}

uint64_t sub_1C4AF706C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v29, "SELECT * FROM ");
  HIBYTE(v29[0]) = -18;
  v11 = *(a2 + 16);
  v27 = *(a2 + 8);
  v28 = v11;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v31 = a3;
  v12 = sub_1C4F02858();
  MEMORY[0x1C6940010](v12);

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1C4EFB758();
  v13 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    sub_1C46A9810(a2, v29);
    v15 = v3;
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v29[0] = v20;
      *v18 = 136315394;
      v21 = v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF99F4(a2);
      v22 = sub_1C441D828(v27, v21, v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2112;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v24;
      *v19 = v24;
      _os_log_impl(&dword_1C43F8000, v16, v17, "Error when reading from table %s: %@", v18, 0x16u);
      sub_1C4423A0C(v19, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v19, -1, -1);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    else
    {

      sub_1C4AF99F4(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v25 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v13;
}

uint64_t sub_1C4AF7464(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v26, "SELECT * FROM ");
  HIBYTE(v26[0]) = -18;
  MEMORY[0x1C6940010](*a2, a2[1]);
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v28 = a3;
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v12 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    sub_1C4707E5C(a2, v26);
    v14 = v3;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v17 = 136315394;
      v20 = v26[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4707ED4(v26);
      v21 = sub_1C441D828(v20, *(&v20 + 1), &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    else
    {

      sub_1C4707ED4(v26);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v24 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v12;
}

uint64_t sub_1C4AF789C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v27[0] = 0;
  *(&v27[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v27, "SELECT * FROM ");
  HIBYTE(v27[0]) = -18;
  v10 = a2[1];
  v26[0] = *a2;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v29 = a3;
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1C4EFB758();
  v12 = v26[1];
  v13 = sub_1C4EFBC18();
  if (v12)
  {

    (*(v6 + 8))(v9, v5);
    sub_1C4423A0C(v27, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    v15 = a2[3];
    v30 = a2[4];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4AF994C(&v30, v27);
    v16 = v12;
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();

    sub_1C4423A0C(&v30, &qword_1EC0BB018, qword_1C4F50870);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v27[0] = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_1C441D828(v26[0], v10, v27);
      *(v19 + 12) = 2112;
      v22 = v12;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Error when reading from table %s: %@", v19, 0x16u);
      sub_1C4423A0C(v20, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v20, -1, -1);
      sub_1C440962C(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v24 = v12;
    swift_willThrow();
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    sub_1C4423A0C(v27, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v13;
}

uint64_t sub_1C4AF7CA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1C4EFB768();
  v10 = sub_1C4412DFC(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4400C40();
  sub_1C4F02248();

  sub_1C441A424();
  v36[0] = v13;
  v36[1] = v14;
  v34 = a2;
  v15 = a2;
  v16 = a3;
  MEMORY[0x1C6940010](v15, a3);
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v36[7] = a6;
  v17 = sub_1C4F02858();
  MEMORY[0x1C6940010](v17);

  sub_1C4408F48();
  v18 = sub_1C4EFBC18();
  if (v35)
  {

    v19 = sub_1C4411080();
    v20(v19);
    sub_1C4423A0C(v36, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v21 = sub_1C4F00978();
    sub_1C442B738(v21, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = v35;
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CD8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36[0] = v27;
      *v25 = 136315394;
      *(v25 + 4) = sub_1C441D828(v34, v16, v36);
      *(v25 + 12) = 2112;
      v28 = v35;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v29;
      *v26 = v29;
      _os_log_impl(&dword_1C43F8000, v23, v24, "Error when reading from table %s: %@", v25, 0x16u);
      sub_1C4423A0C(v26, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C440962C(v27);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C47DCC80();
    swift_allocError();
    *v30 = v35;
    swift_willThrow();
  }

  else
  {

    v31 = sub_1C4411080();
    v32(v31);
    sub_1C4423A0C(v36, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v18;
}

uint64_t sub_1C4AF8020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v27[0] = 0;
  *(&v27[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v27, "SELECT * FROM ");
  HIBYTE(v27[0]) = -18;
  v10 = *(a2 + 8);
  v26[0] = *a2;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v29 = a3;
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1C4EFB758();
  v12 = v26[1];
  v13 = sub_1C4EFBC18();
  if (v12)
  {

    (*(v6 + 8))(v9, v5);
    sub_1C4423A0C(v27, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    v15 = *(a2 + 16);
    v31 = *(a2 + 24);
    v30 = *(a2 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4AF994C(&v31, v27);
    sub_1C448DB48(&v30, v27);
    v16 = v12;
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();

    sub_1C4423A0C(&v31, &qword_1EC0BB018, qword_1C4F50870);
    sub_1C4471348(&v30);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v27[0] = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_1C441D828(v26[0], v10, v27);
      *(v19 + 12) = 2112;
      v22 = v12;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Error when reading from table %s: %@", v19, 0x16u);
      sub_1C4423A0C(v20, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v20, -1, -1);
      sub_1C440962C(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v24 = v12;
    swift_willThrow();
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    sub_1C4423A0C(v27, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v13;
}

uint64_t sub_1C4AF8448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v29, "SELECT * FROM ");
  HIBYTE(v29[0]) = -18;
  v11 = a2[1];
  v27 = *a2;
  v28 = v11;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v31 = a3;
  v12 = sub_1C4F02858();
  MEMORY[0x1C6940010](v12);

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1C4EFB758();
  v13 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    sub_1C4AF9A80(a2, v29);
    v15 = v3;
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v29[0] = v20;
      *v18 = 136315394;
      v21 = v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9ADC(a2);
      v22 = sub_1C441D828(v27, v21, v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2112;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v24;
      *v19 = v24;
      _os_log_impl(&dword_1C43F8000, v16, v17, "Error when reading from table %s: %@", v18, 0x16u);
      sub_1C4423A0C(v19, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v19, -1, -1);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    else
    {

      sub_1C4AF9ADC(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v25 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v13;
}

uint64_t sub_1C4AF8840(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v29, "SELECT * FROM ");
  HIBYTE(v29[0]) = -18;
  v11 = a2[1];
  v27 = *a2;
  v28 = v11;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v31 = a3;
  v12 = sub_1C4F02858();
  MEMORY[0x1C6940010](v12);

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1C4EFB758();
  v13 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DF70);
    sub_1C4A4CA50(a2, v29);
    v15 = v3;
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v29[0] = v20;
      *v18 = 136315394;
      v21 = v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9888(a2);
      v22 = sub_1C441D828(v27, v21, v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2112;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v24;
      *v19 = v24;
      _os_log_impl(&dword_1C43F8000, v16, v17, "Error when reading from table %s: %@", v18, 0x16u);
      sub_1C4423A0C(v19, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v19, -1, -1);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    else
    {

      sub_1C4AF9888(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v25 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v13;
}

uint64_t sub_1C4AF8C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v27 = a4;
    v28 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v10 = v29;
    v11 = *(v29 + 16);
    v12 = 16 * v11;
    do
    {
      v29 = v10;
      v13 = v11 + 1;
      if (v11 >= *(v10 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v10 = v29;
      }

      *(v10 + 16) = v13;
      v14 = v10 + v12;
      *(v14 + 32) = 63;
      *(v14 + 40) = 0xE100000000000000;
      v12 += 16;
      v11 = v13;
      --v9;
    }

    while (v9);
    v6 = v27;
    v8 = v28;
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4AF93B0(&qword_1EDDFCED0);
  v15 = sub_1C4F01048();
  v17 = v16;

  sub_1C4F02248();

  sub_1C441A424();
  v29 = v18;
  v30 = v19;
  v20 = (*(a5 + 8))(a2, a5);
  MEMORY[0x1C6940010](v20);

  MEMORY[0x1C6940010](0x20455245485720, 0xE700000000000000);
  v21 = (*(v6 + 8))(a2, v6);
  MEMORY[0x1C6940010](v21);

  MEMORY[0x1C6940010](0x28206E6920, 0xE500000000000000);
  MEMORY[0x1C6940010](v15, v17);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  v22 = *((*(a5 + 16))(a2, a5) + 16);

  MEMORY[0x1EEE9AC00](v23);
  v26[2] = v29;
  v26[3] = v30;
  v26[4] = v8;
  v24 = sub_1C49A52FC(sub_1C4AF9390, v26);

  return v24;
}

uint64_t sub_1C4AF8EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v39 = a2;
  v40 = a3;
  v38 = a1;
  v47 = sub_1C4EFF0C8();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EFB768();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v33 = v13;
    v34 = v5;
    v35 = v12;
    v36 = a5;
    *&v45[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v17 = *&v45[0];
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = a4 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v41 = *(v18 + 56);
    v42 = v19;
    v43 = v18;
    v21 = (v18 - 8);
    do
    {
      v22 = v44;
      v23 = v47;
      v42(v44, v20, v47);
      v24 = sub_1C4EFF068();
      v26 = v25;
      (*v21)(v22, v23);
      *&v45[0] = v17;
      v27 = *(v17 + 16);
      if (v27 >= *(v17 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v17 = *&v45[0];
      }

      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;
      v20 += v41;
      --v16;
    }

    while (v16);
    v12 = v35;
    a5 = v36;
    v13 = v33;
    v6 = v34;
  }

  sub_1C4EFBC58();
  *&v45[0] = v17;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4AF93B0(&qword_1EDDFCEC0);
  v29 = v37;
  sub_1C4EFB798();
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v30 = sub_1C4EFBC18();
  if (v6)
  {
    sub_1C4423A0C(v45, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v13 + 8))(v29, v12);
  }

  else
  {
    v32 = v30;
    sub_1C4423A0C(v45, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = (*(v13 + 8))(v29, v12);
    *a5 = v32;
  }

  return result;
}

uint64_t sub_1C4AF9248()
{
  sub_1C44201E4();
  memcpy(v2, v0, sizeof(v2));
  return sub_1C4AF457C();
}

uint64_t sub_1C4AF9288()
{
  sub_1C44201E4();
  memcpy(v2, v0, sizeof(v2));
  return sub_1C4AF4B98();
}

uint64_t sub_1C4AF93B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AF9400@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  result = sub_1C4AF4F10(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF9448@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(v7, a2, sizeof(v7));
  result = sub_1C4AF52EC(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF94A4@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4AF569C(a1, __dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF9500@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4AF5A4C(a1, __dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF955C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4AF6124(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF9588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  result = sub_1C4AF64CC(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF95D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4AF688C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF95FC(uint64_t a1, uint64_t *a2)
{
  sub_1C440FB14(a1, a2);
  result = sub_1C4AF5DFC(v4, v5, v6, v7);
  if (!v3)
  {
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C4AF9628@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4AF6C78(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF9654@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4AF706C(a1, __dst, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF96B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4AF7464(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF96E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = *(a2 + 32);
  result = sub_1C4AF789C(a1, v8, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF972C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = a2[2];
  result = sub_1C4AF8020(a1, v8, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF9774@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memcpy(v9, a2, sizeof(v9));
  result = sub_1C4AF8448(a1, v9, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF97D8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4AF8840(a1, __dst, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF983C(uint64_t a1, uint64_t *a2)
{
  sub_1C440FB14(a1, a2);
  result = sub_1C4AF7CA8(v4, v5, v6, v7, v8, v9);
  if (!v3)
  {
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C4AF994C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AF9D00(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x80000001C4F9B1D0;
  v4 = objc_opt_self();
  *(inited + 48) = [v4 featureValueWithInt64_];
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x80000001C4F9B200;
  *(inited + 72) = [v4 featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4AF9E08(__int16 a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = sub_1C4AF9D00(a1);
  if (a3)
  {
    v13 = sub_1C45FB538();
    if (v13)
    {
      v14 = v13;
      v15 = sub_1C4EF9CD8();
      sub_1C440BAA8(v11, 1, 1, v15);
      sub_1C4886564(a2, a3, v11);
      v17 = v16;
      sub_1C45942C8(v14);
      sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v17)
      {
        sub_1C4577DBC();
        if (sub_1C4594E18())
        {
          swift_isUniquelyReferenced_nonNull_native();
          v26 = v12;
          sub_1C4660314();
          return v26;
        }

        else
        {
          v18 = sub_1C445FAA8(0xD00000000000001DLL, 0x80000001C4F9B1B0);
          if (v19)
          {
            v20 = v18;
            swift_isUniquelyReferenced_nonNull_native();
            v26 = v12;
            v21 = *(v12 + 24);
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v12 = v26;
            v22 = *(*(v26 + 48) + 16 * v20 + 8);

            v23 = *(*(v12 + 56) + 8 * v20);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v12;
}

uint64_t sub_1C4AFA02C@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v12 = a3 >> 8;
  v13 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v13);
  (*(v14 + 32))(a6, a1);
  result = type metadata accessor for SemanticLocationEvent();
  *(a6 + *(result + 20)) = a2;
  v16 = a6 + *(result + 24);
  *v16 = v8;
  *(v16 + 1) = v12;
  *(v16 + 8) = a4;
  *(v16 + 16) = a5;
  return result;
}

uint64_t sub_1C4AFA0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4AFA110@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for SemanticLocationEvent();
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v39 = a3;
    v22 = sub_1C4EF9CD8();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v19, a2, v22);
    v19[*(v14 + 20)] = [v21 starting];
    v38 = sub_1C4AFA9EC([v21 userSpecificPlaceType]);
    v37 = sub_1C4AFAABC([v21 placeType]);
    v24 = [v21 loiIdentifier];
    if (v24)
    {
      v25 = v24;
      sub_1C4EF9D18();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v30 = sub_1C4EF9D38();
    sub_1C440BAA8(v3, v26, 1, v30);
    sub_1C4631F8C(v3, v13);
    if (sub_1C44157D4(v13, 1, v30) == 1)
    {
      (*(v23 + 8))(a2, v22);

      sub_1C4420C3C(v13, &qword_1EC0B9DC8, &unk_1C4F124A0);
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v31 = sub_1C4EF9CF8();
      v32 = v33;

      (*(v23 + 8))(a2, v22);
      (*(*(v30 - 8) + 8))(v13, v30);
    }

    v34 = &v19[*(v14 + 24)];
    v35 = v37;
    *v34 = v38;
    v34[1] = v35;
    *(v34 + 1) = v31;
    *(v34 + 2) = v32;
    v36 = v39;
    sub_1C4AFA6A4(v19, v39);
    return sub_1C440BAA8(v36, 0, 1, v14);
  }

  else
  {

    v27 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v27);
    (*(v28 + 8))(a2);

    return sub_1C440BAA8(a3, 1, 1, v14);
  }
}

void sub_1C4AFA498(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = sub_1C456902C(&qword_1EC0BF988, &qword_1C4F3B500);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v18 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v19 = [v18 Semantic];
  swift_unknownObjectRelease();
  sub_1C46745FC();

  if (!v2)
  {
    sub_1C445FFF0(v17, v3, &qword_1EC0BF988, &qword_1C4F3B500);
    sub_1C445FFF0(a1, v10, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v20 = *(v1 + 24);
    sub_1C4939C98();
    sub_1C4420C3C(v17, &qword_1EC0BF988, &qword_1C4F3B500);
  }
}

uint64_t type metadata accessor for SemanticLocationEvent()
{
  result = qword_1EDDE32F0;
  if (!qword_1EDDE32F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AFA6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SemanticLocationEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AFA730()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4AFA7C4()
{
  result = qword_1EC0C3258;
  if (!qword_1EC0C3258)
  {
    sub_1C4572308(&qword_1EC0BF998, &unk_1C4F3B510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3258);
  }

  return result;
}

void sub_1C4AFA844(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BF998, &unk_1C4F3B510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v9 - v7;
  sub_1C4AFA498(a1);
  if (!v2)
  {
    sub_1C4AFA918(v8, a2);
  }
}

uint64_t sub_1C4AFA918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF998, &unk_1C4F3B510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4AFA988()
{
  result = qword_1EDDDC480;
  if (!qword_1EDDDC480)
  {
    sub_1C4572308(&qword_1EC0C3260, &unk_1C4F50A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC480);
  }

  return result;
}

uint64_t sub_1C4AFA9EC(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      v5[1] = v1;
      sub_1C440B1D4();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1C4AFAABC(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      v5[1] = v1;
      sub_1C440B1D4();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1C4AFAB8C(char a1)
{
  v3 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v4 = [v3 Semantic];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  *(v1 + 24) = a1;
  return v1;
}

void sub_1C4AFAC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v39 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = 0;
  v31 = v39;
  v32 = *(v39 + 16);
  v33 = 16 * v32;
  do
  {
    v34 = v29;
    if (*(&unk_1F43D28E8 + v30 + 32))
    {
      v35 = 0xD000000000000018;
    }

    else
    {
      v35 = 0x79745F6563616C70;
    }

    if (*(&unk_1F43D28E8 + v30 + 32))
    {
      v36 = 0x80000001C4F91770;
    }

    else
    {
      v36 = 0xEA00000000006570;
    }

    v40 = v31;
    v37 = v32 + 1;
    if (v32 >= *(v31 + 24) >> 1)
    {
      sub_1C44CD9C0();
      v31 = v40;
    }

    *(v31 + 16) = v37;
    v38 = v31 + v33;
    *(v38 + 32) = v35;
    *(v38 + 40) = v36;
    v33 += 16;
    v29 = 1;
    v32 = v37;
    v30 = 1u;
  }

  while ((v34 & 1) == 0);

  sub_1C4499940(v31, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4AFADB8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4AFAE10(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4AFAE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &aBlock - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = *(a1 + 16);
  v15 = sub_1C4EF9CD8();
  sub_1C440BAA8(v12, 1, 1, v15);
  (*(*(v15 - 8) + 16))(v9, a2, v15);
  sub_1C440BAA8(v9, 0, 1, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C457A86C(v12, v9, 1, 1, 0);
  v18 = [v14 publisherWithOptions_];

  v31 = sub_1C4AFB170;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C45AF9C8;
  v30 = &unk_1F43FB398;
  v19 = _Block_copy(&aBlock);
  v20 = [v18 filterWithIsIncluded_];
  _Block_release(v19);
  v31 = nullsub_1;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C44405F8;
  v30 = &unk_1F43FB3C0;
  v21 = _Block_copy(&aBlock);
  v31 = sub_1C4AFC2A8;
  v32 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C4440590;
  v30 = &unk_1F43FB3E8;
  v22 = _Block_copy(&aBlock);

  v23 = [v20 sinkWithCompletion:v21 receiveInput:v22];

  _Block_release(v22);
  _Block_release(v21);

  swift_beginAccess();
  v24 = *(v13 + 16);
  *a3 = v24;
  v25 = v24;
}

BOOL sub_1C4AFB170(void *a1)
{
  v1 = [a1 eventBody];
  result = 0;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 starting];

    if (v3)
    {
      return 1;
    }
  }

  return result;
}

void sub_1C4AFB1CC(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Exception: Unable to parse eventBody from latest event in semantic location stream", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4AFB304(void *a1)
{
  v2 = sub_1C4AFAABC([a1 placeType]);
  v3 = sub_1C4AFA9EC([a1 userSpecificPlaceType]);
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  sub_1C44201F0(inited, xmmword_1C4F0CE60);
  v5 = objc_opt_self();
  sub_1C4400C68([v5 featureValueWithInt64_], "user_specific_place_type");
  inited[4].n128_u64[1] = [v5 v6];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4AFB404(uint64_t a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  sub_1C44201F0(inited, xmmword_1C4F0CE60);
  v3 = objc_opt_self();
  sub_1C4400C68([v3 featureValueWithInt64_], "user_specific_place_type");
  inited[4].n128_u64[1] = [v3 v4];
  sub_1C4577DBC();
  v5 = sub_1C4F00F28();
  v6 = sub_1C4AFADB8(a1);
  if (v6)
  {
    v7 = v6;

    v5 = sub_1C4AFB304(v7);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C43FD0E8(v9))
    {
      *swift_slowAlloc() = 0;
      sub_1C440B1D4();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  return v5;
}

void sub_1C4AFB594(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  v39 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v39);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = type metadata accessor for FeatureProviderSnapshot(0);
  v15 = sub_1C43FCDF8(v14);
  v37 = v16;
  v38 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v34 = a2;
    v41 = MEMORY[0x1E69E7CC0];
    v40 = v21;
    sub_1C459D0A8();
    v24 = v40;
    v23 = v41;
    v26 = *(v8 + 16);
    v25 = v8 + 16;
    v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v35 = *(v25 + 56);
    v36 = v26;
    do
    {
      v36(v13, v27, v39);
      v36(v24, v13, v39);
      v28 = sub_1C4AFB404(v13);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = v3;
      v30 = sub_1C4AFC2B0(v28);

      sub_1C465CF34(v30);
      v32 = v31;
      v24 = v40;

      (*(v25 - 8))(v13, v39);
      *(v40 + *(v38 + 20)) = v32;
      v33 = *(v41 + 16);
      if (v33 >= *(v41 + 24) >> 1)
      {
        sub_1C459D0A8();
        v24 = v40;
      }

      *(v41 + 16) = v33 + 1;
      sub_1C4586A54(v24, v41 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33);
      v27 += v35;
      --v22;
      v3 = v29;
    }

    while (v22);
    a2 = v34;
  }

  *a2 = v23;
}

void sub_1C4AFB848(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v37 = a3;
  v36 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = sub_1C456902C(&qword_1EC0C2D58, &qword_1C4F50AE0);
  v6 = sub_1C43FCDF8(v35);
  v32 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v30 - v10;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v33 = v3;
  v18 = *(v3 + 16);
  v19 = sub_1C4EF9CD8();
  v20 = *(*(v19 - 8) + 16);
  v20(v17, a2, v19);
  sub_1C440BAA8(v17, 0, 1, v19);
  v21 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20(v14, a2 + *(v21 + 36), v19);
  sub_1C440BAA8(v14, 0, 1, v19);
  v22 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v23 = sub_1C457A86C(v17, v14, 0, 0, 0);
  v24 = [v18 publisherWithOptions_];

  v25 = v24;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v26 = v38;
  sub_1C4EFFC38();
  if (v26)
  {
  }

  else
  {
    v27 = swift_allocObject();
    v28 = v34;
    *(v27 + 16) = v33;
    *(v27 + 24) = v28;
    type metadata accessor for FeatureProviderChange(0);
    sub_1C4401CBC(&qword_1EDDEFEE8, &qword_1EC0B8600, &unk_1C4F0D4E0);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v29 = v31;
    sub_1C4F02848();

    (*(v32 + 32))(v37, v29, v35);
  }
}

uint64_t sub_1C4AFBBE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v5 = *a2;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1C4AFBC10, 0, 0);
}

uint64_t sub_1C4AFBC10()
{
  v1 = [*(v0 + 40) eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    [*(v0 + 40) timestamp];
    sub_1C4EF9AC8();
    v5 = sub_1C4AFB304(v2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v6 = sub_1C4AFC2B0(v5);

    sub_1C465CF34(v6);
    v8 = v7;

    v9 = type metadata accessor for FeatureProviderChange(0);
    v10 = 0;
    *(v4 + *(v9 + 20)) = 2;
    *(v4 + *(v9 + 24)) = v8;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDDFECB8);
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CF8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Unable to parse eventBody from read event in semantic location featurizer", v14, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v9 = type metadata accessor for FeatureProviderChange(0);
    v10 = 1;
  }

  sub_1C440BAA8(*(v0 + 16), v10, 1, v9);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C4AFBDE0()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4AFB404(v8);
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1C4AFBE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4EF9C88();
  sub_1C4AFB404(v12);
  (*(v7 + 8))(v12, v4);
  v13 = a1 == 0x79745F6563616C70 && a2 == 0xEA00000000006570;
  if (v13 || (sub_1C4F02938() & 1) != 0)
  {
    v14 = 0x79745F6563616C70;
  }

  else
  {
    v17 = a1 == 0xD000000000000018 && 0x80000001C4F91770 == a2;
    if (!v17 && (sub_1C4F02938() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_8;
    }

    v14 = 0xD000000000000018;
  }

  v15 = sub_1C44F9274(v14);
LABEL_8:

  return v15;
}

uint64_t sub_1C4AFC0A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AFC1BC(uint64_t a1)
{
  *(a1 + 8) = sub_1C4AFC224(&qword_1EC0C3268);
  result = sub_1C4AFC224(&qword_1EC0C3270);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4AFC224(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SemanticLocationSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AFC264(uint64_t a1)
{
  result = sub_1C4AFC224(&qword_1EC0C3270);
  *(a1 + 16) = result;
  return result;
}

void *sub_1C4AFC2B0(_BYTE *a1)
{
  v2 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = swift_bridgeObjectRetain_n();
  if (v4 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v14 = sub_1C441235C();
      v2 = sub_1C45867F0(v14, v15, v16, v17);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_1C4501018(0, v5, v18 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C441235C();
  sub_1C4586AB8(v7, v8, v9, v10);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v11;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C4AFC450(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4AFBBE8(a1, a2, v7, v6);
}

_BYTE *storeEnumTagSinglePayload for SemLocPlaceTypeFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SemLocUserSpecificPlaceTypeFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4AFC6C0()
{
  result = qword_1EC0C3280;
  if (!qword_1EC0C3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3280);
  }

  return result;
}

unint64_t sub_1C4AFC718()
{
  result = qword_1EC0C3288[0];
  if (!qword_1EC0C3288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC0C3288);
  }

  return result;
}

uint64_t Sequence.uniqued<A>(by:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v65 = a1;
  v66 = a2;
  sub_1C43FCE64();
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v60 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v18 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCE64();
  v54 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  v59 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v51 - v26;
  v28 = sub_1C4F01F48();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v51 - v30;
  sub_1C43FCE64();
  v63 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  AssociatedConformanceWitness = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v18;
  v64 = swift_getAssociatedTypeWitness();
  sub_1C43FCE64();
  v55 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v51 - v41;
  v69 = sub_1C4F00E98();
  v51 = v6;
  v53 = a5;
  sub_1C4F01488();
  v58 = sub_1C4F017A8();
  sub_1C4F016C8();
  v68 = sub_1C4F00EB8();
  v43 = v52;
  sub_1C4F01488();
  v67 = a4;
  v57 = sub_1C4F01B38();
  sub_1C4F01AE8();
  (*(v63 + 2))(AssociatedConformanceWitness, v51, v43);
  v63 = v42;
  sub_1C4F01478();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = (v54 + 32);
  v45 = (v56 + 1);
  v56 = (v54 + 16);
  for (i = (v54 + 8); ; (*i)(v27, AssociatedTypeWitness))
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v31, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v44)(v27, v31, AssociatedTypeWitness);
    v65(v27);
    v47 = v67;
    v48 = sub_1C4F01B18();
    v49 = *v45;
    (*v45)(v16, v47);
    if ((v48 & 1) == 0)
    {
      (*v56)(v59, v27, AssociatedTypeWitness);
      sub_1C4F01768();
      v65(v27);
      sub_1C4F01AF8();
      v49(v16, v67);
    }
  }

  (*(v55 + 8))(v63, v64);

  return v69;
}

uint64_t AsyncSequence<>.sessionDataAsyncSequence()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C43FCDF8(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v11, v9);
  return (*(v6 + 32))(a2, v11, a1);
}

uint64_t SessionDataComplying.init(startDate:endDate:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v10);
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v13 = type metadata accessor for SessionDataComplying();
  v12(a5 + *(v13 + 28), a2, v10);
  v14 = *(*(a4 - 8) + 32);
  v15 = a5 + *(v13 + 32);

  return v14(v15, a3, a4);
}

void sub_1C4AFCE44()
{
  sub_1C43FE96C();
  v7 = sub_1C43FF530(v3, v4, v5, v6);
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C442BEB4();
  v16 = sub_1C43FCDF8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  sub_1C440D778();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1C440606C();
  v21 = sub_1C43FCDF8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1C442E500();
  v26 = sub_1C43FCDF8(v25);
  v60 = v27;
  v61 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD2D8();
  v31 = v30;
  v59 = sub_1C4EF9CD8();
  v32 = sub_1C43FCDF8(v59);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  sub_1C4EF9CC8();
  sub_1C4F00188();
  v35 = sub_1C44123F8();
  v36(v35);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v37 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v38 = swift_slowAlloc();
    v39 = sub_1C44052AC(v38);
    sub_1C4404678(&dword_1C43F8000, v40, v41, v39, "FutureSessionData", "");
    sub_1C441CD40();
  }

  v42 = sub_1C4432918();
  v43(v42);
  v44 = sub_1C4F00948();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  sub_1C4F00938();
  v48 = sub_1C44136BC();
  v49(v48);
  sub_1C4EFD5E8();
  (*(v2 + 8))(v0, v37);
  (*(v13 + 8))(v1, v47);
  v50 = sub_1C43FC7BC();
  v51(v50);
  v52 = sub_1C44036A0();
  v53(v52);
  v54 = sub_1C43FDD8C();
  sub_1C4AFEABC(v54, v55, v56);
  (*(v60 + 8))(v31, v61);
  v57 = sub_1C44300C8();
  v58(v57);
  sub_1C43FBC80();
}

uint64_t AsyncSequence.toAnySessionAsyncSequence()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1C43FCDF8(a1);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  result = (*(v9 + 32))(v13 + v12, &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_1C4AFFA10;
  a3[1] = v13;
  return result;
}

void sub_1C4AFD318()
{
  sub_1C43FE96C();
  v7 = sub_1C43FF530(v3, v4, v5, v6);
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C442BEB4();
  v16 = sub_1C43FCDF8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  sub_1C440D778();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1C440606C();
  v21 = sub_1C43FCDF8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1C442E500();
  v26 = sub_1C43FCDF8(v25);
  v60 = v27;
  v61 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD2D8();
  v31 = v30;
  v59 = sub_1C4EF9CD8();
  v32 = sub_1C43FCDF8(v59);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  sub_1C4EF9CC8();
  sub_1C4F00188();
  v35 = sub_1C44123F8();
  v36(v35);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v37 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v38 = swift_slowAlloc();
    v39 = sub_1C44052AC(v38);
    sub_1C4404678(&dword_1C43F8000, v40, v41, v39, "SessionData", "");
    sub_1C441CD40();
  }

  v42 = sub_1C4432918();
  v43(v42);
  v44 = sub_1C4F00948();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  sub_1C4F00938();
  v48 = sub_1C44136BC();
  v49(v48);
  sub_1C4EFD5E8();
  (*(v2 + 8))(v0, v37);
  (*(v13 + 8))(v1, v47);
  v50 = sub_1C43FC7BC();
  v51(v50);
  v52 = sub_1C44036A0();
  v53(v52);
  v54 = sub_1C43FDD8C();
  sub_1C4AFE1FC(v54, v55, v56);
  (*(v60 + 8))(v31, v61);
  v57 = sub_1C44300C8();
  v58(v57);
  sub_1C43FBC80();
}

uint64_t SessionDataComplying.startDate.getter()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v0);
  v2 = *(v1 + 16);
  v3 = sub_1C43FBC98();

  return v4(v3);
}

uint64_t SessionDataComplying.startDate.setter(uint64_t a1)
{
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t SessionDataComplying.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t SessionDataComplying.endDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t SessionDataComplying.init<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  a3[2](a2, a3);
  v8 = a3[3];
  v9 = type metadata accessor for SessionDataComplying();
  v10 = a4 + *(v9 + 28);
  v8(a2, a3);
  v11 = a4 + *(v9 + 32);
  a3[4](a2, a3);
  v12 = *(*(a2 - 8) + 8);

  return v12(a1, a2);
}

uint64_t sub_1C4AFDA34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_1C4AFDB54()
{
  sub_1C43FE96C();
  v21 = v0;
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = *(v3 + 24);
  v20[0] = *(v3 + 32);
  v20[1] = v6;
  type metadata accessor for SessionCodableDataComplying.CodingKeys();
  sub_1C4400C88();
  swift_getWitnessTable();
  v8 = sub_1C4F02808();
  sub_1C43FCDF8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  v16 = v5[4];
  sub_1C4409678(v5, v5[3]);
  sub_1C4F02BF8();
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80);
  v17 = v22;
  sub_1C4F027E8();
  if (!v17)
  {
    v18 = *(v3 + 44);
    sub_1C4F027E8();
    v19 = *(v3 + 48);
    sub_1C4F027E8();
  }

  (*(v10 + 8))(v15, v8);
  sub_1C43FBC80();
}

void sub_1C4AFDD34()
{
  sub_1C43FE96C();
  v60 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v49 = v7;
  v48 = *(v3 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v50 = v9;
  v58 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v58);
  v53 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v52 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v45 - v17;
  type metadata accessor for SessionCodableDataComplying.CodingKeys();
  sub_1C4400C88();
  swift_getWitnessTable();
  v59 = sub_1C4F02708();
  sub_1C43FCDF8(v59);
  v56 = v18;
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v55 = v4;
  v51 = v2;
  v24 = type metadata accessor for SessionCodableDataComplying();
  sub_1C43FCDF8(v24);
  v47 = v25;
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v45 - v29;
  v31 = v6[4];
  sub_1C4409678(v6, v6[3]);
  v57 = v23;
  v32 = v60;
  sub_1C4F02BC8();
  if (v32)
  {
    sub_1C440962C(v6);
  }

  else
  {
    v45 = v24;
    v46 = v30;
    v33 = v53;
    v60 = v6;
    v34 = v55;
    sub_1C4498DE4(&unk_1EDDFCD60);
    v35 = v54;
    sub_1C4F026C8();
    v36 = v35;
    v37 = v58;
    v54 = *(v33 + 32);
    (v54)(v46, v36, v58);
    v38 = v52;
    sub_1C4F026C8();
    v39 = v46;
    (v54)(&v46[*(v45 + 44)], v38, v37);
    v40 = v50;
    sub_1C4F026C8();
    v41 = sub_1C440E700();
    v42(v41, v59);
    v43 = v45;
    (*(v48 + 32))(&v39[*(v45 + 48)], v40, v34);
    v44 = v47;
    (*(v47 + 16))(v49, v39, v43);
    sub_1C440962C(v60);
    (*(v44 + 8))(v39, v43);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4AFE1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v69 = sub_1C4F00908();
  v71 = *(v69 - 8);
  v3 = *(v71 + 8);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1C4F008B8();
  v76 = *(v82 - 8);
  v5 = *(v76 + 8);
  MEMORY[0x1EEE9AC00](v82);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C4F008F8();
  v73 = *(v74 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1C4EF9CD8();
  v79 = *(v80 - 8);
  v11 = *(v79 + 64);
  v12 = MEMORY[0x1EEE9AC00](v80);
  v77 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v64 - v15;
  v72 = v16;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v64 - v17;
  sub_1C4EF9CC8();
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v18 = sub_1C4F01198();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = 34;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C4AD7104;
  *(v24 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v27 = v7;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v22;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v23;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v24;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v25;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v26;
  *(inited + 112) = sub_1C4B00DA8;
  *(inited + 120) = 0;
  sub_1C4EFD5C8();
  v29 = sub_1C4EFD5F8();
  v31 = v30;
  sub_1C4EFD608();
  v32 = sub_1C4F008D8();
  sub_1C4F00928();
  v33 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {

    (*(v76 + 1))(v27, v82);
    (*(v73 + 8))(v10, v74);
LABEL_17:
    v82 = sub_1C4F00288();
    v76 = "semanticLocationStream";
    v53 = v79;
    v54 = *(v79 + 16);
    v55 = v75;
    v56 = v80;
    v54(v75, v81, v80);
    v57 = v77;
    v58 = v78;
    v54(v77, v78, v56);
    v59 = *(v53 + 80);
    v60 = (v59 + 16) & ~v59;
    v61 = (v72 + v59 + v60) & ~v59;
    v62 = swift_allocObject();
    v63 = *(v53 + 32);
    v63(v62 + v60, v55, v56);
    v63(v62 + v61, v57, v56);
    sub_1C4F00278();

    return (*(v53 + 8))(v58, v56);
  }

  v68 = v33;
  v35 = v82;
  if ((v31 & 1) == 0)
  {
    v36 = v29;
    v37 = v71;
    v38 = v70;
    v67 = v36;
    if (v36)
    {
      v39 = v69;
LABEL_10:

      sub_1C4F00958();

      v42 = (*(v37 + 11))(v38, v39) == *MEMORY[0x1E69E93E8];
      v66 = v27;
      v65 = v10;
      if (v42)
      {
        v43 = 0;
        v71 = "[Error] Interval already ended";
      }

      else
      {
        (*(v37 + 1))(v38, v39);
        v71 = "type=%{signpost.telemetry:string1,public}s %s";
        v43 = 2;
      }

      v44 = v67;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = 0;
      v83 = v46;
      v84 = 0;
      *v45 = v43;
      v45[1] = v43;
      DynamicType = (v45 + 2);
      v48 = v35;
      while (v47 != 96)
      {
        v50 = *(inited + v47 + 32);
        v49 = *(inited + v47 + 40);

        v50(&DynamicType, &v84, &v83);
        v48 = v35;

        v47 += 16;
      }

      v51 = v66;
      v52 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v32, v68, v52, v44, v71, v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v46, -1, -1);
      MEMORY[0x1C6942830](v45, -1, -1);

      (*(v76 + 1))(v51, v48);
      (*(v73 + 8))(v65, v74);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_19;
  }

  v40 = HIDWORD(v29);
  v41 = v29;
  v37 = v71;
  v38 = v70;
  if (v40)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v41 & 0xFFFFF800) != 0xD800)
  {
    v39 = v69;
    if (v41 >> 16 <= 0x10)
    {
      v67 = &v85;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C4AFEABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v69 = sub_1C4F00908();
  v71 = *(v69 - 8);
  v3 = *(v71 + 8);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1C4F008B8();
  v76 = *(v82 - 8);
  v5 = *(v76 + 8);
  MEMORY[0x1EEE9AC00](v82);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C4F008F8();
  v73 = *(v74 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1C4EF9CD8();
  v79 = *(v80 - 8);
  v11 = *(v79 + 64);
  v12 = MEMORY[0x1EEE9AC00](v80);
  v77 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v64 - v15;
  v72 = v16;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v64 - v17;
  sub_1C4EF9CC8();
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v18 = sub_1C4F01198();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = 34;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C4B00DB4;
  *(v24 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v27 = v7;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  *(inited + 32) = sub_1C44549F4;
  *(inited + 40) = v22;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v23;
  *(inited + 64) = sub_1C4454C38;
  *(inited + 72) = v24;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v25;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v26;
  *(inited + 112) = sub_1C4B00DA8;
  *(inited + 120) = 0;
  sub_1C4EFD5C8();
  v29 = sub_1C4EFD5F8();
  v31 = v30;
  sub_1C4EFD608();
  v32 = sub_1C4F008D8();
  sub_1C4F00928();
  v33 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {

    (*(v76 + 1))(v27, v82);
    (*(v73 + 8))(v10, v74);
LABEL_17:
    v82 = sub_1C4F00288();
    v76 = "FutureSessionData";
    v53 = v79;
    v54 = *(v79 + 16);
    v55 = v75;
    v56 = v80;
    v54(v75, v81, v80);
    v57 = v77;
    v58 = v78;
    v54(v77, v78, v56);
    v59 = *(v53 + 80);
    v60 = (v59 + 16) & ~v59;
    v61 = (v72 + v59 + v60) & ~v59;
    v62 = swift_allocObject();
    v63 = *(v53 + 32);
    v63(v62 + v60, v55, v56);
    v63(v62 + v61, v57, v56);
    sub_1C4F00278();

    return (*(v53 + 8))(v58, v56);
  }

  v68 = v33;
  v35 = v82;
  if ((v31 & 1) == 0)
  {
    v36 = v29;
    v37 = v71;
    v38 = v70;
    v67 = v36;
    if (v36)
    {
      v39 = v69;
LABEL_10:

      sub_1C4F00958();

      v42 = (*(v37 + 11))(v38, v39) == *MEMORY[0x1E69E93E8];
      v66 = v27;
      v65 = v10;
      if (v42)
      {
        v43 = 0;
        v71 = "[Error] Interval already ended";
      }

      else
      {
        (*(v37 + 1))(v38, v39);
        v71 = "type=%{signpost.telemetry:string1,public}s %s";
        v43 = 2;
      }

      v44 = v67;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = 0;
      v83 = v46;
      v84 = 0;
      *v45 = v43;
      v45[1] = v43;
      DynamicType = (v45 + 2);
      v48 = v35;
      while (v47 != 96)
      {
        v50 = *(inited + v47 + 32);
        v49 = *(inited + v47 + 40);

        v50(&DynamicType, &v84, &v83);
        v48 = v35;

        v47 += 16;
      }

      v51 = v66;
      v52 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v32, v68, v52, v44, v71, v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v46, -1, -1);
      MEMORY[0x1C6942830](v45, -1, -1);

      (*(v76 + 1))(v51, v48);
      (*(v73 + 8))(v65, v74);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_19;
  }

  v40 = HIDWORD(v29);
  v41 = v29;
  v37 = v71;
  v38 = v70;
  if (v40)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v41 & 0xFFFFF800) != 0xD800)
  {
    v39 = v69;
    if (v41 >> 16 <= 0x10)
    {
      v67 = &v85;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C4AFF37C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1C4983140(*v1);
}

uint64_t sub_1C4AFF38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1C4AFDA34(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1C4AFF3C0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1C45885A0();
  *a2 = result;
  return result;
}

uint64_t sub_1C4AFF3F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C4AFF448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C4AFF49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1C4EF9CD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1C4AFF548(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  sub_1C4AFDD34();
}

uint64_t sub_1C4AFF584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCDF8(AssociatedTypeWitness);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  (*(v5 + 16))(v8, v2, v4, v17);
  sub_1C4F019A8();
  return (*(v13 + 32))(a2, v19, AssociatedTypeWitness);
}

uint64_t sub_1C4AFF71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4AFF584(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1C4AFF77C()
{
  sub_1C43FCF70();
  v2 = v1;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_1C442E8C4;

  return MEMORY[0x1EEE6D8C8](v2);
}

uint64_t sub_1C4AFF828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AFF77C();
}

void *sub_1C4AFF8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = swift_allocBox();
  (*(v8 + 16))(v11, a1, a2);
  sub_1C4F019A8();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = v12;
  *a4 = &unk_1C4F50F98;
  a4[1] = result;
  return result;
}

uint64_t sub_1C4AFFA88(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4AFFBE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C4AFFD1C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v17 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v17))
      {
        v12 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v12 = v18;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        *(a1 + v8) = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *(a1 + v8) = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *(a1 + v8) = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v16 = (v13 >> v9) + 1;
      if (v8)
      {
        v19 = v13 & ~(-1 << v9);
        v20 = sub_1C43FBC98();
        bzero(v20, v21);
        if (v8 == 3)
        {
          *a1 = v19;
          *(a1 + 2) = BYTE2(v19);
        }

        else if (v8 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      v14 = sub_1C43FBC98();
      bzero(v14, v15);
      *a1 = v13;
      v16 = 1;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v8) = v16;
        break;
      case 2:
        *(a1 + v8) = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *(a1 + v8) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4AFFF34(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AFFF70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AFFFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v4[8] = swift_getAssociatedTypeWitness();
  v5 = sub_1C4F01F48();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_getAssociatedTypeWitness();
  v4[13] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C4B000D8, 0, 0);
}

uint64_t sub_1C4B000D8()
{
  sub_1C43FCF70();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[6];
  v3 = v0[7];
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1C4B001B8;
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];

  return MEMORY[0x1EEE6D8C8](v9);
}

uint64_t sub_1C4B001B8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *(v2 + 112);
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C4B003A8;
  }

  else
  {
    swift_endAccess();
    v7 = sub_1C4B002C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4B002C4()
{
  sub_1C43FCF70();
  v1 = v0[11];
  if (sub_1C44157D4(v1, 1, v0[8]) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
  }

  else
  {
    v2 = v0[5];
    sub_1C456902C(&qword_1EC0BD0A8, &qword_1C4F2C300);
    if (swift_dynamicCast())
    {
      goto LABEL_5;
    }
  }

  v3 = v0[5];
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
LABEL_5:
  v4 = v0[11];

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4B003A8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 88);
  swift_endAccess();

  sub_1C43FBDA0();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_1C4B00410()
{
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x6E6F697461727544;
  *(inited + 40) = 0xEF73646E6F636553;
  sub_1C4EF9CB8();
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1C4468200();
  return sub_1C4F00F28();
}

uint64_t sub_1C4B004F0()
{
  v1 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1C4B005A4()
{
  v0 = *(sub_1C4EF9CD8() - 8);
  v1 = *(v0 + 64) + *(v0 + 80) + ((*(v0 + 80) + 16) & ~*(v0 + 80));
  return sub_1C4B00410();
}

uint64_t sub_1C4B00624()
{
  sub_1C43FCF70();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C442E8C4;

  return sub_1C4AFFFAC(v3, v6, v4, v5);
}

uint64_t sub_1C4B006D4(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4B0075C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v17 = v13 + v14;
  if (a2 <= v12)
  {
LABEL_25:
    if (v8 >= v11)
    {
      v25 = a1;
      v9 = v6;
    }

    else
    {
      v25 = (((a1 + v17) & ~v14) + v13 + v15) & ~v15;
      v8 = v11;
    }

    return sub_1C44157D4(v25, v8, v9);
  }

  v18 = ((v13 + (v17 & ~v14) + v15) & ~v15) + v16;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((a2 - v12 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v21 < 2)
    {
LABEL_24:
      if (v12)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_24;
  }

LABEL_14:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    switch(v23)
    {
      case 2:
        v24 = *a1;
        break;
      case 3:
        v24 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v24 = *a1;
        break;
      default:
        v24 = *a1;
        break;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1C4B00998(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = *(v9 + 80);
  v17 = *(v12 + 80);
  v18 = ((v15 + ((v15 + v16) & ~v16) + v17) & ~v17) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v25 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v25))
    {
      v20 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v20 = v26;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 >= a2)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v10 >= v13)
          {
            v30 = a1;
            v31 = a2;
            v11 = v8;
          }

          else
          {
            v30 = (((v15 + v16 + a1) & ~v16) + v15 + v17) & ~v17;
            v31 = a2;
            v10 = v13;
          }

          sub_1C440BAA8(v30, v31, v10, v11);
        }

        break;
    }
  }

  else
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v21 >> v19) + 1;
      if (v18)
      {
        v27 = v21 & ~(-1 << v19);
        v28 = sub_1C43FBC98();
        bzero(v28, v29);
        if (v18 == 3)
        {
          *a1 = v27;
          *(a1 + 2) = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v22 = sub_1C43FBC98();
      bzero(v22, v23);
      *a1 = v21;
      v24 = 1;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v18) = v24;
        break;
      case 2:
        *(a1 + v18) = v24;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v18) = v24;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C4B00C84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4B00DC0(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3390, type metadata accessor for FutureLifeEventStructs.CommuteActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00E18(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3398, type metadata accessor for LifeEventStructs.FacetimeActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00E70(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33A0, type metadata accessor for LifeEventStructs.OnThePhoneActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00EC8(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33A8, type metadata accessor for LifeEventStructs.BicyclingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00F20(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33B0, type metadata accessor for LifeEventStructs.RunningActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00F78(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33B8, type metadata accessor for LifeEventStructs.WalkingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00FD0(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EDDF59C0, type metadata accessor for LifeEventStructs.LocationVisitActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01028(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33C0, type metadata accessor for LifeEventStructs.StationaryActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01080(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33C8, type metadata accessor for LifeEventStructs.AttendingAPerformanceActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B010D8(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33D0, type metadata accessor for LifeEventStructs.DiningActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01130(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33D8, type metadata accessor for LifeEventStructs.CommuteActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01188(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33E0, type metadata accessor for LifeEventStructs.ExercisingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B011E0(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33E8, type metadata accessor for LifeEventStructs.GamingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01238(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33F0, type metadata accessor for LifeEventStructs.VacationingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01290(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33F8, type metadata accessor for LifeEventStructs.ReadingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B012E8(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3400, type metadata accessor for LifeEventStructs.SleepingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01340(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3408, type metadata accessor for LifeEventStructs.ShoppingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01398(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3410, type metadata accessor for LifeEventStructs.MeetingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B013F0(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3418, type metadata accessor for LifeEventStructs.WorkingActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01448(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3420, type metadata accessor for LifeEventStructs.TransportationActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B014A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4B014E8(uint64_t result, unsigned __int8 a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void *a5, uint64_t (*a6)(uint64_t))
{
  v8 = *(result + 16);
  if (v8)
  {
    v13 = v6;
    v14 = result;
    if (sub_1C465B984(a2, &unk_1F43D1000))
    {
      result = sub_1C4B6F59C(v14);
      if (v7)
      {
        return result;
      }

      v15 = *v6;
      a3(result);
      v16 = sub_1C4B6F5D0(v14);
      a4(v16);
    }

    v24 = MEMORY[0x1E69E7CC0];
    for (i = v14 + 32; ; i += 40)
    {
      sub_1C480BC20(i, v23);
      v18 = type metadata accessor for LifeEventStructs.LocationRelationshipType(0);
      sub_1C44099C4(v18);
      sub_1C4DE7B74();
      v19 = sub_1C4B6FAAC();
      if (v7)
      {
        break;
      }

      sub_1C4DE03B4(v19);
      v20 = sub_1C46CB91C(v23);
      MEMORY[0x1C6940330](v20);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      if (!--v8)
      {
        v21 = *(*v13 + *a5);
        *(*v13 + *a5) = v24;

        return a6(v22);
      }
    }

    sub_1C46CB91C(v23);
  }

  return result;
}

uint64_t sub_1C4B01698(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4, void *a5)
{
  v90 = a5;
  v93 = a3;
  v99 = sub_1C4EF9488();
  v8 = sub_1C43FCDF8(v99);
  v98 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v89 - v15;
  v95 = sub_1C4F00978();
  v16 = sub_1C43FCDF8(v95);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v100) = *a2;
  sub_1C445FFF0((a2 + 24), v111, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  v23 = *(a2 + 7);
  sub_1C4F00158();
  sub_1C445FFF0(v111, &v103, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CC8();
  v26 = os_log_type_enabled(v24, v25);
  v94 = a4;
  v91 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v110[0] = v89;
    *v27 = 136315394;
    LOBYTE(v101) = v100;
    ActivityType.value.getter();
    v30 = sub_1C441D828(v28, v29, v110);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    sub_1C445FFF0(&v103, &v101, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
    v31 = sub_1C4F01198();
    v33 = v32;
    sub_1C4420C3C(&v103, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v34 = sub_1C441D828(v31, v33, v110);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_1C43F8000, v24, v25, "Setting name for activity event with activityType: %s, metadata: %s", v27, 0x16u);
    v35 = v89;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v35, -1, -1);
    MEMORY[0x1C6942830](v27, -1, -1);
  }

  else
  {

    sub_1C4420C3C(&v103, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  (*(v18 + 8))(v22, v95);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C4F0D130;
  LOBYTE(v103) = v100;
  ActivityType.value.getter();
  v103 = v37;
  v104 = v38;
  v101 = 0x295D5A2D415B28;
  v102 = 0xE700000000000000;
  v110[0] = 3220512;
  v110[1] = 0xE300000000000000;
  v108 = v37;
  v109 = v38;
  v106 = v37;
  v107 = v38;
  v39 = sub_1C4EF9E48();
  v40 = v96;
  sub_1C440BAA8(v96, 1, 1, v39);
  sub_1C4415EA8();
  sub_1C4F02028();
  sub_1C4420C3C(v40, &unk_1EC0B7610, &unk_1C4F17610);
  v41 = sub_1C4F02008();
  v43 = v42;

  v103 = v41;
  v104 = v43;
  v44 = v97;
  sub_1C4EF9448();
  v45 = sub_1C4F01FF8();
  v47 = v46;
  (*(v98 + 8))(v44, v99);

  v103 = v45;
  v104 = v47;
  v48 = sub_1C4F01FD8();
  v50 = v49;

  *(v36 + 32) = v48;
  *(v36 + 40) = v50;
  v100 = v36;
  v51 = *(v23 + 16);
  if (v51)
  {
    v52 = 0;
    v103 = 0;
    v104 = 0xE000000000000000;
    v53 = (v23 + 48);
    while (v51 != v52)
    {
      if (v52 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v54 = *(v53 - 1);
      v44 = *v53;
      v55 = v53[1];
      v56 = v53[3];
      v57 = v53[5];
      if ((v104 & 0x2000000000000000) != 0)
      {
        v58 = HIBYTE(v104) & 0xF;
      }

      else
      {
        v58 = v103 & 0xFFFFFFFFFFFFLL;
      }

      v59 = v53[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v58)
      {
        MEMORY[0x1C6940010](8236, 0xE200000000000000);
      }

      if (v55)
      {
        MEMORY[0x1C6940010](v44, v55);
      }

      v53 += 8;
      v52 = (v52 + 1);
    }

    v60 = v103;
    v61 = v104;
    v103 = 0x2068746977;
    v104 = 0xE500000000000000;
    MEMORY[0x1C6940010](v60, v61);

    v62 = v100;
    sub_1C4433710();
    if (v63)
    {
      sub_1C44300DC();
      v62 = v87;
    }

    v51 = v94;
    sub_1C440D78C();
  }

  else
  {
    v51 = v94;
    v62 = v100;
  }

  v44 = *v92;
  v64 = *&(*v92)[*v93];
  if (v64 && (v65 = *(v64 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress)) != 0 && (v66 = (v65 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name), (v67 = v66[1]) != 0) && (v68 = *&v44[*v90]) != 0 && (v69 = *(v68 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress)) != 0 && (v70 = (v69 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name), (v71 = v70[1]) != 0))
  {
    v72 = *v66;
    v73 = *v70;
    v103 = 0x206D6F7266;
    v104 = 0xE500000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v72, v67);

    MEMORY[0x1C6940010](544175136, 0xE400000000000000);
    MEMORY[0x1C6940010](v73, v71);
  }

  else
  {
    sub_1C4868060(v91, &v103);
    if (!v105)
    {
      sub_1C4420C3C(&v103, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      goto LABEL_32;
    }

    v74 = sub_1C4B6F66C();
    v76 = v75;
    sub_1C46CB91C(&v103);
    v103 = 2126945;
    v104 = 0xE300000000000000;
    MEMORY[0x1C6940010](v74, v76);
  }

  sub_1C4433710();
  if (v63)
  {
LABEL_40:
    sub_1C44300DC();
    v62 = v86;
  }

  sub_1C440D78C();
LABEL_32:
  sub_1C445FFF0(v111, &v103, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  if (v105)
  {
    if (swift_dynamicCast())
    {
      v103 = 8250;
      v104 = 0xE200000000000000;
      MEMORY[0x1C6940010](v101, v102);

      sub_1C4433710();
      if (v63)
      {
        sub_1C44300DC();
        v62 = v88;
      }

      sub_1C440D78C();
    }
  }

  else
  {
    sub_1C4420C3C(&v103, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v103 = v62;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v77 = sub_1C4F01048();
  v79 = v78;

  v103 = v77;
  v104 = v79;
  v80 = sub_1C4F01438();
  v82 = v81;
  sub_1C4420C3C(v111, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  v83 = &v44[*v51];
  v84 = v83[1];
  *v83 = v80;
  v83[1] = v82;
}