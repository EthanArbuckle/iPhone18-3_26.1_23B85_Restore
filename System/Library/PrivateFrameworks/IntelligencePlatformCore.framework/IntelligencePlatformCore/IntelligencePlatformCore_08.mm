uint64_t sub_1C449F920(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  LODWORD(v82) = a2;
  v74 = sub_1C4F00908();
  v73 = *(v74 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C4F008B8();
  v77 = *(v78 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C4F008F8();
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v85 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhaseStores();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Pipeline.StatusStore();
  v17 = *(v16 - 8);
  v81 = v16 - 8;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1C4EFD548();
  v21 = *(v79 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Source();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = (&v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a5 + 32))(&v87, a4, a5);
  v89 = StageName.description.getter();
  v90 = v29;
  MEMORY[0x1C6940010](95, 0xE100000000000000);
  (*(a5 + 24))(a4, a5);
  v30 = *v28;
  v31 = v28[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C447EBE4(v28, type metadata accessor for Source);
  MEMORY[0x1C6940010](v30, v31);

  MEMORY[0x1C6940010](95, 0xE100000000000000);
  (*(a5 + 16))(a4, a5);
  v32 = sub_1C4EFD3D8();
  v34 = v33;
  (*(v21 + 8))(v24, v79);
  MEMORY[0x1C6940010](v32, v34);

  v35 = v89;
  v36 = v90;
  v37 = v80;
  (*(a5 + 40))(a4, a5);
  sub_1C44921D4();
  sub_1C447EBE4(v37, type metadata accessor for PhaseStores);
  v20[*(v81 + 28)] = v82;
  v38 = Pipeline.StatusStore.currentSessionId()();
  object = v38.value._object;
  sub_1C447EBE4(v20, type metadata accessor for Pipeline.StatusStore);
  if (v38.value._object)
  {
    countAndFlagsBits = v38.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (!v38.value._object)
  {
    object = 0xE000000000000000;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  *(v41 + 24) = v36;
  v42 = swift_allocObject();
  *(v42 + 16) = countAndFlagsBits;
  *(v42 + 24) = object;
  v43 = swift_allocObject();
  *(v43 + 16) = 34;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1C44A05A4;
  *(v45 + 24) = v41;
  v46 = swift_allocObject();
  *(v46 + 16) = 34;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1C44A05D8;
  *(v48 + 24) = v42;
  v49 = swift_allocObject();
  *(v49 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F23100;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v43;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v44;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v45;
  v52 = v83;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v46;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v47;
  v53 = v85;
  *(inited + 112) = sub_1C4454C38;
  *(inited + 120) = v48;
  *(inited + 128) = sub_1C44549F4;
  *(inited + 136) = v49;
  *(inited + 144) = sub_1C44549F4;
  *(inited + 152) = v50;
  *(inited + 160) = sub_1C4454CCC;
  *(inited + 168) = 0;
  sub_1C4EFD5C8();
  v54 = sub_1C4EFD5F8();
  v56 = v55;
  sub_1C4EFD608();
  v57 = sub_1C4F008D8();
  sub_1C4F00928();
  v58 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  LODWORD(v84) = v58;
  if ((v56 & 1) == 0)
  {
    v60 = v74;
    v61 = v73;
    v62 = v72;
    if (!v54)
    {
      __break(1u);
LABEL_10:

      (*(v77 + 8))(v52, v78);
      return (*(v75 + 8))(v53, v76);
    }

    goto LABEL_15;
  }

  v60 = v74;
  v61 = v73;
  v62 = v72;
  if (HIDWORD(v54))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v54 & 0xFFFFF800) == 0xD800)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v54 >> 16 > 0x10)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v54 = &v88;
LABEL_15:

  sub_1C4F00958();

  v63 = v52;
  if ((*(v61 + 88))(v62, v60) == *MEMORY[0x1E69E93E8])
  {
    v64 = 0;
    v65 = 0;
    v82 = "[Error] Interval already ended";
  }

  else
  {
    (*(v61 + 8))(v62, v60);
    v82 = "stage=%{signpost.telemetry:string1,public}s sessionId=%{signpost.telemetry:string2,public}s %s";
    v65 = 2;
    v64 = 3;
  }

  v66 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v68 = 0;
  v87 = 0;
  v86 = v67;
  *v66 = v65;
  v66[1] = v64;
  v89 = (v66 + 2);
  while (v68 != 144)
  {
    v70 = *(inited + v68 + 32);
    v69 = *(inited + v68 + 40);

    v70(&v89, &v87, &v86);

    v68 += 16;
  }

  v71 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v57, v84, v71, v54, v82, v66, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1C6942830](v67, -1, -1);
  MEMORY[0x1C6942830](v66, -1, -1);

  (*(v77 + 8))(v63, v78);
  return (*(v75 + 8))(v85, v76);
}

uint64_t sub_1C44A037C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C44A03C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t StageName.description.getter()
{
  v1 = 0xE800000000000000;
  v2 = *v0 - 6;
  result = sub_1C4432A10();
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = sub_1C44124F8();
      break;
    case 2:
      result = sub_1C44137B0();
      break;
    case 3:
      result = sub_1C43FDE60();
      break;
    case 4:
      result = sub_1C440E7B4();
      break;
    default:
      v5 = 0x676E696B636F6C62;
      switch(v4)
      {
        case 1:
          v1 = 0xEE006E6F69746172;
          v5 = sub_1C43FF604();
          break;
        case 2:
          v6 = 0x69686374616DLL;
          goto LABEL_11;
        case 3:
          v6 = 0x697075646564;
LABEL_11:
          v5 = v6 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 4:
          v1 = 0xEA00000000006E6FLL;
          v5 = sub_1C4409050();
          break;
        case 5:
          v1 = 0xE700000000000000;
          v5 = sub_1C4411228();
          break;
        default:
          break;
      }

      MEMORY[0x1C6940010](v5, v1);

      result = 0x2D676E696B6E696CLL;
      break;
  }

  return result;
}

uint64_t sub_1C44A05A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C44A05AC();
}

uint64_t sub_1C44A05AC()
{
  sub_1C4404078();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C4402120();
}

char *sub_1C44A05DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0BD2E8, &unk_1C4F2DAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1C44A06D0()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 360);
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  *(v5 + 368) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C44A07D4()
{
  v1 = *(v0 + 352);
  sub_1C4407B64();
  sub_1C447EBE4(v2, v3);
  sub_1C442ED08();

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C44A0864()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C44A0960()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_1C440962C((v0 + 56));
  switch(*(v3 + v2))
  {
    case 2:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      goto LABEL_4;
    default:
LABEL_4:
      v4 = sub_1C4F02938();

      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      v5 = *(v0 + 128) + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_stores;
      v6 = *(v5 + *(type metadata accessor for PhaseStores() + 24));
      if (!sub_1C4876DF8())
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C4419274();
          swift_once();
        }

        v24 = sub_1C4F00978();
        sub_1C442B738(v24, qword_1EDE2DE10);
        v25 = sub_1C4F00968();
        v26 = sub_1C4F01CD8();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1C43F8000, v25, v26, "Delta source Ingestion resulted in zero entity triples, skipping", v27, 2u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        goto LABEL_34;
      }

LABEL_6:
      v7 = *(v0 + 160);
      v8 = *(v0 + 128);
      v9 = sub_1C442BE7C();
      sub_1C4491370(v9, type metadata accessor for Linker, type metadata accessor for Linker, sub_1C44A1310);
      if (!v7)
      {
        v20 = sub_1C440BECC(*(v0 + 144));
        *(v0 + 168) = v20;
        *v20 = v0;
        sub_1C4402478(v20);
        sub_1C44507A0();

        __asm { BR              X1 }
      }

      *(v0 + 120) = v7;
      v10 = v7;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if (!sub_1C442F34C())
      {
        v23 = *(v0 + 136);

        sub_1C43FBDA0();
        goto LABEL_35;
      }

      if (!*(v0 + 200))
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C4419274();
          swift_once();
        }

        v28 = sub_1C441BC3C();
        sub_1C43FF4EC(v28, qword_1EDE2DE10);
        v12 = sub_1C4F00968();
        sub_1C4F01CD8();
        sub_1C44253BC();
        if (sub_1C443FF34())
        {
          sub_1C440FAA4();
          sub_1C440E550();
          sub_1C4415BD0();
          *v8 = 136315138;
          v29 = sub_1C4AD00FC();
          sub_1C4460374(v29, v30, v31, v32);
          sub_1C44160EC();
          *(v8 + 4) = v1;
          sub_1C4404638(&dword_1C43F8000, v33, v34, "%s caught unrecoverable error, phase was skipped");
          sub_1C440AEF4();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        goto LABEL_33;
      }

      if (*(v0 + 200) == 1)
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C4419274();
          swift_once();
        }

        v11 = sub_1C441BC3C();
        sub_1C43FF4EC(v11, qword_1EDE2DE10);
        v12 = sub_1C4F00968();
        sub_1C4F01CF8();
        sub_1C44253BC();
        if (!sub_1C443FF34())
        {
          goto LABEL_33;
        }

        sub_1C440FAA4();
        sub_1C440E550();
        sub_1C4415BD0();
        *v8 = 136315138;
        v13 = sub_1C4AD00FC();
        sub_1C4460374(v13, v14, v15, v16);
        sub_1C44160EC();
        *(v8 + 4) = v1;
        v19 = "%s phase had no data to process";
      }

      else
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C4419274();
          swift_once();
        }

        v35 = sub_1C441BC3C();
        sub_1C43FF4EC(v35, qword_1EDE2DE10);
        v12 = sub_1C4F00968();
        sub_1C4F01CF8();
        sub_1C44253BC();
        if (!sub_1C443FF34())
        {
          goto LABEL_33;
        }

        sub_1C440FAA4();
        sub_1C440E550();
        sub_1C4415BD0();
        *v8 = 136315138;
        v36 = sub_1C4AD00FC();
        sub_1C4460374(v36, v37, v38, v39);
        sub_1C44160EC();
        *(v8 + 4) = v1;
        v19 = "%s source is disabled due to privacy setting";
      }

      sub_1C4404638(&dword_1C43F8000, v17, v18, v19);
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
LABEL_33:

      v40 = *(v0 + 128);
      sub_1C4ACF7B8();

LABEL_34:
      v41 = *(v0 + 136);

      sub_1C43FC1B0();
LABEL_35:
      sub_1C44507A0();

      __asm { BRAA            X1, X16 }

      return;
  }
}

uint64_t sub_1C44A0E44()
{
  sub_1C43FBCD4();
  *(v1 + 16) = v0;
  *(v1 + 192) = v2;
  v3 = type metadata accessor for Linker();
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  *(v1 + 24) = sub_1C43FE604();
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = swift_task_alloc();
  v6 = sub_1C4F008B8();
  *(v1 + 48) = v6;
  sub_1C43FCF7C(v6);
  *(v1 + 56) = v7;
  v9 = *(v8 + 64);
  *(v1 + 64) = sub_1C43FE604();
  *(v1 + 72) = swift_task_alloc();
  v10 = sub_1C4F008F8();
  *(v1 + 80) = v10;
  sub_1C43FCF7C(v10);
  *(v1 + 88) = v11;
  v13 = *(v12 + 64);
  *(v1 + 96) = sub_1C43FE604();
  *(v1 + 104) = swift_task_alloc();
  v14 = sub_1C4F00978();
  *(v1 + 112) = v14;
  sub_1C43FCF7C(v14);
  *(v1 + 120) = v15;
  v17 = *(v16 + 64);
  *(v1 + 128) = sub_1C43FE604();
  *(v1 + 136) = swift_task_alloc();
  v18 = sub_1C4EFD618();
  *(v1 + 144) = v18;
  sub_1C43FCF7C(v18);
  *(v1 + 152) = v19;
  v21 = *(v20 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C44A1038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1C440C6BC();
  a23 = v31;
  a24 = v32;
  sub_1C44346B8();
  a22 = v25;
  sub_1C442244C();
  v33 = sub_1C442FCD8();
  v34(v33);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v35 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v36 = v25[9];
    v24 = swift_slowAlloc();
    *v24 = 0;
    v37 = sub_1C4F008A8();
    sub_1C4423684(&dword_1C43F8000, v38, v39, v37, "graphConstruction", "");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4405274();
  v40 = *(v26 + 16);
  v41 = sub_1C4414A08();
  v42(v41);
  v43 = sub_1C4F00948();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_1C442BA8C();
  v46 = sub_1C4409FD4();
  v47(v46);
  sub_1C442ECA4();
  v49 = *(v26 + 8);
  v48 = v26 + 8;
  v49(v28, v29);
  (*(v30 + 8))(v35, v27);
  (*(v24 + 8))(a12, a11);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v50 = v25[5];
  v51 = v25[2];
  v25[21] = sub_1C442B738(v25[14], qword_1EDE2DE10);
  sub_1C4400B7C();
  v52 = sub_1C43FBC98();
  sub_1C448CFCC(v52, v53, v54);
  v55 = sub_1C4F00968();
  v56 = sub_1C4F01CF8();
  v57 = sub_1C4400B94(v56);
  v58 = v25[5];
  if (v57)
  {
    v59 = v25[4];
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C440E550();
    sub_1C4418528();
    *v48 = 136315138;
    sub_1C4400B7C();
    sub_1C448CFCC(v58, v59, v60);
    sub_1C43FC7A4();
    sub_1C447EAE0(v58, v61);
    sub_1C44A1310();
    sub_1C441AFF8();
    sub_1C441D828(v59, v29, &a13);
    sub_1C4441528();
    *(v48 + 4) = v59;
    sub_1C4404638(&dword_1C43F8000, v62, v63, "StageStart %s");
    sub_1C440AEF4();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    sub_1C447EAE0(v25[5], type metadata accessor for Linker);
  }

  v64 = swift_task_alloc();
  v25[22] = v64;
  *v64 = v25;
  v64[1] = sub_1C44B67DC;
  v65 = v25[2];
  sub_1C440405C();

  return Linker.execute()();
}

void sub_1C44A1310()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4433190();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4414930();
  sub_1C4440948();
  v10 = type metadata accessor for Linker();
  sub_1C4429020(v10);
  sub_1C456902C(&qword_1EC0BA520, &unk_1C4F14250);
  v11 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v11);

  sub_1C441DC78();
  MEMORY[0x1C6940010](0x2D676E696B6E696CLL, 0xEF6C6172656E6567);
  sub_1C44364AC();
  v12 = *(v0 + 20);
  sub_1C441925C();
  sub_1C447F6A4(v13);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v14);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v15 = sub_1C441B798();
  v16(v15);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C44A14A0()
{
  v2 = *(v0 - 200);

  sub_1C45D689C();
}

uint64_t sub_1C44A14E8()
{
  v2 = *(v0 - 320);

  return sub_1C440962C(v2);
}

uint64_t sub_1C44A150C()
{
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
}

void sub_1C44A152C(void *a1@<X8>)
{
  *a1 = *(v1 - 256);
  a1[1] = v2;
  v8 = (v4 + v5[10]);
  *v8 = *(v6 - 144);
  v8[1] = v3;
  *(v4 + v5[11]) = v7;
  v9 = v5[12];
}

void sub_1C44A156C()
{
  v2 = *(v0 - 72);
  v3 = *(v0 - 112);

  JUMPOUT(0x1C6942830);
}

void sub_1C44A1590()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[5];
}

uint64_t sub_1C44A15B0()
{
  v1 = *(v0 + 56);
  result = type metadata accessor for Linker();
  v3 = *(v1 + *(result + 24));
  *(v0 + 64) = v3;
  v4 = *(v3 + 16);
  *(v0 + 72) = v4;
  *(v0 + 80) = 0;
  if (v4)
  {
    if (*(v3 + 16))
    {
      sub_1C442E860(v3 + 32, v0 + 16);
      v5 = sub_1C4475C04();
      v6(v5);
      *(v0 + 105) = *(v0 + 104);
      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      *v7 = v0;
      v8 = sub_1C442A464(v7);

      return ResumableStage.executeIfRequired(_:)(v8, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1C43FBDA0();

    return v11();
  }

  return result;
}

uint64_t Blocker.pipelineType.getter()
{
  result = sub_1C445FBF0();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t Blocker.stores.getter()
{
  v2 = *(sub_1C445FBF0() + 32);
  sub_1C441D69C();
  return sub_1C4430900(v1 + v3, v0);
}

uint64_t sub_1C44A172C()
{
  v4 = v1 + *(v2 + 20);

  return sub_1C45AD734(v0, v4);
}

void sub_1C44A1748()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44A1780()
{
  *(v0 + 120) = 0;
  *(v0 + 112) = 0;
  *(v0 + 128) = 1;

  return sub_1C4F02A08();
}

void sub_1C44A17C4()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44A17EC()
{
  v2 = *(v0 - 488);
  v3 = *(v0 - 496);

  return sub_1C44239FC(v2);
}

void sub_1C44A1824()
{
  v1 = v0[136];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[126];
}

uint64_t sub_1C44A1838()
{
  v2 = *(v0 - 336);

  return sub_1C4EFF028();
}

uint64_t sub_1C44A1870()
{

  return sub_1C4F02248();
}

unint64_t sub_1C44A1890()
{

  return sub_1C446D0DC();
}

uint64_t sub_1C44A18F0()
{
  result = type metadata accessor for LifeEventStructs.Place(0);
  *(v0 - 65) = 8;
  return result;
}

uint64_t Blocker.entityClass.getter()
{
  v2 = *(sub_1C445FBF0() + 20);
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t Blocker.source.getter()
{
  v2 = *(sub_1C445FBF0() + 24);
  sub_1C441925C();
  return sub_1C4430900(v1 + v3, v0);
}

uint64_t Blocker.stageName.getter()
{
  result = sub_1C445FBF0();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1C44A1AC0()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for Blocker();
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA478, &qword_1C4F140D0);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C44A1BE0(v1[7]);
  sub_1C4475BB0();

  sub_1C44364AC();
  v9 = v1[6];
  sub_1C441925C();
  sub_1C44F090C(v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + v1[5];
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C448D934(*(v0 + v1[11]));
  return sub_1C43FE658();
}

uint64_t sub_1C44A1BE0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = *(v1 + a1);

  return StageName.description.getter();
}

void sub_1C44A1BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v6 - 224) = v5;
  *(v6 - 276) = a5;
  *(v6 - 288) = a4;
}

uint64_t sub_1C44A1C14(uint64_t result)
{
  v3 = result & ~(-1 << *(v2 + 32));
  v4 = (-1 << v3) & ~*(v1 + 8 * (v3 >> 6));
  return result;
}

uint64_t sub_1C44A1C38()
{
  v2 = *(v0 - 1152);
  v3 = *(v0 - 1160);

  return sub_1C44239FC(v2);
}

void sub_1C44A1C70()
{

  JUMPOUT(0x1C693FEF0);
}

uint64_t sub_1C44A1CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C440BAA8(a1, a2, a3, v3);
  v7 = v5 + *(v4 + 20);
  return result;
}

uint64_t sub_1C44A1D20()
{

  return sub_1C4EF9CD8();
}

uint64_t sub_1C44A1D40()
{

  return sub_1C47E5B7C();
}

uint64_t sub_1C44A1D58()
{
  *(v1 - 192) = v0;

  return sub_1C4851984();
}

uint64_t sub_1C44A1D74()
{
  v3 = *(v0 + 36);
  *(v1 - 70) = 5;

  return type metadata accessor for Source();
}

uint64_t sub_1C44A1D94()
{
  v3 = *(v1 + *(v0 + 28));
}

uint64_t sub_1C44A1DB0(uint64_t a1)
{
  *(v1 - 352) = a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44A1DD0()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 224);

  return sub_1C4EFB438();
}

uint64_t sub_1C44A1E00@<X0>(void *a1@<X8>)
{
  result = *(v2 - 224);
  *a1 = *(v2 - 232);
  a1[1] = result;
  v4 = *(v1 + 44);
  return result;
}

void sub_1C44A1E1C()
{
  v2 = *(v1 - 116);
  v3 = *(v1 - 112) + v0;
  v4 = *(v1 - 112);
}

uint64_t sub_1C44A1E60@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 - a2;
  *(v3 - 136) = result;
  v5 = *(result + 48);
  *(v3 - 120) = v4;
  return result;
}

uint64_t sub_1C44A1E88()
{
  *(v1 - 96) = v0;

  return sub_1C4F00FD8();
}

uint64_t sub_1C44A1EBC()
{
  v2 = *(v0 - 960);
  v3 = *(v0 - 968);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44A1EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_1C4460108(a1, v5, v2, v3);
}

uint64_t sub_1C44A1F08()
{
  v1 = *(v0 - 316);
  result = *(v0 - 336);
  v3 = *(v0 - 344);
  v4 = *(v0 - 192);
  v5 = *(v0 - 312);
  v6 = *(v0 - 376);
  return result;
}

uint64_t sub_1C44A1F7C(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

void *sub_1C44A1F88@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 136) = v1;
  *(v3 - 128) = a1;
  *(a1 + v2) = 0;
  v4 = v1[4];
  return sub_1C4409678(v1, v1[3]);
}

uint64_t sub_1C44A1FE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return Blocker.execute()();
}

uint64_t Blocker.execute()()
{
  *(v1 + 24) = v0;
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44A210C, 0, 0);
}

uint64_t sub_1C44A210C()
{
  v25 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Blocker();
  v4 = v2 + v3[8];
  v5 = *(v4 + *(type metadata accessor for PhaseStores() + 24));
  v6 = v3[11];
  LOBYTE(v24[0]) = *(v2 + v6);
  v7 = v3[5];
  v8 = sub_1C4EFD548();
  sub_1C43FBCE0(v8);
  (*(v9 + 16))(v1, v2 + v7, v8);
  sub_1C440BAA8(v1, 0, 1, v8);
  sub_1C44A2734(v24, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v2 + v6))
  {
    case 1:
    case 3:
      v10 = v0[3];
      v11 = swift_task_alloc();
      *(v11 + 16) = v10;
      v12 = sub_1C44F0828;
      v13 = sub_1C44A3304;
      goto LABEL_3;
    case 2:
      v16 = v0[3];
      if ((*(v16 + v3[13]) & 1) == 0)
      {
        v11 = swift_task_alloc();
        *(v11 + 16) = v16;
        v12 = sub_1C44F1A74;
        v13 = sub_1C4656B44;
LABEL_3:
        sub_1C44A2FC4(v2 + v7, 0, 1, v12, v11, v13);
      }

      v17 = v0[3];
      v18 = *(v2 + v6);
      v19 = swift_task_alloc();
      v19[2] = v17;
      sub_1C44A5990(v2 + v7, v18, 0, 1, sub_1C44CB36C, v19);

      v21 = v0[3];
      v20 = v0[4];
      sub_1C4EF9AE8();
      sub_1C44A7134(v22, 0, 1u);

      v23 = v0[1];

      result = v23();
      break;
    default:
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA478, &qword_1C4F140D0);
      v14 = sub_1C4F01198();
      MEMORY[0x1C6940010](v14);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v6));
      result = sub_1C4656C24();
      break;
  }

  return result;
}

