void Catalog.LLM.Adapter.ContentTagger.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_3b.fm_api_content_tagger");
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
  sub_18E1E3A3C(v25);
  sub_18E1EA008();
  sub_18E1D6298(&unk_1F011E9C0);
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1FED28(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 352) = sub_18E1C6788(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.Adapter.InstructFMApiGeneric.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1FF2E8("com.apple.fm.language.instruct_3b.fm_api_generic");
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
  sub_18E1E3A3C(v25);
  sub_18E1EA008();
  sub_18E1D6298(&unk_1F011EA20);
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1FED28(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 352) = sub_18E1C6788(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.Adapter.FriendlyTone.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.fm.language.instruct_3b.friendly_tone");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EA80);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.JournalMomentsClassification.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  sub_18E1E22A0();
  v11 = v10;
  sub_18E1CC500("com.apple.fm.language.instruct_3b.journal_moments_classification");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v12 = sub_18E1D0404();
  sub_18E1E3EA0(v12, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
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
  sub_18E1CA740(v34);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EAB0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v35 = sub_18E1CF1F8();
  *(v11 + 352) = sub_18E1E2D84(v35, a9);
  sub_18E224118();
}

void Catalog.LLM.Adapter.JournalMomentsReflection.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  sub_18E1E22A0();
  v11 = v10;
  sub_18E1E6C30("com.apple.fm.language.instruct_3b.journal_moments_reflection");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v12 = sub_18E1D0404();
  sub_18E1E3EA0(v12, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
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
  sub_18E1CA740(v34);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EAE0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v35 = sub_18E1CF1F8();
  *(v11 + 352) = sub_18E1E2D84(v35, a9);
  sub_18E224118();
}

void Catalog.LLM.Adapter.LWOnDevicePlannerV1.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.fm.language.instruct_3b.lw_planner_v1");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EB10);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MagicRewrite.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.fm.language.instruct_3b.magic_rewrite");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EB40);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MailReply.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.instruct_3b.mail_reply");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EB70);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MailReplyLongFormBasic.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E6C30("com.apple.fm.language.instruct_3b.mail_reply_long_form_basic");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EBA0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MailReplyLongFormRewrite.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.fm.language.instruct_3b.mail_reply_long_form_rewrite");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EBD0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MailReplyQA.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.fm.language.instruct_3b.mail_reply_qa");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EC00);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MessagesAction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.fm.language.instruct_3b.messages_action");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EC30);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MessagesReply.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1FF2E8("com.apple.fm.language.instruct_3b.messages_reply");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EC60);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.MMGuardSafetyGuardrail3B.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3B30("com.apple.fm.language.instruct_3b.mm_guard");
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
  sub_18E21689C(v25, 40000);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EC90);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.Nutrition.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2287B8("com.apple.fm.language.instruct_3b.nutrition");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011ECC0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PersonalizedSmartReply.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.fm.language.instruct_3b.personalized_smart_reply");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011ECF0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PhotosLibraryUnderstandingMM.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1DD378("com.apple.fm.language.instruct_3b.photos_library_understanding_mm");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011ED20);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PhotosLibraryUnderstandingT2T.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.fm.language.instruct_3b.photos_library_understanding_t2t");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011ED50);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E22187C("com.apple.fm.language.instruct_3b.photos_memories_asset_curation_outlier");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011ED80);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CDA14("com.apple.fm.language.instruct_3b.photos_memories_global_traits");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EDB0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1DD5AC("com.apple.fm.language.instruct_3b.photos_memories_query_understanding");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EDE0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PhotosMemoriesCreationStoryteller3b.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF4B4("com.apple.fm.language.instruct_3b.photos_memories_storyteller");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EE10);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PhotosMemoriesTitle.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_3b.photos_memories_title");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EE40);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  v28 = sub_18E1C8E7C(v27);
  *(v2 + 352) = sub_18E208050(v28, 5);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PlannerV4.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.instruct_3b.planner_v4");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EE70);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1D4A58(v26, xmmword_18E49DA90);
  *(v2 + 352) = sub_18E1C8E7C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PlannerV5.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.instruct_3b.planner_v5");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EEA0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1D4A58(v26, xmmword_18E49DA90);
  *(v2 + 352) = sub_18E1C8E7C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.PlannerV6.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.instruct_3b.planner_v6");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EED0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1D4A58(v26, xmmword_18E49DA90);
  *(v2 + 352) = sub_18E1C8E7C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ProfessionalTone.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_3b.professional_tone");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EF00);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ProofreadingReview.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.fm.language.instruct_3b.proofreading_review");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EF30);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.RemindersSuggestActionItems.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CC500("com.apple.fm.language.instruct_3b.reminders_suggest_action_items");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EF60);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ResponseGenerationV4.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.response_generation_v4");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EF90);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1D4A58(v26, xmmword_18E49DA90);
  *(v2 + 352) = sub_18E1C8E7C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ResponseGenerationV5.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.response_generation_v5");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EFC0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1D4A58(v26, xmmword_18E49DA90);
  *(v2 + 352) = sub_18E1C8E7C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ResponseGenerationV6.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.response_generation_v6");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011EFF0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  v27 = sub_18E1D4A58(v26, xmmword_18E49DA90);
  *(v2 + 352) = sub_18E1C8E7C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.SafetyGuardrail.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.fm.language.instruct_3b.safety_guardrail");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F020);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.SearchQueryUnderstandingOnDevice.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E6C30("com.apple.fm.language.instruct_3b.search_query_understanding");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F050);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ShortcutsAskAFMAction3B.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF4B4("com.apple.fm.language.instruct_3b.shortcuts_ask_afm_action_3b");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F080);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.ShortcutsAskAFMAction3BV2.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CC500("com.apple.fm.language.instruct_3b.shortcuts_ask_afm_action_3b_v2");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F0B0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.SmartAppActions.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_3b.smart_app_actions");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F0E0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.StructuralExtraction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_3b.structural_extraction");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F110);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 352) = sub_18E1D6138(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.Adapter.StructuredExtraction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_3b.structured_extraction");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F140);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.SuggestRecipeItems.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E1000("com.apple.fm.language.instruct_3b.suggest_recipe_items");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F170);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.Summarization.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.fm.language.instruct_3b.summarization");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F1A0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.TablesTransform.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.fm.language.instruct_3b.tables_transform");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F1D0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.TakeawaysTransform.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.fm.language.instruct_3b.takeaways_transform");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F200);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.TamalePOI.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.instruct_3b.tamale_poi");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F230);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.TextEventExtraction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_3b.text_event_extraction");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F260);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.TextExpert.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CAE98("com.apple.fm.language.instruct_3b.text_expert");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F290);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

void Catalog.LLM.Adapter.TextPersonExtraction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.text_person_extraction");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F2C0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.TextSummarizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.fm.language.instruct_3b.text_summarizer");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F2F0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.Adapter.AFMTextInstruct3BThirdParty.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CAE98("com.apple.fm.language.instruct_3b.third_party");
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
  sub_18E1E3A3C(v25);
  sub_18E1EA008();
  sub_18E1D6298(&unk_1F011F320);
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1FED28(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v2 + 352) = sub_18E1C6788(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.Adapter.UIGrounding.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CEA18("com.apple.fm.language.instruct_3b.ui_grounding");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F380);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1D4A58(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5A4C(v27);
  sub_18E224118();
}

uint64_t Catalog.LLM.Adapter.UIPreviews.explicitRequestUsage.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_18E1C5BFC();
}

uint64_t Catalog.LLM.Adapter.UIPreviews.executionContexts.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Catalog.LLM.Adapter.UIPreviews.cost.getter()
{
  v1 = sub_18E240E7C();
  v2 = *(v0 + 88);
  return sub_18E1E688C(v3, v1, v4, v6, v7, v8, v9, v10, v11, v1.n128_i8[0], v1.n128_i64[1], v4.n128_i64[0], v4.n128_i64[1], v12);
}

uint64_t Catalog.LLM.Adapter.UIPreviews.llmModel.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), 0xF0uLL);
  memcpy(a1, (v1 + 96), 0xF0uLL);
  return sub_18E32EAD4(__dst, v4);
}

