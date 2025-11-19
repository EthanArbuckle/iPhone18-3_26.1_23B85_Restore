uint64_t sub_254EC6608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContextDefinition();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_254EB2F04(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_254EC66B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254EC66F4(uint64_t a1, uint64_t a2)
{
  sub_254EB5144();
  v4 = type metadata accessor for ContextDefinition();

  return sub_254EB2F2C(v2, a2, v4);
}

uint64_t sub_254EC6738(uint64_t a1, uint64_t a2)
{
  sub_254EB5144();
  v4 = type metadata accessor for ContextDefinition();

  return sub_254EB2F04(v2, a2, a2, v4);
}

uint64_t sub_254EC6790(uint64_t a1, uint64_t a2)
{
  sub_254EB5144();
  v4 = type metadata accessor for ContextDefinition();

  return sub_254EB2F2C(v2, a2, v4);
}

uint64_t sub_254EC67D4(uint64_t a1, uint64_t a2)
{
  sub_254EB5144();
  v4 = type metadata accessor for ContextDefinition();

  return sub_254EB2F04(v2, a2, a2, v4);
}

uint64_t sub_254EC681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextDefinition();

  return sub_254EB2F2C(a1, a2, v4);
}

uint64_t sub_254EC6864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextDefinition();

  return sub_254EB2F04(a1, a2, a2, v4);
}

uint64_t sub_254EC68B4()
{
  v1 = sub_254EC8BC0(&unk_27F75F070, &qword_254F2B9B0);
  sub_254EB2D80(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_254EC6954(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F28050();

  return sub_254EB2F2C(a1, a2, v4);
}

uint64_t sub_254EC699C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F28050();

  return sub_254EB2F04(a1, a2, a2, v4);
}

uint64_t sub_254EC69E8()
{
  if (MEMORY[0x277D85020])
  {
    return sub_254F28550();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_254EC6A5C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_254EB2BBC(v0 + 4);
  v2 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_254EC6AA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254EC6B34()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254EC6BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254F28120();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_254F28EE0();
    v8 = a1 + *(a3 + 20);
  }

  return sub_254EB2F2C(v8, a2, v7);
}

uint64_t sub_254EC6C40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_254F28120();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_254F28EE0();
    v10 = a1 + *(a4 + 20);
  }

  return sub_254EB2F04(v10, a2, a2, v9);
}

uint64_t sub_254EC6CE4()
{
  v1 = *(v0 + 32);

  sub_254F22BB0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_254EC6D18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  sub_254F22B98();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_254EC6D54()
{
  sub_254F22B74();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_254EC6D88()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_254EC6DE4()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_254EF278C(*(v0 + 16), v1);
  }

  sub_254F22BB0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_254EC6E30()
{
  _Block_release(*(v0 + 16));
  sub_254F22B74();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_254EC6E64()
{
  v1 = *(v0 + 24);

  sub_254F22888();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_254EC6E98()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_254EF278C(*(v0 + 16), v1);
  }

  v2 = *(v0 + 48);

  sub_254F22B98();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_254EC6F54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254EC6F8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254EC6FC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

char *sub_254EC7048(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_254EB2CD0(a3, result);
  }

  return result;
}

uint64_t sub_254EC7088(uint64_t a1, id *a2)
{
  result = sub_254F29430();
  *a2 = 0;
  return result;
}

uint64_t sub_254EC7100(uint64_t a1, id *a2)
{
  v3 = sub_254F29440();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_254EC7180()
{
  sub_254F29450();
  v0 = sub_254F29420();

  return v0;
}

uint64_t sub_254EC71B8()
{
  v0 = sub_254F29450();
  v1 = MEMORY[0x259C2DC80](v0);

  return v1;
}

uint64_t sub_254EC71F0()
{
  sub_254F29450();
  sub_254F294C0();
}

uint64_t sub_254EC7244()
{
  sub_254F29450();
  sub_254F29BC0();
  sub_254F294C0();
  v0 = sub_254F29C00();

  return v0;
}

uint64_t sub_254EC72C4()
{
  sub_254EB2CA0();
  result = sub_254EC72EC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_254EC72F0(uint64_t a1)
{
  v2 = sub_254EC743C(&qword_27F75EBC8, type metadata accessor for NLTagScheme);
  v3 = sub_254EC743C(&qword_27F75EBD0, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_254EC743C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254EC74CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_254F29420();

  *a2 = v5;
  return result;
}

uint64_t sub_254EC7538(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254EC7558(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_254EC75BC(uint64_t a1)
{
  v2 = sub_254EC743C(&qword_27F75ECC0, type metadata accessor for NSTextCheckingKey);
  v3 = sub_254EC743C(&qword_27F75ECC8, type metadata accessor for NSTextCheckingKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_254EC7750(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254EC7770(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_254EC77B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_254EC77E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_254EC7858()
{
  v1 = v0;
  v50 = sub_254F29140();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v9 = sub_254F291E0();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v47 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v15 = sub_254F29170();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  v49 = v0 + 16;
  *(v0 + 32) = 0u;
  sub_254F284C0();
  sub_254F29150();
  sub_254F29160();
  sub_254F29120();
  v20 = sub_254F29160();
  v21 = sub_254F297A0();
  if (sub_254F29800())
  {
    v22 = swift_slowAlloc();
    v46 = v6;
    v23 = v22;
    *v22 = 0;
    v24 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v20, v21, v24, "IFCR.IntelligenceCommandEmbeddingClient.init()", "", v23, 2u);
    v25 = v23;
    v1 = v0;
    v6 = v46;
    MEMORY[0x259C2EB80](v25, -1, -1);
  }

  v26 = v50;
  (*(v2 + 16))(v6, v8, v50);
  v27 = sub_254F291B0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_254F291A0();
  (*(v2 + 8))(v8, v26);
  swift_getKeyPath();
  sub_254F27A00();

  if (v56 == 1)
  {
    v30 = v47;
    sub_254F284C0();
    v31 = sub_254F291D0();
    v32 = sub_254F296F0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_254EAE000, v31, v32, "Loading local client", v33, 2u);
      MEMORY[0x259C2EB80](v33, -1, -1);
    }

    (*(v51 + 8))(v30, v52);
    v34 = type metadata accessor for NLEmbeddingModelLocalClient();
    v35 = sub_254EC8CE0();
    v54 = v34;
    v55 = &off_2867254D8;
    v53[0] = v35;
    v42 = v49;
    swift_beginAccess();
    v43 = v42;
  }

  else
  {
    v36 = v48;
    sub_254F284C0();
    v37 = sub_254F291D0();
    v38 = sub_254F296F0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_254EAE000, v37, v38, "Loading xpc client", v39, 2u);
      MEMORY[0x259C2EB80](v39, -1, -1);
    }

    (*(v51 + 8))(v36, v52);
    if (qword_27F75EB78 != -1)
    {
      swift_once();
    }

    v40 = qword_27F7604D8;
    v54 = type metadata accessor for NLEmbeddingModelXPCClient();
    v55 = &off_2867255A8;
    v53[0] = v40;
    v41 = v49;
    swift_beginAccess();

    v43 = v41;
  }

  sub_254EC8C70(v53, v43);
  swift_endAccess();
  sub_254EC86C8(v19, "IFCR.IntelligenceCommandEmbeddingClient.init()", 46, 2);

  (*(v16 + 8))(v19, v15);
  return v1;
}

uint64_t sub_254EC7E20()
{
  type metadata accessor for IntelligenceCommandEmbeddingClient();
  swift_allocObject();
  result = sub_254EC7858();
  qword_27F7604D0 = result;
  return result;
}

uint64_t sub_254EC7E5C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_254F29140();
  v3[18] = v4;
  sub_254EB2CAC(v4);
  v3[19] = v5;
  v7 = *(v6 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v8 = sub_254F291E0();
  v3[22] = v8;
  sub_254EB2CAC(v8);
  v3[23] = v9;
  v11 = *(v10 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v12 = sub_254F29170();
  v3[26] = v12;
  sub_254EB2CAC(v12);
  v3[27] = v13;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EC7FD8, 0, 0);
}

uint64_t sub_254EC7FD8()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 168);
  sub_254F284C0();
  sub_254F29150();
  sub_254F29160();
  sub_254F29120();
  v5 = sub_254F29160();
  v6 = sub_254F297A0();
  if (sub_254F29800())
  {
    v7 = *(v0 + 168);
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v5, v6, v9, "IFCR.IntelligenceCommandEmbeddingClient.embedIfReady()", "", v8, 2u);
    MEMORY[0x259C2EB80](v8, -1, -1);
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);

  (*(v13 + 16))(v10, v11, v12);
  v15 = sub_254F291B0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 232) = sub_254F291A0();
  (*(v13 + 8))(v11, v12);
  swift_beginAccess();
  sub_254EC8B50(v14 + 16, v0 + 56);
  if (*(v0 + 80))
  {
    sub_254EB26F4((v0 + 56), v0 + 16);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    sub_254EB5A9C((v0 + 16), v18);
    v20 = *(v19 + 16);
    v37 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v0 + 240) = v22;
    *v22 = v0;
    v22[1] = sub_254EC83D8;
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);

    return v37(v24, v23, v18, v19);
  }

  else
  {
    v26 = *(v0 + 192);
    sub_254EC8C08(v0 + 56);
    sub_254F284C0();
    v27 = sub_254F291D0();
    v28 = sub_254F29700();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_254EAE000, v27, v28, "Embedding client is nil", v29, 2u);
      MEMORY[0x259C2EB80](v29, -1, -1);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    sub_254EC8BC0(&qword_27F75ED58, &qword_254F2AE70);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_254F2AE00;
    *(v33 + 32) = MEMORY[0x277D84F90];
    sub_254EB7974();
    sub_254EB3F88(v34, "IFCR.IntelligenceCommandEmbeddingClient.embedIfReady()");

    (*(v1 + 8))(v32, v31 + 8);

    v35 = sub_254EB69D0();

    return v36(v35);
  }
}

uint64_t sub_254EC83D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_254EC85D8;
  }

  else
  {
    *(v4 + 256) = a1;
    v7 = sub_254EC8500;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_254EC8500()
{
  sub_254EB2BBC((v1 + 16));
  v4 = *(v1 + 256);
  sub_254EB7974();
  sub_254EB3F88(v5, "IFCR.IntelligenceCommandEmbeddingClient.embedIfReady()");

  (*(v3 + 8))(v0, v2);

  v6 = sub_254EB69D0();

  return v7(v6);
}

uint64_t sub_254EC85D8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  sub_254EB2BBC(v0 + 2);
  sub_254EC86C8(v1, "IFCR.IntelligenceCommandEmbeddingClient.embedIfReady()", 54, 2);

  (*(v4 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[31];

  return v9();
}

uint64_t sub_254EC86C8(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v29 = a2;
  v5 = sub_254F29180();
  v6 = sub_254EB2CBC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_254F29140();
  v14 = sub_254EB2CBC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v27[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_254F29160();
  sub_254F29190();
  v28 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v16 + 8))(v20, v13);
  }

  if ((a4 & 1) == 0)
  {
    v23 = v29;
    if (v29)
    {
LABEL_9:

      sub_254F291C0();

      if ((*(v8 + 88))(v12, v5) == *MEMORY[0x277D85B00])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v12, v5);
        v24 = "";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v21, v28, v26, v23, v24, v25, 2u);
      MEMORY[0x259C2EB80](v25, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {
      v23 = &v30;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EC894C()
{
  sub_254EC8C08(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_254EC89A8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_254EC8A50;

  return sub_254EC7E5C(a1, a2);
}

uint64_t sub_254EC8A50(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_254EC8B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75ED50, &qword_254F2AE68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EC8BC0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_254EC8C08(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75ED50, &qword_254F2AE68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254EC8C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75ED50, &qword_254F2AE68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EC8CE0()
{
  v0 = sub_254F291E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (v5)
  {
    v6 = v5;
    if (([v5 hasAvailableAssets] & 1) == 0)
    {
      aBlock[4] = sub_254EC9048;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_254EC93E4;
      aBlock[3] = &unk_2867254F0;
      v7 = _Block_copy(aBlock);
      [v6 requestEmbeddingAssetsWithCompletionHandler_];
      _Block_release(v7);
    }

    sub_254EB69E4();
    v8 = swift_allocObject();
    sub_254EC8BC0(&qword_27F75EDD8, &unk_254F2AFC0);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v8 + 16) = v6;
    *(v8 + 24) = v9;
  }

  else
  {
    sub_254F284C0();
    v10 = sub_254F291D0();
    v8 = sub_254F29700();
    if (os_log_type_enabled(v10, v8))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_254EAE000, v10, v8, "Could not load NLContextualEmbedding model", v11, 2u);
      MEMORY[0x259C2EB80](v11, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    sub_254ECB3F4();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_254EC8F90(char a1)
{
  sub_254F29BC0();
  MEMORY[0x259C2E340](a1 & 1);
  return sub_254F29C00();
}

uint64_t sub_254EC8FF4()
{
  v1 = *v0;
  sub_254F29BC0();
  MEMORY[0x259C2E340](v1);
  return sub_254F29C00();
}

uint64_t sub_254EC9048(uint64_t a1, void *a2)
{
  v4 = sub_254F291E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_254F284C0();
      v24 = a2;
      v17 = sub_254F291D0();
      v25 = sub_254F29700();

      if (os_log_type_enabled(v17, v25))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        if (a2)
        {
          v26 = a2;
          v27 = _swift_stdlib_bridgeErrorToNSError();
          v28 = v27;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        *(v19 + 4) = v27;
        *v20 = v28;
        _os_log_impl(&dword_254EAE000, v17, v25, "NLContextualEmbedding assets not available: %@", v19, 0xCu);
        v15 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      if (a1 == 2)
      {
        sub_254F284C0();
        v16 = a2;
        v17 = sub_254F291D0();
        v18 = sub_254F29700();

        if (!os_log_type_enabled(v17, v18))
        {
LABEL_21:
          v12 = v15;
          goto LABEL_22;
        }

        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        if (a2)
        {
          v21 = a2;
          v22 = _swift_stdlib_bridgeErrorToNSError();
          v23 = v22;
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        *(v19 + 4) = v22;
        *v20 = v23;
        _os_log_impl(&dword_254EAE000, v17, v18, "Error fetching NLContextualEmbedding assets: %@", v19, 0xCu);
LABEL_20:
        sub_254ECB348(v20);
        MEMORY[0x259C2EB80](v20, -1, -1);
        MEMORY[0x259C2EB80](v19, -1, -1);
        goto LABEL_21;
      }

      sub_254F284C0();
      v29 = a2;
      v17 = sub_254F291D0();
      v30 = sub_254F29700();

      if (os_log_type_enabled(v17, v30))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        if (a2)
        {
          v31 = a2;
          v32 = _swift_stdlib_bridgeErrorToNSError();
          v33 = v32;
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

        *(v19 + 4) = v32;
        *v20 = v33;
        _os_log_impl(&dword_254EAE000, v17, v30, "NLContextualEmbedding unknown error: %@", v19, 0xCu);
        v15 = v9;
        goto LABEL_20;
      }

      v12 = v9;
    }

LABEL_22:

    return (*(v5 + 8))(v12, v4);
  }

  return result;
}

void sub_254EC93E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_254EC945C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_254EC9480, 0, 0);
}

uint64_t sub_254EC9480()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
  inited = swift_initStackObject();
  v0[11] = inited;
  *(inited + 16) = xmmword_254F2AE00;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_254EC9560;
  v5 = v0[10];

  return sub_254EC9728(inited);
}

uint64_t sub_254EC9560(uint64_t a1)
{
  v4 = *(*v2 + 96);
  v5 = *v2;
  v5[13] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_254EC96BC, 0, 0);
  }

  else
  {
    v6 = v5[11];
    swift_setDeallocating();
    sub_254ECA4CC();
    v7 = v5[1];

    return v7(a1);
  }
}

uint64_t sub_254EC96BC()
{
  v1 = v0[11];
  swift_setDeallocating();
  sub_254ECA4CC();
  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_254EC9728(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_254F291E0();
  v2[4] = v3;
  sub_254EB2CAC(v3);
  v2[5] = v4;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EC97E0, 0, 0);
}

uint64_t sub_254EC97E0()
{
  v51 = v0;
  if (![*(v0[3] + 16) hasAvailableAssets])
  {
    v15 = v0[6];
    sub_254F284C0();
    v16 = sub_254F291D0();
    v17 = sub_254F29700();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_254EAE000, v16, v17, "NLContextualEmbedding assets unavailable", v18, 2u);
      MEMORY[0x259C2EB80](v18, -1, -1);
    }

    v20 = v0[5];
    v19 = v0[6];
    v21 = v0[4];
    v22 = v0[2];

    (*(v20 + 8))(v19, v21);
    v23 = sub_254EC9C24(MEMORY[0x277D84F90], *(v22 + 16));
    goto LABEL_35;
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 16);
  v4 = (v1 + 40);
  for (i = MEMORY[0x277D84F90]; v3; --v3)
  {
    v6 = v0[3];
    v8 = *(v4 - 1);
    v7 = *v4;
    v9 = *(v2 + 24);

    os_unfair_lock_lock(v9 + 4);
    sub_254EC9DA8(v6, v8, v7, &v50);
    os_unfair_lock_unlock(v9 + 4);

    v10 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = *(i + 16);
      sub_254EEFD3C();
      i = v13;
    }

    v11 = *(i + 16);
    if (v11 >= *(i + 24) >> 1)
    {
      sub_254EEFD3C();
      i = v14;
    }

    *(i + 16) = v11 + 1;
    *(i + 8 * v11 + 32) = v10;
    v4 += 2;
  }

  v24 = *(i + 16);
  if (!v24)
  {

    v23 = MEMORY[0x277D84F90];
LABEL_35:
    v42 = v0[6];

    v43 = v0[1];

    return v43(v23);
  }

  v49 = MEMORY[0x277D84F90];
  result = sub_254ECA5E4(0, v24, 0);
  v26 = 0;
  v23 = v49;
  v45 = i;
  v46 = i + 32;
  v44 = v24;
  while (v26 < *(i + 16))
  {
    v27 = *(v46 + 8 * v26);
    if (v27 >> 62)
    {
      if (v27 < 0)
      {
        v37 = *(v46 + 8 * v26);
      }

      v38 = v26;
      result = sub_254F29AA0();
      v26 = v38;
      v28 = result;
      if (!result)
      {
LABEL_29:
        v30 = MEMORY[0x277D84F90];
        goto LABEL_30;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_29;
      }
    }

    v47 = v26;
    v48 = v23;
    v50 = MEMORY[0x277D84F90];

    result = sub_254ECA604(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      goto LABEL_39;
    }

    v29 = 0;
    v30 = v50;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x259C2E0D0](v29, v27);
      }

      else
      {
        v31 = *(v27 + 8 * v29 + 32);
      }

      v32 = v31;
      [v31 floatValue];
      v34 = v33;

      v50 = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_254ECA604((v35 > 1), v36 + 1, 1);
        v30 = v50;
      }

      ++v29;
      *(v30 + 16) = v36 + 1;
      *(v30 + 4 * v36 + 32) = v34;
    }

    while (v28 != v29);

    v24 = v44;
    i = v45;
    v26 = v47;
    v23 = v48;
LABEL_30:
    v40 = *(v23 + 16);
    v39 = *(v23 + 24);
    if (v40 >= v39 >> 1)
    {
      v41 = v26;
      result = sub_254ECA5E4((v39 > 1), v40 + 1, 1);
      v26 = v41;
    }

    ++v26;
    *(v23 + 16) = v40 + 1;
    *(v23 + 8 * v40 + 32) = v30;
    if (v26 == v24)
    {

      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_254EC9C24(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_254EC8BC0(&qword_27F75ED68, &qword_254F2AF50);
      v4 = sub_254F295A0();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t sub_254EC9CBC(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_254F295A0();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_254F2AED0)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_254F2AEC0)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_254EC9DA8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = sub_254F291E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = *MEMORY[0x277CD8708];
  v30[0] = 0;
  v15 = sub_254ECB2E0(a2, a3, v14, v30, v13);
  v16 = v30[0];
  if (v15)
  {
    v17 = v15;
    sub_254ECB3B0();
    v18 = sub_254F29560();
    v19 = v16;
  }

  else
  {
    v20 = v30[0];
    v21 = sub_254F27870();

    swift_willThrow();
    sub_254F284C0();
    v22 = v21;
    v23 = sub_254F291D0();
    v24 = sub_254F29700();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_254EAE000, v23, v24, "Couldn't fetch embedding due to error: %@", v25, 0xCu);
      sub_254ECB348(v26);
      MEMORY[0x259C2EB80](v26, -1, -1);
      MEMORY[0x259C2EB80](v25, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v18 = MEMORY[0x277D84F90];
  }

  *a4 = v18;
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_254ECA018()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_254ECA040()
{
  sub_254ECA018();
  v0 = sub_254EB69E4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_254ECA090(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_254EC8A50;

  return sub_254EC945C(a1, a2);
}

char *sub_254ECA150(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_254EB2CD0(a3, result);
  }

  return result;
}

char *sub_254ECA188(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_254EB2CD0(a3, result);
  }

  return result;
}

