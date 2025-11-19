uint64_t sub_18E35231C()
{
  sub_18E1D5DF0();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E35237C()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

void Catalog.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.fm.language.gp_query_handling.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  v2[3] = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  v2[4] = v25;
  v2[5] = 0;
  sub_18E1E2998();
  sub_18E1C6234(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  v2[14] = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Model.VisualGenerationQueryHandlingLite.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.gp_query_handling.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CFAE8(v25);
  sub_18E1E38BC();
  Catalog.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer.init()();
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 232) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.Tokenizer.AFMTextInstruct300MTokenizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CAE98("com.apple.fm.language.instruct_300m.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1E2640(v25);
  *(v2 + 48) = 1;
  sub_18E1EA008();
  *(v2 + 56) = &unk_1F011E308;
  *(v2 + 64) = v0;
  sub_18E1CC428(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1D5F68(v26, xmmword_18E4B0120);
  sub_18E232D14();
  v28 = sub_18E1C9574(v27);
  *(v28 + 64) = v29 | 0x400;
  *(v28 + 72) = v30;
  v31 = sub_18E1C6924(v28);
  *(v31 + 112) = v32;
  *(v31 + 120) = v33;
  *(v2 + 112) = v31;
  sub_18E224118();
}

void Catalog.Tokenizer.AFMTextInstructEnglish49k.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2287B8("com.apple.fm.language.instruct_3b.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1E2640(v25);
  *(v2 + 48) = 1;
  sub_18E1EA008();
  *(v2 + 56) = &unk_1F011E6F8;
  *(v2 + 64) = v0;
  sub_18E1CC428(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.Tokenizer.AFMTextInstruct85MTokenizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.instruct_85m.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1E2640(v25);
  sub_18E1E2998();
  sub_18E1C6234(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1D5F68(v26, xmmword_18E4B0120);
  sub_18E232D14();
  v28 = sub_18E1C9574(v27);
  *(v28 + 64) = v29 | 0x400;
  *(v28 + 72) = v30;
  v31 = sub_18E1C6924(v28);
  *(v31 + 112) = v32;
  *(v31 + 120) = v33;
  *(v2 + 112) = v31;
  sub_18E224118();
}

void Catalog.LLM.Model.PQAVerificationBase.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2287B8("com.apple.fm.language.pqa_verification.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CFAE8(v25);
  sub_18E1E38BC();
  Catalog.Tokenizer.AFMTextInstructEnglish49k.init()();
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 232) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

uint64_t Catalog.LLM.Model.SummarizationTextSummarizerBase.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E2BC8("com.apple.fm.language.summarization.text_summarizer.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v17);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.Tokenizer.InstructServerTokenizer.init()();
  sub_18E1E1130();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[29] = result;
  return result;
}

uint64_t Catalog.Tokenizer.FoundationModelsPlatformDummyTokenizer.init()@<X0>(void *a1@<X8>)
{
  sub_18E224564("com.apple.foundationmodelsplatform.dummy_tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8610 != -1)
  {
    sub_18E1E1724();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v21);

  sub_18E36A354();
  a1[4] = v13;
  a1[5] = 0;
  sub_18E1E2998();
  sub_18E221C7C(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E200620(v14, xmmword_18E4B0120);
  v17 = sub_18E1C5B9C(v15, v16 | 0x312E0000u);
  *(v17 + 80) = 3;
  *(v17 + 88) = v18;
  *(v17 + 96) = v19;
  *(v17 + 104) = 5;
  return sub_18E1E397C(v17, v18);
}

uint64_t Catalog.LLM.Model.FoundationModelsPlatformBase.init()@<X0>(void *a1@<X8>)
{
  sub_18E221EDC("com.apple.foundationmodelsplatform.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8610 != -1)
  {
    sub_18E1E1724();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v20);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.Tokenizer.FoundationModelsPlatformDummyTokenizer.init()(v14);
  sub_18E1E1130();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C5B9C(v16, 825112114);
  *(result + 80) = 3;
  *(result + 88) = v18;
  *(result + 96) = v19;
  *(result + 104) = 5;
  *(result + 112) = v18;
  *(result + 120) = v19;
  a1[29] = result;
  return result;
}

uint64_t Catalog.LLM.Model.NLRouterBase.executionContexts.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void Catalog.Tokenizer.NLRouterTokenizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E221EDC("com.apple.if.planner.nlrouter.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E25E1CC(v25);
  sub_18E21D144(v26);
  *(v2 + 112) = sub_18E363044();
  sub_18E224118();
}

void Catalog.LLM.Model.NLRouterBase.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E22197C("com.apple.if.planner.nlrouter.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E1CFAE8(v25);
  sub_18E1D491C();
  Catalog.Tokenizer.NLRouterTokenizer.init()();
  sub_18E1CEAE4();
  *(v2 + 232) = sub_18E363044();
  sub_18E224118();
}

uint64_t Catalog.Tokenizer.ChatGPTTokenizer.init()@<X0>(void *a1@<X8>)
{
  sub_18E22197C("com.apple.openai.chatgpt.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89C0 != -1)
  {
    sub_18E1D45A8();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v17);

  sub_18E36A354();
  a1[4] = v13;
  a1[5] = 0;
  sub_18E1E2998();
  sub_18E221C7C(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1C6050(v14, xmmword_18E4B0120);
  v15[6].n128_u8[8] = 5;
  return sub_18E1E397C(v15, 3288626);
}

uint64_t sub_18E353C1C@<X0>(uint64_t (*a1)(_BYTE *, uint64_t *)@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (v2 + 80), sizeof(__dst));
  memcpy(a2, (v2 + 80), 0x78uLL);
  return a1(__dst, &v6);
}

uint64_t Catalog.LLM.Model.ChatGPT.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89C0 != -1)
  {
    sub_18E1D45A8();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v19);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E1E38BC();
  Catalog.Tokenizer.ChatGPTTokenizer.init()(v15);
  sub_18E1E1130();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1E8670();
  v17 = sub_18E1D4A58(v16, xmmword_18E4B0120);
  result = sub_18E1C61FC(v17);
  *(result + 104) = 5;
  *(result + 112) = 3288626;
  *(result + 120) = 0xE300000000000000;
  a1[29] = result;
  return result;
}

uint64_t sub_18E353E2C()
{
  sub_18E1D5DF0();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E353E8C()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

__n128 *Catalog.LLM.ServerConfiguration.AccessibilityMagnifier.init()()
{
  sub_18E1E14E8("com.apple.gm.server.instruct_server_v1.accessibility_magnifier");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.AnswerSynthesisServer.init()()
{
  sub_18E1CD790("com.apple.gm.server.instruct_server_v1.answer_synthesis");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

uint64_t Catalog.LLM.ServerConfiguration.InstructServerAutograder.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1C9790("com.apple.gm.server.instruct_server_v1.autograder");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  v3 = sub_18E200620(v2, xmmword_18E49DA90);
  result = sub_18E1C5B9C(v3, v4 | 0x312E0000u);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.InstructServerBase.init()()
{
  sub_18E2287B8("com.apple.gm.server.instruct_server_v1.base");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerBulletsTransform.init()()
{
  sub_18E1E2BC8("com.apple.gm.server.instruct_server_v1.bullets_transform");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerConciseTone.init()()
{
  sub_18E1CA5FC("com.apple.gm.server.instruct_server_v1.concise_tone");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerDescribeYourEdit.init()()
{
  sub_18E1CA2E4("com.apple.gm.server.instruct_server_v1.describe_your_edit");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerFitnessWorkoutVoice.init()()
{
  sub_18E1E6C30("com.apple.gm.server.instruct_server_v1.fitness_workout_voice");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerFriendlyTone.init()()
{
  sub_18E1E3068("com.apple.gm.server.instruct_server_v1.friendly_tone");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.JournalFollowUpPrompts.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CDA14("com.apple.gm.server.instruct_server_v1.journal_followup_prompts");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C56A0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.LWPlannerV1.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E3068("com.apple.gm.server.instruct_server_v1.lw_planner_v1");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C56A0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.ServerMagicRewrite.init()()
{
  sub_18E1E3068("com.apple.gm.server.instruct_server_v1.magic_rewrite");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerMailReplyLongFormBasic.init()()
{
  sub_18E1DD378("com.apple.gm.server.instruct_server_v1.mail_reply_long_form_basic");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerMailReplyLongFormRewrite.init()()
{
  sub_18E1CD5B0("com.apple.gm.server.instruct_server_v1.mail_reply_long_form_rewrite");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerMailReplyQA.init()()
{
  sub_18E1E3068("com.apple.gm.server.instruct_server_v1.mail_reply_qa");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

uint64_t Catalog.LLM.ServerConfiguration.MessagesUserRequest.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E6C30("com.apple.gm.server.instruct_server_v1.messages_user_request");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  v3 = sub_18E1E87E8(v2, xmmword_18E49D9C0);
  result = sub_18E1C5854(v3, v4 | 0x322E0000u);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.MMGuardSafetyGuardrailServer.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1D7E90("com.apple.gm.server.instruct_server_v1.mm_guard");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C56A0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.OpenEndedInteraction.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CF4B4("com.apple.gm.server.instruct_server_v1.open_ended_interaction");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C56A0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.OpenEndedReflection.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E6C30("com.apple.gm.server.instruct_server_v1.open_ended_reflection");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C56A0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.OpenEndedSchema.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E2BC8("com.apple.gm.server.instruct_server_v1.open_ended_schema");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  result = sub_18E1C6050(v2, xmmword_18E49D9C0);
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.LLM.ServerConfiguration.OpenEndedTone.init()()
{
  sub_18E1E1000("com.apple.gm.server.instruct_server_v1.open_ended_tone");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  v1 = sub_18E1C6050(v0, xmmword_18E4B0120);
  return sub_18E1C6594(v1);
}

__n128 *Catalog.LLM.ServerConfiguration.OpenEndedToneBase.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E122C("com.apple.gm.server.instruct_server_v1.open_ended_tone_base");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  result = sub_18E1C6050(v2, xmmword_18E49D9C0);
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.LLM.ServerConfiguration.OpenEndedToneQueryResponse.init()()
{
  sub_18E1DD5AC("com.apple.gm.server.instruct_server_v1.open_ended_tone_query_response");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  v1 = sub_18E1C6050(v0, xmmword_18E4B0120);
  return sub_18E1C6594(v1);
}

uint64_t Catalog.LLM.ServerConfiguration.OpenEndedToneQueryResponseV2.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E22187C("com.apple.gm.server.instruct_server_v1.open_ended_tone_query_response_v2");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  v3 = sub_18E1E87E8(v2, xmmword_18E49D9C0);
  result = sub_18E1C5854(v3, v4 | 0x342E0000u);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.ServerPersonalizedSmartReply.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CDA14("com.apple.gm.server.instruct_server_v1.personalized_smart_reply");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C56A0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosCommon.init()()
{
  sub_18E1E3068("com.apple.gm.server.instruct_server_v1.photos_common");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCuration.init()()
{
  sub_18E1DD5AC("com.apple.gm.server.instruct_server_v1.photos_memories_asset_curation");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCurationV2.init()()
{
  sub_18E22187C("com.apple.gm.server.instruct_server_v1.photos_memories_asset_curation_v2");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraits.init()()
{
  sub_18E1E67EC("com.apple.gm.server.instruct_server_v1.photos_memories_global_traits");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV2.init()()
{
  sub_18E1E3730("com.apple.gm.server.instruct_server_v1.photos_memories_global_traits_v2");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

uint64_t Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV3.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E3730("com.apple.gm.server.instruct_server_v1.photos_memories_global_traits_v3");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  v3 = sub_18E1E87E8(v2, xmmword_18E49D9C0);
  result = sub_18E1C5854(v3, v4 | 0x342E0000u);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstanding.init()()
{
  sub_18E1EA578("com.apple.gm.server.instruct_server_v1.photos_memories_query_understanding");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV2.init()()
{
  sub_18E1E3640("com.apple.gm.server.instruct_server_v1.photos_memories_query_understanding_v2");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV3.init()()
{
  sub_18E1E3640("com.apple.gm.server.instruct_server_v1.photos_memories_query_understanding_v3");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationStoryteller.init()()
{
  sub_18E2204EC("com.apple.gm.server.instruct_server_v1.photos_memories_storyteller");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationStorytellerV2.init()()
{
  sub_18E1DD5AC("com.apple.gm.server.instruct_server_v1.photos_memories_storyteller_v2");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

uint64_t Catalog.LLM.ServerConfiguration.Planner.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CEA18("com.apple.gm.server.instruct_server_v1.planner");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1E8670();
  v3 = sub_18E1D5F68(v2, xmmword_18E4B0120);
  result = sub_18E1C63E8(v3);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.PlannerV2.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1C9790("com.apple.gm.server.instruct_server_v1.planner_v2");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  result = sub_18E1C5108(v2, xmmword_18E49D9C0);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.PlannerV3.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1C9790("com.apple.gm.server.instruct_server_v1.planner_v3");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  result = sub_18E1C5108(v2, xmmword_18E49D9C0);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.PlannerV7.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1C9790("com.apple.gm.server.instruct_server_v1.planner_v7");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C6434(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.PlannerV8.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1C9790("com.apple.gm.server.instruct_server_v1.planner_v8");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1CA1C0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.PlannerV9.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1C9790("com.apple.gm.server.instruct_server_v1.planner_v9");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1CA1C0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.ServerPQAVerification.init()()
{
  sub_18E1CD790("com.apple.gm.server.instruct_server_v1.pqa_verification");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerProfessionalTone.init()()
{
  sub_18E1E2BC8("com.apple.gm.server.instruct_server_v1.professional_tone");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerProofreadingReview.init()()
{
  sub_18E1CF6C8("com.apple.gm.server.instruct_server_v1.proofreading_review");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.RemindersAutoCategorizeList.init()()
{
  sub_18E1E2CD0("com.apple.gm.server.instruct_server_v1.reminders_auto_categorized_list");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.ResponseGeneration.init()()
{
  sub_18E1CF6C8("com.apple.gm.server.instruct_server_v1.response_generation");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ResponseGenerationV2.init()()
{
  sub_18E1CF4B4("com.apple.gm.server.instruct_server_v1.response_generation_v2");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ResponseGenerationV3.init()()
{
  sub_18E1CF4B4("com.apple.gm.server.instruct_server_v1.response_generation_v3");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

uint64_t Catalog.LLM.ServerConfiguration.ResponseGenerationV7.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CF4B4("com.apple.gm.server.instruct_server_v1.response_generation_v7");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  v3 = sub_18E1E87E8(v2, xmmword_18E49D9C0);
  result = sub_18E1C5854(v3, v4 | 0x342E0000u);
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.LLM.ServerConfiguration.ResponseGenerationV8.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CF4B4("com.apple.gm.server.instruct_server_v1.response_generation_v8");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF518();
  v3 = sub_18E1E87E8(v2, xmmword_18E49D9C0);
  result = sub_18E1C5854(v3, v4 | 0x342E0000u);
  *(a1 + 112) = result;
  return result;
}

uint64_t Catalog.LLM.ServerConfiguration.SearchQueryUnderstandingServer.init()()
{
  sub_18E1DD378("com.apple.gm.server.instruct_server_v1.search_query_understanding");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  v1 = sub_18E1C6050(v0, xmmword_18E4B0120);
  return sub_18E1C6594(v1);
}

__n128 *Catalog.LLM.ServerConfiguration.ShortcutsAskAFMAction.init()()
{
  sub_18E1CDA14("com.apple.gm.server.instruct_server_v1.shortcuts_ask_afm_action");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.ShortcutsAskAFMActionV2.init()()
{
  sub_18E2204EC("com.apple.gm.server.instruct_server_v1.shortcuts_ask_afm_action_v2");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerStructuredExtraction.init()()
{
  sub_18E1E6C30("com.apple.gm.server.instruct_server_v1.structured_extraction");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF518();
  return sub_18E1C8B30(v0, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.ServerConfiguration.STXMultimodal.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1D6378("com.apple.gm.server.instruct_server_v1.stx_multimodal");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF1F8();
  result = sub_18E1D0130(v2, xmmword_18E49D9B0);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.SuperAutofillMultimodal.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CC500("com.apple.gm.server.instruct_server_v1.super_autofill_multimodal");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C56A0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

__n128 *Catalog.LLM.ServerConfiguration.ServerTablesTransform.init()()
{
  sub_18E1CD790("com.apple.gm.server.instruct_server_v1.tables_transform");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.ServerTakeawaysTransform.init()()
{
  sub_18E1CF6C8("com.apple.gm.server.instruct_server_v1.takeaways_transform");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

__n128 *Catalog.LLM.ServerConfiguration.SummarizationTextSummarizer.init()()
{
  sub_18E1E1000("com.apple.gm.server.instruct_server_v1.text_summarizer");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

uint64_t Catalog.LLM.ServerConfiguration.VisualIntelligence.init()()
{
  sub_18E1CF6C8("com.apple.gm.server.instruct_server_v1.visual_intelligence");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  v1 = sub_18E1C6050(v0, xmmword_18E4B0120);
  return sub_18E1C6594(v1);
}

__n128 *Catalog.LLM.ServerConfiguration.FinancialInsights.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E1000("com.apple.gm.server.instruct_server_v1.wallet_insights");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = sub_18E1CF89C();
  result = sub_18E1C56A0(v2, xmmword_18E49DA90);
  *(a1 + 112) = result;
  return result;
}

double sub_18E356B1C()
{
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_18E49D9C0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 808335409;
  *(v0 + 48) = 0xE400000000000000;
  *(v0 + 56) = 2;
  *(v0 + 64) = 808334641;
  *(v0 + 72) = 0xE400000000000000;
  *(v0 + 80) = 3;
  *(v0 + 88) = 808334898;
  *(v0 + 96) = 0xE400000000000000;
  return result;
}

void Catalog.LLM.ServerConfiguration.NLRouterBase.init()(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  v3 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v3);
  sub_18E356B1C();
  a1[14] = v4;
}

__n128 *Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationBase.init()()
{
  sub_18E1C9790("com.apple.gm.server.photos_memories_creation.base");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

uint64_t Catalog.LLM.ServerConfiguration.PrivateCloudResearchAdapter.init()()
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v0);
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v1 = sub_18E1E8670();
  v2 = sub_18E1E87E8(v1, xmmword_18E4B0120);
  v4 = sub_18E1C2A1C(v2, v3 | 0x312E0000u);
  v5 = sub_18E208050(v4, 3);
  return sub_18E1C6594(v5);
}

__n128 *Catalog.LLM.ServerConfiguration.SummarizationTextSummarizerAjaxBase.init()()
{
  sub_18E1E1000("com.apple.gm.server.summarization.summarizer_ajax.base");
  sub_18E1D5C30(MEMORY[0x1E69E7CD0]);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1E8670();
  return sub_18E1C6C38(v0, xmmword_18E4B0120);
}

uint64_t Catalog.ModelConfigurationReplacement.All.executionContexts.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void Catalog.ModelConfigurationReplacement.All.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E221EDC("com.apple.gm.overrides.model_config.all");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

__n128 *Catalog.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets.init()@<X0>(void *a1@<X8>)
{
  sub_18E2204EC("com.apple.fm.coremotion.calorimetry_fm_predicted_wrmets_v1.adaptor");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8998 != -1)
  {
    sub_18E247034();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E1CA740(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF1F8();
  result = sub_18E1D0130(v14, v17);
  a1[14] = result;
  return result;
}

__n128 *Catalog.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E14E8("com.apple.fm.coremotion.calorimetry_reduced_embeddings.adaptor");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8998 != -1)
  {
    sub_18E247034();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E1CA740(v13);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF1F8();
  result = sub_18E1D0130(v14, v17);
  a1[14] = result;
  return result;
}

__n128 *Catalog.Motion.Model.CoreMotionIMUFoundationModel.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8998 != -1)
  {
    sub_18E247034();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E1CA740(v14);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  result = sub_18E1D0130(v15, v18);
  a1[14] = result;
  return result;
}

__n128 *Catalog.Motion.Model.Pednet.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89B8 != -1)
  {
    swift_once();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  result = sub_18E1D0130(v15, v18);
  a1[14] = result;
  return result;
}

void Catalog.PromptAllowList.DeltaLexiconInputPromptAllowList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.gm.prompt_allow_list.input.delta_lexicon");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

__n128 *Catalog.SecureAnalytics.Model.IntegrityDiagnoseModel.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3B30("com.apple.fm.integrity_diagnose.sa_v1.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8630 != -1)
  {
    swift_once();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E1D4D90(v13, 0x22E0u);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF1F8();
  result = sub_18E1D0130(v14, v17);
  a1[14] = result;
  return result;
}

void Catalog.TokenInputDenyList.ADMBackgroundPromptInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.gm.safety_deny.input.adm_background_prompt");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.AskGenerativeModelActionInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.gm.safety_deny.input.ask_generative_model_action");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsBulletsTransformInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1FF2E8("com.apple.gm.safety_deny.input.bullets_transform");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.CodeIntelligenceBaseInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  *v2 = 0xD000000000000035;
  v2[1] = v3;
  sub_18E1CA5A4();
  v2[2] = v5;
  v2[3] = v4;
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v6 = sub_18E1D0404();
  sub_18E1E3EA0(v6, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v2[4] = sub_18E36A8EC(v6);
  v7 = sub_18E1D49D0();
  sub_18E1D8010(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  v2[5] = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v17, v18, v19, v20, v21, v22, v23, v24);
  v25 = sub_18E1D0038();
  sub_18E1CF330(v25, v26);

  sub_18E36A354();
  v2[6] = v27;
  v2[7] = 0;
  *(v2 + 61) = 0;
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v28 = sub_18E1CF518();
  v29 = sub_18E1E87E8(v28, xmmword_18E49D9C0);
  v2[16] = sub_18E1C5854(v29, v30 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsConciseToneInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2287B8("com.apple.gm.safety_deny.input.concise_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.gm.safety_deny.input.foundation_models_framework.api");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  v2[3] = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  v2[4] = v25;
  v2[5] = 0;
  sub_18E1E31C4();
  v2[7] = &unk_1F0120040;
  v2[8] = v0;
  sub_18E1CC428(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6788(v26, xmmword_18E4B0120);
  v27[6].n128_u8[8] = 3;
  sub_18E1E397C(v27, v28);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsFriendlyToneInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.gm.safety_deny.input.friendly_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.GenerativeAssistantCompositionInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CDA14("com.apple.gm.safety_deny.input.generative_assistant.composition");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.GenerativeAssistantKnowledgeInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF4B4("com.apple.gm.safety_deny.input.generative_assistant.knowledge");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.GenerativeAssistantKnowledgeFallbackInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2CD0("com.apple.gm.safety_deny.input.generative_assistant.knowledge_fallback");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E6C30("com.apple.gm.safety_deny.input.generative_assistant.media_qa");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.GenerativeAssistantVisualIntelligenceCameraInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  sub_18E223F08(v26);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C5888(v27, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsMagicRewriteInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.gm.safety_deny.input.magic_rewrite");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.MailReplyLongFormBasicInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA2E4("com.apple.gm.safety_deny.input.mail_reply.long_form_basic");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.MailReplyLongFormQAInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E1000("com.apple.gm.safety_deny.input.mail_reply.long_form_qa");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.MailReplyLongFormRewriteInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.gm.safety_deny.input.mail_reply.long_form_rewrite");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.PersonalizedSmartReplyInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.gm.safety_deny.input.mail_reply.personalized_smart_reply");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.MailReplySnippetInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.gm.safety_deny.input.mail_reply.snippet");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.MessagesActionBaseInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CEA18("com.apple.gm.safety_deny.input.messages_action");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.MessagesReplyBaseInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.gm.safety_deny.input.messages_reply.all");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.MessagesReplyWatchInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.gm.safety_deny.input.messages_reply.watch");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1D0130(v26, xmmword_18E49DA90);
  sub_18E1CFF78(v27, v28);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.OpenEndedInteractionInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.gm.safety_deny.input.open_ended_interaction");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.OpenEndedReflectionInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.gm.safety_deny.input.open_ended_reflection");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsOpenEndedSchemaInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1FF2E8("com.apple.gm.safety_deny.input.open_ended_schema");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsOpenEndedToneInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CEA18("com.apple.gm.safety_deny.input.open_ended_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6050(v26, xmmword_18E4B0120);
  sub_18E1C6594(v27);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsOpenEndedToneBaseInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.gm.safety_deny.input.open_ended_tone_base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF4B4("com.apple.gm.safety_deny.input.open_ended_tone_query_response");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6050(v26, xmmword_18E4B0120);
  sub_18E1C6594(v27);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseV2InputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CC500("com.apple.gm.safety_deny.input.open_ended_tone_query_response_v2");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.PhotosMemoriesCreationBaseInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.gm.safety_deny.input.photos_memories.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.PhotosMemoriesCreationGlobalTraitInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.gm.safety_deny.input.photos_memories.global_trait");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.PhotosMemoriesCreationStoryTitleInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.gm.safety_deny.input.photos_memories.story_title");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.PhotosMemoriesCreationUserQueryInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA2E4("com.apple.gm.safety_deny.input.photos_memories.user_query");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsProfessionalToneInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1FF2E8("com.apple.gm.safety_deny.input.professional_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsProofreadingReviewInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.gm.safety_deny.input.proofreading_review");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.ShortcutsAskAFMActionInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.gm.safety_deny.input.shortcuts_ask_afm_action");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.ShortcutsAskAFMAction3BInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.gm.safety_deny.input.shortcuts_ask_afm_action_3b");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SummarizationKitBaseInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.gm.safety_deny.input.summarization.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SummarizationKitCUSummaryInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.gm.safety_deny.input.summarization.cu_summary");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SummarizationKitCUSummaryOnDemandInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1DD378("com.apple.gm.safety_deny.input.summarization.cu_summary.on_demand");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SummarizationKitCUSummaryProactiveInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1DD378("com.apple.gm.safety_deny.input.summarization.cu_summary.proactive");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SummarizationKitCUUrgencyInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.gm.safety_deny.input.summarization.cu_urgency");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SummarizationKitTextAssistantInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.gm.safety_deny.input.summarization.text_assistant");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SummarizationKitVisualIntelligenceCameraInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3730("com.apple.gm.safety_deny.input.summarization.visual_intelligence_camera");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SummarizationKitVisualPromptInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.gm.safety_deny.input.summarization.visual_prompt");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6050(v26, xmmword_18E4B0120);
  sub_18E1C6594(v27);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.SuperAutofillMultimodalInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.gm.safety_deny.input.super_autofill_multimodal");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsTablesTransformInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.gm.safety_deny.input.tables_transform");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsTakeawaysTransformInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.gm.safety_deny.input.takeaways_transform");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.VisualGenerationBaseInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.gm.safety_deny.input.visual_generation.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.VisualIntelligenceInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.gm.safety_deny.input.visual_intelligence");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6050(v26, xmmword_18E4B0120);
  sub_18E1C6594(v27);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  sub_18E223F08(v26);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v27, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToContactsInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  sub_18E223F08(v26);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v27, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsComposeInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.gm.safety_deny.input.writing_tools.compose");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1E87E8(v26, xmmword_18E4B0120);
  v29 = v28 | 0x322E0000u;
  v27[2].n128_u64[1] = v29 + 768;
  v27[3].n128_u64[0] = 0xE400000000000000;
  v27[3].n128_u8[8] = 3;
  v27[4].n128_u64[0] = 808334898;
  v27[4].n128_u64[1] = 0xE400000000000000;
  v27[5].n128_u8[0] = 2;
  v27[5].n128_u64[1] = v29;
  v27[6].n128_u64[0] = 0xE400000000000000;
  v27[6].n128_u8[8] = 5;
  v27[7].n128_u64[0] = 808334898;
  v27[7].n128_u64[1] = 0xE400000000000000;
  *(v2 + 112) = v27;
  sub_18E224118();
}

void Catalog.TokenInputDenyList.WritingToolsComposeRecentsSummariesInputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2CD0("com.apple.gm.safety_deny.input.writing_tools.compose_recents_summaries");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.ADMBackgroundPromptOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.gm.safety_deny.output.adm_background_prompt");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.AskGenerativeModelActionOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.gm.safety_deny.output.ask_generative_model_action");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsBulletsTransformOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.gm.safety_deny.output.bullets_transform");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.CodeIntelligenceBaseOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  *v2 = 0xD000000000000036;
  v2[1] = v3;
  sub_18E1E1AA4("mc.CodeIntelligenceBaseOutputDenyList");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v2[4] = sub_18E36A8EC(v4);
  v5 = sub_18E1D49D0();
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  v2[5] = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  v2[6] = v25;
  v2[7] = 0;
  *(v2 + 61) = 0;
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  v2[16] = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void _s12ModelCatalog0B0O17ImageMagicCleanUpO015GenerativeEditsdeF0V2eeoiySbAG_AGtFZ_0()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v3[1];
  v6 = v3[2];
  v8 = v3[3];
  v7 = v3[4];
  v37 = v3[6];
  v38 = v3[5];
  v9 = *(v3 + 9);
  v50[0] = *(v3 + 7);
  v50[1] = v9;
  v51 = *(v3 + 88);
  v33 = v3[13];
  v31 = *(v3 + 112);
  v29 = *(v3 + 113);
  v27 = v3[15];
  v25 = v3[16];
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v15 = v1[4];
  v14 = v1[5];
  v35 = v3[12];
  v36 = v1[6];
  v53 = *(v1 + 88);
  v16 = *(v1 + 9);
  v52[0] = *(v1 + 7);
  v52[1] = v16;
  v34 = v1[12];
  v32 = v1[13];
  v30 = *(v1 + 112);
  v28 = *(v1 + 113);
  v17 = v4 == v10 && v5 == v11;
  v26 = v1[15];
  v24 = v1[16];
  if (v17 || (sub_18E44F3CC() & 1) != 0)
  {
    v18 = v6 == v12 && v8 == v13;
    if (v18 || (sub_18E44F3CC()) && (sub_18E28BB7C(v7, v15) & 1) != 0 && (sub_18E28BB7C(v38, v14))
    {
      sub_18E28BDB0();
      if (v19)
      {
        v20 = *(v3 + 9);
        v43 = *(v3 + 7);
        v44 = v20;
        v45 = *(v3 + 88);
        v21 = *(v1 + 9);
        v40 = *(v1 + 7);
        v41 = v21;
        v42 = *(v1 + 88);
        v22 = static CostProfile.== infix(_:_:)(&v43, &v40);
        v46[0] = v40;
        v46[1] = v41;
        v47 = v42;
        sub_18E327BB0(v50, v39);
        sub_18E327BB0(v52, v39);
        sub_18E292124(v46);
        v48[0] = v43;
        v48[1] = v44;
        v49 = v45;
        sub_18E292124(v48);
        if (v22 & 1) != 0 && (sub_18E290008(v35, v34))
        {
          sub_18E290AD4();
          if (v23)
          {
            sub_18E240940();
            if (v17 && v29 == v28 && sub_18E290BF0(v27, v26))
            {
              sub_18E290C28();
            }
          }
        }
      }
    }
  }

  sub_18E1C5544();
}

void Catalog.TokenOutputDenyList.WritingToolsConciseToneOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.gm.safety_deny.output.concise_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CDA14("com.apple.gm.safety_deny.output.foundation_models_framework.api");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  v2[3] = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  v2[4] = v25;
  v2[5] = 0;
  sub_18E1E31C4();
  v2[7] = &unk_1F0120070;
  v2[8] = v0;
  sub_18E1CC428(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6788(v26, xmmword_18E4B0120);
  v27[6].n128_u8[8] = 3;
  sub_18E1E397C(v27, v28);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsFriendlyToneOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CAE98("com.apple.gm.safety_deny.output.friendly_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.GenerativeAssistantCompositionOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CC500("com.apple.gm.safety_deny.output.generative_assistant.composition");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.GenerativeAssistantKnowledgeOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.gm.safety_deny.output.generative_assistant.knowledge");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.GenerativeAssistantKnowledgeFallbackOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3730("com.apple.gm.safety_deny.output.generative_assistant.knowledge_fallback");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF4B4("com.apple.gm.safety_deny.output.generative_assistant.media_qa");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.GenerativeAssistantVisualIntelligenceCameraOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E19A8("com.apple.gm.safety_deny.output.generative_assistant.visual_intelligence_camera");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C5888(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsMagicRewriteOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CAE98("com.apple.gm.safety_deny.output.magic_rewrite");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.MailReplyLongFormBasicOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.gm.safety_deny.output.mail_reply.long_form_basic");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.MailReplyLongFormQAOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.gm.safety_deny.output.mail_reply.long_form_qa");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.MailReplyLongFormRewriteOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E6C30("com.apple.gm.safety_deny.output.mail_reply.long_form_rewrite");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.PersonalizedSmartReplyOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD5B0("com.apple.gm.safety_deny.output.mail_reply.personalized_smart_reply");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.MailReplySnippetOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.gm.safety_deny.output.mail_reply.snippet");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.MessagesActionBaseOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.gm.safety_deny.output.messages_action");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.MessagesReplyBaseOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.gm.safety_deny.output.messages_reply.all");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.MessagesReplyWatchOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.gm.safety_deny.output.messages_reply.watch");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1D0130(v26, xmmword_18E49DA90);
  sub_18E1CFF78(v27, v28);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.OpenEndedInteractionOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E1000("com.apple.gm.safety_deny.output.open_ended_interaction");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.OpenEndedReflectionOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.gm.safety_deny.output.open_ended_reflection");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsOpenEndedSchemaOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.gm.safety_deny.output.open_ended_schema");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.gm.safety_deny.output.open_ended_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6050(v26, xmmword_18E4B0120);
  sub_18E1C6594(v27);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneBaseOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.gm.safety_deny.output.open_ended_tone_base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.gm.safety_deny.output.open_ended_tone_query_response");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6050(v26, xmmword_18E4B0120);
  sub_18E1C6594(v27);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseV2OutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1DD378("com.apple.gm.safety_deny.output.open_ended_tone_query_response_v2");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.PhotosMemoriesCreationBaseOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.gm.safety_deny.output.photos_memories.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.PhotosMemoriesCreationGlobalTraitOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E6C30("com.apple.gm.safety_deny.output.photos_memories.global_trait");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.PhotosMemoriesCreationSensitiveOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA2E4("com.apple.gm.safety_deny.output.photos_memories.sensitive");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.PhotosMemoriesCreationMusicSongIdOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.gm.safety_deny.output.photos_memories.song_id");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.PhotosMemoriesCreationStoryTitleOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.gm.safety_deny.output.photos_memories.story_title");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.PhotosMemoriesCreationUserQueryOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.gm.safety_deny.output.photos_memories.user_query");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsProfessionalToneOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.gm.safety_deny.output.professional_tone");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsProofreadingReviewOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.gm.safety_deny.output.proofreading_review");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.ShortcutsAskAFMActionOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.gm.safety_deny.output.shortcuts_ask_afm_action");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.ShortcutsAskAFMAction3BOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.gm.safety_deny.output.shortcuts_ask_afm_action_3b");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SummarizationKitBaseOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.gm.safety_deny.output.summarization.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SummarizationKitCUSummaryOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.gm.safety_deny.output.summarization.cu_summary");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SummarizationKitCUSummaryOnDemandOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.gm.safety_deny.output.summarization.cu_summary.on_demand");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SummarizationKitCUSummaryProactiveOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.gm.safety_deny.output.summarization.cu_summary.proactive");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SummarizationKitCUUrgencyOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.gm.safety_deny.output.summarization.cu_urgency");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SummarizationKitTextAssistantOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E6C30("com.apple.gm.safety_deny.output.summarization.text_assistant");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SummarizationKitVisualIntelligenceCameraOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E22187C("com.apple.gm.safety_deny.output.summarization.visual_intelligence_camera");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SummarizationKitVisualPromptOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.gm.safety_deny.output.summarization.visual_prompt");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6050(v26, xmmword_18E4B0120);
  sub_18E1C6594(v27);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.SuperAutofillMultimodalOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA2E4("com.apple.gm.safety_deny.output.super_autofill_multimodal");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsTablesTransformOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1FF2E8("com.apple.gm.safety_deny.output.tables_transform");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsTakeawaysTransformOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.gm.safety_deny.output.takeaways_transform");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1C6C38(v26, xmmword_18E4B0120);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.VisualIntelligenceOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.gm.safety_deny.output.visual_intelligence");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  sub_18E223F08(v26);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v27, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToContactsOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v5 = sub_18E36A8EC(v4);
  v6 = sub_18E1CF5E4(v5);
  sub_18E1D8010(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_18E1D0038();
  sub_18E1CF330(v24, v25);

  sub_18E36A354();
  sub_18E223F08(v26);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v27, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsComposeOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.gm.safety_deny.output.writing_tools.compose");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1C6050(v26, xmmword_18E4B0120);
  v27[6].n128_u8[8] = 5;
  v27[7].n128_u64[0] = v28;
  v27[7].n128_u64[1] = v29;
  *(v2 + 112) = v27;
  sub_18E224118();
}

void Catalog.TokenOutputDenyList.WritingToolsComposeRecentsSummariesOutputDenyList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3730("com.apple.gm.safety_deny.output.writing_tools.compose_recents_summaries");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 112) = sub_18E1C6050(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputRetainList.ProofreadingRetainList.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1DD378("com.apple.gm.safety_retain.output.proofreading_output_retain_list");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v4 = sub_18E36A8EC(v3);
  v5 = sub_18E1CF5E4(v4);
  sub_18E1D8010(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 24) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_18E1D0038();
  sub_18E1CF330(v23, v24);

  sub_18E36A354();
  sub_18E223F08(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.TokenOutputRetainList.STXSafetyWordList.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  sub_18E1E22A0();
  v11 = v10;
  sub_18E1E3730("com.apple.gm.safety_retain.output.structure_extraction_safety_word_list");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v12 = sub_18E1D0404();
  sub_18E1E3EA0(v12, xmmword_18E49D9B0);
  if (qword_1ED6A8A88 != -1)
  {
    sub_18E1D7E70();
  }

  sub_18E1D42C0();
  v13 = sub_18E36A8EC(v12);
  v14 = sub_18E1CF5E4(v13);
  sub_18E1D8010(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v11 + 24) = sub_18E36A8EC(v9);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = sub_18E1D0038();
  sub_18E1CF330(v32, v33);

  sub_18E36A354();
  sub_18E223F08(v34);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v35 = sub_18E1CF1F8();
  *(v11 + 112) = sub_18E1D0130(v35, a9);
  sub_18E224118();
}

void _s12ModelCatalog0B0O0A24ConfigurationReplacementO3AllV2eeoiySbAG_AGtFZ_0()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v3[1];
  v6 = v3[2];
  v8 = v3[3];
  v7 = v3[4];
  v9 = *(v3 + 7);
  v46[0] = *(v3 + 5);
  v46[1] = v9;
  v47 = *(v3 + 72);
  v33 = v3[11];
  v34 = v3[10];
  v31 = *(v3 + 96);
  v10 = *(v3 + 97);
  v27 = v3[13];
  v25 = v3[14];
  v11 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v15 = v1[4];
  v49 = *(v1 + 72);
  v16 = *(v1 + 7);
  v48[0] = *(v1 + 5);
  v48[1] = v16;
  v17 = v1[10];
  v32 = v1[11];
  v29 = v10;
  v30 = *(v1 + 96);
  v28 = *(v1 + 97);
  v18 = v4 == v11 && v5 == v12;
  v26 = v1[13];
  v24 = v1[14];
  if (v18 || (sub_18E44F3CC()) && (sub_18E28BB7C(v6, v14) & 1) != 0 && (sub_18E28BB7C(v8, v13))
  {
    sub_18E1CF50C();
    sub_18E28BDB0();
    if (v19)
    {
      v20 = *(v3 + 7);
      v39 = *(v3 + 5);
      v40 = v20;
      v41 = *(v3 + 72);
      v21 = *(v1 + 7);
      v36 = *(v1 + 5);
      v37 = v21;
      v38 = *(v1 + 72);
      v22 = static CostProfile.== infix(_:_:)(&v39, &v36);
      v42[0] = v36;
      v42[1] = v37;
      v43 = v38;
      sub_18E327BB0(v46, v35);
      sub_18E327BB0(v48, v35);
      sub_18E292124(v42);
      v44[0] = v39;
      v44[1] = v40;
      v45 = v41;
      sub_18E292124(v44);
      if (v22 & 1) != 0 && (sub_18E290008(v34, v17))
      {
        sub_18E290AD4();
        if (v23)
        {
          sub_18E240940();
          if (v18 && v29 == v28 && sub_18E290BF0(v27, v26))
          {
            sub_18E290C28();
          }
        }
      }
    }
  }

  sub_18E1C5544();
}

void _s12ModelCatalog0B0O17ImageMagicCleanUpO015GenerativeEditsdeF0V4hash4intoys6HasherVz_tF_0()
{
  sub_18E1E6AB4();
  sub_18E1E1A34();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_18E240E7C();
  v24 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(v1 + 112);
  v21 = *(v1 + 113);
  v22 = *(v1 + 120);
  v23 = *(v1 + 128);
  sub_18E44EB4C();
  sub_18E21D0F8();
  sub_18E44EB4C();
  v10 = sub_18E1E6754();
  sub_18E291640(v10, v11);
  v12 = sub_18E1C5838();
  sub_18E291640(v12, v13);
  v14 = sub_18E1CA270();
  sub_18E2913B4(v14, v15);
  CostProfile.hash(into:)();
  v16 = sub_18E1CC318();
  sub_18E2917A4(v16, v17);
  v18 = sub_18E1D45C8();
  sub_18E291BEC(v18, v19);
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E2919AC(v0, v22);
  sub_18E1E28A4();

  sub_18E29180C();
}

uint64_t sub_18E363044()
{
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v0 = sub_18E1CF89C();
  *(v0 + 16) = xmmword_18E49DA90;
  *(v0 + 32) = 1;
  return sub_18E1C2A1C(v0, 808334641);
}

void _s12ModelCatalog0B0O0A24ConfigurationReplacementO3AllV4hash4intoys6HasherVz_tF_0()
{
  sub_18E1CFF04();
  sub_18E1E1A34();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_18E1D5F0C();
  v22 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 97);
  v9 = *(v1 + 104);
  v21 = *(v1 + 112);
  sub_18E44EB4C();
  v10 = sub_18E1CF50C();
  sub_18E291640(v10, v11);
  v12 = sub_18E21D0F8();
  sub_18E291640(v12, v13);
  sub_18E2913B4(v0, v4);
  CostProfile.hash(into:)();
  v14 = sub_18E1E6754();
  sub_18E2917A4(v14, v15);
  v16 = sub_18E1C5838();
  sub_18E291BEC(v16, v17);
  sub_18E44F4AC();
  sub_18E44F4AC();
  v18 = sub_18E1D45C8();
  sub_18E2919AC(v18, v19);
  sub_18E2079F8();

  sub_18E29180C();
}

void *sub_18E3631DC()
{
  result = sub_18E3631FC();
  off_1EABDFC68 = result;
  return result;
}

uint64_t sub_18E3631FC()
{
  v287 = *MEMORY[0x1E69E9840];
  sub_18E2706EC(&qword_1EABE0E98, &unk_18E4E2640);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4B7BF0;
  *(v0 + 56) = &type metadata for Catalog.AppleDeviceTracking.Detector;
  *(v0 + 64) = sub_18E36B168();
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  Catalog.AppleDeviceTracking.Detector.init()((v1 + 16));
  *(v0 + 96) = &type metadata for Catalog.AppleDeviceTracking.IPhoneTracker;
  *(v0 + 104) = sub_18E36B310();
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  Catalog.AppleDeviceTracking.IPhoneTracker.init()((v2 + 16));
  *(v0 + 136) = &type metadata for Catalog.AppleDeviceTracking.MacbookTracker;
  *(v0 + 144) = sub_18E36B4B8();
  v3 = swift_allocObject();
  *(v0 + 112) = v3;
  Catalog.AppleDeviceTracking.MacbookTracker.init()((v3 + 16));
  *(v0 + 176) = &type metadata for Catalog.AppleDeviceTracking.MagicKeyboardTracker;
  *(v0 + 184) = sub_18E36B660();
  v4 = swift_allocObject();
  *(v0 + 152) = v4;
  Catalog.AppleDeviceTracking.MagicKeyboardTracker.init()((v4 + 16));
  *(v0 + 216) = &type metadata for Catalog.Diffusion.Adapter.Animation;
  *(v0 + 224) = sub_18E36B884();
  v5 = swift_allocObject();
  *(v0 + 192) = v5;
  Catalog.Diffusion.Adapter.Animation.init()((v5 + 16));
  *(v0 + 256) = &type metadata for Catalog.Diffusion.Adapter.Emoji;
  *(v0 + 264) = sub_18E36BAA8();
  v6 = swift_allocObject();
  *(v0 + 232) = v6;
  Catalog.Diffusion.Adapter.Emoji.init()((v6 + 16));
  *(v0 + 296) = &type metadata for Catalog.Diffusion.Adapter.Illustration;
  *(v0 + 304) = sub_18E36BCCC();
  v7 = swift_allocObject();
  *(v0 + 272) = v7;
  Catalog.Diffusion.Adapter.Illustration.init()((v7 + 16));
  *(v0 + 336) = &type metadata for Catalog.Diffusion.Adapter.MessagesBackgrounds;
  *(v0 + 344) = sub_18E36BEF0();
  v8 = swift_allocObject();
  *(v0 + 312) = v8;
  Catalog.Diffusion.Adapter.MessagesBackgrounds.init()((v8 + 16));
  *(v0 + 376) = &type metadata for Catalog.Diffusion.Adapter.PersonalizedAnimation;
  *(v0 + 384) = sub_18E36C114();
  v9 = swift_allocObject();
  *(v0 + 352) = v9;
  Catalog.Diffusion.Adapter.PersonalizedAnimation.init()((v9 + 16));
  *(v0 + 416) = &type metadata for Catalog.Diffusion.Adapter.PersonalizedEmoji;
  *(v0 + 424) = sub_18E36C338();
  v10 = swift_allocObject();
  *(v0 + 392) = v10;
  Catalog.Diffusion.Adapter.PersonalizedEmoji.init()((v10 + 16));
  *(v0 + 456) = &type metadata for Catalog.Diffusion.Adapter.PersonalizedIllustration;
  *(v0 + 464) = sub_18E36C55C();
  v11 = swift_allocObject();
  *(v0 + 432) = v11;
  Catalog.Diffusion.Adapter.PersonalizedIllustration.init()((v11 + 16));
  *(v0 + 496) = &type metadata for Catalog.Diffusion.Adapter.PersonalizedSketch;
  *(v0 + 504) = sub_18E36C780();
  v12 = swift_allocObject();
  *(v0 + 472) = v12;
  Catalog.Diffusion.Adapter.PersonalizedSketch.init()((v12 + 16));
  *(v0 + 536) = &type metadata for Catalog.Diffusion.Adapter.PersonalizedScribble;
  *(v0 + 544) = sub_18E36C9A4();
  v13 = swift_allocObject();
  *(v0 + 512) = v13;
  Catalog.Diffusion.Adapter.PersonalizedScribble.init()((v13 + 16));
  *(v0 + 576) = &type metadata for Catalog.Diffusion.Adapter.Refiner;
  *(v0 + 584) = sub_18E36CBC8();
  v14 = swift_allocObject();
  *(v0 + 552) = v14;
  Catalog.Diffusion.Adapter.Refiner.init()((v14 + 16));
  *(v0 + 616) = &type metadata for Catalog.Diffusion.Adapter.Sketch;
  *(v0 + 624) = sub_18E36CDEC();
  v15 = swift_allocObject();
  *(v0 + 592) = v15;
  Catalog.Diffusion.Adapter.Sketch.init()((v15 + 16));
  *(v0 + 656) = &type metadata for Catalog.Diffusion.Adapter.SkinToneEmoji;
  *(v0 + 664) = sub_18E36D010();
  v16 = swift_allocObject();
  *(v0 + 632) = v16;
  Catalog.Diffusion.Adapter.SkinToneEmoji.init()((v16 + 16));
  *(v0 + 696) = &type metadata for Catalog.Diffusion.Adapter.Scribble;
  *(v0 + 704) = sub_18E36D234();
  v17 = swift_allocObject();
  *(v0 + 672) = v17;
  Catalog.Diffusion.Adapter.Scribble.init()((v17 + 16));
  *(v0 + 736) = &type metadata for Catalog.Diffusion.Model.VisualGenerationBase;
  *(v0 + 744) = sub_18E36D458();
  v18 = swift_allocObject();
  *(v0 + 712) = v18;
  Catalog.Diffusion.Model.VisualGenerationBase.init()(v18 + 16);
  *(v0 + 776) = &type metadata for Catalog.DisabledUseCaseList.All;
  *(v0 + 784) = sub_18E36D600();
  v19 = swift_allocObject();
  *(v0 + 752) = v19;
  Catalog.DisabledUseCaseList.All.init()(v19 + 16);
  *(v0 + 816) = &type metadata for Catalog.EmbeddingDenyList.All;
  *(v0 + 824) = sub_18E36D824();
  *(v0 + 792) = swift_allocObject();
  Catalog.EmbeddingDenyList.All.init()();
  *(v0 + 856) = &type metadata for Catalog.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor;
  *(v0 + 864) = sub_18E36D9CC();
  *(v0 + 832) = swift_allocObject();
  Catalog.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor.init()();
  *(v0 + 896) = &type metadata for Catalog.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor;
  *(v0 + 904) = sub_18E36DB74();
  *(v0 + 872) = swift_allocObject();
  Catalog.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor.init()();
  *(v0 + 936) = &type metadata for Catalog.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor;
  *(v0 + 944) = sub_18E36DD1C();
  *(v0 + 912) = swift_allocObject();
  Catalog.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor.init()();
  *(v0 + 976) = &type metadata for Catalog.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor;
  *(v0 + 984) = sub_18E36DEC4();
  *(v0 + 952) = swift_allocObject();
  Catalog.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor.init()();
  *(v0 + 1016) = &type metadata for Catalog.HandwritingSynthesizer.HandwritingSynthesis;
  *(v0 + 1024) = sub_18E36E06C();
  v20 = swift_allocObject();
  *(v0 + 992) = v20;
  Catalog.HandwritingSynthesizer.HandwritingSynthesis.init()(v20 + 16);
  *(v0 + 1056) = &type metadata for Catalog.HandwritingSynthesizer.HandwritingSynthesisMultilingual;
  *(v0 + 1064) = sub_18E36E214();
  v21 = swift_allocObject();
  *(v0 + 1032) = v21;
  Catalog.HandwritingSynthesizer.HandwritingSynthesisMultilingual.init()(v21 + 16);
  *(v0 + 1096) = &type metadata for Catalog.ImageCuratedPrompts.All;
  *(v0 + 1104) = sub_18E36E3BC();
  v22 = swift_allocObject();
  *(v0 + 1072) = v22;
  Catalog.ImageCuratedPrompts.All.init()(v22 + 16);
  *(v0 + 1136) = &type metadata for Catalog.ImageFilter.Conditioning;
  *(v0 + 1144) = sub_18E36E564();
  v23 = swift_allocObject();
  *(v0 + 1112) = v23;
  Catalog.ImageFilter.Conditioning.init()(v23 + 16);
  *(v0 + 1176) = &type metadata for Catalog.ImageMagicCleanUp.GenerativeEditsMagicCleanUp;
  *(v0 + 1184) = sub_18E36E70C();
  v24 = swift_allocObject();
  *(v0 + 1152) = v24;
  Catalog.ImageMagicCleanUp.GenerativeEditsMagicCleanUp.init()(v24 + 16);
  *(v0 + 1216) = &type metadata for Catalog.ImageScaler.GenerativePlaygroundsUpscaler;
  *(v0 + 1224) = sub_18E36E8B4();
  v25 = swift_allocObject();
  *(v0 + 1192) = v25;
  Catalog.ImageScaler.GenerativePlaygroundsUpscaler.init()(v25 + 16);
  *(v0 + 1256) = &type metadata for Catalog.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin;
  *(v0 + 1264) = sub_18E36EAD8();
  v26 = swift_allocObject();
  *(v0 + 1232) = v26;
  Catalog.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin.init()(v26 + 16);
  *(v0 + 1296) = &type metadata for Catalog.ImageSpatialPhotosRelive.FOVEstimatorBuiltin;
  *(v0 + 1304) = sub_18E36ECFC();
  v27 = swift_allocObject();
  *(v0 + 1272) = v27;
  Catalog.ImageSpatialPhotosRelive.FOVEstimatorBuiltin.init()(v27 + 16);
  *(v0 + 1336) = &type metadata for Catalog.ImageSpatialPhotosRelive.FOVEstimatorMain;
  *(v0 + 1344) = sub_18E36EF20();
  v28 = swift_allocObject();
  *(v0 + 1312) = v28;
  Catalog.ImageSpatialPhotosRelive.FOVEstimatorMain.init()((v28 + 16));
  *(v0 + 1376) = &type metadata for Catalog.ImageSpatialPhotosRelive.SpatialPhotosReliveMain;
  *(v0 + 1384) = sub_18E36F144();
  v29 = swift_allocObject();
  *(v0 + 1352) = v29;
  Catalog.ImageSpatialPhotosRelive.SpatialPhotosReliveMain.init()((v29 + 16));
  *(v0 + 1416) = &type metadata for Catalog.ImageTokenizer.AFMImageTokenizer300M;
  *(v0 + 1424) = sub_18E36F368();
  *(v0 + 1392) = swift_allocObject();
  Catalog.ImageTokenizer.AFMImageTokenizer300M.init()();
  *(v0 + 1456) = &type metadata for Catalog.ImageTokenizer.AFMImageTokenizer;
  *(v0 + 1464) = sub_18E36F58C();
  *(v0 + 1432) = swift_allocObject();
  Catalog.ImageTokenizer.AFMImageTokenizer.init()();
  *(v0 + 1496) = &type metadata for Catalog.ImageTokenizer.AFMImageTokenizerServer;
  *(v0 + 1504) = sub_18E36F7B0();
  v30 = swift_allocObject();
  *(v0 + 1472) = v30;
  Catalog.ImageTokenizer.AFMImageTokenizerServer.init()((v30 + 16));
  *(v0 + 1536) = &type metadata for Catalog.LLM.Adapter.ADMBackgroundPrompt;
  *(v0 + 1544) = sub_18E36FAA4();
  *(v0 + 1512) = swift_allocObject();
  Catalog.LLM.Adapter.ADMBackgroundPrompt.init()();
  *(v0 + 1576) = &type metadata for Catalog.LLM.Adapter.ADMPeopleGrounding;
  *(v0 + 1584) = sub_18E36FD44();
  *(v0 + 1552) = swift_allocObject();
  Catalog.LLM.Adapter.ADMPeopleGrounding.init()();
  *(v0 + 1616) = &type metadata for Catalog.LLM.Adapter.ADMPromptRewriting;
  *(v0 + 1624) = sub_18E36FFE4();
  *(v0 + 1592) = swift_allocObject();
  Catalog.LLM.Adapter.ADMPromptRewriting.init()();
  *(v0 + 1656) = &type metadata for Catalog.LLM.Adapter.FactualConsistencyClassifier;
  *(v0 + 1664) = sub_18E370284();
  *(v0 + 1632) = swift_allocObject();
  Catalog.LLM.Adapter.FactualConsistencyClassifier.init()();
  *(v0 + 1696) = &type metadata for Catalog.LLM.Adapter.MessagesActionSmall;
  *(v0 + 1704) = sub_18E370524();
  *(v0 + 1672) = swift_allocObject();
  Catalog.LLM.Adapter.MessagesActionSmall.init()();
  *(v0 + 1736) = &type metadata for Catalog.LLM.Adapter.MessagesReplyWatch;
  *(v0 + 1744) = sub_18E3707C4();
  *(v0 + 1712) = swift_allocObject();
  Catalog.LLM.Adapter.MessagesReplyWatch.init()();
  *(v0 + 1776) = &type metadata for Catalog.LLM.Adapter.MiscSafety;
  *(v0 + 1784) = sub_18E370A64();
  *(v0 + 1752) = swift_allocObject();
  Catalog.LLM.Adapter.MiscSafety.init()();
  *(v0 + 1816) = &type metadata for Catalog.LLM.Adapter.MiscSafetyCustomized;
  *(v0 + 1824) = sub_18E370D04();
  *(v0 + 1792) = swift_allocObject();
  Catalog.LLM.Adapter.MiscSafetyCustomized.init()();
  *(v0 + 1856) = &type metadata for Catalog.LLM.Adapter.MMGuardSafetyGuardrail;
  *(v0 + 1864) = sub_18E370FA4();
  *(v0 + 1832) = swift_allocObject();
  Catalog.LLM.Adapter.MMGuardSafetyGuardrail.init()();
  *(v0 + 1896) = &type metadata for Catalog.LLM.Adapter.MMSafety;
  *(v0 + 1904) = sub_18E371244();
  *(v0 + 1872) = swift_allocObject();
  Catalog.LLM.Adapter.MMSafety.init()();
  *(v0 + 1936) = &type metadata for Catalog.LLM.Adapter.PQAVerification;
  *(v0 + 1944) = sub_18E3714E4();
  *(v0 + 1912) = swift_allocObject();
  Catalog.LLM.Adapter.PQAVerification.init()();
  *(v0 + 1976) = &type metadata for Catalog.LLM.Adapter.PrepubescentSafety;
  *(v0 + 1984) = sub_18E371784();
  *(v0 + 1952) = swift_allocObject();
  Catalog.LLM.Adapter.PrepubescentSafety.init()();
  *(v0 + 2016) = &type metadata for Catalog.LLM.Adapter.PrepubescentSafetyCustomized;
  *(v0 + 2024) = sub_18E371A24();
  *(v0 + 1992) = swift_allocObject();
  Catalog.LLM.Adapter.PrepubescentSafetyCustomized.init()();
  *(v0 + 2056) = &type metadata for Catalog.LLM.Adapter.Safety;
  *(v0 + 2064) = sub_18E371CC4();
  *(v0 + 2032) = swift_allocObject();
  Catalog.LLM.Adapter.Safety.init()();
  *(v0 + 2096) = &type metadata for Catalog.LLM.Adapter.StructuralIntegrity;
  *(v0 + 2104) = sub_18E371F64();
  *(v0 + 2072) = swift_allocObject();
  Catalog.LLM.Adapter.StructuralIntegrity.init()();
  *(v0 + 2136) = &type metadata for Catalog.LLM.Adapter.StructuralIntegrityCustomized;
  *(v0 + 2144) = sub_18E372204();
  *(v0 + 2112) = swift_allocObject();
  Catalog.LLM.Adapter.StructuralIntegrityCustomized.init()();
  *(v0 + 2176) = &type metadata for Catalog.LLM.Adapter.TextGuardSafetyGuardrail;
  *(v0 + 2184) = sub_18E3724A4();
  *(v0 + 2152) = swift_allocObject();
  Catalog.LLM.Adapter.TextGuardSafetyGuardrail.init()();
  *(v0 + 2216) = &type metadata for Catalog.LLM.Adapter.VIContentClassifier;
  *(v0 + 2224) = sub_18E372744();
  v31 = swift_allocObject();
  *(v0 + 2192) = v31;
  Catalog.LLM.Adapter.VIContentClassifier.init()(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  *(v0 + 2256) = &type metadata for Catalog.LLM.Adapter.AnswerSynthesis;
  *(v0 + 2264) = sub_18E372A38();
  *(v0 + 2232) = swift_allocObject();
  Catalog.LLM.Adapter.AnswerSynthesis.init()();
  *(v0 + 2296) = &type metadata for Catalog.LLM.Adapter.FullPayloadCorrection;
  *(v0 + 2304) = sub_18E372CD8();
  *(v0 + 2272) = swift_allocObject();
  Catalog.LLM.Adapter.FullPayloadCorrection.init()();
  *(v0 + 2336) = &type metadata for Catalog.LLM.Adapter.AutoTagger;
  *(v0 + 2344) = sub_18E372F78();
  *(v0 + 2312) = swift_allocObject();
  Catalog.LLM.Adapter.AutoTagger.init()();
  *(v0 + 2376) = &type metadata for Catalog.LLM.Adapter.AutonamingMessages;
  *(v0 + 2384) = sub_18E373218();
  *(v0 + 2352) = swift_allocObject();
  Catalog.LLM.Adapter.AutonamingMessages.init()();
  *(v0 + 2416) = &type metadata for Catalog.LLM.Adapter.InstructBaseAdapter;
  *(v0 + 2424) = sub_18E3734B8();
  *(v0 + 2392) = swift_allocObject();
  Catalog.LLM.Adapter.InstructBaseAdapter.init()();
  *(v0 + 2456) = &type metadata for Catalog.LLM.Adapter.BulletsTransform;
  *(v0 + 2464) = sub_18E373758();
  *(v0 + 2432) = swift_allocObject();
  Catalog.LLM.Adapter.BulletsTransform.init()();
  *(v0 + 2496) = &type metadata for Catalog.LLM.Adapter.ConciseTone;
  *(v0 + 2504) = sub_18E3739F8();
  *(v0 + 2472) = swift_allocObject();
  Catalog.LLM.Adapter.ConciseTone.init()();
  *(v0 + 2536) = &type metadata for Catalog.LLM.Adapter.ContextAwareness;
  *(v0 + 2544) = sub_18E373C98();
  *(v0 + 2512) = swift_allocObject();
  Catalog.LLM.Adapter.ContextAwareness.init()();
  *(v0 + 2576) = &type metadata for Catalog.LLM.Adapter.ContextProgram;
  *(v0 + 2584) = sub_18E373F38();
  *(v0 + 2552) = swift_allocObject();
  Catalog.LLM.Adapter.ContextProgram.init()();
  *(v0 + 2616) = &type metadata for Catalog.LLM.Adapter.DescribeYourEdit;
  *(v0 + 2624) = sub_18E3741D8();
  *(v0 + 2592) = swift_allocObject();
  Catalog.LLM.Adapter.DescribeYourEdit.init()();
  *(v0 + 2656) = &type metadata for Catalog.LLM.Adapter.FitnessSummary;
  *(v0 + 2664) = sub_18E374478();
  *(v0 + 2632) = swift_allocObject();
  Catalog.LLM.Adapter.FitnessSummary.init()();
  *(v0 + 2696) = &type metadata for Catalog.LLM.Adapter.ContentTagger;
  *(v0 + 2704) = sub_18E374718();
  *(v0 + 2672) = swift_allocObject();
  Catalog.LLM.Adapter.ContentTagger.init()();
  *(v0 + 2736) = &type metadata for Catalog.LLM.Adapter.InstructFMApiGeneric;
  *(v0 + 2744) = sub_18E3749B8();
  *(v0 + 2712) = swift_allocObject();
  Catalog.LLM.Adapter.InstructFMApiGeneric.init()();
  *(v0 + 2776) = &type metadata for Catalog.LLM.Adapter.FriendlyTone;
  *(v0 + 2784) = sub_18E374C58();
  *(v0 + 2752) = swift_allocObject();
  Catalog.LLM.Adapter.FriendlyTone.init()();
  *(v0 + 2816) = &type metadata for Catalog.LLM.Adapter.JournalMomentsClassification;
  *(v0 + 2824) = sub_18E374EF8();
  v40 = swift_allocObject();
  *(v0 + 2792) = v40;
  Catalog.LLM.Adapter.JournalMomentsClassification.init()(v40, v41, v42, v43, v44, v45, v46, v47, v48);
  *(v0 + 2856) = &type metadata for Catalog.LLM.Adapter.JournalMomentsReflection;
  *(v0 + 2864) = sub_18E375198();
  v49 = swift_allocObject();
  *(v0 + 2832) = v49;
  Catalog.LLM.Adapter.JournalMomentsReflection.init()(v49, v50, v51, v52, v53, v54, v55, v56, v57);
  *(v0 + 2896) = &type metadata for Catalog.LLM.Adapter.LWOnDevicePlannerV1;
  *(v0 + 2904) = sub_18E375438();
  *(v0 + 2872) = swift_allocObject();
  Catalog.LLM.Adapter.LWOnDevicePlannerV1.init()();
  *(v0 + 2936) = &type metadata for Catalog.LLM.Adapter.MagicRewrite;
  *(v0 + 2944) = sub_18E3756D8();
  *(v0 + 2912) = swift_allocObject();
  Catalog.LLM.Adapter.MagicRewrite.init()();
  *(v0 + 2976) = &type metadata for Catalog.LLM.Adapter.MailReply;
  *(v0 + 2984) = sub_18E375978();
  *(v0 + 2952) = swift_allocObject();
  Catalog.LLM.Adapter.MailReply.init()();
  *(v0 + 3016) = &type metadata for Catalog.LLM.Adapter.MailReplyLongFormBasic;
  *(v0 + 3024) = sub_18E375C18();
  *(v0 + 2992) = swift_allocObject();
  Catalog.LLM.Adapter.MailReplyLongFormBasic.init()();
  *(v0 + 3056) = &type metadata for Catalog.LLM.Adapter.MailReplyLongFormRewrite;
  *(v0 + 3064) = sub_18E375EB8();
  *(v0 + 3032) = swift_allocObject();
  Catalog.LLM.Adapter.MailReplyLongFormRewrite.init()();
  *(v0 + 3096) = &type metadata for Catalog.LLM.Adapter.MailReplyQA;
  *(v0 + 3104) = sub_18E376158();
  *(v0 + 3072) = swift_allocObject();
  Catalog.LLM.Adapter.MailReplyQA.init()();
  *(v0 + 3136) = &type metadata for Catalog.LLM.Adapter.MessagesAction;
  *(v0 + 3144) = sub_18E3763F8();
  *(v0 + 3112) = swift_allocObject();
  Catalog.LLM.Adapter.MessagesAction.init()();
  *(v0 + 3176) = &type metadata for Catalog.LLM.Adapter.MessagesReply;
  *(v0 + 3184) = sub_18E376698();
  *(v0 + 3152) = swift_allocObject();
  Catalog.LLM.Adapter.MessagesReply.init()();
  *(v0 + 3216) = &type metadata for Catalog.LLM.Adapter.MMGuardSafetyGuardrail3B;
  *(v0 + 3224) = sub_18E376938();
  *(v0 + 3192) = swift_allocObject();
  Catalog.LLM.Adapter.MMGuardSafetyGuardrail3B.init()();
  *(v0 + 3256) = &type metadata for Catalog.LLM.Adapter.Nutrition;
  *(v0 + 3264) = sub_18E376BD8();
  *(v0 + 3232) = swift_allocObject();
  Catalog.LLM.Adapter.Nutrition.init()();
  *(v0 + 3296) = &type metadata for Catalog.LLM.Adapter.PersonalizedSmartReply;
  *(v0 + 3304) = sub_18E376E78();
  *(v0 + 3272) = swift_allocObject();
  Catalog.LLM.Adapter.PersonalizedSmartReply.init()();
  *(v0 + 3336) = &type metadata for Catalog.LLM.Adapter.PhotosLibraryUnderstandingMM;
  *(v0 + 3344) = sub_18E377118();
  *(v0 + 3312) = swift_allocObject();
  Catalog.LLM.Adapter.PhotosLibraryUnderstandingMM.init()();
  *(v0 + 3376) = &type metadata for Catalog.LLM.Adapter.PhotosLibraryUnderstandingT2T;
  *(v0 + 3384) = sub_18E3773B8();
  *(v0 + 3352) = swift_allocObject();
  Catalog.LLM.Adapter.PhotosLibraryUnderstandingT2T.init()();
  *(v0 + 3416) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b;
  *(v0 + 3424) = sub_18E377658();
  *(v0 + 3392) = swift_allocObject();
  Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b.init()();
  *(v0 + 3456) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b;
  *(v0 + 3464) = sub_18E3778F8();
  *(v0 + 3432) = swift_allocObject();
  Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b.init()();
  *(v0 + 3496) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b;
  *(v0 + 3504) = sub_18E377B98();
  *(v0 + 3472) = swift_allocObject();
  Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b.init()();
  *(v0 + 3536) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationStoryteller3b;
  *(v0 + 3544) = sub_18E377E38();
  *(v0 + 3512) = swift_allocObject();
  Catalog.LLM.Adapter.PhotosMemoriesCreationStoryteller3b.init()();
  *(v0 + 3576) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesTitle;
  *(v0 + 3584) = sub_18E3780D8();
  *(v0 + 3552) = swift_allocObject();
  Catalog.LLM.Adapter.PhotosMemoriesTitle.init()();
  *(v0 + 3616) = &type metadata for Catalog.LLM.Adapter.PlannerV4;
  *(v0 + 3624) = sub_18E378378();
  *(v0 + 3592) = swift_allocObject();
  Catalog.LLM.Adapter.PlannerV4.init()();
  *(v0 + 3656) = &type metadata for Catalog.LLM.Adapter.PlannerV5;
  *(v0 + 3664) = sub_18E378618();
  *(v0 + 3632) = swift_allocObject();
  Catalog.LLM.Adapter.PlannerV5.init()();
  *(v0 + 3696) = &type metadata for Catalog.LLM.Adapter.PlannerV6;
  *(v0 + 3704) = sub_18E3788B8();
  *(v0 + 3672) = swift_allocObject();
  Catalog.LLM.Adapter.PlannerV6.init()();
  *(v0 + 3736) = &type metadata for Catalog.LLM.Adapter.ProfessionalTone;
  *(v0 + 3744) = sub_18E378B58();
  *(v0 + 3712) = swift_allocObject();
  Catalog.LLM.Adapter.ProfessionalTone.init()();
  *(v0 + 3776) = &type metadata for Catalog.LLM.Adapter.ProofreadingReview;
  *(v0 + 3784) = sub_18E378DF8();
  *(v0 + 3752) = swift_allocObject();
  Catalog.LLM.Adapter.ProofreadingReview.init()();
  *(v0 + 3816) = &type metadata for Catalog.LLM.Adapter.RemindersSuggestActionItems;
  *(v0 + 3824) = sub_18E379098();
  *(v0 + 3792) = swift_allocObject();
  Catalog.LLM.Adapter.RemindersSuggestActionItems.init()();
  *(v0 + 3856) = &type metadata for Catalog.LLM.Adapter.ResponseGenerationV4;
  *(v0 + 3864) = sub_18E379338();
  *(v0 + 3832) = swift_allocObject();
  Catalog.LLM.Adapter.ResponseGenerationV4.init()();
  *(v0 + 3896) = &type metadata for Catalog.LLM.Adapter.ResponseGenerationV5;
  *(v0 + 3904) = sub_18E3795D8();
  *(v0 + 3872) = swift_allocObject();
  Catalog.LLM.Adapter.ResponseGenerationV5.init()();
  *(v0 + 3936) = &type metadata for Catalog.LLM.Adapter.ResponseGenerationV6;
  *(v0 + 3944) = sub_18E379878();
  *(v0 + 3912) = swift_allocObject();
  Catalog.LLM.Adapter.ResponseGenerationV6.init()();
  *(v0 + 3976) = &type metadata for Catalog.LLM.Adapter.SafetyGuardrail;
  *(v0 + 3984) = sub_18E379B18();
  *(v0 + 3952) = swift_allocObject();
  Catalog.LLM.Adapter.SafetyGuardrail.init()();
  *(v0 + 4016) = &type metadata for Catalog.LLM.Adapter.SearchQueryUnderstandingOnDevice;
  *(v0 + 4024) = sub_18E379DB8();
  *(v0 + 3992) = swift_allocObject();
  Catalog.LLM.Adapter.SearchQueryUnderstandingOnDevice.init()();
  *(v0 + 4056) = &type metadata for Catalog.LLM.Adapter.ShortcutsAskAFMAction3B;
  *(v0 + 4064) = sub_18E37A058();
  *(v0 + 4032) = swift_allocObject();
  Catalog.LLM.Adapter.ShortcutsAskAFMAction3B.init()();
  *(v0 + 4096) = &type metadata for Catalog.LLM.Adapter.ShortcutsAskAFMAction3BV2;
  *(v0 + 4104) = sub_18E37A2F8();
  *(v0 + 4072) = swift_allocObject();
  Catalog.LLM.Adapter.ShortcutsAskAFMAction3BV2.init()();
  *(v0 + 4136) = &type metadata for Catalog.LLM.Adapter.SmartAppActions;
  *(v0 + 4144) = sub_18E37A598();
  *(v0 + 4112) = swift_allocObject();
  Catalog.LLM.Adapter.SmartAppActions.init()();
  *(v0 + 4176) = &type metadata for Catalog.LLM.Adapter.StructuralExtraction;
  *(v0 + 4184) = sub_18E37A838();
  *(v0 + 4152) = swift_allocObject();
  Catalog.LLM.Adapter.StructuralExtraction.init()();
  *(v0 + 4216) = &type metadata for Catalog.LLM.Adapter.StructuredExtraction;
  *(v0 + 4224) = sub_18E37AAD8();
  *(v0 + 4192) = swift_allocObject();
  Catalog.LLM.Adapter.StructuredExtraction.init()();
  *(v0 + 4256) = &type metadata for Catalog.LLM.Adapter.SuggestRecipeItems;
  *(v0 + 4264) = sub_18E37AD78();
  *(v0 + 4232) = swift_allocObject();
  Catalog.LLM.Adapter.SuggestRecipeItems.init()();
  *(v0 + 4296) = &type metadata for Catalog.LLM.Adapter.Summarization;
  *(v0 + 4304) = sub_18E37B018();
  *(v0 + 4272) = swift_allocObject();
  Catalog.LLM.Adapter.Summarization.init()();
  *(v0 + 4336) = &type metadata for Catalog.LLM.Adapter.TablesTransform;
  *(v0 + 4344) = sub_18E37B2B8();
  *(v0 + 4312) = swift_allocObject();
  Catalog.LLM.Adapter.TablesTransform.init()();
  *(v0 + 4376) = &type metadata for Catalog.LLM.Adapter.TakeawaysTransform;
  *(v0 + 4384) = sub_18E37B558();
  *(v0 + 4352) = swift_allocObject();
  Catalog.LLM.Adapter.TakeawaysTransform.init()();
  *(v0 + 4416) = &type metadata for Catalog.LLM.Adapter.TamalePOI;
  *(v0 + 4424) = sub_18E37B7F8();
  *(v0 + 4392) = swift_allocObject();
  Catalog.LLM.Adapter.TamalePOI.init()();
  *(v0 + 4456) = &type metadata for Catalog.LLM.Adapter.TextEventExtraction;
  *(v0 + 4464) = sub_18E37BA98();
  *(v0 + 4432) = swift_allocObject();
  Catalog.LLM.Adapter.TextEventExtraction.init()();
  *(v0 + 4496) = &type metadata for Catalog.LLM.Adapter.TextExpert;
  *(v0 + 4504) = sub_18E37BD38();
  *(v0 + 4472) = swift_allocObject();
  Catalog.LLM.Adapter.TextExpert.init()();
  *(v0 + 4536) = &type metadata for Catalog.LLM.Adapter.TextPersonExtraction;
  *(v0 + 4544) = sub_18E37BFD8();
  *(v0 + 4512) = swift_allocObject();
  Catalog.LLM.Adapter.TextPersonExtraction.init()();
  *(v0 + 4576) = &type metadata for Catalog.LLM.Adapter.TextSummarizer;
  *(v0 + 4584) = sub_18E37C278();
  *(v0 + 4552) = swift_allocObject();
  Catalog.LLM.Adapter.TextSummarizer.init()();
  *(v0 + 4616) = &type metadata for Catalog.LLM.Adapter.AFMTextInstruct3BThirdParty;
  *(v0 + 4624) = sub_18E37C518();
  *(v0 + 4592) = swift_allocObject();
  Catalog.LLM.Adapter.AFMTextInstruct3BThirdParty.init()();
  *(v0 + 4656) = &type metadata for Catalog.LLM.Adapter.UIGrounding;
  *(v0 + 4664) = sub_18E37C7B8();
  *(v0 + 4632) = swift_allocObject();
  Catalog.LLM.Adapter.UIGrounding.init()();
  *(v0 + 4696) = &type metadata for Catalog.LLM.Adapter.UIPreviews;
  *(v0 + 4704) = sub_18E37CA58();
  *(v0 + 4672) = swift_allocObject();
  Catalog.LLM.Adapter.UIPreviews.init()();
  *(v0 + 4736) = &type metadata for Catalog.LLM.Adapter.UrgencyClassification;
  *(v0 + 4744) = sub_18E37CCF8();
  *(v0 + 4712) = swift_allocObject();
  Catalog.LLM.Adapter.UrgencyClassification.init()();
  *(v0 + 4776) = &type metadata for Catalog.LLM.Adapter.SmallMessagesReplyWatch;
  *(v0 + 4784) = sub_18E37CFF0();
  *(v0 + 4752) = swift_allocObject();
  Catalog.LLM.Adapter.SmallMessagesReplyWatch.init()();
  *(v0 + 4816) = &type metadata for Catalog.LLM.Adapter.AccessibilityMagnifier;
  *(v0 + 4824) = sub_18E37D2E4();
  v58 = swift_allocObject();
  *(v0 + 4792) = v58;
  Catalog.LLM.Adapter.AccessibilityMagnifier.init()((v58 + 16));
  *(v0 + 4856) = &type metadata for Catalog.LLM.Adapter.AnswerSynthesisServer;
  *(v0 + 4864) = sub_18E37D584();
  *(v0 + 4832) = swift_allocObject();
  Catalog.LLM.Adapter.AnswerSynthesisServer.init()();
  *(v0 + 4896) = &type metadata for Catalog.LLM.Adapter.InstructServerAutograder;
  *(v0 + 4904) = sub_18E37D824();
  v59 = swift_allocObject();
  *(v0 + 4872) = v59;
  Catalog.LLM.Adapter.InstructServerAutograder.init()((v59 + 16));
  *(v0 + 4936) = &type metadata for Catalog.LLM.Adapter.BaseAdapter;
  *(v0 + 4944) = sub_18E37DAC4();
  v60 = swift_allocObject();
  *(v0 + 4912) = v60;
  Catalog.LLM.Adapter.BaseAdapter.init()((v60 + 16));
  *(v0 + 4976) = &type metadata for Catalog.LLM.Adapter.ServerBulletsTransform;
  *(v0 + 4984) = sub_18E37DD64();
  v61 = swift_allocObject();
  *(v0 + 4952) = v61;
  Catalog.LLM.Adapter.ServerBulletsTransform.init()((v61 + 16));
  *(v0 + 5016) = &type metadata for Catalog.LLM.Adapter.ServerConciseTone;
  *(v0 + 5024) = sub_18E37E004();
  v62 = swift_allocObject();
  *(v0 + 4992) = v62;
  Catalog.LLM.Adapter.ServerConciseTone.init()((v62 + 16));
  *(v0 + 5056) = &type metadata for Catalog.LLM.Adapter.ServerDescribeYourEdit;
  *(v0 + 5064) = sub_18E37E2A4();
  v63 = swift_allocObject();
  *(v0 + 5032) = v63;
  Catalog.LLM.Adapter.ServerDescribeYourEdit.init()((v63 + 16));
  *(v0 + 5096) = &type metadata for Catalog.LLM.Adapter.ServerFitnessWorkoutVoice;
  *(v0 + 5104) = sub_18E37E544();
  v64 = swift_allocObject();
  *(v0 + 5072) = v64;
  Catalog.LLM.Adapter.ServerFitnessWorkoutVoice.init()((v64 + 16));
  *(v0 + 5136) = &type metadata for Catalog.LLM.Adapter.ServerFriendlyTone;
  *(v0 + 5144) = sub_18E37E7E4();
  v65 = swift_allocObject();
  *(v0 + 5112) = v65;
  Catalog.LLM.Adapter.ServerFriendlyTone.init()((v65 + 16));
  *(v0 + 5176) = &type metadata for Catalog.LLM.Adapter.JournalFollowUpPrompts;
  *(v0 + 5184) = sub_18E37EA84();
  v66 = swift_allocObject();
  *(v0 + 5152) = v66;
  Catalog.LLM.Adapter.JournalFollowUpPrompts.init()((v66 + 16));
  *(v0 + 5216) = &type metadata for Catalog.LLM.Adapter.LWPlannerV1;
  *(v0 + 5224) = sub_18E37ED24();
  v67 = swift_allocObject();
  *(v0 + 5192) = v67;
  Catalog.LLM.Adapter.LWPlannerV1.init()((v67 + 16));
  *(v0 + 5256) = &type metadata for Catalog.LLM.Adapter.ServerMagicRewrite;
  *(v0 + 5264) = sub_18E37EFC4();
  v68 = swift_allocObject();
  *(v0 + 5232) = v68;
  Catalog.LLM.Adapter.ServerMagicRewrite.init()((v68 + 16));
  *(v0 + 5296) = &type metadata for Catalog.LLM.Adapter.ServerMailReplyLongFormBasic;
  *(v0 + 5304) = sub_18E37F264();
  v69 = swift_allocObject();
  *(v0 + 5272) = v69;
  Catalog.LLM.Adapter.ServerMailReplyLongFormBasic.init()((v69 + 16));
  *(v0 + 5336) = &type metadata for Catalog.LLM.Adapter.ServerMailReplyLongFormRewrite;
  *(v0 + 5344) = sub_18E37F504();
  v70 = swift_allocObject();
  *(v0 + 5312) = v70;
  Catalog.LLM.Adapter.ServerMailReplyLongFormRewrite.init()((v70 + 16));
  *(v0 + 5376) = &type metadata for Catalog.LLM.Adapter.ServerMailReplyQA;
  *(v0 + 5384) = sub_18E37F7A4();
  v71 = swift_allocObject();
  *(v0 + 5352) = v71;
  Catalog.LLM.Adapter.ServerMailReplyQA.init()((v71 + 16));
  *(v0 + 5416) = &type metadata for Catalog.LLM.Adapter.MessagesUserRequest;
  *(v0 + 5424) = sub_18E37FA44();
  v72 = swift_allocObject();
  *(v0 + 5392) = v72;
  Catalog.LLM.Adapter.MessagesUserRequest.init()((v72 + 16));
  *(v0 + 5456) = &type metadata for Catalog.LLM.Adapter.MMGuardSafetyGuardrailServer;
  *(v0 + 5464) = sub_18E37FCE4();
  v73 = swift_allocObject();
  *(v0 + 5432) = v73;
  Catalog.LLM.Adapter.MMGuardSafetyGuardrailServer.init()((v73 + 16));
  *(v0 + 5496) = &type metadata for Catalog.LLM.Adapter.OpenEndedInteraction;
  *(v0 + 5504) = sub_18E37FF84();
  v74 = swift_allocObject();
  *(v0 + 5472) = v74;
  Catalog.LLM.Adapter.OpenEndedInteraction.init()((v74 + 16));
  *(v0 + 5536) = &type metadata for Catalog.LLM.Adapter.OpenEndedReflection;
  *(v0 + 5544) = sub_18E380224();
  v75 = swift_allocObject();
  *(v0 + 5512) = v75;
  Catalog.LLM.Adapter.OpenEndedReflection.init()((v75 + 16));
  *(v0 + 5576) = &type metadata for Catalog.LLM.Adapter.OpenEndedSchema;
  *(v0 + 5584) = sub_18E3804C4();
  v76 = swift_allocObject();
  *(v0 + 5552) = v76;
  Catalog.LLM.Adapter.OpenEndedSchema.init()((v76 + 16));
  *(v0 + 5616) = &type metadata for Catalog.LLM.Adapter.OpenEndedTone;
  *(v0 + 5624) = sub_18E380764();
  v77 = swift_allocObject();
  *(v0 + 5592) = v77;
  Catalog.LLM.Adapter.OpenEndedTone.init()((v77 + 16));
  *(v0 + 5656) = &type metadata for Catalog.LLM.Adapter.OpenEndedToneQueryResponse;
  *(v0 + 5664) = sub_18E380A04();
  v78 = swift_allocObject();
  *(v0 + 5632) = v78;
  Catalog.LLM.Adapter.OpenEndedToneQueryResponse.init()((v78 + 16));
  *(v0 + 5696) = &type metadata for Catalog.LLM.Adapter.OpenEndedToneQueryResponseV2;
  *(v0 + 5704) = sub_18E380CA4();
  v79 = swift_allocObject();
  *(v0 + 5672) = v79;
  Catalog.LLM.Adapter.OpenEndedToneQueryResponseV2.init()((v79 + 16));
  *(v0 + 5736) = &type metadata for Catalog.LLM.Adapter.ServerPersonalizedSmartReply;
  *(v0 + 5744) = sub_18E380F44();
  v80 = swift_allocObject();
  *(v0 + 5712) = v80;
  Catalog.LLM.Adapter.ServerPersonalizedSmartReply.init()((v80 + 16));
  *(v0 + 5776) = &type metadata for Catalog.LLM.Adapter.PhotosCommon;
  *(v0 + 5784) = sub_18E3811E4();
  v81 = swift_allocObject();
  *(v0 + 5752) = v81;
  Catalog.LLM.Adapter.PhotosCommon.init()((v81 + 16));
  *(v0 + 5816) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCuration;
  *(v0 + 5824) = sub_18E3814D8();
  v82 = swift_allocObject();
  *(v0 + 5792) = v82;
  Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCuration.init()((v82 + 16));
  *(v0 + 5856) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCurationV2;
  *(v0 + 5864) = sub_18E381778();
  v83 = swift_allocObject();
  *(v0 + 5832) = v83;
  Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCurationV2.init()((v83 + 16));
  *(v0 + 5896) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraits;
  *(v0 + 5904) = sub_18E381A18();
  v84 = swift_allocObject();
  *(v0 + 5872) = v84;
  Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraits.init()((v84 + 16));
  *(v0 + 5936) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV2;
  *(v0 + 5944) = sub_18E381CB8();
  v85 = swift_allocObject();
  *(v0 + 5912) = v85;
  Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV2.init()((v85 + 16));
  *(v0 + 5976) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV3;
  *(v0 + 5984) = sub_18E381F58();
  v86 = swift_allocObject();
  *(v0 + 5952) = v86;
  Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV3.init()((v86 + 16));
  *(v0 + 6016) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding;
  *(v0 + 6024) = sub_18E3821F8();
  v87 = swift_allocObject();
  *(v0 + 5992) = v87;
  Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding.init()((v87 + 16));
  *(v0 + 6056) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV2;
  *(v0 + 6064) = sub_18E382498();
  v88 = swift_allocObject();
  *(v0 + 6032) = v88;
  Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV2.init()((v88 + 16));
  *(v0 + 6096) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3;
  *(v0 + 6104) = sub_18E382738();
  v89 = swift_allocObject();
  *(v0 + 6072) = v89;
  Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3.init()((v89 + 16));
  *(v0 + 6136) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationStoryteller;
  *(v0 + 6144) = sub_18E3829D8();
  v90 = swift_allocObject();
  *(v0 + 6112) = v90;
  Catalog.LLM.Adapter.PhotosMemoriesCreationStoryteller.init()((v90 + 16));
  *(v0 + 6176) = &type metadata for Catalog.LLM.Adapter.PhotosMemoriesCreationStorytellerV2;
  *(v0 + 6184) = sub_18E382C78();
  v91 = swift_allocObject();
  *(v0 + 6152) = v91;
  Catalog.LLM.Adapter.PhotosMemoriesCreationStorytellerV2.init()((v91 + 16));
  *(v0 + 6216) = &type metadata for Catalog.LLM.Adapter.Planner;
  *(v0 + 6224) = sub_18E382F18();
  v92 = swift_allocObject();
  *(v0 + 6192) = v92;
  Catalog.LLM.Adapter.Planner.init()((v92 + 16));
  *(v0 + 6256) = &type metadata for Catalog.LLM.Adapter.PlannerV2;
  *(v0 + 6264) = sub_18E3831B8();
  *(v0 + 6232) = swift_allocObject();
  Catalog.LLM.Adapter.PlannerV2.init()();
  *(v0 + 6296) = &type metadata for Catalog.LLM.Adapter.PlannerV3;
  *(v0 + 6304) = sub_18E383458();
  v93 = swift_allocObject();
  *(v0 + 6272) = v93;
  Catalog.LLM.Adapter.PlannerV3.init()((v93 + 16));
  *(v0 + 6336) = &type metadata for Catalog.LLM.Adapter.PlannerV7;
  *(v0 + 6344) = sub_18E3836F8();
  v94 = swift_allocObject();
  *(v0 + 6312) = v94;
  Catalog.LLM.Adapter.PlannerV7.init()((v94 + 16));
  *(v0 + 6376) = &type metadata for Catalog.LLM.Adapter.PlannerV8;
  *(v0 + 6384) = sub_18E383998();
  v95 = swift_allocObject();
  *(v0 + 6352) = v95;
  Catalog.LLM.Adapter.PlannerV8.init()((v95 + 16));
  *(v0 + 6416) = &type metadata for Catalog.LLM.Adapter.PlannerV9;
  *(v0 + 6424) = sub_18E383C38();
  v96 = swift_allocObject();
  *(v0 + 6392) = v96;
  Catalog.LLM.Adapter.PlannerV9.init()((v96 + 16));
  *(v0 + 6456) = &type metadata for Catalog.LLM.Adapter.ServerPQAVerification;
  *(v0 + 6464) = sub_18E383ED8();
  v97 = swift_allocObject();
  *(v0 + 6432) = v97;
  Catalog.LLM.Adapter.ServerPQAVerification.init()((v97 + 16));
  *(v0 + 6496) = &type metadata for Catalog.LLM.Adapter.ServerProfessionalTone;
  *(v0 + 6504) = sub_18E384178();
  v98 = swift_allocObject();
  *(v0 + 6472) = v98;
  Catalog.LLM.Adapter.ServerProfessionalTone.init()((v98 + 16));
  *(v0 + 6536) = &type metadata for Catalog.LLM.Adapter.ServerProofreadingReview;
  *(v0 + 6544) = sub_18E384418();
  v99 = swift_allocObject();
  *(v0 + 6512) = v99;
  Catalog.LLM.Adapter.ServerProofreadingReview.init()((v99 + 16));
  *(v0 + 6576) = &type metadata for Catalog.LLM.Adapter.RemindersAutoCategorizeList;
  *(v0 + 6584) = sub_18E3846B8();
  v100 = swift_allocObject();
  *(v0 + 6552) = v100;
  Catalog.LLM.Adapter.RemindersAutoCategorizeList.init()((v100 + 16));
  *(v0 + 6616) = &type metadata for Catalog.LLM.Adapter.ResponseGeneration;
  *(v0 + 6624) = sub_18E384958();
  *(v0 + 6592) = swift_allocObject();
  Catalog.LLM.Adapter.ResponseGeneration.init()();
  *(v0 + 6656) = &type metadata for Catalog.LLM.Adapter.ResponseGenerationV2;
  *(v0 + 6664) = sub_18E384BF8();
  v101 = swift_allocObject();
  *(v0 + 6632) = v101;
  Catalog.LLM.Adapter.ResponseGenerationV2.init()((v101 + 16));
  *(v0 + 6696) = &type metadata for Catalog.LLM.Adapter.ResponseGenerationV3;
  *(v0 + 6704) = sub_18E384E98();
  v102 = swift_allocObject();
  *(v0 + 6672) = v102;
  Catalog.LLM.Adapter.ResponseGenerationV3.init()((v102 + 16));
  *(v0 + 6736) = &type metadata for Catalog.LLM.Adapter.ResponseGenerationV7;
  *(v0 + 6744) = sub_18E385138();
  v103 = swift_allocObject();
  *(v0 + 6712) = v103;
  Catalog.LLM.Adapter.ResponseGenerationV7.init()((v103 + 16));
  *(v0 + 6776) = &type metadata for Catalog.LLM.Adapter.ResponseGenerationV8;
  *(v0 + 6784) = sub_18E3853D8();
  v104 = swift_allocObject();
  *(v0 + 6752) = v104;
  Catalog.LLM.Adapter.ResponseGenerationV8.init()((v104 + 16));
  *(v0 + 6816) = &type metadata for Catalog.LLM.Adapter.SearchQueryUnderstandingServer;
  *(v0 + 6824) = sub_18E385678();
  *(v0 + 6792) = swift_allocObject();
  Catalog.LLM.Adapter.SearchQueryUnderstandingServer.init()();
  *(v0 + 6856) = &type metadata for Catalog.LLM.Adapter.ShortcutsAskAFMAction;
  *(v0 + 6864) = sub_18E385918();
  v105 = swift_allocObject();
  *(v0 + 6832) = v105;
  Catalog.LLM.Adapter.ShortcutsAskAFMAction.init()((v105 + 16));
  *(v0 + 6896) = &type metadata for Catalog.LLM.Adapter.ShortcutsAskAFMActionV2;
  *(v0 + 6904) = sub_18E385BB8();
  v106 = swift_allocObject();
  *(v0 + 6872) = v106;
  Catalog.LLM.Adapter.ShortcutsAskAFMActionV2.init()((v106 + 16));
  *(v0 + 6936) = &type metadata for Catalog.LLM.Adapter.ServerStructuredExtraction;
  *(v0 + 6944) = sub_18E385E58();
  v107 = swift_allocObject();
  *(v0 + 6912) = v107;
  Catalog.LLM.Adapter.ServerStructuredExtraction.init()((v107 + 16));
  *(v0 + 6976) = &type metadata for Catalog.LLM.Adapter.STXMultimodal;
  *(v0 + 6984) = sub_18E3860F8();
  v108 = swift_allocObject();
  *(v0 + 6952) = v108;
  Catalog.LLM.Adapter.STXMultimodal.init()((v108 + 16));
  *(v0 + 7016) = &type metadata for Catalog.LLM.Adapter.SuperAutofillMultimodal;
  *(v0 + 7024) = sub_18E386398();
  v109 = swift_allocObject();
  *(v0 + 6992) = v109;
  Catalog.LLM.Adapter.SuperAutofillMultimodal.init()((v109 + 16));
  *(v0 + 7056) = &type metadata for Catalog.LLM.Adapter.ServerTablesTransform;
  *(v0 + 7064) = sub_18E386638();
  v110 = swift_allocObject();
  *(v0 + 7032) = v110;
  Catalog.LLM.Adapter.ServerTablesTransform.init()((v110 + 16));
  *(v0 + 7096) = &type metadata for Catalog.LLM.Adapter.ServerTakeawaysTransform;
  *(v0 + 7104) = sub_18E3868D8();
  v111 = swift_allocObject();
  *(v0 + 7072) = v111;
  Catalog.LLM.Adapter.ServerTakeawaysTransform.init()((v111 + 16));
  *(v0 + 7136) = &type metadata for Catalog.LLM.Adapter.SummarizationTextSummarizer;
  *(v0 + 7144) = sub_18E386B78();
  *(v0 + 7112) = swift_allocObject();
  Catalog.LLM.Adapter.SummarizationTextSummarizer.init()();
  *(v0 + 7176) = &type metadata for Catalog.LLM.Adapter.FinancialInsights;
  *(v0 + 7184) = sub_18E386E18();
  v112 = swift_allocObject();
  *(v0 + 7152) = v112;
  Catalog.LLM.Adapter.FinancialInsights.init()((v112 + 16));
  *(v0 + 7216) = &type metadata for Catalog.LLM.DraftModel.CodeLMLargeV1;
  *(v0 + 7224) = sub_18E38703C();
  v113 = swift_allocObject();
  *(v0 + 7192) = v113;
  Catalog.LLM.DraftModel.CodeLMLargeV1.init()((v113 + 16));
  *(v0 + 7256) = &type metadata for Catalog.LLM.DraftModel.CodeLMLargeV2;
  *(v0 + 7264) = sub_18E387260();
  v114 = swift_allocObject();
  *(v0 + 7232) = v114;
  Catalog.LLM.DraftModel.CodeLMLargeV2.init()((v114 + 16));
  *(v0 + 7296) = &type metadata for Catalog.LLM.DraftModel.CodeLMLargeV3;
  *(v0 + 7304) = sub_18E387484();
  v115 = swift_allocObject();
  *(v0 + 7272) = v115;
  Catalog.LLM.DraftModel.CodeLMLargeV3.init()((v115 + 16));
  *(v0 + 7336) = &type metadata for Catalog.LLM.DraftModel.CodeLMLargeV4;
  *(v0 + 7344) = sub_18E3876A8();
  v116 = swift_allocObject();
  *(v0 + 7312) = v116;
  Catalog.LLM.DraftModel.CodeLMLargeV4.init()((v116 + 16));
  *(v0 + 7376) = &type metadata for Catalog.LLM.DraftModel.CodeLMLargeV5;
  *(v0 + 7384) = sub_18E3878CC();
  v117 = swift_allocObject();
  *(v0 + 7352) = v117;
  Catalog.LLM.DraftModel.CodeLMLargeV5.init()((v117 + 16));
  *(v0 + 7416) = &type metadata for Catalog.LLM.DraftModel.CodeLMSmallV1;
  *(v0 + 7424) = sub_18E387AF0();
  v118 = swift_allocObject();
  *(v0 + 7392) = v118;
  Catalog.LLM.DraftModel.CodeLMSmallV1.init()((v118 + 16));
  *(v0 + 7456) = &type metadata for Catalog.LLM.DraftModel.CodeLMSmallV2;
  *(v0 + 7464) = sub_18E387D14();
  v119 = swift_allocObject();
  *(v0 + 7432) = v119;
  Catalog.LLM.DraftModel.CodeLMSmallV2.init()((v119 + 16));
  *(v0 + 7496) = &type metadata for Catalog.LLM.DraftModel.CodeLMSmallV3;
  *(v0 + 7504) = sub_18E387F38();
  v120 = swift_allocObject();
  *(v0 + 7472) = v120;
  Catalog.LLM.DraftModel.CodeLMSmallV3.init()((v120 + 16));
  *(v0 + 7536) = &type metadata for Catalog.LLM.DraftModel.CodeLMSmallV4;
  *(v0 + 7544) = sub_18E38815C();
  v121 = swift_allocObject();
  *(v0 + 7512) = v121;
  Catalog.LLM.DraftModel.CodeLMSmallV4.init()((v121 + 16));
  *(v0 + 7576) = &type metadata for Catalog.LLM.DraftModel.CodeLMSmallV5;
  *(v0 + 7584) = sub_18E388380();
  v122 = swift_allocObject();
  *(v0 + 7552) = v122;
  Catalog.LLM.DraftModel.CodeLMSmallV5.init()((v122 + 16));
  *(v0 + 7616) = &type metadata for Catalog.LLM.DraftModel.CodeLM;
  *(v0 + 7624) = sub_18E3885A4();
  v123 = swift_allocObject();
  *(v0 + 7592) = v123;
  Catalog.LLM.DraftModel.CodeLM.init()((v123 + 16));
  *(v0 + 7656) = &type metadata for Catalog.LLM.DraftModel.CodeLMV1ANE3B;
  *(v0 + 7664) = sub_18E3887C8();
  v124 = swift_allocObject();
  *(v0 + 7632) = v124;
  Catalog.LLM.DraftModel.CodeLMV1ANE3B.init()((v124 + 16));
  *(v0 + 7696) = &type metadata for Catalog.LLM.DraftModel.ADMPromptRewriting;
  *(v0 + 7704) = sub_18E3889EC();
  *(v0 + 7672) = swift_allocObject();
  Catalog.LLM.DraftModel.ADMPromptRewriting.init()();
  *(v0 + 7736) = &type metadata for Catalog.LLM.DraftModel.AnswerSynthesis;
  *(v0 + 7744) = sub_18E388C10();
  *(v0 + 7712) = swift_allocObject();
  Catalog.LLM.DraftModel.AnswerSynthesis.init()();
  *(v0 + 7776) = &type metadata for Catalog.LLM.DraftModel.AutonamingMessages;
  *(v0 + 7784) = sub_18E388E34();
  *(v0 + 7752) = swift_allocObject();
  Catalog.LLM.DraftModel.AutonamingMessages.init()();
  *(v0 + 7816) = &type metadata for Catalog.LLM.DraftModel.InstructBaseDraftModel;
  *(v0 + 7824) = sub_18E389058();
  *(v0 + 7792) = swift_allocObject();
  Catalog.LLM.DraftModel.InstructBaseDraftModel.init()();
  *(v0 + 7856) = &type metadata for Catalog.LLM.DraftModel.BulletsTransform;
  *(v0 + 7864) = sub_18E38927C();
  *(v0 + 7832) = swift_allocObject();
  Catalog.LLM.DraftModel.BulletsTransform.init()();
  *(v0 + 7896) = &type metadata for Catalog.LLM.DraftModel.ConciseTone;
  *(v0 + 7904) = sub_18E3894A0();
  *(v0 + 7872) = swift_allocObject();
  Catalog.LLM.DraftModel.ConciseTone.init()();
  *(v0 + 7936) = &type metadata for Catalog.LLM.DraftModel.ContextProgram;
  *(v0 + 7944) = sub_18E3896C4();
  *(v0 + 7912) = swift_allocObject();
  Catalog.LLM.DraftModel.ContextProgram.init()();
  *(v0 + 7976) = &type metadata for Catalog.LLM.DraftModel.InstructFMApiGeneric;
  *(v0 + 7984) = sub_18E3898E8();
  *(v0 + 7952) = swift_allocObject();
  Catalog.LLM.DraftModel.InstructFMApiGeneric.init()();
  *(v0 + 8016) = &type metadata for Catalog.LLM.DraftModel.InstructFMApiThirdPartyCompileDraft;
  *(v0 + 8024) = sub_18E389B0C();
  *(v0 + 7992) = swift_allocObject();
  Catalog.LLM.DraftModel.InstructFMApiThirdPartyCompileDraft.init()();
  *(v0 + 8056) = &type metadata for Catalog.LLM.DraftModel.FriendlyTone;
  *(v0 + 8064) = sub_18E389D30();
  *(v0 + 8032) = swift_allocObject();
  Catalog.LLM.DraftModel.FriendlyTone.init()();
  *(v0 + 8096) = &type metadata for Catalog.LLM.DraftModel.JournalMomentsClassification;
  *(v0 + 8104) = sub_18E389F54();
  v125 = swift_allocObject();
  *(v0 + 8072) = v125;
  Catalog.LLM.DraftModel.JournalMomentsClassification.init()(v125, v126, v127, v128, v129, v130, v131, v132, v133);
  *(v0 + 8136) = &type metadata for Catalog.LLM.DraftModel.JournalMomentsReflection;
  *(v0 + 8144) = sub_18E38A178();
  v134 = swift_allocObject();
  *(v0 + 8112) = v134;
  Catalog.LLM.DraftModel.JournalMomentsReflection.init()(v134, v135, v136, v137, v138, v139, v140, v141, v142);
  *(v0 + 8176) = &type metadata for Catalog.LLM.DraftModel.LWOnDevicePlannerV1;
  *(v0 + 8184) = sub_18E38A39C();
  *(v0 + 8152) = swift_allocObject();
  Catalog.LLM.DraftModel.LWOnDevicePlannerV1.init()();
  *(v0 + 8216) = &type metadata for Catalog.LLM.DraftModel.MagicRewrite;
  *(v0 + 8224) = sub_18E38A5C0();
  *(v0 + 0x2000) = swift_allocObject();
  Catalog.LLM.DraftModel.MagicRewrite.init()();
  *(v0 + 8256) = &type metadata for Catalog.LLM.DraftModel.MailReply;
  *(v0 + 8264) = sub_18E38A7E4();
  *(v0 + 8232) = swift_allocObject();
  Catalog.LLM.DraftModel.MailReply.init()();
  *(v0 + 8296) = &type metadata for Catalog.LLM.DraftModel.MailReplyLongFormBasic;
  *(v0 + 8304) = sub_18E38AA08();
  *(v0 + 8272) = swift_allocObject();
  Catalog.LLM.DraftModel.MailReplyLongFormBasic.init()();
  *(v0 + 8336) = &type metadata for Catalog.LLM.DraftModel.MailReplyLongFormRewrite;
  *(v0 + 8344) = sub_18E38AC2C();
  *(v0 + 8312) = swift_allocObject();
  Catalog.LLM.DraftModel.MailReplyLongFormRewrite.init()();
  *(v0 + 8376) = &type metadata for Catalog.LLM.DraftModel.MailReplyQA;
  *(v0 + 8384) = sub_18E38AE50();
  *(v0 + 8352) = swift_allocObject();
  Catalog.LLM.DraftModel.MailReplyQA.init()();
  *(v0 + 8416) = &type metadata for Catalog.LLM.DraftModel.MessagesAction;
  *(v0 + 8424) = sub_18E38B074();
  *(v0 + 8392) = swift_allocObject();
  Catalog.LLM.DraftModel.MessagesAction.init()();
  *(v0 + 8456) = &type metadata for Catalog.LLM.DraftModel.MessagesReply;
  *(v0 + 8464) = sub_18E38B298();
  *(v0 + 8432) = swift_allocObject();
  Catalog.LLM.DraftModel.MessagesReply.init()();
  *(v0 + 8496) = &type metadata for Catalog.LLM.DraftModel.PersonalizedSmartReply;
  *(v0 + 8504) = sub_18E38B4BC();
  *(v0 + 8472) = swift_allocObject();
  Catalog.LLM.DraftModel.PersonalizedSmartReply.init()();
  *(v0 + 8536) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b;
  *(v0 + 8544) = sub_18E38B6E0();
  *(v0 + 8512) = swift_allocObject();
  Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b.init()();
  *(v0 + 8576) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b;
  *(v0 + 8584) = sub_18E38B904();
  *(v0 + 8552) = swift_allocObject();
  Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b.init()();
  *(v0 + 8616) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b;
  *(v0 + 8624) = sub_18E38BB28();
  *(v0 + 8592) = swift_allocObject();
  Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b.init()();
  *(v0 + 8656) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b;
  *(v0 + 8664) = sub_18E38BD4C();
  *(v0 + 8632) = swift_allocObject();
  Catalog.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b.init()();
  *(v0 + 8696) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesTitle;
  *(v0 + 8704) = sub_18E38BF70();
  *(v0 + 8672) = swift_allocObject();
  Catalog.LLM.DraftModel.PhotosMemoriesTitle.init()();
  *(v0 + 8736) = &type metadata for Catalog.LLM.DraftModel.PlannerV4;
  *(v0 + 8744) = sub_18E38C194();
  *(v0 + 8712) = swift_allocObject();
  Catalog.LLM.DraftModel.PlannerV4.init()();
  *(v0 + 8776) = &type metadata for Catalog.LLM.DraftModel.PlannerV5;
  *(v0 + 8784) = sub_18E38C3B8();
  *(v0 + 8752) = swift_allocObject();
  Catalog.LLM.DraftModel.PlannerV5.init()();
  *(v0 + 8816) = &type metadata for Catalog.LLM.DraftModel.PlannerV6;
  *(v0 + 8824) = sub_18E38C5DC();
  *(v0 + 8792) = swift_allocObject();
  Catalog.LLM.DraftModel.PlannerV6.init()();
  *(v0 + 8856) = &type metadata for Catalog.LLM.DraftModel.ProfessionalTone;
  *(v0 + 8864) = sub_18E38C800();
  *(v0 + 8832) = swift_allocObject();
  Catalog.LLM.DraftModel.ProfessionalTone.init()();
  *(v0 + 8896) = &type metadata for Catalog.LLM.DraftModel.ProofreadingReview;
  *(v0 + 8904) = sub_18E38CA24();
  *(v0 + 8872) = swift_allocObject();
  Catalog.LLM.DraftModel.ProofreadingReview.init()();
  *(v0 + 8936) = &type metadata for Catalog.LLM.DraftModel.RemindersSuggestActionItems;
  *(v0 + 8944) = sub_18E38CC48();
  *(v0 + 8912) = swift_allocObject();
  Catalog.LLM.DraftModel.RemindersSuggestActionItems.init()();
  *(v0 + 8976) = &type metadata for Catalog.LLM.DraftModel.ResponseGenerationV4;
  *(v0 + 8984) = sub_18E38CE6C();
  *(v0 + 8952) = swift_allocObject();
  Catalog.LLM.DraftModel.ResponseGenerationV4.init()();
  *(v0 + 9016) = &type metadata for Catalog.LLM.DraftModel.ResponseGenerationV5;
  *(v0 + 9024) = sub_18E38D090();
  *(v0 + 8992) = swift_allocObject();
  Catalog.LLM.DraftModel.ResponseGenerationV5.init()();
  *(v0 + 9056) = &type metadata for Catalog.LLM.DraftModel.ResponseGenerationV6;
  *(v0 + 9064) = sub_18E38D2B4();
  *(v0 + 9032) = swift_allocObject();
  Catalog.LLM.DraftModel.ResponseGenerationV6.init()();
  *(v0 + 9096) = &type metadata for Catalog.LLM.DraftModel.SafetyGuardrail;
  *(v0 + 9104) = sub_18E38D4D8();
  *(v0 + 9072) = swift_allocObject();
  Catalog.LLM.DraftModel.SafetyGuardrail.init()();
  *(v0 + 9136) = &type metadata for Catalog.LLM.DraftModel.SearchQueryUnderstandingOnDevice;
  *(v0 + 9144) = sub_18E38D6FC();
  *(v0 + 9112) = swift_allocObject();
  Catalog.LLM.DraftModel.SearchQueryUnderstandingOnDevice.init()();
  *(v0 + 9176) = &type metadata for Catalog.LLM.DraftModel.ShortcutsAskAFMAction3B;
  *(v0 + 9184) = sub_18E38D920();
  *(v0 + 9152) = swift_allocObject();
  Catalog.LLM.DraftModel.ShortcutsAskAFMAction3B.init()();
  *(v0 + 9216) = &type metadata for Catalog.LLM.DraftModel.ShortcutsAskAFMAction3BV2;
  *(v0 + 9224) = sub_18E38DB44();
  *(v0 + 9192) = swift_allocObject();
  Catalog.LLM.DraftModel.ShortcutsAskAFMAction3BV2.init()();
  *(v0 + 9256) = &type metadata for Catalog.LLM.DraftModel.SmartAppActions;
  *(v0 + 9264) = sub_18E38DD68();
  *(v0 + 9232) = swift_allocObject();
  Catalog.LLM.DraftModel.SmartAppActions.init()();
  *(v0 + 9296) = &type metadata for Catalog.LLM.DraftModel.StructuredExtraction;
  *(v0 + 9304) = sub_18E38DF8C();
  *(v0 + 9272) = swift_allocObject();
  Catalog.LLM.DraftModel.StructuredExtraction.init()();
  *(v0 + 9336) = &type metadata for Catalog.LLM.DraftModel.SuggestRecipeItems;
  *(v0 + 9344) = sub_18E38E1B0();
  *(v0 + 9312) = swift_allocObject();
  Catalog.LLM.DraftModel.SuggestRecipeItems.init()();
  *(v0 + 9376) = &type metadata for Catalog.LLM.DraftModel.Summarization;
  *(v0 + 9384) = sub_18E38E3D4();
  *(v0 + 9352) = swift_allocObject();
  Catalog.LLM.DraftModel.Summarization.init()();
  *(v0 + 9416) = &type metadata for Catalog.LLM.DraftModel.TablesTransform;
  *(v0 + 9424) = sub_18E38E5F8();
  *(v0 + 9392) = swift_allocObject();
  Catalog.LLM.DraftModel.TablesTransform.init()();
  *(v0 + 9456) = &type metadata for Catalog.LLM.DraftModel.TakeawaysTransform;
  *(v0 + 9464) = sub_18E38E81C();
  *(v0 + 9432) = swift_allocObject();
  Catalog.LLM.DraftModel.TakeawaysTransform.init()();
  *(v0 + 9496) = &type metadata for Catalog.LLM.DraftModel.TextEventExtraction;
  *(v0 + 9504) = sub_18E38EA40();
  *(v0 + 9472) = swift_allocObject();
  Catalog.LLM.DraftModel.TextEventExtraction.init()();
  *(v0 + 9536) = &type metadata for Catalog.LLM.DraftModel.TextExpert;
  *(v0 + 9544) = sub_18E38EC64();
  *(v0 + 9512) = swift_allocObject();
  Catalog.LLM.DraftModel.TextExpert.init()();
  *(v0 + 9576) = &type metadata for Catalog.LLM.DraftModel.TextPersonExtraction;
  *(v0 + 9584) = sub_18E38EE88();
  *(v0 + 9552) = swift_allocObject();
  Catalog.LLM.DraftModel.TextPersonExtraction.init()();
  *(v0 + 9616) = &type metadata for Catalog.LLM.DraftModel.TextSummarizer;
  *(v0 + 9624) = sub_18E38F0AC();
  *(v0 + 9592) = swift_allocObject();
  Catalog.LLM.DraftModel.TextSummarizer.init()();
  *(v0 + 9656) = &type metadata for Catalog.LLM.DraftModel.Textunderstanding;
  *(v0 + 9664) = sub_18E38F2D0();
  *(v0 + 9632) = swift_allocObject();
  Catalog.LLM.DraftModel.Textunderstanding.init()();
  *(v0 + 9696) = &type metadata for Catalog.LLM.DraftModel.AFMTextInstruct3BThirdParty;
  *(v0 + 9704) = sub_18E38F4F4();
  *(v0 + 9672) = swift_allocObject();
  Catalog.LLM.DraftModel.AFMTextInstruct3BThirdParty.init()();
  *(v0 + 9736) = &type metadata for Catalog.LLM.DraftModel.UIPreviews;
  *(v0 + 9744) = sub_18E38F718();
  *(v0 + 9712) = swift_allocObject();
  Catalog.LLM.DraftModel.UIPreviews.init()();
  *(v0 + 9776) = &type metadata for Catalog.LLM.DraftModel.AnswerSynthesisServer;
  *(v0 + 9784) = sub_18E38F93C();
  *(v0 + 9752) = swift_allocObject();
  Catalog.LLM.DraftModel.AnswerSynthesisServer.init()();
  *(v0 + 9816) = &type metadata for Catalog.LLM.DraftModel.ServerBulletsTransform;
  *(v0 + 9824) = sub_18E38FB60();
  v143 = swift_allocObject();
  *(v0 + 9792) = v143;
  Catalog.LLM.DraftModel.ServerBulletsTransform.init()((v143 + 16));
  *(v0 + 9856) = &type metadata for Catalog.LLM.DraftModel.ServerConciseTone;
  *(v0 + 9864) = sub_18E38FD84();
  v144 = swift_allocObject();
  *(v0 + 9832) = v144;
  Catalog.LLM.DraftModel.ServerConciseTone.init()((v144 + 16));
  *(v0 + 9896) = &type metadata for Catalog.LLM.DraftModel.ServerFitnessWorkoutVoice;
  *(v0 + 9904) = sub_18E38FFA8();
  v145 = swift_allocObject();
  *(v0 + 9872) = v145;
  Catalog.LLM.DraftModel.ServerFitnessWorkoutVoice.init()(v145 + 16);
  *(v0 + 9936) = &type metadata for Catalog.LLM.DraftModel.ServerFriendlyTone;
  *(v0 + 9944) = sub_18E3901CC();
  v146 = swift_allocObject();
  *(v0 + 9912) = v146;
  Catalog.LLM.DraftModel.ServerFriendlyTone.init()((v146 + 16));
  *(v0 + 9976) = &type metadata for Catalog.LLM.DraftModel.JournalFollowUpPrompts;
  *(v0 + 9984) = sub_18E3903F0();
  v147 = swift_allocObject();
  *(v0 + 9952) = v147;
  Catalog.LLM.DraftModel.JournalFollowUpPrompts.init()((v147 + 16));
  *(v0 + 10016) = &type metadata for Catalog.LLM.DraftModel.LWPlannerV1;
  *(v0 + 10024) = sub_18E390614();
  v148 = swift_allocObject();
  *(v0 + 9992) = v148;
  Catalog.LLM.DraftModel.LWPlannerV1.init()((v148 + 16));
  *(v0 + 10056) = &type metadata for Catalog.LLM.DraftModel.ServerMagicRewrite;
  *(v0 + 10064) = sub_18E390838();
  v149 = swift_allocObject();
  *(v0 + 10032) = v149;
  Catalog.LLM.DraftModel.ServerMagicRewrite.init()((v149 + 16));
  *(v0 + 10096) = &type metadata for Catalog.LLM.DraftModel.ServerMailReplyLongFormBasic;
  *(v0 + 10104) = sub_18E390A5C();
  v150 = swift_allocObject();
  *(v0 + 10072) = v150;
  Catalog.LLM.DraftModel.ServerMailReplyLongFormBasic.init()((v150 + 16));
  *(v0 + 10136) = &type metadata for Catalog.LLM.DraftModel.ServerMailReplyLongFormRewrite;
  *(v0 + 10144) = sub_18E390C80();
  v151 = swift_allocObject();
  *(v0 + 10112) = v151;
  Catalog.LLM.DraftModel.ServerMailReplyLongFormRewrite.init()((v151 + 16));
  *(v0 + 10176) = &type metadata for Catalog.LLM.DraftModel.ServerMailReplyQA;
  *(v0 + 10184) = sub_18E390EA4();
  v152 = swift_allocObject();
  *(v0 + 10152) = v152;
  Catalog.LLM.DraftModel.ServerMailReplyQA.init()((v152 + 16));
  *(v0 + 10216) = &type metadata for Catalog.LLM.DraftModel.MessagesUserRequest;
  *(v0 + 10224) = sub_18E3910C8();
  v153 = swift_allocObject();
  *(v0 + 10192) = v153;
  Catalog.LLM.DraftModel.MessagesUserRequest.init()((v153 + 16));
  *(v0 + 10256) = &type metadata for Catalog.LLM.DraftModel.OpenEndedInteraction;
  *(v0 + 10264) = sub_18E3912EC();
  v154 = swift_allocObject();
  *(v0 + 10232) = v154;
  Catalog.LLM.DraftModel.OpenEndedInteraction.init()((v154 + 16));
  *(v0 + 10296) = &type metadata for Catalog.LLM.DraftModel.OpenEndedReflection;
  *(v0 + 10304) = sub_18E391510();
  v155 = swift_allocObject();
  *(v0 + 10272) = v155;
  Catalog.LLM.DraftModel.OpenEndedReflection.init()((v155 + 16));
  *(v0 + 10336) = &type metadata for Catalog.LLM.DraftModel.OpenEndedSchema;
  *(v0 + 10344) = sub_18E391734();
  v156 = swift_allocObject();
  *(v0 + 10312) = v156;
  Catalog.LLM.DraftModel.OpenEndedSchema.init()((v156 + 16));
  *(v0 + 10376) = &type metadata for Catalog.LLM.DraftModel.OpenEndedTone;
  *(v0 + 10384) = sub_18E391958();
  v157 = swift_allocObject();
  *(v0 + 10352) = v157;
  Catalog.LLM.DraftModel.OpenEndedTone.init()((v157 + 16));
  *(v0 + 10416) = &type metadata for Catalog.LLM.DraftModel.ServerPersonalizedSmartReply;
  *(v0 + 10424) = sub_18E391B7C();
  v158 = swift_allocObject();
  *(v0 + 10392) = v158;
  Catalog.LLM.DraftModel.ServerPersonalizedSmartReply.init()((v158 + 16));
  *(v0 + 10456) = &type metadata for Catalog.LLM.DraftModel.PhotosCommon;
  *(v0 + 10464) = sub_18E391DA0();
  v159 = swift_allocObject();
  *(v0 + 10432) = v159;
  Catalog.LLM.DraftModel.PhotosCommon.init()(v159 + 16);
  *(v0 + 10496) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCuration;
  *(v0 + 10504) = sub_18E391FC4();
  v160 = swift_allocObject();
  *(v0 + 10472) = v160;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCuration.init()((v160 + 16));
  *(v0 + 10536) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCurationV2;
  *(v0 + 10544) = sub_18E3921E8();
  v161 = swift_allocObject();
  *(v0 + 10512) = v161;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCurationV2.init()((v161 + 16));
  *(v0 + 10576) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits;
  *(v0 + 10584) = sub_18E39240C();
  v162 = swift_allocObject();
  *(v0 + 10552) = v162;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits.init()((v162 + 16));
  *(v0 + 10616) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV2;
  *(v0 + 10624) = sub_18E392630();
  v163 = swift_allocObject();
  *(v0 + 10592) = v163;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV2.init()((v163 + 16));
  *(v0 + 10656) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV3;
  *(v0 + 10664) = sub_18E392854();
  v164 = swift_allocObject();
  *(v0 + 10632) = v164;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV3.init()((v164 + 16));
  *(v0 + 10696) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding;
  *(v0 + 10704) = sub_18E392A78();
  v165 = swift_allocObject();
  *(v0 + 10672) = v165;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding.init()((v165 + 16));
  *(v0 + 10736) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV2;
  *(v0 + 10744) = sub_18E392C9C();
  v166 = swift_allocObject();
  *(v0 + 10712) = v166;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV2.init()((v166 + 16));
  *(v0 + 10776) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV3;
  *(v0 + 10784) = sub_18E392EC0();
  v167 = swift_allocObject();
  *(v0 + 10752) = v167;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV3.init()((v167 + 16));
  *(v0 + 10816) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationStoryteller;
  *(v0 + 10824) = sub_18E3930E4();
  v168 = swift_allocObject();
  *(v0 + 10792) = v168;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationStoryteller.init()((v168 + 16));
  *(v0 + 10856) = &type metadata for Catalog.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2;
  *(v0 + 10864) = sub_18E393308();
  v169 = swift_allocObject();
  *(v0 + 10832) = v169;
  Catalog.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2.init()((v169 + 16));
  *(v0 + 10896) = &type metadata for Catalog.LLM.DraftModel.Planner;
  *(v0 + 10904) = sub_18E39352C();
  v170 = swift_allocObject();
  *(v0 + 10872) = v170;
  Catalog.LLM.DraftModel.Planner.init()((v170 + 16));
  *(v0 + 10936) = &type metadata for Catalog.LLM.DraftModel.PlannerV2;
  *(v0 + 10944) = sub_18E393750();
  *(v0 + 10912) = swift_allocObject();
  Catalog.LLM.DraftModel.PlannerV2.init()();
  *(v0 + 10976) = &type metadata for Catalog.LLM.DraftModel.PlannerV3;
  *(v0 + 10984) = sub_18E393974();
  v171 = swift_allocObject();
  *(v0 + 10952) = v171;
  Catalog.LLM.DraftModel.PlannerV3.init()((v171 + 16));
  *(v0 + 11016) = &type metadata for Catalog.LLM.DraftModel.PlannerV7;
  *(v0 + 11024) = sub_18E393B98();
  v172 = swift_allocObject();
  *(v0 + 10992) = v172;
  Catalog.LLM.DraftModel.PlannerV7.init()((v172 + 16));
  *(v0 + 11056) = &type metadata for Catalog.LLM.DraftModel.PlannerV8;
  *(v0 + 11064) = sub_18E393DBC();
  v173 = swift_allocObject();
  *(v0 + 11032) = v173;
  Catalog.LLM.DraftModel.PlannerV8.init()((v173 + 16));
  *(v0 + 11096) = &type metadata for Catalog.LLM.DraftModel.PlannerV9;
  *(v0 + 11104) = sub_18E393FE0();
  v174 = swift_allocObject();
  *(v0 + 11072) = v174;
  Catalog.LLM.DraftModel.PlannerV9.init()((v174 + 16));
  *(v0 + 11136) = &type metadata for Catalog.LLM.DraftModel.ServerProfessionalTone;
  *(v0 + 11144) = sub_18E394204();
  v175 = swift_allocObject();
  *(v0 + 11112) = v175;
  Catalog.LLM.DraftModel.ServerProfessionalTone.init()((v175 + 16));
  *(v0 + 11176) = &type metadata for Catalog.LLM.DraftModel.ServerProofreadingReview;
  *(v0 + 11184) = sub_18E394428();
  v176 = swift_allocObject();
  *(v0 + 11152) = v176;
  Catalog.LLM.DraftModel.ServerProofreadingReview.init()((v176 + 16));
  *(v0 + 11216) = &type metadata for Catalog.LLM.DraftModel.RemindersAutoCategorizeList;
  *(v0 + 11224) = sub_18E39464C();
  v177 = swift_allocObject();
  *(v0 + 11192) = v177;
  Catalog.LLM.DraftModel.RemindersAutoCategorizeList.init()(v177 + 16);
  *(v0 + 11256) = &type metadata for Catalog.LLM.DraftModel.ResponseGeneration;
  *(v0 + 11264) = sub_18E394870();
  *(v0 + 11232) = swift_allocObject();
  Catalog.LLM.DraftModel.ResponseGeneration.init()();
  *(v0 + 11296) = &type metadata for Catalog.LLM.DraftModel.ResponseGenerationV2;
  *(v0 + 11304) = sub_18E394A94();
  v178 = swift_allocObject();
  *(v0 + 11272) = v178;
  Catalog.LLM.DraftModel.ResponseGenerationV2.init()((v178 + 16));
  *(v0 + 11336) = &type metadata for Catalog.LLM.DraftModel.ResponseGenerationV3;
  *(v0 + 11344) = sub_18E394CB8();
  v179 = swift_allocObject();
  *(v0 + 11312) = v179;
  Catalog.LLM.DraftModel.ResponseGenerationV3.init()((v179 + 16));
  *(v0 + 11376) = &type metadata for Catalog.LLM.DraftModel.ResponseGenerationV7;
  *(v0 + 11384) = sub_18E394EDC();
  v180 = swift_allocObject();
  *(v0 + 11352) = v180;
  Catalog.LLM.DraftModel.ResponseGenerationV7.init()((v180 + 16));
  *(v0 + 11416) = &type metadata for Catalog.LLM.DraftModel.ResponseGenerationV8;
  *(v0 + 11424) = sub_18E395100();
  v181 = swift_allocObject();
  *(v0 + 11392) = v181;
  Catalog.LLM.DraftModel.ResponseGenerationV8.init()((v181 + 16));
  *(v0 + 11456) = &type metadata for Catalog.LLM.DraftModel.SearchQueryUnderstandingServer;
  *(v0 + 11464) = sub_18E395324();
  *(v0 + 11432) = swift_allocObject();
  Catalog.LLM.DraftModel.SearchQueryUnderstandingServer.init()();
  *(v0 + 11496) = &type metadata for Catalog.LLM.DraftModel.ShortcutsAskAFMAction;
  *(v0 + 11504) = sub_18E395548();
  v182 = swift_allocObject();
  *(v0 + 11472) = v182;
  Catalog.LLM.DraftModel.ShortcutsAskAFMAction.init()(v182 + 16);
  *(v0 + 11536) = &type metadata for Catalog.LLM.DraftModel.ShortcutsAskAFMActionV2;
  *(v0 + 11544) = sub_18E39576C();
  v183 = swift_allocObject();
  *(v0 + 11512) = v183;
  Catalog.LLM.DraftModel.ShortcutsAskAFMActionV2.init()(v183 + 16);
  *(v0 + 11576) = &type metadata for Catalog.LLM.DraftModel.ServerStructuredExtraction;
  *(v0 + 11584) = sub_18E395990();
  v184 = swift_allocObject();
  *(v0 + 11552) = v184;
  Catalog.LLM.DraftModel.ServerStructuredExtraction.init()(v184 + 16);
  *(v0 + 11616) = &type metadata for Catalog.LLM.DraftModel.STXMultimodal;
  *(v0 + 11624) = sub_18E395BB4();
  v185 = swift_allocObject();
  *(v0 + 11592) = v185;
  Catalog.LLM.DraftModel.STXMultimodal.init()((v185 + 16));
  *(v0 + 11656) = &type metadata for Catalog.LLM.DraftModel.SuperAutofillMultimodal;
  *(v0 + 11664) = sub_18E395DD8();
  v186 = swift_allocObject();
  *(v0 + 11632) = v186;
  Catalog.LLM.DraftModel.SuperAutofillMultimodal.init()((v186 + 16));
  *(v0 + 11696) = &type metadata for Catalog.LLM.DraftModel.ServerTablesTransform;
  *(v0 + 11704) = sub_18E395FFC();
  v187 = swift_allocObject();
  *(v0 + 11672) = v187;
  Catalog.LLM.DraftModel.ServerTablesTransform.init()((v187 + 16));
  *(v0 + 11736) = &type metadata for Catalog.LLM.DraftModel.ServerTakeawaysTransform;
  *(v0 + 11744) = sub_18E396220();
  v188 = swift_allocObject();
  *(v0 + 11712) = v188;
  Catalog.LLM.DraftModel.ServerTakeawaysTransform.init()((v188 + 16));
  *(v0 + 11776) = &type metadata for Catalog.LLM.DraftModel.SummarizationTextSummarizer;
  *(v0 + 11784) = sub_18E396444();
  *(v0 + 11752) = swift_allocObject();
  Catalog.LLM.DraftModel.SummarizationTextSummarizer.init()();
  *(v0 + 11816) = &type metadata for Catalog.LLM.Model.CodeLMExperimental;
  *(v0 + 11824) = sub_18E39673C();
  v189 = swift_allocObject();
  *(v0 + 11792) = v189;
  Catalog.LLM.Model.CodeLMExperimental.init()((v189 + 16));
  *(v0 + 11856) = &type metadata for Catalog.LLM.Model.CodeLMLargeV1;
  *(v0 + 11864) = sub_18E396A34();
  v190 = swift_allocObject();
  *(v0 + 11832) = v190;
  Catalog.LLM.Model.CodeLMLargeV1.init()((v190 + 16));
  *(v0 + 11896) = &type metadata for Catalog.LLM.Model.CodeLMLargeV2;
  *(v0 + 11904) = sub_18E396D2C();
  v191 = swift_allocObject();
  *(v0 + 11872) = v191;
  Catalog.LLM.Model.CodeLMLargeV2.init()((v191 + 16));
  *(v0 + 11936) = &type metadata for Catalog.LLM.Model.CodeLMLargeV3;
  *(v0 + 11944) = sub_18E397024();
  v192 = swift_allocObject();
  *(v0 + 11912) = v192;
  Catalog.LLM.Model.CodeLMLargeV3.init()((v192 + 16));
  *(v0 + 11976) = &type metadata for Catalog.LLM.Model.CodeLMLargeV4;
  *(v0 + 11984) = sub_18E39731C();
  v193 = swift_allocObject();
  *(v0 + 11952) = v193;
  Catalog.LLM.Model.CodeLMLargeV4.init()((v193 + 16));
  *(v0 + 12016) = &type metadata for Catalog.LLM.Model.CodeLMLargeV5;
  *(v0 + 12024) = sub_18E397614();
  v194 = swift_allocObject();
  *(v0 + 11992) = v194;
  Catalog.LLM.Model.CodeLMLargeV5.init()((v194 + 16));
  *(v0 + 12056) = &type metadata for Catalog.LLM.Model.CodeLMSafetyGuardrail;
  *(v0 + 12064) = sub_18E39790C();
  v195 = swift_allocObject();
  *(v0 + 12032) = v195;
  Catalog.LLM.Model.CodeLMSafetyGuardrail.init()((v195 + 16));
  *(v0 + 12096) = &type metadata for Catalog.LLM.Model.CodeLMSmallV1;
  *(v0 + 12104) = sub_18E397C04();
  v196 = swift_allocObject();
  *(v0 + 12072) = v196;
  Catalog.LLM.Model.CodeLMSmallV1.init()((v196 + 16));
  *(v0 + 12136) = &type metadata for Catalog.LLM.Model.CodeLMSmallV2;
  *(v0 + 12144) = sub_18E397EFC();
  v197 = swift_allocObject();
  *(v0 + 12112) = v197;
  Catalog.LLM.Model.CodeLMSmallV2.init()((v197 + 16));
  *(v0 + 12176) = &type metadata for Catalog.LLM.Model.CodeLMSmallV3;
  *(v0 + 12184) = sub_18E3981F4();
  v198 = swift_allocObject();
  *(v0 + 12152) = v198;
  Catalog.LLM.Model.CodeLMSmallV3.init()((v198 + 16));
  *(v0 + 12216) = &type metadata for Catalog.LLM.Model.CodeLMSmallV4;
  *(v0 + 12224) = sub_18E3984EC();
  v199 = swift_allocObject();
  *(v0 + 12192) = v199;
  Catalog.LLM.Model.CodeLMSmallV4.init()((v199 + 16));
  *(v0 + 12256) = &type metadata for Catalog.LLM.Model.CodeLMSmallV5;
  *(v0 + 12264) = sub_18E3987E4();
  v200 = swift_allocObject();
  *(v0 + 12232) = v200;
  Catalog.LLM.Model.CodeLMSmallV5.init()((v200 + 16));
  *(v0 + 12296) = &type metadata for Catalog.LLM.Model.CodeLM;
  *(v0 + 12304) = sub_18E398ADC();
  v201 = swift_allocObject();
  *(v0 + 12272) = v201;
  Catalog.LLM.Model.CodeLM.init()((v201 + 16));
  *(v0 + 12336) = &type metadata for Catalog.LLM.Model.CodeLMV1ANE3B;
  *(v0 + 12344) = sub_18E398DD4();
  v202 = swift_allocObject();
  *(v0 + 12312) = v202;
  Catalog.LLM.Model.CodeLMV1ANE3B.init()((v202 + 16));
  *(v0 + 12376) = &type metadata for Catalog.LLM.Model.CodeLMV2;
  *(v0 + 12384) = sub_18E3990CC();
  v203 = swift_allocObject();
  *(v0 + 12352) = v203;
  Catalog.LLM.Model.CodeLMV2.init()((v203 + 16));
  *(v0 + 12416) = &type metadata for Catalog.LLM.Model.CodeLMV3;
  *(v0 + 12424) = sub_18E3993C4();
  v204 = swift_allocObject();
  *(v0 + 12392) = v204;
  Catalog.LLM.Model.CodeLMV3.init()((v204 + 16));
  *(v0 + 12456) = &type metadata for Catalog.LLM.Model.CodeLMV4;
  *(v0 + 12464) = sub_18E3996BC();
  v205 = swift_allocObject();
  *(v0 + 12432) = v205;
  Catalog.LLM.Model.CodeLMV4.init()((v205 + 16));
  *(v0 + 12496) = &type metadata for Catalog.LLM.Model.DistilledMessagesAction;
  *(v0 + 12504) = sub_18E3999B4();
  *(v0 + 12472) = swift_allocObject();
  Catalog.LLM.Model.DistilledMessagesAction.init()();
  *(v0 + 12536) = &type metadata for Catalog.LLM.Model.DistilledMessagesReply;
  *(v0 + 12544) = sub_18E399CAC();
  *(v0 + 12512) = swift_allocObject();
  Catalog.LLM.Model.DistilledMessagesReply.init()();
  *(v0 + 12576) = &type metadata for Catalog.LLM.Model.CodeSafetyGuardrail;
  *(v0 + 12584) = sub_18E399FA4();
  v206 = swift_allocObject();
  *(v0 + 12552) = v206;
  Catalog.LLM.Model.CodeSafetyGuardrail.init()(v206 + 16);
  *(v0 + 12616) = &type metadata for Catalog.LLM.Model.VisualGenerationQueryHandlingLite;
  *(v0 + 12624) = sub_18E39A29C();
  *(v0 + 12592) = swift_allocObject();
  Catalog.LLM.Model.VisualGenerationQueryHandlingLite.init()();
  *(v0 + 12656) = &type metadata for Catalog.LLM.Model.AFMTextInstruct300MBase;
  *(v0 + 12664) = sub_18E39A540();
  *(v0 + 12632) = swift_allocObject();
  Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
  *(v0 + 12696) = &type metadata for Catalog.LLM.Model.AFMTextInstruct3BBase;
  *(v0 + 12704) = sub_18E39A7E0();
  *(v0 + 12672) = swift_allocObject();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  *(v0 + 12736) = &type metadata for Catalog.LLM.Model.AFMTextInstruct85MBase;
  *(v0 + 12744) = sub_18E39AA84();
  *(v0 + 12712) = swift_allocObject();
  Catalog.LLM.Model.AFMTextInstruct85MBase.init()();
  *(v0 + 12776) = &type metadata for Catalog.LLM.Model.InstructServerBase;
  *(v0 + 12784) = sub_18E39AD24();
  *(v0 + 12752) = swift_allocObject();
  Catalog.LLM.Model.InstructServerBase.init()();
  *(v0 + 12816) = &type metadata for Catalog.LLM.Model.PhotosMemoriesCreationBase;
  *(v0 + 12824) = sub_18E39AF70();
  v207 = swift_allocObject();
  *(v0 + 12792) = v207;
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()((v207 + 16));
  *(v0 + 12856) = &type metadata for Catalog.LLM.Model.PQAVerificationBase;
  *(v0 + 12864) = sub_18E39B210();
  *(v0 + 12832) = swift_allocObject();
  Catalog.LLM.Model.PQAVerificationBase.init()();
  *(v0 + 12896) = &type metadata for Catalog.LLM.Model.SummarizationTextSummarizerBase;
  *(v0 + 12904) = sub_18E39B4B0();
  v208 = swift_allocObject();
  *(v0 + 12872) = v208;
  Catalog.LLM.Model.SummarizationTextSummarizerBase.init()((v208 + 16));
  *(v0 + 12936) = &type metadata for Catalog.LLM.Model.SummarizationTextSummarizerAjaxBase;
  *(v0 + 12944) = sub_18E39B750();
  *(v0 + 12912) = swift_allocObject();
  Catalog.LLM.Model.SummarizationTextSummarizerAjaxBase.init()();
  *(v0 + 12976) = &type metadata for Catalog.LLM.Model.FoundationModelsPlatformBase;
  *(v0 + 12984) = sub_18E39BA48();
  v209 = swift_allocObject();
  *(v0 + 12952) = v209;
  Catalog.LLM.Model.FoundationModelsPlatformBase.init()((v209 + 16));
  *(v0 + 13016) = &type metadata for Catalog.LLM.Model.NLRouterBase;
  *(v0 + 13024) = sub_18E39BD40();
  *(v0 + 12992) = swift_allocObject();
  Catalog.LLM.Model.NLRouterBase.init()();
  *(v0 + 13056) = &type metadata for Catalog.LLM.Model.ChatGPT;
  *(v0 + 13064) = sub_18E39C038();
  v210 = swift_allocObject();
  *(v0 + 13032) = v210;
  Catalog.LLM.Model.ChatGPT.init()((v210 + 16));
  *(v0 + 13096) = &type metadata for Catalog.LLM.ServerConfiguration.AccessibilityMagnifier;
  *(v0 + 13104) = sub_18E39C1E0();
  *(v0 + 13072) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.AccessibilityMagnifier.init()();
  *(v0 + 13136) = &type metadata for Catalog.LLM.ServerConfiguration.AnswerSynthesisServer;
  *(v0 + 13144) = sub_18E39C388();
  *(v0 + 13112) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.AnswerSynthesisServer.init()();
  *(v0 + 13176) = &type metadata for Catalog.LLM.ServerConfiguration.InstructServerAutograder;
  *(v0 + 13184) = sub_18E39C530();
  v211 = swift_allocObject();
  *(v0 + 13152) = v211;
  Catalog.LLM.ServerConfiguration.InstructServerAutograder.init()(v211 + 16);
  *(v0 + 13216) = &type metadata for Catalog.LLM.ServerConfiguration.InstructServerBase;
  *(v0 + 13224) = sub_18E39C6D8();
  *(v0 + 13192) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.InstructServerBase.init()();
  *(v0 + 13256) = &type metadata for Catalog.LLM.ServerConfiguration.ServerBulletsTransform;
  *(v0 + 13264) = sub_18E39C880();
  *(v0 + 13232) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerBulletsTransform.init()();
  *(v0 + 13296) = &type metadata for Catalog.LLM.ServerConfiguration.ServerConciseTone;
  *(v0 + 13304) = sub_18E39CA28();
  *(v0 + 13272) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerConciseTone.init()();
  *(v0 + 13336) = &type metadata for Catalog.LLM.ServerConfiguration.ServerDescribeYourEdit;
  *(v0 + 13344) = sub_18E39CBD0();
  *(v0 + 13312) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerDescribeYourEdit.init()();
  *(v0 + 13376) = &type metadata for Catalog.LLM.ServerConfiguration.ServerFitnessWorkoutVoice;
  *(v0 + 13384) = sub_18E39CD78();
  *(v0 + 13352) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerFitnessWorkoutVoice.init()();
  *(v0 + 13416) = &type metadata for Catalog.LLM.ServerConfiguration.ServerFriendlyTone;
  *(v0 + 13424) = sub_18E39CF20();
  *(v0 + 13392) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerFriendlyTone.init()();
  *(v0 + 13456) = &type metadata for Catalog.LLM.ServerConfiguration.JournalFollowUpPrompts;
  *(v0 + 13464) = sub_18E39D0C8();
  v212 = swift_allocObject();
  *(v0 + 13432) = v212;
  Catalog.LLM.ServerConfiguration.JournalFollowUpPrompts.init()(v212 + 16);
  *(v0 + 13496) = &type metadata for Catalog.LLM.ServerConfiguration.LWPlannerV1;
  *(v0 + 13504) = sub_18E39D270();
  v213 = swift_allocObject();
  *(v0 + 13472) = v213;
  Catalog.LLM.ServerConfiguration.LWPlannerV1.init()(v213 + 16);
  *(v0 + 13536) = &type metadata for Catalog.LLM.ServerConfiguration.ServerMagicRewrite;
  *(v0 + 13544) = sub_18E39D418();
  *(v0 + 13512) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerMagicRewrite.init()();
  *(v0 + 13576) = &type metadata for Catalog.LLM.ServerConfiguration.ServerMailReplyLongFormBasic;
  *(v0 + 13584) = sub_18E39D5C0();
  *(v0 + 13552) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerMailReplyLongFormBasic.init()();
  *(v0 + 13616) = &type metadata for Catalog.LLM.ServerConfiguration.ServerMailReplyLongFormRewrite;
  *(v0 + 13624) = sub_18E39D768();
  *(v0 + 13592) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerMailReplyLongFormRewrite.init()();
  *(v0 + 13656) = &type metadata for Catalog.LLM.ServerConfiguration.ServerMailReplyQA;
  *(v0 + 13664) = sub_18E39D910();
  *(v0 + 13632) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerMailReplyQA.init()();
  *(v0 + 13696) = &type metadata for Catalog.LLM.ServerConfiguration.MessagesUserRequest;
  *(v0 + 13704) = sub_18E39DAB8();
  v214 = swift_allocObject();
  *(v0 + 13672) = v214;
  Catalog.LLM.ServerConfiguration.MessagesUserRequest.init()(v214 + 16);
  *(v0 + 13736) = &type metadata for Catalog.LLM.ServerConfiguration.MMGuardSafetyGuardrailServer;
  *(v0 + 13744) = sub_18E39DC60();
  v215 = swift_allocObject();
  *(v0 + 13712) = v215;
  Catalog.LLM.ServerConfiguration.MMGuardSafetyGuardrailServer.init()(v215 + 16);
  *(v0 + 13776) = &type metadata for Catalog.LLM.ServerConfiguration.OpenEndedInteraction;
  *(v0 + 13784) = sub_18E39DE08();
  v216 = swift_allocObject();
  *(v0 + 13752) = v216;
  Catalog.LLM.ServerConfiguration.OpenEndedInteraction.init()(v216 + 16);
  *(v0 + 13816) = &type metadata for Catalog.LLM.ServerConfiguration.OpenEndedReflection;
  *(v0 + 13824) = sub_18E39DFB0();
  v217 = swift_allocObject();
  *(v0 + 13792) = v217;
  Catalog.LLM.ServerConfiguration.OpenEndedReflection.init()(v217 + 16);
  *(v0 + 13856) = &type metadata for Catalog.LLM.ServerConfiguration.OpenEndedSchema;
  *(v0 + 13864) = sub_18E39E158();
  v218 = swift_allocObject();
  *(v0 + 13832) = v218;
  Catalog.LLM.ServerConfiguration.OpenEndedSchema.init()(v218 + 16);
  *(v0 + 13896) = &type metadata for Catalog.LLM.ServerConfiguration.OpenEndedTone;
  *(v0 + 13904) = sub_18E39E300();
  *(v0 + 13872) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.OpenEndedTone.init()();
  *(v0 + 13936) = &type metadata for Catalog.LLM.ServerConfiguration.OpenEndedToneBase;
  *(v0 + 13944) = sub_18E39E4A8();
  v219 = swift_allocObject();
  *(v0 + 13912) = v219;
  Catalog.LLM.ServerConfiguration.OpenEndedToneBase.init()(v219 + 16);
  *(v0 + 13976) = &type metadata for Catalog.LLM.ServerConfiguration.OpenEndedToneQueryResponse;
  *(v0 + 13984) = sub_18E39E650();
  *(v0 + 13952) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.OpenEndedToneQueryResponse.init()();
  *(v0 + 14016) = &type metadata for Catalog.LLM.ServerConfiguration.OpenEndedToneQueryResponseV2;
  *(v0 + 14024) = sub_18E39E7F8();
  v220 = swift_allocObject();
  *(v0 + 13992) = v220;
  Catalog.LLM.ServerConfiguration.OpenEndedToneQueryResponseV2.init()(v220 + 16);
  *(v0 + 14056) = &type metadata for Catalog.LLM.ServerConfiguration.ServerPersonalizedSmartReply;
  *(v0 + 14064) = sub_18E39E9A0();
  v221 = swift_allocObject();
  *(v0 + 14032) = v221;
  Catalog.LLM.ServerConfiguration.ServerPersonalizedSmartReply.init()(v221 + 16);
  *(v0 + 14096) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosCommon;
  *(v0 + 14104) = sub_18E39EB48();
  *(v0 + 14072) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosCommon.init()();
  *(v0 + 14136) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCuration;
  *(v0 + 14144) = sub_18E39ECF0();
  *(v0 + 14112) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCuration.init()();
  *(v0 + 14176) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCurationV2;
  *(v0 + 14184) = sub_18E39EE98();
  *(v0 + 14152) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCurationV2.init()();
  *(v0 + 14216) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraits;
  *(v0 + 14224) = sub_18E39F040();
  *(v0 + 14192) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraits.init()();
  *(v0 + 14256) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV2;
  *(v0 + 14264) = sub_18E39F1E8();
  *(v0 + 14232) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV2.init()();
  *(v0 + 14296) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV3;
  *(v0 + 14304) = sub_18E39F390();
  v222 = swift_allocObject();
  *(v0 + 14272) = v222;
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV3.init()(v222 + 16);
  *(v0 + 14336) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstanding;
  *(v0 + 14344) = sub_18E39F538();
  *(v0 + 14312) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstanding.init()();
  *(v0 + 14376) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV2;
  *(v0 + 14384) = sub_18E39F6E0();
  *(v0 + 14352) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV2.init()();
  *(v0 + 14416) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV3;
  *(v0 + 14424) = sub_18E39F888();
  *(v0 + 14392) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV3.init()();
  *(v0 + 14456) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationStoryteller;
  *(v0 + 14464) = sub_18E39FA30();
  *(v0 + 14432) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationStoryteller.init()();
  *(v0 + 14496) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationStorytellerV2;
  *(v0 + 14504) = sub_18E39FBD8();
  *(v0 + 14472) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationStorytellerV2.init()();
  *(v0 + 14536) = &type metadata for Catalog.LLM.ServerConfiguration.Planner;
  *(v0 + 14544) = sub_18E39FD80();
  v223 = swift_allocObject();
  *(v0 + 14512) = v223;
  Catalog.LLM.ServerConfiguration.Planner.init()(v223 + 16);
  *(v0 + 14576) = &type metadata for Catalog.LLM.ServerConfiguration.PlannerV2;
  *(v0 + 14584) = sub_18E39FF28();
  v224 = swift_allocObject();
  *(v0 + 14552) = v224;
  Catalog.LLM.ServerConfiguration.PlannerV2.init()(v224 + 16);
  *(v0 + 14616) = &type metadata for Catalog.LLM.ServerConfiguration.PlannerV3;
  *(v0 + 14624) = sub_18E3A00D0();
  v225 = swift_allocObject();
  *(v0 + 14592) = v225;
  Catalog.LLM.ServerConfiguration.PlannerV3.init()(v225 + 16);
  *(v0 + 14656) = &type metadata for Catalog.LLM.ServerConfiguration.PlannerV7;
  *(v0 + 14664) = sub_18E3A0278();
  v226 = swift_allocObject();
  *(v0 + 14632) = v226;
  Catalog.LLM.ServerConfiguration.PlannerV7.init()(v226 + 16);
  *(v0 + 14696) = &type metadata for Catalog.LLM.ServerConfiguration.PlannerV8;
  *(v0 + 14704) = sub_18E3A0420();
  v227 = swift_allocObject();
  *(v0 + 14672) = v227;
  Catalog.LLM.ServerConfiguration.PlannerV8.init()(v227 + 16);
  *(v0 + 14736) = &type metadata for Catalog.LLM.ServerConfiguration.PlannerV9;
  *(v0 + 14744) = sub_18E3A05C8();
  v228 = swift_allocObject();
  *(v0 + 14712) = v228;
  Catalog.LLM.ServerConfiguration.PlannerV9.init()(v228 + 16);
  *(v0 + 14776) = &type metadata for Catalog.LLM.ServerConfiguration.ServerPQAVerification;
  *(v0 + 14784) = sub_18E3A0770();
  *(v0 + 14752) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerPQAVerification.init()();
  *(v0 + 14816) = &type metadata for Catalog.LLM.ServerConfiguration.ServerProfessionalTone;
  *(v0 + 14824) = sub_18E3A0918();
  *(v0 + 14792) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerProfessionalTone.init()();
  *(v0 + 14856) = &type metadata for Catalog.LLM.ServerConfiguration.ServerProofreadingReview;
  *(v0 + 14864) = sub_18E3A0AC0();
  *(v0 + 14832) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerProofreadingReview.init()();
  *(v0 + 14896) = &type metadata for Catalog.LLM.ServerConfiguration.RemindersAutoCategorizeList;
  *(v0 + 14904) = sub_18E3A0C68();
  *(v0 + 14872) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.RemindersAutoCategorizeList.init()();
  *(v0 + 14936) = &type metadata for Catalog.LLM.ServerConfiguration.ResponseGeneration;
  *(v0 + 14944) = sub_18E3A0E10();
  *(v0 + 14912) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ResponseGeneration.init()();
  *(v0 + 14976) = &type metadata for Catalog.LLM.ServerConfiguration.ResponseGenerationV2;
  *(v0 + 14984) = sub_18E3A0FB8();
  *(v0 + 14952) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ResponseGenerationV2.init()();
  *(v0 + 15016) = &type metadata for Catalog.LLM.ServerConfiguration.ResponseGenerationV3;
  *(v0 + 15024) = sub_18E3A1160();
  *(v0 + 14992) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ResponseGenerationV3.init()();
  *(v0 + 15056) = &type metadata for Catalog.LLM.ServerConfiguration.ResponseGenerationV7;
  *(v0 + 15064) = sub_18E3A1308();
  v229 = swift_allocObject();
  *(v0 + 15032) = v229;
  Catalog.LLM.ServerConfiguration.ResponseGenerationV7.init()(v229 + 16);
  *(v0 + 15096) = &type metadata for Catalog.LLM.ServerConfiguration.ResponseGenerationV8;
  *(v0 + 15104) = sub_18E3A14B0();
  v230 = swift_allocObject();
  *(v0 + 15072) = v230;
  Catalog.LLM.ServerConfiguration.ResponseGenerationV8.init()(v230 + 16);
  *(v0 + 15136) = &type metadata for Catalog.LLM.ServerConfiguration.SearchQueryUnderstandingServer;
  *(v0 + 15144) = sub_18E3A1658();
  *(v0 + 15112) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.SearchQueryUnderstandingServer.init()();
  *(v0 + 15176) = &type metadata for Catalog.LLM.ServerConfiguration.ShortcutsAskAFMAction;
  *(v0 + 15184) = sub_18E3A1800();
  *(v0 + 15152) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ShortcutsAskAFMAction.init()();
  *(v0 + 15216) = &type metadata for Catalog.LLM.ServerConfiguration.ShortcutsAskAFMActionV2;
  *(v0 + 15224) = sub_18E3A19A8();
  *(v0 + 15192) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ShortcutsAskAFMActionV2.init()();
  *(v0 + 15256) = &type metadata for Catalog.LLM.ServerConfiguration.ServerStructuredExtraction;
  *(v0 + 15264) = sub_18E3A1B50();
  *(v0 + 15232) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerStructuredExtraction.init()();
  *(v0 + 15296) = &type metadata for Catalog.LLM.ServerConfiguration.STXMultimodal;
  *(v0 + 15304) = sub_18E3A1CF8();
  v231 = swift_allocObject();
  *(v0 + 15272) = v231;
  Catalog.LLM.ServerConfiguration.STXMultimodal.init()(v231 + 16);
  *(v0 + 15336) = &type metadata for Catalog.LLM.ServerConfiguration.SuperAutofillMultimodal;
  *(v0 + 15344) = sub_18E3A1EA0();
  v232 = swift_allocObject();
  *(v0 + 15312) = v232;
  Catalog.LLM.ServerConfiguration.SuperAutofillMultimodal.init()(v232 + 16);
  *(v0 + 15376) = &type metadata for Catalog.LLM.ServerConfiguration.ServerTablesTransform;
  *(v0 + 15384) = sub_18E3A2048();
  *(v0 + 15352) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerTablesTransform.init()();
  *(v0 + 15416) = &type metadata for Catalog.LLM.ServerConfiguration.ServerTakeawaysTransform;
  *(v0 + 15424) = sub_18E3A21F0();
  *(v0 + 15392) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.ServerTakeawaysTransform.init()();
  *(v0 + 15456) = &type metadata for Catalog.LLM.ServerConfiguration.SummarizationTextSummarizer;
  *(v0 + 15464) = sub_18E3A2398();
  *(v0 + 15432) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.SummarizationTextSummarizer.init()();
  *(v0 + 15496) = &type metadata for Catalog.LLM.ServerConfiguration.VisualIntelligence;
  *(v0 + 15504) = sub_18E3A2540();
  *(v0 + 15472) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.VisualIntelligence.init()();
  *(v0 + 15536) = &type metadata for Catalog.LLM.ServerConfiguration.FinancialInsights;
  *(v0 + 15544) = sub_18E3A26E8();
  v233 = swift_allocObject();
  *(v0 + 15512) = v233;
  Catalog.LLM.ServerConfiguration.FinancialInsights.init()(v233 + 16);
  *(v0 + 15576) = &type metadata for Catalog.LLM.ServerConfiguration.NLRouterBase;
  *(v0 + 15584) = sub_18E3A2890();
  v234 = swift_allocObject();
  *(v0 + 15552) = v234;
  Catalog.LLM.ServerConfiguration.NLRouterBase.init()((v234 + 16));
  *(v0 + 15616) = &type metadata for Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationBase;
  *(v0 + 15624) = sub_18E3A2A38();
  *(v0 + 15592) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PhotosMemoriesCreationBase.init()();
  *(v0 + 15656) = &type metadata for Catalog.LLM.ServerConfiguration.PrivateCloudResearchAdapter;
  *(v0 + 15664) = sub_18E3A2BE0();
  *(v0 + 15632) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.PrivateCloudResearchAdapter.init()();
  *(v0 + 15696) = &type metadata for Catalog.LLM.ServerConfiguration.SummarizationTextSummarizerAjaxBase;
  *(v0 + 15704) = sub_18E3A2D88();
  *(v0 + 15672) = swift_allocObject();
  Catalog.LLM.ServerConfiguration.SummarizationTextSummarizerAjaxBase.init()();
  *(v0 + 15736) = &type metadata for Catalog.ModelConfigurationReplacement.All;
  *(v0 + 15744) = sub_18E3A2FAC();
  *(v0 + 15712) = swift_allocObject();
  Catalog.ModelConfigurationReplacement.All.init()();
  *(v0 + 15776) = &type metadata for Catalog.PromptAllowList.DeltaLexiconInputPromptAllowList;
  *(v0 + 15784) = sub_18E3A3A60();
  *(v0 + 15752) = swift_allocObject();
  Catalog.PromptAllowList.DeltaLexiconInputPromptAllowList.init()();
  *(v0 + 15816) = &type metadata for Catalog.SecureAnalytics.Model.IntegrityDiagnoseModel;
  *(v0 + 15824) = sub_18E3A3C84();
  v235 = swift_allocObject();
  *(v0 + 15792) = v235;
  Catalog.SecureAnalytics.Model.IntegrityDiagnoseModel.init()((v235 + 16));
  *(v0 + 15856) = &type metadata for Catalog.TokenInputDenyList.ADMBackgroundPromptInputDenyList;
  *(v0 + 15864) = sub_18E3A3EA8();
  *(v0 + 15832) = swift_allocObject();
  Catalog.TokenInputDenyList.ADMBackgroundPromptInputDenyList.init()();
  *(v0 + 15896) = &type metadata for Catalog.TokenInputDenyList.AskGenerativeModelActionInputDenyList;
  *(v0 + 15904) = sub_18E3A40CC();
  *(v0 + 15872) = swift_allocObject();
  Catalog.TokenInputDenyList.AskGenerativeModelActionInputDenyList.init()();
  *(v0 + 15936) = &type metadata for Catalog.TokenInputDenyList.WritingToolsBulletsTransformInputDenyList;
  *(v0 + 15944) = sub_18E3A42F0();
  *(v0 + 15912) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsBulletsTransformInputDenyList.init()();
  *(v0 + 15976) = &type metadata for Catalog.TokenInputDenyList.CodeIntelligenceBaseInputDenyList;
  *(v0 + 15984) = sub_18E3A4514();
  *(v0 + 15952) = swift_allocObject();
  Catalog.TokenInputDenyList.CodeIntelligenceBaseInputDenyList.init()();
  *(v0 + 16016) = &type metadata for Catalog.TokenInputDenyList.WritingToolsConciseToneInputDenyList;
  *(v0 + 16024) = sub_18E3A4738();
  *(v0 + 15992) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsConciseToneInputDenyList.init()();
  *(v0 + 16056) = &type metadata for Catalog.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList;
  *(v0 + 16064) = sub_18E3A495C();
  *(v0 + 16032) = swift_allocObject();
  Catalog.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList.init()();
  *(v0 + 16096) = &type metadata for Catalog.TokenInputDenyList.WritingToolsFriendlyToneInputDenyList;
  *(v0 + 16104) = sub_18E3A4B80();
  *(v0 + 16072) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsFriendlyToneInputDenyList.init()();
  *(v0 + 16136) = &type metadata for Catalog.TokenInputDenyList.GenerativeAssistantCompositionInputDenyList;
  *(v0 + 16144) = sub_18E3A4DA4();
  *(v0 + 16112) = swift_allocObject();
  Catalog.TokenInputDenyList.GenerativeAssistantCompositionInputDenyList.init()();
  *(v0 + 16176) = &type metadata for Catalog.TokenInputDenyList.GenerativeAssistantKnowledgeInputDenyList;
  *(v0 + 16184) = sub_18E3A4FC8();
  *(v0 + 16152) = swift_allocObject();
  Catalog.TokenInputDenyList.GenerativeAssistantKnowledgeInputDenyList.init()();
  *(v0 + 16216) = &type metadata for Catalog.TokenInputDenyList.GenerativeAssistantKnowledgeFallbackInputDenyList;
  *(v0 + 16224) = sub_18E3A51EC();
  *(v0 + 16192) = swift_allocObject();
  Catalog.TokenInputDenyList.GenerativeAssistantKnowledgeFallbackInputDenyList.init()();
  *(v0 + 16256) = &type metadata for Catalog.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList;
  *(v0 + 16264) = sub_18E3A5410();
  *(v0 + 16232) = swift_allocObject();
  Catalog.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList.init()();
  *(v0 + 16296) = &type metadata for Catalog.TokenInputDenyList.GenerativeAssistantVisualIntelligenceCameraInputDenyList;
  *(v0 + 16304) = sub_18E3A5634();
  *(v0 + 16272) = swift_allocObject();
  Catalog.TokenInputDenyList.GenerativeAssistantVisualIntelligenceCameraInputDenyList.init()();
  *(v0 + 16336) = &type metadata for Catalog.TokenInputDenyList.WritingToolsMagicRewriteInputDenyList;
  *(v0 + 16344) = sub_18E3A5858();
  *(v0 + 16312) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsMagicRewriteInputDenyList.init()();
  *(v0 + 16376) = &type metadata for Catalog.TokenInputDenyList.MailReplyLongFormBasicInputDenyList;
  *(v0 + 0x4000) = sub_18E3A5A7C();
  *(v0 + 16352) = swift_allocObject();
  Catalog.TokenInputDenyList.MailReplyLongFormBasicInputDenyList.init()();
  *(v0 + 16416) = &type metadata for Catalog.TokenInputDenyList.MailReplyLongFormQAInputDenyList;
  *(v0 + 16424) = sub_18E3A5CA0();
  *(v0 + 16392) = swift_allocObject();
  Catalog.TokenInputDenyList.MailReplyLongFormQAInputDenyList.init()();
  *(v0 + 16456) = &type metadata for Catalog.TokenInputDenyList.MailReplyLongFormRewriteInputDenyList;
  *(v0 + 16464) = sub_18E3A5EC4();
  *(v0 + 16432) = swift_allocObject();
  Catalog.TokenInputDenyList.MailReplyLongFormRewriteInputDenyList.init()();
  *(v0 + 16496) = &type metadata for Catalog.TokenInputDenyList.PersonalizedSmartReplyInputDenyList;
  *(v0 + 16504) = sub_18E3A60E8();
  *(v0 + 16472) = swift_allocObject();
  Catalog.TokenInputDenyList.PersonalizedSmartReplyInputDenyList.init()();
  *(v0 + 16536) = &type metadata for Catalog.TokenInputDenyList.MailReplySnippetInputDenyList;
  *(v0 + 16544) = sub_18E3A630C();
  *(v0 + 16512) = swift_allocObject();
  Catalog.TokenInputDenyList.MailReplySnippetInputDenyList.init()();
  *(v0 + 16576) = &type metadata for Catalog.TokenInputDenyList.MessagesActionBaseInputDenyList;
  *(v0 + 16584) = sub_18E3A6530();
  *(v0 + 16552) = swift_allocObject();
  Catalog.TokenInputDenyList.MessagesActionBaseInputDenyList.init()();
  *(v0 + 16616) = &type metadata for Catalog.TokenInputDenyList.MessagesReplyBaseInputDenyList;
  *(v0 + 16624) = sub_18E3A6754();
  *(v0 + 16592) = swift_allocObject();
  Catalog.TokenInputDenyList.MessagesReplyBaseInputDenyList.init()();
  *(v0 + 16656) = &type metadata for Catalog.TokenInputDenyList.MessagesReplyWatchInputDenyList;
  *(v0 + 16664) = sub_18E3A6978();
  *(v0 + 16632) = swift_allocObject();
  Catalog.TokenInputDenyList.MessagesReplyWatchInputDenyList.init()();
  *(v0 + 16696) = &type metadata for Catalog.TokenInputDenyList.OpenEndedInteractionInputDenyList;
  *(v0 + 16704) = sub_18E3A6B9C();
  *(v0 + 16672) = swift_allocObject();
  Catalog.TokenInputDenyList.OpenEndedInteractionInputDenyList.init()();
  *(v0 + 16736) = &type metadata for Catalog.TokenInputDenyList.OpenEndedReflectionInputDenyList;
  *(v0 + 16744) = sub_18E3A6DC0();
  *(v0 + 16712) = swift_allocObject();
  Catalog.TokenInputDenyList.OpenEndedReflectionInputDenyList.init()();
  *(v0 + 16776) = &type metadata for Catalog.TokenInputDenyList.WritingToolsOpenEndedSchemaInputDenyList;
  *(v0 + 16784) = sub_18E3A6FE4();
  *(v0 + 16752) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsOpenEndedSchemaInputDenyList.init()();
  *(v0 + 16816) = &type metadata for Catalog.TokenInputDenyList.WritingToolsOpenEndedToneInputDenyList;
  *(v0 + 16824) = sub_18E3A7208();
  *(v0 + 16792) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsOpenEndedToneInputDenyList.init()();
  *(v0 + 16856) = &type metadata for Catalog.TokenInputDenyList.WritingToolsOpenEndedToneBaseInputDenyList;
  *(v0 + 16864) = sub_18E3A742C();
  *(v0 + 16832) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsOpenEndedToneBaseInputDenyList.init()();
  *(v0 + 16896) = &type metadata for Catalog.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseInputDenyList;
  *(v0 + 16904) = sub_18E3A7650();
  *(v0 + 16872) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseInputDenyList.init()();
  *(v0 + 16936) = &type metadata for Catalog.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseV2InputDenyList;
  *(v0 + 16944) = sub_18E3A7874();
  *(v0 + 16912) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseV2InputDenyList.init()();
  *(v0 + 16976) = &type metadata for Catalog.TokenInputDenyList.PhotosMemoriesCreationBaseInputDenyList;
  *(v0 + 16984) = sub_18E3A7A98();
  *(v0 + 16952) = swift_allocObject();
  Catalog.TokenInputDenyList.PhotosMemoriesCreationBaseInputDenyList.init()();
  *(v0 + 17016) = &type metadata for Catalog.TokenInputDenyList.PhotosMemoriesCreationGlobalTraitInputDenyList;
  *(v0 + 17024) = sub_18E3A7CBC();
  *(v0 + 16992) = swift_allocObject();
  Catalog.TokenInputDenyList.PhotosMemoriesCreationGlobalTraitInputDenyList.init()();
  *(v0 + 17056) = &type metadata for Catalog.TokenInputDenyList.PhotosMemoriesCreationStoryTitleInputDenyList;
  *(v0 + 17064) = sub_18E3A7EE0();
  *(v0 + 17032) = swift_allocObject();
  Catalog.TokenInputDenyList.PhotosMemoriesCreationStoryTitleInputDenyList.init()();
  *(v0 + 17096) = &type metadata for Catalog.TokenInputDenyList.PhotosMemoriesCreationUserQueryInputDenyList;
  *(v0 + 17104) = sub_18E3A8104();
  *(v0 + 17072) = swift_allocObject();
  Catalog.TokenInputDenyList.PhotosMemoriesCreationUserQueryInputDenyList.init()();
  *(v0 + 17136) = &type metadata for Catalog.TokenInputDenyList.WritingToolsProfessionalToneInputDenyList;
  *(v0 + 17144) = sub_18E3A8328();
  *(v0 + 17112) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsProfessionalToneInputDenyList.init()();
  *(v0 + 17176) = &type metadata for Catalog.TokenInputDenyList.WritingToolsProofreadingReviewInputDenyList;
  *(v0 + 17184) = sub_18E3A854C();
  *(v0 + 17152) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsProofreadingReviewInputDenyList.init()();
  *(v0 + 17216) = &type metadata for Catalog.TokenInputDenyList.ShortcutsAskAFMActionInputDenyList;
  *(v0 + 17224) = sub_18E3A8770();
  *(v0 + 17192) = swift_allocObject();
  Catalog.TokenInputDenyList.ShortcutsAskAFMActionInputDenyList.init()();
  *(v0 + 17256) = &type metadata for Catalog.TokenInputDenyList.ShortcutsAskAFMAction3BInputDenyList;
  *(v0 + 17264) = sub_18E3A8994();
  *(v0 + 17232) = swift_allocObject();
  Catalog.TokenInputDenyList.ShortcutsAskAFMAction3BInputDenyList.init()();
  *(v0 + 17296) = &type metadata for Catalog.TokenInputDenyList.SummarizationKitBaseInputDenyList;
  *(v0 + 17304) = sub_18E3A8BB8();
  *(v0 + 17272) = swift_allocObject();
  Catalog.TokenInputDenyList.SummarizationKitBaseInputDenyList.init()();
  *(v0 + 17336) = &type metadata for Catalog.TokenInputDenyList.SummarizationKitCUSummaryInputDenyList;
  *(v0 + 17344) = sub_18E3A8DDC();
  *(v0 + 17312) = swift_allocObject();
  Catalog.TokenInputDenyList.SummarizationKitCUSummaryInputDenyList.init()();
  *(v0 + 17376) = &type metadata for Catalog.TokenInputDenyList.SummarizationKitCUSummaryOnDemandInputDenyList;
  *(v0 + 17384) = sub_18E3A9000();
  *(v0 + 17352) = swift_allocObject();
  Catalog.TokenInputDenyList.SummarizationKitCUSummaryOnDemandInputDenyList.init()();
  *(v0 + 17416) = &type metadata for Catalog.TokenInputDenyList.SummarizationKitCUSummaryProactiveInputDenyList;
  *(v0 + 17424) = sub_18E3A9224();
  *(v0 + 17392) = swift_allocObject();
  Catalog.TokenInputDenyList.SummarizationKitCUSummaryProactiveInputDenyList.init()();
  *(v0 + 17456) = &type metadata for Catalog.TokenInputDenyList.SummarizationKitCUUrgencyInputDenyList;
  *(v0 + 17464) = sub_18E3A9448();
  *(v0 + 17432) = swift_allocObject();
  Catalog.TokenInputDenyList.SummarizationKitCUUrgencyInputDenyList.init()();
  *(v0 + 17496) = &type metadata for Catalog.TokenInputDenyList.SummarizationKitTextAssistantInputDenyList;
  *(v0 + 17504) = sub_18E3A966C();
  *(v0 + 17472) = swift_allocObject();
  Catalog.TokenInputDenyList.SummarizationKitTextAssistantInputDenyList.init()();
  *(v0 + 17536) = &type metadata for Catalog.TokenInputDenyList.SummarizationKitVisualIntelligenceCameraInputDenyList;
  *(v0 + 17544) = sub_18E3A9890();
  *(v0 + 17512) = swift_allocObject();
  Catalog.TokenInputDenyList.SummarizationKitVisualIntelligenceCameraInputDenyList.init()();
  *(v0 + 17576) = &type metadata for Catalog.TokenInputDenyList.SummarizationKitVisualPromptInputDenyList;
  *(v0 + 17584) = sub_18E3A9AB4();
  *(v0 + 17552) = swift_allocObject();
  Catalog.TokenInputDenyList.SummarizationKitVisualPromptInputDenyList.init()();
  *(v0 + 17616) = &type metadata for Catalog.TokenInputDenyList.SuperAutofillMultimodalInputDenyList;
  *(v0 + 17624) = sub_18E3A9CD8();
  *(v0 + 17592) = swift_allocObject();
  Catalog.TokenInputDenyList.SuperAutofillMultimodalInputDenyList.init()();
  *(v0 + 17656) = &type metadata for Catalog.TokenInputDenyList.WritingToolsTablesTransformInputDenyList;
  *(v0 + 17664) = sub_18E3A9EFC();
  *(v0 + 17632) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsTablesTransformInputDenyList.init()();
  *(v0 + 17696) = &type metadata for Catalog.TokenInputDenyList.WritingToolsTakeawaysTransformInputDenyList;
  *(v0 + 17704) = sub_18E3AA120();
  *(v0 + 17672) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsTakeawaysTransformInputDenyList.init()();
  *(v0 + 17736) = &type metadata for Catalog.TokenInputDenyList.VisualGenerationBaseInputDenyList;
  *(v0 + 17744) = sub_18E3AA344();
  *(v0 + 17712) = swift_allocObject();
  Catalog.TokenInputDenyList.VisualGenerationBaseInputDenyList.init()();
  *(v0 + 17776) = &type metadata for Catalog.TokenInputDenyList.VisualIntelligenceInputDenyList;
  *(v0 + 17784) = sub_18E3AA568();
  *(v0 + 17752) = swift_allocObject();
  Catalog.TokenInputDenyList.VisualIntelligenceInputDenyList.init()();
  *(v0 + 17816) = &type metadata for Catalog.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarInputDenyList;
  *(v0 + 17824) = sub_18E3AA78C();
  *(v0 + 17792) = swift_allocObject();
  Catalog.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarInputDenyList.init()();
  *(v0 + 17856) = &type metadata for Catalog.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToContactsInputDenyList;
  *(v0 + 17864) = sub_18E3AA9B0();
  *(v0 + 17832) = swift_allocObject();
  Catalog.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToContactsInputDenyList.init()();
  *(v0 + 17896) = &type metadata for Catalog.TokenInputDenyList.WritingToolsComposeInputDenyList;
  *(v0 + 17904) = sub_18E3AABD4();
  *(v0 + 17872) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsComposeInputDenyList.init()();
  *(v0 + 17936) = &type metadata for Catalog.TokenInputDenyList.WritingToolsComposeRecentsSummariesInputDenyList;
  *(v0 + 17944) = sub_18E3AADF8();
  *(v0 + 17912) = swift_allocObject();
  Catalog.TokenInputDenyList.WritingToolsComposeRecentsSummariesInputDenyList.init()();
  *(v0 + 17976) = &type metadata for Catalog.TokenOutputDenyList.ADMBackgroundPromptOutputDenyList;
  *(v0 + 17984) = sub_18E3AB01C();
  *(v0 + 17952) = swift_allocObject();
  Catalog.TokenOutputDenyList.ADMBackgroundPromptOutputDenyList.init()();
  *(v0 + 18016) = &type metadata for Catalog.TokenOutputDenyList.AskGenerativeModelActionOutputDenyList;
  *(v0 + 18024) = sub_18E3AB240();
  *(v0 + 17992) = swift_allocObject();
  Catalog.TokenOutputDenyList.AskGenerativeModelActionOutputDenyList.init()();
  *(v0 + 18056) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsBulletsTransformOutputDenyList;
  *(v0 + 18064) = sub_18E3AB464();
  *(v0 + 18032) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsBulletsTransformOutputDenyList.init()();
  *(v0 + 18096) = &type metadata for Catalog.TokenOutputDenyList.CodeIntelligenceBaseOutputDenyList;
  *(v0 + 18104) = sub_18E3AB688();
  *(v0 + 18072) = swift_allocObject();
  Catalog.TokenOutputDenyList.CodeIntelligenceBaseOutputDenyList.init()();
  *(v0 + 18136) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsConciseToneOutputDenyList;
  *(v0 + 18144) = sub_18E3AB8AC();
  *(v0 + 18112) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsConciseToneOutputDenyList.init()();
  *(v0 + 18176) = &type metadata for Catalog.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList;
  *(v0 + 18184) = sub_18E3ABAD0();
  *(v0 + 18152) = swift_allocObject();
  Catalog.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList.init()();
  *(v0 + 18216) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsFriendlyToneOutputDenyList;
  *(v0 + 18224) = sub_18E3ABCF4();
  *(v0 + 18192) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsFriendlyToneOutputDenyList.init()();
  *(v0 + 18256) = &type metadata for Catalog.TokenOutputDenyList.GenerativeAssistantCompositionOutputDenyList;
  *(v0 + 18264) = sub_18E3ABF18();
  *(v0 + 18232) = swift_allocObject();
  Catalog.TokenOutputDenyList.GenerativeAssistantCompositionOutputDenyList.init()();
  *(v0 + 18296) = &type metadata for Catalog.TokenOutputDenyList.GenerativeAssistantKnowledgeOutputDenyList;
  *(v0 + 18304) = sub_18E3AC13C();
  *(v0 + 18272) = swift_allocObject();
  Catalog.TokenOutputDenyList.GenerativeAssistantKnowledgeOutputDenyList.init()();
  *(v0 + 18336) = &type metadata for Catalog.TokenOutputDenyList.GenerativeAssistantKnowledgeFallbackOutputDenyList;
  *(v0 + 18344) = sub_18E3AC360();
  *(v0 + 18312) = swift_allocObject();
  Catalog.TokenOutputDenyList.GenerativeAssistantKnowledgeFallbackOutputDenyList.init()();
  *(v0 + 18376) = &type metadata for Catalog.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList;
  *(v0 + 18384) = sub_18E3AC584();
  *(v0 + 18352) = swift_allocObject();
  Catalog.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList.init()();
  *(v0 + 18416) = &type metadata for Catalog.TokenOutputDenyList.GenerativeAssistantVisualIntelligenceCameraOutputDenyList;
  *(v0 + 18424) = sub_18E3AC7A8();
  *(v0 + 18392) = swift_allocObject();
  Catalog.TokenOutputDenyList.GenerativeAssistantVisualIntelligenceCameraOutputDenyList.init()();
  *(v0 + 18456) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsMagicRewriteOutputDenyList;
  *(v0 + 18464) = sub_18E3AC9CC();
  *(v0 + 18432) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsMagicRewriteOutputDenyList.init()();
  *(v0 + 18496) = &type metadata for Catalog.TokenOutputDenyList.MailReplyLongFormBasicOutputDenyList;
  *(v0 + 18504) = sub_18E3ACBF0();
  *(v0 + 18472) = swift_allocObject();
  Catalog.TokenOutputDenyList.MailReplyLongFormBasicOutputDenyList.init()();
  *(v0 + 18536) = &type metadata for Catalog.TokenOutputDenyList.MailReplyLongFormQAOutputDenyList;
  *(v0 + 18544) = sub_18E3ACE14();
  *(v0 + 18512) = swift_allocObject();
  Catalog.TokenOutputDenyList.MailReplyLongFormQAOutputDenyList.init()();
  *(v0 + 18576) = &type metadata for Catalog.TokenOutputDenyList.MailReplyLongFormRewriteOutputDenyList;
  *(v0 + 18584) = sub_18E3AD038();
  *(v0 + 18552) = swift_allocObject();
  Catalog.TokenOutputDenyList.MailReplyLongFormRewriteOutputDenyList.init()();
  *(v0 + 18616) = &type metadata for Catalog.TokenOutputDenyList.PersonalizedSmartReplyOutputDenyList;
  *(v0 + 18624) = sub_18E3AD25C();
  *(v0 + 18592) = swift_allocObject();
  Catalog.TokenOutputDenyList.PersonalizedSmartReplyOutputDenyList.init()();
  *(v0 + 18656) = &type metadata for Catalog.TokenOutputDenyList.MailReplySnippetOutputDenyList;
  *(v0 + 18664) = sub_18E3AD480();
  *(v0 + 18632) = swift_allocObject();
  Catalog.TokenOutputDenyList.MailReplySnippetOutputDenyList.init()();
  *(v0 + 18696) = &type metadata for Catalog.TokenOutputDenyList.MessagesActionBaseOutputDenyList;
  *(v0 + 18704) = sub_18E3AD6A4();
  *(v0 + 18672) = swift_allocObject();
  Catalog.TokenOutputDenyList.MessagesActionBaseOutputDenyList.init()();
  *(v0 + 18736) = &type metadata for Catalog.TokenOutputDenyList.MessagesReplyBaseOutputDenyList;
  *(v0 + 18744) = sub_18E3AD8C8();
  *(v0 + 18712) = swift_allocObject();
  Catalog.TokenOutputDenyList.MessagesReplyBaseOutputDenyList.init()();
  *(v0 + 18776) = &type metadata for Catalog.TokenOutputDenyList.MessagesReplyWatchOutputDenyList;
  *(v0 + 18784) = sub_18E3ADAEC();
  *(v0 + 18752) = swift_allocObject();
  Catalog.TokenOutputDenyList.MessagesReplyWatchOutputDenyList.init()();
  *(v0 + 18816) = &type metadata for Catalog.TokenOutputDenyList.OpenEndedInteractionOutputDenyList;
  *(v0 + 18824) = sub_18E3ADD10();
  *(v0 + 18792) = swift_allocObject();
  Catalog.TokenOutputDenyList.OpenEndedInteractionOutputDenyList.init()();
  *(v0 + 18856) = &type metadata for Catalog.TokenOutputDenyList.OpenEndedReflectionOutputDenyList;
  *(v0 + 18864) = sub_18E3ADF34();
  *(v0 + 18832) = swift_allocObject();
  Catalog.TokenOutputDenyList.OpenEndedReflectionOutputDenyList.init()();
  *(v0 + 18896) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsOpenEndedSchemaOutputDenyList;
  *(v0 + 18904) = sub_18E3AE158();
  *(v0 + 18872) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsOpenEndedSchemaOutputDenyList.init()();
  *(v0 + 18936) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneOutputDenyList;
  *(v0 + 18944) = sub_18E3AE37C();
  *(v0 + 18912) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneOutputDenyList.init()();
  *(v0 + 18976) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneBaseOutputDenyList;
  *(v0 + 18984) = sub_18E3AE5A0();
  *(v0 + 18952) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneBaseOutputDenyList.init()();
  *(v0 + 19016) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseOutputDenyList;
  *(v0 + 19024) = sub_18E3AE7C4();
  *(v0 + 18992) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseOutputDenyList.init()();
  *(v0 + 19056) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseV2OutputDenyList;
  *(v0 + 19064) = sub_18E3AE9E8();
  *(v0 + 19032) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseV2OutputDenyList.init()();
  *(v0 + 19096) = &type metadata for Catalog.TokenOutputDenyList.PhotosMemoriesCreationBaseOutputDenyList;
  *(v0 + 19104) = sub_18E3AEC0C();
  *(v0 + 19072) = swift_allocObject();
  Catalog.TokenOutputDenyList.PhotosMemoriesCreationBaseOutputDenyList.init()();
  *(v0 + 19136) = &type metadata for Catalog.TokenOutputDenyList.PhotosMemoriesCreationGlobalTraitOutputDenyList;
  *(v0 + 19144) = sub_18E3AEE30();
  *(v0 + 19112) = swift_allocObject();
  Catalog.TokenOutputDenyList.PhotosMemoriesCreationGlobalTraitOutputDenyList.init()();
  *(v0 + 19176) = &type metadata for Catalog.TokenOutputDenyList.PhotosMemoriesCreationSensitiveOutputDenyList;
  *(v0 + 19184) = sub_18E3AF054();
  *(v0 + 19152) = swift_allocObject();
  Catalog.TokenOutputDenyList.PhotosMemoriesCreationSensitiveOutputDenyList.init()();
  *(v0 + 19216) = &type metadata for Catalog.TokenOutputDenyList.PhotosMemoriesCreationMusicSongIdOutputDenyList;
  *(v0 + 19224) = sub_18E3AF278();
  *(v0 + 19192) = swift_allocObject();
  Catalog.TokenOutputDenyList.PhotosMemoriesCreationMusicSongIdOutputDenyList.init()();
  *(v0 + 19256) = &type metadata for Catalog.TokenOutputDenyList.PhotosMemoriesCreationStoryTitleOutputDenyList;
  *(v0 + 19264) = sub_18E3AF49C();
  *(v0 + 19232) = swift_allocObject();
  Catalog.TokenOutputDenyList.PhotosMemoriesCreationStoryTitleOutputDenyList.init()();
  *(v0 + 19296) = &type metadata for Catalog.TokenOutputDenyList.PhotosMemoriesCreationUserQueryOutputDenyList;
  *(v0 + 19304) = sub_18E3AF6C0();
  *(v0 + 19272) = swift_allocObject();
  Catalog.TokenOutputDenyList.PhotosMemoriesCreationUserQueryOutputDenyList.init()();
  *(v0 + 19336) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsProfessionalToneOutputDenyList;
  *(v0 + 19344) = sub_18E3AF8E4();
  *(v0 + 19312) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsProfessionalToneOutputDenyList.init()();
  *(v0 + 19376) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsProofreadingReviewOutputDenyList;
  *(v0 + 19384) = sub_18E3AFB08();
  *(v0 + 19352) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsProofreadingReviewOutputDenyList.init()();
  *(v0 + 19416) = &type metadata for Catalog.TokenOutputDenyList.ShortcutsAskAFMActionOutputDenyList;
  *(v0 + 19424) = sub_18E3AFD2C();
  *(v0 + 19392) = swift_allocObject();
  Catalog.TokenOutputDenyList.ShortcutsAskAFMActionOutputDenyList.init()();
  *(v0 + 19456) = &type metadata for Catalog.TokenOutputDenyList.ShortcutsAskAFMAction3BOutputDenyList;
  *(v0 + 19464) = sub_18E3AFF50();
  *(v0 + 19432) = swift_allocObject();
  Catalog.TokenOutputDenyList.ShortcutsAskAFMAction3BOutputDenyList.init()();
  *(v0 + 19496) = &type metadata for Catalog.TokenOutputDenyList.SummarizationKitBaseOutputDenyList;
  *(v0 + 19504) = sub_18E3B0174();
  *(v0 + 19472) = swift_allocObject();
  Catalog.TokenOutputDenyList.SummarizationKitBaseOutputDenyList.init()();
  *(v0 + 19536) = &type metadata for Catalog.TokenOutputDenyList.SummarizationKitCUSummaryOutputDenyList;
  *(v0 + 19544) = sub_18E3B0398();
  *(v0 + 19512) = swift_allocObject();
  Catalog.TokenOutputDenyList.SummarizationKitCUSummaryOutputDenyList.init()();
  *(v0 + 19576) = &type metadata for Catalog.TokenOutputDenyList.SummarizationKitCUSummaryOnDemandOutputDenyList;
  *(v0 + 19584) = sub_18E3B05BC();
  *(v0 + 19552) = swift_allocObject();
  Catalog.TokenOutputDenyList.SummarizationKitCUSummaryOnDemandOutputDenyList.init()();
  *(v0 + 19616) = &type metadata for Catalog.TokenOutputDenyList.SummarizationKitCUSummaryProactiveOutputDenyList;
  *(v0 + 19624) = sub_18E3B07E0();
  *(v0 + 19592) = swift_allocObject();
  Catalog.TokenOutputDenyList.SummarizationKitCUSummaryProactiveOutputDenyList.init()();
  *(v0 + 19656) = &type metadata for Catalog.TokenOutputDenyList.SummarizationKitCUUrgencyOutputDenyList;
  *(v0 + 19664) = sub_18E3B0A04();
  *(v0 + 19632) = swift_allocObject();
  Catalog.TokenOutputDenyList.SummarizationKitCUUrgencyOutputDenyList.init()();
  *(v0 + 19696) = &type metadata for Catalog.TokenOutputDenyList.SummarizationKitTextAssistantOutputDenyList;
  *(v0 + 19704) = sub_18E3B0C28();
  *(v0 + 19672) = swift_allocObject();
  Catalog.TokenOutputDenyList.SummarizationKitTextAssistantOutputDenyList.init()();
  *(v0 + 19736) = &type metadata for Catalog.TokenOutputDenyList.SummarizationKitVisualIntelligenceCameraOutputDenyList;
  *(v0 + 19744) = sub_18E3B0E4C();
  *(v0 + 19712) = swift_allocObject();
  Catalog.TokenOutputDenyList.SummarizationKitVisualIntelligenceCameraOutputDenyList.init()();
  *(v0 + 19776) = &type metadata for Catalog.TokenOutputDenyList.SummarizationKitVisualPromptOutputDenyList;
  *(v0 + 19784) = sub_18E3B1070();
  *(v0 + 19752) = swift_allocObject();
  Catalog.TokenOutputDenyList.SummarizationKitVisualPromptOutputDenyList.init()();
  *(v0 + 19816) = &type metadata for Catalog.TokenOutputDenyList.SuperAutofillMultimodalOutputDenyList;
  *(v0 + 19824) = sub_18E3B1294();
  *(v0 + 19792) = swift_allocObject();
  Catalog.TokenOutputDenyList.SuperAutofillMultimodalOutputDenyList.init()();
  *(v0 + 19856) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsTablesTransformOutputDenyList;
  *(v0 + 19864) = sub_18E3B14B8();
  *(v0 + 19832) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsTablesTransformOutputDenyList.init()();
  *(v0 + 19896) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsTakeawaysTransformOutputDenyList;
  *(v0 + 19904) = sub_18E3B16DC();
  *(v0 + 19872) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsTakeawaysTransformOutputDenyList.init()();
  *(v0 + 19936) = &type metadata for Catalog.TokenOutputDenyList.VisualIntelligenceOutputDenyList;
  *(v0 + 19944) = sub_18E3B1900();
  *(v0 + 19912) = swift_allocObject();
  Catalog.TokenOutputDenyList.VisualIntelligenceOutputDenyList.init()();
  *(v0 + 19976) = &type metadata for Catalog.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarOutputDenyList;
  *(v0 + 19984) = sub_18E3B1B24();
  *(v0 + 19952) = swift_allocObject();
  Catalog.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarOutputDenyList.init()();
  *(v0 + 20016) = &type metadata for Catalog.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToContactsOutputDenyList;
  *(v0 + 20024) = sub_18E3B1D48();
  *(v0 + 19992) = swift_allocObject();
  Catalog.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToContactsOutputDenyList.init()();
  *(v0 + 20056) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsComposeOutputDenyList;
  *(v0 + 20064) = sub_18E3B1F6C();
  *(v0 + 20032) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsComposeOutputDenyList.init()();
  *(v0 + 20096) = &type metadata for Catalog.TokenOutputDenyList.WritingToolsComposeRecentsSummariesOutputDenyList;
  *(v0 + 20104) = sub_18E3B2190();
  *(v0 + 20072) = swift_allocObject();
  Catalog.TokenOutputDenyList.WritingToolsComposeRecentsSummariesOutputDenyList.init()();
  *(v0 + 20136) = &type metadata for Catalog.TokenOutputRetainList.ProofreadingRetainList;
  *(v0 + 20144) = sub_18E3B23B4();
  *(v0 + 20112) = swift_allocObject();
  Catalog.TokenOutputRetainList.ProofreadingRetainList.init()();
  *(v0 + 20176) = &type metadata for Catalog.TokenOutputRetainList.STXSafetyWordList;
  *(v0 + 20184) = sub_18E3B25D8();
  v236 = swift_allocObject();
  *(v0 + 20152) = v236;
  Catalog.TokenOutputRetainList.STXSafetyWordList.init()(v236, v237, v238, v239, v240, v241, v242, v243, v244);
  *(v0 + 20216) = &type metadata for Catalog.Tokenizer.CodeLMTokenizerExperimental;
  *(v0 + 20224) = sub_18E3B27A8();
  v245 = swift_allocObject();
  *(v0 + 20192) = v245;
  Catalog.Tokenizer.CodeLMTokenizerExperimental.init()((v245 + 16));
  *(v0 + 20256) = &type metadata for Catalog.Tokenizer.CodeLMLargeV1Tokenizer;
  *(v0 + 20264) = sub_18E3B2978();
  v246 = swift_allocObject();
  *(v0 + 20232) = v246;
  Catalog.Tokenizer.CodeLMLargeV1Tokenizer.init()((v246 + 16));
  *(v0 + 20296) = &type metadata for Catalog.Tokenizer.CodeLMLargeV2Tokenizer;
  *(v0 + 20304) = sub_18E3B2B48();
  v247 = swift_allocObject();
  *(v0 + 20272) = v247;
  Catalog.Tokenizer.CodeLMLargeV2Tokenizer.init()((v247 + 16));
  *(v0 + 20336) = &type metadata for Catalog.Tokenizer.CodeLMLargeV3Tokenizer;
  *(v0 + 20344) = sub_18E3B2D18();
  v248 = swift_allocObject();
  *(v0 + 20312) = v248;
  Catalog.Tokenizer.CodeLMLargeV3Tokenizer.init()((v248 + 16));
  *(v0 + 20376) = &type metadata for Catalog.Tokenizer.CodeLMLargeV4Tokenizer;
  *(v0 + 20384) = sub_18E3B2EE8();
  v249 = swift_allocObject();
  *(v0 + 20352) = v249;
  Catalog.Tokenizer.CodeLMLargeV4Tokenizer.init()((v249 + 16));
  *(v0 + 20416) = &type metadata for Catalog.Tokenizer.CodeLMLargeV5Tokenizer;
  *(v0 + 20424) = sub_18E3B30B8();
  v250 = swift_allocObject();
  *(v0 + 20392) = v250;
  Catalog.Tokenizer.CodeLMLargeV5Tokenizer.init()((v250 + 16));
  *(v0 + 20456) = &type metadata for Catalog.Tokenizer.CodeLMSafetyGuardrailTokenizer;
  *(v0 + 20464) = sub_18E3B3288();
  v251 = swift_allocObject();
  *(v0 + 20432) = v251;
  Catalog.Tokenizer.CodeLMSafetyGuardrailTokenizer.init()((v251 + 16));
  *(v0 + 20496) = &type metadata for Catalog.Tokenizer.CodeLMSmallV1Tokenizer;
  *(v0 + 20504) = sub_18E3B3458();
  v252 = swift_allocObject();
  *(v0 + 20472) = v252;
  Catalog.Tokenizer.CodeLMSmallV1Tokenizer.init()((v252 + 16));
  *(v0 + 20536) = &type metadata for Catalog.Tokenizer.CodeLMSmallV2Tokenizer;
  *(v0 + 20544) = sub_18E3B3628();
  v253 = swift_allocObject();
  *(v0 + 20512) = v253;
  Catalog.Tokenizer.CodeLMSmallV2Tokenizer.init()((v253 + 16));
  *(v0 + 20576) = &type metadata for Catalog.Tokenizer.CodeLMSmallV3Tokenizer;
  *(v0 + 20584) = sub_18E3B37F8();
  v254 = swift_allocObject();
  *(v0 + 20552) = v254;
  Catalog.Tokenizer.CodeLMSmallV3Tokenizer.init()((v254 + 16));
  *(v0 + 20616) = &type metadata for Catalog.Tokenizer.CodeLMSmallV4Tokenizer;
  *(v0 + 20624) = sub_18E3B39C8();
  v255 = swift_allocObject();
  *(v0 + 20592) = v255;
  Catalog.Tokenizer.CodeLMSmallV4Tokenizer.init()((v255 + 16));
  *(v0 + 20656) = &type metadata for Catalog.Tokenizer.CodeLMSmallV5Tokenizer;
  *(v0 + 20664) = sub_18E3B3B98();
  v256 = swift_allocObject();
  *(v0 + 20632) = v256;
  Catalog.Tokenizer.CodeLMSmallV5Tokenizer.init()((v256 + 16));
  *(v0 + 20696) = &type metadata for Catalog.Tokenizer.CodeLMTokenizer;
  *(v0 + 20704) = sub_18E3B3D68();
  v257 = swift_allocObject();
  *(v0 + 20672) = v257;
  Catalog.Tokenizer.CodeLMTokenizer.init()((v257 + 16));
  *(v0 + 20736) = &type metadata for Catalog.Tokenizer.CodeLMV1ANE3BTokenizer;
  *(v0 + 20744) = sub_18E3B3F38();
  v258 = swift_allocObject();
  *(v0 + 20712) = v258;
  Catalog.Tokenizer.CodeLMV1ANE3BTokenizer.init()((v258 + 16));
  *(v0 + 20776) = &type metadata for Catalog.Tokenizer.CodeLMTokenizerV2;
  *(v0 + 20784) = sub_18E3B4108();
  v259 = swift_allocObject();
  *(v0 + 20752) = v259;
  Catalog.Tokenizer.CodeLMTokenizerV2.init()((v259 + 16));
  *(v0 + 20816) = &type metadata for Catalog.Tokenizer.CodeLMTokenizerV3;
  *(v0 + 20824) = sub_18E3B42D8();
  v260 = swift_allocObject();
  *(v0 + 20792) = v260;
  Catalog.Tokenizer.CodeLMTokenizerV3.init()((v260 + 16));
  *(v0 + 20856) = &type metadata for Catalog.Tokenizer.CodeLMTokenizerV4;
  *(v0 + 20864) = sub_18E3B44A8();
  v261 = swift_allocObject();
  *(v0 + 20832) = v261;
  Catalog.Tokenizer.CodeLMTokenizerV4.init()((v261 + 16));
  *(v0 + 20896) = &type metadata for Catalog.Tokenizer.DistilledMessagesActionTokenizer;
  *(v0 + 20904) = sub_18E3B4678();
  *(v0 + 20872) = swift_allocObject();
  Catalog.Tokenizer.DistilledMessagesActionTokenizer.init()();
  *(v0 + 20936) = &type metadata for Catalog.Tokenizer.DistilledMessagesReplyTokenizer;
  *(v0 + 20944) = sub_18E3B4848();
  *(v0 + 20912) = swift_allocObject();
  Catalog.Tokenizer.DistilledMessagesReplyTokenizer.init()();
  *(v0 + 20976) = &type metadata for Catalog.Tokenizer.CodeSafetyGuardrailTokenizer;
  *(v0 + 20984) = sub_18E3B4A18();
  v262 = swift_allocObject();
  *(v0 + 20952) = v262;
  Catalog.Tokenizer.CodeSafetyGuardrailTokenizer.init()((v262 + 16));
  *(v0 + 21016) = &type metadata for Catalog.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer;
  *(v0 + 21024) = sub_18E3B4BE8();
  *(v0 + 20992) = swift_allocObject();
  Catalog.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer.init()();
  *(v0 + 21056) = &type metadata for Catalog.Tokenizer.AFMTextInstruct300MTokenizer;
  *(v0 + 21064) = sub_18E3B4DB8();
  *(v0 + 21032) = swift_allocObject();
  Catalog.Tokenizer.AFMTextInstruct300MTokenizer.init()();
  *(v0 + 21096) = &type metadata for Catalog.Tokenizer.AFMTextInstructEnglish49k;
  *(v0 + 21104) = sub_18E3B4F88();
  *(v0 + 21072) = swift_allocObject();
  Catalog.Tokenizer.AFMTextInstructEnglish49k.init()();
  *(v0 + 21136) = &type metadata for Catalog.Tokenizer.AFMTextInstruct85MTokenizer;
  *(v0 + 21144) = sub_18E3B5158();
  *(v0 + 21112) = swift_allocObject();
  Catalog.Tokenizer.AFMTextInstruct85MTokenizer.init()();
  *(v0 + 21176) = &type metadata for Catalog.Tokenizer.InstructServerTokenizer;
  *(v0 + 21184) = sub_18E3B5328();
  *(v0 + 21152) = swift_allocObject();
  Catalog.Tokenizer.InstructServerTokenizer.init()();
  *(v0 + 21216) = &type metadata for Catalog.Tokenizer.FoundationModelsPlatformDummyTokenizer;
  *(v0 + 21224) = sub_18E3B54F8();
  v263 = swift_allocObject();
  *(v0 + 21192) = v263;
  Catalog.Tokenizer.FoundationModelsPlatformDummyTokenizer.init()((v263 + 16));
  *(v0 + 21256) = &type metadata for Catalog.Tokenizer.NLRouterTokenizer;
  *(v0 + 21264) = sub_18E3B56C8();
  *(v0 + 21232) = swift_allocObject();
  Catalog.Tokenizer.NLRouterTokenizer.init()();
  *(v0 + 21296) = &type metadata for Catalog.Tokenizer.ChatGPTTokenizer;
  *(v0 + 21304) = sub_18E3B5898();
  v264 = swift_allocObject();
  *(v0 + 21272) = v264;
  Catalog.Tokenizer.ChatGPTTokenizer.init()((v264 + 16));
  Catalog.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets.init()(__src);
  sub_18E2451D0();
  v266 = v265;
  memcpy(__dst, __src, sizeof(__dst));
  *&v286[24] = &type metadata for Catalog.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets;
  *&v286[32] = sub_18E3A31D0();
  *v286 = swift_allocObject();
  memcpy((*v286 + 16), __src, 0x78uLL);
  *(v266 + 16) = 533;
  sub_18E1C551C(v286, v266 + 21312);
  memcpy(v286, __src, sizeof(v286));
  sub_18E3B78E0(__dst, v285);
  sub_18E3B7918(v286);
  Catalog.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings.init()(__src);
  v267 = *(v266 + 16);
  if (v267 >= *(v266 + 24) >> 1)
  {
    sub_18E2451D0();
    v266 = v272;
  }

  memcpy(v280, __src, sizeof(v280));
  *&v285[24] = &type metadata for Catalog.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings;
  *&v285[32] = sub_18E3A33F4();
  *v285 = swift_allocObject();
  memcpy((*v285 + 16), __src, 0x78uLL);
  *(v266 + 16) = v267 + 1;
  sub_18E1C551C(v285, v266 + 40 * v267 + 32);
  memcpy(v285, __src, sizeof(v285));
  sub_18E3B7948(v280, v279);
  sub_18E3B7980(v285);
  Catalog.Motion.Model.CoreMotionIMUFoundationModel.init()(v279);
  v268 = *(v266 + 16);
  if (v268 >= *(v266 + 24) >> 1)
  {
    sub_18E2451D0();
    v266 = v273;
  }

  memcpy(v278, v279, sizeof(v278));
  *&v284[24] = &type metadata for Catalog.Motion.Model.CoreMotionIMUFoundationModel;
  *&v284[32] = sub_18E3A3618();
  *v284 = swift_allocObject();
  memcpy((*v284 + 16), v279, 0x78uLL);
  *(v266 + 16) = v268 + 1;
  sub_18E1C551C(v284, v266 + 40 * v268 + 32);
  memcpy(v284, v279, sizeof(v284));
  sub_18E3B79B0(v278, v277);
  sub_18E3B79E8(v284);
  Catalog.Motion.Model.Pednet.init()(v277);
  v269 = *(v266 + 16);
  if (v269 >= *(v266 + 24) >> 1)
  {
    sub_18E2451D0();
    v266 = v274;
  }

  memcpy(v276, v277, sizeof(v276));
  *&v283[24] = &type metadata for Catalog.Motion.Model.Pednet;
  *&v283[32] = sub_18E3A383C();
  *v283 = swift_allocObject();
  memcpy((*v283 + 16), v277, 0x78uLL);
  *(v266 + 16) = v269 + 1;
  sub_18E1C551C(v283, v266 + 40 * v269 + 32);
  memcpy(v283, v277, sizeof(v283));
  sub_18E3B7A18(v276, v275);
  sub_18E3B7A50(v283);
  v270 = *MEMORY[0x1E69E9840];
  return v266;
}

uint64_t static Catalog.resources.getter()
{
  if (qword_1EABDFC60 != -1)
  {
    swift_once();
  }
}

void sub_18E36A1DC()
{
  sub_18E1E6AB4();
  v1 = v0;
  if (*(v0 + 16) && (sub_18E2706EC(&qword_1EABE8FE8, &unk_18E4E1A30), v2 = sub_18E44EFDC(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      v10 = *(v3 + 40);
      sub_18E44F48C();

      sub_18E44EB4C();
      v11 = sub_18E44F4CC();
      v12 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v11 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (sub_18E44F3CC() & 1) != 0)
        {

          goto LABEL_16;
        }

        v11 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v22;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_18E1E28A4();
  }
}

void sub_18E36A354()
{
  sub_18E1C575C();
  v1 = v0;
  if (!*(v0 + 16) || (sub_18E2706EC(&qword_1EABE8FD8, &qword_18E4E1A20), v2 = sub_18E44EFDC(), v3 = v2, !*(v1 + 16)))
  {
LABEL_60:

    sub_18E1C5544();
    return;
  }

  v4 = 0;
  v92 = v2;
  v93 = v2 + 56;
  v85 = *(v1 + 16);
  v86 = v1 + 32;
  v5 = v85;
  v82 = v1;
LABEL_4:
  if (v4 >= v5)
  {
    __break(1u);
    goto LABEL_62;
  }

  v6 = (v86 + (v4 << 6));
  v7 = v6[1];
  v115 = *v6;
  *v116 = v7;
  *&v116[16] = v6[2];
  *&v116[26] = *(v6 + 42);
  v8 = v115;
  v9 = v7;
  v10 = *(v3 + 40);
  sub_18E44F48C();
  sub_18E27418C(&v115, &v109);
  sub_18E44EB4C();
  if (v9 != 2)
  {
    sub_18E44F4AC();
  }

  sub_18E44F4AC();
  v11 = *&v116[24];
  v89 = *&v116[16];
  v87 = v4;
  v91 = *&v116[8];
  v84 = *&v116[32];
  HIDWORD(v83) = v116[40];
  if (*&v116[24])
  {
    v106 = *&v116[8];
    v107 = *&v116[24];
    LOBYTE(v108) = v116[40];
    LOBYTE(v105) = v116[40];
    v103 = *&v116[8];
    v104 = *&v116[24];
    sub_18E44F4AC();
    sub_18E327BB0(&v106, &v109);
    CostProfile.hash(into:)();
    v109 = v103;
    v110 = v104;
    v111 = v105;
    sub_18E292124(&v109);
  }

  else
  {
    sub_18E44F4AC();
  }

  v88 = v116[41];
  MEMORY[0x193ACCC20]();
  v12 = sub_18E44F4CC();
  v19 = -1 << *(v3 + 32);
  v20 = v12 & ~v19;
  v21 = v20 >> 6;
  v22 = v93;
  v23 = *(v93 + 8 * (v20 >> 6));
  v24 = 1 << v20;
  if (((1 << v20) & v23) != 0)
  {
    v25 = ~v19;
    v81 = v11 + 40;
    HIDWORD(v90) = v9;
    while (1)
    {
      v26 = (*(v3 + 48) + (v20 << 6));
      v27 = *(v26 + 42);
      v29 = v26[1];
      v28 = v26[2];
      v112 = *v26;
      v113 = v29;
      v114[0] = v28;
      *(v114 + 10) = v27;
      v31 = *(&v112 + 1);
      v30 = v112;
      v32 = v29;
      if (v112 != v8 || *(&v112 + 1) != *(&v8 + 1))
      {
        v30 = sub_18E44F3CC();
        if ((v30 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      if (v32 == 2)
      {
        if (v9 != 2)
        {
          goto LABEL_53;
        }
      }

      else if (v9 == 2 || ((v32 ^ v9) & 1) != 0)
      {
        goto LABEL_53;
      }

      v34 = *(&v114[0] + 1);
      if (*(&v114[0] + 1))
      {
        v35 = *&v114[1];
        v36 = *(&v113 + 1);
        v37 = v114[0];
        if (!v11)
        {
          DWORD2(v106) = v114[0];
          BYTE12(v106) = BYTE4(v114[0]);
          *(&v106 + 13) = DWORD1(v114[0]) >> 8;
          HIBYTE(v106) = BYTE7(v114[0]);
          LOBYTE(v108) = BYTE8(v114[1]);
          sub_18E1E3C14(v30, v31, v13, v14, v15, v16, v17, v18, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v96, v98, v100, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v113 + 1), *(&v106 + 1), *(&v114[0] + 1), *&v114[1], v108, v109);
          swift_bridgeObjectRetain_n();
          sub_18E292124(&v106);
          v3 = v92;
          v22 = v93;
          goto LABEL_50;
        }

        v99 = *&v114[0] >> 24;
        v101 = DWORD1(v114[0]);
        HIDWORD(v102) = BYTE8(v114[1]);
        v95 = *&v114[0] >> 8;
        v97 = *&v114[0] >> 16;
        if (*(&v113 + 1) != v91 || ((LODWORD(v114[0]) ^ v89) & 1) != 0 || (((v89 >> 8) & 1 ^ (LODWORD(v114[0]) >> 8)) & 1) != 0 || (((v89 >> 16) & 1 ^ WORD1(v114[0])) & 1) != 0 || (((v89 >> 24) & 1 ^ BYTE3(v114[0])) & 1) != 0 || ((BYTE4(v89) & 1 ^ DWORD1(v114[0])) & 1) != 0 || (v38 = *(*(&v114[0] + 1) + 16), v38 != *(v11 + 16)))
        {
          v42 = *&v114[1];
          goto LABEL_44;
        }

        if (v38 && *(&v114[0] + 1) != v11)
        {
          v39 = (*(&v114[0] + 1) + 40);
          v40 = v81;
          while (1)
          {
            if (*(v39 - 1) != *(v40 - 1) || *v39 != *v40)
            {
              v42 = v35;
              v79 = v39;
              v80 = v38;
              v78 = v40;
              v43 = sub_18E44F3CC();
              v40 = v78;
              v39 = v79;
              v38 = v80;
              v35 = v42;
              if ((v43 & 1) == 0)
              {
                break;
              }
            }

            v39 += 2;
            v40 += 2;
            if (!--v38)
            {
              goto LABEL_40;
            }
          }

LABEL_44:

          sub_18E1E3C14(v53, v54, v55, v56, v57, v58, v59, v60, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v95, v97, v99, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109);
          swift_bridgeObjectRetain_n();

LABEL_45:
          *&v109 = v36;
          BYTE8(v109) = v37;
          BYTE9(v109) = v94;
          BYTE10(v109) = v96;
          BYTE11(v109) = v98;
          sub_18E2214C0();
          *&v110 = v34;
          *(&v110 + 1) = v42;
          v111 = BYTE4(v102);
          sub_18E292124(&v109);

          v9 = HIDWORD(v90);
LABEL_46:
          sub_18E2741E8(&v112);
          v3 = v92;
          v22 = v93;
          goto LABEL_53;
        }

LABEL_40:
        v42 = v35;

        sub_18E1E3C14(v44, v45, v46, v47, v48, v49, v50, v51, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v95, v97, v99, v101, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109);
        swift_bridgeObjectRetain_n();

        if (v42 != v84)
        {
          goto LABEL_45;
        }

        *&v109 = v91;
        BYTE8(v109) = v37;
        BYTE9(v109) = v94;
        BYTE10(v109) = v96;
        BYTE11(v109) = v98;
        sub_18E2214C0();
        *&v110 = v34;
        *(&v110 + 1) = v84;
        v111 = v52;
        sub_18E292124(&v109);

        v9 = HIDWORD(v90);
        if ((BYTE4(v102) ^ BYTE4(v83)))
        {
          goto LABEL_46;
        }

        v3 = v92;
        v22 = v93;
      }

      else
      {
        if (v11)
        {

          sub_18E1E3C14(v61, v62, v63, v64, v65, v66, v67, v68, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v96, v98, v100, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109);
LABEL_50:

          sub_18E2741E8(&v112);
          goto LABEL_53;
        }

        sub_18E1E3C14(v30, v31, v13, v14, v15, v16, v17, v18, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v96, v98, v100, v102, v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109);
      }

      v69 = BYTE9(v114[1]);
      sub_18E2741E8(&v112);
      if (v69 == v88)
      {
        sub_18E2741E8(&v115);
        v1 = v82;
LABEL_57:
        v4 = v87 + 1;
        if (v87 + 1 == v85)
        {
          goto LABEL_60;
        }

        v5 = *(v1 + 16);
        goto LABEL_4;
      }

LABEL_53:
      v20 = (v20 + 1) & v25;
      v21 = v20 >> 6;
      v24 = 1 << v20;
      if ((*(v22 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        v23 = *(v22 + 8 * v21);
        v1 = v82;
        break;
      }
    }
  }

  *(v22 + 8 * v21) = v23 | v24;
  v70 = (*(v3 + 48) + (v20 << 6));
  v71 = v115;
  v72 = *v116;
  v73 = *&v116[16];
  *(v70 + 42) = *&v116[26];
  v70[1] = v72;
  v70[2] = v73;
  *v70 = v71;
  v74 = *(v3 + 16);
  v75 = __OFADD__(v74, 1);
  v76 = v74 + 1;
  if (!v75)
  {
    *(v3 + 16) = v76;
    goto LABEL_57;
  }

LABEL_62:
  __break(1u);
  __break(1u);
}

uint64_t sub_18E36A8EC(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_27;
  }

  sub_18E2706EC(&qword_1EABE8FE0, &qword_18E4E1A28);
  result = sub_18E44EFDC();
  v3 = result;
  v28 = *(v1 + 16);
  if (!v28)
  {
    goto LABEL_27;
  }

  v4 = 0;
  v5 = result + 56;
  v26 = result;
  v27 = v1 + 32;
  v25 = v1;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v6 = (v27 + 24 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v6 + 16);
    v10 = *(v3 + 40);
    sub_18E44F48C();

    sub_18E44EB4C();
    if (v9 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    result = sub_18E44F4CC();
    v11 = ~(-1 << *(v3 + 32));
    v12 = result & v11;
    v13 = (result & v11) >> 6;
    v14 = *(v5 + 8 * v13);
    v15 = 1 << (result & v11);
    v16 = *(v3 + 48);
    if ((v15 & v14) == 0)
    {
      break;
    }

    while (1)
    {
      v17 = v16 + 24 * v12;
      result = *v17;
      v18 = *(v17 + 16);
      if (*v17 != v8 || *(v17 + 8) != v7)
      {
        result = sub_18E44F3CC();
        if ((result & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v18 != 2)
      {
        break;
      }

      if (v9 == 2)
      {
        goto LABEL_23;
      }

LABEL_18:
      v12 = (v12 + 1) & v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if ((v14 & (1 << v12)) == 0)
      {
        v1 = v25;
        v20 = v26;
        v16 = *(v26 + 48);
        goto LABEL_21;
      }
    }

    if (v9 == 2 || ((v18 ^ v9) & 1) != 0)
    {
      goto LABEL_18;
    }

LABEL_23:

    v1 = v25;
    v3 = v26;
LABEL_24:
    if (++v4 == v28)
    {
LABEL_27:

      return v3;
    }
  }

  v20 = v26;
LABEL_21:
  *(v5 + 8 * v13) = v14 | v15;
  v21 = v16 + 24 * v12;
  *v21 = v8;
  *(v21 + 8) = v7;
  *(v21 + 16) = v9;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    v3 = v20;
    *(v20 + 16) = v24;
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_18E36B140(uint64_t a1)
{
  result = sub_18E36B168();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36B168()
{
  result = qword_1EABE3C40;
  if (!qword_1EABE3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C40);
  }

  return result;
}

unint64_t sub_18E36B1E8()
{
  result = qword_1EABE3C48;
  if (!qword_1EABE3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C48);
  }

  return result;
}

unint64_t sub_18E36B23C()
{
  result = qword_1EABE3C50;
  if (!qword_1EABE3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C50);
  }

  return result;
}

unint64_t sub_18E36B294()
{
  result = qword_1EABE3C58;
  if (!qword_1EABE3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C58);
  }

  return result;
}

unint64_t sub_18E36B2E8(uint64_t a1)
{
  result = sub_18E36B310();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36B310()
{
  result = qword_1EABE3C60;
  if (!qword_1EABE3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C60);
  }

  return result;
}

unint64_t sub_18E36B390()
{
  result = qword_1EABE3C68;
  if (!qword_1EABE3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C68);
  }

  return result;
}

unint64_t sub_18E36B3E4()
{
  result = qword_1EABE3C70;
  if (!qword_1EABE3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C70);
  }

  return result;
}

unint64_t sub_18E36B43C()
{
  result = qword_1EABE3C78;
  if (!qword_1EABE3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C78);
  }

  return result;
}

unint64_t sub_18E36B490(uint64_t a1)
{
  result = sub_18E36B4B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36B4B8()
{
  result = qword_1EABE3C80;
  if (!qword_1EABE3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C80);
  }

  return result;
}

unint64_t sub_18E36B538()
{
  result = qword_1EABE3C88;
  if (!qword_1EABE3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C88);
  }

  return result;
}

unint64_t sub_18E36B58C()
{
  result = qword_1EABE3C90;
  if (!qword_1EABE3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C90);
  }

  return result;
}

unint64_t sub_18E36B5E4()
{
  result = qword_1EABE3C98;
  if (!qword_1EABE3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3C98);
  }

  return result;
}

unint64_t sub_18E36B638(uint64_t a1)
{
  result = sub_18E36B660();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36B660()
{
  result = qword_1EABE3CA0;
  if (!qword_1EABE3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CA0);
  }

  return result;
}

unint64_t sub_18E36B6E0()
{
  result = qword_1EABE3CA8;
  if (!qword_1EABE3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CA8);
  }

  return result;
}

unint64_t sub_18E36B734()
{
  result = qword_1EABE3CB0;
  if (!qword_1EABE3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CB0);
  }

  return result;
}

unint64_t sub_18E36B78C()
{
  result = qword_1EABE3CB8;
  if (!qword_1EABE3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CB8);
  }

  return result;
}

unint64_t sub_18E36B7E0(uint64_t a1)
{
  result = sub_18E36B808();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36B808()
{
  result = qword_1EABE3CC0;
  if (!qword_1EABE3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CC0);
  }

  return result;
}

unint64_t sub_18E36B85C(uint64_t a1)
{
  result = sub_18E36B884();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36B884()
{
  result = qword_1EABE3CC8;
  if (!qword_1EABE3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CC8);
  }

  return result;
}

unint64_t sub_18E36B904()
{
  result = qword_1EABE3CD0;
  if (!qword_1EABE3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CD0);
  }

  return result;
}

unint64_t sub_18E36B958()
{
  result = qword_1EABE3CD8;
  if (!qword_1EABE3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CD8);
  }

  return result;
}

unint64_t sub_18E36B9B0()
{
  result = qword_1EABE3CE0;
  if (!qword_1EABE3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CE0);
  }

  return result;
}

unint64_t sub_18E36BA04(uint64_t a1)
{
  result = sub_18E36BA2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36BA2C()
{
  result = qword_1EABE3CE8;
  if (!qword_1EABE3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CE8);
  }

  return result;
}

unint64_t sub_18E36BA80(uint64_t a1)
{
  result = sub_18E36BAA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36BAA8()
{
  result = qword_1EABE3CF0;
  if (!qword_1EABE3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CF0);
  }

  return result;
}

unint64_t sub_18E36BB28()
{
  result = qword_1EABE3CF8;
  if (!qword_1EABE3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3CF8);
  }

  return result;
}

unint64_t sub_18E36BB7C()
{
  result = qword_1EABE3D00;
  if (!qword_1EABE3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D00);
  }

  return result;
}

unint64_t sub_18E36BBD4()
{
  result = qword_1EABE3D08;
  if (!qword_1EABE3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D08);
  }

  return result;
}

unint64_t sub_18E36BC28(uint64_t a1)
{
  result = sub_18E36BC50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36BC50()
{
  result = qword_1EABE3D10;
  if (!qword_1EABE3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D10);
  }

  return result;
}

unint64_t sub_18E36BCA4(uint64_t a1)
{
  result = sub_18E36BCCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36BCCC()
{
  result = qword_1EABE3D18;
  if (!qword_1EABE3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D18);
  }

  return result;
}

unint64_t sub_18E36BD4C()
{
  result = qword_1EABE3D20;
  if (!qword_1EABE3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D20);
  }

  return result;
}

unint64_t sub_18E36BDA0()
{
  result = qword_1EABE3D28;
  if (!qword_1EABE3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D28);
  }

  return result;
}

unint64_t sub_18E36BDF8()
{
  result = qword_1EABE3D30;
  if (!qword_1EABE3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D30);
  }

  return result;
}

unint64_t sub_18E36BE4C(uint64_t a1)
{
  result = sub_18E36BE74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36BE74()
{
  result = qword_1EABE3D38;
  if (!qword_1EABE3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D38);
  }

  return result;
}

unint64_t sub_18E36BEC8(uint64_t a1)
{
  result = sub_18E36BEF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36BEF0()
{
  result = qword_1EABE3D40;
  if (!qword_1EABE3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D40);
  }

  return result;
}

unint64_t sub_18E36BF70()
{
  result = qword_1EABE3D48;
  if (!qword_1EABE3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D48);
  }

  return result;
}

unint64_t sub_18E36BFC4()
{
  result = qword_1EABE3D50;
  if (!qword_1EABE3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D50);
  }

  return result;
}

unint64_t sub_18E36C01C()
{
  result = qword_1EABE3D58;
  if (!qword_1EABE3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D58);
  }

  return result;
}

unint64_t sub_18E36C070(uint64_t a1)
{
  result = sub_18E36C098();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C098()
{
  result = qword_1EABE3D60;
  if (!qword_1EABE3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D60);
  }

  return result;
}

unint64_t sub_18E36C0EC(uint64_t a1)
{
  result = sub_18E36C114();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C114()
{
  result = qword_1EABE3D68;
  if (!qword_1EABE3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D68);
  }

  return result;
}

unint64_t sub_18E36C194()
{
  result = qword_1EABE3D70;
  if (!qword_1EABE3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D70);
  }

  return result;
}

unint64_t sub_18E36C1E8()
{
  result = qword_1EABE3D78;
  if (!qword_1EABE3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D78);
  }

  return result;
}

unint64_t sub_18E36C240()
{
  result = qword_1EABE3D80;
  if (!qword_1EABE3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D80);
  }

  return result;
}

unint64_t sub_18E36C294(uint64_t a1)
{
  result = sub_18E36C2BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C2BC()
{
  result = qword_1EABE3D88;
  if (!qword_1EABE3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D88);
  }

  return result;
}

unint64_t sub_18E36C310(uint64_t a1)
{
  result = sub_18E36C338();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C338()
{
  result = qword_1EABE3D90;
  if (!qword_1EABE3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D90);
  }

  return result;
}

unint64_t sub_18E36C3B8()
{
  result = qword_1EABE3D98;
  if (!qword_1EABE3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3D98);
  }

  return result;
}

unint64_t sub_18E36C40C()
{
  result = qword_1EABE3DA0;
  if (!qword_1EABE3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DA0);
  }

  return result;
}