void Catalog.LLM.Adapter.UIPreviews.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CAE98("com.apple.fm.language.instruct_3b.ui_previews");
  sub_18E1E233C();
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  *(v2 + 32) = sub_18E36A8EC(v3);
  v4 = sub_18E1D49D0();
  sub_18E1D8010(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 40) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = sub_18E1D0038();
  sub_18E1CF330(v22, v23);

  sub_18E36A354();
  sub_18E235320(v24, 100000);
  v25 = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = 1;
  *(v2 + 88) = 0;
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  *(v2 + 336) = &unk_1F011F3B0;
  *(v2 + 344) = v25;
  *(v2 + 352) = 256;
  *(v2 + 360) = v25;
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF1F8();
  sub_18E1E370C(v26, v27, v28, v29, v30, v31, v32, v33, v34);
  *(v2 + 368) = v35;
  sub_18E224118();
}

void static Catalog.LLM.Adapter.UIPreviews.== infix(_:_:)()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v48 = v2[4];
  v46 = v2[5];
  v44 = v2[6];
  v8 = *(v2 + 9);
  v57 = *(v2 + 7);
  v58 = v8;
  v59 = *(v2 + 88);
  memcpy(__dst, v2 + 12, sizeof(__dst));
  v38 = v3[43];
  HIDWORD(v36) = *(v3 + 352);
  HIDWORD(v34) = *(v3 + 353);
  v32 = v3[45];
  v29 = v3[46];
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v47 = v1[4];
  v45 = v1[5];
  v41 = v3[42];
  v43 = v1[6];
  v13 = *(v1 + 9);
  v61[0] = *(v1 + 7);
  v61[1] = v13;
  v62 = *(v1 + 88);
  memcpy(__src, v1 + 12, 0xF0uLL);
  v39 = v1[42];
  v37 = v1[43];
  LODWORD(v36) = *(v1 + 352);
  LODWORD(v34) = *(v1 + 353);
  v14 = v4 == v9 && v5 == v10;
  v30 = v1[45];
  v28 = v1[46];
  if (v14 || (sub_18E1C5BFC(), (sub_18E44F3CC() & 1) != 0))
  {
    v15 = v7 == v11 && v6 == v12;
    if (v15 || (sub_18E44F3CC()) && (sub_18E28BB7C(v48, v47) & 1) != 0 && (sub_18E28BB7C(v46, v45))
    {
      sub_18E28BDB0();
      if (v16)
      {
        v17 = *(v3 + 9);
        v55[0] = *(v3 + 7);
        v55[1] = v17;
        LOBYTE(v55[2]) = *(v3 + 88);
        v18 = *(v1 + 9);
        *v52 = *(v1 + 7);
        v53 = v18;
        v54 = *(v1 + 88);
        static CostProfile.== infix(_:_:)(v55, v52);
        sub_18E237090();
        sub_18E327BB0(v61, v51);
        sub_18E292124(v56);
        sub_18E233290();
        if (v4)
        {
          memcpy(v51, __dst, sizeof(v51));
          memcpy(v50, __src, sizeof(v50));
          sub_18E32EAD4(__dst, v49);
          sub_18E32EAD4(__src, v49);
          static Catalog.LLM.Model.PQAVerificationBase.== infix(_:_:)();
          sub_18E1E2A9C(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v32, v34, v36, v37, v38, v39, v41, v43, v44, v45, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v49[23], v49[24], v49[25], v49[26], v49[27], v49[28], v49[29], v50[0]);
          sub_18E36AB70(v52);
          memcpy(v55, v51, sizeof(v55));
          sub_18E36AB70(v55);
          if (sub_18E290008(v42, v40))
          {
            sub_18E290AD4();
            if (v27)
            {
              sub_18E240940();
              if (v14 && HIDWORD(v35) == v35 && sub_18E290BF0(v33, v31))
              {
                sub_18E290C28();
              }
            }
          }
        }
      }
    }
  }

  sub_18E1C5544();
}