uint64_t sub_254ECA260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_254EB7EEC();
  if (v10 && (result = sub_254EC8BC0(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_254EB6B68();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_254EC8BC0(a4, a5);
    sub_254EB6B68();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_254ECA348(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return sub_254EB2CD0(a3, result);
  }

  return result;
}

uint64_t sub_254ECA410(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_254EB7EEC();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_254EB6B68();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_254EB6B68();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_254ECA4CC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_254EB69E4();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_254ECA508()
{
  v1 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  sub_254EB7DAC(v1);
  v3 = *(v2 + 80);
  sub_254EB3A30();
  v4 = *(v0 + 16);
  swift_arrayDestroy();
  v5 = sub_254EB69E4();

  return MEMORY[0x2821FE8D8](v5, v6, v7);
}

uint64_t sub_254ECA57C()
{
  v1 = sub_254F28080();
  sub_254EB7DAC(v1);
  v3 = *(v2 + 80);
  sub_254EB3A30();
  v4 = *(v0 + 16);
  swift_arrayDestroy();
  v5 = sub_254EB69E4();

  return MEMORY[0x2821FE8D8](v5, v6, v7);
}

void *sub_254ECA5E4(void *a1, int64_t a2, char a3)
{
  result = sub_254ECA934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254ECA604(char *a1, int64_t a2, char a3)
{
  result = sub_254ECAA64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254ECA624(void *a1, int64_t a2, char a3)
{
  result = sub_254ECAB64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254ECA74C(void *a1, int64_t a2, char a3)
{
  result = sub_254ECAE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254ECA8D4(char *a1, int64_t a2, char a3)
{
  result = sub_254ECB068(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254ECA934(void *result, int64_t a2, char a3, void *a4)
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
    sub_254EC8BC0(&qword_27F75ED58, &qword_254F2AE70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254EC8BC0(&qword_27F75ED68, &qword_254F2AF50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_254ECAA64(char *result, int64_t a2, char a3, char *a4)
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
    sub_254EC8BC0(&qword_27F75ED60, &unk_254F2AF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void *sub_254ECAB64(void *result, int64_t a2, char a3, void *a4)
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
    sub_254EC8BC0(&qword_27F75EDC0, &qword_254F2AFB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254EC8BC0(&qword_27F75EDC8, &qword_254F2AFB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254ECAC94(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_254EB3BC8();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254EB3BB8();
    }
  }

  else
  {
    v13 = a2;
  }

  v16 = *(a4 + 16);
  if (v13 <= v16)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254EC8BC0(a5, a6);
  v18 = a7(0);
  sub_254EB2CAC(v18);
  v20 = *(v19 + 72);
  v21 = sub_254EB6D18();
  v22 = j__malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v8 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v8) / v20);
LABEL_18:
  v24 = a7(0);
  sub_254EB7DAC(v24);
  v26 = *(v25 + 80);
  sub_254EB3A30();
  if (a1)
  {
    sub_254ECA410(a4 + v27, v16, v21 + v27, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_254EB6910();
  }
}

void *sub_254ECAE14(void *result, int64_t a2, char a3, void *a4)
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
    sub_254EC8BC0(&qword_27F75ED98, &unk_254F2C370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254EC8BC0(&qword_27F75EDA0, &unk_254F2AF90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254ECAF70(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_254EB3BC8();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_254EB3BB8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_254ECB068(char *result, int64_t a2, char a3, char *a4)
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
    sub_254EC8BC0(&qword_27F75ED90, &unk_254F2AF80);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_254ECB15C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_254EB3BC8();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254EB3BB8();
    }
  }

  else
  {
    v13 = a2;
  }

  v16 = *(a4 + 16);
  if (v13 <= v16)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254EC8BC0(a5, a6);
  v18 = sub_254EC8BC0(a7, a8);
  sub_254EB2CAC(v18);
  v20 = *(v19 + 72);
  v21 = sub_254EB6D18();
  v22 = j__malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v8 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v8) / v20);
LABEL_18:
  v24 = sub_254EC8BC0(a7, a8);
  sub_254EB7DAC(v24);
  v26 = *(v25 + 80);
  sub_254EB3A30();
  if (a1)
  {
    sub_254ECA260(a4 + v27, v16, v21 + v27, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_254EB6910();
  }
}

id sub_254ECB2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_254F29420();
  v9 = [a5 sentenceEmbeddingVectorForString:v8 language:a3 error:a4];

  return v9;
}

uint64_t sub_254ECB348(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75ED70, &qword_254F2AF58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254ECB3B0()
{
  result = qword_281426040;
  if (!qword_281426040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281426040);
  }

  return result;
}

unint64_t sub_254ECB3F4()
{
  result = qword_27F75EDD0;
  if (!qword_27F75EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75EDD0);
  }

  return result;
}

uint64_t sub_254ECB448(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for ContextEmbeddingsInitializationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextEmbeddingsInitializationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254ECB5EC()
{
  result = qword_27F75EDE0;
  if (!qword_27F75EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75EDE0);
  }

  return result;
}

uint64_t sub_254ECB644()
{
  v1 = v0;
  v2 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_254F291E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v11 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  v12 = *(v1 + 112);
  *(v1 + 112) = v11;
  v13 = v11;

  if (v13)
  {
  }

  else
  {
    sub_254F284C0();
    v14 = sub_254F291D0();
    v15 = sub_254F29700();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_254EAE000, v14, v15, "Could not load NLContextualEmbedding model", v16, 2u);
      MEMORY[0x259C2EB80](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  v17 = sub_254F29600();
  sub_254EB2F04(v5, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v1;

  sub_254ECB91C(0, 0, v5, &unk_254F2B1B0, v18);

  return v1;
}

uint64_t sub_254ECB8C4()
{
  sub_254EB3BD8();
  v1 = *(v0 + 16);
  sub_254ECBC2C();
  sub_254EB4924();

  return v2();
}

uint64_t sub_254ECB91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_254ECD9D8(a3, v26 - v11);
  v13 = sub_254F29600();
  v14 = sub_254EB2F2C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_254EB300C(v12, &qword_27F75EE08, &qword_254F2B1A0);
  }

  else
  {
    sub_254F295F0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_254F295C0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_254F294A0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_254EB300C(a3, &qword_27F75EE08, &qword_254F2B1A0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254EB300C(a3, &qword_27F75EE08, &qword_254F2B1A0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_254ECBBF0()
{
  type metadata accessor for NLEmbeddingModelXPCClient();
  swift_allocObject();
  result = sub_254ECB644();
  qword_27F7604D8 = result;
  return result;
}

uint64_t sub_254ECBC2C()
{
  v1 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v11 - v4;
  v6 = *(v0 + 112);
  if (v6)
  {
    if ((*(v0 + 120) & 1) == 0)
    {
      *(v0 + 120) = 1;
      v7 = sub_254F29600();
      sub_254EB2F04(v5, 1, 1, v7);
      v8 = sub_254ECD804();
      v9 = swift_allocObject();
      v9[2] = v0;
      v9[3] = v8;
      v9[4] = v6;
      v9[5] = v0;
      swift_retain_n();
      v10 = v6;
      sub_254F19D88();
    }
  }

  return result;
}

uint64_t sub_254ECBD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v7 = sub_254F291E0();
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ECBE04, a5, 0);
}

uint64_t sub_254ECBE04()
{
  v1 = v0[19];
  v2 = sub_254F29420();
  v0[24] = v2;
  v3 = *MEMORY[0x277CD8708];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_254ECBF50;
  v4 = swift_continuation_init();
  v0[17] = sub_254EC8BC0(&qword_27F75EE10, &unk_254F2B1D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_254ECC1EC;
  v0[13] = &unk_286725688;
  v0[14] = v4;
  [v1 requestSentenceEmbeddingVectorForString:v2 language:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_254ECBF50()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v1 = *v0;
  v3 = v2[6];
  v2[25] = v3;
  v4 = v2[20];
  if (v3)
  {
    v5 = sub_254ECC158;
  }

  else
  {
    v5 = sub_254ECC068;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_254ECC068()
{
  sub_254EB3A3C();
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  *(v2 + 121) = 1;
  sub_254F284C0();
  v4 = sub_254F291D0();
  v5 = sub_254F296F0();
  if (sub_254EB3E3C(v5))
  {
    *swift_slowAlloc() = 0;
    sub_254EB7DB8(&dword_254EAE000, v6, v7, "NLContextualEmbedding finishedFirstEmbedding");
    sub_254EC0004();
  }

  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 168);

  (*(v9 + 8))(v8, v10);

  sub_254EB4924();

  return v11();
}

uint64_t sub_254ECC158()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  swift_willThrow();

  *(v4 + 120) = 0;
  swift_willThrow();

  sub_254EB4924();
  v6 = v0[25];

  return v5();
}

uint64_t sub_254ECC1EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_254EB5A9C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_254EDF0F0(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_254ECB3B0();
      v8 = sub_254F29560();
    }

    else
    {
      v8 = 0;
    }

    return sub_254EC7068(v5, v8);
  }
}

uint64_t sub_254ECC290()
{
  sub_254EB3BD8();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_254F291E0();
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ECC350, v0, 0);
}

uint64_t sub_254ECC350()
{
  sub_254EB3A3C();
  if (*(v0[10] + 121) == 1)
  {
    v2 = v0[8];
    v1 = v0[9];
    sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
    inited = swift_initStackObject();
    v0[14] = inited;
    *(inited + 16) = xmmword_254F2AE00;
    *(inited + 32) = v2;
    *(inited + 40) = v1;

    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_254ECC524;
    v5 = v0[10];

    return sub_254ECC6EC();
  }

  else
  {
    v7 = v0[13];
    sub_254F284C0();
    v8 = sub_254F291D0();
    v9 = sub_254F29700();
    if (sub_254EB3E3C(v9))
    {
      *swift_slowAlloc() = 0;
      sub_254EB7DB8(&dword_254EAE000, v10, v11, "NLContextualEmbedding hasn't finishedFirstEmbedding");
      sub_254EC0004();
    }

    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];

    (*(v13 + 8))(v12, v14);
    sub_254EC8BC0(&qword_27F75ED68, &qword_254F2AF50);
    v15 = sub_254F295A0();
    *(v15 + 16) = 1;
    *(v15 + 32) = MEMORY[0x277D84F90];
    v16 = v0[13];

    sub_254EB4930();

    return v17(v15);
  }
}

uint64_t sub_254ECC524()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  v6 = v4[15];
  v7 = *v1;
  sub_254EB2CE0();
  *v8 = v7;
  v5[16] = v0;

  if (v0)
  {
    v9 = v5[10];

    return MEMORY[0x2822009F8](sub_254ECC680, v9, 0);
  }

  else
  {
    v10 = v5[14];
    swift_setDeallocating();
    sub_254ECA4CC();
    v11 = v5[13];

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_254ECC680()
{
  sub_254EB3BD8();
  v1 = v0[13];
  v2 = v0[14];
  swift_setDeallocating();
  sub_254ECA4CC();

  sub_254EB4924();
  v4 = v0[16];

  return v3();
}

uint64_t sub_254ECC6EC()
{
  sub_254EB3BD8();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_254F291E0();
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v5 = *(v4 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ECC7B4, v0, 0);
}

uint64_t sub_254ECC7B4()
{
  v1 = *(v0[20] + 112);
  v0[25] = v1;
  if (!v1)
  {
    v12 = v0[24];
    sub_254F284C0();
    v13 = sub_254F291D0();
    v14 = sub_254F29700();
    if (sub_254EB3E3C(v14))
    {
      *swift_slowAlloc() = 0;
      sub_254EB7DB8(&dword_254EAE000, v15, v16, "NLContextualEmbedding nil");
      sub_254EC0004();
    }

    v17 = v0[24];
    v18 = v0;
    v19 = v0[22];
    v20 = v18[21];
    v21 = v18[19];

    (*(v19 + 8))(v17, v20);
    v0 = v18;
    v22 = sub_254EC9C24(MEMORY[0x277D84F90], *(v21 + 16));
    goto LABEL_30;
  }

  v2 = v0[19];
  v3 = v2[2];
  v0[26] = v3;
  if (v3)
  {
    v4 = *MEMORY[0x277CD8708];
    v5 = MEMORY[0x277D84F90];
    v0[28] = 0;
    v0[29] = v5;
    v0[27] = v4;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v1;

    v9 = sub_254F29420();
    v0[30] = v9;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_254ECCC18;
    v10 = swift_continuation_init();
    v0[17] = sub_254EC8BC0(&qword_27F75EE10, &unk_254F2B1D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_254ECC1EC;
    v0[13] = &unk_286725638;
    v0[14] = v10;
    [v8 requestSentenceEmbeddingVectorForString:v9 language:v4 completionHandler:v0 + 10];
    v11 = (v0 + 2);

    return MEMORY[0x282200938](v11);
  }

  v23 = MEMORY[0x277D84F90];
  v24 = *(MEMORY[0x277D84F90] + 16);
  v25 = v1;
  if (!v24)
  {

    v22 = MEMORY[0x277D84F90];

LABEL_30:
    v44 = v0[23];
    v43 = v0[24];

    sub_254EB4930();

    return v45(v22);
  }

  v47 = v0;
  v11 = sub_254ECA5E4(0, v24, 0);
  v26 = 0;
  v27 = v23;
  v48 = v24;
  while (v26 < *(v23 + 16))
  {
    v28 = *(v23 + 8 * v26 + 32);
    if (v28 >> 62)
    {
      v11 = sub_254EB3A48();
      v29 = v11;
      if (!v11)
      {
LABEL_24:
        v31 = v23;
        goto LABEL_25;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        goto LABEL_24;
      }
    }

    v49 = v27;
    v50 = v23;

    v11 = sub_254EB9934();
    if (v29 < 0)
    {
      goto LABEL_34;
    }

    v30 = 0;
    v31 = v50;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x259C2E0D0](v30, v28);
      }

      else
      {
        v32 = *(v28 + 8 * v30 + 32);
      }

      v33 = v32;
      [v32 floatValue];
      v35 = v34;

      v37 = *(v50 + 16);
      v36 = *(v50 + 24);
      if (v37 >= v36 >> 1)
      {
        v38 = sub_254EB5124(v36);
        sub_254ECA604(v38, v37 + 1, 1);
      }

      ++v30;
      *(v50 + 16) = v37 + 1;
      *(v50 + 4 * v37 + 32) = v35;
    }

    while (v29 != v30);

    v23 = MEMORY[0x277D84F90];
    v27 = v49;
LABEL_25:
    v40 = *(v27 + 16);
    v39 = *(v27 + 24);
    if (v40 >= v39 >> 1)
    {
      v41 = sub_254EB5124(v39);
      v11 = sub_254ECA5E4(v41, v40 + 1, 1);
    }

    ++v26;
    *(v27 + 16) = v40 + 1;
    *(v27 + 8 * v40 + 32) = v31;
    if (v26 == v48)
    {
      v0 = v47;
      v22 = v27;
      v42 = v47[25];

      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return MEMORY[0x282200938](v11);
}

uint64_t sub_254ECCC18()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v1 = *v0;
  v3 = v2[6];
  v2[31] = v3;
  v4 = v2[20];
  if (v3)
  {
    v5 = sub_254ECD0C0;
  }

  else
  {
    v5 = sub_254ECCD30;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_254ECCD30()
{
  v45 = v0;
  v2 = (v0 + 18);
  v1 = v0[18];

  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  v3 = v0[29];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[29];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v8 = v7 + 1;
    v42 = v7;
    if (v7 >= v6 >> 1)
    {
      sub_254EB5124(v6);
      sub_254EEFD3C();
      v5 = v37;
    }

    v9 = v0[26];
    v10 = v0[28] + 1;
    *(v5 + 2) = v8;
    v41 = v5 + 32;
    *&v5[8 * v42 + 32] = v1;
    if (v10 != v9)
    {
      break;
    }

    v39 = v0;
    v43 = MEMORY[0x277D84F90];
    v1 = &v43;
    sub_254ECA5E4(0, v8, 0);
    v2 = 0;
    v11 = v43;
    v0 = &off_2797B4000;
    v40 = v5;
    while (v2 < *(v5 + 2))
    {
      v12 = *&v41[8 * v2];
      if (v12 >> 62)
      {
        v13 = sub_254EB3A48();
        if (!v13)
        {
LABEL_22:
          v14 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      v44 = MEMORY[0x277D84F90];

      v1 = &v44;
      sub_254EB9934();
      if (v13 < 0)
      {
        goto LABEL_35;
      }

      v14 = v44;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C2E0D0](0, v12);
        }

        else
        {
          v15 = *(v12 + 32);
        }

        v1 = v15;
        [v15 floatValue];

        v44 = v14;
        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        if (v17 >= v16 >> 1)
        {
          v19 = sub_254EB5124(v16);
          v1 = &v44;
          sub_254ECA604(v19, v17 + 1, 1);
          v14 = v44;
        }

        sub_254EB6368();
      }

      while (!v18);

      v5 = v40;
LABEL_23:
      v43 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        v1 = &v43;
        sub_254ECA5E4((v20 > 1), v21 + 1, 1);
        v11 = v43;
      }

      *(v11 + 16) = v21 + 1;
      *(v11 + 8 * v21 + 32) = v14;
      v18 = v2++ == v42;
      if (v18)
      {
        v30 = v39[25];

        v32 = v39[23];
        v31 = v39[24];

        sub_254EB4930();
        sub_254EB67A8();

        __asm { BRAA            X2, X16 }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v35 = *(v5 + 2);
    sub_254EEFD3C();
    v5 = v36;
  }

  sub_254EB4ACC();
  v0[28] = v22;
  v0[29] = v5;
  v23 = v0[25];
  v24 = v0[19];
  sub_254EB56F8(v22);
  v0[30] = sub_254F29420();

  v0[2] = v0;
  v0[7] = v2;
  v25 = sub_254EB69F4();
  v26 = sub_254EC8BC0(&qword_27F75EE10, &unk_254F2B1D0);
  v27 = sub_254EB6B7C(v26);
  v0[11] = 1107296256;
  v0[12] = sub_254ECC1EC;
  v0[13] = &unk_286725638;
  v0[14] = v25;
  sub_254EB5B88(v27, sel_requestSentenceEmbeddingVectorForString_language_completionHandler_);
  sub_254EB67A8();

  return MEMORY[0x282200938](v28);
}

uint64_t sub_254ECD0C0()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[23];
  swift_willThrow();

  sub_254F284C0();
  v4 = v2;
  v5 = sub_254F291D0();
  v6 = sub_254F29700();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[31];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_254EAE000, v5, v6, "Couldn't fetch embedding due to error: %@", v8, 0xCu);
    sub_254EB300C(v9, &qword_27F75ED70, &qword_254F2AF58);
    MEMORY[0x259C2EB80](v9, -1, -1);
    MEMORY[0x259C2EB80](v8, -1, -1);
  }

  v12 = v0[31];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];

  v14[1](v13, v15);
  v16 = v0[29];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v0[29];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v21 = v20 + 1;
    v58 = v20;
    if (v20 >= v19 >> 1)
    {
      sub_254EB5124(v19);
      sub_254EEFD3C();
      v18 = v53;
    }

    v22 = v0[26];
    v23 = v0[28] + 1;
    *(v18 + 2) = v21;
    v24 = MEMORY[0x277D84F90];
    v57 = v18 + 32;
    *&v18[8 * v58 + 32] = MEMORY[0x277D84F90];
    if (v23 != v22)
    {
      break;
    }

    v55 = v0;
    sub_254ECA5E4(0, v21, 0);
    v25 = 0;
    v26 = v24;
    v0 = &off_2797B4000;
    v56 = v18;
    while (v25 < *(v18 + 2))
    {
      v27 = *&v57[8 * v25];
      if (v27 >> 62)
      {
        v28 = sub_254EB3A48();
        if (!v28)
        {
LABEL_22:
          v29 = v24;
          goto LABEL_23;
        }
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_22;
        }
      }

      v59 = v26;

      sub_254EB9934();
      if (v28 < 0)
      {
        goto LABEL_35;
      }

      v29 = v24;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x259C2E0D0](0, v27);
        }

        else
        {
          v30 = *(v27 + 32);
        }

        v31 = v30;
        [v30 floatValue];

        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        if (v33 >= v32 >> 1)
        {
          v35 = sub_254EB5124(v32);
          sub_254ECA604(v35, v33 + 1, 1);
        }

        sub_254EB6368();
      }

      while (!v34);

      v18 = v56;
      v24 = MEMORY[0x277D84F90];
      v26 = v59;
LABEL_23:
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_254ECA5E4((v36 > 1), v37 + 1, 1);
      }

      *(v26 + 16) = v37 + 1;
      *(v26 + 8 * v37 + 32) = v29;
      v34 = v25++ == v58;
      if (v34)
      {
        v46 = v55[25];

        v48 = v55[23];
        v47 = v55[24];

        sub_254EB4930();
        sub_254EB67A8();

        __asm { BRAA            X2, X16 }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v51 = *(v18 + 2);
    sub_254EEFD3C();
    v18 = v52;
  }

  sub_254EB4ACC();
  v0[28] = v38;
  v0[29] = v18;
  v39 = v0[25];
  v40 = v0[19];
  sub_254EB56F8(v38);
  v0[30] = sub_254F29420();

  v0[2] = v0;
  v0[7] = v0 + 18;
  v41 = sub_254EB69F4();
  v42 = sub_254EC8BC0(&qword_27F75EE10, &unk_254F2B1D0);
  v43 = sub_254EB6B7C(v42);
  v0[11] = 1107296256;
  v0[12] = sub_254ECC1EC;
  v0[13] = &unk_286725638;
  v0[14] = v41;
  sub_254EB5B88(v43, sel_requestSentenceEmbeddingVectorForString_language_completionHandler_);
  sub_254EB67A8();

  return MEMORY[0x282200938](v44);
}

uint64_t sub_254ECD554()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254ECD5D8()
{
  if (qword_27F75EB78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_254ECD634(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NLEmbeddingModelXPCClient();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_254ECD66C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ECD714;

  return sub_254ECC290();
}

uint64_t sub_254ECD714()
{
  sub_254EB3BD8();
  v3 = v2;
  sub_254EB4918();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_254EB2CE0();
  *v7 = v6;

  sub_254EB4930();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_254ECD804()
{
  result = qword_27F75EE00;
  if (!qword_27F75EE00)
  {
    type metadata accessor for NLEmbeddingModelXPCClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75EE00);
  }

  return result;
}

uint64_t sub_254ECD858()
{
  sub_254EB3A3C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_254EB3BE4(v4);
  *v5 = v6;
  v5[1] = sub_254ECD8F8;
  v7 = sub_254EB3FA8();

  return sub_254ECB8A4(v7, v8, v2, v3);
}

uint64_t sub_254ECD8F8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;

  sub_254EB4924();

  return v5();
}

uint64_t sub_254ECD9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ECDA48(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254ECDB40;

  return v7(a1);
}

uint64_t sub_254ECDB40()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;

  sub_254EB4924();

  return v5();
}

uint64_t sub_254ECDC24()
{
  sub_254EB3A3C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_254EB3BE4(v3);
  *v4 = v5;
  v4[1] = sub_254ECDD98;
  v6 = sub_254EB3FA8();

  return v7(v6);
}

uint64_t sub_254ECDCE0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_254EB3BE4(v5);
  *v6 = v7;
  v6[1] = sub_254ECD8F8;
  v8 = sub_254EB3FA8();

  return sub_254ECBD40(v8, v9, v2, v4, v3);
}