uint64_t sub_1C44A2474(char *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v9 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v10 = sub_1C43FBCE0(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = *a1;
  v19 = *(*(v4 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v36[16] = *a1;
  v37 = a2;

  v20 = sub_1C443DD50(a3, v36);

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v21 = sub_1C4F00978();
  sub_1C442B738(v21, qword_1EDE2E088);
  sub_1C44A2E4C(a2, v17);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (os_log_type_enabled(v22, v23))
  {
    sub_1C43FEC60();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = a4;
    v39 = v25;
    *v24 = 136315650;
    v38 = v18;
    sub_1C456902C(&qword_1EC0BD3A0, &qword_1C4F2DB70);
    v26 = sub_1C4F01198();
    v28 = sub_1C441D828(v26, v27, &v39);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    sub_1C44A2E4C(v17, v15);
    v29 = sub_1C4F01198();
    v31 = v30;
    sub_1C4420C3C(v17, &qword_1EC0B8568, &unk_1C4F319B0);
    v32 = sub_1C441D828(v29, v31, &v39);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v20;
    _os_log_impl(&dword_1C43F8000, v22, v23, v35, v24, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    sub_1C4420C3C(v17, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  return v20;
}

uint64_t sub_1C44A2754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v41 = a1;
  v36 = a3;
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_1C4EFD548();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BE538, &qword_1C4F37360);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  type metadata accessor for EntityBlock(0);
  sub_1C4490890(&unk_1EDDF92F8, type metadata accessor for EntityBlock);
  sub_1C4EFADF8();
  if (qword_1EDDF9308 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4EFBD38();
  v21 = sub_1C442B738(v20, qword_1EDE2DB18);
  v47 = v20;
  v48 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v46);
  (*(*(v20 - 8) + 16))(v22, v21, v20);
  v23 = 0xE700000000000000;
  v24 = 0x6E776F6E6B6E75;
  switch(v21)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v23 = 0xE400000000000000;
      v24 = 1819047270;
      goto LABEL_7;
    case 2:
      v23 = 0xE500000000000000;
      v24 = 0x61746C6564;
      goto LABEL_7;
    case 3:
      v23 = 0xEA0000000000676ELL;
      v24 = 0x69686374614D6F74;
LABEL_7:
      v44 = MEMORY[0x1E69E6158];
      v45 = MEMORY[0x1E69A0130];
      v42 = v24;
      v43 = v23;
      v50 = sub_1C4EFB298();
      v51 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v49);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v42, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v46);
      sub_1C4401CBC(&qword_1EDDFA2F0, &qword_1EC0BE538, &qword_1C4F37360);
      sub_1C4EFB438();
      (*(v11 + 8))(v19, v10);
      sub_1C440962C(v49);
      (*(v11 + 32))(v19, v17, v10);
      break;
    default:
      break;
  }

  sub_1C44A2E4C(v40, v6);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v26 = v38;
    v25 = v39;
    (*(v39 + 32))(v38, v6, v7);
    if (qword_1EDDF9318 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4EFBD38();
    v28 = sub_1C442B738(v27, qword_1EDE2DB30);
    v47 = v27;
    v48 = MEMORY[0x1E69A0050];
    v29 = sub_1C4422F90(v46);
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v30 = sub_1C4EFD3D8();
    v44 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69A0130];
    v42 = v30;
    v43 = v31;
    v50 = sub_1C4EFB298();
    v51 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v49);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v42, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v46);
    sub_1C4401CBC(&qword_1EDDFA2F0, &qword_1EC0BE538, &qword_1C4F37360);
    v32 = v37;
    sub_1C4EFB438();
    (*(v25 + 8))(v26, v7);
    (*(v11 + 8))(v19, v10);
    sub_1C440962C(v49);
    (*(v11 + 32))(v19, v32, v10);
  }

  v33 = v52;
  v34 = sub_1C4EFB898();
  result = (*(v11 + 8))(v19, v10);
  if (!v33)
  {
    *v36 = v34;
  }

  return result;
}

uint64_t sub_1C44A2E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PipelineType.description.getter()
{
  v1 = *v0;
  sub_1C4F02248();

  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  switch(v1)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1819047270;
      break;
    case 2:
      v3 = sub_1C44076F0();
      break;
    case 3:
      v2 = 0xEA0000000000676ELL;
      v3 = sub_1C44133C0();
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v3, v2);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x6E696C657069503CLL;
}

uint64_t sub_1C44A2FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v57 = a2;
  v53 = a4;
  v54 = a5;
  v10 = sub_1C4EFD548();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440F400();
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2E088);
  v17 = *(v13 + 16);
  v55 = a1;
  v17(v7, a1, v10);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (os_log_type_enabled(v18, v19))
  {
    v52 = v6;
    v20 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v20 = 136315394;
    sub_1C44189E4();
    sub_1C447CB3C(v21, v22);
    v50 = v19;
    v23 = sub_1C4F02858();
    v51 = a3;
    v25 = v24;
    v26 = sub_1C449F410();
    v27(v26);
    v28 = sub_1C441D828(v23, v25, &v61);

    *(v20 + 4) = v28;
    *(v20 + 12) = 2080;
    v29 = v57;
    v59 = v57;
    v60 = a3 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v30 = sub_1C4F01198();
    v32 = sub_1C441D828(v30, v31, &v61);

    *(v20 + 14) = v32;
    _os_log_impl(&dword_1C43F8000, v18, v50, "GraphStore: tripleBlockingMap: e:%s t:%s", v20, 0x16u);
    swift_arrayDestroy();
    v33 = sub_1C44068C0();
    MEMORY[0x1C6942830](v33);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v35 = sub_1C449F410();
    v34 = v36(v35);
    v29 = v57;
  }

  v37 = *(*(v58 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v34);
  v46[2] = v38;
  v46[3] = v55;
  v46[4] = v29;
  v47 = a3 & 1;
  v48 = v53;
  v49 = v54;

  sub_1C4418704(v56, v46, v39, v40, v41, v42, v43, v44, v46[0], v46[1]);
}

uint64_t sub_1C44A3360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v18 = a1;
  v7 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  type metadata accessor for ConstructionGraphTriple(0);
  sub_1C447CB3C(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple);
  sub_1C4EFADF8();
  sub_1C44A3574();
  v15 = *(v8 + 8);
  v15(v12, v7);
  sub_1C44A3D98(v18, v14, v19, v20);
  return (v15)(v14, v7);
}

void sub_1C44A3574()
{
  sub_1C43FBD3C();
  v7 = sub_1C4423CA4(v1, v2, v3, v4, v5, v6);
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v12 = sub_1C43FCDF8(v11);
  v54 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  sub_1C43FBE44();
  v19 = sub_1C4EFBD38();
  v20 = sub_1C4B59094(v19, MEMORY[0x1E69A0050]);
  sub_1C4422F90(v20);
  sub_1C4440DD4();
  sub_1C4EFEBB8();
  sub_1C4EFEB68();
  v21 = sub_1C44EB8F8();
  v22(v21);
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1C4B59030();
  v60 = v24;
  v61 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v59);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v56);
  sub_1C43FC300();
  sub_1C4401CBC(v25, &qword_1EC0BA580, &unk_1C4F32530);
  sub_1C446286C();
  sub_1C440962C(v59);
  v57 = v19;
  v26 = sub_1C445AC14(MEMORY[0x1E69A0050]);
  sub_1C4422F90(v26);
  sub_1C4B58F44();
  v27 = sub_1C4EFD2F8();
  sub_1C4475624(v27, v28);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C442A9D8();
  sub_1C44CD080();
  v29 = sub_1C441B504();
  v23(v29);
  sub_1C440962C(v59);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v30 = sub_1C44331AC();
  v31 = sub_1C44F0930(v30, xmmword_1C4F0D130);
  sub_1C442A644(v31, MEMORY[0x1E69A0038]);
  sub_1C44C04A4();
  sub_1C442F3C0();
  sub_1C4401CBC(v32, &qword_1EC0BA580, &unk_1C4F32530);
  sub_1C44E7704();

  v33 = v0;
  v34 = MEMORY[0x1E699FE60];
  (v23)(v33, v11);
  sub_1C444C04C();
  if (!v35)
  {
    v57 = v19;
    v36 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v36);
    sub_1C4462064();
    sub_1C447FA24();
    switch(v38)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C447CC4C();
        break;
      default:
        break;
    }

    v55[3] = MEMORY[0x1E69E6158];
    sub_1C4485AA8(v37);
    sub_1C440C4CC();
    sub_1C4EFBB28();
    sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C442A9D8();
    sub_1C4460AF8();
    v39 = sub_1C446070C();
    v40(v39);
    sub_1C440962C(v59);
    v41 = *(v54 + 32);
    v42 = sub_1C44BBEDC();
    v43(v42);
  }

  if ((v53 & 1) == 0)
  {
    v57 = v19;
    v44 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v44);
    sub_1C44513D8();
    sub_1C442F988(MEMORY[0x1E69E63B0]);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(v55);
    sub_1C442A9D8();
    sub_1C4460AF8();
    v45 = sub_1C446070C();
    v46(v45);
    sub_1C440962C(v59);
    v47 = *(v54 + 32);
    v48 = sub_1C44BBEDC();
    v49(v48);
  }

  v57 = v19;
  v58 = MEMORY[0x1E69A0040];
  sub_1C4422F90(v56);
  sub_1C44D3FFC();
  v60 = v24;
  v61 = v34;
  sub_1C4422F90(v59);
  sub_1C4441550(&qword_1EDDF0090);
  sub_1C446BD00();
  sub_1C442A9D8();
  sub_1C44A1DD0();
  sub_1C440962C(v59);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v50 = sub_1C44331AC();
  sub_1C4457964(v50);
  sub_1C442A644(v51, MEMORY[0x1E69A0048]);
  sub_1C44D3FFC();
  sub_1C44507CC(&qword_1EDDF00A8);
  sub_1C4475DD4();

  v52 = sub_1C4B58F6C();
  v23(v52);
  (v23)(v34, v11);
  sub_1C43FE9F0();
}

uint64_t sub_1C44A3A84()
{
}

uint64_t sub_1C44A3AA0()
{

  return sub_1C4F01298();
}

uint64_t sub_1C44A3AC4()
{
  v2 = *(v1 - 200);
  v3 = *(*(v1 - 208) + 8);
  return v0;
}

uint64_t sub_1C44A3B20()
{
  v2 = *(v0 - 176);

  return swift_beginAccess();
}

void sub_1C44A3B44(char a1)
{
  if (v3 <= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1C44C9240(a1, v5, 1, v1);
}

uint64_t sub_1C44A3B64()
{
  v2 = *(v0 + 32);

  return sub_1C4F027E8();
}

void sub_1C44A3BA0(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 344);
  v4 = *(v1 - 336);
}

uint64_t sub_1C44A3BBC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = *(v1 + a1);

  return StageName.description.getter();
}

uint64_t sub_1C44A3BD8()
{
}

uint64_t sub_1C44A3BF0(uint64_t result)
{
  *(v1 - 560) = result;
  *(v1 - 176) = result;
  return result;
}

uint64_t sub_1C44A3C3C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 168) = a1;
  *(v3 - 144) = v2;

  return sub_1C440BAA8(v1 + a1, 1, 1, v2);
}

uint64_t sub_1C44A3C64()
{
  v3 = *(v2 - 120);
  v4 = *(*(v2 - 128) + 32);
  return v0 + *(v1 + 24);
}

uint64_t sub_1C44A3C78()
{
  v4 = *(v0 + 968);
  *(v2 - 89) = v1;
}

uint64_t sub_1C44A3C98()
{
}

uint64_t sub_1C44A3CB0()
{
  v3 = *(v0 + *(v1 + 28));

  return sub_1C448D934(v3);
}

uint64_t sub_1C44A3CC8@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

id sub_1C44A3D04()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2112;

  return v1;
}

uint64_t sub_1C44A3D38@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 232) = &a2 - a1;

  return sub_1C4EFF0C8();
}

uint64_t sub_1C44A3D68()
{
  v3 = *(v0 - 224);
  v2 = *(v0 - 216);

  return sub_1C4F02738();
}

uint64_t sub_1C44A3D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v66 = a2;
  v62 = a4;
  v63 = a3;
  v64 = sub_1C4EFF0C8();
  v60 = *(v64 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v12;
  v13 = type metadata accessor for ConstructionGraphTriple(0);
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v23 = a1;
  sub_1C4401CBC(&qword_1EDDF00B0, &qword_1EC0BA580, &unk_1C4F32530);
  sub_1C447CB3C(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple);
  v24 = v67;
  result = sub_1C4EFAFD8();
  if (!v24)
  {
    v26 = result;
    v66 = v13;
    v67 = v17;
    v27 = v20;
    v55 = v11;
    v56 = v22;
    v28 = v61;
    v29 = v62;
    sub_1C44A457C();
    if (sub_1C44157D4(v28, 1, v66) == 1)
    {
      sub_1C4420C3C(v28, &unk_1EC0BCAE0, &unk_1C4F142A0);
      if (qword_1EDDFFAF0 != -1)
      {
        swift_once();
      }

      v30 = sub_1C4F00978();
      sub_1C442B738(v30, qword_1EDE2E088);
      v31 = sub_1C4F00968();
      v32 = sub_1C4F01CF8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1C43F8000, v31, v32, "GraphStore: batchBlockingUpsert: found no data", v33, 2u);
        MEMORY[0x1C6942830](v33, -1, -1);
      }
    }

    else
    {
      v57 = v23;
      v58 = v26;
      v34 = v28;
      v35 = v56;
      sub_1C449F338(v34, v56);
      sub_1C456902C(&qword_1EC0B8F00, &unk_1C4F0E9A0);
      v36 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v61 = *(v59 + 72);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1C4F0D130;
      v59 = v36;
      sub_1C4430900(v35, v37 + v36);
      v68 = v37;
      v38 = v60 + 16;
      v39 = v35;
      v40 = v64;
      (*(v60 + 16))(v65, v39, v64);
      swift_beginAccess();
      v41 = (v38 + 8);
      v42 = v29;
      v43 = v55;
      while (1)
      {
        sub_1C44A457C();
        if (sub_1C44157D4(v43, 1, v66) == 1)
        {
          break;
        }

        sub_1C449F338(v43, v27);
        sub_1C447CB3C(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
        v44 = v65;
        if (sub_1C4F010B8())
        {
          v45 = v27;
        }

        else
        {
          v46 = objc_autoreleasePoolPush();
          sub_1C44C9764(v63, v29, &v68, v44);
          objc_autoreleasePoolPop(v46);

          v45 = v27;
          (*v41)(v44, v27, v40);
          v37 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4430900(v45, v67);
        v42 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44EE8C8(0, *(v37 + 16) + 1, 1, v37);
          v37 = v49;
        }

        v48 = *(v37 + 16);
        v47 = *(v37 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1C44EE8C8(v47 > 1, v48 + 1, 1, v37);
          v37 = v50;
        }

        sub_1C447E868(v27, type metadata accessor for ConstructionGraphTriple);
        *(v37 + 16) = v48 + 1;
        sub_1C449F338(v67, v37 + v59 + v48 * v61);
        v68 = v37;
        v40 = v64;
      }

      sub_1C4420C3C(v43, &unk_1EC0BCAE0, &unk_1C4F142A0);
      if (*(v37 + 16))
      {
        v51 = objc_autoreleasePoolPush();
        v52 = v65;
        sub_1C44C9764(v63, v42, &v68, v65);
        v53 = v60;
        v54 = v56;
        objc_autoreleasePoolPop(v51);

        sub_1C447E868(v54, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        sub_1C447E868(v56, type metadata accessor for ConstructionGraphTriple);

        v53 = v60;
        v52 = v65;
      }

      (*(v53 + 8))(v52, v40);
    }
  }

  return result;
}

void sub_1C44A457C()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  sub_1C442C998(&unk_1EDDF0178, &unk_1EC0BCAF0, &qword_1C4F29BE0);
  if (sub_1C440C4B0())
  {
    type metadata accessor for ConstructionGraphTriple(0);
    v6 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v6, v7, v8, v9);
    goto LABEL_9;
  }

  sub_1C4406CA4(&qword_1EDDF0188, &unk_1EC0BCAF0, &qword_1C4F29BE0);
  sub_1C444FD58();
  v10 = sub_1C43FBE94();
  type metadata accessor for ConstructionGraphTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BCAE0, &unk_1C4F142A0);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

uint64_t sub_1C44A4700(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = sub_1C43FBE94();
  v13 = v12(v11);
  v14 = sub_1C43FCF8C(v13);
  if (*(v15 + 84) == a3)
  {
    v16 = v14;
    v17 = v6;
  }

  else
  {
    v18 = a6(0);
    result = sub_1C43FCF8C(v18);
    if (*(v20 + 84) == a3)
    {
      v16 = result;
      v21 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v6 + a4[6]) = a2 + 3;
        return result;
      }

      v16 = sub_1C4EFD548();
      v21 = a4[7];
    }

    v17 = v6 + v21;
  }

  return sub_1C440BAA8(v17, a2, a2, v16);
}

uint64_t sub_1C44A4818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  v8 = sub_1C4F00328();
  result = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_1C440BAA8(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1C44A48B8()
{
  sub_1C43FC36C();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v2)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v5 = sub_1C4EFEEF8();
    sub_1C43FCF8C(v5);
    if (*(v6 + 84) == v2)
    {
      v7 = *(v1 + 20);
    }

    else
    {
      v8 = sub_1C4EFF8A8();
      sub_1C43FCF8C(v8);
      if (*(v9 + 84) != v2)
      {
        sub_1C44289C4();
        *(v15 + 8) = (v0 - 1);
        return;
      }

      v10 = *(v1 + 24);
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C44A49C8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  v8 = sub_1C4F00328();
  result = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    sub_1C43FD5B4();
    sub_1C43FE688();

    return sub_1C440BAA8(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C44A4A60(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = a1;
  }

  else
  {
    v16 = a6(0);
    result = sub_1C43FCF8C(v16);
    if (*(v18 + 84) == a3)
    {
      v14 = result;
      v19 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(a1 + a4[6]) = a2 + 3;
        return result;
      }

      v14 = sub_1C4EFD548();
      v19 = a4[7];
    }

    v15 = a1 + v19;
  }

  return sub_1C440BAA8(v15, a2, a2, v14);
}

void sub_1C44A4B7C()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) != v1)
        {
          sub_1C441864C(*(v0 + 32));
          return;
        }

        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v10, v11, v12, v13);
}

uint64_t sub_1C44A4CCC()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = sub_1C4EFD548();
    sub_1C43FCF8C(v6);
    if (*(v7 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      v8 = type metadata accessor for Source();
      sub_1C43FCF8C(v8);
      if (*(v9 + 84) == v3)
      {
        sub_1C4416C20();
      }

      else
      {
        v10 = sub_1C4EFEEF8();
        result = sub_1C43FCF8C(v10);
        if (*(v12 + 84) != v3)
        {
          *(v1 + *(v2 + 32) + 8) = v0;
          return result;
        }

        v13 = *(v2 + 28);
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C44A4E28()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C4EFD548();
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = type metadata accessor for Source();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = sub_1C4EFEEF8();
        result = sub_1C43FCF8C(v16);
        if (*(v18 + 84) != v3)
        {
          *(v1 + v2[8] + 8) = v0;
          return result;
        }

        v7 = result;
        v12 = v2[7];
      }
    }

    v8 = v1 + v12;
  }

  return sub_1C440BAA8(v8, v0, v0, v7);
}

uint64_t sub_1C44A4F94(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = sub_1C43FBE94();
  v11 = v10(v9);
  v12 = sub_1C43FCF8C(v11);
  if (*(v13 + 84) == a2)
  {
    v14 = v12;
    v15 = v5;
  }

  else
  {
    v16 = a5(0);
    v17 = sub_1C43FCF8C(v16);
    if (*(v18 + 84) == a2)
    {
      v14 = v17;
      v19 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v20 = *(v5 + a3[6]);
        if (v20 >= 4)
        {
          return v20 - 3;
        }

        else
        {
          return 0;
        }
      }

      v14 = sub_1C4EFD548();
      v19 = a3[7];
    }

    v15 = v5 + v19;
  }

  return sub_1C44157D4(v15, a2, v14);
}

uint64_t sub_1C44A50A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  v6 = sub_1C4F00328();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_1C44157D4(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C44A5144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FECE0();
  v6 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1C4404F74();
  }

  else
  {
    v10 = sub_1C4EFEEF8();
    v11 = sub_1C43FCF8C(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      v14 = sub_1C4EFF8A8();
      v15 = sub_1C43FCF8C(v14);
      if (*(v16 + 84) != v3)
      {
        sub_1C44289C4();
        v19 = *(v18 + 8);
        sub_1C448E060();
        return (v20 + 1);
      }

      v9 = v15;
      v13 = *(a3 + 24);
    }

    v8 = v4 + v13;
  }

  return sub_1C44157D4(v8, v3, v9);
}

uint64_t sub_1C44A525C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4403FC0();
  v6 = sub_1C4F00328();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_1C43FCE3C(*(v3 + *(a3 + 20)));
  }

  return sub_1C44157D4(v3, a2, v7);
}

uint64_t sub_1C44A52F4(uint64_t a1, uint64_t a2, int *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = sub_1C43FCF8C(v9);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = a1;
  }

  else
  {
    v14 = a5(0);
    v15 = sub_1C43FCF8C(v14);
    if (*(v16 + 84) == a2)
    {
      v12 = v15;
      v17 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v18 = *(a1 + a3[6]);
        if (v18 >= 4)
        {
          return v18 - 3;
        }

        else
        {
          return 0;
        }
      }

      v12 = sub_1C4EFD548();
      v17 = a3[7];
    }

    v13 = a1 + v17;
  }

  return sub_1C44157D4(v13, a2, v12);
}

uint64_t sub_1C44A5404()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) != v0)
        {
          return sub_1C43FE264(*(v2 + 32));
        }

        sub_1C4416C14();
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C44A5554()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        v13 = sub_1C43FCF8C(v12);
        if (*(v14 + 84) != v0)
        {
          return sub_1C4405628(*(v1 + *(v2 + 32) + 8));
        }

        v6 = v13;
        v9 = *(v2 + 28);
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C44A56B0()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) != v0)
        {
          return sub_1C4405628(*(v1 + *(v2 + 32) + 8));
        }

        sub_1C4416C14();
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C44A5808(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1C4EFD548();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for Source();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_1C4EFEEF8();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) != a2)
        {
          return sub_1C4405628(*(a1 + a3[8] + 8));
        }

        v9 = v19;
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C44A5990(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v46 = a3;
  v49 = a5;
  v48 = a4;
  v9 = sub_1C4EFD548();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2E088);
  v15 = *(v10 + 16);
  v45 = a1;
  v15(v13, a1, v9);
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52 = v43;
    *v18 = 136315650;
    sub_1C447CB3C(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    v19 = sub_1C4F02858();
    v44 = a6;
    v21 = v20;
    (*(v10 + 8))(v13, v9);
    v22 = sub_1C441D828(v19, v21, &v52);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = sub_1C44A5D54(a2);
    v25 = sub_1C441D828(v23, v24, &v52);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2080;
    a6 = v44;
    v26 = v46;
    v50 = v46;
    v27 = v48;
    v51 = v48 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v28 = sub_1C4F01198();
    v30 = sub_1C441D828(v28, v29, &v52);

    *(v18 + 24) = v30;
    _os_log_impl(&dword_1C43F8000, v16, v17, "GraphStore: tripleBlockingMap: e:%s p:%s t:%s", v18, 0x20u);
    v31 = v43;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v31, -1, -1);
    MEMORY[0x1C6942830](v18, -1, -1);
  }

  else
  {

    v32 = (*(v10 + 8))(v13, v9);
    v27 = v48;
    v26 = v46;
  }

  v33 = *(*(v47 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v45;
  *(&v43 - 8) = v35;
  *(&v43 - 7) = v34;
  *(&v43 - 48) = a2;
  *(&v43 - 5) = v26;
  *(&v43 - 32) = v27 & 1;
  *(&v43 - 3) = v49;
  *(&v43 - 2) = a6;

  sub_1C4418704(sub_1C44A6008, (&v43 - 10), v36, v37, v38, v39, v40, v41, v43, v44);
}

uint64_t sub_1C44A5D54(char a1)
{
  sub_1C4F02248();

  v3 = sub_1C44806FC();
  switch(a1)
  {
    case 1:
      v1 = 0xE400000000000000;
      v3 = 1819047270;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v3 = sub_1C4482D18();
      break;
    case 3:
      v1 = 0xEA0000000000676ELL;
      v3 = sub_1C44133C0();
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v3, v1);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x6E696C657069503CLL;
}

uint64_t sub_1C44A5E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v20 = a7;
  v21 = a8;
  v18 = a5;
  v19 = a1;
  v8 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  type metadata accessor for EntityTriple(0);
  sub_1C447CB3C(&qword_1EDDF8DB0, type metadata accessor for EntityTriple);
  sub_1C4EFADF8();
  sub_1C44A6034();
  v16 = *(v9 + 8);
  v16(v13, v8);
  sub_1C44A6544(v19, v15, v20, v21);
  return (v16)(v15, v8);
}