void Catalog.LLM.Adapter.UIPreviews.hash(into:)()
{
  sub_18E1E6AB4();
  v2 = v1;
  sub_18E1E1A34();
  v3 = *(v1 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v25 = *(v2 + 56);
  v26 = *(v2 + 72);
  v27 = *(v2 + 88);
  v8 = *(v2 + 336);
  v9 = *(v2 + 344);
  v10 = *(v2 + 352);
  v22 = *(v2 + 353);
  v23 = *(v2 + 360);
  v24 = *(v2 + 368);
  sub_18E44EB4C();
  sub_18E1C5BFC();
  sub_18E44EB4C();
  v11 = sub_18E1CA270();
  sub_18E291640(v11, v12);
  v13 = sub_18E1CC318();
  sub_18E291640(v13, v14);
  v15 = sub_18E1D45C8();
  sub_18E2913B4(v15, v16);
  CostProfile.hash(into:)();
  Catalog.LLM.Model.PQAVerificationBase.hash(into:)();
  v17 = sub_18E1CF50C();
  sub_18E2917A4(v17, v18);
  v19 = sub_18E21D0F8();
  sub_18E291BEC(v19, v20);
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E2919AC(v0, v23);
  sub_18E1E28A4();

  sub_18E29180C();
}

uint64_t Catalog.LLM.Adapter.UIPreviews.hashValue.getter()
{
  sub_18E44F48C();
  Catalog.LLM.Adapter.UIPreviews.hash(into:)();
  return sub_18E44F4CC();
}

uint64_t sub_18E33D1C8@<X0>(uint64_t *a1@<X8>)
{
  result = Catalog.LLM.Adapter.UIPreviews.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E33D1F8()
{
  sub_18E44F48C();
  Catalog.LLM.Adapter.UIPreviews.hash(into:)();
  return sub_18E44F4CC();
}

void Catalog.LLM.Adapter.UrgencyClassification.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.urgency_classification");
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
  sub_18E1CA740(v25);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct3BBase.init()();
  sub_18E1E201C(&unk_1F011F3E0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1CF930(v26, xmmword_18E49D9C0);
  *(v2 + 352) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.Model.AFMTextInstruct85MBase.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E221EDC("com.apple.fm.language.instruct_85m.base");
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
  sub_18E1E2F48(v25, 200000);
  sub_18E1E38BC();
  Catalog.Tokenizer.AFMTextInstruct85MTokenizer.init()();
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  sub_18E1D4A58(v26, xmmword_18E4B0120);
  sub_18E232D14();
  v28 = sub_18E1C9574(v27);
  *(v28 + 64) = v29 | 0x400;
  *(v28 + 72) = v30;
  v31 = sub_18E1C6924(v28);
  *(v31 + 112) = v32;
  *(v31 + 120) = v33;
  *(v2 + 232) = v31;
  sub_18E224118();
}

void Catalog.LLM.Adapter.SmallMessagesReplyWatch.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1C9790("com.apple.fm.language.instruct_85m.messages_reply");
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
  sub_18E21689C(v25, 40000);
  sub_18E1E38BC();
  Catalog.LLM.Model.AFMTextInstruct85MBase.init()();
  sub_18E1E201C(&unk_1F011F410);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1CF930(v26, xmmword_18E4B0120);
  v29 = sub_18E1C5854(v27, v28 | 0x302E0000u);
  *(v2 + 352) = sub_18E232F14(v29);
  sub_18E224118();
}

uint64_t Catalog.LLM.Adapter.AccessibilityMagnifier.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CC500("com.apple.fm.language.instruct_server_v1.accessibility_magnifier");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F440);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.InstructServerAutograder.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5FC("com.apple.fm.language.instruct_server_v1.autograder");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F4A0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  v15 = sub_18E1D4A58(v14, xmmword_18E49DA90);
  result = sub_18E1C5B9C(v15, 825112114);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.BaseAdapter.init()@<X0>(void *a1@<X8>)
{
  sub_18E1D6378("com.apple.fm.language.instruct_server_v1.base_adapter");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F4D0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerBulletsTransform.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CF6C8("com.apple.fm.language.instruct_server_v1.bullets_transform");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F500);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerConciseTone.init()@<X0>(void *a1@<X8>)
{
  sub_18E1D6378("com.apple.fm.language.instruct_server_v1.concise_tone");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F530);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerDescribeYourEdit.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E122C("com.apple.fm.language.instruct_server_v1.describe_your_edit");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F560);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerFitnessWorkoutVoice.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E14E8("com.apple.fm.language.instruct_server_v1.fitness_workout_voice");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F590);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerFriendlyTone.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E1000("com.apple.fm.language.instruct_server_v1.friendly_tone");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F5C0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.JournalFollowUpPrompts.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD378("com.apple.fm.language.instruct_server_v1.journal_followup_prompts");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F5F0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1D6138(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.LWPlannerV1.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E1000("com.apple.fm.language.instruct_server_v1.lw_planner_v1");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F620);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1D6138(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerMagicRewrite.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E1000("com.apple.fm.language.instruct_server_v1.magic_rewrite");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F650);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerMailReplyLongFormBasic.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CD5B0("com.apple.fm.language.instruct_server_v1.mail_reply_long_form_basic");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F680);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerMailReplyLongFormRewrite.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD5AC("com.apple.fm.language.instruct_server_v1.mail_reply_long_form_rewrite");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F6B0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerMailReplyQA.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E1000("com.apple.fm.language.instruct_server_v1.mail_reply_qa");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F6E0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.MessagesUserRequest.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E14E8("com.apple.fm.language.instruct_server_v1.messages_user_request");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F710);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1CF930(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.MMGuardSafetyGuardrailServer.init()@<X0>(void *a1@<X8>)
{
  sub_18E1C9790("com.apple.fm.language.instruct_server_v1.mm_guard");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F740);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1D6138(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.OpenEndedInteraction.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CDA14("com.apple.fm.language.instruct_server_v1.open_ended_interaction");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F770);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1D6138(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.OpenEndedReflection.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E14E8("com.apple.fm.language.instruct_server_v1.open_ended_reflection");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F7A0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1D6138(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.OpenEndedSchema.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CF6C8("com.apple.fm.language.instruct_server_v1.open_ended_schema");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F7D0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C61FC(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.OpenEndedTone.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E2BC8("com.apple.fm.language.instruct_server_v1.open_ended_tone");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v19);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F800);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1CF930(v14, xmmword_18E4B0120);
  v17 = sub_18E1C5854(v15, v16 | 0x322E0000u);
  result = sub_18E2233E0(v17);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.OpenEndedToneQueryResponse.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3730("com.apple.fm.language.instruct_server_v1.open_ended_tone_query_response");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v19);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F830);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1CF930(v14, xmmword_18E4B0120);
  v17 = sub_18E1C5854(v15, v16 | 0x322E0000u);
  result = sub_18E2233E0(v17);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.OpenEndedToneQueryResponseV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1EA578("com.apple.fm.language.instruct_server_v1.open_ended_tone_query_response_v2");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F860);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1CF930(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x342E0000u);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.ServerPersonalizedSmartReply.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD378("com.apple.fm.language.instruct_server_v1.personalized_smart_reply");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F890);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1D6138(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosCommon.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E1000("com.apple.fm.language.instruct_server_v1.photos_common");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011F8C0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Model.PhotosMemoriesCreationBase.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5FC("com.apple.fm.language.photos_memories_creation.base");
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
  Catalog.Tokenizer.AFMTextInstructEnglish49k.init()();
  sub_18E1E1130();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[29] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCuration.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3730("com.apple.fm.language.instruct_server_v1.photos_memories_asset_curation");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011F8F0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationAssetCurationV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1EA578("com.apple.fm.language.instruct_server_v1.photos_memories_asset_curation_v2");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011F920);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraits.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E2CD0("com.apple.fm.language.instruct_server_v1.photos_memories_global_traits");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011F950);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3E18("com.apple.fm.language.instruct_server_v1.photos_memories_global_traits_v2");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011F980);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3E18("com.apple.fm.language.instruct_server_v1.photos_memories_global_traits_v3");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v19);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011F9B0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF518();
  v16 = sub_18E1CF930(v15, xmmword_18E49D9C0);
  result = sub_18E1C5854(v16, v17 | 0x342E0000u);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
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
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v15);
  sub_18E1E37F4(&unk_1F011F9E0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1E8670();
  v17 = sub_18E1D4A58(v16, xmmword_18E4B0120);
  result = sub_18E1C63E8(v17);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E19A8("com.apple.fm.language.instruct_server_v1.photos_memories_query_understanding_v2");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011FA10);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E19A8("com.apple.fm.language.instruct_server_v1.photos_memories_query_understanding_v3");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011FA40);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationStoryteller.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E67EC("com.apple.fm.language.instruct_server_v1.photos_memories_storyteller");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011FA70);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PhotosMemoriesCreationStorytellerV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3730("com.apple.fm.language.instruct_server_v1.photos_memories_storyteller_v2");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.PhotosMemoriesCreationBase.init()(v14);
  sub_18E1E37F4(&unk_1F011FAA0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D4A58(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.Planner.init()@<X0>(void *a1@<X8>)
{
  sub_18E1FF2E8("com.apple.fm.language.instruct_server_v1.planner");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FAD0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PlannerV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5FC("com.apple.fm.language.instruct_server_v1.planner_v3");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FB30);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C566C(v15);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.PlannerV7.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5FC("com.apple.fm.language.instruct_server_v1.planner_v7");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FB60);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1CB03C(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PlannerV8.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5FC("com.apple.fm.language.instruct_server_v1.planner_v8");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FB90);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  v15 = sub_18E1D4A58(v14, xmmword_18E49DA90);
  result = sub_18E1C8E7C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.PlannerV9.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5FC("com.apple.fm.language.instruct_server_v1.planner_v9");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FBC0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  v15 = sub_18E1D4A58(v14, xmmword_18E49DA90);
  result = sub_18E1C8E7C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerPQAVerification.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA2E4("com.apple.fm.language.instruct_server_v1.pqa_verification");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FBF0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerProfessionalTone.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CF6C8("com.apple.fm.language.instruct_server_v1.professional_tone");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FC20);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerProofreadingReview.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E6C30("com.apple.fm.language.instruct_server_v1.proofreading_review");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FC50);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.RemindersAutoCategorizeList.init()@<X0>(void *a1@<X8>)
{
  sub_18E22187C("com.apple.fm.language.instruct_server_v1.reminders_auto_categorized_list");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FC80);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ResponseGenerationV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CDA14("com.apple.fm.language.instruct_server_v1.response_generation_v2");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FCE0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ResponseGenerationV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CDA14("com.apple.fm.language.instruct_server_v1.response_generation_v3");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FD10);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ResponseGenerationV7.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CDA14("com.apple.fm.language.instruct_server_v1.response_generation_v7");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FD40);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1CF930(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x342E0000u);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ResponseGenerationV8.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CDA14("com.apple.fm.language.instruct_server_v1.response_generation_v8");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FD70);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1CF930(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x342E0000u);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ShortcutsAskAFMAction.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD378("com.apple.fm.language.instruct_server_v1.shortcuts_ask_afm_action");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FDD0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ShortcutsAskAFMActionV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E67EC("com.apple.fm.language.instruct_server_v1.shortcuts_ask_afm_action_v2");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FE00);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerStructuredExtraction.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E14E8("com.apple.fm.language.instruct_server_v1.structured_extraction");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FE30);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1D4A58(v14, xmmword_18E49D9C0);
  result = sub_18E1C5A4C(v15);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.STXMultimodal.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CD790("com.apple.fm.language.instruct_server_v1.stx_multimodal");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FE60);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF1F8();
  result = sub_18E1E2D84(v14, v17);
  a1[44] = result;
  return result;
}