unint64_t sub_18E36C464()
{
  result = qword_1EABE3DA8;
  if (!qword_1EABE3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DA8);
  }

  return result;
}

unint64_t sub_18E36C4B8(uint64_t a1)
{
  result = sub_18E36C4E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C4E0()
{
  result = qword_1EABE3DB0;
  if (!qword_1EABE3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DB0);
  }

  return result;
}

unint64_t sub_18E36C534(uint64_t a1)
{
  result = sub_18E36C55C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C55C()
{
  result = qword_1EABE3DB8;
  if (!qword_1EABE3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DB8);
  }

  return result;
}

unint64_t sub_18E36C5DC()
{
  result = qword_1EABE3DC0;
  if (!qword_1EABE3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DC0);
  }

  return result;
}

unint64_t sub_18E36C630()
{
  result = qword_1EABE3DC8;
  if (!qword_1EABE3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DC8);
  }

  return result;
}

unint64_t sub_18E36C688()
{
  result = qword_1EABE3DD0;
  if (!qword_1EABE3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DD0);
  }

  return result;
}

unint64_t sub_18E36C6DC(uint64_t a1)
{
  result = sub_18E36C704();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C704()
{
  result = qword_1EABE3DD8;
  if (!qword_1EABE3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DD8);
  }

  return result;
}