uint64_t sub_254ECDD9C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_254ECDDF8()
{
  v1 = sub_254F291E0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_254F29170();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F284C0();
  sub_254F29150();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime25IntelligenceCommandScorer_signposter, v7, v3);
  return v0;
}

uint64_t sub_254ECDF20()
{
  sub_254EB3BD8();
  v32 = *MEMORY[0x277D85DE8];
  v1[106] = v0;
  v1[105] = v2;
  v1[99] = v3;
  v1[93] = v4;
  v5 = sub_254F291E0();
  v1[107] = v5;
  sub_254EB2CAC(v5);
  v1[108] = v6;
  v8 = *(v7 + 64);
  v1[109] = sub_254EB3FC4();
  v9 = *(*(sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0) - 8) + 64);
  v1[110] = sub_254EB3FC4();
  v10 = *(*(sub_254EC8BC0(&qword_27F75EE30, &qword_254F2B260) - 8) + 64);
  v1[111] = sub_254EB3FC4();
  v11 = sub_254F28380();
  v1[112] = v11;
  sub_254EB2CAC(v11);
  v1[113] = v12;
  v14 = *(v13 + 64);
  v1[114] = sub_254EB3FC4();
  v15 = sub_254F28260();
  v1[115] = v15;
  sub_254EB2CAC(v15);
  v1[116] = v16;
  v18 = *(v17 + 64);
  v1[117] = sub_254EB3FC4();
  v19 = sub_254F29180();
  v1[118] = v19;
  sub_254EB2CAC(v19);
  v1[119] = v20;
  v22 = *(v21 + 64) + 15;
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v23 = sub_254F29140();
  v1[123] = v23;
  sub_254EB2CAC(v23);
  v1[124] = v24;
  v26 = *(v25 + 64) + 15;
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v27 = *MEMORY[0x277D85DE8];
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_254ECE200()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = v0[131];
  v2 = v0[106];
  v0[132] = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime25IntelligenceCommandScorer_signposter;
  sub_254F29160();
  sub_254F29120();
  v3 = sub_254F29160();
  sub_254F297A0();
  if (sub_254EB3E58())
  {
    v4 = v0[131];
    v5 = sub_254EB7DD8();
    *v5 = 0;
    sub_254F29130();
    sub_254EB6380();
    _os_signpost_emit_with_name_impl(v6, v7, v8, v9, v10, v11, v5, 2u);
    sub_254EB3C04();
  }

  v12 = v0[131];
  v13 = v0[130];
  v14 = v0[124];
  v15 = v0[123];

  v16 = *(v14 + 16);
  v0[133] = v16;
  v0[134] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v13, v12, v15);
  v17 = sub_254F291B0();
  v0[135] = v17;
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[136] = sub_254F291A0();
  v20 = *(v14 + 8);
  v0[137] = v20;
  v0[138] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v12, v15);
  if (qword_27F75EB70 != -1)
  {
    swift_once();
  }

  v21 = v0[105];
  v22 = v0[99];
  v23 = qword_27F7604D0;
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v22;
  v24[4] = v21;
  v25 = swift_allocObject();
  v0[139] = v25;
  *(v25 + 16) = &unk_254F2B270;
  *(v25 + 24) = v24;

  sub_254EC8BC0(&qword_27F75EE38, &qword_254F2B288);
  swift_asyncLet_begin();
  v26 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200928](v0 + 2, v0 + 87, sub_254ECE4A0, v0 + 82);
}

uint64_t sub_254ECE4A0()
{
  sub_254EB3BD8();
  v5 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_254ECE524()
{
  v96 = *MEMORY[0x277D85DE8];
  v1 = v0[87];
  if (v1 && *(v1 + 16))
  {
    v2 = v0[136];
    v3 = v0[132];
    v4 = v0[129];
    v5 = v0[106];
    v0[140] = *(v1 + 32);

    v6 = sub_254F29160();
    sub_254F29190();
    v7 = sub_254F29790();
    if (sub_254F29800())
    {
      v8 = v0[136];
      v9 = v0[122];
      v10 = v0[119];
      v11 = v0[118];

      sub_254F291C0();

      if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
      {
        v12 = "[Error] Interval already ended";
      }

      else
      {
        v22 = v0[122];
        sub_254EB6D40();
        v23();
        v12 = "";
      }

      v24 = v0[129];
      v25 = sub_254EB7DD8();
      *v25 = 0;
      v26 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v6, v7, v26, "IFCR.IntelligenceCommandScorer.scoreRelevanceOfContextValues.embedQuery", v12, v25, 2u);
      sub_254EB3C04();
    }

    v27 = v0[138];
    v28 = v0[137];
    v29 = v0[129];
    v30 = v0[123];
    v31 = v0[93];

    v28(v29, v30);
    v32 = *(v31 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v34 = v0[116];
      v35 = v0[113];
      v36 = v0[93];
      v95 = MEMORY[0x277D84F90];
      sub_254ECA624(0, v32, 0);
      v33 = v95;
      v37 = *(v34 + 16);
      v34 += 16;
      v38 = v36 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
      v92 = *(v34 + 56);
      v93 = v37;
      v91 = (v34 - 8);
      v87 = (v35 + 8);
      v88 = (v35 + 32);
      v90 = *MEMORY[0x277D1F0A0];
      while (1)
      {
        v39 = v0[110];
        v93(v0[117], v38, v0[115]);
        sub_254F28200();
        v40 = sub_254F28440();
        v41 = sub_254EB3FDC();
        v43 = sub_254EB2F2C(v41, v42, v40);
        v44 = v0[110];
        if (v43 == 1)
        {
          break;
        }

        v48 = v0[111];
        sub_254F28430();
        (*(*(v40 - 8) + 8))(v44, v40);
        v49 = sub_254F28420();
        v50 = sub_254EB3FDC();
        if (sub_254EB2F2C(v50, v51, v49) == 1)
        {
          goto LABEL_16;
        }

        v58 = *(v49 - 8);
        v59 = (*(v58 + 88))(v0[111], v49);
        v60 = v0[117];
        v61 = v0[115];
        if (v59 == v90)
        {
          v62 = v0[114];
          v63 = v0[112];
          v64 = v0[111];
          v89 = v0[117];
          (*(v58 + 96))(v64, v49);
          (*v88)(v62, v64, v63);
          v53 = sub_254F28370();
          v54 = v65;
          (*v87)(v62, v63);
          (*v91)(v89, v61);
          goto LABEL_18;
        }

        v66 = v0[111];
        (*v91)(v0[117], v0[115]);
        (*(v58 + 8))(v66, v49);
LABEL_17:
        v53 = 0;
        v54 = 0;
LABEL_18:
        v56 = *(v95 + 16);
        v55 = *(v95 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_254ECA624((v55 > 1), v56 + 1, 1);
        }

        *(v95 + 16) = v56 + 1;
        v57 = v95 + 16 * v56;
        *(v57 + 32) = v53;
        *(v57 + 40) = v54;
        v38 += v92;
        if (!--v32)
        {
          goto LABEL_25;
        }
      }

      sub_254EB2B68(v0[110], &qword_27F75EEC0, &unk_254F2B4A0);
      sub_254F28420();
      v45 = sub_254EB3FDC();
      sub_254EB2F04(v45, v46, 1, v47);
LABEL_16:
      v52 = v0[111];
      (*v91)(v0[117], v0[115]);
      sub_254EB2B68(v52, &qword_27F75EE30, &qword_254F2B260);
      goto LABEL_17;
    }

LABEL_25:
    v0[141] = v33;
    v67 = v0[132];
    v68 = v0[128];
    v69 = v0[106];
    sub_254F29160();
    sub_254F29120();
    v70 = sub_254F29160();
    v71 = sub_254F297A0();
    if (sub_254F29800())
    {
      v72 = v0[128];
      v73 = sub_254EB7DD8();
      *v73 = 0;
      v74 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v70, v71, v74, "IFCR.IntelligenceCommandScorer.scoreRelevanceOfContextValues.embedQuery", "", v73, 2u);
      sub_254EB3C04();
    }

    v94 = v0[138];
    v75 = v0[137];
    v76 = v0[135];
    v77 = v0[134];
    v78 = v0[133];
    v79 = v0[130];
    v80 = v0[128];
    v81 = v0[123];

    v78(v79, v80, v81);
    v82 = *(v76 + 48);
    v83 = *(v76 + 52);
    swift_allocObject();
    sub_254EB3FDC();
    v0[142] = sub_254F291A0();
    v75(v80, v81);
    if (qword_281427150 != -1)
    {
      swift_once();
    }

    v0[143] = sub_254EB61A0();
    v84 = swift_task_alloc();
    v0[144] = v84;
    *v84 = v0;
    v84[1] = sub_254ECEE20;
    v85 = *MEMORY[0x277D85DE8];

    return sub_254EEA110();
  }

  else
  {
    v13 = v0[109];
    sub_254F284C0();
    v14 = sub_254F291D0();
    v15 = sub_254F29700();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_254EB7DD8();
      *v16 = 0;
      _os_log_impl(&dword_254EAE000, v14, v15, "Couldn't get query embedding", v16, 2u);
      sub_254EB3C04();
    }

    v17 = v0[109];
    v18 = v0[108];
    v19 = v0[107];
    v20 = v0[93];

    (*(v18 + 8))(v17, v19);
    v0[147] = sub_254EC9CBC(*(v20 + 16), 0.0);
    v21 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200920](v0 + 2, v0 + 87, sub_254ECF798, v0 + 88);
  }
}

uint64_t sub_254ECEE20()
{
  sub_254EB3A3C();
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1152);
  v2 = *(*v0 + 1144);
  v3 = *(*v0 + 1128);
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;
  *(v7 + 1160) = v6;

  v8 = *MEMORY[0x277D85DE8];
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254ECEF80()
{
  v75 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 848) + *(v0 + 1056);
  v4 = sub_254F29160();
  sub_254F29190();
  sub_254F29790();
  if (sub_254EB3E58())
  {
    v5 = *(v0 + 1136);
    v6 = *(v0 + 968);
    v7 = *(v0 + 952);
    v8 = *(v0 + 944);

    sub_254F291C0();

    if ((*(v7 + 88))(v6, v8) == *MEMORY[0x277D85B00])
    {
      v9 = "[Error] Interval already ended";
    }

    else
    {
      v10 = *(v0 + 968);
      sub_254EB6D40();
      v11();
      v9 = "";
    }

    v12 = *(v0 + 1016);
    v13 = sub_254EB7DD8();
    *v13 = 0;
    sub_254F29130();
    sub_254EB6380();
    _os_signpost_emit_with_name_impl(v14, v15, v16, v17, v18, v9, v13, 2u);
    sub_254EB3C04();
  }

  v19 = *(v0 + 1104);
  v20 = *(v0 + 1096);
  v21 = *(v0 + 1056);
  v22 = *(v0 + 1016);
  v23 = *(v0 + 1008);
  v24 = *(v0 + 984);
  v25 = *(v0 + 848);

  v20(v22, v24);
  sub_254F29160();
  sub_254F29120();
  v26 = sub_254F29160();
  sub_254F297A0();
  if (sub_254EB3E58())
  {
    v27 = *(v0 + 1008);
    v28 = sub_254EB7DD8();
    *v28 = 0;
    sub_254F29130();
    sub_254EB6380();
    _os_signpost_emit_with_name_impl(v29, v30, v31, v32, v33, v34, v28, 2u);
    sub_254EB3C04();
  }

  v72 = *(v0 + 1160);
  v35 = *(v0 + 1104);
  v36 = *(v0 + 1096);
  v37 = *(v0 + 1080);
  v38 = *(v0 + 1072);
  v39 = *(v0 + 1064);
  v40 = *(v0 + 1040);
  v41 = *(v0 + 1008);
  v42 = *(v0 + 984);

  v39(v40, v41, v42);
  v43 = *(v37 + 48);
  v44 = *(v37 + 52);
  swift_allocObject();
  sub_254F291A0();
  v36(v41, v42);
  v45 = *(v72 + 16);
  v46 = *(v0 + 1160);
  v47 = *(v0 + 1120);
  if (v45)
  {
    v73 = (v0 + 1184);
    v48 = (v0 + 1188);
    v49 = (v0 + 1192);
    v74 = MEMORY[0x277D84F90];
    sub_254ECA604(0, v45, 0);
    v50 = v74;
    v51 = (v46 + 32);
    do
    {
      v53 = *v51++;
      v52 = v53;
      v54 = 0.0;
      if (v53)
      {
        v55 = *(v52 + 16);
        if (v55 >= 2 && v55 == *(v47 + 16))
        {
          *v73 = NAN;

          vDSP_svesq((v52 + 32), 1, v73, v55);
          v56 = *v73;
          v57 = *(v47 + 16);
          *v48 = NAN;
          vDSP_svesq((v47 + 32), 1, (v0 + 1188), v57);
          v58 = *(v52 + 16);
          if (v58 != *(v47 + 16))
          {
            __break(1u);
          }

          v59 = sqrtf(*v48);
          *v49 = NAN;
          v60 = sqrtf(v56);
          vDSP_dotpr((v52 + 32), 1, (v47 + 32), 1, (v0 + 1192), v58);
          v61 = *v49;

          v62 = v61 / ((v60 * v59) + 0.00000011921);
          if (v62 <= 1.0)
          {
            v63 = v61 / ((v60 * v59) + 0.00000011921);
          }

          else
          {
            v63 = 1.0;
          }

          if (v62 > 0.0)
          {
            v54 = v63;
          }

          else
          {
            v54 = 0.0;
          }
        }
      }

      v65 = *(v74 + 16);
      v64 = *(v74 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_254ECA604((v64 > 1), v65 + 1, 1);
      }

      *(v74 + 16) = v65 + 1;
      *(v74 + 4 * v65 + 32) = v54;
      --v45;
    }

    while (v45);
    v66 = *(v0 + 1160);
    v67 = *(v0 + 1120);
  }

  else
  {
    v68 = *(v0 + 1160);

    v50 = MEMORY[0x277D84F90];
  }

  *(v0 + 1168) = v50;
  v69 = *(v0 + 1136);
  sub_254ECFD28(*(v0 + 848), "IFCR.IntelligenceCommandScorer.scoreRelevanceOfContextValues.scoreEmbeddings", 76, 2);

  v70 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_254ECF420, v0 + 800);
}

uint64_t sub_254ECF420()
{
  sub_254EB3BD8();
  v5 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_254ECF4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_254EC0020();
  v32 = *MEMORY[0x277D85DE8];
  v21 = *(v20 + 1168);
  sub_254EB2CF0();

  sub_254EB3BF4();
  v22 = *MEMORY[0x277D85DE8];
  sub_254EB3A64();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, v32, a18, a19, a20);
}

uint64_t sub_254ECF5B4()
{
  sub_254EB3BD8();
  v5 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_254ECF638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_254EC0020();
  v48 = *MEMORY[0x277D85DE8];
  v21 = v20[139];
  v22 = v20[136];
  v23 = v20[131];
  v24 = v20[130];
  v25 = v20[129];
  v26 = v20[128];
  v27 = v20[127];
  v28 = v20[126];
  v29 = v20[125];
  v30 = v20[122];
  v41 = v20[121];
  v42 = v20[120];
  v43 = v20[117];
  v44 = v20[114];
  v45 = v20[111];
  v46 = v20[110];
  v47 = v20[109];

  sub_254EB3BF4();
  v31 = *MEMORY[0x277D85DE8];
  sub_254EB3A64();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, v45, v46, v47, v48, a18, a19, a20);
}

uint64_t sub_254ECF798()
{
  sub_254EB3BD8();
  v5 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_254ECF81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_254EC0020();
  v32 = *MEMORY[0x277D85DE8];
  v21 = *(v20 + 1176);
  sub_254EB2CF0();

  sub_254EB3BF4();
  v22 = *MEMORY[0x277D85DE8];
  sub_254EB3A64();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, v32, a18, a19, a20);
}

uint64_t sub_254ECF92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_254ECF950, 0, 0);
}

uint64_t sub_254ECF950()
{
  sub_254EB3A3C();
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_254F29490();
  v5 = v4;
  v0[5] = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_254ECFA00;
  v7 = v0[2];

  return sub_254EC7E5C(v3, v5);
}

uint64_t sub_254ECFA00()
{
  sub_254EB3A3C();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 48);
  v6 = *v1;
  sub_254EB2CE0();
  *v7 = v6;

  v8 = *(v4 + 40);
  if (v0)
  {

    v3 = 0;
  }

  else
  {
  }

  v9 = *(v6 + 8);

  return v9(v3);
}

uint64_t sub_254ECFB34(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_254ECFC20;

  return v6();
}