__n128 *Catalog.LLM.Adapter.SuperAutofillMultimodal.init()@<X0>(void *a1@<X8>)
{
  sub_18E2204EC("com.apple.fm.language.instruct_server_v1.super_autofill_multimodal");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FE90);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1D6138(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerTablesTransform.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA2E4("com.apple.fm.language.instruct_server_v1.tables_transform");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FEC0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t Catalog.LLM.Adapter.ServerTakeawaysTransform.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E6C30("com.apple.fm.language.instruct_server_v1.takeaways_transform");
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
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FEF0);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D4A58(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[44] = result;
  return result;
}

uint64_t _s12ModelCatalog0B0O3LLMO7AdapterO012InstructBaseD0V4costAA11CostProfileVvg_0()
{
  v1 = sub_18E1D5F0C();
  v2 = *(v0 + 72);
  return sub_18E1E688C(v3, v1, v4, v6, v7, v8, v9, v10, v11, v1.n128_i8[0], v1.n128_i64[1], v4.n128_i64[0], v4.n128_i64[1], v12);
}

uint64_t sub_18E343174@<X0>(uint64_t (*a1)(_BYTE *, uint64_t *)@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (v2 + 80), sizeof(__dst));
  memcpy(a2, (v2 + 80), 0xF0uLL);
  return a1(__dst, &v6);
}

__n128 *Catalog.LLM.Adapter.FinancialInsights.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E2BC8("com.apple.fm.language.instruct_server_v1.wallet_insights");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E1E38BC();
  Catalog.LLM.Model.InstructServerBase.init()();
  sub_18E1E37F4(&unk_1F011FF50);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1D6138(v14, xmmword_18E49DA90);
  a1[44] = result;
  return result;
}