void sub_1C44A6034()
{
  sub_1C43FBD3C();
  v7 = sub_1C4423CA4(v1, v2, v3, v4, v5, v6);
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v12 = sub_1C43FCDF8(v11);
  v54 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  sub_1C43FBE44();
  v19 = sub_1C4EFBD38();
  v20 = sub_1C4B59094(v19, MEMORY[0x1E69A0050]);
  sub_1C4422F90(v20);
  sub_1C4440DD4();
  sub_1C4EFEBB8();
  sub_1C4EFEB68();
  v21 = sub_1C44EB8F8();
  v22(v21);
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1C4B59030();
  v60 = v24;
  v61 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v59);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v56);
  sub_1C43FC300();
  sub_1C4401CBC(v25, &qword_1EC0BA588, &unk_1C4F142B0);
  sub_1C446286C();
  sub_1C440962C(v59);
  v57 = v19;
  v26 = sub_1C445AC14(MEMORY[0x1E69A0050]);
  sub_1C4422F90(v26);
  sub_1C4B58F44();
  v27 = sub_1C4EFD2F8();
  sub_1C4475624(v27, v28);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C442A9D8();
  sub_1C44CD080();
  v29 = sub_1C441B504();
  v23(v29);
  sub_1C440962C(v59);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v30 = sub_1C44331AC();
  v31 = sub_1C44F0930(v30, xmmword_1C4F0D130);
  sub_1C442A644(v31, MEMORY[0x1E69A0038]);
  sub_1C44C04A4();
  sub_1C442F3C0();
  sub_1C4401CBC(v32, &qword_1EC0BA588, &unk_1C4F142B0);
  sub_1C44E7704();

  v33 = v0;
  v34 = MEMORY[0x1E699FE60];
  (v23)(v33, v11);
  sub_1C444C04C();
  if (!v35)
  {
    v57 = v19;
    v36 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v36);
    sub_1C4462064();
    sub_1C447FA24();
    switch(v38)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C447CC4C();
        break;
      default:
        break;
    }

    v55[3] = MEMORY[0x1E69E6158];
    sub_1C4485AA8(v37);
    sub_1C440C4CC();
    sub_1C4EFBB28();
    sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C442A9D8();
    sub_1C4460AF8();
    v39 = sub_1C446070C();
    v40(v39);
    sub_1C440962C(v59);
    v41 = *(v54 + 32);
    v42 = sub_1C44BBEDC();
    v43(v42);
  }

  if ((v53 & 1) == 0)
  {
    v57 = v19;
    v44 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v44);
    sub_1C44513D8();
    sub_1C442F988(MEMORY[0x1E69E63B0]);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(v55);
    sub_1C442A9D8();
    sub_1C4460AF8();
    v45 = sub_1C446070C();
    v46(v45);
    sub_1C440962C(v59);
    v47 = *(v54 + 32);
    v48 = sub_1C44BBEDC();
    v49(v48);
  }

  v57 = v19;
  v58 = MEMORY[0x1E69A0040];
  sub_1C4422F90(v56);
  sub_1C44D3FFC();
  v60 = v24;
  v61 = v34;
  sub_1C4422F90(v59);
  sub_1C4441550(&qword_1EDDFA2B8);
  sub_1C446BD00();
  sub_1C442A9D8();
  sub_1C44A1DD0();
  sub_1C440962C(v59);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v50 = sub_1C44331AC();
  sub_1C4457964(v50);
  sub_1C442A644(v51, MEMORY[0x1E69A0048]);
  sub_1C44D3FFC();
  sub_1C44507CC(&qword_1EDDFA2D0);
  sub_1C4475DD4();

  v52 = sub_1C4B58F6C();
  v23(v52);
  (v23)(v34, v11);
  sub_1C43FE9F0();
}

uint64_t sub_1C44A6544(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v66 = a2;
  v62 = a4;
  v63 = a3;
  v64 = sub_1C4EFF0C8();
  v60 = *(v64 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v12;
  v13 = type metadata accessor for EntityTriple(0);
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v23 = a1;
  sub_1C4401CBC(&qword_1EDDFA2D8, &qword_1EC0BA588, &unk_1C4F142B0);
  sub_1C447CB3C(&qword_1EDDF8DA0, type metadata accessor for EntityTriple);
  v24 = v67;
  result = sub_1C4EFAFD8();
  if (!v24)
  {
    v26 = result;
    v66 = v13;
    v67 = v17;
    v27 = v20;
    v55 = v11;
    v56 = v22;
    v28 = v61;
    v29 = v62;
    sub_1C44A6D28();
    if (sub_1C44157D4(v28, 1, v66) == 1)
    {
      sub_1C4420C3C(v28, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFFAF0 != -1)
      {
        swift_once();
      }

      v30 = sub_1C4F00978();
      sub_1C442B738(v30, qword_1EDE2E088);
      v31 = sub_1C4F00968();
      v32 = sub_1C4F01CF8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1C43F8000, v31, v32, "GraphStore: batchBlockingUpsert: found no data", v33, 2u);
        MEMORY[0x1C6942830](v33, -1, -1);
      }
    }

    else
    {
      v57 = v23;
      v58 = v26;
      v34 = v28;
      v35 = v56;
      sub_1C449F338(v34, v56);
      sub_1C456902C(&qword_1EC0B9010, &unk_1C4F142C0);
      v36 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v61 = *(v59 + 72);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1C4F0D130;
      v59 = v36;
      sub_1C4430900(v35, v37 + v36);
      v68 = v37;
      v38 = v60 + 16;
      v39 = v35;
      v40 = v64;
      (*(v60 + 16))(v65, v39, v64);
      swift_beginAccess();
      v41 = (v38 + 8);
      v42 = v29;
      v43 = v55;
      while (1)
      {
        sub_1C44A6D28();
        if (sub_1C44157D4(v43, 1, v66) == 1)
        {
          break;
        }

        sub_1C449F338(v43, v27);
        sub_1C447CB3C(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
        v44 = v65;
        if (sub_1C4F010B8())
        {
          v45 = v27;
        }

        else
        {
          v46 = objc_autoreleasePoolPush();
          sub_1C44C9764(v63, v29, &v68, v44);
          objc_autoreleasePoolPop(v46);

          v45 = v27;
          (*v41)(v44, v27, v40);
          v37 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4430900(v45, v67);
        v42 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44C9240(0, *(v37 + 16) + 1, 1, v37);
          v37 = v49;
        }

        v48 = *(v37 + 16);
        v47 = *(v37 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1C44C9240(v47 > 1, v48 + 1, 1, v37);
          v37 = v50;
        }

        sub_1C447E868(v27, type metadata accessor for EntityTriple);
        *(v37 + 16) = v48 + 1;
        sub_1C449F338(v67, v37 + v59 + v48 * v61);
        v68 = v37;
        v40 = v64;
      }

      sub_1C4420C3C(v43, &qword_1EC0BA590, &qword_1C4F1F430);
      if (*(v37 + 16))
      {
        v51 = objc_autoreleasePoolPush();
        v52 = v65;
        sub_1C44C9764(v63, v42, &v68, v65);
        v53 = v60;
        v54 = v56;
        objc_autoreleasePoolPop(v51);

        sub_1C447E868(v54, type metadata accessor for EntityTriple);
      }

      else
      {
        sub_1C447E868(v56, type metadata accessor for EntityTriple);

        v53 = v60;
        v52 = v65;
      }

      (*(v53 + 8))(v52, v40);
    }
  }

  return result;
}

void sub_1C44A6D28()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  sub_1C442C998(&unk_1EDDFA360, &unk_1EC0BC9F8, &qword_1C4F29B80);
  if (sub_1C440C4B0())
  {
    type metadata accessor for EntityTriple(0);
    v6 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v6, v7, v8, v9);
    goto LABEL_9;
  }

  sub_1C4406CA4(&qword_1EDDFA370, &unk_1EC0BC9F8, &qword_1C4F29B80);
  sub_1C444FD58();
  v10 = sub_1C43FBE94();
  type metadata accessor for EntityTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &qword_1EC0BA590, &qword_1C4F1F430);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C44A6E94()
{
  sub_1C43FC36C();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v2)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v5 = sub_1C4EFEEF8();
    sub_1C43FCF8C(v5);
    if (*(v6 + 84) == v2)
    {
      v7 = v1[5];
    }

    else
    {
      v8 = sub_1C4EFF8A8();
      sub_1C43FCF8C(v8);
      if (*(v9 + 84) == v2)
      {
        v10 = v1[6];
      }

      else
      {
        if (v2 == 0x7FFFFFFF)
        {
          sub_1C44289C4();
          *(v11 + 8) = (v0 - 1);
          return;
        }

        type metadata accessor for Source();
        v12 = v1[9];
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C44A6FE0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FECE0();
  v6 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1C4404F74();
  }

  else
  {
    v10 = sub_1C4EFEEF8();
    v11 = sub_1C43FCF8C(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      v14 = sub_1C4EFF8A8();
      v15 = sub_1C43FCF8C(v14);
      if (*(v16 + 84) == v3)
      {
        v9 = v15;
        v13 = a3[6];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          sub_1C44289C4();
          v18 = *(v17 + 8);
          sub_1C448E060();
          return (v19 + 1);
        }

        v9 = type metadata accessor for Source();
        v13 = a3[9];
      }
    }

    v8 = v4 + v13;
  }

  return sub_1C44157D4(v8, v3, v9);
}

void sub_1C44A7134(uint64_t a1, char a2, unsigned int a3)
{
  v4 = v3;
  v65 = a3;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProgressTokens(0);
  v64 = *(v11 - 1);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Blocker();
  v16 = *(*(v15 - 1) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  if (a2)
  {
    v20 = 0;
    v21 = 0xF000000000000000;
  }

  else
  {
    v60 = objc_autoreleasePoolPush();
    v66[0] = a1;
    v22 = sub_1C4EF93D8();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_1C4EF93C8();
    sub_1C456902C(&qword_1EC0BA4A8, &dword_1C4F141D0);
    sub_1C4401CBC(&unk_1EDDF7D68, &qword_1EC0BA4A8, &dword_1C4F141D0);
    v20 = sub_1C4EF93B8();
    v21 = v34;

    objc_autoreleasePoolPop(v60);
  }

  sub_1C44A7940(v66);
  v35 = v67;
  v36 = v65;
  if (v67)
  {
    v19 = v68;
    sub_1C4409678(v66, v67);
    v37 = v19[6](v35, v19);
    sub_1C440962C(v66);
    if (v36)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C4420C3C(v66, &qword_1EC0BA490, &unk_1C4F53630);
    v37 = 0;
    if (v36)
    {
      goto LABEL_11;
    }
  }

  if (__OFADD__(v37++, 1))
  {
    __break(1u);
    swift_once();
    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDE2DE10);
    sub_1C4430900(v4, v36);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66[0] = v29;
      *v28 = 136315138;
      sub_1C4430900(v36, v19);
      sub_1C447E868(v36, type metadata accessor for Blocker);
      v30 = sub_1C44A1AC0();
      v32 = v31;
      sub_1C447E868(v19, type metadata accessor for Blocker);
      v33 = sub_1C441D828(v30, v32, v66);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1C43F8000, v26, v27, "%s failed to update progress token", v28, 0xCu);
      sub_1C440962C(v29);
      MEMORY[0x1C6942830](v29, -1, -1);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    else
    {
      sub_1C447E868(v36, type metadata accessor for Blocker);
    }

    return;
  }

LABEL_11:
  switch(*(v4 + v15[11]))
  {
    case 2:

      goto LABEL_14;
    default:
      v39 = sub_1C4F02938();

      if (v39)
      {
LABEL_14:
        v40 = v15[5];
        v41 = sub_1C4EFD548();
        (*(*(v41 - 8) + 16))(v14, v4 + v40, v41);
        LOBYTE(v40) = *(v4 + v15[7]);
        sub_1C4430900(v4 + v15[6], &v14[v11[6]]);
        v14[v11[5]] = v40;
        v42 = &v14[v11[7]];
        *v42 = v20;
        v42[1] = v21;
        *&v14[v11[8]] = v37;
        v14[v11[9]] = v36 & 1;
        v43 = v4 + v15[8];
        v44 = *(v43 + *(type metadata accessor for PhaseStores() + 24));
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v45 = *(v64 + 72);
        v46 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1C4F0D130;
        sub_1C4430900(v14, v47 + v46);
        sub_1C4431E64(v20, v21);
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v48 = type metadata accessor for ProgressTokens;
        v49 = v14;
      }

      else
      {
        v50 = v15[5];
        v51 = sub_1C4EFD548();
        v52 = v63;
        (*(*(v51 - 8) + 16))(v63, v4 + v50, v51);
        LOBYTE(v50) = *(v4 + v15[7]);
        v53 = v61;
        sub_1C4430900(v4 + v15[6], v52 + v61[6]);
        *(v52 + v53[5]) = v50;
        v54 = (v52 + v53[7]);
        *v54 = v20;
        v54[1] = v21;
        *(v52 + v53[8]) = v37;
        *(v52 + v53[9]) = v36 & 1;
        v55 = v4 + v15[8];
        v56 = *(v55 + *(type metadata accessor for PhaseStores() + 24));
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v57 = *(v62 + 72);
        v58 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1C4F0D130;
        sub_1C4430900(v52, v59 + v58);
        sub_1C4431E64(v20, v21);
        sub_1C449498C(v59);
        swift_setDeallocating();
        sub_1C4495394();
        v48 = type metadata accessor for ConstructionProgressTokens;
        v49 = v52;
      }

      sub_1C447E868(v49, v48);
      sub_1C441DFEC(v20, v21);
      break;
  }
}

uint64_t sub_1C44A7940@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Blocker();
  switch(*(v2 + *(v19 + 44)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 32);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF0D58, type metadata accessor for Blocker);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 32);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF0D58, type metadata accessor for Blocker);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t sub_1C44A7DA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C44A7E94()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 96) = v0;

  sub_1C440962C((v3 + 16));
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C44A7F98()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80) + 1;
  *(v0 + 80) = v2;
  if (v2 == v1)
  {
    sub_1C43FBDA0();

    v3();
  }

  else
  {
    v4 = *(v0 + 64);
    if (v2 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C442E860(v4 + 40 * v2 + 32, v0 + 16);
      v5 = sub_1C4475C04();
      v6(v5);
      *(v0 + 105) = *(v0 + 104);
      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      *v7 = v0;
      v8 = sub_1C442A464();

      ResumableStage.executeIfRequired(_:)(v8, v9, v10);
    }
  }
}

uint64_t PairGenerator.pipelineType.getter()
{
  result = sub_1C444B20C();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t PairGenerator.entityClass.getter()
{
  v2 = *(sub_1C444B20C() + 24);
  v3 = sub_1C4EFD548();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t PairGenerator.stageName.getter()
{
  result = sub_1C444B20C();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1C44A826C()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for PairGenerator();
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA508, &qword_1C4F14238);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C44A1BE0(v1[8]);
  sub_1C4475BB0();

  sub_1C44364AC();
  v9 = v1[5];
  sub_1C441925C();
  sub_1C44F090C(v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + v1[6];
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4482E7C();
  return sub_1C43FE658();
}

void sub_1C44A837C()
{
  *(v3 + *(v2 + 40)) = v1;
  *(v3 + *(v2 + 44)) = *(v4 - 128);
  v5 = *(v0 + 28);
}

uint64_t sub_1C44A83A4()
{

  return sub_1C4431E64(v0, v1);
}

void sub_1C44A83C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44A83EC@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C44A8434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return PairGenerator.execute()();
}

uint64_t PairGenerator.execute()()
{
  *(v1 + 32) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44A855C, 0, 0);
}

uint64_t sub_1C44A855C()
{
  v24 = v0;
  v1 = MEMORY[0x1E69E7CD0];
  v0[2] = MEMORY[0x1E69E7CD0];
  v0[3] = v1;
  v3 = v0[4];
  v2 = v0[5];
  v4 = *(v3 + *(type metadata accessor for PhaseStores() + 24));
  v5 = type metadata accessor for PairGenerator();
  v6 = *(v5 + 24);
  v7 = *(v5 + 28);
  v21 = *(v3 + v7);
  v8 = sub_1C4EFD548();
  sub_1C43FBCE0(v8);
  v20 = *(v9 + 16);
  v20(v2, v3 + v6, v8);
  sub_1C443F2D4();
  sub_1C44A8814(&v21, v2);
  sub_1C4420C3C(v2, &qword_1EC0B8568, &unk_1C4F319B0);
  v22 = *(v3 + v7);
  v10 = swift_task_alloc();
  v10[2] = v3;
  v10[3] = v0 + 2;
  v10[4] = v0 + 3;
  sub_1C44A8F2C(v3 + v6, &v22, 0, 1, sub_1C44D1DC0, v10);
  v11 = v0[4];

  v13 = v0[2];
  v12 = v0[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4A7C7A0(v13, v12);
  v15 = swift_task_alloc();
  *(v15 + 16) = v11;
  sub_1C44AA1F0(v14, sub_1C44D698C, v15);
  v17 = v0[4];
  v18 = v0[5];

  sub_1C4EF9AE8();
  sub_1C44AA7D4();
  v23[0] = *(v3 + v7);
  v20(v18, v3 + v6, v8);
  sub_1C443F2D4();
  sub_1C44A2734(v23, v18);
  sub_1C4420C3C(v18, &qword_1EC0B8568, &unk_1C4F319B0);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1C44A8850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v41 = a1;
  v36 = a3;
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_1C4EFD548();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BE540, &qword_1C4F37368);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  type metadata accessor for EntityPair(0);
  sub_1C4490890(&qword_1EDDFA0F8, type metadata accessor for EntityPair);
  sub_1C4EFADF8();
  if (qword_1EDDFA118 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4EFBD38();
  v21 = sub_1C442B738(v20, &unk_1EDE2DC90);
  v47 = v20;
  v48 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v46);
  (*(*(v20 - 8) + 16))(v22, v21, v20);
  v23 = 0xE700000000000000;
  v24 = 0x6E776F6E6B6E75;
  switch(v21)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v23 = 0xE400000000000000;
      v24 = 1819047270;
      goto LABEL_7;
    case 2:
      v23 = 0xE500000000000000;
      v24 = 0x61746C6564;
      goto LABEL_7;
    case 3:
      v23 = 0xEA0000000000676ELL;
      v24 = 0x69686374614D6F74;
LABEL_7:
      v44 = MEMORY[0x1E69E6158];
      v45 = MEMORY[0x1E69A0130];
      v42 = v24;
      v43 = v23;
      v50 = sub_1C4EFB298();
      v51 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v49);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v42, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v46);
      sub_1C4401CBC(&qword_1EDDFA300, &qword_1EC0BE540, &qword_1C4F37368);
      sub_1C4EFB438();
      (*(v11 + 8))(v19, v10);
      sub_1C440962C(v49);
      (*(v11 + 32))(v19, v17, v10);
      break;
    default:
      break;
  }

  sub_1C44A2E4C(v40, v6);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v26 = v38;
    v25 = v39;
    (*(v39 + 32))(v38, v6, v7);
    if (qword_1EDDFA120 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4EFBD38();
    v28 = sub_1C442B738(v27, qword_1EDE2DCA8);
    v47 = v27;
    v48 = MEMORY[0x1E69A0050];
    v29 = sub_1C4422F90(v46);
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v30 = sub_1C4EFD3D8();
    v44 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69A0130];
    v42 = v30;
    v43 = v31;
    v50 = sub_1C4EFB298();
    v51 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v49);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v42, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v46);
    sub_1C4401CBC(&qword_1EDDFA300, &qword_1EC0BE540, &qword_1C4F37368);
    v32 = v37;
    sub_1C4EFB438();
    (*(v25 + 8))(v26, v7);
    (*(v11 + 8))(v19, v10);
    sub_1C440962C(v49);
    (*(v11 + 32))(v19, v32, v10);
  }

  v33 = v52;
  v34 = sub_1C4EFB898();
  result = (*(v11 + 8))(v19, v10);
  if (!v33)
  {
    *v36 = v34;
  }

  return result;
}