uint64_t sub_254ECFC20()
{
  sub_254EB3BD8();
  v2 = v1;
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;
  sub_254EB2CE0();
  *v6 = v5;

  *v4 = v2;
  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_254ECFD28(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_254F29180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_254F29140();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_254F29160();
  sub_254F29190();
  v22 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_254F291C0();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x259C2EB80](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254ECFFD0()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime25IntelligenceCommandScorer_signposter;
  v2 = sub_254F29170();
  sub_254EB2D54(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for IntelligenceCommandScorer()
{
  result = qword_27F75EE20;
  if (!qword_27F75EE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED00B4()
{
  result = sub_254F29170();
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

uint64_t sub_254ED0144()
{
  sub_254EB3A3C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_254ED01E8;

  return sub_254ECF92C(v2, v3, v4);
}

uint64_t sub_254ED01E8()
{
  sub_254EB3BD8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_254ED02D8()
{
  sub_254EB3A3C();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_254ED038C;

  return sub_254ECFB34(v3, v5);
}

uint64_t sub_254ED038C()
{
  sub_254EB3BD8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_254EB2CE0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void *sub_254ED0474()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t sub_254ED04A4()
{
  sub_254ED0474();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for OnScreenContentAppEntityProvider()
{
  result = qword_2814262A8;
  if (!qword_2814262A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED0570(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for OnScreenContentAppEntityProvider();
  sub_254EB2D90(v3);
  v5 = *(v4 + 64);
  v2[18] = sub_254EB3FC4();
  v6 = sub_254F291E0();
  v2[19] = v6;
  sub_254EB2CAC(v6);
  v2[20] = v7;
  v9 = *(v8 + 64);
  v2[21] = sub_254EB3FC4();
  v10 = sub_254EC8BC0(&qword_27F75EE40, &qword_254F2B488);
  v2[22] = v10;
  sub_254EB2D90(v10);
  v12 = *(v11 + 64);
  v2[23] = sub_254EB3C44();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v13 = sub_254F28120();
  v2[26] = v13;
  sub_254EB2CAC(v13);
  v2[27] = v14;
  v16 = *(v15 + 64);
  v2[28] = sub_254EB3FC4();
  v17 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v17);
  v19 = *(v18 + 64);
  v2[29] = sub_254EB3FC4();
  v20 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v20);
  v22 = *(v21 + 64);
  v2[30] = sub_254EB3C44();
  v2[31] = swift_task_alloc();
  v23 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v23);
  v25 = *(v24 + 64);
  v2[32] = sub_254EB3FC4();
  v26 = sub_254F28EE0();
  v2[33] = v26;
  sub_254EB2CAC(v26);
  v2[34] = v27;
  v29 = *(v28 + 64);
  v2[35] = sub_254EB3FC4();
  v30 = sub_254F281F0();
  v2[36] = v30;
  sub_254EB2CAC(v30);
  v2[37] = v31;
  v33 = *(v32 + 64);
  v2[38] = sub_254EB3FC4();
  v34 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  sub_254EB2D90(v34);
  v36 = *(v35 + 64);
  v2[39] = sub_254EB3FC4();
  v37 = sub_254F29290();
  v2[40] = v37;
  sub_254EB2CAC(v37);
  v2[41] = v38;
  v40 = *(v39 + 64);
  v2[42] = sub_254EB3C44();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v41 = sub_254F28750();
  v2[46] = v41;
  sub_254EB2CAC(v41);
  v2[47] = v42;
  v44 = *(v43 + 64);
  v2[48] = sub_254EB3FC4();
  v45 = sub_254F28C50();
  v2[49] = v45;
  sub_254EB2CAC(v45);
  v2[50] = v46;
  v48 = *(v47 + 64);
  v2[51] = sub_254EB3FC4();
  v49 = type metadata accessor for ContextValueElement();
  v2[52] = v49;
  sub_254EB2CAC(v49);
  v2[53] = v50;
  v52 = *(v51 + 64);
  v2[54] = sub_254EB3C44();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v53 = sub_254F289F0();
  v2[61] = v53;
  sub_254EB2CAC(v53);
  v2[62] = v54;
  v56 = *(v55 + 64);
  v2[63] = sub_254EB3FC4();
  v57 = sub_254EC8BC0(&qword_27F75EE58, &qword_254F2B4B0);
  sub_254EB2D90(v57);
  v59 = *(v58 + 64);
  v2[64] = sub_254EB3FC4();
  v60 = sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8);
  v2[65] = v60;
  sub_254EB2D90(v60);
  v62 = *(v61 + 64);
  v2[66] = sub_254EB3FC4();

  return MEMORY[0x2822009F8](sub_254ED0A6C, 0, 0);
}

void sub_254ED0A6C()
{
  v296 = v0;
  v1 = v0;
  sub_254ED1F44(v0[16], (v0 + 12));
  v2 = v0[65];
  v3 = v0[64];
  v276 = v0;
  if (!v0[15])
  {
    sub_254EB306C((v0 + 12), &qword_27F75EE68, &qword_254F2B4C0);
    sub_254EB2F04(v3, 1, 1, v2);
    goto LABEL_24;
  }

  v4 = swift_dynamicCast();
  sub_254EB2F04(v3, v4 ^ 1u, 1, v2);
  if (sub_254EB2F2C(v3, 1, v2) == 1)
  {
LABEL_24:
    v76 = v0[21];
    v78 = v0[17];
    v77 = v0[18];
    sub_254EB306C(v0[64], &qword_27F75EE58, &qword_254F2B4B0);
    sub_254F284C0();
    sub_254ED2140(v78, v77, type metadata accessor for OnScreenContentAppEntityProvider);
    v79 = sub_254F291D0();
    v80 = sub_254F296F0();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v0[20];
    v83 = v0[21];
    v84 = v1[18];
    v85 = v1[19];
    if (v81)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v295 = v87;
      *v86 = 136315138;
      v88 = sub_254F28070();
      v90 = v89;
      sub_254EB3C1C();
      v91 = v88;
      v1 = v276;
      v92 = sub_254EC2D74(v91, v90, &v295);

      *(v86 + 4) = v92;
      _os_log_impl(&dword_254EAE000, v79, v80, "[%s] unable to get source data", v86, 0xCu);
      sub_254EB2BBC(v87);
      MEMORY[0x259C2EB80](v87, -1, -1);
      MEMORY[0x259C2EB80](v86, -1, -1);
    }

    else
    {

      sub_254EB3C1C();
    }

    (*(v82 + 8))(v83, v85);
    v289 = MEMORY[0x277D84F90];
    goto LABEL_81;
  }

  v5 = v0[66];
  v6 = v0[65];
  sub_254ED20D4(v0[64], v5, &qword_27F75EE60, &qword_254F2B4B8);
  v7 = *(v5 + *(v6 + 48));
  v267 = *MEMORY[0x277D729F8];
  v264 = *(v7 + 16);
  if (v264)
  {
    v8 = 0;
    v9 = v0[62];
    v233 = v0[52];
    v235 = v0[53];
    v10 = v0[50];
    v11 = v0[47];
    v12 = v0[41];
    v13 = v0[37];
    v14 = v0[34];
    v15 = *(v9 + 16);
    v9 += 16;
    v259 = v15;
    v256 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v254 = *(v9 + 56);
    v16 = (v11 + 88);
    v17 = *MEMORY[0x277D1D2E8];
    v292 = (v11 + 8);
    v288 = (v11 + 96);
    v285 = (v10 + 32);
    v231 = (v14 + 8);
    v232 = (v12 + 32);
    v229 = (v13 + 16);
    v230 = (v12 + 16);
    v227 = (v12 + 8);
    v228 = (v13 + 8);
    v281 = (v10 + 8);
    v251 = (v9 - 8);
    v270 = MEMORY[0x277D84F90];
    v277 = (v11 + 88);
    while (1)
    {
      v272 = v8;
      v259(v1[63], v256 + v8 * v254, v1[61]);
      v18 = sub_254F289D0();
      v19 = 0;
      v20 = *(v18 + 16);
      while (v20 != v19)
      {
        v21 = v1[48];
        v22 = v1[46];
        v23 = sub_254F28CE0();
        sub_254EB2CAC(v23);
        v26 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v25 + 72) * v19;
        sub_254F28CD0();
        if ((*v16)(v21, v22) == v17)
        {
          v27 = v18;
          v28 = v1[51];
          v30 = v1[48];
          v29 = v1[49];
          v31 = v1[46];
          v32 = v1;
          v35 = v1 + 39;
          v34 = v1[39];
          v33 = v35[1];
          (*v288)(v30, v31);
          (*v285)(v28, v30, v29);
          sub_254F28C10();
          if (sub_254EB2F2C(v34, 1, v33) == 1)
          {
            v36 = v32[39];
            (*v281)(v32[51], v32[49]);
            sub_254EB306C(v36, &qword_27F75EE50, &unk_254F2C4F0);
            v18 = v27;
            v16 = v277;
            v1 = v32;
            goto LABEL_11;
          }

          v37 = v32[63];
          v38 = v32[38];
          v39 = v32[35];
          v247 = v32[33];
          (*v232)(v32[45], v32[39], v32[40]);
          sub_254F289B0();
          sub_254F28E60();
          sub_254F28EA0();
          sub_254F28E30();
          v32[7] = v40;
          v32[8] = v41;
          v32[9] = v42;
          v32[10] = v43;
          *(v32 + 88) = 0;
          sub_254F28EC0();
          v32[2] = v44;
          v32[3] = v45;
          v32[4] = v46;
          v32[5] = v47;
          *(v32 + 48) = 0;
          sub_254F28E20();
          sub_254F28180();
          sub_254F28ED0();
          sub_254F281E0();
          sub_254F28E70();
          sub_254F28170();
          (*v231)(v39, v247);
          if ((sub_254F28130() & 1) == 0)
          {
            v48 = v32[51];
            sub_254F28C00();
          }

          v49 = v32[38];
          sub_254F28140();
          if ((sub_254F281D0() & 1) == 0)
          {
            v50 = v32[51];
            sub_254F28C30();
          }

          v243 = v32[59];
          v248 = v32[63];
          v51 = v32[40];
          v52 = v32[38];
          v238 = v32[45];
          v241 = v32[36];
          v53 = v32[31];
          v54 = v32[32];
          v55 = v32[29];
          sub_254F281E0();
          v56 = sub_254F28440();
          sub_254EB2F04(v54, 1, 1, v56);
          v57 = swift_allocBox();
          (*v230)(v58, v238, v51);
          *v53 = v57;
          v59 = sub_254F29300();
          sub_254EB2D80(v59);
          (*(v60 + 104))(v53, v267, v59);
          sub_254EB2F04(v53, 0, 1, v59);
          (*v229)(v55, v52, v241);
          sub_254EB2F04(v55, 0, 1, v241);
          sub_254F280D0();
          v61 = v243 + *(v233 + 20);
          sub_254F289B0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = *(v270 + 16);
            sub_254EF0038();
            v270 = v69;
          }

          v62 = *(v270 + 16);
          if (v62 >= *(v270 + 24) >> 1)
          {
            sub_254EF0038();
            v270 = v70;
          }

          ++v19;
          v246 = v276[59];
          v63 = v276[51];
          v64 = v276[49];
          v65 = v276[45];
          v66 = v276[40];
          (*v228)(v276[38], v276[36]);
          v67 = v65;
          v1 = v276;
          (*v227)(v67, v66);
          (*v281)(v63, v64);
          *(v270 + 16) = v62 + 1;
          sub_254ED1FB4(v246, v270 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v62);
          v18 = v27;
          v16 = v277;
        }

        else
        {
          (*v292)(v1[48], v1[46]);
LABEL_11:
          ++v19;
        }
      }

      v71 = v1[63];
      v72 = v1[61];

      v8 = v272 + 1;
      v73 = *v251;
      v74 = sub_254EB6930();
      v75(v74);
      if (v272 + 1 == v264)
      {
        goto LABEL_29;
      }
    }
  }

  v270 = MEMORY[0x277D84F90];
LABEL_29:
  v93 = v1;
  v94 = 0;
  v293 = v93[53];
  v95 = v93[41];
  v286 = (v95 + 16);
  v257 = v95;
  v262 = (v95 + 8);
  v96 = MEMORY[0x277D84F98];
  v97 = v270;
  v98 = *(v270 + 16);
  v290 = v98;
  while (v98 != v94)
  {
    if (v94 >= *(v97 + 16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      return;
    }

    v99 = v276[60];
    v100 = v276[30];
    sub_254EB7DF0();
    v102 = *(v101 + 72);
    sub_254EB6B9C();
    sub_254ED2140(v103, v99, v104);
    sub_254F280F0();
    v105 = sub_254F29300();
    v106 = sub_254EB2F2C(v100, 1, v105);
    v107 = v276[30];
    if (v106 == 1)
    {
      sub_254EB306C(v107, &qword_27F75EE48, &unk_254F2B550);
      v108 = v276;
    }

    else
    {
      v109 = *(v105 - 8);
      if ((*(v109 + 88))(v107, v105) == v267)
      {
        v110 = v276[44];
        v111 = v276[40];
        v112 = v96;
        v113 = v276[30];
        (*(v109 + 96))(v113, v105);
        v114 = *v113;
        v115 = v112;
        v116 = swift_projectBox();
        v117 = *v286;
        (*v286)(v110, v116, v111);

        if (*(v115 + 16) && (v118 = v276[44], sub_254F0585C(), (v120 & 1) != 0))
        {
          v121 = v276[60];
          v123 = v276[57];
          v122 = v276[58];
          v124 = v276[56];
          v278 = v276[44];
          v282 = v276[55];
          v273 = v276[43];
          v125 = v276[40];
          sub_254ED2140(*(v115 + 56) + v119 * v102, v123, type metadata accessor for ContextValueElement);
          sub_254ED1FB4(v123, v122);
          sub_254F18050(v121, v124);
          sub_254EB2D68();
          sub_254ED2018(v122, v126);
          sub_254ED1FB4(v124, v122);
          v117(v273, v278, v125);
          sub_254ED2140(v122, v282, type metadata accessor for ContextValueElement);
          swift_isUniquelyReferenced_nonNull_native();
          v295 = v115;
          sub_254F0585C();
          sub_254EB5130(v127, v128);
          if (v130)
          {
            goto LABEL_96;
          }

          v131 = v129;
          sub_254EC8BC0(&qword_27F75EE70, &qword_254F2B4C8);
          v96 = v295;
          if (sub_254EB638C())
          {
            v132 = v276[43];
            sub_254F0585C();
            v97 = v270;
            if ((v131 & 1) != (v133 & 1))
            {
              goto LABEL_84;
            }
          }

          else
          {
            v97 = v270;
          }

          v157 = v276[55];
          if (v131)
          {
            v158 = sub_254EB6D50();
            sub_254ED2070(v158, v159);
          }

          else
          {
            v160 = v276[43];
            v161 = sub_254EB3FE8(v276, v227, v228, v229, v230, v231, v232, v233, v235, v238, v241, v243, v246, v251, v254, v257);
            (v117)(v161);
            v162 = sub_254EB6D50();
            sub_254ED1FB4(v162, v163);
            v164 = *(v295 + 16);
            v130 = __OFADD__(v164, 1);
            v165 = v164 + 1;
            if (v130)
            {
              goto LABEL_97;
            }

            *(v295 + 16) = v165;
          }

          v108 = v276;
          v166 = v276[58];
          v167 = v276[44];
          v168 = v276[40];
          v169 = *v262;
          (*v262)(v276[43], v168);
          sub_254EB2D68();
          sub_254ED2018(v166, v170);
          (v169)(v167, v168);
        }

        else
        {
          v134 = v276[60];
          v135 = v276[54];
          v117(v276[42], v276[44], v276[40]);
          sub_254EB6B9C();
          v136 = sub_254EB6930();
          sub_254ED2140(v136, v137, v138);
          swift_isUniquelyReferenced_nonNull_native();
          v295 = v115;
          sub_254F0585C();
          sub_254EB5130(v139, v140);
          if (v130)
          {
            goto LABEL_94;
          }

          v142 = v141;
          sub_254EC8BC0(&qword_27F75EE70, &qword_254F2B4C8);
          v96 = v295;
          if (sub_254EB638C())
          {
            v143 = v276[42];
            sub_254F0585C();
            if ((v142 & 1) != (v144 & 1))
            {
LABEL_84:
              v226 = v276[40];

              sub_254F29B50();
              return;
            }
          }

          v145 = v276[54];
          if (v142)
          {
            v146 = sub_254EB6D50();
            sub_254ED2070(v146, v147);
          }

          else
          {
            v148 = v276[42];
            v149 = sub_254EB3FE8(v276, v227, v228, v229, v230, v231, v232, v233, v235, v238, v241, v243, v246, v251, v254, v257);
            (v117)(v149);
            v150 = sub_254EB6D50();
            sub_254ED1FB4(v150, v151);
            v152 = *(v295 + 16);
            v130 = __OFADD__(v152, 1);
            v153 = v152 + 1;
            if (v130)
            {
              goto LABEL_95;
            }

            *(v295 + 16) = v153;
          }

          v108 = v276;
          v154 = v276[44];
          v155 = *v262;
          (*v262)(v276[42], v276[40]);
          v156 = sub_254EB6930();
          v155(v156);
        }

        v98 = v290;
      }

      else
      {
        v108 = v276;
        (*(v109 + 8))(v276[30], v105);
      }
    }

    v171 = v108[60];
    sub_254EB2D68();
    sub_254ED2018(v172, v173);
    ++v94;
  }

  v174 = *(v96 + 16);
  if (v174)
  {
    v1 = v276;
    v175 = v276[41];
    v176 = v276[27];
    v252 = v276[22];
    v295 = MEMORY[0x277D84F90];
    sub_254ECA644(0, v174, 0);
    v177 = v295;
    v180 = sub_254ED1F04(v96);
    v181 = 0;
    v283 = v96 + 64;
    v244 = (v176 + 16);
    v249 = (v175 + 32);
    v239 = v174;
    v236 = v96 + 72;
    if ((v180 & 0x8000000000000000) == 0)
    {
      while (v180 < 1 << *(v96 + 32))
      {
        v182 = v180 >> 6;
        if ((*(v283 + 8 * (v180 >> 6)) & (1 << v180)) == 0)
        {
          goto LABEL_89;
        }

        if (*(v96 + 36) != v178)
        {
          goto LABEL_90;
        }

        v268 = v178;
        v260 = v179;
        v265 = v181;
        v291 = v177;
        v183 = *(v252 + 48);
        v184 = v96;
        v185 = v1[40];
        v279 = v1[28];
        v186 = v1[25];
        v274 = v1[26];
        v188 = v1[23];
        v187 = v1[24];
        (*(v257 + 16))(v186, *(v184 + 48) + *(v257 + 72) * v180, v185);
        v189 = *(v184 + 56) + *(v293 + 72) * v180;
        sub_254EB6B9C();
        sub_254ED2140(v190, v186 + v183, v191);
        v192 = *v249;
        v193 = sub_254EB6930();
        v194(v193);
        v195 = v186 + v183;
        v177 = v291;
        sub_254ED1FB4(v195, v187 + *(v252 + 48));
        sub_254ED20D4(v187, v188, &qword_27F75EE40, &qword_254F2B488);
        v196 = *(v252 + 48);
        (*v244)(v279, v188 + v196, v274);
        sub_254EB2D68();
        sub_254ED2018(v188 + v196, v197);
        (*(v257 + 8))(v188, v185);
        v295 = v291;
        v199 = *(v291 + 16);
        v198 = *(v291 + 24);
        if (v199 >= v198 >> 1)
        {
          sub_254ECA644(v198 > 1, v199 + 1, 1);
          v177 = v295;
        }

        v1 = v276;
        v200 = v276[28];
        v201 = v276[26];
        *(v177 + 16) = v199 + 1;
        sub_254EB7DF0();
        (*(v203 + 32))(v202 + *(v203 + 72) * v199);
        v204 = 1 << *(v184 + 32);
        if (v180 >= v204)
        {
          goto LABEL_91;
        }

        v205 = *(v283 + 8 * v182);
        if ((v205 & (1 << v180)) == 0)
        {
          goto LABEL_92;
        }

        v96 = v184;
        if (*(v184 + 36) != v268)
        {
          goto LABEL_93;
        }

        v206 = v205 & (-2 << (v180 & 0x3F));
        if (v206)
        {
          v204 = __clz(__rbit64(v206)) | v180 & 0x7FFFFFFFFFFFFFC0;
          v207 = v239;
          v208 = v265;
        }

        else
        {
          v209 = v182 << 6;
          v207 = v239;
          v210 = (v236 + 8 * v182);
          v211 = v182 + 1;
          v208 = v265;
          while (v211 < (v204 + 63) >> 6)
          {
            v213 = *v210++;
            v212 = v213;
            v209 += 64;
            ++v211;
            if (v213)
            {
              sub_254ED2134(v180, v268, v260 & 1);
              v204 = __clz(__rbit64(v212)) + v209;
              goto LABEL_75;
            }
          }

          sub_254ED2134(v180, v268, v260 & 1);
        }

LABEL_75:
        v181 = v208 + 1;
        if (v181 == v207)
        {

          goto LABEL_80;
        }

        v179 = 0;
        v178 = *(v96 + 36);
        v180 = v204;
        if (v204 < 0)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_88;
  }

  v177 = MEMORY[0x277D84F90];
  v1 = v276;
LABEL_80:
  v289 = v177;
  sub_254EB306C(v1[66], &qword_27F75EE60, &qword_254F2B4B8);
LABEL_81:
  v214 = v1[66];
  v216 = v1[63];
  v215 = v1[64];
  v218 = v1[59];
  v217 = v1[60];
  v219 = v1;
  v220 = v1[58];
  v221 = v219[56];
  v222 = v219[57];
  v224 = v219[54];
  v223 = v219[55];
  v234 = v219[51];
  v237 = v219[48];
  v240 = v219[45];
  v242 = v219[44];
  v245 = v219[43];
  v250 = v219[42];
  v253 = v219[39];
  v255 = v219[38];
  v258 = v219[35];
  v261 = v219[32];
  v263 = v219[31];
  v266 = v219[30];
  v269 = v219[29];
  v271 = v219[28];
  v275 = v219[25];
  v280 = v219[24];
  v284 = v219[23];
  v287 = v219[21];
  v294 = v219[18];

  v225 = v219[1];

  v225(v289);
}

uint64_t sub_254ED1D74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254ED0570(a1);
}

uint64_t sub_254ED1E08(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_254ED1F04(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_254F298B0();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_254ED1F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE68, &qword_254F2B4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED1FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextValueElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED2018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_254EB2D80(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_254ED2070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextValueElement();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED20D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254EC8BC0(a3, a4);
  sub_254EB2D80(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_254ED2134(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_254ED2140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_254EB2D80(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for OnScreenContentDocumentImageProvider()
{
  result = qword_281426218;
  if (!qword_281426218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED2214(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_254F291E0();
  v1[20] = v2;
  sub_254EB2CAC(v2);
  v1[21] = v3;
  v5 = *(v4 + 64);
  v1[22] = sub_254EB3FC4();
  v6 = *(*(sub_254EC8BC0(&qword_27F75EE78, &unk_254F2B528) - 8) + 64);
  v1[23] = sub_254EB3FC4();
  v7 = sub_254F28120();
  v1[24] = v7;
  sub_254EB2CAC(v7);
  v1[25] = v8;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = sub_254F289A0();
  v1[28] = v11;
  sub_254EB2CAC(v11);
  v1[29] = v12;
  v14 = *(v13 + 64);
  v1[30] = sub_254EB3FC4();
  v15 = sub_254F28E10();
  v1[31] = v15;
  sub_254EB2CAC(v15);
  v1[32] = v16;
  v18 = *(v17 + 64);
  v1[33] = sub_254EB3FC4();
  v19 = sub_254F28F20();
  v1[34] = v19;
  sub_254EB2CAC(v19);
  v1[35] = v20;
  v22 = *(v21 + 64);
  v1[36] = sub_254EB3FC4();
  v23 = *(*(sub_254EC8BC0(&qword_27F75EE58, &qword_254F2B4B0) - 8) + 64);
  v1[37] = sub_254EB3FC4();
  v24 = sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8);
  v1[38] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ED24B0, 0, 0);
}

uint64_t sub_254ED24B0()
{
  v54 = v0;
  sub_254EB2F54(v0[19], (v0 + 14), &qword_27F75EE68, &qword_254F2B4C0);
  v1 = v0[37];
  v2 = v0[38];
  if (!v0[17])
  {
    sub_254EB300C((v0 + 14), &qword_27F75EE68, &qword_254F2B4C0);
    sub_254EB2F04(v1, 1, 1, v2);
    goto LABEL_6;
  }

  v3 = v0[37];
  v4 = v0[38];
  v5 = swift_dynamicCast();
  sub_254EB2F04(v1, v5 ^ 1u, 1, v2);
  if (sub_254EB2F2C(v1, 1, v2) == 1)
  {
LABEL_6:
    v14 = v0[37];
    v12 = &qword_27F75EE58;
    v13 = &qword_254F2B4B0;
    goto LABEL_7;
  }

  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];
  v9 = v0[34];
  sub_254ED3594(v0[37], v7);
  sub_254EB2F54(v7, v6, &qword_27F75EE60, &qword_254F2B4B8);
  v10 = *(v6 + *(v8 + 48));

  if (sub_254EB2F2C(v6, 1, v9) == 1)
  {
    v11 = v0[39];
    sub_254EB300C(v0[40], &qword_27F75EE60, &qword_254F2B4B8);
    v12 = &unk_27F75EE88;
    v13 = &unk_254F2B540;
    v14 = v11;
LABEL_7:
    sub_254EB300C(v14, v12, v13);
    v15 = v0[22];
    sub_254F284C0();
    v16 = sub_254F291D0();
    v17 = sub_254F296F0();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[21];
    v19 = v0[22];
    v21 = v0[20];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v22 = 136315138;
      v0[18] = type metadata accessor for OnScreenContentDocumentImageProvider();
      sub_254EC8BC0(&qword_27F75EE80, &qword_254F2B538);
      v24 = sub_254F29480();
      v26 = sub_254EC2D74(v24, v25, &v53);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_254EAE000, v16, v17, "unable to get source data for %s", v22, 0xCu);
      sub_254EB2BBC(v23);
      MEMORY[0x259C2EB80](v23, -1, -1);
      MEMORY[0x259C2EB80](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    v28 = v0[39];
    v27 = v0[40];
    v30 = v0[36];
    v29 = v0[37];
    v31 = v0[33];
    v32 = v0[30];
    v34 = v0[26];
    v33 = v0[27];
    v36 = v0[22];
    v35 = v0[23];

    v37 = v0[1];
    v38 = MEMORY[0x277D84F90];

    return v37(v38);
  }

  v52 = v0[33];
  (*(v0[35] + 32))(v0[36], v0[39], v0[34]);
  v40 = type metadata accessor for UserSessionManager();
  swift_allocObject();
  v41 = sub_254EC104C();
  v0[12] = v40;
  v0[13] = &off_286726428;
  v0[9] = v41;
  type metadata accessor for UIContextRetriever();
  inited = swift_initStackObject();
  v0[41] = inited;
  v43 = v0[12];
  v44 = sub_254EC10A4((v0 + 9), v43);
  v45 = *(v43 - 8);
  v46 = *(v45 + 64);
  v47 = sub_254EB3FC4();
  (*(v45 + 16))(v47, v44, v43);
  v48 = *v47;
  inited[5] = v40;
  inited[6] = &off_286726428;
  inited[2] = v48;
  sub_254EB2BBC(v0 + 9);

  v49 = sub_254F28F10();
  v0[42] = v49;
  sub_254F28E00();
  v50 = swift_task_alloc();
  v0[43] = v50;
  *v50 = v0;
  v50[1] = sub_254ED2980;
  v51 = v0[33];

  return sub_254EFAB5C(v49, v51);
}

uint64_t sub_254ED2980(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  v6 = *(*v1 + 248);
  v8 = *v1;
  *(*v1 + 352) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_254ED2AFC, 0, 0);
}

void sub_254ED2AFC()
{
  v1 = 0;
  v2 = v0[44];
  v3 = v0[29];
  v4 = *(v2 + 16);
  v35 = v0[25];
  v36 = (v35 + 32);
  v37 = MEMORY[0x277D84F90];
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v0[23];
    (*(v3 + 16))(v0[30], v0[44] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1, v0[28]);
    sub_254ED2E68(v5);
    v7 = v0[23];
    v6 = v0[24];
    (*(v3 + 8))(v0[30], v0[28]);
    if (sub_254EB2F2C(v7, 1, v6) == 1)
    {
      sub_254EB300C(v0[23], &qword_27F75EE78, &unk_254F2B528);
      ++v1;
    }

    else
    {
      v8 = v0[27];
      v34 = v0[26];
      v9 = v0[24];
      v10 = *v36;
      (*v36)(v8, v0[23], v9);
      v10(v34, v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v37 + 16);
        sub_254EEFEB4();
        v37 = v15;
      }

      v11 = *(v37 + 16);
      if (v11 >= *(v37 + 24) >> 1)
      {
        sub_254EEFEB4();
        v37 = v16;
      }

      ++v1;
      v12 = v0[26];
      v13 = v0[24];
      *(v37 + 16) = v11 + 1;
      v10(v37 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v11, v12, v13);
    }
  }

  v17 = v0[44];
  v19 = v0[40];
  v18 = v0[41];
  v20 = v0[35];
  v21 = v0[36];
  v22 = v0[34];

  swift_setDeallocating();
  sub_254EB2BBC((v18 + 16));
  (*(v20 + 8))(v21, v22);
  sub_254EB300C(v19, &qword_27F75EE60, &qword_254F2B4B8);
  v24 = v0[39];
  v23 = v0[40];
  v26 = v0[36];
  v25 = v0[37];
  v27 = v0[33];
  v28 = v0[30];
  v30 = v0[26];
  v29 = v0[27];
  v31 = v0[22];
  v32 = v0[23];

  v33 = v0[1];

  v33(v37);
}

uint64_t sub_254ED2E68@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v52 = &v48 - v3;
  v4 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v48 - v6);
  v8 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v48 - v10;
  v11 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  v49 = *(v11 - 8);
  v12 = v49[8];
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v48 - v13;
  v14 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - v16;
  v18 = sub_254F28800();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_254F28990();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F28940();
  if ((*(v19 + 88))(v22, v18) == *MEMORY[0x277D1D368])
  {
    (*(v19 + 96))(v22, v18);
    (*(v24 + 32))(v27, v22, v23);
    sub_254F28980();
    v28 = sub_254F29290();
    if (sub_254EB2F2C(v17, 1, v28) == 1)
    {
      sub_254EB300C(v17, &qword_27F75EE50, &unk_254F2C4F0);
      sub_254EC8BC0(&qword_27F75EE90, &unk_254F2B570);
      v29 = v49[9];
      v30 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_254F2B4D0;
      v32 = v31 + v30;
      sub_254F286B0();
      v33 = sub_254F286E0();
      v34 = 1;
      sub_254EB2F04(v32, 0, 1, v33);
      sub_254F286C0();
      sub_254EB2F04(v32 + v29, 0, 1, v33);
      sub_254F286D0();
      sub_254EB2F04(v32 + 2 * v29, 0, 1, v33);
      v35 = v50;
      v36 = sub_254F28970();
      v49 = &v48;
      MEMORY[0x28223BE20](v36);
      *(&v48 - 2) = v35;
      v37 = v54;
      LOBYTE(v33) = sub_254EF7458(sub_254ED3604, (&v48 - 4), v31);
      v54 = v37;
      swift_setDeallocating();
      sub_254ECA508();
      (*(v24 + 8))(v27, v23);
      sub_254EB300C(v35, &qword_27F75EDF8, &unk_254F2B560);
      v38 = v53;
      if ((v33 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    (*(v24 + 8))(v27, v23);
    sub_254EB300C(v17, &qword_27F75EE50, &unk_254F2C4F0);
  }

  else
  {
    (*(v19 + 8))(v22, v18);
  }

  v38 = v53;
LABEL_8:
  v39 = sub_254F28440();
  sub_254EB2F04(v51, 1, 1, v39);
  v40 = sub_254F292F0();
  v41 = swift_allocBox();
  *v42 = 1;
  (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D72988], v40);
  *v7 = v41;
  v43 = *MEMORY[0x277D72A58];
  v44 = sub_254F29300();
  (*(*(v44 - 8) + 104))(v7, v43, v44);
  sub_254EB2F04(v7, 0, 1, v44);
  v45 = sub_254F281F0();
  sub_254EB2F04(v52, 1, 1, v45);
  sub_254F280D0();
  v34 = 0;
LABEL_9:
  v46 = sub_254F28120();
  return sub_254EB2F04(v38, v34, 1, v46);
}

uint64_t sub_254ED3500(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254ED2214(a1);
}

uint64_t sub_254ED3594(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED3604()
{
  v1 = *(v0 + 16);
  sub_254EF71A4();
  return v2 & 1;
}

uint64_t sub_254ED364C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (v3 != v2)
  {
    v4 = sub_254F27F10();
    v5 = v2 + 1;
    v6 = v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(*(v4 - 8) + 72) * v2;
    MEMORY[0x28223BE20](v4 - 8);
    result = sub_254F27DB0();
    v2 = v5;
  }

  return result;
}

uint64_t sub_254ED374C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for OnScreenUITextProvider();
  sub_254EB2D90(v3);
  v5 = *(v4 + 64);
  v2[8] = sub_254EB3FC4();
  v6 = sub_254F291E0();
  v2[9] = v6;
  sub_254EB2CAC(v6);
  v2[10] = v7;
  v9 = *(v8 + 64);
  v2[11] = sub_254EB3FC4();
  v10 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v10);
  v12 = *(v11 + 64);
  v2[12] = sub_254EB3FC4();
  v13 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v13);
  v15 = *(v14 + 64);
  v2[13] = sub_254EB3FC4();
  v16 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v16);
  v18 = *(v17 + 64);
  v2[14] = sub_254EB3FC4();
  v19 = sub_254F28410();
  v2[15] = v19;
  sub_254EB2CAC(v19);
  v2[16] = v20;
  v22 = *(v21 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v23 = sub_254F28120();
  v2[19] = v23;
  sub_254EB2CAC(v23);
  v2[20] = v24;
  v26 = *(v25 + 64);
  v2[21] = sub_254EB3FC4();
  v27 = sub_254F28F20();
  v2[22] = v27;
  sub_254EB2CAC(v27);
  v2[23] = v28;
  v30 = *(v29 + 64);
  v2[24] = sub_254EB3FC4();
  v31 = sub_254EC8BC0(&qword_27F75EE58, &qword_254F2B4B0);
  sub_254EB2D90(v31);
  v33 = *(v32 + 64);
  v2[25] = sub_254EB3FC4();
  v34 = sub_254EC8BC0(&qword_27F75EE60, &qword_254F2B4B8);
  v2[26] = v34;
  sub_254EB2D90(v34);
  v36 = *(v35 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ED3A08, 0, 0);
}

uint64_t sub_254ED3A08()
{
  v92 = v0;
  sub_254EB2FBC(v0[6], (v0 + 2), &qword_27F75EE68, &qword_254F2B4C0);
  v1 = v0[25];
  v2 = v0[26];
  if (!v0[5])
  {
    sub_254EB306C((v0 + 2), &qword_27F75EE68, &qword_254F2B4C0);
    v17 = sub_254EB3FDC();
    sub_254EB2F04(v17, v18, 1, v2);
    goto LABEL_6;
  }

  v3 = v0[25];
  v4 = v0[26];
  v5 = swift_dynamicCast();
  sub_254EB2F04(v1, v5 ^ 1u, 1, v2);
  v6 = sub_254EB3FDC();
  if (sub_254EB2F2C(v6, v7, v2) == 1)
  {
LABEL_6:
    sub_254EB306C(v0[25], &qword_27F75EE58, &qword_254F2B4B0);
LABEL_7:
    v19 = v0[11];
    v21 = v0[7];
    v20 = v0[8];
    sub_254F284C0();
    sub_254ED4C6C(v21, v20, type metadata accessor for OnScreenUITextProvider);
    v22 = sub_254F291D0();
    v23 = sub_254F296F0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[10];
    v26 = v0[11];
    v27 = v0[8];
    v28 = v0[9];
    if (v24)
    {
      v29 = swift_slowAlloc();
      v88 = v26;
      v91 = swift_slowAlloc();
      v30 = v91;
      *v29 = 136315138;
      v31 = sub_254F28070();
      v33 = v32;
      sub_254ED4BB8(v27);
      v34 = sub_254EC2D74(v31, v33, &v91);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_254EAE000, v22, v23, "[%s] unable to get source data", v29, 0xCu);
      sub_254EB2BBC(v30);
      MEMORY[0x259C2EB80](v30, -1, -1);
      MEMORY[0x259C2EB80](v29, -1, -1);

      (*(v25 + 8))(v88, v28);
    }

    else
    {

      sub_254ED4BB8(v27);
      (*(v25 + 8))(v26, v28);
    }

    goto LABEL_10;
  }

  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0;
  v12 = v0[22];
  sub_254ED4C1C(v0[25], v9, &qword_27F75EE60, &qword_254F2B4B8);
  sub_254EB2FBC(v9, v8, &qword_27F75EE60, &qword_254F2B4B8);
  v13 = *(v8 + *(v10 + 48));

  v14 = sub_254EB3FDC();
  if (sub_254EB2F2C(v14, v15, v12) == 1)
  {
    v16 = v0[27];
    sub_254EB306C(v0[28], &qword_27F75EE60, &qword_254F2B4B8);
    sub_254EB306C(v16, &qword_27F75EE88, &unk_254F2B540);
    goto LABEL_7;
  }

  (*(v0[23] + 32))(v0[24], v0[27], v0[22]);
  v47 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84F90];
  v48 = sub_254F28F10();
  sub_254ED364C(v48);

  v49 = v91;
  v50 = v91[2];
  if (!v50)
  {
    v76 = v11[28];
    v77 = v11[23];
    v78 = v11[24];
    v0 = v11;
    v79 = v11[22];

    (*(v77 + 8))(v78, v79);
    sub_254EB306C(v76, &qword_27F75EE60, &qword_254F2B4B8);
LABEL_10:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v51 = v11[20];
  v52 = v11[16];
  v91 = v47;
  sub_254ECA644(0, v50, 0);
  v35 = v47;
  v53 = *(v52 + 16);
  v52 += 16;
  v80 = v11;
  v54 = v49 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
  v82 = *(v52 + 56);
  v83 = v53;
  v85 = v51;
  v81 = (v52 - 8);
  v55 = v11;
  do
  {
    v87 = v55[21];
    v90 = v50;
    v57 = v55[17];
    v56 = v55[18];
    v59 = v55[14];
    v58 = v55[15];
    v61 = v55[12];
    v60 = v55[13];
    v62 = v35;
    v83(v56, v54, v58);
    v83(v57, v56, v58);
    sub_254F28470();
    v63 = sub_254F28440();
    sub_254EB2F04(v59, 0, 1, v63);
    sub_254F29300();
    v64 = sub_254EB3FDC();
    sub_254EB2F04(v64, v65, 1, v66);
    v67 = sub_254F281F0();
    sub_254EB2F04(v61, 1, 1, v67);
    sub_254F280D0();
    (*v81)(v56, v58);
    v91 = v35;
    v69 = *(v35 + 16);
    v68 = *(v35 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_254ECA644(v68 > 1, v69 + 1, 1);
      v62 = v91;
    }

    v70 = v80[21];
    v71 = v80[19];
    *(v62 + 16) = v69 + 1;
    v35 = v62;
    (*(v85 + 32))(v62 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v69, v70, v71);
    v54 += v82;
    --v50;
    v55 = v80;
  }

  while (v90 != 1);
  v72 = v80[28];
  v74 = v80[23];
  v73 = v80[24];
  v0 = v80;
  v75 = v80[22];

  (*(v74 + 8))(v73, v75);
  sub_254EB306C(v72, &qword_27F75EE60, &qword_254F2B4B8);
LABEL_11:
  v37 = v0[27];
  v36 = v0[28];
  v39 = v0[24];
  v38 = v0[25];
  v40 = v0[21];
  v42 = v0[17];
  v41 = v0[18];
  v43 = v0[13];
  v44 = v0[14];
  v84 = v0[12];
  v86 = v0[11];
  v89 = v0[8];

  v45 = v0[1];

  return v45(v35);
}

uint64_t sub_254ED4044(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v80 = a3;
  v83 = a2;
  v4 = sub_254F28410();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v79 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = v68 - v8;
  v9 = sub_254EC8BC0(&qword_27F75EE98, &qword_254F2B5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = v68 - v11;
  v12 = sub_254F283D0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_254F283F0();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = v68 - v19;
  v20 = sub_254EC8BC0(&qword_27F75EEA0, &qword_254F2B5C8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v68 - v22;
  v24 = sub_254EC8BC0(&qword_27F75EEA8, &qword_254F2B5D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v70 = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v69 = v68 - v29;
  MEMORY[0x28223BE20](v28);
  v73 = v68 - v30;
  v31 = sub_254F27E10();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_254F27E90();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F27EA0();
  if ((*(v37 + 88))(v40, v36) == *MEMORY[0x277D74650])
  {
    (*(v37 + 96))(v40, v36);
    (*(v32 + 32))(v35, v40, v31);
    v41 = sub_254F27E00();
    v43 = v42;
    v44 = sub_254F27DF0();
    (*(v32 + 8))(v35, v31);
  }

  else
  {
    (*(v37 + 8))(v40, v36);
    result = sub_254F27D90();
    if (!v46)
    {
      return result;
    }

    v41 = result;
    v43 = v46;
    v44 = MEMORY[0x277D84F90];
  }

  sub_254F27D60();
  if (sub_254EB2F2C(v23, 1, v24) == 1)
  {

    return sub_254EB306C(v23, &qword_27F75EEA0, &qword_254F2B5C8);
  }

  else
  {
    v68[3] = v44;
    v47 = v73;
    sub_254ED4C1C(v23, v73, &qword_27F75EEA8, &qword_254F2B5D0);
    v68[0] = a1;
    v48 = v69;
    sub_254EB2FBC(v47, v69, &qword_27F75EEA8, &qword_254F2B5D0);
    v68[2] = v43;
    v49 = *(v24 + 48);
    v50 = v70;
    sub_254EB2FBC(v47, v70, &qword_27F75EEA8, &qword_254F2B5D0);
    v51 = *(v24 + 48);
    v52 = sub_254F27F10();
    v53 = *(v52 - 8);
    v68[1] = v41;
    v54 = v53;
    v55 = v71;
    (*(v53 + 32))(v71, v50, v52);
    sub_254EB2F04(v55, 0, 1, v52);
    sub_254ED4850(v48 + v49, v55);
    v56 = sub_254F27E80();
    (*(*(v56 - 8) + 8))(v50 + v51, v56);
    (*(v54 + 8))(v48, v52);
    v57 = v75;
    sub_254F283E0();
    type metadata accessor for UIContextRetriever();
    v58 = sub_254F27D70();
    sub_254EBB528(v68[0], v58);

    sub_254F27D20();
    v60 = v76;
    v59 = v77;
    (*(v76 + 16))(v74, v57, v77);
    v61 = v78;
    sub_254F28400();
    v63 = v81;
    v62 = v82;
    v64 = v79;
    (*(v81 + 16))(v79, v61, v82);
    v65 = v80;
    sub_254F16BE8();
    v66 = *(*v65 + 16);
    sub_254F16C90(v66);
    (*(v63 + 8))(v61, v62);
    (*(v60 + 8))(v57, v59);
    sub_254EB306C(v47, &qword_27F75EEA8, &qword_254F2B5D0);
    v67 = *v65;
    *(v67 + 16) = v66 + 1;
    return (*(v63 + 32))(v67 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v66, v64, v62);
  }
}

uint64_t sub_254ED4850(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EE98, &qword_254F2B5C0);
  v5 = sub_254EB2D90(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  sub_254F27E70();
  sub_254F283C0();
  sub_254EB2FBC(a2, v12, &qword_27F75EE98, &qword_254F2B5C0);
  v13 = sub_254F27F10();
  v14 = sub_254EB2F2C(v12, 1, v13);
  if (v14 == 1)
  {
    sub_254EB306C(v12, &qword_27F75EE98, &qword_254F2B5C0);
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    sub_254F27CB0();
    v25 = v17;
    v26 = v18;
    v24 = v19;
    v27 = v20;
    (*(*(v13 - 8) + 8))(v12, v13);
    *&v16 = v24;
    *&v15 = v25;
    *(&v15 + 1) = v26;
    *(&v16 + 1) = v27;
  }

  v28 = v15;
  v29 = v16;
  v30 = v14 == 1;
  sub_254F283A0();
  sub_254EB2FBC(a2, v10, &qword_27F75EE98, &qword_254F2B5C0);
  if (sub_254EB2F2C(v10, 1, v13) == 1)
  {
    sub_254EB306C(v10, &qword_27F75EE98, &qword_254F2B5C0);
  }

  else
  {
    sub_254F27D20();
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  sub_254F283B0();
  sub_254F27E40();
  sub_254F28390();
  sub_254EB306C(a2, &qword_27F75EE98, &qword_254F2B5C0);
  v21 = sub_254F27E80();
  sub_254EB2D80(v21);
  return (*(v22 + 8))(a1);
}

uint64_t sub_254ED4B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254ED374C(a1);
}

uint64_t sub_254ED4BB8(uint64_t a1)
{
  v2 = type metadata accessor for OnScreenUITextProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254ED4C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254EB3C5C(a1, a2, a3, a4);
  sub_254EB2D80(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_254ED4C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_254EB2D80(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for AppInFocus()
{
  result = qword_281426BE8;
  if (!qword_281426BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED4D40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_254EB5A9C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_254EDF0F0(v4, v5);
  }

  else
  {
    sub_254ED6B90();
    v7 = sub_254F293C0();

    return sub_254EDF0EC(v4, v7);
  }
}

uint64_t sub_254ED4DE8()
{
  v1[19] = v0;
  v2 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v2);
  v4 = *(v3 + 64);
  v1[20] = sub_254EB3FC4();
  v5 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v5);
  v7 = *(v6 + 64);
  v1[21] = sub_254EB3FC4();
  v8 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v8);
  v10 = *(v9 + 64);
  v1[22] = sub_254EB3FC4();
  v11 = sub_254F282A0();
  v1[23] = v11;
  sub_254EB2CAC(v11);
  v1[24] = v12;
  v14 = *(v13 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v15 = sub_254EC8BC0(&qword_27F75EEC8, &qword_254F2B628);
  sub_254EB2D90(v15);
  v17 = *(v16 + 64);
  v1[27] = sub_254EB3FC4();
  v18 = sub_254EC8BC0(&qword_27F75EED0, &qword_254F2B630);
  sub_254EB2D90(v18);
  v20 = *(v19 + 64);
  v1[28] = sub_254EB3FC4();
  v21 = sub_254EC8BC0(&qword_27F75EED8, &qword_254F2B638);
  sub_254EB2D90(v21);
  v23 = *(v22 + 64);
  v1[29] = sub_254EB3FC4();
  v24 = sub_254EC8BC0(&qword_27F75EEE0, &qword_254F2B640);
  sub_254EB2D90(v24);
  v26 = *(v25 + 64);
  v1[30] = sub_254EB3FC4();
  v27 = sub_254EC8BC0(&qword_27F75EEE8, &unk_254F2B648);
  sub_254EB2D90(v27);
  v29 = *(v28 + 64);
  v1[31] = sub_254EB3FC4();
  v30 = sub_254F29300();
  v1[32] = v30;
  sub_254EB2CAC(v30);
  v1[33] = v31;
  v33 = *(v32 + 64);
  v1[34] = sub_254EB3FC4();
  v34 = type metadata accessor for AppInFocus();
  sub_254EB2D90(v34);
  v36 = *(v35 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v37 = sub_254F291E0();
  v1[38] = v37;
  sub_254EB2CAC(v37);
  v1[39] = v38;
  v40 = *(v39 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254ED5104, 0, 0);
}

uint64_t sub_254ED5104()
{
  v91 = v0;
  v1 = v0[19];
  v2 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v3 = [v2 InFocus];
  swift_unknownObjectRelease();
  v4 = sub_254ED607C(v3, sub_254ED6034, 0);

  if (!v4 || (v5 = sub_254ED6B08(v4), v0[43] = v5, (v0[44] = v6) == 0))
  {
    v10 = v0[41];
    v11 = v0[36];
    v12 = v0[19];
    sub_254F284C0();
    sub_254EB2D9C();
    sub_254EB6E58(v12, v11);
    v13 = sub_254F291D0();
    v14 = sub_254F296E0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[41];
    v18 = v0[38];
    v17 = v0[39];
    v19 = v0[36];
    if (v15)
    {
      v88 = v0[41];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v90 = v21;
      *v20 = 136315138;
      v22 = sub_254F28070();
      v24 = v23;
      sub_254ED6774(v19);
      v25 = sub_254EC2D74(v22, v24, &v90);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_254EAE000, v13, v14, "[%s] unable to get most recent app in focus", v20, 0xCu);
      sub_254EB2BBC(v21);
      sub_254EB3C04();
      sub_254EB3C04();

      (*(v17 + 8))(v88, v18);
    }

    else
    {

      sub_254ED6774(v19);
      (*(v17 + 8))(v16, v18);
    }

    v27 = v0[41];
    v26 = v0[42];
    v28 = v0[40];
    v30 = v0[36];
    v29 = v0[37];
    v32 = v0[34];
    v31 = v0[35];
    v33 = v0[30];
    v34 = v0[31];
    v35 = v0[29];
    v81 = v0[28];
    v82 = v0[27];
    v83 = v0[26];
    v84 = v0[25];
    v85 = v0[22];
    v86 = v0[21];
    v89 = v0[20];

    sub_254EB4930();
    sub_254EB3A64();

    __asm { BRAA            X2, X16 }
  }

  v7 = v5;
  v8 = v6;
  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v87 = v7;
  v38 = sub_254ED68F0(v7, v8, 0);
  v39 = [v38 localizedName];
  v40 = sub_254F29450();
  v42 = v41;

  if (v42)
  {
    v43 = v0[30];
    v44 = v0[31];
    v46 = v0[28];
    v45 = v0[29];
    v47 = v0[27];
    sub_254EC8BC0(&qword_27F75EF10, &qword_254F2B670);
    sub_254EB6A6C();
    sub_254EB2F04(v48, v49, v50, v51);
    sub_254EC8BC0(&qword_27F75EF18, &qword_254F2B678);
    sub_254EB6A6C();
    sub_254EB2F04(v52, v53, v54, v55);
    sub_254EC8BC0(&unk_27F75EF20, qword_254F2B680);
    sub_254EB6A6C();
    sub_254EB2F04(v56, v57, v58, v59);
    sub_254F29340();
    sub_254EB6A6C();
    sub_254EB2F04(v60, v61, v62, v63);

    sub_254F29360();
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v0[45] = v42;
  v0[46] = v40;
  v65 = v0[33];
  v66 = v0[34];
  v68 = v0[31];
  v67 = v0[32];
  v69 = sub_254F29380();
  sub_254EB2F04(v68, v64, 1, v69);
  v70 = sub_254F292F0();
  v71 = swift_allocBox();
  v73 = v72;

  sub_254F292A0();
  (*(*(v70 - 8) + 104))(v73, *MEMORY[0x277D72970], v70);
  *v66 = v71;
  (*(v65 + 104))(v66, *MEMORY[0x277D72A58], v67);
  v74 = [objc_opt_self() sharedCategories];
  v0[47] = v74;
  sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_254F2AE00;
  *(v75 + 32) = v87;
  *(v75 + 40) = v8;

  v76 = sub_254F29550();
  v0[48] = v76;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_254ED5904;
  v77 = swift_continuation_init();
  v0[17] = sub_254EC8BC0(&qword_27F75EEF8, &qword_254F2B658);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_254ED4D40;
  v0[13] = &unk_286725870;
  v0[14] = v77;
  [v74 categoriesForBundleIDs:v76 completionHandler:?];
  sub_254EB3A64();

  return MEMORY[0x282200938](v78);
}

uint64_t sub_254ED5904()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_254ED5C4C;
  }

  else
  {
    v3 = sub_254ED5A14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_254ED5A14()
{
  v5 = *(v1 + 384);
  v6 = *(v1 + 144);

  v7 = sub_254F0CB54(*(v1 + 344), *(v1 + 352), v6);

  if (v7)
  {
    v0 = [v7 identifier];

    sub_254F29450();
  }

  sub_254EB6A24();
  sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
  sub_254EB5144();
  v8 = sub_254F28120();
  sub_254EB2CAC(v8);
  v10 = *(v9 + 72);
  v11 = sub_254EB7E04();
  v12 = sub_254EB3C7C(v11, xmmword_254F2AE00);
  v13(v12);
  sub_254F28450();
  v14 = sub_254F28440();
  v15 = sub_254EB7F00(v14);
  v16(v15);
  sub_254EB3A80();
  sub_254EB6A6C();
  sub_254EB2F04(v17, v18, v19, v20);
  sub_254EC003C();
  (*(v3 + 8))();
  (*(v2 + 8))(v4, v0);
  sub_254EB7988();

  sub_254EB4930();
  sub_254EB3A64();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_254ED5C4C()
{
  v47 = v0;
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  v6 = v0[40];
  v7 = v0[35];
  v8 = v0[19];
  swift_willThrow();

  sub_254F284C0();
  sub_254EB2D9C();
  sub_254EB6E58(v8, v7);
  v9 = v3;
  v10 = sub_254F291D0();
  v11 = sub_254F296E0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[49];
  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[38];
  v17 = v0[35];
  if (v12)
  {
    v43 = v0[49];
    v18 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v46 = v1;
    *v18 = 136315394;
    v44 = v16;
    v45 = v14;
    v19 = sub_254F28070();
    v16 = v20;
    sub_254ED6774(v17);
    v21 = sub_254EC2D74(v19, v16, &v46);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2112;
    v22 = v43;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v23;
    *v2 = v23;
    _os_log_impl(&dword_254EAE000, v10, v11, "[%s] unable to get app category due to error: %@", v18, 0x16u);
    sub_254ECB348(v2);
    sub_254EB3C04();
    sub_254EB2BBC(v1);
    sub_254EB3C04();
    sub_254EB3C04();

    v25 = *(v15 + 8);
    v24 = v15 + 8;
    v25(v45, v44);
  }

  else
  {

    sub_254ED6774(v17);
    v26 = *(v15 + 8);
    v24 = v15 + 8;
    v26(v14, v16);
  }

  v27 = sub_254F0CB54(v0[43], v0[44], MEMORY[0x277D84F98]);

  if (v27)
  {
    v16 = [v27 identifier];

    sub_254F29450();
  }

  sub_254EB6A24();
  sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
  sub_254EB5144();
  v28 = sub_254F28120();
  sub_254EB2CAC(v28);
  v30 = *(v29 + 72);
  v31 = sub_254EB7E04();
  v32 = sub_254EB3C7C(v31, xmmword_254F2AE00);
  v33(v32);
  sub_254F28450();
  v34 = sub_254F28440();
  v35 = sub_254EB7F00(v34);
  v36(v35);
  sub_254EB3A80();
  sub_254EB6A6C();
  sub_254EB2F04(v37, v38, v39, v40);
  sub_254EC003C();
  (*(v1 + 8))();
  (*(v24 + 8))(v2, v16);
  sub_254EB7988();

  sub_254EB4930();

  return v41(v45);
}

id sub_254ED6034(void *a1)
{
  result = [a1 starting];
  if (result)
  {
    return ([a1 type] == 1);
  }

  return result;
}

void *sub_254ED607C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254EC8BC0(&unk_27F75EF30, &qword_254F2BD90);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = sub_254F27940();
  sub_254EB2F04(v12, 1, 1, v14);
  sub_254EB2F04(v10, 1, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v16 = sub_254ED69CC(v12, v10, 1, 1, 0);
  v17 = [a1 publisherWithOptions_];

  v29 = nullsub_1;
  v30 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_254ED6C70;
  v28 = &unk_2867258C0;
  v18 = _Block_copy(&aBlock);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v13;
  v29 = sub_254ED6C60;
  v30 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_254ED6C70;
  v28 = &unk_286725910;
  v20 = _Block_copy(&aBlock);
  sub_254EC6374(a2);

  v21 = [v17 sinkWithCompletion:v18 receiveInput:v20];

  _Block_release(v20);
  _Block_release(v18);

  swift_beginAccess();
  v22 = *(v13 + 16);
  v23 = v22;

  return v22;
}

void *sub_254ED633C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_254EC8BC0(&unk_27F75EF30, &qword_254F2BD90);
  v7 = sub_254EB2D90(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &aBlock - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = sub_254F27940();
  sub_254EB6A6C();
  sub_254EB2F04(v17, v18, v19, v16);
  sub_254EB6A6C();
  sub_254EB2F04(v20, v21, v22, v16);
  v23 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v24 = sub_254ED69CC(v14, v12, 1, 1, 0);
  v25 = [a1 publisherWithOptions_];

  v37 = nullsub_1;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_254ED6C70;
  v36 = &unk_286725960;
  v26 = _Block_copy(&aBlock);
  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = v15;
  v37 = sub_254ED6C34;
  v38 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_254ED6C70;
  v36 = &unk_2867259B0;
  v28 = _Block_copy(&aBlock);
  sub_254EC6374(a2);

  v29 = [v25 sinkWithCompletion:v26 receiveInput:v28];

  _Block_release(v28);
  _Block_release(v26);

  swift_beginAccess();
  v30 = *(v15 + 16);
  v31 = v30;

  return v30;
}

uint64_t sub_254ED65F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254ED667C;

  return sub_254ED4DE8();
}

uint64_t sub_254ED667C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  sub_254EB4930();

  return v4(a1);
}

uint64_t sub_254ED6774(uint64_t a1)
{
  v2 = type metadata accessor for AppInFocus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_254ED67D0(void *a1, uint64_t (*a2)(id), uint64_t a3, uint64_t a4)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v8 = v6;
    if (a2 && (a2(v6) & 1) == 0)
    {

      MEMORY[0x2821F96F8]();
    }

    else
    {
      swift_beginAccess();
      v7 = *(a4 + 16);
      *(a4 + 16) = v8;
    }
  }
}

void sub_254ED6888(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_254ED68F0(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_254F29420();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_254F27870();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_254ED69CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_254F27940();
  v13 = 0;
  if (sub_254EB2F2C(a1, 1, v12) != 1)
  {
    v13 = sub_254F27920();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_254EB2F2C(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_254F27920();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_254ED6B08(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_254F29450();

  return v3;
}

unint64_t sub_254ED6B90()
{
  result = qword_281426108;
  if (!qword_281426108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281426108);
  }

  return result;
}

uint64_t sub_254ED6BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254ED6BEC()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ContextDefinition.init(type:description:sourceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_254F28080();
  sub_254EB2D80(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for ContextDefinition();
  v13 = (a5 + *(v12 + 20));
  *v13 = a2;
  v13[1] = a3;
  v14 = a5 + *(v12 + 24);

  return sub_254ED6D18(a4, v14);
}

uint64_t sub_254ED6D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EFA0, &qword_254F2B6B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254ED6D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = v6;
  *(v7 + 168) = a3;
  *(v7 + 176) = a5;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;
  v10 = sub_254F291E0();
  *(v7 + 200) = v10;
  sub_254EB2CAC(v10);
  *(v7 + 208) = v11;
  v13 = *(v12 + 64);
  *(v7 + 216) = sub_254EB3FC4();
  v14 = *(a5 - 8);
  *(v7 + 224) = v14;
  *(v7 + 232) = *(v14 + 64);
  *(v7 + 240) = sub_254EB3C44();
  *(v7 + 248) = swift_task_alloc();
  v15 = *(*(sub_254EC8BC0(&qword_27F75EFA0, &qword_254F2B6B0) - 8) + 64);
  *(v7 + 256) = sub_254EB3FC4();
  v16 = sub_254F29210();
  *(v7 + 264) = v16;
  sub_254EB2CAC(v16);
  *(v7 + 272) = v17;
  v19 = *(v18 + 64);
  *(v7 + 280) = sub_254EB3FC4();
  v20 = sub_254F29240();
  *(v7 + 288) = v20;
  sub_254EB2CAC(v20);
  *(v7 + 296) = v21;
  v23 = *(v22 + 64);
  *(v7 + 304) = sub_254EB3FC4();
  v24 = sub_254F28080();
  *(v7 + 312) = v24;
  sub_254EB2CAC(v24);
  *(v7 + 320) = v25;
  v27 = *(v26 + 64);
  *(v7 + 328) = sub_254EB3FC4();
  v28 = type metadata accessor for ContextDefinition();
  *(v7 + 336) = v28;
  v29 = *(*(v28 - 8) + 64);
  *(v7 + 344) = sub_254EB3C44();
  *(v7 + 352) = swift_task_alloc();
  v30 = sub_254F27980();
  *(v7 + 360) = v30;
  sub_254EB2CAC(v30);
  *(v7 + 368) = v31;
  v33 = *(v32 + 64);
  *(v7 + 376) = sub_254EB3FC4();
  v34 = sub_254F29A20();
  *(v7 + 384) = v34;
  sub_254EB2CAC(v34);
  *(v7 + 392) = v35;
  v37 = *(v36 + 64);
  *(v7 + 400) = sub_254EB3C44();
  *(v7 + 408) = swift_task_alloc();
  v38 = sub_254F29A40();
  *(v7 + 416) = v38;
  sub_254EB2CAC(v38);
  *(v7 + 424) = v39;
  v41 = *(v40 + 64);
  *(v7 + 432) = sub_254EB3FC4();
  v42 = sub_254F29140();
  *(v7 + 440) = v42;
  sub_254EB2CAC(v42);
  *(v7 + 448) = v43;
  v45 = *(v44 + 64);
  *(v7 + 456) = sub_254EB3C44();
  *(v7 + 464) = swift_task_alloc();
  v46 = sub_254F29170();
  *(v7 + 472) = v46;
  sub_254EB2CAC(v46);
  *(v7 + 480) = v47;
  v49 = *(v48 + 64);
  *(v7 + 488) = sub_254EB3C44();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 624) = *a4;
  *(v7 + 504) = *(a4 + 8);
  v50 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

uint64_t sub_254ED71A0(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v44 = a3;
  v45 = a1;
  v5 = sub_254F29180();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F29140();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254F29170();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v19 = sub_254F29160();
  sub_254F29190();
  v42 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {

    (*(v10 + 8))(v13, v9);
    return (*(v15 + 8))(v18, v14);
  }

  v38 = v14;
  v39 = v9;
  if (v44)
  {
    if (!(v45 >> 32))
    {
      if ((v45 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v45 >> 16 <= 0x10)
      {
        v21 = v10;
        v22 = v15;
        v45 = &v48;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v45)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v10;
  v22 = v15;
LABEL_10:

  sub_254F291C0();

  v24 = v40;
  v23 = v41;
  v25 = v19;
  if ((*(v40 + 88))(v8, v41) == *MEMORY[0x277D85B00])
  {
    v26 = 0;
    v27 = "[Error] Interval already ended";
  }

  else
  {
    (*(v24 + 8))(v8, v23);
    v27 = "ContextProvider=%{signpost.telemetry:string1,public}s %s";
    v26 = 2;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v47 = v29;
  *v28 = v26;
  *(v28 + 1) = v26;
  *(v28 + 2) = 2082;
  v46 = v43;
  swift_getMetatypeMetadata();
  v30 = sub_254F29480();
  v32 = sub_254EC2D74(v30, v31, &v47);

  *(v28 + 4) = v32;
  *(v28 + 12) = 2080;
  sub_254F280B0();
  v33 = sub_254F29950();
  v35 = sub_254EC2D74(v33, v34, &v47);

  *(v28 + 14) = v35;
  v36 = sub_254F29130();
  _os_signpost_emit_with_name_impl(&dword_254EAE000, v25, v42, v36, v45, v27, v28, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x259C2EB80](v29, -1, -1);
  MEMORY[0x259C2EB80](v28, -1, -1);

  (*(v21 + 8))(v13, v39);
  return (*(v22 + 8))(v18, v38);
}

uint64_t sub_254ED75E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = *(a6 + 16);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_254ED7718;

  return v14(a4, a5, a6);
}

uint64_t sub_254ED7718()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = v1;
  v3 = *(v1 + 24);
  v9 = *v0;
  *(v2 + 32) = v4;

  v5 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_254ED7808()
{
  sub_254EB3BD8();
  v1 = v0[4];
  v2 = v0[2];
  sub_254F29220();
  v3 = v0[1];

  return v3();
}

uint64_t ContextDefinition.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_254F28080();
  v4 = sub_254EB2D80(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ContextDefinition.description.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextDefinition() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_254ED797C()
{
  sub_254F28080();
  if (v0 <= 0x3F)
  {
    sub_254ED7A18();
    if (v1 <= 0x3F)
    {
      sub_254ED7A68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254ED7A18()
{
  if (!qword_281426170)
  {
    v0 = sub_254F29810();
    if (!v1)
    {
      atomic_store(v0, &qword_281426170);
    }
  }
}

void sub_254ED7A68()
{
  if (!qword_281427540)
  {
    sub_254F28050();
    v0 = sub_254F29810();
    if (!v1)
    {
      atomic_store(v0, &qword_281427540);
    }
  }
}

uint64_t sub_254ED7AC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254EC8BC0(a3, a4);
  sub_254EB2D80(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_254ED7B20(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = (*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_254ED7C44;

  return sub_254ED75E4(a1, a2, v2 + v8, v2 + v9, v6, v7);
}

uint64_t sub_254ED7C44()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_254ED7D28()
{
  result = sub_254EB0968();
  qword_281427CC0 = result;
  return result;
}

uint64_t sub_254ED7D48()
{
  result = sub_254ED7D68();
  qword_281427CE0 = result;
  return result;
}

uint64_t sub_254ED7D68()
{
  v39 = sub_254F28080();
  v34 = *(v39 - 8);
  v0 = *(v34 + 64);
  MEMORY[0x28223BE20](v39);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContextDefinition();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281426CE0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v6 = qword_281427CC0;
  v36 = *(qword_281427CC0 + 16);
  if (v36)
  {
    v7 = 0;
    v8 = qword_281427CC0 + 32;
    v38 = (v34 + 16);
    v35 = (v34 + 8);
    v9 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v7 >= *(v6 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      sub_254EB5C9C(v8, v42);
      v10 = v43;
      v11 = v44;
      sub_254EB5A9C(v42, v43);
      v12 = v37;
      (*(v11 + 8))(v10, v11);
      v13 = *v38;
      (*v38)(v2, v12, v39);
      sub_254EB5C40(v12);
      sub_254EB5C9C(v42, v41);
      swift_isUniquelyReferenced_nonNull_native();
      v40 = v9;
      sub_254F059E0();
      if (__OFADD__(v9[2], (v15 & 1) == 0))
      {
        goto LABEL_21;
      }

      v16 = v14;
      v17 = v15;
      sub_254EC8BC0(&qword_27F75EFB0, &unk_254F2B740);
      v18 = sub_254F29A50();
      v9 = v40;
      if (v18)
      {
        sub_254F059E0();
        if ((v17 & 1) != (v20 & 1))
        {
          result = sub_254F29B50();
          __break(1u);
          return result;
        }

        v16 = v19;
      }

      if ((v17 & 1) == 0)
      {
        v9[(v16 >> 6) + 8] |= 1 << v16;
        v13((v9[6] + *(v34 + 72) * v16), v2, v39);
        *(v9[7] + 8 * v16) = MEMORY[0x277D84F90];
        v21 = v9[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_22;
        }

        v9[2] = v23;
      }

      v24 = v9[7];
      v25 = *(v24 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = *(v25 + 16);
        sub_254EB4818();
        v25 = v30;
        *(v24 + 8 * v16) = v30;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_254EB4818();
        *(v24 + 8 * v16) = v31;
      }

      ++v7;
      (*v35)(v2, v39);
      v28 = *(v24 + 8 * v16);
      *(v28 + 16) = v27 + 1;
      sub_254EB26F4(v41, v28 + 40 * v27 + 32);
      sub_254EB2BBC(v42);
      v8 += 40;
      if (v36 == v7)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t type metadata accessor for LiveCallProvider()
{
  result = qword_281426B58;
  if (!qword_281426B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254ED81BC()
{
  result = type metadata accessor for ContextDefinition();
  if (v1 <= 0x3F)
  {
    result = sub_254ED8278(319, &unk_281426B70);
    if (v2 <= 0x3F)
    {
      result = sub_254ED8278(319, &qword_281426B68);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_254ED8278(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_254ED82CC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v21 = a3 & 0xC000000000000001;
  v22 = sub_254EC5594(a3);
  v6 = MEMORY[0x277D84F90];
  while (v22 != v5)
  {
    if (v21)
    {
      v7 = MEMORY[0x259C2E0D0](v5, a3);
    }

    else
    {
      if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(a3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v24 = v7;
    a1(&v23, &v24);
    if (v3)
    {

      return;
    }

    v9 = v23;
    v10 = *(v23 + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      goto LABEL_24;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      sub_254EF04D8();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
      v14 = *(sub_254F29290() - 8);
      if (v13 < v10)
      {
        goto LABEL_26;
      }

      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      swift_arrayInitWithCopy();

      if (v10)
      {
        v17 = *(v6 + 16);
        v18 = __OFADD__(v17, v10);
        v19 = v17 + v10;
        if (v18)
        {
          goto LABEL_27;
        }

        *(v6 + 16) = v19;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_25;
      }
    }

    ++v5;
  }
}

uint64_t sub_254ED84CC()
{
  sub_254EB3BD8();
  v1[2] = v0;
  v2 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v2);
  v4 = *(v3 + 64);
  v1[3] = sub_254EB3FC4();
  v5 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v5);
  v7 = *(v6 + 64);
  v1[4] = sub_254EB3FC4();
  v8 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v8);
  v10 = *(v9 + 64);
  v1[5] = sub_254EB3FC4();
  v11 = sub_254F29290();
  v1[6] = v11;
  sub_254EB2CAC(v11);
  v1[7] = v12;
  v14 = *(v13 + 64);
  v1[8] = sub_254EB3FC4();
  v15 = sub_254F28120();
  v1[9] = v15;
  sub_254EB2CAC(v15);
  v1[10] = v16;
  v18 = *(v17 + 64);
  v1[11] = sub_254EB3FC4();
  v19 = sub_254F297B0();
  v1[12] = v19;
  sub_254EB2CAC(v19);
  v1[13] = v20;
  v22 = *(v21 + 64);
  v1[14] = sub_254EB3FC4();
  v23 = sub_254F297C0();
  v1[15] = v23;
  sub_254EB2CAC(v23);
  v1[16] = v24;
  v26 = *(v25 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v27 = sub_254F27980();
  v1[19] = v27;
  sub_254EB2CAC(v27);
  v1[20] = v28;
  v30 = *(v29 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v31 = sub_254F291E0();
  v1[23] = v31;
  sub_254EB2CAC(v31);
  v1[24] = v32;
  v34 = *(v33 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

void sub_254ED87D4()
{
  v91 = v0;
  v2 = v0[2];
  v3 = type metadata accessor for LiveCallProvider();
  sub_254EB5A9C((v2 + *(v3 + 20)), *(v2 + *(v3 + 20) + 24));
  sub_254EC541C();
  v5 = v4;
  if (!sub_254EC5594(v4))
  {
    v23 = v0[29];

    sub_254F284C0();
    v24 = sub_254F291D0();
    v25 = sub_254F296F0();
    v26 = sub_254EB493C(v25);
    v27 = v0[29];
    v28 = v0[23];
    v29 = v0[24];
    if (v26)
    {
      *swift_slowAlloc() = 0;
      sub_254EB6A78();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      sub_254EB3C04();
    }

    (*(v29 + 8))(v27, v28);
LABEL_28:
    sub_254EB6BB4();
    v78 = v0[14];
    v81 = v0[11];
    v82 = v0[8];
    v84 = v0[5];
    v86 = v0[4];
    v89 = v0[3];

    sub_254EB4930();
    sub_254EB4AE0();

    __asm { BRAA            X2, X16 }
  }

  v6 = sub_254EC5594(v5);
  v7 = MEMORY[0x277D84F90];
  v83 = v3;
  if (v6)
  {
    v1 = v6;
    v90 = MEMORY[0x277D84F90];
    sub_254ECA6F4(0, v6 & ~(v6 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v0[20];
    v10 = v90;
    v87 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      if (v87)
      {
        v12 = MEMORY[0x259C2E0D0](v8, v5);
      }

      else
      {
        v12 = *(v5 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = v0[22];
      v15 = v0;
      v16 = [v12 UUID];
      sub_254F27960();

      v90 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_254ECA6F4(v17 > 1, v18 + 1, 1);
        v10 = v90;
      }

      v19 = v15[22];
      v20 = v15[19];
      ++v8;
      *(v10 + 16) = v18 + 1;
      v21 = *(v9 + 80);
      sub_254EB3A30();
      (*(v9 + 32))(v10 + v22 + *(v9 + 72) * v18);
      v0 = v15;
      v5 = v11;
    }

    while (v1 != v8);

    v7 = MEMORY[0x277D84F90];
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_254EB3E70();
  v35 = *(v10 + 16);
  if (v35)
  {
    v36 = v0[20];
    v90 = v7;
    sub_254F299D0();
    v37 = *(v36 + 16);
    v36 += 16;
    v38 = *(v36 + 64);
    sub_254EB3A30();
    v40 = v10 + v39;
    v85 = *(v36 + 56);
    v88 = v41;
    v1 = v36;
    v42 = (v36 - 8);
    do
    {
      v43 = v0[21];
      v44 = v0[19];
      v88(v43, v40, v44);
      sub_254F27950();
      v45 = objc_allocWithZone(MEMORY[0x277D23800]);
      sub_254EDA6FC();
      (*v42)(v43, v44);
      sub_254F299B0();
      v46 = *(v90 + 16);
      sub_254F299E0();
      sub_254F299F0();
      sub_254F299C0();
      v40 += v85;
      --v35;
    }

    while (v35);

    v47 = v90;
    sub_254EB3E70();
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  v48 = (v0[2] + *(v83 + 24));
  sub_254EB5A9C(v48, v48[3]);
  v49 = sub_254ED9EF8(0xD000000000000028, 0x8000000254F2D950, v1, 0xE800000000000000);
  v0[30] = v49;
  v50 = v49;
  if (!v49)
  {

    v63 = v0[25];
    sub_254F284C0();
    v64 = sub_254F291D0();
    v65 = sub_254F296E0();
    v66 = sub_254EB493C(v65);
    v68 = v0[24];
    v67 = v0[25];
    v69 = v0[23];
    if (v66)
    {
      swift_slowAlloc();
      v70 = sub_254EB63AC();
      v90 = v70;
      MEMORY[0] = 136315138;
      MEMORY[4] = sub_254EB5150(v70, 0x8000000254F2D980, &v90);
      sub_254EB6A78();
      _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
      sub_254EB2BBC(v70);
      sub_254EB79D0();
      sub_254EB3C04();
    }

    v76 = sub_254EB67C8();
    v77(v76);
    goto LABEL_28;
  }

  v51 = v47;
  v52 = v0[17];
  v53 = v0[18];
  v55 = v0[15];
  v54 = v0[16];
  v57 = v0[13];
  v56 = v0[14];
  v58 = v0[12];
  *v53 = v51;
  (*(v54 + 104))(v53, *MEMORY[0x277D23A18], v55);
  sub_254EB48D8(0, &qword_27F75EFB8, 0x277D23B90);
  (*(v54 + 16))(v52, v53, v55);
  *v56 = v50;
  (*(v57 + 104))(v56, *MEMORY[0x277D23A40], v58);
  v59 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v60 = v50;
  [v59 init];
  v0[31] = sub_254F297D0();
  sub_254EB5A9C(v48, v48[3]);
  v61 = swift_task_alloc();
  v0[32] = v61;
  *v61 = v0;
  v61[1] = sub_254ED8FE8;
  sub_254EB4AE0();

  sub_254EDA160();
}

uint64_t sub_254ED8FE8()
{
  sub_254EB3BD8();
  v2 = *v1;
  sub_254EB2DB4();
  *v4 = v3;
  v6 = *(v5 + 256);
  *v4 = *v1;
  *(v3 + 264) = v7;
  *(v3 + 272) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254ED90F0()
{
  v76 = v0;
  v2 = *(v0 + 264);
  if (!v2)
  {
    v35 = *(v0 + 208);
    sub_254F284C0();
    v36 = sub_254F291D0();
    v37 = sub_254F29700();
    v38 = sub_254EB493C(v37);
    v39 = *(v0 + 208);
    v40 = *(v0 + 184);
    v41 = *(v0 + 192);
    if (v38)
    {
      swift_slowAlloc();
      v42 = sub_254EB63AC();
      v75 = v42;
      *v1 = 136315138;
      *(v1 + 4) = sub_254EB5150(v42, 0x8000000254F2D980, &v75);
      sub_254EB6A78();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      sub_254EB2BBC(v42);
      sub_254EB79D0();
      sub_254EB3C04();
    }

    v48 = sub_254EB67C8();
    v49(v48);
    v50 = *(v0 + 240);
    v51 = *(v0 + 144);
    v52 = *(v0 + 120);
    v53 = *(v0 + 128);

    (*(v53 + 8))(v51, v52);
    goto LABEL_12;
  }

  v3 = *(v0 + 16);
  v4 = [*(v0 + 264) value];
  v5 = sub_254ED98F4(v4, 0xD000000000000028, 0x8000000254F2D950);

  v6 = *(v5 + 16);
  if (!v6)
  {
    v55 = *(v0 + 240);
    v54 = *(v0 + 248);
    v56 = *(v0 + 144);
    v57 = *(v0 + 120);
    v58 = *(v0 + 128);

    (*(v58 + 8))(v56, v57);
LABEL_12:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v61 = v2;
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v75 = MEMORY[0x277D84F90];
  sub_254ECA644(0, v6, 0);
  v9 = v75;
  v10 = *(v8 + 16);
  v8 += 16;
  v11 = *(v8 + 64);
  sub_254EB3A30();
  v13 = v5 + v12;
  v64 = *(v8 + 56);
  v65 = v14;
  v63 = *MEMORY[0x277D729F8];
  v68 = v7;
  v62 = (v8 - 8);
  do
  {
    v71 = *(v0 + 88);
    v73 = v6;
    v15 = *(v0 + 64);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 24);
    v18 = *(v0 + 32);
    v20 = v9;
    v65(v15, v13, v17);
    v21 = sub_254F28440();
    sub_254EB2F04(v16, 1, 1, v21);
    v22 = swift_allocBox();
    v65(v23, v15, v17);
    *v18 = v22;
    v24 = sub_254F29300();
    (*(*(v24 - 8) + 104))(v18, v63, v24);
    sub_254EB2F04(v18, 0, 1, v24);
    v25 = sub_254F281F0();
    sub_254EB2F04(v19, 1, 1, v25);
    sub_254F280D0();
    (*v62)(v15, v17);
    v75 = v9;
    v27 = *(v9 + 16);
    v26 = *(v9 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_254ECA644(v26 > 1, v27 + 1, 1);
      v20 = v75;
    }

    v28 = *(v0 + 88);
    v29 = *(v0 + 72);
    *(v20 + 16) = v27 + 1;
    v30 = *(v68 + 80);
    sub_254EB3A30();
    v9 = v20;
    (*(v32 + 32))(v20 + v31 + *(v32 + 72) * v27);
    v13 += v64;
    v6 = v73 - 1;
  }

  while (v73 != 1);
  v33 = *(v0 + 240);
  v34 = *(v0 + 248);
  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));

LABEL_13:
  sub_254EB6BB4();
  v66 = *(v0 + 112);
  v67 = *(v0 + 88);
  v69 = *(v0 + 64);
  v70 = *(v0 + 40);
  v72 = *(v0 + 32);
  v74 = *(v0 + 24);

  sub_254EB4930();

  return v59(v9);
}

void sub_254ED95C4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 216);
  sub_254F284C0();
  v3 = v1;
  v4 = sub_254F291D0();
  v5 = sub_254F296E0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_254EB5150(v13, 0x8000000254F2D980, &v43);
    *(v11 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_254EAE000, v4, v5, "%s unable to performQuery from LinkServices: %@", v11, 0x16u);
    sub_254ECB348(v12);
    sub_254EB3C04();
    sub_254EB2BBC(v13);
    sub_254EB3C04();
    sub_254EB79D0();
  }

  else
  {
  }

  (*(v10 + 8))(v8, v9);
  v16 = *(v0 + 208);
  sub_254F284C0();
  v17 = sub_254F291D0();
  v18 = sub_254F29700();
  v19 = sub_254EB493C(v18);
  v20 = *(v0 + 208);
  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  if (v19)
  {
    swift_slowAlloc();
    v23 = sub_254EB63AC();
    v43 = v23;
    *v5 = 136315138;
    *(v5 + 4) = sub_254EB5150(v23, 0x8000000254F2D980, &v43);
    sub_254EB6A78();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    sub_254EB2BBC(v23);
    sub_254EB79D0();
    sub_254EB3C04();
  }

  v29 = sub_254EB67C8();
  v30(v29);
  v31 = *(v0 + 240);
  v32 = *(v0 + 144);
  v33 = *(v0 + 120);
  v34 = *(v0 + 128);

  (*(v34 + 8))(v32, v33);
  sub_254EB6BB4();
  v35 = *(v0 + 112);
  v38 = *(v0 + 88);
  v39 = *(v0 + 64);
  v40 = *(v0 + 40);
  v41 = *(v0 + 32);
  v42 = *(v0 + 24);

  sub_254EB4930();
  sub_254EB4AE0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_254ED98F4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_254EC8BC0(&qword_27F75EEE8, &unk_254F2B648);
  v8 = sub_254EB2D90(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = sub_254F29330();
  v14 = sub_254EB2CBC(v13);
  v55 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_254F29290();
  v21 = sub_254EB2CBC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v21);
  v56 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v54 - v28;
  v59 = MEMORY[0x277D84F90];
  v30 = [a1 value];
  sub_254F29860();
  swift_unknownObjectRelease();
  sub_254EC8BC0(&qword_27F75EFC0, &qword_254F2B810);
  v31 = sub_254EB5BA8();
  if (v31)
  {
    v32 = v57;
    MEMORY[0x28223BE20](v31);
    *(&v54 - 4) = v3;
    *(&v54 - 3) = a2;
    *(&v54 - 2) = a3;
    sub_254ED82CC(sub_254EDA784, (&v54 - 6), v32);
    v34 = v33;

    sub_254EED934(v34);
  }

  else
  {
    sub_254EB48D8(0, &qword_27F75EFC8, 0x277D237F0);
    if (sub_254EB5BA8())
    {
      v54 = v20;
      v35 = v57;
      v36 = swift_allocObject();
      v36[2] = a2;
      v36[3] = a3;

      v37 = [v35 identifier];
      v38 = [v37 typeIdentifier];

      v39 = sub_254F29450();
      v41 = v40;

      v42 = v35;
      v44 = v54;
      v43 = v55;
      v36[4] = v39;
      v36[5] = v41;
      *v19 = v36;
      (*(v43 + 104))(v19, *MEMORY[0x277D72D28], v13);
      v45 = [v42 identifier];
      v46 = [v45 instanceIdentifier];

      sub_254F29450();
      v47 = sub_254F29380();
      sub_254EB2F04(v12, 1, 1, v47);
      sub_254F29270();
      v48 = v56;
      (*(v23 + 16))(v56, v29, v44);
      sub_254EF04D8();
      v50 = v49;
      v51 = *(v49 + 16);
      if (v51 >= *(v49 + 24) >> 1)
      {
        sub_254EF04D8();
        v50 = v53;
      }

      (*(v23 + 8))(v29, v44);
      *(v50 + 16) = v51 + 1;
      (*(v23 + 32))(v50 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v51, v48, v44);
      v59 = v50;
    }
  }

  sub_254EB2BBC(v58);
  return v59;
}

uint64_t sub_254ED9D7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254ED9E08;

  return sub_254ED84CC();
}

uint64_t sub_254ED9E08()
{
  sub_254EB3BD8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_254EB2DB4();
  *v5 = v4;

  sub_254EB4930();

  return v6(v2);
}

id sub_254ED9EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v7 = sub_254F29420();
  v25[0] = 0;
  v8 = [v6 entitiesForBundleIdentifier:v7 error:v25];

  v9 = v25[0];
  if (v8)
  {
    v24 = v6;
    sub_254EB48D8(0, &unk_2814260C8, 0x277D23818);
    v10 = sub_254F29560();
    v11 = v9;

    v12 = sub_254EC5594(v10);
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {

        v8 = 0;
        goto LABEL_19;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x259C2E0D0](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v14 = *(v10 + 8 * i + 32);
      }

      v8 = v14;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v15 = [v14 identifier];
      v16 = sub_254F29450();
      v18 = v17;

      if (v16 == a3 && v18 == a4)
      {

        goto LABEL_19;
      }

      v20 = sub_254F29B10();

      if (v20)
      {
        break;
      }
    }
  }

  else
  {
    v21 = v25[0];
    sub_254F27870();

    swift_willThrow();
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_254EDA160()
{
  sub_254EB3BD8();
  v8 = *MEMORY[0x277D85DE8];
  *(v0 + 152) = v1;
  *(v0 + 160) = v2;
  v3 = *MEMORY[0x277D85DE8];
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_254EDA1E8()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() policyWithEntityMetadata_];
  v0[10] = 0;
  v2 = [v1 connectionWithError_];
  v0[21] = v2;

  v3 = v0[10];
  if (v2)
  {
    v4 = v0[19];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_254EDA414;
    v5 = swift_continuation_init();
    v0[17] = sub_254EC8BC0(&qword_27F75EFD0, &qword_254F2B818);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_254EDA66C;
    v0[13] = &unk_286725AA8;
    v0[14] = v5;
    v6 = v3;
    [v2 performConfigurableQuery:v4 completionHandler:v0 + 10];
    v7 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v3;
    sub_254F27870();

    swift_willThrow();
    v9 = v0[1];
    v10 = *MEMORY[0x277D85DE8];

    return v9();
  }
}

uint64_t sub_254EDA414()
{
  sub_254EB3BD8();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_254EB2DB4();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 176) = *(v4 + 48);
  v5 = *MEMORY[0x277D85DE8];
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254EDA544()
{
  sub_254EB3BD8();
  v5 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 144);
  sub_254EB4930();
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_254EDA5D0()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t *sub_254EDA66C(uint64_t a1, void *a2, void *a3)
{
  result = sub_254EB5A9C((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_254EDF0F0(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_254EDF0EC(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_254EDA6FC()
{
  v1 = sub_254F29420();

  v2 = sub_254F29420();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

uint64_t sub_254EDA784@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  result = sub_254ED98F4(*a1, v2[3], v2[4]);
  *a2 = result;
  return result;
}

uint64_t sub_254EDA7E4(uint64_t a1)
{
  v3 = sub_254F291E0();
  v4 = sub_254EB2CBC(v3);
  v62 = v5;
  v63 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_254EB3AB8();
  v10 = v9 - v8;
  v11 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v59 - v13;
  v14 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - v16;
  v18 = sub_254F28120();
  v19 = sub_254EB2CBC(v18);
  v60 = v20;
  v61 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_254EB3AB8();
  v25 = v24 - v23;
  v26 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = (&v59 - v31);
  v33 = sub_254F29300();
  v34 = sub_254EB2CBC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_254EB3AB8();
  v41 = v40 - v39;
  sub_254ED1F44(a1, v65);
  if (!v65[3])
  {
    sub_254EB306C(v65, &qword_27F75EE68, &qword_254F2B4C0);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_254F284C0();
    v44 = v1;
    v45 = sub_254F291D0();
    v46 = sub_254F296F0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65[0] = v48;
      *v47 = 136315138;
      v49 = sub_254F28070();
      v51 = sub_254EC2D74(v49, v50, v65);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_254EAE000, v45, v46, "[%s] unable to get source data", v47, 0xCu);
      sub_254EB2BBC(v48);
      MEMORY[0x259C2EB80](v48, -1, -1);
      MEMORY[0x259C2EB80](v47, -1, -1);
    }

    (*(v62 + 8))(v10, v63);
    return MEMORY[0x277D84F90];
  }

  v42 = v64;
  v43 = v64;
  sub_254EDAD38(v42, v32);

  if (sub_254EB2F2C(v32, 1, v33) != 1)
  {
    v63 = v43;
    (*(v36 + 32))(v41, v32, v33);
    v54 = sub_254F28440();
    sub_254EB2F04(v17, 1, 1, v54);
    (*(v36 + 16))(v30, v41, v33);
    sub_254EB2F04(v30, 0, 1, v33);
    v55 = sub_254F281F0();
    sub_254EB2F04(v59, 1, 1, v55);
    sub_254F280D0();
    sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
    v56 = v60;
    v57 = *(v60 + 72);
    v58 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_254F2AE00;
    (*(v56 + 32))(v52 + v58, v25, v61);

    (*(v36 + 8))(v41, v33);
    return v52;
  }

  sub_254EB306C(v32, &qword_27F75EE48, &unk_254F2B550);

  return MEMORY[0x277D84F90];
}

uint64_t sub_254EDAD38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 && [a1 placemark])
  {
    v3 = sub_254F292F0();
    v4 = swift_allocBox();
    v6 = v5;
    sub_254F292E0();
    (*(*(v3 - 8) + 104))(v6, *MEMORY[0x277D729D0], v3);
    *a2 = v4;
    v7 = *MEMORY[0x277D72A58];
    v8 = sub_254F29300();
    (*(*(v8 - 8) + 104))(a2, v7, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_254F29300();
    v9 = a2;
    v10 = 1;
  }

  return sub_254EB2F04(v9, v10, 1, v11);
}

id sub_254EDAE74()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime16LocationProvider_contextDefinition];
  v3 = *MEMORY[0x277D1EA90];
  v4 = sub_254F28080();
  sub_254EB2D80(v4);
  (*(v5 + 104))(v2, v3);
  v6 = type metadata accessor for ContextDefinition();
  v7 = *(v6 + 24);
  v8 = *MEMORY[0x277D1EA10];
  v9 = sub_254F28050();
  sub_254EB2D80(v9);
  (*(v10 + 104))(&v2[v7], v8, v9);
  sub_254EB2F04(&v2[v7], 0, 1, v9);
  v11 = &v2[*(v6 + 20)];
  *v11 = 0xD00000000000002FLL;
  *(v11 + 1) = 0x8000000254F2DA30;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_254EDAFCC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LocationProvider()
{
  result = qword_281426AC0;
  if (!qword_281426AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDB068()
{
  result = type metadata accessor for ContextDefinition();
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

uint64_t sub_254EDB0F8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_254EDA7E4(a1);
  v5 = *(v2 + 8);

  return v5(v4);
}

uint64_t type metadata accessor for PointOfInterestProvider()
{
  result = qword_281426788;
  if (!qword_281426788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDB1CC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for PointOfInterestProvider();
  sub_254EB2D90(v3);
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = sub_254F291E0();
  v2[11] = v6;
  sub_254EB2CAC(v6);
  v2[12] = v7;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v10 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v10);
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v13 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v13);
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();
  v16 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v16);
  v18 = *(v17 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EDB360, 0, 0);
}

uint64_t sub_254EDB360()
{
  v86 = v0;
  sub_254ED1F44(*(v0 + 56), v0 + 16);
  if (!*(v0 + 40))
  {
    sub_254EDBA9C(v0 + 16);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v24 = *(v0 + 104);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);
    sub_254F284C0();
    sub_254EB2DC0();
    sub_254EDBBD0(v26, v25);
    v27 = sub_254F291D0();
    v28 = sub_254F296F0();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 96);
    v31 = *(v0 + 104);
    v32 = *(v0 + 88);
    v33 = *(v0 + 72);
    if (v29)
    {
      v83 = *(v0 + 104);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v85 = v35;
      *v34 = 136315138;
      v36 = sub_254F28070();
      v38 = v37;
      sub_254EDBB04(v33);
      v39 = sub_254EC2D74(v36, v38, &v85);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_254EAE000, v27, v28, "[%s] unable to get source data", v34, 0xCu);
      sub_254EB2BBC(v35);
      sub_254EB3C04();
      sub_254EB3C04();

      (*(v30 + 8))(v83, v32);
    }

    else
    {

      sub_254EDBB04(v33);
      (*(v30 + 8))(v31, v32);
    }

    v14 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v1 = *(v0 + 48);
  if (v1 && (v2 = [*(v0 + 48) placemark]) != 0 && (v3 = sub_254EDBB60(v2), v4))
  {
    v5 = v3;
    v6 = v4;
    v7 = *(v0 + 128);
    v82 = *(v0 + 136);
    v8 = *(v0 + 120);
    sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
    sub_254EB5144();
    v9 = sub_254F28120();
    sub_254EB2CAC(v9);
    v11 = *(v10 + 72);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_254F2AE00;
    v15 = sub_254F28440();
    v16 = v1;
    v17 = sub_254EB7F40(v15);
    v18 = swift_allocBox();
    *v19 = v5;
    v19[1] = v6;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D729B8], v17);
    *v7 = v18;
    v20 = *MEMORY[0x277D72A58];
    v21 = sub_254F29300();
    sub_254EB2D80(v21);
    (*(v22 + 104))(v7, v20, v21);
    sub_254EB2F04(v7, 0, 1, v21);
    v23 = sub_254F281F0();
    sub_254EB3CB0(v23);
    sub_254F280D0();
  }

  else
  {
    v40 = *(v0 + 112);
    v41 = *(v0 + 80);
    v42 = *(v0 + 64);
    sub_254F284C0();
    sub_254EB2DC0();
    sub_254EDBBD0(v42, v41);
    v43 = sub_254F291D0();
    v44 = sub_254F296F0();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 112);
    v48 = *(v0 + 88);
    v47 = *(v0 + 96);
    v49 = *(v0 + 80);
    if (v45)
    {
      v50 = swift_slowAlloc();
      v84 = v1;
      v85 = swift_slowAlloc();
      v51 = v85;
      *v50 = 136315138;
      v52 = sub_254F28070();
      v81 = v46;
      v54 = v53;
      sub_254EDBB04(v49);
      v55 = sub_254EC2D74(v52, v54, &v85);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_254EAE000, v43, v44, "[%s] could not get POI category", v50, 0xCu);
      sub_254EB2BBC(v51);
      v1 = v84;
      sub_254EB3C04();
      sub_254EB3C04();

      (*(v47 + 8))(v81, v48);
    }

    else
    {

      sub_254EDBB04(v49);
      (*(v47 + 8))(v46, v48);
    }

    v57 = *(v0 + 128);
    v56 = *(v0 + 136);
    v58 = *(v0 + 120);
    sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
    sub_254EB5144();
    v59 = sub_254F28120();
    sub_254EB2CAC(v59);
    v61 = *(v60 + 72);
    v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_254F2AE00;
    v64 = sub_254F28440();
    v65 = sub_254EB7F40(v64);
    v66 = swift_allocBox();
    *v67 = 0x6E776F6E6B6E75;
    v67[1] = 0xE700000000000000;
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x277D729B8], v65);
    *v57 = v66;
    v68 = *MEMORY[0x277D72A58];
    v69 = sub_254F29300();
    sub_254EB2D80(v69);
    (*(v70 + 104))(v57, v68, v69);
    sub_254EB2F04(v57, 0, 1, v69);
    v71 = sub_254F281F0();
    sub_254EB3CB0(v71);
    sub_254F280D0();
  }

LABEL_16:
  v73 = *(v0 + 128);
  v72 = *(v0 + 136);
  v75 = *(v0 + 112);
  v74 = *(v0 + 120);
  v76 = *(v0 + 104);
  v78 = *(v0 + 72);
  v77 = *(v0 + 80);

  v79 = *(v0 + 8);

  return v79(v14);
}

uint64_t sub_254EDBA08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254EDB1CC(a1);
}

uint64_t sub_254EDBA9C(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75EE68, &qword_254F2B4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254EDBB04(uint64_t a1)
{
  v2 = type metadata accessor for PointOfInterestProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254EDBB60(void *a1)
{
  v2 = [a1 category];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_254F29450();

  return v3;
}

uint64_t sub_254EDBBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EB5144();
  v6 = v5(v4);
  sub_254EB2D80(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_254EDBC2C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for SemanticLocationProvider();
  sub_254EB2D90(v3);
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = sub_254F291E0();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v9);
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v12);
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v15);
  v17 = *(v16 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EDBDC8, 0, 0);
}

uint64_t sub_254EDBDC8()
{
  v54 = v0;
  sub_254ED1F44(v0[7], (v0 + 2));
  if (v0[5])
  {
    if (swift_dynamicCast())
    {
      v1 = v0[6];
      if (v1)
      {
        v3 = v0[16];
        v2 = v0[17];
        v4 = v0[15];
        sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
        sub_254EB5144();
        v5 = *(sub_254F28120() - 8);
        v6 = *(v5 + 72);
        v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_254F2AE00;
        v9 = sub_254F28440();
        sub_254EB2F04(v2, 1, 1, v9);
        v10 = sub_254F292F0();
        v11 = swift_allocBox();
        v13 = v12;
        v14 = v1;
        *v13 = _CLPlaceInferenceUserSpecificPlaceType.contextValue.getter([v14 userType]);
        v13[1] = v15;
        (*(*(v10 - 8) + 104))(v13, *MEMORY[0x277D729B8], v10);
        *v3 = v11;
        v16 = *MEMORY[0x277D72A58];
        v17 = sub_254F29300();
        (*(*(v17 - 8) + 104))(v3, v16, v17);
        sub_254EB2F04(v3, 0, 1, v17);
        v18 = sub_254F281F0();
        sub_254EB2F04(v4, 1, 1, v18);
        sub_254F280D0();

        goto LABEL_13;
      }

      v35 = v0[14];
      v36 = v0[10];
      v37 = v0[8];
      sub_254F284C0();
      sub_254EB2DD8();
      v22 = sub_254F291D0();
      v23 = sub_254F296F0();
      v38 = os_log_type_enabled(v22, v23);
      v26 = v0[14];
      v27 = v0[11];
      v25 = v0[12];
      v28 = v0[10];
      if (v38)
      {
        swift_slowAlloc();
        v29 = sub_254EB79EC();
        v53 = v29;
        *v26 = 136315138;
        v39 = sub_254F28070();
        v41 = v40;
        sub_254EDC3E8(v28);
        v42 = sub_254EC2D74(v39, v41, &v53);

        *(v26 + 4) = v42;
        v34 = "[%s] could not get preferred name";
        goto LABEL_8;
      }

LABEL_11:

      sub_254EDC3E8(v28);
      (*(v25 + 8))(v26, v27);
      goto LABEL_12;
    }
  }

  else
  {
    sub_254EDBA9C((v0 + 2));
  }

  v19 = v0[13];
  v21 = v0[8];
  v20 = v0[9];
  sub_254F284C0();
  sub_254EB2DD8();
  v22 = sub_254F291D0();
  LOBYTE(v23) = sub_254F296F0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[12];
  v26 = v0[13];
  v27 = v0[11];
  v28 = v0[9];
  if (!v24)
  {
    goto LABEL_11;
  }

  swift_slowAlloc();
  v29 = sub_254EB79EC();
  v53 = v29;
  *v26 = 136315138;
  v30 = sub_254F28070();
  v32 = v31;
  sub_254EDC3E8(v28);
  v33 = sub_254EC2D74(v30, v32, &v53);

  *(v26 + 4) = v33;
  v34 = "[%s] unable to get source data";
LABEL_8:
  _os_log_impl(&dword_254EAE000, v22, v23, v34, v26, 0xCu);
  sub_254EB2BBC(v29);
  MEMORY[0x259C2EB80](v29, -1, -1);
  MEMORY[0x259C2EB80](v26, -1, -1);

  (*(v25 + 8))(v52, v27);
LABEL_12:
  v8 = MEMORY[0x277D84F90];
LABEL_13:
  v44 = v0[16];
  v43 = v0[17];
  v46 = v0[14];
  v45 = v0[15];
  v47 = v0[13];
  v49 = v0[9];
  v48 = v0[10];

  v50 = v0[1];

  return v50(v8);
}

uint64_t _CLPlaceInferenceUserSpecificPlaceType.contextValue.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1701670728;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 1802661719;
      break;
    case 2:
      result = 0x6C6F6F686353;
      break;
    case 3:
      result = 7174471;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t type metadata accessor for SemanticLocationProvider()
{
  result = qword_281426648;
  if (!qword_281426648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDC354(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_254ED1E08;

  return sub_254EDBC2C(a1);
}

uint64_t sub_254EDC3E8(uint64_t a1)
{
  v2 = type metadata accessor for SemanticLocationProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SiriRequestContextProvider()
{
  result = qword_281427430;
  if (!qword_281427430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EDC4B8()
{
  v0 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v0);
  v2 = *(v1 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v6);
  v8 = *(v7 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_254F28360();
  v13 = sub_254EB2D90(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v18);
  v20 = *(v19 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  v24 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v25 = [v24 Orchestration];
  swift_unknownObjectRelease();
  v26 = [v25 RequestContext];
  swift_unknownObjectRelease();
  v27 = sub_254ED633C(v26, 0, 0);

  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  sub_254EC8BC0(&unk_27F75EF00, &unk_254F2B660);
  v28 = *(sub_254F28120() - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_254F2AE00;
  sub_254EDC7A4(v17);
  sub_254F28460();
  v32 = sub_254F28440();
  sub_254EB7A0C(v23, v33, v34, v32);
  v35 = sub_254F29300();
  sub_254EB2F04(v11, 1, 1, v35);
  v36 = sub_254F281F0();
  sub_254EB2F04(v5, 1, 1, v36);
  sub_254F280D0();

  return v31;
}

void sub_254EDC7A4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_254EC8BC0(&qword_27F75EFD8, &qword_254F2B918);
  sub_254EB2D90(v4);
  v6 = *(v5 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v7);
  sub_254EB4020();
  v140 = v8;
  v9 = sub_254F28320();
  v10 = *(v9 - 8);
  v148 = v9;
  v149 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v147 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254EC8BC0(&qword_27F75EFE0, &qword_254F2B920);
  sub_254EB2D90(v13);
  v15 = *(v14 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v16);
  sub_254EB4020();
  v139 = v17;
  v18 = sub_254EC8BC0(&qword_27F75EFE8, &qword_254F2B928);
  sub_254EB2D90(v18);
  v20 = *(v19 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v21);
  sub_254EB4020();
  v142 = v22;
  v23 = sub_254EC8BC0(&qword_27F75EFF0, &qword_254F2B930);
  sub_254EB2D90(v23);
  v25 = *(v24 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v26);
  v28 = v104 - v27;
  v29 = sub_254EC8BC0(&qword_27F75EFF8, &qword_254F2B938);
  sub_254EB2D90(v29);
  v31 = *(v30 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v32);
  sub_254EB4020();
  v141 = v33;
  v34 = sub_254EDD60C(v2, &selRef_sessionID);
  v137 = v35;
  v138 = v34;
  v136 = sub_254EDD60C(v2, &selRef_requestID);
  v135 = v36;
  v134 = sub_254EDD60C(v2, &selRef_inputOrigin);
  v133 = v37;
  v132 = sub_254EDD60C(v2, &selRef_responseMode);
  v131 = v38;
  v130 = [v2 isEyesFree];
  v129 = [v2 isMultiUser];
  v128 = [v2 isVoiceTriggerEnabled];
  v127 = [v2 isTextToSpeechEnabled];
  v126 = [v2 isTriggerlessFollowup];
  v39 = [v2 deviceRestrictions];
  v125 = sub_254F29560();

  v40 = [v2 bargeInModes];
  v124 = sub_254F29560();

  v41 = [v2 identifiedUser];
  if (v41)
  {
    sub_254EDD5A0(v41, &selRef_userID);
  }

  v42 = [v2 identifiedUser];
  if (v42)
  {
    v43 = v42;
    [v42 isOnlyUserInHome];
  }

  v44 = [v2 identifiedUser];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 classification];

    sub_254EDD3F0(v46, v28);
    v47 = sub_254F282E0();
    v48 = 0;
  }

  else
  {
    v47 = sub_254F282E0();
    v48 = 1;
  }

  sub_254EB2F04(v28, v48, 1, v47);
  v49 = v141;
  sub_254F282F0();
  v50 = sub_254F28300();
  sub_254EB7A0C(v49, v51, v52, v50);
  v123 = sub_254EDD4F8(v2);
  v122 = v53;
  v121 = sub_254EDD60C(v2, &selRef_countryCode);
  v120 = v54;
  v119 = sub_254EDD60C(v2, &selRef_siriLocale);
  v118 = v55;
  v56 = sub_254EB6D60();
  v57 = v56;
  if (v56)
  {
    [v56 appRestriction];
  }

  v58 = sub_254EB6D60();
  if (v58)
  {
    sub_254EDD5A0(v58, &selRef_countryCode);
  }

  v59 = sub_254EB6D60();
  v60 = v59;
  if (v59)
  {
    [v59 movieRestriction];
  }

  v61 = sub_254EB6D60();
  v62 = v61;
  if (v61)
  {
    [v61 tvRestriction];
  }

  v156 = v57 == 0;
  v155 = v60 == 0;
  v154 = v62 == 0;
  v63 = v142;
  sub_254F282C0();
  v64 = sub_254F282D0();
  sub_254EB7A0C(v63, v65, v66, v64);
  [v2 uiScale];
  v117 = sub_254EDD60C(v2, &selRef_temperatureUnit);
  v116 = v67;
  v115 = [v2 allowUserGeneratedContent];
  v114 = [v2 censorSpeech];
  v68 = sub_254EB6A88();
  if (v68)
  {
    v113 = sub_254EDD5A0(v68, &selRef_givenName);
    v112 = v69;
  }

  else
  {
    v113 = 0;
    v112 = 0;
  }

  v70 = sub_254EB6A88();
  if (v70)
  {
    v111 = sub_254EDD5A0(v70, &selRef_middleName);
    v110 = v71;
  }

  else
  {
    v111 = 0;
    v110 = 0;
  }

  v72 = sub_254EB6A88();
  if (v72)
  {
    v109 = sub_254EDD5A0(v72, &selRef_familyName);
    v108 = v73;
  }

  else
  {
    v109 = 0;
    v108 = 0;
  }

  v74 = sub_254EB6A88();
  if (v74)
  {
    v107 = sub_254EDD5A0(v74, &selRef_nickName);
    v106 = v75;
  }

  else
  {
    v107 = 0;
    v106 = 0;
  }

  v76 = sub_254EB6A88();
  if (v76)
  {
    v77 = sub_254EDD5A0(v76, &selRef_fullName);
    v105 = v78;
  }

  else
  {
    v77 = 0;
    v105 = 0;
  }

  v79 = sub_254EB6A88();
  v80 = MEMORY[0x277D84F90];
  if (!v79)
  {
    goto LABEL_43;
  }

  v81 = v79;
  v104[2] = v77;
  v82 = [v79 addresses];

  sub_254EDD55C();
  v83 = sub_254F29560();

  v84 = sub_254EC5594(v83);
  if (!v84)
  {

LABEL_43:
    v95 = v139;
    sub_254F28330();
    v96 = sub_254F28340();
    sub_254EB7A0C(v95, v97, v98, v96);
    v99 = [v2 deviceIdiom];
    v100 = v140;
    sub_254EDD474(v99, v140);
    v101 = sub_254F282B0();
    sub_254EB7A0C(v100, v102, v103, v101);
    [v2 didPSCFire];
    sub_254F28350();
    return;
  }

  v85 = v84;
  v153 = v80;
  sub_254ECA69C(0, v84 & ~(v84 >> 63), 0);
  if ((v85 & 0x8000000000000000) == 0)
  {
    v104[0] = v2;
    v104[1] = a1;
    v86 = 0;
    v87 = v153;
    v143 = v149 + 32;
    v144 = v83 & 0xC000000000000001;
    v145 = v85;
    v146 = v83;
    do
    {
      v152 = v87;
      if (v144)
      {
        v88 = MEMORY[0x259C2E0D0](v86, v83);
      }

      else
      {
        v88 = *(v83 + 8 * v86 + 32);
      }

      v89 = v88;
      v90 = sub_254EDD60C(v88, &selRef_label);
      v150 = v91;
      v151 = v90;
      sub_254EDD60C(v89, &selRef_street);
      sub_254EDD60C(v89, &selRef_city);
      sub_254EDD60C(v89, &selRef_state);
      sub_254EDD60C(v89, &selRef_postalCode);
      sub_254EDD60C(v89, &selRef_countryCode);
      v92 = v147;
      sub_254F28310();

      v87 = v152;
      v153 = v152;
      v94 = *(v152 + 16);
      v93 = *(v152 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_254ECA69C(v93 > 1, v94 + 1, 1);
        v87 = v153;
      }

      ++v86;
      *(v87 + 16) = v94 + 1;
      (*(v149 + 32))(v87 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v94, v92, v148);
      v83 = v146;
    }

    while (v145 != v86);

    v2 = v104[0];
    goto LABEL_43;
  }

  __break(1u);
}

uint64_t sub_254EDD394()
{
  v1 = sub_254EDC4B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_254EDD3F0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_254F282E0();
  sub_254EB3CD0(v4);
  v6 = *(v5 + 104);
  if ((a1 - 1) > 3)
  {
    v7 = MEMORY[0x277D1EF50];
  }

  else
  {
    v7 = qword_2797B4930[a1 - 1];
  }

  v8 = *v7;

  return v6(a2, v8);
}

uint64_t sub_254EDD474@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_254F282B0();
  sub_254EB3CD0(v4);
  v6 = *(v5 + 104);
  if ((a1 - 1) > 9)
  {
    v7 = MEMORY[0x277D1EF38];
  }

  else
  {
    v7 = qword_2797B4950[a1 - 1];
  }

  v8 = *v7;

  return v6(a2, v8);
}

uint64_t sub_254EDD4F8(void *a1)
{
  v1 = [a1 encodedLocation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F27900();

  return v3;
}

unint64_t sub_254EDD55C()
{
  result = qword_27F75F000;
  if (!qword_27F75F000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F75F000);
  }

  return result;
}

uint64_t sub_254EDD5A0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_254F29450();

  return v4;
}

uint64_t sub_254EDD60C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_254F29450();

  return v4;
}

uint64_t sub_254EDD66C(uint64_t a1, uint64_t a2)
{
  sub_254EC8BC0(&qword_27F75F090, "P<");
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_254EDD6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950]();
}

id sub_254EDD718()
{
  ObjectType = swift_getObjectType();
  v18 = sub_254F29770();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v18);
  sub_254EB3AB8();
  v5 = v4 - v3;
  v6 = sub_254F29760();
  v7 = sub_254EB2D80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_254EB3AB8();
  v10 = sub_254F293A0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_254EB3AB8();
  v12 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_type;
  v13 = *MEMORY[0x277D1EA10];
  v14 = sub_254F28050();
  sub_254EB2D80(v14);
  (*(v15 + 104))(&v0[v12], v13);
  *&v0[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_locationManager] = 0;
  sub_254EB48D8(0, &qword_281426098, 0x277D85C78);
  sub_254F29390();
  v21 = MEMORY[0x277D84F90];
  sub_254EDEF28();
  sub_254EC8BC0(&qword_27F75F098, qword_254F2B9D0);
  sub_254EDEF80();
  sub_254F298A0();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v18);
  *&v0[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_queue] = sub_254F29780();
  v20.receiver = v0;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  sub_254EDD9A4();

  return v16;
}

uint64_t sub_254EDD9A4()
{
  v1 = sub_254F291E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_queue];
  objc_allocWithZone(MEMORY[0x277CBFC10]);
  v7 = v6;
  v8 = v0;
  v9 = sub_254EDEDB8(0xD000000000000034, 0x8000000254F2DB40, v0, v6);
  if (v9)
  {
    v10 = *&v8[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_locationManager];
    *&v8[OBJC_IVAR____TtC30IntelligenceFlowContextRuntime28PlaceInferenceSourceProvider_locationManager] = v9;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    sub_254F284C0();
    v11 = v8;
    v12 = sub_254F291D0();
    v13 = sub_254F29700();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = sub_254F28040();
      v18 = sub_254EC2D74(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_254EAE000, v12, v13, "[%s] couldn't create CLLocationManager", v14, 0xCu);
      sub_254EB2BBC(v15);
      MEMORY[0x259C2EB80](v15, -1, -1);
      MEMORY[0x259C2EB80](v14, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }
}