unint64_t sub_18E36C758(uint64_t a1)
{
  result = sub_18E36C780();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C780()
{
  result = qword_1EABE3DE0;
  if (!qword_1EABE3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DE0);
  }

  return result;
}

unint64_t sub_18E36C800()
{
  result = qword_1EABE3DE8;
  if (!qword_1EABE3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DE8);
  }

  return result;
}

unint64_t sub_18E36C854()
{
  result = qword_1EABE3DF0;
  if (!qword_1EABE3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DF0);
  }

  return result;
}

unint64_t sub_18E36C8AC()
{
  result = qword_1EABE3DF8;
  if (!qword_1EABE3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3DF8);
  }

  return result;
}

unint64_t sub_18E36C900(uint64_t a1)
{
  result = sub_18E36C928();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C928()
{
  result = qword_1EABE3E00;
  if (!qword_1EABE3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3E00);
  }

  return result;
}

unint64_t sub_18E36C97C(uint64_t a1)
{
  result = sub_18E36C9A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36C9A4()
{
  result = qword_1EABE3E08;
  if (!qword_1EABE3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3E08);
  }

  return result;
}

unint64_t sub_18E36CA24()
{
  result = qword_1EABE3E10;
  if (!qword_1EABE3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3E10);
  }

  return result;
}

unint64_t sub_18E36CA78()
{
  result = qword_1EABE3E18;
  if (!qword_1EABE3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3E18);
  }

  return result;
}

unint64_t sub_18E36CAD0()
{
  result = qword_1EABE3E20;
  if (!qword_1EABE3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3E20);
  }

  return result;
}

unint64_t sub_18E36CB24(uint64_t a1)
{
  result = sub_18E36CB4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E36CB4C()
{
  result = qword_1EABE3E28;
  if (!qword_1EABE3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3E28);
  }

  return result;
}