uint64_t sub_1C44A8F2C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v55 = a5;
  v54 = a4;
  v53 = a3;
  v9 = sub_1C4EFD548();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  HIDWORD(v49) = *a2;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDE2E088);
  v19 = *(v12 + 16);
  v52 = a1;
  v19(v17, a1, v9);
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();
  if (os_log_type_enabled(v20, v21))
  {
    sub_1C43FEC60();
    v22 = swift_slowAlloc();
    v48 = v6;
    v58 = swift_slowAlloc();
    *v22 = 136315650;
    sub_1C441FC50();
    sub_1C4490890(v23, v24);
    v25 = sub_1C4F02858();
    v27 = v26;
    (*(v12 + 8))(v17, v9);
    v28 = sub_1C441D828(v25, v27, &v58);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = BYTE4(v49);
    v30 = sub_1C44A5D54(SBYTE4(v49));
    v32 = sub_1C441D828(v30, v31, &v58);

    *(v22 + 14) = v32;
    *(v22 + 22) = 2080;
    v33 = v53;
    v56 = v53;
    v34 = v54;
    v57 = v54 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v35 = sub_1C4F01198();
    v37 = sub_1C441D828(v35, v36, &v58);

    *(v22 + 24) = v37;
    _os_log_impl(&dword_1C43F8000, v20, v21, "GraphStore: blockPairingMap: e:%s p:%s t:%s", v22, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v38 = (*(v12 + 8))(v17, v9);
    v34 = v54;
    v33 = v53;
    v29 = BYTE4(v49);
  }

  v39 = *(*(v51 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v38);
  *(&v48 - 6) = v52;
  *(&v48 - 40) = v29;
  *(&v48 - 4) = v33;
  *(&v48 - 24) = v34 & 1;
  v40 = v50;
  *(&v48 - 2) = v55;
  *(&v48 - 1) = v40;

  sub_1C4418704(sub_1C44A9D54, (&v48 - 8), v41, v42, v43, v44, v45, v46, v48, v49);
}

uint64_t sub_1C44A92C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t (*a6)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a7)
{
  v74 = a6;
  v75 = a7;
  v64 = a5;
  v63 = a4;
  v68 = a3;
  v72 = a1;
  v7 = sub_1C456902C(&unk_1EC0BCA08, &qword_1C4F29B88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v61 - v9;
  v10 = type metadata accessor for EntityBlock(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v61 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v61 - v14;
  v66 = sub_1C456902C(&qword_1EC0BE538, &qword_1C4F37360);
  v73 = *(v66 - 8);
  v15 = *(v73 + 64);
  v16 = MEMORY[0x1EEE9AC00](v66);
  v62 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v61 - v21;
  if (qword_1EDDF9318 != -1)
  {
    swift_once();
  }

  v22 = sub_1C4EFBD38();
  v23 = sub_1C442B738(v22, qword_1EDE2DB30);
  v24 = MEMORY[0x1E69A0050];
  v81 = v22;
  v82 = MEMORY[0x1E69A0050];
  v25 = sub_1C4422F90(v80);
  v26 = *(*(v22 - 8) + 16);
  v26(v25, v23, v22);
  v27 = sub_1C4EFD3D8();
  v28 = MEMORY[0x1E69A0130];
  v78 = MEMORY[0x1E69E6158];
  v79 = MEMORY[0x1E69A0130];
  v76 = v27;
  v77 = v29;
  v30 = sub_1C4EFB298();
  v84 = v30;
  v85 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v83);
  sub_1C4EFBB28();
  sub_1C4420C3C(&v76, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v80);
  sub_1C4490890(&unk_1EDDF92F8, type metadata accessor for EntityBlock);
  v70 = v10;
  sub_1C4EFAE28();
  sub_1C440962C(v83);
  if (qword_1EDDF9308 != -1)
  {
    swift_once();
  }

  v31 = sub_1C442B738(v22, qword_1EDE2DB18);
  v81 = v22;
  v82 = v24;
  v32 = sub_1C4422F90(v80);
  v26(v32, v31, v22);
  v33 = 0xE700000000000000;
  v34 = 0x6E776F6E6B6E75;
  switch(v68)
  {
    case 1:
      v33 = 0xE400000000000000;
      v34 = 1819047270;
      break;
    case 2:
      v33 = 0xE500000000000000;
      v34 = 0x61746C6564;
      break;
    case 3:
      v33 = 0xEA0000000000676ELL;
      v34 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  v78 = MEMORY[0x1E69E6158];
  v79 = v28;
  v76 = v34;
  v77 = v33;
  v84 = v30;
  v85 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v83);
  sub_1C4EFBB28();
  sub_1C4420C3C(&v76, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v80);
  sub_1C4401CBC(&qword_1EDDFA2F0, &qword_1EC0BE538, &qword_1C4F37360);
  v35 = v69;
  v36 = v66;
  sub_1C4EFB438();
  v37 = *(v73 + 8);
  v68 = v73 + 8;
  v67 = v37;
  v37(v20, v36);
  sub_1C440962C(v83);
  v38 = v72;
  if ((v64 & 1) == 0)
  {
    if (qword_1EC0B6B90 != -1)
    {
      swift_once();
    }

    v39 = sub_1C442B738(v22, qword_1EC152198);
    v81 = v22;
    v82 = MEMORY[0x1E69A0050];
    v40 = sub_1C4422F90(v80);
    v26(v40, v39, v22);
    v78 = MEMORY[0x1E69E63B0];
    v79 = MEMORY[0x1E69A0160];
    v76 = v63;
    v84 = v30;
    v85 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v83);
    sub_1C4EFB808();
    sub_1C440962C(&v76);
    sub_1C440962C(v80);
    v41 = v62;
    v35 = v69;
    sub_1C4EFB438();
    v67(v35, v36);
    sub_1C440962C(v83);
    (*(v73 + 32))(v35, v41, v36);
  }

  sub_1C4401CBC(&qword_1EDDFA2F8, &qword_1EC0BE538, &qword_1C4F37360);
  sub_1C4490890(&qword_1EDDF92F0, type metadata accessor for EntityBlock);
  v42 = v65;
  v43 = sub_1C4EFAFD8();
  if (v42)
  {
    return (v67)(v35, v36);
  }

  *&v44 = 134218243;
  v65 = v44;
  v47 = v70;
  v46 = v71;
  v48 = v61;
  v49 = v86;
  v73 = v43;
  while (1)
  {
    sub_1C44A9D80();
    if (sub_1C44157D4(v46, 1, v47) == 1)
    {
      break;
    }

    sub_1C44D1B5C(v46, v49, type metadata accessor for EntityBlock);
    v50 = objc_autoreleasePoolPush();
    v51 = v74(v49, sub_1C4876F0C, v38);
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDE2E088);
    sub_1C4490938(v49, v48, type metadata accessor for EntityBlock);
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CB8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v83[0] = v56;
      *v55 = v65;
      *(v55 + 4) = v51;
      *(v55 + 12) = 2085;
      v58 = *v48;
      v57 = v48[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4491300(v48, type metadata accessor for EntityBlock);
      v59 = sub_1C441D828(v58, v57, v83);
      v38 = v72;

      *(v55 + 14) = v59;
      _os_log_impl(&dword_1C43F8000, v53, v54, "GraphStore: blockPairingMap: inserted %ld pairs for '%{sensitive}s'", v55, 0x16u);
      sub_1C440962C(v56);
      MEMORY[0x1C6942830](v56, -1, -1);
      v60 = v55;
      v47 = v70;
      v46 = v71;
      MEMORY[0x1C6942830](v60, -1, -1);
    }

    else
    {

      sub_1C4491300(v48, type metadata accessor for EntityBlock);
    }

    objc_autoreleasePoolPop(v50);
    v49 = v86;
    sub_1C4491300(v86, type metadata accessor for EntityBlock);
  }

  v67(v69, v66);

  return sub_1C4420C3C(v46, &unk_1EC0BCA08, &qword_1C4F29B88);
}

void sub_1C44A9D80()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BCA08, &qword_1C4F29B88);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  sub_1C442C998(&unk_1EDDFA3B0, &qword_1EC0BCA18, &qword_1C4F29B90);
  if (sub_1C440C4B0())
  {
    type metadata accessor for EntityBlock(0);
    v6 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v6, v7, v8, v9);
    goto LABEL_9;
  }

  sub_1C4406CA4(&qword_1EDDFA3C0, &qword_1EC0BCA18, &qword_1C4F29B90);
  sub_1C444FD58();
  v10 = sub_1C43FBE94();
  type metadata accessor for EntityBlock(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BCA08, &qword_1C4F29B88);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

uint64_t sub_1C44A9F00(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1C4EFD548();
    sub_1C442F908();
    sub_1C43FE688();

    return sub_1C440BAA8(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1C44A9F8C(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    sub_1C448E060();
    return (v3 + 1);
  }

  else
  {
    sub_1C4EFD548();
    v6 = sub_1C442F908();

    return sub_1C44157D4(v6, a2, v7);
  }
}

void sub_1C44AA008()
{
  sub_1C43FBD3C();
  v29 = v1;
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v28 = v7;
  v8 = *(*(sub_1C456902C(v7, v1) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = v4(0);
  sub_1C43FCDF8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - v18;
  if (*(*v0 + 16))
  {
    v20 = 1 << *(v6 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v6 + 56);
    v23 = (v20 + 63) >> 6;
    v27[1] = v14 + 8;
    v27[2] = v14 + 16;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = 0;
    if (v22)
    {
      while (1)
      {
LABEL_8:
        sub_1C441BBA8();
        (*(v14 + 16))(v19, *(v6 + 48) + *(v14 + 72) * v26, v12);
        v30(v19);
        (*(v14 + 8))(v19, v12);
        sub_1C4420C3C(v11, v28, v29);
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_10;
      }

      ++v24;
      if (*(v6 + 56 + 8 * v25))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C44AA1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a1;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2E088);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1C441D828(0xD000000000000010, 0x80000001C4FAEAC0, &v22);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1C441D828(0x6150797469746E45, 0xEA00000000007269, &v22);
    _os_log_impl(&dword_1C43F8000, v8, v9, "GraphStore: storingMap from %s to %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v11, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v12 = *(*(v4 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v13);
  v21[2] = &v23;
  v21[3] = a2;
  v21[4] = a3;

  sub_1C4418704(sub_1C44AA7B4, v21, v14, v15, v16, v17, v18, v19, v21[0], v21[1]);
}

uint64_t sub_1C44AA408(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v40 = a1;
  v39 = type metadata accessor for EntityPair(0);
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 + 56;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 56);
  v38 = (v18 + 63) >> 6;
  v35 = v13 + 16;
  v36 = (v13 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = 0;
  v29 = a2 + 56;
  v30 = v16;
  v33 = a4;
  v34 = a2;
  v31 = v13;
  v32 = v12;
LABEL_4:
  result = a2;
  if (!v20)
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_18;
      }

      if (v23 >= v38)
      {
      }

      v20 = *(v17 + 8 * v23);
      ++v21;
      if (v20)
      {
        goto LABEL_9;
      }
    }
  }

  v23 = v21;
LABEL_9:
  (*(v13 + 16))(v16, *(result + 48) + *(v13 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v12);
  v24 = v37(v16);
  if (!v5)
  {
    v25 = v24;
    v20 &= v20 - 1;
    result = (*v36)(v16, v12);
    v26 = 0;
    v27 = *(v25 + 16);
    while (1)
    {
      if (v27 == v26)
      {

        v21 = v23;
        a2 = v34;
        v13 = v31;
        v12 = v32;
        v17 = v29;
        v16 = v30;
        goto LABEL_4;
      }

      if (v26 >= *(v25 + 16))
      {
        break;
      }

      sub_1C4471A3C(v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, v11);
      sub_1C44D7248(&qword_1EDDFA0E0, type metadata accessor for EntityPair);
      sub_1C4EFB6A8();
      ++v26;
      result = sub_1C4485564(v11, type metadata accessor for EntityPair);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  (*v36)(v16, v12);
}

void sub_1C44AA7D4()
{
  sub_1C43FBD3C();
  v12 = sub_1C4435804(v9, v10, v11);
  v75 = sub_1C43FCDF8(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v16 = sub_1C4409ACC(v15, v73);
  v17 = sub_1C4412DFC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DF8();
  v20 = type metadata accessor for PairGenerator();
  v21 = sub_1C44158C8(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C4656BF8();
  }

  else
  {
    v25 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v25);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v6 = sub_1C4656BB0();
    sub_1C442C5A4();
    sub_1C4401CBC(v26, v27, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v74);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v28 = sub_1C4F00978();
        sub_1C43FCEE8(v28, qword_1EDE2DE10);
        v29 = sub_1C44623A0();
        sub_1C4430900(v29, v4);
        v30 = sub_1C4F00968();
        sub_1C4F01CD8();
        v31 = sub_1C44016D0();
        if (os_log_type_enabled(v31, v32))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v33 = swift_slowAlloc();
          sub_1C44305A4(v33);
          *v6 = 136315138;
          v34 = sub_1C43FE99C();
          sub_1C4430900(v34, v35);
          sub_1C447E868(v4, type metadata accessor for PairGenerator);
          sub_1C44A826C();
          sub_1C4450608();
          v36 = sub_1C447CB90();
          sub_1C441D828(v36, v4, v37);
          sub_1C4404CE0();

          *(v6 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v38, v39, "%s failed to update progress token");
          sub_1C440962C(v7);
          v40 = sub_1C4416E14();
          MEMORY[0x1C6942830](v40);
          v41 = sub_1C44068C0();
          MEMORY[0x1C6942830](v41);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C44A3A84();
    objc_autoreleasePoolPop(v74);
  }

  sub_1C4656BA4();
  sub_1C44AACB4(v42);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v76, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C440F3CC();
  v44(v43);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v0 + v5[7]))
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        v45 = sub_1C44D3DDC();
        sub_1C43FCE50(v45);
        v47 = *(v46 + 16);
        v48 = sub_1C440EDB0();
        v49(v48);
        sub_1C445AABC(v5[8]);
        v50 = v5[5];
        sub_1C441925C();
        sub_1C44EC814(v51);
        sub_1C44016BC();
        *v52 = v6;
        v52[1] = v8;
        sub_1C4422270();
        sub_1C446277C(v53);
        v54 = type metadata accessor for PhaseStores();
        sub_1C4460A18(v54);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v55 = sub_1C4404CB4();
        sub_1C4412DCC(v55, xmmword_1C4F0D130);
        sub_1C4461F3C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v56 = sub_1C43FFEF0();
      }

      else
      {
        v58 = sub_1C44D3DDC();
        sub_1C43FCE50(v58);
        v60 = *(v59 + 16);
        v61 = sub_1C4422A44();
        v62(v61);
        v63 = *(v0 + v5[8]);
        v64 = *(v75 + 24);
        v65 = v5[5];
        sub_1C441925C();
        sub_1C4656CBC(v66);
        v67 = sub_1C442A378();
        sub_1C4460A18(v67);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v68 = sub_1C4405904();
        sub_1C44068A0(v68, xmmword_1C4F0D130);
        sub_1C4430900(v3, v69);
        v70 = sub_1C4461F3C();
        sub_1C449498C(v70);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v56 = v3;
      }

      sub_1C447E868(v56, v57);
      v71 = sub_1C44191B8();
      sub_1C441DFEC(v71, v72);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44AACB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PairGenerator();
  switch(*(v2 + *(v19 + 28)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF8048, type metadata accessor for PairGenerator);
        v22 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v22);
        sub_1C44FEF34(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v23 = &unk_1EC0BA4B8;
          v24 = &unk_1C4F16F60;
          v25 = v14;
LABEL_8:
          result = sub_1C4420C3C(v25, v23, v24);
          v30 = v35;
          *(v35 + 32) = 0;
          *v30 = 0u;
          v30[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v31 = v35;
        *(v35 + 24) = v15;
        v31[4] = &off_1F43EE918;
        v32 = sub_1C4422F90(v31);
        v33 = v18;
      }

      else
      {
        v26 = v10;
        v27 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
        v37 = v19;
        v38 = sub_1C447CB3C(&qword_1EDDF8048, type metadata accessor for PairGenerator);
        v28 = sub_1C4422F90(v36);
        sub_1C4430900(v2, v28);
        sub_1C449D50C(v36, 0);
        sub_1C440962C(v36);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v23 = &unk_1EC0BAC20;
          v24 = &unk_1C4F141E0;
          v25 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v26);
        v34 = v35;
        *(v35 + 24) = v7;
        v34[4] = &off_1F43EE970;
        v32 = sub_1C4422F90(v34);
        v33 = v26;
      }

      return sub_1C449F338(v33, v32);
  }
}

uint64_t sub_1C44AB104@<X0>(uint64_t *a1@<X2>, unsigned __int16 a2@<W8>)
{

  return sub_1C4610B78(a2, 1, a1);
}

uint64_t sub_1C44AB11C()
{

  return sub_1C447E868(v1, v0);
}

void sub_1C44AB134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = *v22;
  v28 = *(v23 - 128);
  v27 = *(v23 - 120);
  v29 = *(v23 - 108);

  sub_1C4601D10(v27, v29, v28, a1, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C44AB158()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44AB174()
{

  return sub_1C4F00FE8();
}

id sub_1C44AB1A0(uint64_t a1, const char *a2)
{
  *(v4 - 488) = v2;

  return [v2 a2];
}

uint64_t sub_1C44AB1E0(float a1)
{
  *v3 = a1;
  *(v2 + 96) = v1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44AB1FC()
{
  v2 = *(v0 - 272);

  return swift_beginAccess();
}

uint64_t sub_1C44AB224@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *(v2 - 112);
  *v3 = *(v2 - 120);
  v3[1] = result;
  return result;
}

void sub_1C44AB234()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44AB258()
{
  v4 = *(v2 + 32);
  result = *(v1 + 48) + v0;
  v6 = *(v3 - 96);
  return result;
}

uint64_t sub_1C44AB280()
{

  return sub_1C4F01148();
}

uint64_t sub_1C44AB2A0()
{

  return sub_1C4471BAC(v0, v1);
}

uint64_t sub_1C44AB2D4()
{
  v2 = *(*(v1 - 160) + 8);
  result = v0;
  v4 = *(v1 - 136);
  return result;
}

uint64_t PassthroughMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PassthroughMatcher();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PassthroughMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassthroughMatcher() + 28);
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1C44AB4C4()
{
  sub_1C44A1E40();
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v7 = type metadata accessor for PassthroughMatcher();
  sub_1C4471CA0(v7);
  sub_1C456902C(&qword_1EC0BA500, &qword_1C4F14230);
  v8 = sub_1C4485A60();
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  sub_1C441925C();
  v9 = sub_1C4402CD0();
  sub_1C4430900(v9, v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  v12 = v0 + *(v1 + 28);
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C448D934(*(v0 + *(v1 + 20)));
  return sub_1C43FE658();
}

uint64_t sub_1C44AB5C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return PassthroughMatcher.execute()();
}

uint64_t PassthroughMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44AB6F0, 0, 0);
}

uint64_t sub_1C44AB6F0()
{
  v37 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for PassthroughMatcher();
  v4 = v2 + v3[6];
  v5 = *(v4 + *(type metadata accessor for PhaseStores() + 24));
  v6 = v3[5];
  LOBYTE(v36[0]) = *(v2 + v6);
  v7 = v3[7];
  v8 = sub_1C4EFD548();
  sub_1C43FBCE0(v8);
  v35 = *(v9 + 16);
  v35(v1, v2 + v7, v8);
  sub_1C43FBD94();
  sub_1C440BAA8(v10, v11, v12, v8);
  sub_1C44ABA54(v36, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v2 + v6))
  {
    case 1:
    case 3:
      v3 = v0[3];
      *(swift_task_alloc() + 16) = v3;
      sub_1C442D110();
      sub_1C44AC170(v13, v14, v15, v16, v17, v18);
      goto LABEL_5;
    case 2:
      v21 = v0[3];
      *(swift_task_alloc() + 16) = v21;
      sub_1C442D110();
      sub_1C46CE408(v22, v23, v24, v25, v26, v27);
LABEL_5:

      if (v3)
      {
        v28 = v0[4];
      }

      else
      {
        v30 = v0[3];
        v31 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C44ADB10();
        LOBYTE(v36[0]) = *(v2 + v6);
        v35(v31, v2 + v7, v8);
        sub_1C43FBD94();
        sub_1C440BAA8(v32, v33, v34, v8);
        sub_1C44A8814(v36, v31);
        sub_1C4420C3C(v31, &qword_1EC0B8568, &unk_1C4F319B0);
      }

      v29 = v0[1];

      result = v29();
      break;
    default:
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA500, &qword_1C4F14230);
      v19 = sub_1C4F01198();
      MEMORY[0x1C6940010](v19);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v6));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C44ABA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v41 = a1;
  v36 = a3;
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_1C4EFD548();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BE530, &qword_1C4F37358);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  type metadata accessor for EntityMatch(0);
  sub_1C4490890(&qword_1EDDF91E8, type metadata accessor for EntityMatch);
  sub_1C4EFADF8();
  if (qword_1EDDF9200 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4EFBD38();
  v21 = sub_1C442B738(v20, qword_1EDE2DAE8);
  v47 = v20;
  v48 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v46);
  (*(*(v20 - 8) + 16))(v22, v21, v20);
  v23 = 0xE700000000000000;
  v24 = 0x6E776F6E6B6E75;
  switch(v21)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v23 = 0xE400000000000000;
      v24 = 1819047270;
      goto LABEL_7;
    case 2:
      v23 = 0xE500000000000000;
      v24 = 0x61746C6564;
      goto LABEL_7;
    case 3:
      v23 = 0xEA0000000000676ELL;
      v24 = 0x69686374614D6F74;
LABEL_7:
      v44 = MEMORY[0x1E69E6158];
      v45 = MEMORY[0x1E69A0130];
      v42 = v24;
      v43 = v23;
      v50 = sub_1C4EFB298();
      v51 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v49);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v42, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v46);
      sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358);
      sub_1C4EFB438();
      (*(v11 + 8))(v19, v10);
      sub_1C440962C(v49);
      (*(v11 + 32))(v19, v17, v10);
      break;
    default:
      break;
  }

  sub_1C44A2E4C(v40, v6);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v26 = v38;
    v25 = v39;
    (*(v39 + 32))(v38, v6, v7);
    if (qword_1EDDF9208 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4EFBD38();
    v28 = sub_1C442B738(v27, qword_1EDE2DB00);
    v47 = v27;
    v48 = MEMORY[0x1E69A0050];
    v29 = sub_1C4422F90(v46);
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v30 = sub_1C4EFD3D8();
    v44 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69A0130];
    v42 = v30;
    v43 = v31;
    v50 = sub_1C4EFB298();
    v51 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v49);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v42, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v46);
    sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358);
    v32 = v37;
    sub_1C4EFB438();
    (*(v25 + 8))(v26, v7);
    (*(v11 + 8))(v19, v10);
    sub_1C440962C(v49);
    (*(v11 + 32))(v19, v32, v10);
  }

  v33 = v52;
  v34 = sub_1C4EFB898();
  result = (*(v11 + 8))(v19, v10);
  if (!v33)
  {
    *v36 = v34;
  }

  return result;
}