void sub_18E3432F8()
{
  sub_18E1C575C();
  sub_18E212A78();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v47 = v2[4];
  v48 = v2[3];
  v6 = *(v2 + 7);
  v57 = *(v2 + 5);
  v58 = v6;
  v59 = *(v2 + 72);
  memcpy(__dst, (v1 + 80), sizeof(__dst));
  v41 = *(v1 + 320);
  v38 = *(v1 + 328);
  HIDWORD(v35) = *(v1 + 336);
  HIDWORD(v34) = *(v1 + 337);
  v32 = *(v1 + 344);
  v29 = *(v1 + 352);
  v7 = *v0;
  v8 = v0[1];
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v61[0] = sub_18E1D5F0C();
  v61[1] = v12;
  v62 = *(v0 + 72);
  memcpy(__src, v0 + 10, 0xF0uLL);
  v39 = v0[40];
  v37 = v0[41];
  LODWORD(v35) = *(v0 + 336);
  LODWORD(v34) = *(v0 + 337);
  v13 = v3 == v7 && v4 == v8;
  v30 = v0[43];
  v28 = v0[44];
  if (v13 || (sub_18E44F3CC()) && (sub_18E28BB7C(v5, v10) & 1) != 0 && (sub_18E28BB7C(v48, v9))
  {
    sub_18E28BDB0();
    if (v14)
    {
      v15 = *(v1 + 56);
      v55[0] = *(v1 + 40);
      v55[1] = v15;
      LOBYTE(v55[2]) = *(v1 + 72);
      *v52 = sub_18E1D5F0C();
      v53 = v16;
      v54 = *(v0 + 72);
      static CostProfile.== infix(_:_:)(v55, v52);
      sub_18E237090();
      sub_18E327BB0(v61, v51);
      sub_18E292124(v56);
      sub_18E233290();
      if (v9)
      {
        memcpy(v51, __dst, sizeof(v51));
        memcpy(v50, __src, sizeof(v50));
        v17 = v43;
        v43(__dst, v49);
        v43(__src, v49);
        v18 = v44(v51, v50);
        sub_18E1E2A9C(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v32, v34, v35, v37, v38, v39, v41, v43, v44, v45, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v49[23], v49[24], v49[25], v49[26], v49[27], v49[28], v49[29], v50[0]);
        v46(v52);
        memcpy(v55, v51, sizeof(v55));
        v46(v55);
        if (v17 & 1) != 0 && (sub_18E290008(v42, v40))
        {
          sub_18E290AD4();
          if ((v26 & 1) != 0 && HIDWORD(v36) == v36)
          {
            sub_18E240940();
            if (v13 && sub_18E290BF0(v33, v31))
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

void sub_18E34356C()
{
  sub_18E1CFF04();
  sub_18E220DC0();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  v5 = *(v2 + 336);
  v6 = *(v2 + 337);
  v18 = *(v2 + 344);
  v19 = *(v2 + 352);
  sub_18E44EB4C();
  v7 = sub_18E1C5BFC();
  sub_18E291640(v7, v8);
  v9 = sub_18E1E6754();
  sub_18E291640(v9, v10);
  v11 = sub_18E1C5838();
  sub_18E2913B4(v11, v12);
  CostProfile.hash(into:)();
  v1(v0);
  v13 = sub_18E1CA270();
  sub_18E2917A4(v13, v14);
  v15 = sub_18E1CC318();
  sub_18E291BEC(v15, v16);
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E2919AC(v0, v18);
  sub_18E2079F8();

  sub_18E29180C();
}

void Catalog.LLM.DraftModel.CodeLMLargeV1.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_large_v1.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMLargeV2.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_large_v2.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMLargeV3.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_large_v3.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMLargeV4.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_large_v4.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMLargeV5.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_large_v5.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMSmallV1.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_small_v1.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMSmallV2.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_small_v2.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMSmallV3.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_small_v3.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMSmallV4.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_small_v4.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.DraftModel.CodeLMSmallV5.init()(void *a1@<X8>)
{
  sub_18E1CEA18("com.apple.fm.code.generate_small_v5.base.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1E66BC(v13);
  v14 = MEMORY[0x1E69E7CC0];
  a1[7] = MEMORY[0x1E69E7CC0];
  a1[8] = 1;
  sub_18E1CC428(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

__n128 *Catalog.LLM.DraftModel.CodeLM.init()@<X0>(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_v1.base.draft");
  sub_18E1E15B0();
  a1[2] = v2;
  a1[3] = 0xE90000000000004DLL;
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E1CF7A0();
  sub_18E235320(v14, v15);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1C6434(v16, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

uint64_t sub_18E344554()
{
  sub_18E1D5DF0();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E3445AC()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

__n128 *Catalog.LLM.DraftModel.CodeLMV1ANE3B.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  *a1 = 0xD00000000000002FLL;
  a1[1] = v2;
  sub_18E1E1AA4("mc.CodeLMV1ANE3B");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E1CF7A0();
  sub_18E235320(v14, v15);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1C6434(v16, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

void Catalog.LLM.DraftModel.ADMPromptRewriting.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.fm.language.instruct_300m.adm_prompt_rewriting.draft");
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
  sub_18E1CA740(v25);
  v26 = MEMORY[0x1E69E7CC0];
  *(v2 + 56) = MEMORY[0x1E69E7CC0];
  *(v2 + 64) = 1;
  *(v2 + 72) = 1;
  *(v2 + 80) = v26;
  *(v2 + 88) = v26;
  sub_18E1E8468(v26);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF518();
  v28 = sub_18E1E87E8(v27, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v28, v29 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.AnswerSynthesis.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.answer_synthesis.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.AutonamingMessages.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.fm.language.instruct_3b.autonaming_messages.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.InstructBaseDraftModel.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3128("com.apple.fm.language.instruct_3b.base.draft");
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
  sub_18E1CF7A0();
  *(v2 + 32) = v25;
  *(v2 + 40) = v26;
  *(v2 + 48) = 65792;
  sub_18E1EA008();
  *(v2 + 56) = &unk_1F011FF80;
  *(v2 + 64) = v0;
  sub_18E1CC428(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF518();
  sub_18E1C8B30(v27, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.BulletsTransform.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA2E4("com.apple.fm.language.instruct_3b.bullets_transform.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ConciseTone.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3068("com.apple.fm.language.instruct_3b.concise_tone.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ContextProgram.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_3b.context_program.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.InstructFMApiGeneric.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E1000("com.apple.fm.language.instruct_3b.fm_api_generic.draft");
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
  sub_18E1D451C(v25);
  sub_18E1EA008();
  v2[7] = &unk_1F011FFB0;
  v2[8] = v0;
  sub_18E1CC428(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.InstructFMApiThirdPartyCompileDraft.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.fm.language.instruct_3b.fm_api_third_party_compile.draft");
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
  sub_18E1D451C(v25);
  *(v2 + 52) = 1;
  *(v2 + 56) = &unk_1F011FFE0;
  *(v2 + 64) = 70;
  *(v2 + 72) = 0;
  sub_18E1CE92C(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  *(v26 + 16) = xmmword_18E49D9C0;
  *(v26 + 32) = 1;
  *(v2 + 112) = sub_18E1C5A4C(v26);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.FriendlyTone.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.fm.language.instruct_3b.friendly_tone.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.JournalMomentsClassification.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  sub_18E1E22A0();
  v11 = v10;
  sub_18E1E2CD0("com.apple.fm.language.instruct_3b.journal_moments_classification.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v12 = sub_18E1D0404();
  sub_18E1E3EA0(v12, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
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
  sub_18E1E66BC(v34);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v35 = sub_18E1CF1F8();
  *(v11 + 112) = sub_18E1D0130(v35, a9);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.JournalMomentsReflection.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  sub_18E1E22A0();
  v11 = v10;
  sub_18E2204EC("com.apple.fm.language.instruct_3b.journal_moments_reflection.draft");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v12 = sub_18E1D0404();
  sub_18E1E3EA0(v12, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
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
  sub_18E1E66BC(v34);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v35 = sub_18E1CF1F8();
  *(v11 + 112) = sub_18E1D0130(v35, a9);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.LWOnDevicePlannerV1.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.fm.language.instruct_3b.lw_planner_v1.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.MagicRewrite.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.fm.language.instruct_3b.magic_rewrite.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.MailReply.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.fm.language.instruct_3b.mail_reply.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.MailReplyLongFormBasic.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.fm.language.instruct_3b.mail_reply_long_form_basic.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.MailReplyLongFormRewrite.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E67EC("com.apple.fm.language.instruct_3b.mail_reply_long_form_rewrite.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.MailReplyQA.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.fm.language.instruct_3b.mail_reply_qa.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.MessagesAction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_3b.messages_action.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.MessagesReply.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E1000("com.apple.fm.language.instruct_3b.messages_reply.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PersonalizedSmartReply.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CC500("com.apple.fm.language.instruct_3b.personalized_smart_reply.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
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
  sub_18E1E66BC(v26);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF518();
  sub_18E1C8B30(v27, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1DD5AC("com.apple.fm.language.instruct_3b.photos_memories_global_traits.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5A4();
  sub_18E1E3D2C(v3);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v4 = sub_18E1D0404();
  sub_18E1E3EA0(v4, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
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
  sub_18E1E66BC(v26);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF518();
  sub_18E1C8B30(v27, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD5B0("com.apple.fm.language.instruct_3b.photos_memories_storyteller.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PhotosMemoriesTitle.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF4B4("com.apple.fm.language.instruct_3b.photos_memories_title.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PlannerV4.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.fm.language.instruct_3b.planner_v4.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1CA1C0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PlannerV5.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.fm.language.instruct_3b.planner_v5.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1CA1C0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.PlannerV6.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E224564("com.apple.fm.language.instruct_3b.planner_v6.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1CA1C0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ProfessionalTone.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA2E4("com.apple.fm.language.instruct_3b.professional_tone.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ProofreadingReview.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.fm.language.instruct_3b.proofreading_review.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.RemindersSuggestActionItems.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2CD0("com.apple.fm.language.instruct_3b.reminders_suggest_action_items.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ResponseGenerationV4.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.fm.language.instruct_3b.response_generation_v4.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1CA1C0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ResponseGenerationV5.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.fm.language.instruct_3b.response_generation_v5.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1CA1C0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ResponseGenerationV6.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.fm.language.instruct_3b.response_generation_v6.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1CA1C0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.SafetyGuardrail.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.safety_guardrail.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.SearchQueryUnderstandingOnDevice.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2204EC("com.apple.fm.language.instruct_3b.search_query_understanding.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ShortcutsAskAFMAction3B.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD5B0("com.apple.fm.language.instruct_3b.shortcuts_ask_afm_action_3b.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.ShortcutsAskAFMAction3BV2.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2CD0("com.apple.fm.language.instruct_3b.shortcuts_ask_afm_action_3b_v2.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.SmartAppActions.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA2E4("com.apple.fm.language.instruct_3b.smart_app_actions.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF89C();
  *(v2 + 112) = sub_18E1C56A0(v26, xmmword_18E49DA90);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.StructuredExtraction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF4B4("com.apple.fm.language.instruct_3b.structured_extraction.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.SuggestRecipeItems.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E6C30("com.apple.fm.language.instruct_3b.suggest_recipe_items.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.Summarization.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D6378("com.apple.fm.language.instruct_3b.summarization.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x302E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.TablesTransform.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E2BC8("com.apple.fm.language.instruct_3b.tables_transform.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.TakeawaysTransform.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E122C("com.apple.fm.language.instruct_3b.takeaways_transform.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.TextEventExtraction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF4B4("com.apple.fm.language.instruct_3b.text_event_extraction.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.TextExpert.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_3b.text_expert.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.TextPersonExtraction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E14E8("com.apple.fm.language.instruct_3b.text_person_extraction.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x322E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.TextSummarizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CD790("com.apple.fm.language.instruct_3b.text_summarizer.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  v27 = sub_18E1E87E8(v26, xmmword_18E49D9C0);
  *(v2 + 112) = sub_18E1C5854(v27, v28 | 0x342E0000u);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.Textunderstanding.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CF6C8("com.apple.fm.language.instruct_3b.text_understanding.draft");
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
  sub_18E1E66BC(v25);
  sub_18E1C8CE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.AFMTextInstruct3BThirdParty.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_3b.third_party.draft");
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
  sub_18E1D451C(v25);
  sub_18E1EA008();
  v2[7] = &unk_1F0120010;
  v2[8] = v0;
  sub_18E1CC428(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF518();
  sub_18E1C8B30(v26, xmmword_18E49D9C0);
  sub_18E224118();
}

void Catalog.LLM.DraftModel.UIPreviews.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1CA5FC("com.apple.fm.language.instruct_3b.ui_previews.draft");
  sub_18E1E233C();
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  v3 = sub_18E1D0404();
  sub_18E1E3EA0(v3, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1D42C0();
  *(v2 + 32) = sub_18E36A8EC(v3);
  v4 = sub_18E1D49D0();
  sub_18E1D8010(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  if (qword_1ED6A8958 != -1)
  {
    sub_18E1C7780();
  }

  sub_18E200E88(&qword_1ED6A8960);
  *(v2 + 40) = sub_18E36A8EC(v0);
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  inited = swift_initStackObject();
  sub_18E1D8010(inited, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = sub_18E1D0038();
  sub_18E1CF330(v22, v23);

  sub_18E36A354();
  sub_18E1CF7A0();
  sub_18E235320(v24, v25);
  v26 = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = 1;
  *(v2 + 88) = 0;
  *(v2 + 96) = v26;
  *(v2 + 104) = v26;
  *(v2 + 112) = 256;
  *(v2 + 120) = v26;
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF1F8();
  sub_18E1E370C(v27, v28, v29, v30, v31, v32, v33, v34, v35);
  *(v2 + 128) = v36;
  sub_18E224118();
}

uint64_t Catalog.LLM.DraftModel.ServerBulletsTransform.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CC500("com.apple.fm.language.instruct_server_v1.bullets_transform.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerConciseTone.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E122C("com.apple.fm.language.instruct_server_v1.concise_tone.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.ServerFitnessWorkoutVoice.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E67EC("com.apple.fm.language.instruct_server_v1.fitness_workout_voice.draft");
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
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  return sub_18E1C8B30(v14, xmmword_18E49D9C0);
}

uint64_t Catalog.LLM.DraftModel.ServerFriendlyTone.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E6C30("com.apple.fm.language.instruct_server_v1.friendly_tone.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.JournalFollowUpPrompts.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3730("com.apple.fm.language.instruct_server_v1.journal_followup_prompts.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1C56A0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.LWPlannerV1.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E6C30("com.apple.fm.language.instruct_server_v1.lw_planner_v1.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1C56A0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerMagicRewrite.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E6C30("com.apple.fm.language.instruct_server_v1.magic_rewrite.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerMailReplyLongFormBasic.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3E18("com.apple.fm.language.instruct_server_v1.mail_reply_long_form_basic.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerMailReplyLongFormRewrite.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D5F68(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerMailReplyQA.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E6C30("com.apple.fm.language.instruct_server_v1.mail_reply_qa.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.MessagesUserRequest.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E67EC("com.apple.fm.language.instruct_server_v1.messages_user_request.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x322E0000u);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.OpenEndedInteraction.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD5AC("com.apple.fm.language.instruct_server_v1.open_ended_interaction.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1C56A0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.OpenEndedReflection.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E67EC("com.apple.fm.language.instruct_server_v1.open_ended_reflection.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1C56A0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.OpenEndedSchema.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CC500("com.apple.fm.language.instruct_server_v1.open_ended_schema.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  result = sub_18E1C6050(v14, xmmword_18E49D9C0);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.OpenEndedTone.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E14E8("com.apple.fm.language.instruct_server_v1.open_ended_tone.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v19);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1E87E8(v14, xmmword_18E4B0120);
  v17 = sub_18E1C5854(v15, v16 | 0x322E0000u);
  result = sub_18E2233E0(v17);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.ServerPersonalizedSmartReply.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3730("com.apple.fm.language.instruct_server_v1.personalized_smart_reply.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1C56A0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.PhotosCommon.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E6C30("com.apple.fm.language.instruct_server_v1.photos_common.draft");
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
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  return sub_18E1C8B30(v14, xmmword_18E49D9C0);
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCuration.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3640("com.apple.fm.language.instruct_server_v1.photos_memories_asset_curation.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationAssetCurationV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D5F68(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D5F68(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E19A8("com.apple.fm.language.instruct_server_v1.photos_memories_global_traits_v2.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E19A8("com.apple.fm.language.instruct_server_v1.photos_memories_global_traits_v3.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x342E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D5F68(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D5F68(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v4;
  a1[3] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1E8670();
  v16 = sub_18E1D5F68(v15, xmmword_18E4B0120);
  result = sub_18E1C63E8(v16);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationStoryteller.init()@<X0>(void *a1@<X8>)
{
  sub_18E1EA578("com.apple.fm.language.instruct_server_v1.photos_memories_storyteller.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E3640("com.apple.fm.language.instruct_server_v1.photos_memories_storyteller_v2.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.Planner.init()@<X0>(void *a1@<X8>)
{
  sub_18E1E1000("com.apple.fm.language.instruct_server_v1.planner.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.PlannerV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA2E4("com.apple.fm.language.instruct_server_v1.planner_v3.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  result = sub_18E1C5108(v14, xmmword_18E49D9C0);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.PlannerV7.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA2E4("com.apple.fm.language.instruct_server_v1.planner_v7.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1C6434(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.PlannerV8.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA2E4("com.apple.fm.language.instruct_server_v1.planner_v8.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1CA1C0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.PlannerV9.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA2E4("com.apple.fm.language.instruct_server_v1.planner_v9.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1CA1C0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerProfessionalTone.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CC500("com.apple.fm.language.instruct_server_v1.professional_tone.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerProofreadingReview.init()@<X0>(void *a1@<X8>)
{
  sub_18E2204EC("com.apple.fm.language.instruct_server_v1.proofreading_review.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.RemindersAutoCategorizeList.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1E3D2C(v2);
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E223F08(v14);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF518();
  return sub_18E1C8B30(v15, xmmword_18E49D9C0);
}

uint64_t Catalog.LLM.DraftModel.ResponseGenerationV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD5AC("com.apple.fm.language.instruct_server_v1.response_generation_v2.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ResponseGenerationV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD5AC("com.apple.fm.language.instruct_server_v1.response_generation_v3.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ResponseGenerationV7.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD5AC("com.apple.fm.language.instruct_server_v1.response_generation_v7.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x342E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ResponseGenerationV8.init()@<X0>(void *a1@<X8>)
{
  sub_18E1DD5AC("com.apple.fm.language.instruct_server_v1.response_generation_v8.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E1E87E8(v14, xmmword_18E49D9C0);
  result = sub_18E1C5854(v15, v16 | 0x342E0000u);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ShortcutsAskAFMAction.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E3730("com.apple.fm.language.instruct_server_v1.shortcuts_ask_afm_action.draft");
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
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E200620(v14, xmmword_18E49D9C0);
  return sub_18E1C87AC(v15, v16 | 0x312E0000u);
}

uint64_t Catalog.LLM.DraftModel.ShortcutsAskAFMActionV2.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1EA578("com.apple.fm.language.instruct_server_v1.shortcuts_ask_afm_action_v2.draft");
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
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v18);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  v15 = sub_18E200620(v14, xmmword_18E49D9C0);
  return sub_18E1C87AC(v15, v16 | 0x312E0000u);
}

__n128 *Catalog.LLM.DraftModel.ServerStructuredExtraction.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1E67EC("com.apple.fm.language.instruct_server_v1.structured_extraction.draft");
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
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF518();
  return sub_18E1C8B30(v14, xmmword_18E49D9C0);
}

__n128 *Catalog.LLM.DraftModel.STXMultimodal.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CF4B4("com.apple.fm.language.instruct_server_v1.stx_multimodal.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF1F8();
  result = sub_18E1D0130(v14, v17);
  a1[14] = result;
  return result;
}

__n128 *Catalog.LLM.DraftModel.SuperAutofillMultimodal.init()@<X0>(void *a1@<X8>)
{
  sub_18E22187C("com.apple.fm.language.instruct_server_v1.super_autofill_multimodal.draft");
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
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v16);

  sub_18E36A354();
  sub_18E223F08(v13);
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1CF89C();
  result = sub_18E1C56A0(v14, xmmword_18E49DA90);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerTablesTransform.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CDA14("com.apple.fm.language.instruct_server_v1.tables_transform.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

uint64_t Catalog.LLM.DraftModel.ServerTakeawaysTransform.init()@<X0>(void *a1@<X8>)
{
  sub_18E2204EC("com.apple.fm.language.instruct_server_v1.takeaways_transform.draft");
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
  sub_18E223D34(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v14 = sub_18E1E8670();
  v15 = sub_18E1D5F68(v14, xmmword_18E4B0120);
  result = sub_18E1C63E8(v15);
  a1[14] = result;
  return result;
}

__n128 *Catalog.Tokenizer.CodeLMTokenizerExperimental.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E221A30(v2);
  sub_18E1E1AA4("mc.CodeLMTokenizerExperimental");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E224E4C(v14);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF89C();
  result = sub_18E1C6434(v15, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

__n128 *Catalog.LLM.Model.CodeLMExperimental.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  *a1 = 0xD000000000000023;
  a1[1] = v2;
  sub_18E1E1AA4("mc.CodeLMExperimental");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E1CFCA8(v14);
  sub_18E1E1744();
  Catalog.Tokenizer.CodeLMTokenizerExperimental.init()(v15);
  sub_18E223A60();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1CB03C(v16, xmmword_18E49DA90);
  a1[33] = result;
  return result;
}

void Catalog.Tokenizer.CodeLMLargeV1Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_large_v1.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMLargeV1.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_large_v1.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMLargeV1Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMLargeV2Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_large_v2.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMLargeV2.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_large_v2.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMLargeV2Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void sub_18E34E974()
{
  sub_18E1CFF04();
  sub_18E220DC0();
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  v5 = *(v2 + 216);
  v6 = *(v2 + 217);
  v18 = *(v2 + 224);
  v19 = *(v2 + 232);
  sub_18E44EB4C();
  v7 = sub_18E1C5BFC();
  sub_18E291640(v7, v8);
  v9 = sub_18E1E6754();
  sub_18E291640(v9, v10);
  v11 = sub_18E1C5838();
  sub_18E2913B4(v11, v12);
  CostProfile.hash(into:)();
  v1(v0);
  v13 = sub_18E1CA270();
  sub_18E2917A4(v13, v14);
  v15 = sub_18E1CC318();
  sub_18E291BEC(v15, v16);
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E2919AC(v0, v18);
  sub_18E2079F8();

  sub_18E29180C();
}

void Catalog.Tokenizer.CodeLMLargeV3Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_large_v3.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMLargeV3.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_large_v3.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMLargeV3Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMLargeV4Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_large_v4.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMLargeV4.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_large_v4.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMLargeV4Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMLargeV5Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_large_v5.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMLargeV5.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_large_v5.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMLargeV5Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMSafetyGuardrailTokenizer.init()(void *a1@<X8>)
{
  sub_18E1D6378("com.apple.fm.code.generate_safety_guardrail.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMSafetyGuardrail.init()(void *a1@<X8>)
{
  sub_18E1FF2E8("com.apple.fm.code.generate_safety_guardrail.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1CFAE8(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMSafetyGuardrailTokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMSmallV1Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_small_v1.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMSmallV1.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_small_v1.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMSmallV1Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMSmallV2Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_small_v2.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMSmallV2.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_small_v2.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMSmallV2Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMSmallV3Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_small_v3.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMSmallV3.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_small_v3.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMSmallV3Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1E370C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMSmallV4Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_small_v4.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMSmallV4.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_small_v4.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMSmallV4Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

void Catalog.Tokenizer.CodeLMSmallV5Tokenizer.init()(void *a1@<X8>)
{
  sub_18E1CAE98("com.apple.fm.code.generate_small_v5.tokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E25E1CC(v13);
  sub_18E21D144(v14);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[14] = v24;
}

void Catalog.LLM.Model.CodeLMSmallV5.init()(void *a1@<X8>)
{
  sub_18E1D038C("com.apple.fm.code.generate_small_v5.base");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v3 = sub_18E36A8EC(inited);
  v4 = MEMORY[0x1E69E7CD0];
  a1[2] = v3;
  a1[3] = v4;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v5 = swift_initStackObject();
  sub_18E1C5420(v5, v6, v7, v8, v9, v10, v11, v12, v25);

  sub_18E36A354();
  sub_18E1D4B50(v13);
  sub_18E1D491C();
  Catalog.Tokenizer.CodeLMSmallV5Tokenizer.init()(v14);
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF1F8();
  sub_18E1CAD88(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  a1[29] = v24;
}

__n128 *Catalog.Tokenizer.CodeLMTokenizer.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  *a1 = 0xD000000000000027;
  a1[1] = v2;
  sub_18E1E1AA4("mc.CodeLMTokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E224E4C(v14);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF89C();
  result = sub_18E1C6434(v15, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

__n128 *Catalog.LLM.Model.CodeLM.init()@<X0>(void *a1@<X8>)
{
  sub_18E22197C("com.apple.fm.code.generate_v1.base");
  sub_18E1E15B0();
  a1[2] = v2;
  a1[3] = 0xE90000000000004DLL;
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E1CFCA8(v14);
  sub_18E1E1744();
  Catalog.Tokenizer.CodeLMTokenizer.init()(v15);
  sub_18E223A60();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1CB03C(v16, xmmword_18E49DA90);
  a1[33] = result;
  return result;
}

void sub_18E35071C()
{
  sub_18E1C575C();
  v37 = v0;
  v38 = v1;
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[3];
  v44 = v5[4];
  v45 = v5[2];
  v42 = v5[5];
  v40 = v5[6];
  v10 = *(v5 + 9);
  v55[0] = *(v5 + 7);
  v55[1] = v10;
  v56 = *(v5 + 88);
  memcpy(__dst, v5 + 12, sizeof(__dst));
  v35 = v6[29];
  v33 = v6[30];
  v31 = *(v6 + 248);
  v29 = *(v6 + 249);
  v27 = v6[32];
  v25 = v6[33];
  v12 = *v4;
  v11 = v4[1];
  v13 = v4[2];
  v14 = v4[3];
  v43 = v4[4];
  v41 = v4[5];
  v39 = v4[6];
  v15 = *(v4 + 9);
  v58[0] = *(v4 + 7);
  v58[1] = v15;
  v59 = *(v4 + 88);
  memcpy(v60, v4 + 12, 0x88uLL);
  v34 = v4[29];
  v32 = v4[30];
  v30 = *(v4 + 248);
  v28 = *(v4 + 249);
  v16 = v7 == v12 && v8 == v11;
  v26 = v4[32];
  v24 = v4[33];
  if (v16 || (sub_18E44F3CC() & 1) != 0)
  {
    v17 = v45 == v13 && v9 == v14;
    if (v17 || (sub_18E44F3CC()) && (sub_18E28BB7C(v44, v43) & 1) != 0 && (sub_18E28BB7C(v42, v41))
    {
      sub_18E28BDB0();
      if (v18)
      {
        v50[0] = sub_18E240E7C();
        v50[1] = v19;
        LOBYTE(v50[2]) = *(v6 + 88);
        v20 = *(v4 + 9);
        v49[0] = *(v4 + 7);
        v49[1] = v20;
        LOBYTE(v49[2]) = *(v4 + 88);
        v21 = static CostProfile.== infix(_:_:)(v50, v49);
        v51[0] = v49[0];
        v51[1] = v49[1];
        v52 = v49[2];
        sub_18E327BB0(v55, v48);
        sub_18E327BB0(v58, v48);
        sub_18E292124(v51);
        v53[0] = v50[0];
        v53[1] = v50[1];
        v54 = v50[2];
        sub_18E292124(v53);
        if (v21)
        {
          memcpy(v48, __dst, sizeof(v48));
          memcpy(__src, v60, sizeof(__src));
          v36(__dst, v46);
          v36(v60, v46);
          v22 = v37(v48, __src);
          memcpy(v49, __src, 0x88uLL);
          v38(v49);
          memcpy(v50, v48, 0x88uLL);
          v38(v50);
          if (v22 & 1) != 0 && (sub_18E290008(v35, v34))
          {
            sub_18E290AD4();
            if ((v23 & 1) != 0 && v31 == v30)
            {
              sub_18E240940();
              if (v16 && sub_18E290BF0(v27, v26))
              {
                sub_18E290C28();
              }
            }
          }
        }
      }
    }
  }

  sub_18E1C5544();
}

void sub_18E350A2C()
{
  sub_18E1E6AB4();
  v22 = v2;
  v3 = v1;
  sub_18E1E1A34();
  v4 = *(v1 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v3 + 40);
  v7 = *(v3 + 48);
  v25 = *(v3 + 56);
  v26 = *(v3 + 72);
  v27 = *(v3 + 88);
  v9 = *(v3 + 232);
  v10 = *(v3 + 240);
  v11 = *(v3 + 248);
  v21 = *(v3 + 249);
  v23 = *(v3 + 256);
  v24 = *(v3 + 264);
  sub_18E44EB4C();
  sub_18E1C5BFC();
  sub_18E44EB4C();
  v12 = sub_18E1CC318();
  sub_18E291640(v12, v13);
  v14 = sub_18E1D45C8();
  sub_18E291640(v14, v15);
  v16 = sub_18E1CF50C();
  sub_18E2913B4(v16, v17);
  CostProfile.hash(into:)();
  v22(v0);
  v18 = sub_18E21D0F8();
  sub_18E2917A4(v18, v19);
  sub_18E291BEC(v0, v10);
  sub_18E44F4AC();
  sub_18E44F4AC();
  sub_18E2919AC(v0, v23);
  sub_18E1E28A4();

  sub_18E29180C();
}

uint64_t Catalog.LLM.Model.CodeLMV1ANE3B.explicitRequestUsage.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_18E1C5BFC();
}

uint64_t Catalog.LLM.Model.CodeLMV1ANE3B.executionContexts.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

__n128 *Catalog.Tokenizer.CodeLMV1ANE3BTokenizer.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  *a1 = 0xD00000000000002ELL;
  a1[1] = v2;
  sub_18E1E1AA4("mc.CodeLMV1ANE3BTokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E224E4C(v14);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF89C();
  result = sub_18E1C6434(v15, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

__n128 *Catalog.LLM.Model.CodeLMV1ANE3B.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  *a1 = 0xD000000000000029;
  a1[1] = v2;
  sub_18E1E1AA4("mc.CodeLMV1ANE3B");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E1CFCA8(v14);
  sub_18E1E1744();
  Catalog.Tokenizer.CodeLMV1ANE3BTokenizer.init()(v15);
  sub_18E223A60();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1CB03C(v16, xmmword_18E49DA90);
  a1[33] = result;
  return result;
}

__n128 *Catalog.Tokenizer.CodeLMTokenizerV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1CFE4C(v2);
  sub_18E1E1AA4("mc.CodeLMTokenizerV2");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E224E4C(v14);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF89C();
  result = sub_18E1C6434(v15, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

__n128 *Catalog.LLM.Model.CodeLMV2.init()@<X0>(void *a1@<X8>)
{
  sub_18E22197C("com.apple.fm.code.generate_v2.base");
  sub_18E1E15B0();
  a1[2] = v2;
  a1[3] = 0xEB0000000032564DLL;
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E1CFCA8(v14);
  sub_18E1E1744();
  Catalog.Tokenizer.CodeLMTokenizerV2.init()(v15);
  sub_18E223A60();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1CB03C(v16, xmmword_18E49DA90);
  a1[33] = result;
  return result;
}

__n128 *Catalog.Tokenizer.CodeLMTokenizerV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1CFE4C(v2);
  sub_18E1E1AA4("mc.CodeLMTokenizerV3");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E224E4C(v14);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF89C();
  result = sub_18E1C6434(v15, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

__n128 *Catalog.LLM.Model.CodeLMV3.init()@<X0>(void *a1@<X8>)
{
  sub_18E22197C("com.apple.fm.code.generate_v3.base");
  sub_18E1E15B0();
  a1[2] = v2;
  a1[3] = 0xEB0000000033564DLL;
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E1CFCA8(v14);
  sub_18E1E1744();
  Catalog.Tokenizer.CodeLMTokenizerV3.init()(v15);
  sub_18E223A60();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1CB03C(v16, xmmword_18E49DA90);
  a1[33] = result;
  return result;
}

__n128 *Catalog.Tokenizer.CodeLMTokenizerV4.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  sub_18E1CFE4C(v2);
  sub_18E1E1AA4("mc.CodeLMTokenizerV4");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E224E4C(v14);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF89C();
  result = sub_18E1C6434(v15, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

__n128 *Catalog.LLM.Model.CodeLMV4.init()@<X0>(void *a1@<X8>)
{
  sub_18E22197C("com.apple.fm.code.generate_v4.base");
  sub_18E1E15B0();
  a1[2] = v2;
  a1[3] = 0xEB0000000034564DLL;
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  sub_18E1CFCA8(v14);
  sub_18E1E1744();
  Catalog.Tokenizer.CodeLMTokenizerV4.init()(v15);
  sub_18E223A60();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1CB03C(v16, xmmword_18E49DA90);
  a1[33] = result;
  return result;
}

void Catalog.Tokenizer.DistilledMessagesActionTokenizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1FF2E8("com.apple.fm.distilled.messages_action.tokenizer");
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
  v27 = sub_18E1E87E8(v26, xmmword_18E4B0120);
  v29 = sub_18E1C5854(v27, v28 | 0x302E0000u);
  *(v2 + 112) = sub_18E232F14(v29);
  sub_18E224118();
}

void Catalog.LLM.Model.DistilledMessagesAction.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E2287B8("com.apple.fm.distilled.messages_action.base");
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
  Catalog.Tokenizer.DistilledMessagesActionTokenizer.init()();
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1E8670();
  v27 = sub_18E1CF930(v26, xmmword_18E4B0120);
  v29 = sub_18E1C5854(v27, v28 | 0x302E0000u);
  *(v2 + 232) = sub_18E232F14(v29);
  sub_18E224118();
}

void Catalog.Tokenizer.DistilledMessagesReplyTokenizer.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1D7E90("com.apple.fm.distilled.messages_reply.tokenizer");
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
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v27 = sub_18E1CF1F8();
  sub_18E1E32B8(v27, v28, v29, v30, v31, v32, v33, v34, v35);
  *(v36 + 32) = 3;
  sub_18E232D14();
  *(v37 + 40) = v38;
  *(v37 + 48) = 0xE400000000000000;
  *(v2 + 112) = v37;
  sub_18E224118();
}

void Catalog.LLM.Model.DistilledMessagesReply.init()()
{
  sub_18E1E22A0();
  v2 = v1;
  sub_18E1E3B30("com.apple.fm.distilled.messages_reply.base");
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
  sub_18E21689C(v25, 240000);
  sub_18E1D491C();
  Catalog.Tokenizer.DistilledMessagesReplyTokenizer.init()();
  sub_18E1CEAE4();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v26 = sub_18E1CF1F8();
  sub_18E1E32B8(v26, v27, v28, v29, v30, v31, v32, v33, v34);
  *(v35 + 32) = 3;
  sub_18E232D14();
  *(v36 + 40) = v37;
  *(v36 + 48) = 0xE400000000000000;
  *(v2 + 232) = v36;
  sub_18E224118();
}

uint64_t _s12ModelCatalog0B0O17ImageMagicCleanUpO015GenerativeEditsdeF0V4costAA11CostProfileVvg_0()
{
  v1 = sub_18E240E7C();
  v2 = *(v0 + 88);
  return sub_18E1E688C(v3, v1, v4, v6, v7, v8, v9, v10, v11, v1.n128_i8[0], v1.n128_i64[1], v4.n128_i64[0], v4.n128_i64[1], v12);
}

__n128 *Catalog.Tokenizer.CodeSafetyGuardrailTokenizer.init()@<X0>(void *a1@<X8>)
{
  sub_18E1CA5A4();
  *a1 = 0xD000000000000035;
  a1[1] = v2;
  sub_18E1E1AA4("mc.CodeSafetyGuardrailTokenizer");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  a1[4] = v4;
  a1[5] = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v17);

  sub_18E36A354();
  sub_18E224E4C(v14);
  sub_18E220AE0(MEMORY[0x1E69E7CC0]);
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v15 = sub_18E1CF89C();
  result = sub_18E1C6434(v15, xmmword_18E49DA90);
  a1[16] = result;
  return result;
}

uint64_t sub_18E352100@<X0>(uint64_t (*a1)(_BYTE *, uint64_t *)@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (v2 + 96), sizeof(__dst));
  memcpy(a2, (v2 + 96), 0x88uLL);
  return a1(__dst, &v6);
}

__n128 *Catalog.LLM.Model.CodeSafetyGuardrail.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18E1CA5A4();
  *a1 = 0xD000000000000030;
  *(a1 + 8) = v2;
  sub_18E1E1AA4("mc.CodeSafetyGuardrail");
  sub_18E2706EC(&qword_1EABE0E28, &unk_18E49D1D0);
  inited = swift_initStackObject();
  sub_18E1E3EA0(inited, xmmword_18E49D9B0);
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40();
  }

  sub_18E1CBE48();

  v4 = sub_18E36A8EC(inited);
  v5 = MEMORY[0x1E69E7CD0];
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  sub_18E2706EC(&qword_1EABE0DF0, &qword_18E4B7C20);
  v6 = swift_initStackObject();
  sub_18E1C5420(v6, v7, v8, v9, v10, v11, v12, v13, v18);

  sub_18E36A354();
  *(a1 + 48) = v14;
  *(a1 + 56) = 240000;
  *(a1 + 64) = 256;
  *(a1 + 68) = 0;
  sub_18E1E1744();
  Catalog.Tokenizer.CodeSafetyGuardrailTokenizer.init()(v15);
  sub_18E223A60();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v16 = sub_18E1CF89C();
  result = sub_18E1CB03C(v16, xmmword_18E49DA90);
  *(a1 + 264) = result;
  return result;
}