uint64_t sub_1C44AC19C(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a7;
  v59 = a3;
  v56 = a6;
  v61 = a4;
  v11 = sub_1C4EFD548();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDE2E088);
  v20 = *(v14 + 16);
  v57 = a1;
  v20(v18, a1, v11);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v55 = v7;
    v24 = v23;
    v54 = swift_slowAlloc();
    v64 = v54;
    *v24 = 136315650;
    sub_1C44AC538(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    v53 = v21;
    v25 = sub_1C4F02858();
    HIDWORD(v52) = v22;
    v27 = v26;
    (*(v14 + 8))(v18, v11);
    v28 = sub_1C441D828(v25, v27, &v64);
    v29 = a2;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v30 = sub_1C44A5D54(a2);
    v32 = sub_1C441D828(v30, v31, &v64);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2080;
    v33 = v59;
    v62 = v59;
    v34 = v61;
    v63 = v61 & 1;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    v35 = sub_1C4F01198();
    v37 = sub_1C441D828(v35, v36, &v64);

    *(v24 + 24) = v37;
    v38 = v53;
    _os_log_impl(&dword_1C43F8000, v53, BYTE4(v52), "GraphStore: tripleMatchingMap: e:%s p:%s t:%s", v24, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v39 = (*(v14 + 8))(v18, v11);
    v34 = v61;
    v33 = v59;
    v29 = a2;
  }

  v40 = *(*(v60 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v57;
  *(&v51 - 8) = v42;
  *(&v51 - 7) = v41;
  *(&v51 - 48) = v29;
  *(&v51 - 5) = v33;
  *(&v51 - 32) = v34 & 1;
  v43 = v56;
  *(&v51 - 3) = a5;
  *(&v51 - 2) = v43;

  sub_1C4418704(v58, (&v51 - 10), v44, v45, v46, v47, v48, v49, v51, v52);
}

uint64_t sub_1C44AC538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C44AC5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), int a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v73 = a8;
  v72 = a7;
  LODWORD(v79) = a6;
  v80 = a2;
  v81 = a5;
  v11 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v78 = *(v11 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v62 - v13;
  v15 = sub_1C456902C(&qword_1EC0BA588, &unk_1C4F142B0);
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v76 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v62 - v19;
  v21 = sub_1C456902C(&unk_1EC0BCAC0, &qword_1C4F1F438);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v75 = v62 - v23;
  v74 = type metadata accessor for EntityPair(0);
  v24 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v26 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v91) = a4;

  v28 = v82;
  v29 = sub_1C44AD0F8(v27, a3, &v91, 1, v81, v79 & 1);
  if (v28)
  {
  }

  v31 = v29;
  v84 = a1;
  v68 = v20;
  v69 = v15;
  v64 = v14;
  v71 = a4;
  v65 = v11;
  v62[1] = type metadata accessor for ConstructionGraphTriple(0);
  v66 = type metadata accessor for EntityTriple(0);
  v67 = (v77 + 8);
  v63 = (v78 + 8);
  v32 = v76;
  v33 = v75;
  v34 = v74;
  v83 = v26;
  v70 = v31;
  while (1)
  {
    sub_1C44AD7D0();
    v35 = v71;
    if (sub_1C44157D4(v33, 1, v34) == 1)
    {

      return sub_1C4420C3C(v33, &unk_1EC0BCAC0, &qword_1C4F1F438);
    }

    sub_1C4471E9C(v33, v26);
    v89 = &type metadata for SourcedTripleColumn;
    v90 = sub_1C44964E4();
    LOBYTE(v88[0]) = 8;
    v36 = 0xE700000000000000;
    v37 = 0x6E776F6E6B6E75;
    v38 = v90;
    v82 = 0;
    switch(v35)
    {
      case 1:
        v36 = 0xE400000000000000;
        v37 = 1819047270;
        break;
      case 2:
        v36 = 0xE500000000000000;
        v37 = 0x61746C6564;
        break;
      case 3:
        v36 = 0xEA0000000000676ELL;
        v37 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v86 = MEMORY[0x1E69E6158];
    v87 = MEMORY[0x1E69A0130];
    v85[0] = v37;
    v85[1] = v36;
    v39 = sub_1C4EFB298();
    v92 = v39;
    v40 = MEMORY[0x1E699FE60];
    v93 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v91);
    sub_1C4EFBB28();
    sub_1C4420C3C(v85, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v88);
    v81 = type metadata accessor for EntityTriple;
    sub_1C44AC538(&qword_1EDDF8DB0, type metadata accessor for EntityTriple);
    sub_1C4EFAE28();
    sub_1C440962C(&v91);
    v89 = &type metadata for SourcedTripleColumn;
    v90 = v38;
    LOBYTE(v88[0]) = 0;
    v41 = *(v34 + 20);
    v42 = v32;
    v43 = v34;
    v44 = sub_1C4EFF0C8();
    v86 = v44;
    v78 = sub_1C44AC538(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
    v87 = v78;
    v45 = sub_1C4422F90(v85);
    v46 = *(v44 - 8);
    v79 = *(v46 + 16);
    v77 = v46 + 16;
    v79(v45, &v26[v41], v44);
    v80 = v39;
    v92 = v39;
    v93 = v40;
    sub_1C4422F90(&v91);
    sub_1C4EFBB28();
    sub_1C4420C3C(v85, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v88);
    sub_1C4401CBC(&qword_1EDDFA2C8, &qword_1EC0BA588, &unk_1C4F142B0);
    v47 = v68;
    v48 = v69;
    sub_1C4EFB438();
    v49 = *v67;
    (*v67)(v42, v48);
    sub_1C440962C(&v91);
    sub_1C4401CBC(&qword_1EDDFA2D8, &qword_1EC0BA588, &unk_1C4F142B0);
    sub_1C44AC538(&qword_1EDDF8DA0, v81);
    v50 = v82;
    v51 = sub_1C4EFAFE8();
    if (v50)
    {
      break;
    }

    v52 = v51;
    v49(v47, v48);
    v94 = 0;
    v53 = *(v43 + 24);
    if (qword_1EDDFA100 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v44, qword_1EDE2DC60);
    sub_1C44AC538(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
    v54 = v83;
    if (sub_1C4F010B8())
    {
      v55 = v84;
    }

    else
    {
      v56 = v52;
      v89 = sub_1C4EFBD38();
      v90 = MEMORY[0x1E69A0050];
      sub_1C4422F90(v88);
      sub_1C4EFBD48();
      v86 = v44;
      v87 = v78;
      v57 = sub_1C4422F90(v85);
      v79(v57, (v54 + v53), v44);
      v92 = v80;
      v93 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v91);
      sub_1C4EFBB28();
      sub_1C4420C3C(v85, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v88);
      sub_1C44AC538(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple);
      v58 = v64;
      sub_1C4EFAE28();
      sub_1C440962C(&v91);
      sub_1C4401CBC(&qword_1EDDF00B0, &qword_1EC0BA580, &unk_1C4F32530);
      sub_1C44AC538(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple);
      v55 = v84;
      v59 = v65;
      v60 = sub_1C4EFAFE8();
      (*v63)(v58, v59);
      v94 = v60;
      v52 = v56;
    }

    v61 = objc_autoreleasePoolPush();
    sub_1C44DC904(v72, v73, v52, &v94, v55, v55);
    v32 = v76;
    v33 = v75;
    v34 = v74;
    objc_autoreleasePoolPop(v61);

    v26 = v83;
    sub_1C44DBD04(v83, type metadata accessor for EntityPair);
  }

  v49(v47, v48);
  return sub_1C44DBD04(v83, type metadata accessor for EntityPair);
}

uint64_t sub_1C44AD0F8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, uint64_t a5, int a6)
{
  v52 = a6;
  v48 = a5;
  v51 = a4;
  v54 = a1;
  v7 = sub_1C456902C(&qword_1EC0BE540, &qword_1C4F37368);
  v8 = sub_1C43FCDF8(v7);
  v67 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v47 - v20;
  v50 = *a3;
  type metadata accessor for EntityPair(0);
  if (qword_1EDDFA120 != -1)
  {
    swift_once();
  }

  v21 = sub_1C4EFBD38();
  v22 = sub_1C442B738(v21, qword_1EDE2DCA8);
  v62 = v21;
  v63 = MEMORY[0x1E69A0050];
  v23 = sub_1C4422F90(v61);
  v24 = *(v21 - 8);
  v25 = *(v24 + 16);
  v26 = v24 + 16;
  v25(v23, v22, v21);
  v27 = sub_1C4EFD3D8();
  v59 = MEMORY[0x1E69E6158];
  v60 = MEMORY[0x1E69A0130];
  v57 = v27;
  v58 = v28;
  v29 = sub_1C4EFB298();
  v65 = v29;
  v66 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v64);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v57, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v61);
  sub_1C44004F8();
  sub_1C4490890(v30, v31);
  sub_1C4EFAE28();
  sub_1C440962C(v64);
  if (qword_1EDDFA118 != -1)
  {
    swift_once();
  }

  v32 = sub_1C442B738(v21, &unk_1EDE2DC90);
  v62 = v21;
  v63 = MEMORY[0x1E69A0050];
  v33 = sub_1C4422F90(v61);
  v25(v33, v32, v21);
  v34 = 0xE700000000000000;
  v35 = 0x6E776F6E6B6E75;
  v55 = v26;
  v56 = v25;
  switch(v50)
  {
    case 1:
      v34 = 0xE400000000000000;
      v35 = 1819047270;
      break;
    case 2:
      v34 = 0xE500000000000000;
      v35 = 0x61746C6564;
      break;
    case 3:
      v34 = 0xEA0000000000676ELL;
      v35 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  v59 = MEMORY[0x1E69E6158];
  v60 = MEMORY[0x1E69A0130];
  v57 = v35;
  v58 = v34;
  v65 = v29;
  v66 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v64);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v57, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v61);
  sub_1C4401CBC(&qword_1EDDFA300, &qword_1EC0BE540, &qword_1C4F37368);
  sub_1C441731C();
  v36 = *(v67 + 8);
  v36(v16, v7);
  sub_1C440962C(v64);
  if (qword_1EDDFA108 != -1)
  {
    swift_once();
  }

  v37 = sub_1C442B738(v21, &unk_1EDE2DC78);
  v62 = v21;
  v63 = MEMORY[0x1E69A0050];
  v38 = sub_1C4422F90(v61);
  v56(v38, v37, v21);
  v65 = v29;
  v66 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v64);
  sub_1C4EFBB38();
  sub_1C440962C(v61);
  v39 = v53;
  sub_1C4EFB438();
  v36(v19, v7);
  sub_1C440962C(v64);
  if ((v52 & 1) == 0)
  {
    if (qword_1EC0B6BA0 != -1)
    {
      swift_once();
    }

    v40 = sub_1C442B738(v21, qword_1EC1521B0);
    v62 = v21;
    v63 = MEMORY[0x1E69A0050];
    v41 = sub_1C4422F90(v61);
    v56(v41, v40, v21);
    v59 = MEMORY[0x1E69E63B0];
    v60 = MEMORY[0x1E69A0160];
    v57 = v48;
    v65 = v29;
    v66 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v64);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(&v57);
    sub_1C440962C(v61);
    v42 = v49;
    sub_1C441731C();
    v36(v39, v7);
    sub_1C440962C(v64);
    (*(v67 + 32))(v39, v42, v7);
  }

  sub_1C4401CBC(&qword_1EDDFA308, &qword_1EC0BE540, &qword_1C4F37368);
  sub_1C44004F8();
  sub_1C4490890(v43, v44);
  v45 = sub_1C4EFAFD8();
  v36(v39, v7);
  return v45;
}

void sub_1C44AD7D0()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BCAC0, &qword_1C4F1F438);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  sub_1C442C998(&unk_1EDDFA3C8, &unk_1EC0BCAD0, &unk_1C4F29BD0);
  if (sub_1C440C4B0())
  {
    type metadata accessor for EntityPair(0);
    v6 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v6, v7, v8, v9);
    goto LABEL_9;
  }

  sub_1C4406CA4(&qword_1EDDFA3D8, &unk_1EC0BCAD0, &unk_1C4F29BD0);
  sub_1C444FD58();
  v10 = sub_1C43FBE94();
  type metadata accessor for EntityPair(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BCAC0, &qword_1C4F1F438);
      sub_1C4410BE4();
      sub_1C4EFB4C8();
      sub_1C440D3D8();
    }

    else
    {
      sub_1C44951D4();
      sub_1C4460210();
    }

    sub_1C4404EB4();
    goto LABEL_8;
  }

LABEL_9:
  sub_1C441B8EC();
  sub_1C44102DC();
}

uint64_t sub_1C44AD950()
{
  sub_1C43FC36C();
  v4 = sub_1C4EFD548();
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = sub_1C4EFF0C8();
    result = sub_1C43FCF8C(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 28)) = v0 + 1;
      return result;
    }

    sub_1C442F908();
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v9, v10, v11, v12);
}

uint64_t sub_1C44ADA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FECE0();
  v6 = sub_1C4EFD548();
  sub_1C43FCF8C(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1C4404F74();
  }

  else
  {
    v10 = sub_1C4EFF0C8();
    sub_1C43FCF8C(v10);
    if (*(v11 + 84) != v3)
    {
      v13 = *(v4 + *(a3 + 28));
      if (v13 >= 2)
      {
        return sub_1C4424974(v13);
      }

      else
      {
        return 0;
      }
    }

    v8 = sub_1C442F908();
  }

  return sub_1C44157D4(v8, v3, v9);
}

void sub_1C44ADB10()
{
  sub_1C43FBD3C();
  v10 = sub_1C4435804(v7, v8, v9);
  v70 = sub_1C43FCDF8(v10);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v14 = sub_1C4409ACC(v13, v68);
  v15 = sub_1C43FCDF8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4416DF8();
  v18 = type metadata accessor for PassthroughMatcher();
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C444BFD8();
  }

  else
  {
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v5 = sub_1C4475260();
    sub_1C442C5A4();
    sub_1C4401CBC(v24, v25, &dword_1C4F141D0);
    sub_1C4461C04();
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v69);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DE10);
        v27 = sub_1C44623A0();
        sub_1C4430900(v27, v4);
        v28 = sub_1C4F00968();
        sub_1C4F01CD8();
        v29 = sub_1C44016D0();
        if (os_log_type_enabled(v29, v30))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v31 = swift_slowAlloc();
          sub_1C44305A4(v31);
          *v5 = 136315138;
          v32 = sub_1C43FE99C();
          sub_1C4430900(v32, v33);
          sub_1C447E868(v4, type metadata accessor for PassthroughMatcher);
          sub_1C44AB4C4();
          sub_1C4450608();
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C4404CE0();

          *(v5 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v69);
  }

  sub_1C4656BA4();
  sub_1C44AE184(v40);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v71, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C440F3CC();
  v42(v41);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  switch(*(v0 + *(v18 + 20)))
  {
    case 1:
      sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC();
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        v43 = sub_1C44C0438();
        sub_1C43FCE50(v43);
        v45 = *(v44 + 16);
        v46 = sub_1C440EDB0();
        v47(v46);
        v48 = *(v14 + 24);
        sub_1C441925C();
        sub_1C4656BC8(v49);
        *(v6 + *(v14 + 20)) = 2;
        sub_1C441C838();
        v50 = *(v18 + 24);
        v51 = sub_1C4457890();
        sub_1C4460A18(v51);
        sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v52 = sub_1C4404CB4();
        sub_1C4412DCC(v52, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v53 = sub_1C43FFEF0();
      }

      else
      {
        v55 = sub_1C44C0438();
        sub_1C43FCE50(v55);
        v57 = *(v56 + 16);
        v58 = sub_1C4422A44();
        v59(v58);
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C4475344(v60);
        sub_1C442B994(MEMORY[0xE700000000000014]);
        v61 = *(v18 + 24);
        v62 = sub_1C4457890();
        sub_1C4460A18(v62);
        sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v63 = sub_1C4405904();
        sub_1C44068A0(v63, xmmword_1C4F0D130);
        sub_1C4430900(v3, v64);
        v65 = sub_1C447EF78();
        sub_1C449498C(v65);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v53 = v3;
      }

      sub_1C447E868(v53, v54);
      v66 = sub_1C43FC0A8();
      sub_1C441DFEC(v66, v67);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44ADFF0()
{
  v2 = *(v0 - 208);

  return sub_1C4EF9C18();
}

__n128 *sub_1C44AE010(__n128 *result, __n128 a2)
{
  *(v2 - 112) = a2;
  result[1] = a2;
  return result;
}

uint64_t sub_1C44AE01C@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  v2[1] = a1;

  return sub_1C4EF9CD8();
}

unint64_t sub_1C44AE054()
{
  v3 = (v0 + *(v1 + 28));
  v4 = *v3;
  v5 = v3[1];
  *(v2 - 88) = *v3;
  *(v2 - 80) = v5;
  *(v2 - 65) = 3;
  sub_1C4431E64(v4, v5);

  return sub_1C446E5F8();
}

uint64_t sub_1C44AE090()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 384);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44AE0B0()
{

  return sub_1C44BCC4C(v0, type metadata accessor for SourceIdPrefix);
}

uint64_t sub_1C44AE0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = a10;
  v12 = *(v10 + 34);
  return result;
}

uint64_t sub_1C44AE128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C440BAA8(a1, a2, a3, v3);
  v6 = *(v4 + 20);
  return result;
}

uint64_t sub_1C44AE16C()
{
  v2 = (v1 + *(v0 + 40));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v0 + 44);
  return 0;
}

uint64_t sub_1C44AE184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for ConstructionProgressTokens(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38[-1] - v13;
  v15 = type metadata accessor for ProgressTokens(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PassthroughMatcher();
  switch(*(v2 + *(v19 + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_4:
        v21 = v2 + *(v19 + 24);
        v22 = *(v21 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF4ED8, type metadata accessor for PassthroughMatcher);
        v23 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v23);
        sub_1C44FEF34(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v14, 1, v15) == 1)
        {
          v24 = &unk_1EC0BA4B8;
          v25 = &unk_1C4F16F60;
          v26 = v14;
LABEL_8:
          result = sub_1C4420C3C(v26, v24, v25);
          v32 = v37;
          *(v37 + 32) = 0;
          *v32 = 0u;
          v32[1] = 0u;
          return result;
        }

        sub_1C449F338(v14, v18);
        v33 = v37;
        *(v37 + 24) = v15;
        v33[4] = &off_1F43EE918;
        v34 = sub_1C4422F90(v33);
        v35 = v18;
      }

      else
      {
        v27 = v10;
        v28 = v2 + *(v19 + 24);
        v29 = *(v28 + *(type metadata accessor for PhaseStores() + 24));
        v39 = v19;
        v40 = sub_1C447CB3C(&qword_1EDDF4ED8, type metadata accessor for PassthroughMatcher);
        v30 = sub_1C4422F90(v38);
        sub_1C4430900(v2, v30);
        sub_1C449D50C(v38, 0);
        sub_1C440962C(v38);
        if (sub_1C44157D4(v6, 1, v7) == 1)
        {
          v24 = &unk_1EC0BAC20;
          v25 = &unk_1C4F141E0;
          v26 = v6;
          goto LABEL_8;
        }

        sub_1C449F338(v6, v27);
        v36 = v37;
        *(v37 + 24) = v7;
        v36[4] = &off_1F43EE970;
        v34 = sub_1C4422F90(v36);
        v35 = v27;
      }

      return sub_1C449F338(v35, v34);
  }
}

uint64_t Resolver.pipelineType.getter()
{
  sub_1C44059B8();
  result = type metadata accessor for Resolver();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t Resolver.source.getter()
{
  sub_1C44059B8();
  v2 = *(type metadata accessor for Resolver() + 20);
  sub_1C44201A8();
  return sub_1C4471AF0(v1 + v3, v0);
}

uint64_t Resolver.stageName.getter()
{
  sub_1C44059B8();
  result = type metadata accessor for Resolver();
  *v0 = *(v1 + *(result + 24));
  return result;
}

void sub_1C44AE730()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4433190();
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4414930();
  sub_1C4440948();
  v10 = type metadata accessor for Resolver();
  sub_1C4429020(v10);
  sub_1C456902C(&qword_1EC0BA4F0, &qword_1C4F14220);
  v11 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v11);

  sub_1C441DC78();
  v12 = sub_1C44A3BBC(*(v0 + 24));
  MEMORY[0x1C6940010](v12);

  sub_1C44364AC();
  v13 = *(v0 + 20);
  sub_1C441925C();
  sub_1C447F6A4(v14);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v15);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v16 = sub_1C441B798();
  v17(v16);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C44AE8A4()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C44AE8E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C44AE900()
{
  v3 = *(v1 - 104);

  return sub_1C4471BAC(v3, v0);
}

uint64_t sub_1C44AE940@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C44AE960()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return Resolver.execute()();
}

uint64_t Resolver.execute()()
{
  v1[4] = v0;
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1C4EFD548();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Source();
  v1[9] = v8;
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44AEB0C, 0, 0);
}

uint64_t sub_1C44AEB0C()
{
  v151 = v0;
  v1 = v0 + 2;
  v2 = v0[4];
  v3 = type metadata accessor for PhaseStores();
  v4 = *(v2 + *(v3 + 24));
  v5 = type metadata accessor for Resolver();
  v135 = *(v5 + 28);
  v150[0] = *(v2 + v135);
  v6 = v150[0];
  sub_1C44AF8F4(v150);
  v7 = *(v2 + *(v3 + 36));
  v8 = *(v7 + 16);
  switch(v6)
  {
    case 2:

      goto LABEL_5;
    default:
      v9 = sub_1C4F02938();

      if (v9)
      {

LABEL_5:
        v8 = *(v7 + 24);
      }

      v144 = v8;
      v10 = v0[10];
      v11 = (v0[4] + *(v5 + 20));
      sub_1C44201A8();
      sub_1C4471AF0(v11, v12);
      if (qword_1EDDFED28 != -1)
      {
        sub_1C440FADC();
      }

      v13 = v0[10];
      v14 = sub_1C442B738(v0[9], &unk_1EDDFD088);
      v15 = v13[1];
      v16 = *v14 == *v13 && v14[1] == v15;
      if (!v16 && (sub_1C440FAC0() & 1) == 0)
      {
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4410520();
        }

        sub_1C44008C8(v0[9], qword_1EDDFD0D8);
        v18 = v16 && v17 == v15;
        if (!v18 && (sub_1C440FAC0() & 1) == 0)
        {
          if (qword_1EDDFED08 != -1)
          {
            sub_1C440B19C();
          }

          sub_1C44008C8(v0[9], qword_1EDDFED10);
          v20 = v16 && v19 == v15;
          if (!v20 && (sub_1C440FAC0() & 1) == 0)
          {
            if (qword_1EDDFED40 != -1)
            {
              sub_1C440604C();
            }

            sub_1C44008C8(v0[9], qword_1EDDFD2A8);
            v22 = v16 && v21 == v15;
            if (!v22 && (sub_1C440FAC0() & 1) == 0)
            {
              if (qword_1EDDFD268 != -1)
              {
                sub_1C4404CEC();
              }

              sub_1C44008C8(v0[9], &qword_1EDDFD270);
              v24 = v16 && v23 == v15;
              if (!v24 && (sub_1C440FAC0() & 1) == 0)
              {
                if (qword_1EDDFD110 != -1)
                {
                  sub_1C4403664();
                }

                sub_1C44008C8(v0[9], qword_1EDDFD118);
                v26 = v16 && v25 == v15;
                if (!v26 && (sub_1C440FAC0() & 1) == 0)
                {
                  if (qword_1EDDFD068 != -1)
                  {
                    sub_1C44123D8();
                  }

                  sub_1C44008C8(v0[9], qword_1EDDFD070);
                  v28 = v16 && v27 == v15;
                  if (!v28 && (sub_1C440FAC0() & 1) == 0)
                  {
                    if (qword_1EDDFD130 != -1)
                    {
                      sub_1C44123B8();
                    }

                    sub_1C44008C8(v0[9], qword_1EDDFD138);
                    v30 = v16 && v29 == v15;
                    if (!v30 && (sub_1C440FAC0() & 1) == 0)
                    {
                      v31 = v2;
                      v32 = v0;
                      if (qword_1EDDFD0A8 != -1)
                      {
                        sub_1C440FA20();
                      }

                      v33 = sub_1C4433704();
                      sub_1C44008C8(v33, qword_1EDDFD0B0);
                      v35 = v16 && v34 == v15;
                      if (!v35 && (sub_1C440FAC0() & 1) == 0)
                      {
                        if (qword_1EDDFD178 != -1)
                        {
                          sub_1C4426D64();
                        }

                        v36 = sub_1C4433704();
                        sub_1C44008C8(v36, &qword_1EDDFD180);
                        v38 = v16 && v37 == v15;
                        if (!v38 && (sub_1C440FAC0() & 1) == 0)
                        {
                          if (qword_1EDDFED38 != -1)
                          {
                            sub_1C443FF4C();
                          }

                          v39 = sub_1C4433704();
                          sub_1C44008C8(v39, qword_1EDDFD0F0);
                          v41 = v16 && v40 == v15;
                          if (!v41 && (sub_1C440FAC0() & 1) == 0)
                          {
                            if (qword_1EDDFD150 != -1)
                            {
                              sub_1C4416380();
                            }

                            v42 = sub_1C4433704();
                            sub_1C44008C8(v42, qword_1EDDFD158);
                            v44 = v16 && v43 == v15;
                            if (!v44 && (sub_1C440FAC0() & 1) == 0)
                            {
                              if (qword_1EDDFD2F0 != -1)
                              {
                                sub_1C44253D4();
                              }

                              v45 = sub_1C4433704();
                              sub_1C44008C8(v45, qword_1EDDFD2F8);
                              v47 = v16 && v46 == v15;
                              if (!v47 && (sub_1C440FAC0() & 1) == 0)
                              {
                                if (qword_1EDDFD218 != -1)
                                {
                                  sub_1C441BC54();
                                }

                                v48 = sub_1C4433704();
                                sub_1C44008C8(v48, &qword_1EDDFD220);
                                v50 = v16 && v49 == v15;
                                if (!v50 && (sub_1C440FAC0() & 1) == 0)
                                {
                                  if (qword_1EDDFD240 != -1)
                                  {
                                    sub_1C441E650();
                                  }

                                  v51 = sub_1C4433704();
                                  sub_1C44008C8(v51, &qword_1EDDFD248);
                                  v53 = v16 && v52 == v15;
                                  if (!v53 && (sub_1C440FAC0() & 1) == 0)
                                  {
                                    if (qword_1EDDFD318 != -1)
                                    {
                                      sub_1C4409FF4();
                                    }

                                    v54 = sub_1C4433704();
                                    sub_1C44008C8(v54, qword_1EDDFD320);
                                    v56 = v16 && v55 == v15;
                                    if (!v56 && (sub_1C440FAC0() & 1) == 0)
                                    {
                                      if (qword_1EDDFD340 != -1)
                                      {
                                        sub_1C4414E6C();
                                      }

                                      v57 = sub_1C4433704();
                                      sub_1C44008C8(v57, qword_1EDDFD348);
                                      v59 = v16 && v58 == v15;
                                      if (!v59 && (sub_1C440FAC0() & 1) == 0)
                                      {
                                        if (qword_1EDDFD2C8 != -1)
                                        {
                                          sub_1C442E4E0();
                                        }

                                        v60 = sub_1C4433704();
                                        sub_1C44008C8(v60, qword_1EDDFD2D0);
                                        v62 = v16 && v61 == v15;
                                        if (!v62 && (sub_1C440FAC0() & 1) == 0)
                                        {
                                          if (qword_1EDDFD288 != -1)
                                          {
                                            sub_1C440602C();
                                          }

                                          v63 = sub_1C4433704();
                                          sub_1C44008C8(v63, &qword_1EDDFD290);
                                          v65 = v16 && v64 == v15;
                                          if (!v65 && (sub_1C440FAC0() & 1) == 0)
                                          {
                                            if (qword_1EDDFD1F0 != -1)
                                            {
                                              sub_1C442BE94();
                                            }

                                            v66 = sub_1C4433704();
                                            sub_1C44008C8(v66, &qword_1EDDFD1F8);
                                            v68 = v16 && v67 == v15;
                                            if (!v68 && (sub_1C440FAC0() & 1) == 0)
                                            {
                                              if (qword_1EDDFD1A0 != -1)
                                              {
                                                sub_1C441CD0C();
                                              }

                                              v69 = sub_1C4433704();
                                              sub_1C44008C8(v69, &qword_1EDDFD1A8);
                                              v71 = v16 && v70 == v15;
                                              if (!v71 && (sub_1C440FAC0() & 1) == 0)
                                              {
                                                if (qword_1EDDFD1C8 != -1)
                                                {
                                                  sub_1C4435324();
                                                }

                                                v72 = sub_1C4433704();
                                                sub_1C44008C8(v72, &qword_1EDDFD1D0);
                                                v74 = v16 && v73 == v15;
                                                if (!v74 && (sub_1C440FAC0() & 1) == 0)
                                                {
                                                  v132 = sub_1C4AE0FC8(v11);
                                                  if (v132)
                                                  {
                                                    v107 = v0[10];
                                                    sub_1C441A3AC();
                                                    sub_1C447EB38(v108, v109);
                                                    v149 = *(v132 + 16);
                                                    if (v149)
                                                    {
                                                      v139 = *(v2 + v135);
                                                      v110 = v0[7];
                                                      v111 = *(v110 + 16);
                                                      v110 += 16;
                                                      v146 = v111;
                                                      v112 = v132 + ((*(v110 + 64) + 32) & ~*(v110 + 64));
                                                      v141 = *(v110 + 56);
                                                      v129 = (v110 - 8);
                                                      v143 = v112;
                                                      v137 = *(v132 + 16);
                                                      do
                                                      {
                                                        v113 = v32[8];
                                                        v114 = v32[5];
                                                        v115 = v32[6];
                                                        v131 = v32[4];
                                                        v134 = v115;
                                                        v146(v113, v112, v115);
                                                        v32[2] = MEMORY[0x1E69E7CC8];
                                                        v150[0] = v139;
                                                        v146(v114, v113, v115);
                                                        sub_1C440BAA8(v114, 0, 1, v115);
                                                        v116 = sub_1C44B0950(v150);
                                                        sub_1C4420C3C(v114, &qword_1EC0B8568, &unk_1C4F319B0);
                                                        v117 = sub_1C44B1138(v116);
                                                        v119 = v118;

                                                        v150[0] = v139;
                                                        v120 = swift_task_alloc();
                                                        v120[2] = v119;
                                                        v120[3] = v117;
                                                        v120[4] = v131;
                                                        v120[5] = v113;
                                                        v120[6] = v1;
                                                        v120[7] = 100;
                                                        v120[8] = v144;
                                                        sub_1C44B4478(v113, v150, 0, 1, sub_1C44E493C, v120);

                                                        v121 = v32[2];

                                                        (*v129)(v113, v134);
                                                        v112 += v141;
                                                        --v137;
                                                      }

                                                      while (v137);
                                                      v2 = v31;
                                                      v122 = *(v31 + v135);
                                                      v0 = v32;
                                                      do
                                                      {
                                                        v123 = v32[5];
                                                        v124 = v32[6];
                                                        v150[0] = v122;
                                                        v146(v123, v143, v124);
                                                        v125 = sub_1C43FC024();
                                                        sub_1C440BAA8(v125, v126, v127, v124);
                                                        sub_1C44ABA54(v150, v123);
                                                        sub_1C4420C3C(v123, &qword_1EC0B8568, &unk_1C4F319B0);
                                                        v143 += v141;
                                                        --v149;
                                                      }

                                                      while (v149);
                                                    }

                                                    goto LABEL_167;
                                                  }

LABEL_170:
                                                  sub_1C442AC3C();
                                                  sub_1C441D374();
                                                  MEMORY[0x1C6940010](*v11, v11[1]);
                                                  MEMORY[0x1C6940010](v0 + 1, 0x80000001C4FB0ED0);
                                                  return sub_1C4F024A8();
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v75 = v0[10];
      sub_1C441A3AC();
      sub_1C447EB38(v76, v77);
      v78 = sub_1C44AFE00(v11);
      if (!v78)
      {
        goto LABEL_170;
      }

      v79 = *(v78 + 16);
      if (v79)
      {
        v133 = v2;
        v140 = *(v2 + v135);
        v80 = v0[7];
        v81 = v78 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v136 = v0 + 3;
        v138 = (v80 + 8);
        v128 = v81;
        v130 = *(v78 + 16);
        v142 = v0;
        v147 = *(v80 + 72);
        v148 = *(v80 + 16);
        do
        {
          v82 = v0[8];
          v83 = v0[5];
          v84 = v0[6];
          v145 = v84;
          v85 = v0[4];
          v148(v82, v81, v84);
          v0[3] = MEMORY[0x1E69E7CC8];
          v150[0] = v140;
          v148(v83, v82, v84);
          sub_1C440BAA8(v83, 0, 1, v84);
          v86 = sub_1C44B0950(v150);
          sub_1C4420C3C(v83, &qword_1EC0B8568, &unk_1C4F319B0);
          v87 = v85;
          v88 = sub_1C44B1138(v86);
          v90 = v89;

          v150[0] = v140;
          v91 = swift_task_alloc();
          v91[2] = v90;
          v91[3] = v88;
          v91[4] = v87;
          v91[5] = v82;
          v91[6] = v136;
          v91[7] = 100;
          v91[8] = v144;
          sub_1C44B4478(v82, v150, 0, 1, sub_1C44E4940, v91);
          v0 = v142;

          v92 = v142[3];

          (*v138)(v82, v145);
          v81 += v147;
          --v79;
        }

        while (v79);
        v93 = *(v133 + v135);
        v95 = v128;
        v94 = v130;
        do
        {
          v96 = v142[5];
          v97 = v142[6];
          v150[0] = v93;
          v148(v96, v95, v97);
          v98 = sub_1C43FC024();
          sub_1C440BAA8(v98, v99, v100, v97);
          sub_1C44ABA54(v150, v96);
          sub_1C4420C3C(v96, &qword_1EC0B8568, &unk_1C4F319B0);
          v95 += v147;
          --v94;
        }

        while (v94);
        v2 = v133;
      }

LABEL_167:

      v101 = v0[10];
      v102 = v0[8];
      v103 = v0[4];
      v104 = v0[5];
      sub_1C4EF9AE8();
      sub_1C44B5E0C();
      v150[0] = *(v2 + v135);
      sub_1C4495FC0(v150);

      v105 = v0[1];

      return v105();
  }
}

uint64_t sub_1C44AF8F4(_BYTE *a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v9[16] = *a1;

  v3 = sub_1C443DD50(sub_1C44AFCEC, v9);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2E088);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_1C43F8000, v5, v6, "GraphStore: clearTranslatedEntityTriples: %ld deleted.", v7, 0xCu);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  return v3;
}

uint64_t sub_1C44AFA30@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v3 = a1;
  v4 = sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-1] - v10;
  type metadata accessor for TranslatedEntityTriple(0);
  sub_1C44AFD28();
  sub_1C4EFADF8();
  if (v3 != 4)
  {
    v18[3] = &type metadata for SourcedTripleColumn;
    v18[4] = sub_1C44964E4();
    LOBYTE(v18[0]) = 8;
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    switch(v3)
    {
      case 1:
        v12 = 0xE400000000000000;
        v13 = 1819047270;
        break;
      case 2:
        v12 = 0xE500000000000000;
        v13 = 0x61746C6564;
        break;
      case 3:
        v12 = 0xEA0000000000676ELL;
        v13 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v17[3] = MEMORY[0x1E69E6158];
    v17[4] = MEMORY[0x1E69A0130];
    v17[0] = v13;
    v17[1] = v12;
    v19[3] = sub_1C4EFB298();
    v19[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v19);
    sub_1C4EFBB28();
    sub_1C44967E0(v17);
    sub_1C440962C(v18);
    sub_1C44AFD9C();
    sub_1C4EFB438();
    (*(v5 + 8))(v11, v4);
    sub_1C440962C(v19);
    (*(v5 + 32))(v11, v9, v4);
  }

  v14 = sub_1C4EFB898();
  result = (*(v5 + 8))(v11, v4);
  if (!v2)
  {
    *v20 = v14;
  }

  return result;
}

unint64_t sub_1C44AFD28()
{
  result = qword_1EDDF3A48;
  if (!qword_1EDDF3A48)
  {
    type metadata accessor for TranslatedEntityTriple(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3A48);
  }

  return result;
}

unint64_t sub_1C44AFD9C()
{
  result = qword_1EDDFA288;
  if (!qword_1EDDFA288)
  {
    sub_1C4572308(&qword_1EC0BE558, &unk_1C4F54060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA288);
  }

  return result;
}

uint64_t sub_1C44AFE00(uint64_t a1)
{
  v2 = sub_1C4EFD548();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = type metadata accessor for Source();
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v17 = (v16 - v15);
  sub_1C44201A8();
  sub_1C4471AF0(a1, v17);
  if (qword_1EDDFED08 != -1)
  {
    sub_1C440B19C();
  }

  v18 = sub_1C442B738(v11, qword_1EDDFED10);
  v19 = v17[1];
  v20 = *v18 == *v17 && v18[1] == v19;
  if (!v20)
  {
    v21 = sub_1C440E6E4();
    if ((v21 & 1) == 0)
    {
      if (qword_1EDDFED40 != -1)
      {
        v21 = sub_1C440604C();
      }

      sub_1C442D238(v21, qword_1EDDFD2A8);
      if (!v20 || v22 != v19)
      {
        v24 = sub_1C440E6E4();
        if ((v24 & 1) == 0)
        {
          if (qword_1EDDFED28 != -1)
          {
            v24 = sub_1C440FADC();
          }

          sub_1C442D238(v24, &unk_1EDDFD088);
          v33 = v20 && v32 == v19;
          if (v33 || (v34 = sub_1C440E6E4(), (v34 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v17, v35);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v30 = swift_allocObject();
            sub_1C44328FC(v30, xmmword_1C4F0D480);
            _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
            _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
            sub_1C4EFD4A8();
            sub_1C441B018();
LABEL_25:
            sub_1C4EFD4C8();
            return v30;
          }

          if (qword_1EDDFD0D0 != -1)
          {
            v34 = sub_1C4410520();
          }

          sub_1C442D238(v34, qword_1EDDFD0D8);
          v37 = v20 && v36 == v19;
          if (v37 || (v38 = sub_1C440E6E4(), (v38 & 1) != 0))
          {
LABEL_33:
            sub_1C441A3AC();
            sub_1C447EB38(v17, v39);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v30 = sub_1C44341E8();
            sub_1C44328FC(v30, xmmword_1C4F0CE60);
            sub_1C4EFD4C8();
            sub_1C4EFD538();
            return v30;
          }

          if (qword_1EDDFD268 != -1)
          {
            v38 = sub_1C4404CEC();
          }

          sub_1C442D238(v38, &qword_1EDDFD270);
          v41 = v20 && v40 == v19;
          if (v41 || (v42 = sub_1C440E6E4(), (v42 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v17, v43);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v30 = sub_1C44341E8();
            sub_1C44328FC(v30, xmmword_1C4F0CE60);
            _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
            sub_1C4EFD3E8();
            return v30;
          }

          if (qword_1EDDFD110 != -1)
          {
            v42 = sub_1C4403664();
          }

          sub_1C442D238(v42, qword_1EDDFD118);
          v45 = v20 && v44 == v19;
          if (v45 || (v46 = sub_1C440E6E4(), (v46 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v17, v47);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v30 = swift_allocObject();
            sub_1C44328FC(v30, xmmword_1C4F0D480);
            sub_1C4EFCF28();
            sub_1C4EFD1C8();
            sub_1C4EFD4C8();
            sub_1C441B018();
LABEL_58:
            _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
            return v30;
          }

          if (qword_1EDDFD068 != -1)
          {
            v46 = sub_1C44123D8();
          }

          sub_1C442D238(v46, qword_1EDDFD070);
          v49 = v20 && v48 == v19;
          if (v49 || (v50 = sub_1C440E6E4(), (v50 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v17, v51);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v30 = sub_1C4418534();
            sub_1C44328FC(v30, xmmword_1C4F0C890);
            sub_1C4EFD4C8();
            sub_1C4EFD538();
            goto LABEL_58;
          }

          if (qword_1EDDFD130 != -1)
          {
            v50 = sub_1C44123B8();
          }

          sub_1C442D238(v50, qword_1EDDFD138);
          v53 = v20 && v52 == v19;
          if (v53 || (v54 = sub_1C440E6E4(), (v54 & 1) != 0))
          {
            sub_1C441A3AC();
            sub_1C447EB38(v17, v55);
            sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
            sub_1C440B188();
            v30 = sub_1C4418534();
            sub_1C44328FC(v30, xmmword_1C4F0C890);
            sub_1C4EFD4C8();
            sub_1C4EFD538();
LABEL_67:
            sub_1C4EFCF48();
            return v30;
          }

          if (qword_1EDDFD178 != -1)
          {
            v54 = sub_1C4426D64();
          }

          sub_1C442D238(v54, &qword_1EDDFD180);
          if (!v20 || v56 != v19)
          {
            v58 = sub_1C440E6E4();
            if ((v58 & 1) == 0)
            {
              if (qword_1EDDFD0A8 != -1)
              {
                v58 = sub_1C440FA20();
              }

              sub_1C442D238(v58, qword_1EDDFD0B0);
              if (!v20 || v59 != v19)
              {
                v61 = sub_1C440E6E4();
                if ((v61 & 1) == 0)
                {
                  if (qword_1EDDFD218 != -1)
                  {
                    v61 = sub_1C441BC54();
                  }

                  sub_1C442D238(v61, &qword_1EDDFD220);
                  if (!v20 || v62 != v19)
                  {
                    v64 = sub_1C440E6E4();
                    if ((v64 & 1) == 0)
                    {
                      if (qword_1EDDFED38 != -1)
                      {
                        v64 = sub_1C443FF4C();
                      }

                      sub_1C442D238(v64, qword_1EDDFD0F0);
                      v67 = v20 && v66 == v19;
                      if (v67 || (v68 = sub_1C440E6E4(), (v68 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v17, v69);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        sub_1C440B188();
                        v30 = sub_1C44341E8();
                        sub_1C44328FC(v30, xmmword_1C4F0CE60);
                        sub_1C4EFD4C8();
                        goto LABEL_67;
                      }

                      if (qword_1EDDFD150 != -1)
                      {
                        v68 = sub_1C4416380();
                      }

                      sub_1C442D238(v68, qword_1EDDFD158);
                      v71 = v20 && v70 == v19;
                      if (v71 || (v72 = sub_1C440E6E4(), (v72 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v17, v73);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        sub_1C440B188();
                        v30 = sub_1C4418534();
                        sub_1C44328FC(v30, xmmword_1C4F0C890);
                        sub_1C4EFCF28();
                        sub_1C4EFD4C8();
                        goto LABEL_58;
                      }

                      if (qword_1EDDFD2F0 != -1)
                      {
                        v72 = sub_1C44253D4();
                      }

                      sub_1C442D238(v72, qword_1EDDFD2F8);
                      v75 = v20 && v74 == v19;
                      if (v75 || (v76 = sub_1C440E6E4(), (v76 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v17, v77);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        sub_1C440B188();
                        v30 = sub_1C44341E8();
                        sub_1C44328FC(v30, xmmword_1C4F0CE60);
                        sub_1C4EFD538();
                        _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
                        return v30;
                      }

                      if (qword_1EDDFD240 != -1)
                      {
                        v76 = sub_1C441E650();
                      }

                      sub_1C442D238(v76, &qword_1EDDFD248);
                      v79 = v20 && v78 == v19;
                      if (v79 || (v80 = sub_1C440E6E4(), (v80 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v17, v81);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        sub_1C440B188();
                        v30 = sub_1C44341E8();
                        sub_1C44328FC(v30, xmmword_1C4F0CE60);
                        sub_1C4EFCED8();
                        goto LABEL_25;
                      }

                      if (qword_1EDDFD318 != -1)
                      {
                        v80 = sub_1C4409FF4();
                      }

                      sub_1C442D238(v80, qword_1EDDFD320);
                      v83 = v20 && v82 == v19;
                      if (v83 || (v84 = sub_1C440E6E4(), (v84 & 1) != 0))
                      {
                        sub_1C441A3AC();
                        sub_1C447EB38(v17, v85);
                        sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                        v30 = sub_1C442F368();
                        *(v30 + 16) = xmmword_1C4F0D130;
                        sub_1C4EFD1E8();
                        return v30;
                      }

                      if (qword_1EDDFD340 != -1)
                      {
                        v84 = sub_1C4414E6C();
                      }

                      sub_1C442D238(v84, qword_1EDDFD348);
                      if (v20 && v86 == v19)
                      {
                        goto LABEL_33;
                      }

                      v88 = sub_1C440E6E4();
                      if (v88)
                      {
                        goto LABEL_33;
                      }

                      if (qword_1EDDFD2C8 != -1)
                      {
                        v88 = sub_1C442E4E0();
                      }

                      sub_1C442D238(v88, qword_1EDDFD2D0);
                      if (!v20 || v89 != v19)
                      {
                        v91 = sub_1C440E6E4();
                        if ((v91 & 1) == 0)
                        {
                          if (qword_1EDDFD288 != -1)
                          {
                            v91 = sub_1C440602C();
                          }

                          sub_1C442D238(v91, &qword_1EDDFD290);
                          if (v20 && v92 == v19)
                          {
                            goto LABEL_173;
                          }

                          v94 = sub_1C440E6E4();
                          if (v94)
                          {
                            goto LABEL_173;
                          }

                          if (qword_1EDDFD1F0 != -1)
                          {
                            v94 = sub_1C442BE94();
                          }

                          sub_1C442D238(v94, &qword_1EDDFD1F8);
                          if (v20 && v95 == v19)
                          {
                            goto LABEL_173;
                          }

                          v97 = sub_1C440E6E4();
                          if (v97)
                          {
                            goto LABEL_173;
                          }

                          if (qword_1EDDFD1A0 != -1)
                          {
                            v97 = sub_1C441CD0C();
                          }

                          sub_1C442D238(v97, &qword_1EDDFD1A8);
                          if (v20 && v98 == v19)
                          {
                            goto LABEL_173;
                          }

                          v100 = sub_1C440E6E4();
                          if (v100)
                          {
                            goto LABEL_173;
                          }

                          if (qword_1EDDFD1C8 != -1)
                          {
                            v100 = sub_1C4435324();
                          }

                          sub_1C442D238(v100, &qword_1EDDFD1D0);
                          if (v20 && v101 == v19)
                          {
LABEL_173:
                            sub_1C441A3AC();
                            sub_1C447EB38(v17, v105);
                          }

                          else
                          {
                            v103 = sub_1C440E6E4();
                            sub_1C441A3AC();
                            sub_1C447EB38(v17, v104);
                            if ((v103 & 1) == 0)
                            {
                              return 0;
                            }
                          }

                          sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
                          sub_1C440B188();
                          v30 = swift_allocObject();
                          sub_1C44328FC(v30, xmmword_1C4F0F830);
                          sub_1C4EFCEF8();
                          sub_1C4EFD428();
                          _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
                          sub_1C441B018();
                          sub_1C4EFD4C8();
                          sub_1C4EFD218();
                          sub_1C4EFD4D8();
                          sub_1C4EFCEE8();
                          return v30;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          sub_1C441A3AC();
          sub_1C447EB38(v17, v65);
          sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
          v30 = sub_1C442F368();
          *(v30 + 16) = xmmword_1C4F0D130;
          goto LABEL_25;
        }
      }
    }
  }

  sub_1C441A3AC();
  sub_1C447EB38(v17, v25);
  sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
  sub_1C440B188();
  v26 = swift_allocObject();
  sub_1C44328FC(v26, xmmword_1C4F3B920);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD4C8();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C441B018();
  sub_1C4EFCEC8();
  sub_1C4EFCFC8();
  sub_1C4EFD498();
  sub_1C4EFD4E8();
  sub_1C4EFD538();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v27 = sub_1C4EFD0A8();
  v28 = *(v5 + 8);
  v28(v10, v2);
  v106 = v26;
  sub_1C49D3E5C(v27);
  sub_1C4EFCFB8();
  v29 = sub_1C4EFD0A8();
  v28(v10, v2);
  sub_1C49D3E5C(v29);
  return v106;
}

uint64_t sub_1C44B0950(char *a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v7 = *a1;

  v3 = sub_1C440CABC();
  v5 = sub_1C44B09C4(v3, v4);

  return v5;
}

uint64_t sub_1C44B0A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v41 = a1;
  v36 = a3;
  v3 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_1C4EFD548();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BE530, &qword_1C4F37358);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  type metadata accessor for EntityMatch(0);
  sub_1C4490890(&qword_1EDDF91E8, type metadata accessor for EntityMatch);
  sub_1C4EFADF8();
  if (qword_1EDDF9200 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4EFBD38();
  v21 = sub_1C442B738(v20, qword_1EDE2DAE8);
  v47 = v20;
  v48 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v46);
  (*(*(v20 - 8) + 16))(v22, v21, v20);
  v23 = 0xE700000000000000;
  v24 = 0x6E776F6E6B6E75;
  switch(v21)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v23 = 0xE400000000000000;
      v24 = 1819047270;
      goto LABEL_7;
    case 2:
      v23 = 0xE500000000000000;
      v24 = 0x61746C6564;
      goto LABEL_7;
    case 3:
      v23 = 0xEA0000000000676ELL;
      v24 = 0x69686374614D6F74;
LABEL_7:
      v44 = MEMORY[0x1E69E6158];
      v45 = MEMORY[0x1E69A0130];
      v42 = v24;
      v43 = v23;
      v50 = sub_1C4EFB298();
      v51 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v49);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v42, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v46);
      sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358);
      sub_1C4EFB438();
      (*(v11 + 8))(v19, v10);
      sub_1C440962C(v49);
      (*(v11 + 32))(v19, v17, v10);
      break;
    default:
      break;
  }

  sub_1C44A2E4C(v40, v6);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  }

  else
  {
    v26 = v38;
    v25 = v39;
    (*(v39 + 32))(v38, v6, v7);
    if (qword_1EDDF9208 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4EFBD38();
    v28 = sub_1C442B738(v27, qword_1EDE2DB00);
    v47 = v27;
    v48 = MEMORY[0x1E69A0050];
    v29 = sub_1C4422F90(v46);
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v30 = sub_1C4EFD3D8();
    v44 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69A0130];
    v42 = v30;
    v43 = v31;
    v50 = sub_1C4EFB298();
    v51 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v49);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v42, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v46);
    sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358);
    v32 = v37;
    sub_1C4EFB438();
    (*(v25 + 8))(v26, v7);
    (*(v11 + 8))(v19, v10);
    sub_1C440962C(v49);
    (*(v11 + 32))(v19, v32, v10);
  }

  sub_1C4401CBC(&qword_1EDDFA2E8, &qword_1EC0BE530, &qword_1C4F37358);
  sub_1C4490890(&qword_1EDDF91D8, type metadata accessor for EntityMatch);
  v33 = v52;
  v34 = sub_1C4EFAFE8();
  result = (*(v11 + 8))(v19, v10);
  if (!v33)
  {
    *v36 = v34;
  }

  return result;
}

uint64_t sub_1C44B1138(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v172 - v6;
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v172 - v17;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  v195 = v172 - v21;
  v22 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  v23 = sub_1C43FBD18(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  v181 = v172 - v28;
  v29 = type metadata accessor for EntityMatch(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4423AFC();
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C4423AFC();
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C4423AFC();
  sub_1C440D768();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4423AFC();
  sub_1C440D768();
  v36 = MEMORY[0x1EEE9AC00](v35);
  isUniquelyReferenced_nonNull_native = v172 - v38;
  v212 = MEMORY[0x1E69E7CC8];
  v40 = *(a1 + 16);
  v191 = v8;
  v188 = v7;
  v202 = v18;
  v190 = v36;
  v172[1] = a1;
  if (v40)
  {
    v184 = ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v197 = *(v37 + 72);
    v196 = v11 + 16;
    v183 = v11 + 8;
    v178 = v11 + 32;
    v174 = v11 + 40;
    v201 = MEMORY[0x1E69E7CC8];
    v182 = MEMORY[0x1E69E7CC8];
    v185 = MEMORY[0x1E69E7CC8];
    v194 = v172 - v38;
    while (1)
    {
      sub_1C4407970();
      v200 = v41;
      sub_1C4471AF0(v41, isUniquelyReferenced_nonNull_native);
      v42 = *&isUniquelyReferenced_nonNull_native[*(v29 + 28)];
      if (v42 >= 0.99)
      {
        v48 = *(v29 + 20);
        v49 = v185;
        if (v185[2] && (sub_1C44E3664(), (v51 & 1) != 0))
        {
          v18 = *(v49[7] + 8 * v50);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        else
        {
          v18 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4407970();
        sub_1C4471AF0(isUniquelyReferenced_nonNull_native, v187);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44E3770(0, *(v18 + 16) + 1, 1, v18);
          v18 = v124;
        }

        v53 = *(v18 + 16);
        v52 = *(v18 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1C44E3770(v52 > 1, v53 + 1, 1, v18);
          v18 = v125;
        }

        *(v18 + 16) = v53 + 1;
        sub_1C44136A4();
        sub_1C44E3714(v187, v54);
        sub_1C441B4B4();
        v7 = *v55;
        (*v55)(v195, &isUniquelyReferenced_nonNull_native[v48], v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v203 = v212;
        sub_1C44E3664();
        sub_1C43FC438();
        if (__OFADD__(v58, v59))
        {
          goto LABEL_127;
        }

        v60 = v56;
        v8 = v57;
        sub_1C456902C(&qword_1EC0BA848, &unk_1C4F4F970);
        v43 = &v203;
        if (sub_1C4F02458())
        {
          sub_1C44E3664();
          v43 = v190;
          isUniquelyReferenced_nonNull_native = v194;
          if ((v8 & 1) != (v62 & 1))
          {
            goto LABEL_137;
          }

          v60 = v61;
        }

        else
        {
          sub_1C4469218();
          sub_1C444B278();
        }

        v63 = v203;
        if (v8)
        {
          v64 = *(v203 + 56);
          v65 = *(v64 + 8 * v60);
          *(v64 + 8 * v60) = v18;

          sub_1C442ECC8();
        }

        else
        {
          sub_1C43FDD34(v203 + 8 * (v60 >> 6));
          v66 = v63[6] + *(v11 + 72) * v60;
          sub_1C442ECC8();
          sub_1C441B4B4();
          (v7)();
          *(v63[7] + 8 * v60) = v18;
          v67 = v63[2];
          v68 = __OFADD__(v67, 1);
          v69 = v67 + 1;
          if (v68)
          {
            goto LABEL_129;
          }

          v63[2] = v69;
        }

        (*v183)(v195, v8);
        v185 = v63;
        v212 = v63;
        sub_1C44237D8();
        sub_1C440CD64();
        goto LABEL_72;
      }

      v43 = *&isUniquelyReferenced_nonNull_native[*(v29 + 40)];
      if (v43)
      {
        if (*(v43 + 2))
        {
          v44 = sub_1C4402490();
          if (v45)
          {
            v46 = (*(v43 + 7) + 16 * v44);
            v47 = *v46;
            v43 = v46[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            v47 = 0;
            v43 = 0;
          }
        }

        else
        {
          v47 = 0;
          v43 = 0;
        }
      }

      else
      {
        v47 = 0;
      }

      sub_1C441DDD8();
      *&v203 = v70;
      sub_1C4415BB0();
      *(&v203 + 1) = v71;
      *&v204 = 1702195828;
      *(&v204 + 1) = v72;
      v206 = 0;
      v205 = 0uLL;
      v207 = 1;
      v7 = 0xE400000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v203);
      if (v43)
      {
        v73 = v47 == 1702195828 && v43 == 0xE400000000000000;
        if (v73)
        {

LABEL_49:
          if (v42 <= 0.0)
          {
            goto LABEL_70;
          }

          v88 = *(v190 + 20);
          sub_1C4407970();
          sub_1C4471AF0(isUniquelyReferenced_nonNull_native, v179);
          sub_1C4422A7C(v211);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v211[0] = v43;
          sub_1C44E3664();
          sub_1C43FC438();
          v8 = v91 + v92;
          if (__OFADD__(v91, v92))
          {
            goto LABEL_132;
          }

          v93 = v89;
          v18 = v90;
          sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
          if (sub_1C44142AC())
          {
            v43 = *&v211[0];
            sub_1C444B278();
            sub_1C44E3664();
            sub_1C4404D54();
            v8 = v191;
            if (!v73)
            {
              goto LABEL_137;
            }

            v93 = v94;
          }

          else
          {
            sub_1C442ECC8();
            sub_1C444B278();
          }

          v182 = *&v211[0];
          if (v18)
          {
            sub_1C4404668(*(*&v211[0] + 56));
            v99 = &v208;
LABEL_66:
            sub_1C46BB0F0(*(v99 - 32), v98);
LABEL_69:
            sub_1C440CD64();
LABEL_70:
            sub_1C4469218();
            goto LABEL_71;
          }

          sub_1C43FDD34(*&v211[0] + 8 * (v93 >> 6));
          v106 = sub_1C443009C();
          v107(v106);
          sub_1C441468C(v211);
          sub_1C4404668(v108);
          sub_1C44136A4();
          sub_1C44E3714(v179, v109);
          sub_1C441EE84(v211);
          if (v68)
          {
            goto LABEL_134;
          }

LABEL_68:
          *(v105 + 16) = v104;
          goto LABEL_69;
        }

        v74 = sub_1C443F720();

        if (v74)
        {
          goto LABEL_49;
        }
      }

      else
      {
      }

      v75 = *(v190 + 20);
      v43 = v182;
      if (*(v182 + 16) && (sub_1C44E3664(), (v76 & 1) != 0))
      {
        v77 = *(v43 + 7);
        sub_1C4407970();
        isUniquelyReferenced_nonNull_native = v181;
        sub_1C4471AF0(v78, v181);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v181;
      }

      sub_1C4469218();
      sub_1C440BAA8(v79, v80, v81, v43);
      if (sub_1C44157D4(isUniquelyReferenced_nonNull_native, 1, v43))
      {
        sub_1C4420C3C(isUniquelyReferenced_nonNull_native, &qword_1EC0BB248, &qword_1C4F1E7C8);
        if (v42 > 0.0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        sub_1C4407970();
        v95 = v173;
        sub_1C4471AF0(isUniquelyReferenced_nonNull_native, v173);
        sub_1C4420C3C(isUniquelyReferenced_nonNull_native, &qword_1EC0BB248, &qword_1C4F1E7C8);
        v96 = *(v95 + *(v43 + 7));
        sub_1C44123A0();
        sub_1C447EB38(v95, v97);
        if (v96 < v42)
        {
LABEL_43:
          sub_1C4407970();
          sub_1C4471AF0(v194, v180);
          sub_1C4422A7C(v211);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v211[0] = v43;
          sub_1C44E3664();
          sub_1C43FC438();
          v8 = v84 + v85;
          if (__OFADD__(v84, v85))
          {
            goto LABEL_131;
          }

          v86 = v82;
          v18 = v83;
          sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
          if (sub_1C44142AC())
          {
            v43 = *&v211[0];
            sub_1C444B278();
            sub_1C44E3664();
            sub_1C4404D54();
            v8 = v191;
            if (!v73)
            {
              goto LABEL_137;
            }

            v86 = v87;
          }

          else
          {
            sub_1C442ECC8();
            sub_1C444B278();
          }

          v182 = *&v211[0];
          if (v18)
          {
            sub_1C4404668(*(*&v211[0] + 56));
            v99 = &v209;
            goto LABEL_66;
          }

          sub_1C43FDD34(*&v211[0] + 8 * (v86 >> 6));
          v100 = sub_1C443009C();
          v101(v100);
          sub_1C441468C(v211);
          sub_1C4404668(v102);
          sub_1C44136A4();
          sub_1C44E3714(v180, v103);
          sub_1C441EE84(v211);
          if (v68)
          {
            goto LABEL_133;
          }

          goto LABEL_68;
        }
      }

      sub_1C4469218();
      sub_1C444B278();
LABEL_71:
      sub_1C44237D8();
LABEL_72:
      v110 = *(v43 + 6);
      v29 = &isUniquelyReferenced_nonNull_native[v110];
      if (sub_1C4EFEFF8())
      {
        sub_1C441B4B4();
        v7 = *v111;
        (*v111)(v186, &isUniquelyReferenced_nonNull_native[v110], v8);
        sub_1C4422A7C(&v218);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v203 = v29;
        sub_1C44E3664();
        sub_1C43FC438();
        if (__OFADD__(v114, v115))
        {
          goto LABEL_128;
        }

        v116 = v112;
        v18 = v113;
        sub_1C456902C(&qword_1EC0C3208, &unk_1C4F4F9A0);
        v29 = &v203;
        if (sub_1C4F02458())
        {
          v29 = v203;
          sub_1C444B278();
          sub_1C44E3664();
          sub_1C4404D54();
          if (!v73)
          {
            goto LABEL_137;
          }

          v116 = v117;
        }

        else
        {
          sub_1C444B278();
        }

        v201 = v203;
        if (v18)
        {
          (*(v11 + 40))(*(v203 + 56) + *(v11 + 72) * v116, v186, v8);
        }

        else
        {
          sub_1C43FDD34(v203 + 8 * (v116 >> 6));
          v119 = *(v118 + 48);
          v29 = *(v11 + 72) * v116;
          sub_1C441B4B4();
          (v7)();
          sub_1C441468C(&v218);
          (*(v11 + 32))(v120 + v29, v186, v8);
          sub_1C441EE84(&v218);
          if (v68)
          {
            goto LABEL_130;
          }

          *(v122 + 16) = v121;
        }

        sub_1C44237D8();
        sub_1C440CD64();
      }

      sub_1C4469218();
      sub_1C44123A0();
      sub_1C447EB38(isUniquelyReferenced_nonNull_native, v123);
      if (!--v40)
      {
        goto LABEL_87;
      }
    }
  }

  v201 = MEMORY[0x1E69E7CC8];
  v182 = MEMORY[0x1E69E7CC8];
LABEL_87:
  sub_1C44B26D4(v182, &v212);
  v126 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44B2C94(v126, v211, 0.99);
  sub_1C44B35B4();
  v203 = v211[0];
  v204 = v211[1];
  v205 = v211[2];
  v127 = sub_1C44B3BBC(0.99);
  v180 = *(v127 + 16);
  if (v180)
  {
    v128 = 0;
    v179 = v127 + 32;
    v186 = (v11 + 32);
    v197 = v11 + 16;
    v129 = (v11 + 8);
    v184 = (v11 + 40);
    v178 = v127;
    v192 = v11;
    do
    {
      if (v128 >= *(v127 + 16))
      {
        goto LABEL_126;
      }

      v187 = v128;
      v130 = *(v179 + 8 * v128);
      v215 = MEMORY[0x1E69E7CC0];
      v216 = MEMORY[0x1E69E7CC0];
      v131 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AE0B30(v131, &v215, &v216);
      v132 = v216;
      if (*(v216 + 16))
      {
        v181 = v130;
        v133 = v215;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C48348A8(v133);
          v133 = v167;
        }

        v134 = *(v133 + 16);
        v135 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v195 = (v133 + v135);
        v209 = v133 + v135;
        v210 = v134;
        sub_1C4AE1B00(&v209);
        v215 = v133;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C48348A8(v132);
          v132 = v168;
        }

        v136 = *(v132 + 16);
        v200 = (v132 + v135);
        v209 = v132 + v135;
        v210 = v136;
        v137 = v132;
        sub_1C4AE1B00(&v209);
        sub_1C48685A4(v133, v7);
        v138 = sub_1C44157D4(v7, 1, v8);
        v196 = v133;
        v183 = v132;
        if (v138 == 1)
        {
          sub_1C4420C3C(v7, &unk_1EC0BA0E0, &qword_1C4F105A0);
          LODWORD(v209) = 0;
          v139 = v176;
          v140 = v190;
          sub_1C440BAA8(v176, 1, 1, v190);
          sub_1C4AE0A58(v137, &v212, v139, &v209);
          v141 = v177;
          v7 = &qword_1C4F1E7C8;
          sub_1C445FFF0(v139, v177, &qword_1EC0BB248, &qword_1C4F1E7C8);
          if (sub_1C44157D4(v141, 1, v140) == 1)
          {
            sub_1C4420C3C(v141, &qword_1EC0BB248, &qword_1C4F1E7C8);
            sub_1C4435C6C();
            v172[0] = 377;
            goto LABEL_136;
          }

          sub_1C44136A4();
          v142 = v175;
          v143 = sub_1C44E3714(v141, v175);
          v200 = v172;
          MEMORY[0x1EEE9AC00](v143);
          v170 = &v212;
          v171 = v142;
          sub_1C4D373DC(sub_1C4AE2E90, &v172[-4], v183);
          sub_1C44123A0();
          sub_1C447EB38(v142, v144);
          sub_1C4420C3C(v139, &qword_1EC0BB248, &qword_1C4F1E7C8);
        }

        else
        {
          v185 = *v186;
          (v185)(v199, v7, v8);
          v194 = *(v133 + 16);
          if (v194)
          {
            v145 = 0;
            while (v145 < *(v133 + 16))
            {
              v146 = v129;
              v147 = *(v11 + 72);
              v148 = *(v11 + 16);
              (v148)(v18, &v195[v147 * v145], v8);
              sub_1C4AE2EAC(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
              v149 = v199;
              if (sub_1C4F010B8())
              {
                v150 = *v129;
                v11 = v192;
                v133 = v196;
              }

              else
              {
                v151 = sub_1C4422A7C(&v217);
                (v148)(v151, v18, v8);
                (v148)(v193, v149, v8);
                v152 = v201;
                swift_isUniquelyReferenced_nonNull_native();
                v209 = v152;
                sub_1C44E3664();
                if (__OFADD__(*(v152 + 16), (v154 & 1) == 0))
                {
                  goto LABEL_124;
                }

                v8 = v153;
                v18 = v154;
                sub_1C456902C(&qword_1EC0C3208, &unk_1C4F4F9A0);
                if (sub_1C4F02458())
                {
                  sub_1C44E3664();
                  sub_1C4404D54();
                  if (!v73)
                  {
                    goto LABEL_137;
                  }

                  v8 = v155;
                }

                v129 = v146;
                v133 = v196;
                v156 = v209;
                v201 = v209;
                if (v18)
                {
                  v157 = *(v209 + 56) + v8 * v147;
                  v8 = v191;
                  (*v184)(v157, v193, v191);
                  v150 = *v129;
                  (*v129)(v198, v8);
                }

                else
                {
                  *(v209 + 8 * (v8 >> 6) + 64) |= 1 << v8;
                  v158 = v8 * v147;
                  v159 = *(v156 + 48) + v8 * v147;
                  v160 = v198;
                  sub_1C442ECC8();
                  v148();
                  sub_1C441468C(&v218);
                  (v185)(v161 + v158, v193, v8);
                  v150 = *v129;
                  (*v129)(v160, v8);
                  sub_1C441EE84(&v218);
                  if (v68)
                  {
                    goto LABEL_125;
                  }

                  *(v163 + 16) = v162;
                }

                v164 = *(v189 + *(type metadata accessor for PhaseStores() + 24));
                sub_1C440CD64();
                sub_1C486DA9C(v18, v199);
                v11 = v192;
              }

              ++v145;
              v150(v18, v8);
              if (v194 == v145)
              {
                goto LABEL_115;
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            sub_1C4435C6C();
            v172[0] = 342;
LABEL_136:
            sub_1C4F024A8();
            __break(1u);
            while (1)
            {
LABEL_137:
              sub_1C4F029F8();
              __break(1u);
            }
          }

LABEL_115:

          v7 = 0;
          v165 = *(v183 + 16);
          while (v165 != v7)
          {
            v18 = v200 + *(v11 + 72) * v7;
            v166 = sub_1C44E5514(v18, v212);
            if (!v166)
            {
              goto LABEL_135;
            }

            ++v7;
            sub_1C4AE0718(v166, &v215);
            swift_isUniquelyReferenced_nonNull_native();
            v209 = v212;
            sub_1C4661954();
            v212 = v209;
            sub_1C440CD64();
          }

          (*v129)(v199, v8);
        }

        sub_1C44237D8();
      }

      else
      {
      }

      v128 = v187 + 1;
      v127 = v178;
    }

    while (v187 + 1 != v180);
  }

  v209 = v203;
  sub_1C4420C3C(&v209, &qword_1EC0BB250, &unk_1C4F1E7D0);
  v215 = v204;
  v216 = *(&v203 + 1);
  v213 = *(&v205 + 1);
  v214 = *(&v204 + 1);
  sub_1C4420C3C(&v216, &qword_1EC0BB258, &unk_1C4F4F980);
  sub_1C4420C3C(&v215, &qword_1EC0BB260, &unk_1C4F1E7E0);
  sub_1C4420C3C(&v214, &qword_1EC0BB268, &unk_1C4F4F990);
  sub_1C4420C3C(&v213, &qword_1EC0BB270, qword_1C4F1E7F0);

  return v201;
}

uint64_t sub_1C44B26D4(uint64_t a1, void *a2)
{
  v76 = sub_1C456902C(&qword_1EC0BB240, "nG\v");
  v4 = *(*(v76 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v76 - 8);
  v80 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v78 = &v66 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v69 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v66 - v11;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v70 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = 0;
  v67 = v16;
  v68 = a1 + 64;
  v77 = a2;
  if (v15)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v15)) | (v17 << 6);
      v20 = v70;
      v21 = *(v70 + 48);
      v22 = sub_1C4EFF0C8();
      v23 = *(v22 - 8);
      v24 = v23;
      v72 = *(v23 + 72);
      v26 = v23 + 16;
      v25 = *(v23 + 16);
      v27 = v81;
      v82 = v22;
      v73 = v25;
      v71 = v26;
      (v25)(v81, v21 + v72 * v19);
      v28 = *(v20 + 56);
      v75 = *(type metadata accessor for EntityMatch(0) - 8);
      v29 = *(v75 + 72);
      v30 = v76;
      sub_1C4471AF0(v28 + v29 * v19, v27 + *(v76 + 48));
      v31 = v69;
      sub_1C445FFF0(v27, v69, &qword_1EC0BB240, "nG\v");
      v32 = *v77;
      if (!*(*v77 + 16))
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_1C44E3664();
      if (v34)
      {
        v35 = *(*(v32 + 56) + 8 * v33);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
LABEL_11:
        v35 = MEMORY[0x1E69E7CC0];
      }

      sub_1C447EB38(v31 + *(v30 + 48), type metadata accessor for EntityMatch);
      v37 = v24 + 8;
      v36 = *(v24 + 8);
      v36(v31, v82);
      sub_1C445FFF0(v81, v78, &qword_1EC0BB240, "nG\v");
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44E3770(0, *(v35 + 16) + 1, 1, v35);
        v35 = v63;
      }

      v38 = v35;
      v39 = *(v35 + 16);
      v79 = v38;
      v40 = *(v38 + 24);
      if (v39 >= v40 >> 1)
      {
        sub_1C44E3770(v40 > 1, v39 + 1, 1, v79);
        v79 = v64;
      }

      v41 = *(v30 + 48);
      v42 = v79;
      *(v79 + 16) = v39 + 1;
      v43 = v78;
      sub_1C44E3714(v78 + v41, v42 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + v39 * v29);
      v74 = v36;
      v75 = v37;
      v36(v43, v82);
      sub_1C445FFF0(v81, v80, &qword_1EC0BB240, "nG\v");
      v44 = v77;
      v45 = *v77;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = v44;
      v47 = *v44;
      v83 = v47;
      sub_1C44E3664();
      if (__OFADD__(v47[2], (v49 & 1) == 0))
      {
        break;
      }

      v50 = v48;
      v51 = v49;
      sub_1C456902C(&qword_1EC0BA848, &unk_1C4F4F970);
      if (sub_1C4F02458())
      {
        sub_1C44E3664();
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_30;
        }

        v50 = v52;
      }

      v54 = v83;
      v55 = v76;
      if (v51)
      {
        v56 = v83[7];
        v57 = *(v56 + 8 * v50);
        *(v56 + 8 * v50) = v79;
      }

      else
      {
        v83[(v50 >> 6) + 8] |= 1 << v50;
        v73(v54[6] + v50 * v72, v80, v82);
        *(v54[7] + 8 * v50) = v79;
        v58 = v54[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_29;
        }

        v54[2] = v60;
      }

      v15 &= v15 - 1;
      v61 = *(v55 + 48);
      *v46 = v54;
      v62 = v80;
      v74(v80, v82);
      sub_1C447EB38(v62 + v61, type metadata accessor for EntityMatch);
      sub_1C4420C3C(v81, &qword_1EC0BB240, "nG\v");
      v16 = v67;
      v12 = v68;
      if (!v15)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

float sub_1C44B2C94@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v8 = MEMORY[0x1E69E7CC8];
  *&v5 = MEMORY[0x1E69E7CC0];
  *(&v5 + 1) = MEMORY[0x1E69E7CC0];
  *&v6 = MEMORY[0x1E69E7CC0];
  *(&v6 + 1) = MEMORY[0x1E69E7CC0];
  sub_1C44B2D10(a1);

  result = a3;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = a3;
  *(a2 + 40) = v8;
  return result;
}

void sub_1C44B2D10(uint64_t a1)
{
  v84 = sub_1C4EFF0C8();
  v2 = *(v84 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v84);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v77 - v6;
  v89 = type metadata accessor for EntityMatch(0);
  v7 = *(*(v89 - 1) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1E69E7CD0];
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = *(v88 + 32);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    v86 = v2 + 16;
    v87 = 0;
    v80 = v2 + 8;
    v81 = v2;
    v79 = v15;
    while (1)
    {
      sub_1C44E37D8(v14, v10);
      v16 = *&v10[v89[7]];
      if (v13 <= v16)
      {
        v85 = v12;
        v17 = v89[5];
        sub_1C483644C();
        if ((v18 & 1) == 0)
        {
          v19 = v81;
          v78 = *(v81 + 16);
          v20 = v84;
          v78(v83, &v10[v17], v84);
          v21 = v82;
          sub_1C44D56D0();
          (*(v19 + 8))(v21, v20);
          v22 = v88;
          v23 = *(v88 + 40);
          swift_isUniquelyReferenced_nonNull_native();
          v90 = v22[5];
          v24 = v87;
          sub_1C4661804();
          v22[5] = v90;
          sub_1C4588EAC();
          v25 = *(*v22 + 16);
          sub_1C4589A94();
          v26 = *v22;
          *(v26 + 16) = v25 + 1;
          v78((v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v25), &v10[v17], v20);
          *v22 = v26;
          v87 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_55;
          }
        }

        v27 = v89[6];
        sub_1C483644C();
        if ((v28 & 1) == 0)
        {
          v77 = v17;
          v29 = v81;
          v78 = *(v81 + 16);
          v30 = v84;
          v31 = v88;
          v78(v83, &v10[v27], v84);
          v32 = v82;
          sub_1C44D56D0();
          (*(v29 + 8))(v32, v30);
          v33 = v31[5];
          swift_isUniquelyReferenced_nonNull_native();
          v90 = v31[5];
          v34 = v87;
          sub_1C4661804();
          v31[5] = v90;
          sub_1C4588EAC();
          v35 = *(*v31 + 16);
          sub_1C4589A94();
          v36 = *v31;
          *(v36 + 16) = v35 + 1;
          v78((v36 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v35), &v10[v27], v30);
          *v31 = v36;
          v87 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_56;
          }
        }

        v37 = *(v88 + 40);
        if (!*(v37 + 16))
        {
          goto LABEL_47;
        }

        sub_1C44E3664();
        if ((v39 & 1) == 0)
        {
          goto LABEL_48;
        }

        if (!*(v37 + 16))
        {
          goto LABEL_49;
        }

        v40 = *(*(v37 + 56) + 8 * v38);
        sub_1C44E3664();
        if ((v42 & 1) == 0)
        {
          goto LABEL_50;
        }

        if (*(*(v37 + 56) + 8 * v41) >= v40)
        {
          v43 = v40;
        }

        else
        {
          v43 = *(*(v37 + 56) + 8 * v41);
        }

        if (!*(v37 + 16))
        {
          goto LABEL_51;
        }

        sub_1C44E3664();
        if ((v45 & 1) == 0)
        {
          goto LABEL_52;
        }

        if (!*(v37 + 16))
        {
          goto LABEL_53;
        }

        v46 = *(*(v37 + 56) + 8 * v44);
        sub_1C44E3664();
        if ((v48 & 1) == 0)
        {
          goto LABEL_54;
        }

        if (*(*(v37 + 56) + 8 * v47) > v46)
        {
          v46 = *(*(v37 + 56) + 8 * v47);
        }

        v49 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v49 + 16);
          sub_1C458C890();
          v49 = v53;
        }

        v50 = *(v49 + 16);
        v12 = v49;
        if (v50 >= *(v49 + 24) >> 1)
        {
          sub_1C458C890();
          v12 = v54;
        }

        sub_1C44E383C(v10);
        *(v12 + 16) = v50 + 1;
        v51 = v12 + 24 * v50;
        *(v51 + 32) = v43;
        *(v51 + 40) = v46;
        *(v51 + 48) = v16;
        v15 = v79;
      }

      else
      {
        sub_1C44E383C(v10);
      }

      v14 += v15;
      if (!--v11)
      {
        goto LABEL_30;
      }
    }
  }

  v87 = 0;
LABEL_30:
  v55 = v87;
  v56 = sub_1C44B345C(v87, 0.0);
  v57 = sub_1C44B33C8(v56, v55);
  v58 = v88;
  v59 = *(v88 + 8);

  *(v58 + 8) = v57;
  sub_1C44B3548(v12, v58);
  v60 = *(v58 + 8);
  v61 = *(v60 + 16);
  if (v61)
  {
    v90 = MEMORY[0x1E69E7CC0];
    sub_1C459DD98(0, v61, 0);
    v62 = 0;
    v63 = v90;
    while (v62 < *(v60 + 16))
    {
      v64 = 0;
      v65 = 0;
      v66 = v62 + 1;
      v67 = *(v60 + 32 + 8 * v62);
      v68 = *(v67 + 16);
      v69 = v67 + 32;
      v70 = 0.0;
      while (v68 != v64)
      {
        v71 = *(v69 + 4 * v64);
        if (v70 < v71)
        {
          v65 = v64;
        }

        ++v64;
        if (v70 < v71)
        {
          v70 = v71;
        }
      }

      v90 = v63;
      v73 = *(v63 + 16);
      v72 = *(v63 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1C459DD98((v72 > 1), v73 + 1, 1);
        v63 = v90;
      }

      *(v63 + 16) = v73 + 1;
      v74 = v63 + 16 * v73;
      *(v74 + 32) = v65;
      *(v74 + 40) = v70;
      v62 = v66;
      if (v66 == v61)
      {

        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {

    v63 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v75 = v88;
    v76 = *(v88 + 16);

    *(v75 + 16) = v63;
  }
}

uint64_t sub_1C44B33C8(uint64_t result, uint64_t a2)
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
      sub_1C456902C(&qword_1EC0B8A90, &unk_1C4F0DEC0);
      sub_1C4411720();
      v4 = sub_1C4F01728();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1C44B345C(uint64_t result, float a2)
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
      result = sub_1C4F01728();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1C4F0D7C0)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_1C4F4A4E0)))).i32[1])
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
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1C44B3548(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 48);
  v5 = *(a1 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 6;
    v7 = *v4;
    v8 = *(v4 - 1);
    v9 = v7;
    sub_1C4886F6C(&v8, a2);
    v4 = v6;
  }

  while (!v2);
}

void sub_1C44B35B4()
{
  i = v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = sub_1C497E97C();
    if (sub_1C4619FFC(v72, v3 + 32, v2, 0, v2) == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v4 = *(v3 + 16);
  if (v4 < 2)
  {
LABEL_72:

    return;
  }

  v5 = i[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_111;
  }

LABEL_7:
  v68 = i[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C4834878(v68);
    v68 = v63;
  }

  v6 = v5 + 32;
  v70 = v68 + 32;
  v71 = v5 + 40;
  v64 = v5;
  v65 = i;
LABEL_10:
  v7 = 0;
  v69 = v4;
  v8 = *(v5 + 16);
  v4 = -1;
  v9 = 0.0;
  v10 = -1;
LABEL_11:
  v11 = (v71 + 16 * v7);
  while (1)
  {
    if (v8 == v7)
    {
      if (v10 == -1)
      {
        v4 = 0;
        i[1] = v68;
        i[2] = v5;
        v3 = 24;
        v10 = MEMORY[0x1E69E7CC0];
LABEL_76:
        v43 = (v5 + 32 + 16 * v4);
        while (v8 != v4)
        {
          if (v4 >= *(v5 + 16))
          {
            goto LABEL_110;
          }

          ++v4;
          v44 = *v43;
          v43 += 2;
          if (v44 == -1)
          {
            v45 = *(v43 - 2);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v72[0] = v10;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C459DDB8(0, *(v10 + 16) + 1, 1);
              v10 = v72[0];
            }

            v48 = *(v10 + 16);
            v47 = *(v10 + 24);
            if (v48 >= v47 >> 1)
            {
              v50 = sub_1C43FCFE8(v47);
              sub_1C459DDB8(v50, v48 + 1, 1);
              v10 = v72[0];
            }

            *(v10 + 16) = v48 + 1;
            v49 = v10 + 24 * v48;
            *(v49 + 32) = v4 - 1;
            *(v49 + 40) = -1;
            *(v49 + 48) = v45;
            goto LABEL_76;
          }
        }

        v51 = *(v10 + 16);
        if (!v51)
        {
          __break(1u);
          return;
        }

        v4 = v51 - 1;
        if (v51 != 1)
        {
          goto LABEL_90;
        }

        goto LABEL_72;
      }

      v17 = i[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v17 + 16);
        sub_1C43FCEC0();
        sub_1C458C994();
        v17 = v40;
      }

      v18 = *(v17 + 16);
      if (v18 >= *(v17 + 24) >> 1)
      {
        sub_1C458C994();
        v17 = v41;
      }

      *(v17 + 16) = v18 + 1;
      v19 = v17 + 24 * v18;
      *(v19 + 32) = v10;
      *(v19 + 40) = v4;
      *(v19 + 48) = v9;
      i[3] = v17;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        sub_1C48347BC(v3);
        v3 = v42;
        if ((v4 & 0x8000000000000000) != 0)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }
      }

      i = *(v3 + 16);
      if (v4 >= i)
      {
        goto LABEL_100;
      }

      v20 = (v3 + 32);
      *(v3 + 32 + 8 * v4) = -1;
      if (v4 < *(v5 + 16))
      {
        *(v71 + 16 * v4) = -1082130432;
        v67 = v3;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v3 = 0;
        v21 = i - 1;
        v22 = -1;
        v23 = 0.0;
        do
        {
          while (1)
          {
            v24 = (v3 + 1);
            v25 = v20[v3] == -1 || v10 == v3;
            if (v25)
            {
              break;
            }

            if (v3 >= *(v68 + 16))
            {
              goto LABEL_102;
            }

            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_103;
            }

            v26 = *(v70 + 8 * v3);
            v27 = *(v26 + 16);
            if (v10 >= v27)
            {
              goto LABEL_104;
            }

            if (v4 >= v27)
            {
              goto LABEL_106;
            }

            v66 = v21;
            if (*(v26 + 32 + 4 * v10) > *(v26 + 32 + 4 * v4))
            {
              v28 = *(v26 + 32 + 4 * v10);
            }

            else
            {
              v28 = *(v26 + 32 + 4 * v4);
            }

            v29 = swift_isUniquelyReferenced_nonNull_native();
            *(v70 + 8 * v3) = v26;
            if ((v29 & 1) == 0)
            {
              sub_1C4834860(v26);
              v26 = v32;
              *(v70 + 8 * v3) = v32;
            }

            if (v10 >= *(v26 + 16))
            {
              goto LABEL_107;
            }

            *(v26 + 4 * v10 + 32) = v28;
            if (v10 >= *(v68 + 16))
            {
              goto LABEL_108;
            }

            v30 = *(v70 + 8 * v10);
            v31 = swift_isUniquelyReferenced_nonNull_native();
            *(v70 + 8 * v10) = v30;
            if ((v31 & 1) == 0)
            {
              sub_1C4834860(v30);
              v30 = v33;
              *(v70 + 8 * v10) = v33;
            }

            v5 = v64;
            v21 = v66;
            if (v3 >= *(v30 + 16))
            {
              goto LABEL_109;
            }

            *(v30 + 4 * v3 + 32) = v28;
            if (v23 < v28)
            {
              v23 = v28;
              v22 = v3;
            }

            v25 = v66 == v3++;
            if (v25)
            {
              goto LABEL_60;
            }
          }

          ++v3;
        }

        while (i != v24);
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

LABEL_60:
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_105;
        }

        v34 = v6 + 16 * v10;
        *v34 = v22;
        *(v34 + 8) = v23;
        v3 = v67;
        v35 = *(v67 + 16);
        for (i = v65; v35; --v35)
        {
          v37 = *v20++;
          v36 = v37;
          if (v37 != -1)
          {
            if ((v36 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            if (v36 >= *(v5 + 16))
            {
              goto LABEL_98;
            }

            v38 = 16 * v36;
            if (*(v6 + v38) == v4)
            {
              *(v6 + v38) = v10;
            }
          }
        }

        v4 = v69 - 1;
        if (v69 <= 2)
        {

          v65[1] = v68;
          v65[2] = v5;
          return;
        }

        goto LABEL_10;
      }

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
      sub_1C4834890(v5);
      v5 = v62;
      goto LABEL_7;
    }

    if (v7 >= v8)
    {
      break;
    }

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_89;
    }

    v13 = *v11;
    v11 += 4;
    v14 = v13;
    ++v7;
    if (v9 < v13)
    {
      v15 = *(v11 - 3);
      v16 = v7 - 1;
      if (v15 <= v16)
      {
        v4 = v16;
      }

      else
      {
        v4 = v15;
      }

      if (v15 >= v16)
      {
        v10 = v16;
      }

      else
      {
        v10 = v15;
      }

      v7 = v12;
      v9 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v52 = *(v10 + 32);
  v53 = i[3];
  v54 = 56;
  do
  {
    v55 = *(v10 + v54);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = *(v53 + 16);
      sub_1C43FCEC0();
      sub_1C458C994();
      v53 = v60;
    }

    v57 = *(v53 + 16);
    v56 = *(v53 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1C43FCFE8(v56);
      sub_1C458C994();
      v53 = v61;
    }

    *(v53 + 16) = v57 + 1;
    v58 = v53 + 24 * v57;
    *(v58 + 32) = v52;
    *(v58 + 40) = v55;
    *(v58 + 48) = v9;
    v54 += 24;
    --v4;
  }

  while (v4);

  i[3] = v53;
}

uint64_t sub_1C44B3BBC(float a1)
{
  v106 = sub_1C4EFF0C8();
  v3 = *(*(v106 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v106);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v100 - v10;
  v114 = v1;
  v11 = *v1;
  v13 = v12;
  v102 = v11;
  v115 = *(v11 + 2);
  v14 = sub_1C44B43F4(0, v115);
  v15 = v14;
  v16 = *(v14 + 16);
  v112 = v9;
  v113 = v13;
  v111 = v6;
  v118 = v16;
  if (v16)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC8];
    v117 = v14 + 32;
    v116 = xmmword_1C4F0D130;
    v6 = v111;
    while (v17 < *(v15 + 16))
    {
      v19 = *(v117 + 8 * v17);
      sub_1C456902C(&qword_1EC0B8838, "nS\t");
      v20 = swift_allocObject();
      *(v20 + 16) = v116;
      *(v20 + 32) = v19;
      swift_isUniquelyReferenced_nonNull_native();
      v119 = v18;
      v21 = sub_1C457B350(v19);
      if (__OFADD__(*(v18 + 16), (v22 & 1) == 0))
      {
        goto LABEL_64;
      }

      v23 = v21;
      v24 = v22;
      sub_1C456902C(&qword_1EC0BE638, &unk_1C4F37AC8);
      if (sub_1C4F02458())
      {
        v25 = sub_1C457B350(v19);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_69;
        }

        v23 = v25;
      }

      v13 = v113;
      v18 = v119;
      if (v24)
      {
        v27 = *(v119 + 56);
        v28 = *(v27 + 8 * v23);
        *(v27 + 8 * v23) = v20;
      }

      else
      {
        sub_1C4417364(v119 + 8 * (v23 >> 6));
        *(v29 + 8 * v23) = v19;
        *(*(v18 + 56) + 8 * v23) = v20;
        v30 = *(v18 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_66;
        }

        *(v18 + 16) = v32;
      }

      ++v17;
      v9 = v112;
      if (v118 == v17)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC8];
LABEL_15:

    v33 = v114[3];
    v34 = *(v33 + 2);
    if (v34)
    {
      v35 = (v33 + 48);
      do
      {
        if (*v35 > a1)
        {
          if (!*(v18 + 16))
          {
            goto LABEL_68;
          }

          v37 = *(v35 - 2);
          v36 = *(v35 - 1);
          v38 = sub_1C457B350(v37);
          if ((v39 & 1) == 0)
          {
            goto LABEL_68;
          }

          v40 = *(v18 + 56);
          v41 = *(v40 + 8 * v38);
          v42 = sub_1C457B350(v36);
          if ((v43 & 1) == 0)
          {
            goto LABEL_68;
          }

          v44 = *(v40 + 8 * v42);
          v119 = v41;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v45 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C49D3D88(v45);
          v46 = v119;
          swift_isUniquelyReferenced_nonNull_native();
          v119 = v18;
          v47 = sub_1C457B350(v37);
          if (__OFADD__(*(v18 + 16), (v48 & 1) == 0))
          {
            goto LABEL_65;
          }

          v49 = v47;
          v50 = v48;
          v118 = sub_1C456902C(&qword_1EC0BE638, &unk_1C4F37AC8);
          if (sub_1C4F02458())
          {
            v51 = sub_1C457B350(v37);
            if ((v50 & 1) != (v52 & 1))
            {
              goto LABEL_69;
            }

            v49 = v51;
          }

          v18 = v119;
          if (v50)
          {
            v53 = *(v119 + 56);
            v54 = *(v53 + 8 * v49);
            *(v53 + 8 * v49) = v46;
          }

          else
          {
            sub_1C4417364(v119 + 8 * (v49 >> 6));
            *(v55 + 8 * v49) = v37;
            *(*(v18 + 56) + 8 * v49) = v46;
            v56 = *(v18 + 16);
            v31 = __OFADD__(v56, 1);
            v57 = v56 + 1;
            if (v31)
            {
              goto LABEL_67;
            }

            *(v18 + 16) = v57;
          }

          v58 = sub_1C457B350(v36);
          v6 = v111;
          if (v59)
          {
            v60 = v58;
            swift_isUniquelyReferenced_nonNull_native();
            v119 = v18;
            v61 = *(v18 + 24);
            sub_1C4F02458();
            v18 = v119;
            v62 = *(*(v119 + 56) + 8 * v60);

            sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
            sub_1C4F02478();
          }

          v9 = v112;
          v13 = v113;
        }

        v35 += 6;
        --v34;
      }

      while (v34);
    }

    v63 = v18 + 64;
    v64 = 1 << *(v18 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v18 + 64);
    v67 = (v64 + 63) >> 6;
    v118 = v13 + 16;
    v114 = (v13 + 32);
    v101 = (v13 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v68 = 0;
    v69 = MEMORY[0x1E69E7CC0];
    v117 = v18;
    v105 = v18 + 64;
    v103 = v67;
    if (v66)
    {
      while (1)
      {
        v108 = v69;
LABEL_41:
        v109 = v68;
        v110 = v66;
        v71 = *(*(v18 + 56) + ((v68 << 9) | (8 * __clz(__rbit64(v66)))));
        v72 = *(v71 + 16);
        v107 = v71;
        if (v72)
        {
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v74 = MEMORY[0x1E69E7CC0];
        v77 = v106;
LABEL_49:
        v83 = *(v74 + 16);
        v84 = sub_1C4887098();
        v119 = MEMORY[0x1C69407C0](v83, v77, v84);
        v85 = *(v74 + 16);
        v86 = v104;
        v63 = v105;
        if (v85)
        {
          v87 = v74 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
          *&v116 = *(v113 + 72);
          v88 = *(v113 + 16);
          v89 = v101;
          v90 = v106;
          do
          {
            v88(v86, v87, v90);
            sub_1C44D56D0();
            (*v89)(v6, v90);
            v87 += v116;
            --v85;
          }

          while (v85);

          v18 = v117;
          v63 = v105;
        }

        else
        {
        }

        v91 = v119;
        v69 = v108;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v110;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v96 = *(v69 + 16);
          sub_1C43FCEC0();
          sub_1C458CA88();
          v69 = v97;
        }

        v95 = *(v69 + 16);
        v94 = *(v69 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_1C43FCFE8(v94);
          sub_1C458CA88();
          v69 = v98;
        }

        v66 = (v93 - 1) & v93;

        *(v69 + 16) = v95 + 1;
        *(v69 + 8 * v95 + 32) = v91;
        v9 = v112;
        v67 = v103;
        v68 = v109;
        if (!v66)
        {
          goto LABEL_37;
        }
      }

      v119 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459D178();
      v73 = v113;
      v74 = v119;
      v75 = (v71 + 32);
      v76 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      *&v116 = v102 + v76;
      v77 = v106;
      while (1)
      {
        v79 = *v75++;
        v78 = v79;
        if (v79 >= v115)
        {
          break;
        }

        v80 = *(v73 + 72);
        (*(v73 + 16))(v9, v116 + v80 * v78, v77);
        v119 = v74;
        v82 = *(v74 + 16);
        v81 = *(v74 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_1C43FCFE8(v81);
          sub_1C459D178();
          v73 = v113;
          v74 = v119;
        }

        *(v74 + 16) = v82 + 1;
        (*v114)(v74 + v76 + v82 * v80, v9, v77);
        --v72;
        v18 = v117;
        if (!v72)
        {
          v6 = v111;
          goto LABEL_49;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_37:
      while (1)
      {
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        if (v70 >= v67)
        {

          return v69;
        }

        v66 = *(v63 + 8 * v70);
        ++v68;
        if (v66)
        {
          v108 = v69;
          v68 = v70;
          goto LABEL_41;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  sub_1C4F024A8();
  __break(1u);
LABEL_69:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}