void sub_18E2EAC00()
{
  sub_18E1C575C();
  v2 = v0[5];
  v3 = sub_18E228964(v0[6]);
  sub_18E221834(v3);
  sub_18E1CF2D8();
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_18E1D6328(v7, v8, v9, v10, v11, v12, v13, v14, v57);
  (v1)(v15);
  sub_18E220AAC();
  sub_18E211EDC();
  sub_18E235294(v16);
  if (v17)
  {
    sub_18E1D4370();
    sub_18E211EDC();
    sub_18E216B58(v55);
  }

  sub_18E237A38();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_18E2112EC();
  (v1)(v19);
  v20 = sub_18E1C5820(v59);
  sub_18E1DF2A8(v20, v21, v22, v23, v24);
  v25 = sub_18E2167D8();
  v26(v25);
  v27 = v0[10];
  v58 = v0[11];
  sub_18E221834(v0 + 7);
  v59 = &v57;
  sub_18E1CF2D8();
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v39 = sub_18E1D4D58(v31, v32, v33, v34, v35, v36, v37, v38, v57);
  (v1)(v39);
  sub_18E1E597C();
  if (v17)
  {
    sub_18E1C5068();
    sub_18E211EDC();
    sub_18E216B58(v56);
  }

  sub_18E235258();
  v41 = MEMORY[0x1EEE9AC00](v40);
  sub_18E1CEAD0(v41, v42, v43, v44, v45, v46, v47, v48, v57);
  sub_18E2F80D4();
  v1();
  v49 = sub_18E247014(v58);
  sub_18E1DF2A8(v49, v50, v51, v27, v52);
  v53 = sub_18E223F60();
  v54(v53, v27);
  sub_18E220284();
  sub_18E1C5544();
}

uint64_t sub_18E2EAE04(uint64_t a1)
{
  v2 = sub_18E2F17B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2EAE40(uint64_t a1)
{
  v2 = sub_18E2F17B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedLLMDraftBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE2668, &qword_18E4AAF58);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAE74();
  sub_18E1C975C();
  sub_18E2F17B0();
  sub_18E1CF90C();
  if (!v1)
  {
    v11 = sub_18E1E63B4();
    sub_18E2706EC(v11, v12);
    sub_18E240610();
    sub_18E1C6B74();
    sub_18E1E1638(v13, v14, &qword_18E4AAF60);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1D5E94();
    sub_18E1E9CB4();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    sub_18E23386C();
    sub_18E1E33AC();
    sub_18E201890();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E3434();
    sub_18E1C86E0();
    v15 = swift_allocObject();
    sub_18E1CFEE4(v15);
    sub_18E1E7BB4();
    sub_18E1C86E0();
    v16 = swift_allocObject();
    v17 = sub_18E1D001C(v16);
    memcpy(v17, v18, 0xD8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(&qword_18E4AAF60);
    if (v19)
    {
      v20 = sub_18E1CBE2C();
      v21(v20);
      sub_18E1E8F44(&qword_18E4AAF60, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v22 = sub_18E44E49C();
      v24 = sub_18E1E2B98(v22, v23);
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E202CF4();
      v29(v28);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedLLMDraftBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  v1 = sub_18E2706EC(&qword_1EABE2688, &qword_18E4AAF68);
  sub_18E1C4EAC(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E88C0();
  sub_18E1D60D8();
  sub_18E2F17B0();
  sub_18E1E394C();
  sub_18E223988();
  AssetBackedLLMDraftBundle.id.getter();
  sub_18E1CD638();
  v16[256] = 0;
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2690);
  sub_18E1EA540();
  if (v0)
  {

    v7 = sub_18E1E3D10();
    v8(v7);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    sub_18E2706EC(&qword_1EABE2528, &qword_18E4AAE48);
    if (sub_18E1E69D8())
    {
      sub_18E1E851C();
      sub_18E224D5C();
      sub_18E1E20AC();
      sub_18E212184();
      sub_18E220CD8();
      sub_18E2121D8(&v17);
      sub_18E238EA8();
      sub_18E2706EC(&qword_1EABE2558, &qword_18E4AAE78);
      if (sub_18E223580())
      {
        sub_18E1E1400();
        sub_18E224DA8();
        sub_18E223E10();
        sub_18E2122D0();
        sub_18E224F80();
        v13 = sub_18E1E6C0C();
        v14(v13);
        sub_18E2CF5A0(v16);
        goto LABEL_7;
      }

      sub_18E228994();
      sub_18E1C8558();
      sub_18E244FB8();
      v10 = v15 | 1;
    }

    else
    {
      sub_18E228994();
      sub_18E1C8558();
      sub_18E244FB8();
    }

    sub_18E2231EC(v9, v10);
    v11 = sub_18E1E6C0C();
    v12(v11);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2EB508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, void *a5@<X8>)
{
  v7 = sub_18E22897C(a1, a2, a3, a5);
  v8(v7);

  return a4(v5, v6 + 56);
}

void LLMDraftBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F7FEC();
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  v4 = *(v3 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C61D0();
  sub_18E1E7430();
  sub_18E26C3FC(v1, v6);
  v7 = MEMORY[0x1E69E7CA0];
  if (!*&v56[24])
  {

    sub_18E1E8F44(v56, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E22024C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *v56 = v21;
    *&v56[8] = v22;
LABEL_25:
    sub_18E216B20();
    sub_18E22449C();

    v25 = v0;
LABEL_26:
    MEMORY[0x193ACC300](v25, v7);

LABEL_27:
    sub_18E2AE554();
    v26 = sub_18E1C8558();
    sub_18E1CFAB8(v26, v27);
    goto LABEL_28;
  }

  if ((sub_18E22169C() & 1) == 0)
  {

    goto LABEL_21;
  }

  v8 = v55[0];
  v9 = v55[1];
  type metadata accessor for Utils();
  v10 = sub_18E1E673C();
  if (sub_18E32F0AC(v10, v55[1]))
  {
    goto LABEL_8;
  }

  if (qword_1EABE0CF8 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v11 = sub_18E44E83C();
    sub_18E1C95EC(v11, qword_1EAC7F560);
    sub_18E1E6C9C();

    v12 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      *v56 = sub_18E223E58();
      *v8 = 136315138;
      *(v8 + 4) = sub_18E1C9624(v8, v9, v56);
      sub_18E1D5F48(&dword_18E1C1000, v13, v14, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v7 = MEMORY[0x1E69E7CA0];
LABEL_8:
    sub_18E1D49B0();
    sub_18E2F7D70();
    sub_18E26C3FC(v1, v15);
    if (!*&v56[24])
    {

      sub_18E1E8F44(v56, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_24:
      sub_18E22024C();
      sub_18E44EFFC();
      sub_18E1E844C();
      MEMORY[0x193ACC300](v23 + 29, v24 | 0x8000000000000000);
      goto LABEL_25;
    }

    if ((sub_18E22169C() & 1) == 0)
    {

      goto LABEL_24;
    }

    v9 = 0;
    v7 = v55[1];
    sub_18E20196C();
LABEL_11:
    sub_18E220EA4();
    if (v20)
    {
      goto LABEL_43;
    }

    sub_18E1E1888();
    if (!v16)
    {
      break;
    }

    __break(1u);
LABEL_58:
    sub_18E1C7804();
  }

  sub_18E1E8C38(v8, v56);
  v0 = *&v56[32];
  sub_18E1E15F4(v56, *&v56[24]);
  v17 = sub_18E1CD91C();
  v18(v17);
  sub_18E220298();
  v20 = v20 && v19 == v55[1];
  if (!v20)
  {
    sub_18E221494();
    sub_18E1E1F80();

    if (v0)
    {
      goto LABEL_31;
    }

    sub_18E207AC8(v56);
    goto LABEL_11;
  }

LABEL_31:
  sub_18E1C551C(v56, &v57);
  sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  if ((sub_18E2F8884() & 1) == 0)
  {
LABEL_43:

    sub_18E22024C();
    sub_18E44EFFC();

    sub_18E1C8E68();
    *v56 = v36 + 20;
    *&v56[8] = v37;
    v25 = v55[0];
    goto LABEL_26;
  }

  memcpy(v55, v56, sizeof(v55));
  sub_18E1C5B68();
  sub_18E2F86BC();
  if (!v52)
  {

    sub_18E2CF1A4(v55);

    sub_18E1E8F44(&v51, &qword_1EABE3B70, &qword_18E4AAB80);
    goto LABEL_46;
  }

  if ((sub_18E223680() & 1) == 0)
  {

    sub_18E2CF1A4(v55);

LABEL_46:
    sub_18E223A3C();
    sub_18E44EFFC();
    sub_18E221770();
    v38 = sub_18E1D0358();
    MEMORY[0x193ACC300](v38);
    sub_18E223530();
    sub_18E22449C();

    v39 = sub_18E1E884C();
LABEL_55:
    MEMORY[0x193ACC300](v39, v7);

    goto LABEL_27;
  }

  v28 = 0;
  v7 = v54[1];
  while (1)
  {
    sub_18E223270();
    if (v20)
    {

      sub_18E2CF1A4(v55);

LABEL_54:
      sub_18E223A3C();
      sub_18E44EFFC();

      sub_18E1C8E68();
      *&v51 = v46 + 24;
      *(&v51 + 1) = v45;
      v39 = sub_18E1E861C();
      goto LABEL_55;
    }

    sub_18E224CBC();
    if (v16)
    {
      __break(1u);
      return;
    }

    sub_18E1E8C38(v29, &v51);
    v30 = v52;
    v31 = v53;
    v32 = sub_18E1E1D24(&v51);
    v33(v32);
    sub_18E220C28();
    if (v20 && v34 == v7)
    {
      break;
    }

    sub_18E1E2878();
    sub_18E1E1F80();

    if (v30)
    {
      goto LABEL_49;
    }

    sub_18E1C9934(&v51);
    ++v28;
  }

LABEL_49:

  sub_18E1C551C(&v51, v54);
  if ((sub_18E22086C() & 1) == 0)
  {

    sub_18E2CF1A4(v55);
    goto LABEL_54;
  }

  sub_18E1E28CC();
  sub_18E220B24();
  v40 = swift_allocObject();
  v41 = sub_18E1E8338(v40);
  memcpy(v41, v55, 0xF8uLL);
  sub_18E216928();
  sub_18E220B24();
  v42 = swift_allocObject();
  v43 = sub_18E1E9C70(v42);
  memcpy(v43, v44, 0xF8uLL);
  sub_18E1E19CC();
  sub_18E223960();
  sub_18E44E54C();
  sub_18E1D4C60(v31);
  if (v20)
  {

    sub_18E1E8F44(v31, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    sub_18E44E49C();
    sub_18E2F7AB0();
    sub_18E25E19C();
    v48 = *(v47 + 8);
    v49 = sub_18E1CBE3C();
    v50(v49);
  }

  sub_18E1E1B50();
  sub_18E23492C();
LABEL_28:
  sub_18E1E86A4();
  sub_18E1C6650();
}

void sub_18E2EBCA4()
{
  sub_18E1C575C();
  v2 = v0[5];
  v3 = sub_18E228964(v0[6]);
  sub_18E221834(v3);
  sub_18E1CF2D8();
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = sub_18E1D6328(v7, v8, v9, v10, v11, v12, v13, v14, v57);
  (v1)(v15);
  sub_18E220AAC();
  sub_18E2451D0();
  sub_18E235294(v16);
  if (v17)
  {
    sub_18E1D4370();
    sub_18E2451D0();
    sub_18E216B58(v55);
  }

  sub_18E237A38();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_18E2112EC();
  (v1)(v19);
  v20 = sub_18E1C5820(v59[1]);
  sub_18E1DF2A8(v20, v21, v22, v23, v24);
  v25 = sub_18E2167D8();
  v26(v25);
  v27 = v0[10];
  v58 = v0[11];
  sub_18E221834(v0 + 7);
  v59 = &v57;
  sub_18E1CF2D8();
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v39 = sub_18E1D4D58(v31, v32, v33, v34, v35, v36, v37, v38, v57);
  (v1)(v39);
  sub_18E1E597C();
  if (v17)
  {
    sub_18E1C5068();
    sub_18E2451D0();
    sub_18E216B58(v56);
  }

  sub_18E235258();
  v41 = MEMORY[0x1EEE9AC00](v40);
  sub_18E1CEAD0(v41, v42, v43, v44, v45, v46, v47, v48, v57);
  sub_18E2F80D4();
  v1();
  sub_18E1E1A80(v58);
  v49 = sub_18E1CF9A0();
  sub_18E1DF2A8(v49, v50, v51, v27, v52);
  v53 = sub_18E223F60();
  v54(v53, v27);
  sub_18E220284();
  sub_18E1C5544();
}

uint64_t sub_18E2EBEB0()
{
  sub_18E1E2F2C();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == sub_18E1D49B0() && v0 == v5;
    if (v6 || (sub_18E2F7D70(), (sub_18E1CF3DC() & 1) != 0))
    {

      return 1;
    }

    else
    {
      sub_18E1D5DB4();
      if (v3 && v0 == v7)
      {

        return 2;
      }

      else
      {
        sub_18E23552C();
        sub_18E1CF3DC();
        sub_18E1E6A20();
        sub_18E228220();
        if (v3)
        {
          return v9 + 1;
        }

        else
        {
          return v9;
        }
      }
    }
  }
}

uint64_t sub_18E2EBF58(uint64_t a1)
{
  v2 = sub_18E2F186C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2EBF94(uint64_t a1)
{
  v2 = sub_18E2F186C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMDraftBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C8E58();
  v7 = sub_18E2706EC(&qword_1EABE2698, &qword_18E4AAF70);
  sub_18E1C539C(v7);
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAE74();
  sub_18E1C975C();
  sub_18E2F186C();
  sub_18E1CF90C();
  if (!v1)
  {
    v11 = sub_18E1E63B4();
    sub_18E2706EC(v11, v12);
    sub_18E1C6B74();
    sub_18E1E1638(v13, v14, &qword_18E4AAF78);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    v15 = v32[1];
    sub_18E1E1F48();
    sub_18E2CFC90();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    memcpy(v31, v32, sizeof(v31));
    sub_18E1E33AC();
    sub_18E2CFD38();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E1E28CC();
    sub_18E220B24();
    v30 = swift_allocObject();
    memcpy((v30 + 16), v31, 0xF8uLL);
    sub_18E216928();
    sub_18E220B24();
    v16 = swift_allocObject();
    v17 = sub_18E1D001C(v16);
    memcpy(v17, v18, 0xF8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(v15);
    if (v19)
    {
      v20 = sub_18E1CBE2C();
      v21(v20);
      sub_18E1E8F44(v15, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v22 = sub_18E44E49C();
      v24 = sub_18E1E2B98(v22, v23);
      v25(v24);
      sub_18E212008();
      v27 = *(v26 + 8);
      v28 = sub_18E202CF4();
      v29(v28);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void LLMDraftBundle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E1D848C();
  v11 = sub_18E2706EC(&qword_1EABE26B8, &qword_18E4AAF80);
  sub_18E1C4EAC(v11);
  v13 = *(v12 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1E88C0();
  sub_18E1D60D8();
  sub_18E2F186C();
  sub_18E1E394C();
  LLMDraftBundle.id.getter();
  v30[0] = v31[0];
  v30[1] = v31[1];
  v29[0] = 0;
  v15 = sub_18E1E33F0();
  sub_18E2706EC(v15, v16);
  sub_18E1C828C(&qword_1EABE26C0);
  sub_18E44F35C();
  if (a10)
  {

    v17 = sub_18E1E3D10();
    v18(v17);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    sub_18E2706EC(&qword_1EABE25C8, &qword_18E4AAEE8);
    if (sub_18E2387D0())
    {
      memcpy(v30, v31, sizeof(v30));
      memcpy(v29, v31, sizeof(v29));
      v27[0] = 1;
      sub_18E2CF150();
      sub_18E44F35C();
      sub_18E2CF1A4(v30);
      sub_18E1E8C38(v10 + 56, &v28);
      sub_18E2706EC(&qword_1EABE25F8, &qword_18E4AAF18);
      if (swift_dynamicCast())
      {
        memcpy(v27, v29, sizeof(v27));
        memcpy(v26, v29, sizeof(v26));
        sub_18E223E10();
        sub_18E2CF5D0();
        sub_18E224F80();
        v23 = sub_18E1E6C0C();
        v24(v23);
        sub_18E2CF624(v27);
        goto LABEL_7;
      }

      sub_18E228994();
      sub_18E1C8558();
      sub_18E244FB8();
      v20 = v25 | 1;
    }

    else
    {
      sub_18E228994();
      sub_18E1C8558();
      sub_18E244FB8();
    }

    sub_18E2231EC(v19, v20);
    v21 = sub_18E1E6C0C();
    v22(v21);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedDiffusionBundle.init(with:resources:)()
{
  sub_18E1C62A0();
  sub_18E2F8014();
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E2352F4();
  sub_18E1E7430();
  sub_18E26C3FC(v4, v9);
  v10 = MEMORY[0x1E69E7CA0];
  if (!v58)
  {

    sub_18E1E8F44(v57, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E21D118();
    sub_18E44EFFC();

    sub_18E1C8E68();
    sub_18E1E6CD0(v22);
    goto LABEL_25;
  }

  if ((sub_18E240914() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_18E2F8404();
  if ((sub_18E2F8504() & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
LABEL_58:
      sub_18E1C7804();
    }

    v11 = sub_18E44E83C();
    sub_18E1CE8B4(v11, qword_1EAC7F560);

    v12 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      v13 = sub_18E223E58();
      sub_18E2F7DF4(v13);
      sub_18E2F7F68(4.8149e-34);
      *(v0 + 4) = sub_18E1C9624(v52, v1, v14);
      sub_18E1D5F48(&dword_18E1C1000, v15, v16, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E1C9934(v2);
      v17 = sub_18E1D1964();
      MEMORY[0x193ACD400](v17);
      sub_18E238D04();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E1CC4E4();
  sub_18E211F98();
  v10 = MEMORY[0x1E69E7CA0];
  if (v58)
  {
    if (sub_18E240914())
    {
      sub_18E221D64();
      while (1)
      {
        sub_18E24177C();
        if (v21)
        {
          goto LABEL_41;
        }

        sub_18E228904();
        if (v18)
        {
          __break(1u);
          goto LABEL_58;
        }

        sub_18E2F8584();
        v1 = v58;
        sub_18E1C8570(v57, v58);
        v19(v1);
        sub_18E223708();
        v21 = v21 && v20 == v10;
        if (v21)
        {
          break;
        }

        sub_18E1E1574();
        sub_18E1CF9C4();

        if (v1)
        {
          goto LABEL_29;
        }

        sub_18E1E3BE0(v57);
      }

LABEL_29:
      v27 = sub_18E216A00();
      sub_18E1C551C(v27, v28);
      v29 = sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
      sub_18E216A00();
      if ((sub_18E2235B8() & 1) == 0)
      {
LABEL_41:

        sub_18E21D118();
        sub_18E44EFFC();

        sub_18E1C8E68();
        v24 = sub_18E1D0468(v38);
        goto LABEL_26;
      }

      v30 = sub_18E1E6960();
      memcpy(v30, v31, 0xD8uLL);
      sub_18E2233C0();
      sub_18E2F7BF0();

      if (v54[3])
      {
        sub_18E2F8238();
        v32 = v52;
        if (sub_18E2F7C18())
        {
          sub_18E2201FC();
          while (1)
          {
            sub_18E24177C();
            if (v21)
            {

              sub_18E1E01D0(v55);
              goto LABEL_50;
            }

            sub_18E228904();
            if (v18)
            {
              __break(1u);
              return;
            }

            sub_18E1E8C38(v33, v55);
            v34 = v56;
            sub_18E1C8570(v55, v56);
            v35(v34);
            sub_18E223708();
            if (v21 && v36 == v10)
            {

              goto LABEL_47;
            }

            sub_18E1E1574();
            sub_18E1E2238();

            if (v34)
            {
              break;
            }

            sub_18E1C9934(v55);
            ++v29;
          }

LABEL_47:

          sub_18E2F8914();
          sub_18E2F822C();
          if ((sub_18E2F868C() & 1) == 0)
          {
            goto LABEL_49;
          }

          sub_18E220A28();
          nullsub_1(v53);
          sub_18E2F7BD4();
          goto LABEL_50;
        }
      }

      else
      {

        sub_18E1E8F44(v54, &qword_1EABE3B70, &qword_18E4AAB80);
        v32 = v52;
      }

LABEL_49:
      sub_18E1E01D0(v55);
LABEL_50:
      v53[3] = &type metadata for AssetBackedDiffusionModelBase;
      v53[4] = sub_18E232D9C();
      sub_18E1C86E0();
      v39 = swift_allocObject();
      v40 = sub_18E1E8590(v39);
      sub_18E22026C(v40);
      sub_18E2236A4();
      sub_18E221728(v54);
      if (v21)
      {
        v43 = 0;
        v41 = 0;
      }

      else
      {
        v41 = sub_18E232C4C();
        sub_18E1C86E0();
        v42 = swift_allocObject();
        sub_18E223730(v42);
        v43 = &type metadata for AssetBackedDiffusionAdapterBase;
      }

      sub_18E1E19CC();
      sub_18E2F8564();
      v44 = sub_18E44E54C();
      sub_18E220124(v3, 1, v44);
      if (v21)
      {

        sub_18E1E8F44(v3, &qword_1EABE2FE0, &qword_18E49CE00);
      }

      else
      {
        v32 = sub_18E44E49C();
        v46 = v45;

        sub_18E1CE910();
        v48 = *(v47 + 8);
        v49 = sub_18E1D5F00();
        v50(v49);

        v29 = v46;
      }

      *v51 = v32;
      v51[1] = v29;
      sub_18E2F7B2C();
      v51[9] = 0;
      v51[10] = v43;
      v51[11] = v41;
      goto LABEL_27;
    }
  }

  else
  {

    sub_18E1E8F44(v57, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  sub_18E21D118();
  sub_18E44EFFC();
  sub_18E2F7980();
  v23 = sub_18E1D0358();
  MEMORY[0x193ACC300](v23);
LABEL_25:
  sub_18E2F8734();
  sub_18E22449C();

  v24 = sub_18E1E81A8();
LABEL_26:
  MEMORY[0x193ACC300](v24, v10);

  sub_18E2F892C();
  v25 = sub_18E1C8558();
  sub_18E1D7E28(v25, v26);
LABEL_27:
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E2ECD14(uint64_t (*a1)(void))
{
  v2 = a1();
  sub_18E1DF33C(v2);
  sub_18E1C5D78();

  return v1;
}

uint64_t sub_18E2ECD74(uint64_t a1)
{
  v2 = sub_18E2F1928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2ECDB0(uint64_t a1)
{
  v2 = sub_18E2F1928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssetBackedDiffusionBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E85EC();
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  v4 = *(v3 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = sub_18E2706EC(&qword_1EABE26D0, &qword_18E4AAF90);
  sub_18E1C539C(v6);
  v8 = *(v7 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1CAE74();
  sub_18E1C975C();
  sub_18E2F1928();
  sub_18E1CF90C();
  if (!v1)
  {
    v10 = sub_18E1E63B4();
    sub_18E2706EC(v10, v11);
    sub_18E2F7EA4();
    sub_18E1C6B74();
    sub_18E1E1638(v12, v13, &qword_18E4AAF98);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1E1F48();
    sub_18E2C39DC();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7EC4();
    sub_18E1E8764();
    sub_18E1E33AC();
    sub_18E2C350C();
    sub_18E21136C();
    sub_18E44F20C();
    sub_18E1E2EB8();
    sub_18E232D9C();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    v15 = sub_18E1E8590(v14);
    sub_18E2F7D10(v15);
    sub_18E221728(&v27);
    if (v16)
    {
      sub_18E2F8220();
    }

    else
    {
      sub_18E232C4C();
      sub_18E1C86E0();
      v17 = swift_allocObject();
      sub_18E1E8934(v17);
    }

    sub_18E2F88FC();
    sub_18E2F7BB8();

    sub_18E44E54C();
    v18 = sub_18E223638();
    sub_18E1E6510(v18);
    if (v16)
    {
      v19 = sub_18E1CBE2C();
      v20(v19);
      sub_18E1E8F44(&unk_1EABE26D8, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E232CF8();
    }

    else
    {
      sub_18E44E49C();
      v21 = sub_18E1CBE2C();
      v22(v21);
      sub_18E212008();
      v24 = *(v23 + 8);
      v25 = sub_18E1E2898();
      v26(v25);

      sub_18E2F8214();
    }

    sub_18E1D4A18();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void AssetBackedDiffusionBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E65BC();
  v1 = sub_18E2706EC(&qword_1EABE26E0, &qword_18E4AAFA0);
  sub_18E1C539C(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F1928();
  sub_18E1E3288();
  sub_18E2F8208();
  AssetBackedDiffusionBundle.id.getter();
  sub_18E1E8658();
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE02F0);
  sub_18E224E2C();
  sub_18E44F35C();
  if (!v0)
  {

    sub_18E2F7DD0();
    sub_18E2706EC(&qword_1EABE26E8, &qword_18E4AAFA8);
    sub_18E2235F8();
    if (swift_dynamicCast())
    {
      v7 = sub_18E228754();
      memcpy(v7, v8, 0xD8uLL);
      sub_18E233040();
      sub_18E1E1F48();
      sub_18E2C3A30();
      sub_18E22452C();
      sub_18E44F35C();
      v14 = sub_18E2CFB70(&v21);
      sub_18E2F88B4(v14, v15, &qword_1EABE26C8, &qword_18E4AAF88);
      if (!v19[3])
      {
        sub_18E1E8F44(v19, &qword_1EABE26C8, &qword_18E4AAF88);
        sub_18E1E01D0(v20);
        goto LABEL_13;
      }

      sub_18E2706EC(&qword_1EABE26F8, &qword_18E4AAFB8);
      if (sub_18E2F7B9C())
      {
        sub_18E237318();
        nullsub_1(&v18);
        sub_18E2336BC();
LABEL_13:
        sub_18E201EF8();
        sub_18E203F70();
        sub_18E2C3560();
        sub_18E22452C();
        sub_18E44F2FC();
        v16 = sub_18E2204B4();
        v17(v16);
        sub_18E1E8F44(v20, &qword_1EABE26F0, &qword_18E4AAFB0);
        goto LABEL_8;
      }

      sub_18E1E8AE8();
      sub_18E1C8558();
      sub_18E220C4C();
    }

    else
    {
      sub_18E1E8AE8();
      sub_18E1C8558();
      sub_18E220C4C();
      v11 = v10 | 2;
    }

    sub_18E200E00(v9, v11);
    goto LABEL_7;
  }

LABEL_7:
  v12 = sub_18E2204B4();
  v13(v12);
LABEL_8:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2ED414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v29;
  a28 = v30;
  sub_18E240A94();
  v32 = v31();
  v33 = sub_18E1DF33C(v32);

  if (*(v33 + 16))
  {
    v34 = sub_18E200E68();
    sub_18E224604(v34);
    sub_18E224080();
    do
    {
      sub_18E241A14(v35, v36);
      sub_18E1E15F4(&a11, a14);
      v37 = sub_18E208028();
      v38(v37);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v40)
      {
        sub_18E2F7A64(v39 > 1);
      }

      sub_18E1E3050();
    }

    while (!v41);
  }

  v43 = (v28)(v42);
  sub_18E1DF33C(v43);
  sub_18E233F98();
  if (*(v28 + 16))
  {
    v44 = sub_18E200E68();
    sub_18E2F7CE0(v44);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v45, v46);
      v47 = sub_18E1C8C94(&a11);
      v48(v47);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v40)
      {
        sub_18E201F38(v49 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v41);
  }

  v50 = sub_18E1E6BB0();
  sub_18E290008(v50, v51);
  sub_18E1E6A20();

  sub_18E2079F8();
}

uint64_t sub_18E2ED710()
{
  v0 = sub_18E44E29C();
  v2 = v1;
  if (v0 == sub_18E44E29C() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    sub_18E1CF9A0();
    v5 = sub_18E221AF0();
  }

  return v5 & 1;
}

void DiffusionBundle.init(with:resources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  sub_18E2F8000();
  v12 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v12);
  v14 = *(v13 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1C8E58();
  sub_18E1E7430();
  sub_18E26C3FC(v11, v16);
  v17 = MEMORY[0x1E69E7CA0];
  if (!v68)
  {

    sub_18E1E8F44(v67, &qword_1EABE3B70, &qword_18E4AAB80);
LABEL_21:
    sub_18E21D118();
    sub_18E44EFFC();

    sub_18E1C8E68();
    sub_18E1E6CD0(v31);
    goto LABEL_25;
  }

  if ((sub_18E240914() & 1) == 0)
  {

    goto LABEL_21;
  }

  v18 = v66;
  type metadata accessor for Utils();
  if ((sub_18E2F84E4() & 1) == 0)
  {
    if (qword_1EABE0CF8 != -1)
    {
LABEL_58:
      sub_18E1C7804();
    }

    v19 = sub_18E44E83C();
    sub_18E1CE8B4(v19, qword_1EAC7F560);

    v20 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E2F871C();
    if (sub_18E23CA28())
    {
      sub_18E1C5F74();
      a10 = v10;
      v21 = sub_18E223E58();
      sub_18E2F7DF4(v21);
      sub_18E2F7F68(4.8149e-34);
      *(v10 + 4) = sub_18E1C9624(v60, v18, v22);
      sub_18E1D5F48(&dword_18E1C1000, v23, v24, "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.");
      sub_18E221F60();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }
  }

  sub_18E1CC4E4();
  sub_18E211F98();
  v17 = MEMORY[0x1E69E7CA0];
  if (v68)
  {
    if (sub_18E240914())
    {
      sub_18E1E6978();
      while (1)
      {
        if (v61 == v18)
        {
          goto LABEL_41;
        }

        if (v18 >= *(a10 + 16))
        {
          __break(1u);
          goto LABEL_58;
        }

        sub_18E2F8584();
        v25 = v68;
        v26 = v69;
        sub_18E1E15F4(v67, v68);
        v27 = sub_18E1E3118(v26);
        v28(v27, v26);
        sub_18E223708();
        v30 = v30 && v29 == v17;
        if (v30)
        {
          break;
        }

        sub_18E1E1574();
        sub_18E1E1F80();

        if (v26)
        {
          goto LABEL_29;
        }

        sub_18E1C9934(v67);
        v10 += 40;
        ++v18;
      }

LABEL_29:
      v36 = sub_18E216A00();
      sub_18E1C551C(v36, v37);
      sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
      sub_18E216A00();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_41:

        sub_18E21D118();
        sub_18E44EFFC();

        sub_18E1C8E68();
        v33 = sub_18E1D0468(v47);
        goto LABEL_26;
      }

      v38 = sub_18E1E6960();
      memcpy(v38, v39, 0xD8uLL);
      sub_18E2233C0();
      sub_18E2F7BF0();

      if (v63[3])
      {
        sub_18E2F8238();
        if (sub_18E2F7C18())
        {
          sub_18E21D1C0();
          while (1)
          {
            sub_18E2329E0();
            if (v30)
            {

              sub_18E1E01D0(v64);
              goto LABEL_50;
            }

            sub_18E209364();
            if (v41)
            {
              __break(1u);
              return;
            }

            v11 = v40;
            sub_18E1E8C38(v40, v64);
            v42 = v65;
            v43 = sub_18E1E1D24(v64);
            v44(v43);
            sub_18E223708();
            if (v30 && v45 == v17)
            {

              goto LABEL_47;
            }

            sub_18E1E1574();
            sub_18E1E1F80();

            if (v42)
            {
              break;
            }

            sub_18E1C9934(v64);
            ++v25;
          }

LABEL_47:

          sub_18E2F8914();
          sub_18E2F822C();
          if ((sub_18E2F85B4() & 1) == 0)
          {
            goto LABEL_49;
          }

          sub_18E220A28();
          nullsub_1(v62);
          sub_18E2F7BD4();
          goto LABEL_50;
        }
      }

      else
      {

        sub_18E1E8F44(v63, &qword_1EABE3B70, &qword_18E4AAB80);
      }

LABEL_49:
      sub_18E1E01D0(v64);
LABEL_50:
      v62[3] = &type metadata for DiffusionModelBase;
      v62[4] = sub_18E2F19E4();
      sub_18E1C86E0();
      v48 = swift_allocObject();
      v49 = sub_18E1E8590(v48);
      sub_18E22026C(v49);
      sub_18E2236A4();
      sub_18E221728(v63);
      if (v30)
      {
        v51 = 0;
        v70 = 0;
      }

      else
      {
        v70 = sub_18E2F1A38();
        sub_18E1C86E0();
        v50 = swift_allocObject();
        sub_18E223730(v50);
        v51 = &type metadata for DiffusionAdapterBase;
      }

      v52 = v59;

      sub_18E2F8484();
      v53 = sub_18E44E54C();
      sub_18E220124(v11, 1, v53);
      if (v30)
      {

        sub_18E1E8F44(v11, &qword_1EABE2FE0, &qword_18E49CE00);
        v54 = v60;
      }

      else
      {
        v54 = sub_18E44E49C();
        v56 = v55;

        sub_18E1CE910();
        (*(v57 + 8))(v11, v53);

        v52 = v56;
      }

      *v58 = v54;
      v58[1] = v52;
      sub_18E2F7B2C();
      v58[9] = 0;
      v58[10] = v51;
      v58[11] = v70;
      goto LABEL_27;
    }
  }

  else
  {

    sub_18E1E8F44(v67, &qword_1EABE3B70, &qword_18E4AAB80);
  }

  sub_18E21D118();
  sub_18E44EFFC();
  sub_18E2F7980();
  v32 = sub_18E1D0358();
  MEMORY[0x193ACC300](v32);
LABEL_25:
  sub_18E2F8734();
  sub_18E22449C();

  v33 = sub_18E1E81A8();
LABEL_26:
  MEMORY[0x193ACC300](v33, v17);

  sub_18E2F892C();
  v34 = sub_18E1C8558();
  sub_18E1CFAB8(v34, v35);
LABEL_27:
  sub_18E1E86A4();
  sub_18E1C6650();
}

unint64_t sub_18E2EDE00()
{
  result = qword_1EABE20D8;
  if (!qword_1EABE20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE20D8);
  }

  return result;
}

unint64_t sub_18E2EDE54()
{
  result = qword_1EABE20E0;
  if (!qword_1EABE20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE20E0);
  }

  return result;
}

unint64_t sub_18E2EDEA8()
{
  result = qword_1EABE20E8;
  if (!qword_1EABE20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE20E8);
  }

  return result;
}

unint64_t sub_18E2EDEFC()
{
  result = qword_1EABE20F0;
  if (!qword_1EABE20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE20F0);
  }

  return result;
}

unint64_t sub_18E2EDF50()
{
  result = qword_1EABE20F8;
  if (!qword_1EABE20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE20F8);
  }

  return result;
}

unint64_t sub_18E2EDFA4()
{
  result = qword_1EABE2100;
  if (!qword_1EABE2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2100);
  }

  return result;
}

unint64_t sub_18E2EDFF8()
{
  result = qword_1EABE2108;
  if (!qword_1EABE2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2108);
  }

  return result;
}

unint64_t sub_18E2EE04C()
{
  result = qword_1EABE2110;
  if (!qword_1EABE2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2110);
  }

  return result;
}

unint64_t sub_18E2EE0A0()
{
  result = qword_1EABE2118;
  if (!qword_1EABE2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2118);
  }

  return result;
}

void sub_18E2EE11C()
{
  sub_18E1C575C();
  v71 = v4;
  v6 = v0[5];
  v5 = v0[6];
  v69 = v7;
  v70 = v5;
  sub_18E1E15F4(v0 + 2, v6);
  sub_18E1C5780();
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v19 = sub_18E21674C(v11, v12, v13, v14, v15, v16, v17, v18, v69);
  v1(v19);
  sub_18E220AAC();
  sub_18E2451D0();
  v21 = sub_18E23392C(v20);
  if (v22)
  {
    sub_18E2451D0();
    v21 = sub_18E2F817C(v67);
  }

  v23 = MEMORY[0x1EEE9AC00](v21);
  v31 = sub_18E242CC8(v23, v24, v25, v26, v27, v28, v29, v30, v69);
  v1(v31);
  sub_18E1E1A80(v70);
  sub_18E1DF2A8(v2, v9, v32, v6, v33);
  v34 = sub_18E2F81A0();
  v35(v34);
  sub_18E2F7D7C();
  if (v73[3])
  {
    v36 = sub_18E1E8728();
    v69(v36);
    v37 = v75;
    v38 = v76;
    sub_18E1E15F4(&v74, v75);
    sub_18E2349BC();
    v72 = v39;
    sub_18E1C5780();
    v41 = *(v40 + 64);
    v43 = MEMORY[0x1EEE9AC00](v42);
    v51 = sub_18E1E89D0(v43, v44, v45, v46, v47, v48, v49, v50, v69);
    (v3)(v51);
    sub_18E2F7F1C();
    if (v22)
    {
      sub_18E2F79AC();
      sub_18E2451D0();
      sub_18E2F817C(v68);
    }

    sub_18E2F81DC();
    v53 = MEMORY[0x1EEE9AC00](v52);
    sub_18E1CEAD0(v53, v54, v55, v56, v57, v58, v59, v60, v69);
    sub_18E223BDC();
    v3();
    v61 = sub_18E247014(*(v38 + 8));
    sub_18E1DF2A8(v61, v62, v63, v37, v64);
    v65 = sub_18E221A60();
    v66(v65);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v73, v0, &v69);
  }

  sub_18E1C5544();
}

uint64_t sub_18E2EE378()
{
  sub_18E1E2F2C();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (sub_18E1E3894() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_18E221B94();
    v6 = v3 && v0 == v5;
    if (v6 || (sub_18E1CF3DC() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == sub_18E2233C0() && v0 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      sub_18E1CF3DC();
      sub_18E1E6A20();
      sub_18E228220();
      if (v3)
      {
        return v8 + 1;
      }

      else
      {
        return v8;
      }
    }
  }
}

uint64_t sub_18E2EE428(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E2EE474(uint64_t a1)
{
  v2 = sub_18E2F1A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2EE4B0(uint64_t a1)
{
  v2 = sub_18E2F1A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DiffusionBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E85EC();
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  v4 = *(v3 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = sub_18E2706EC(&qword_1EABE2710, &qword_18E4AAFC8);
  sub_18E1C539C(v6);
  v8 = *(v7 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1CAE74();
  sub_18E1C975C();
  sub_18E2F1A8C();
  sub_18E1CF90C();
  if (!v1)
  {
    v10 = sub_18E1E63B4();
    sub_18E2706EC(v10, v11);
    sub_18E2F7EA4();
    sub_18E1C6B74();
    sub_18E1E1638(v12, v13, &qword_18E4AAFD0);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1E1F48();
    sub_18E2C368C();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E2F7EC4();
    sub_18E1E8764();
    sub_18E1E33AC();
    sub_18E2C31BC();
    sub_18E21136C();
    sub_18E44F20C();
    sub_18E1E2EB8();
    sub_18E2F19E4();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    v15 = sub_18E1E8590(v14);
    sub_18E2F7D10(v15);
    sub_18E221728(&v27);
    if (v16)
    {
      sub_18E2F8220();
    }

    else
    {
      sub_18E2F1A38();
      sub_18E1C86E0();
      v17 = swift_allocObject();
      sub_18E1E8934(v17);
    }

    sub_18E2F88FC();
    sub_18E2F7BB8();

    sub_18E44E54C();
    v18 = sub_18E223638();
    sub_18E1E6510(v18);
    if (v16)
    {
      v19 = sub_18E1CBE2C();
      v20(v19);
      sub_18E1E8F44(&unk_1EABE2720, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E232CF8();
    }

    else
    {
      sub_18E44E49C();
      v21 = sub_18E1CBE2C();
      v22(v21);
      sub_18E212008();
      v24 = *(v23 + 8);
      v25 = sub_18E1E2898();
      v26(v25);

      sub_18E2F8214();
    }

    sub_18E1D4A18();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void DiffusionBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1E65BC();
  v1 = sub_18E2706EC(&qword_1EABE2730, &qword_18E4AAFD8);
  sub_18E1C539C(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1E2C60();
  sub_18E1D60D8();
  sub_18E2F1A8C();
  sub_18E1E3288();
  sub_18E2F8208();
  DiffusionBundle.id.getter();
  sub_18E1E8658();
  v5 = sub_18E1E33F0();
  sub_18E2706EC(v5, v6);
  sub_18E1C828C(&qword_1EABE2738);
  sub_18E224E2C();
  sub_18E44F35C();
  if (!v0)
  {

    sub_18E2F7DD0();
    sub_18E2706EC(&qword_1EABE2740, &qword_18E4AAFE0);
    sub_18E2235F8();
    if (swift_dynamicCast())
    {
      v7 = sub_18E228754();
      memcpy(v7, v8, 0xD8uLL);
      sub_18E233040();
      sub_18E1E1F48();
      sub_18E2C36E0();
      sub_18E22452C();
      sub_18E44F35C();
      v14 = sub_18E2CFBA0(&v21);
      sub_18E2F88B4(v14, v15, &qword_1EABE2700, &qword_18E4AAFC0);
      if (!v19[3])
      {
        sub_18E1E8F44(v19, &qword_1EABE2700, &qword_18E4AAFC0);
        sub_18E1E01D0(v20);
        goto LABEL_13;
      }

      sub_18E2706EC(&qword_1EABE2750, &qword_18E4AAFF0);
      if (sub_18E2F7B9C())
      {
        sub_18E237318();
        nullsub_1(&v18);
        sub_18E2336BC();
LABEL_13:
        sub_18E201EF8();
        sub_18E203F70();
        sub_18E2C3210();
        sub_18E22452C();
        sub_18E44F2FC();
        v16 = sub_18E2204B4();
        v17(v16);
        sub_18E1E8F44(v20, &qword_1EABE2748, &qword_18E4AAFE8);
        goto LABEL_8;
      }

      sub_18E1E8AE8();
      sub_18E1C8558();
      sub_18E220C4C();
    }

    else
    {
      sub_18E1E8AE8();
      sub_18E1C8558();
      sub_18E220C4C();
      v11 = v10 | 2;
    }

    sub_18E200E00(v9, v11);
    goto LABEL_7;
  }

LABEL_7:
  v12 = sub_18E2204B4();
  v13(v12);
LABEL_8:
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E2EEB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_18E1CFF04();
  a27 = v30;
  a28 = v31;
  sub_18E240A94();
  if (*(v32() + 16))
  {
    v33 = sub_18E200E68();
    sub_18E224604(v33);
    sub_18E224080();
    do
    {
      sub_18E241A14(v34, v35);
      sub_18E1E15F4(&a11, a14);
      v36 = sub_18E208028();
      v37(v36);
      sub_18E1C9934(&a11);
      sub_18E1E686C();
      if (v39)
      {
        sub_18E2F7A64(v38 > 1);
      }

      sub_18E1E3050();
    }

    while (!v40);
  }

  v42 = v28(v41);
  sub_18E2F8194(v42);
  if (v29)
  {
    v43 = sub_18E200E68();
    sub_18E2F7CE0(v43);
    sub_18E2F7C0C();
    do
    {
      sub_18E232E6C(v44, v45);
      v46 = sub_18E1C8C94(&a11);
      v47(v46);
      sub_18E221954();
      sub_18E1C9934(&a11);
      sub_18E239C74();
      if (v39)
      {
        sub_18E201F38(v48 > 1);
      }

      sub_18E1CA5D4();
    }

    while (!v40);
  }

  v49 = sub_18E1E6BB0();
  sub_18E290008(v49, v50);
  sub_18E1E6A20();

  sub_18E2079F8();
}

uint64_t sub_18E2EECDC()
{
  sub_18E1E2E88();
  sub_18E44F48C();
  v0(v2);
  return sub_18E44F4CC();
}

uint64_t sub_18E2EED78()
{
  sub_18E1E33FC();
  v0(v2);
  return sub_18E44F4CC();
}

void sub_18E2EEDB8(uint64_t *a1)
{
  v2 = sub_18E44E2BC();
  sub_18E1C5B08(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18E1CA880(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8 = *(v4 + 80);
  sub_18E1E2708();
  v11[0] = v5 + v10;
  v11[1] = v9;
  sub_18E2EEE58(v11);
  *a1 = v5;
}

void sub_18E2EEE58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_18E44F38C() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18E44E2BC();
        v3 = sub_18E44ECCC();
        *(v3 + 16) = v2;
      }

      v4 = sub_18E44E2BC();
      sub_18E1C5B08(v4);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      sub_18E2EF25C();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_18E2EEF84();
  }
}

void sub_18E2EEF84()
{
  sub_18E1C62A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18E44E2BC();
  v9 = sub_18E1C4EAC(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C86C0();
  v55 = v12 - v13;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1CA564();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v47 = v5;
  if (v3 != v5)
  {
    v20 = v17;
    v21 = *v1;
    v23 = *(v16 + 16);
    v22 = v16 + 16;
    v24 = *(v22 + 56);
    v56 = (v22 - 8);
    v57 = v23;
    v53 = (v22 + 16);
    v54 = v21;
    v25 = v21 + v24 * (v3 - 1);
    v52 = -v24;
    v26 = v7 - v3;
    v46 = v24;
    v27 = v21 + v24 * v3;
    while (2)
    {
      v50 = v25;
      v51 = v3;
      v48 = v27;
      v49 = v26;
      v28 = v25;
      while (1)
      {
        v29 = v57;
        v57(v19, v27, v8);
        v29(v20, v28, v8);
        v30 = sub_18E44E29C();
        v31 = v19;
        v32 = v20;
        v34 = v33;
        if (v30 == sub_18E44E29C() && v34 == v35)
        {
          break;
        }

        sub_18E1CFFC0();
        v37 = sub_18E221AF0();

        v38 = *v56;
        v39 = sub_18E223B64();
        v38(v39);
        (v38)(v31, v8);
        v20 = v32;
        v19 = v31;
        if (v37)
        {
          if (!v54)
          {
            __break(1u);
            return;
          }

          v40 = *v53;
          v41 = v55;
          (*v53)(v55, v27, v8);
          swift_arrayInitWithTakeFrontToBack();
          v40(v28, v41, v8);
          v28 += v52;
          v27 += v52;
          if (!__CFADD__(v26++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v43 = *v56;
      v44 = sub_18E223B64();
      v43(v44);
      (v43)(v31, v8);
      v20 = v32;
      v19 = v31;
LABEL_14:
      v3 = v51 + 1;
      v25 = v50 + v46;
      v26 = v49 - 1;
      v27 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  sub_18E1C6650();
}

void sub_18E2EF25C()
{
  sub_18E1C62A0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v158 = v7;
  v8 = sub_18E44E2BC();
  v9 = sub_18E1C4EAC(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C86C0();
  v163 = v12 - v13;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C617C();
  v176 = v15;
  sub_18E1C6668();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v154 - v18);
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1CA564();
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1C617C();
  v172 = v21;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1C617C();
  v171 = v23;
  sub_18E1C6668();
  v25 = MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  sub_18E216B10();
  v169 = v26;
  v170 = v6;
  v29 = v6[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_114:
    sub_18E220C1C();
    v181 = *v139;
    if (!*v139)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v177 = v27;
  v154 = v4;
  v30 = 0;
  v181 = v26 + 16;
  v179 = (v26 + 32);
  v180 = (v26 + 8);
  v31 = MEMORY[0x1E69E7CC0];
  v173 = v8;
  v165 = v19;
  v155 = v28;
  v157 = v1;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    v160 = v30;
    if (v30 + 1 < v29)
    {
      v175 = v29;
      v156 = v31;
      v34 = v1;
      v35 = *v170;
      v36 = *(v26 + 72);
      v37 = v28;
      v168 = v30 + 1;
      v38 = v30;
      v39 = v35 + v36 * (v30 + 1);
      v40 = *(v26 + 16);
      v40(v34, v39, v8);
      v167 = v40;
      v40(v37, v35 + v36 * v38, v8);
      LODWORD(v174) = sub_18E2ED710();
      if (v2)
      {
        v151 = *v180;
        v152 = sub_18E233460();
        v151(v152);
        v153 = sub_18E1E2E14();
        v151(v153);
LABEL_124:

        sub_18E1C6650();
        return;
      }

      v159 = 0;
      v31 = v180;
      v19 = *v180;
      v41 = sub_18E233460();
      v19(v41);
      v42 = sub_18E1E2E14();
      v166 = v19;
      v19(v42);
      v43 = v160 + 2;
      v8 = v35 + v36 * (v160 + 2);
      v33 = v168;
      v44 = v36;
      v178 = v36;
      v45 = v175;
      while (1)
      {
        v46 = v43;
        if (v33 + 1 >= v45)
        {
          break;
        }

        v19 = v33;
        v47 = sub_18E233460();
        v2 = v167;
        v167(v47);
        v48 = sub_18E1E2088();
        v2(v48);
        v49 = sub_18E44E29C();
        v51 = v50;
        if (v49 == sub_18E44E29C() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_18E221AF0();
        }

        v55 = v173;
        v31 = v166;
        (v166)(v172, v173);
        (v31)(v171, v55);
        v44 = v178;
        v8 += v178;
        v39 += v178;
        v33 = v19 + 1;
        v43 = v46 + 1;
        v45 = v175;
        if ((v174 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v33 = v45;
LABEL_16:
      if (v174)
      {
        if (v33 < v160)
        {
          goto LABEL_149;
        }

        v2 = v159;
        if (v160 >= v33)
        {
          sub_18E1CA684();
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v56 = v46;
        }

        else
        {
          v56 = v45;
        }

        v57 = v44 * (v56 - 1);
        v58 = v44 * v56;
        v31 = v160;
        v59 = v160 * v44;
        v8 = v33;
        do
        {
          if (v31 != --v8)
          {
            v60 = *v170;
            if (!*v170)
            {
              goto LABEL_154;
            }

            v19 = v33;
            v61 = v173;
            v175 = *v179;
            (v175)(v163, v60 + v59, v173);
            v62 = v59 < v57 || v60 + v59 >= v60 + v58;
            if (v62)
            {
              sub_18E1E6604();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v57)
            {
              sub_18E1E6604();
              swift_arrayInitWithTakeBackToFront();
            }

            (v175)(v60 + v57, v163, v61);
            v2 = v159;
            v44 = v178;
          }

          ++v31;
          v57 -= v44;
          v58 -= v44;
          v59 += v44;
        }

        while (v31 < v8);
      }

      else
      {
        v2 = v159;
      }

      sub_18E1CA684();
      v32 = v160;
    }

LABEL_39:
    v63 = v170[1];
    if (v33 < v63)
    {
      if (__OFSUB__(v33, v32))
      {
        goto LABEL_146;
      }

      if (v33 - v32 < v154)
      {
        break;
      }
    }

LABEL_62:
    if (v33 < v32)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = *(v31 + 2);
      sub_18E1C6868();
      sub_18E3EF938();
      v31 = v137;
    }

    v88 = *(v31 + 2);
    v87 = *(v31 + 3);
    v89 = v88 + 1;
    v168 = v33;
    if (v88 >= v87 >> 1)
    {
      sub_18E3EF938();
      v31 = v138;
    }

    *(v31 + 2) = v89;
    v90 = v31 + 32;
    v91 = &v31[16 * v88 + 32];
    v92 = v168;
    *v91 = v160;
    *(v91 + 1) = v92;
    sub_18E220C1C();
    v178 = *v97;
    if (!v178)
    {
      goto LABEL_155;
    }

    if (v88)
    {
      while (1)
      {
        v98 = v89 - 1;
        v99 = &v90[16 * v89 - 16];
        v100 = &v31[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v101 = *(v31 + 4);
          v102 = *(v31 + 5);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_82:
          if (v104)
          {
            goto LABEL_132;
          }

          v116 = *v100;
          v115 = *(v100 + 1);
          v117 = __OFSUB__(v115, v116);
          v118 = v115 - v116;
          v119 = v117;
          if (v117)
          {
            goto LABEL_135;
          }

          v120 = *(v99 + 1);
          v121 = v120 - *v99;
          if (__OFSUB__(v120, *v99))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v118, v121))
          {
            goto LABEL_140;
          }

          if (v118 + v121 >= v103)
          {
            if (v103 < v121)
            {
              v98 = v89 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v89 < 2)
        {
          goto LABEL_134;
        }

        v123 = *v100;
        v122 = *(v100 + 1);
        v111 = __OFSUB__(v122, v123);
        v118 = v122 - v123;
        v119 = v111;
LABEL_97:
        if (v119)
        {
          goto LABEL_137;
        }

        v125 = *v99;
        v124 = *(v99 + 1);
        v111 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v111)
        {
          goto LABEL_139;
        }

        if (v126 < v118)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v98 - 1 >= v89)
        {
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
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
          goto LABEL_148;
        }

        if (!*v170)
        {
          goto LABEL_152;
        }

        v130 = v31;
        v131 = &v90[16 * v98 - 16];
        v31 = *v131;
        v132 = &v90[16 * v98];
        v133 = *(v132 + 1);
        sub_18E2EFD4C(*v170 + *(v169 + 72) * *v131, *v170 + *(v169 + 72) * *v132, *v170 + *(v169 + 72) * v133, v178, v93, v94, v95, v96, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
        if (v2)
        {
          goto LABEL_124;
        }

        if (v133 < v31)
        {
          goto LABEL_127;
        }

        v134 = *(v130 + 2);
        if (v98 > v134)
        {
          goto LABEL_128;
        }

        *v131 = v31;
        *(v131 + 1) = v133;
        if (v98 >= v134)
        {
          goto LABEL_129;
        }

        v89 = v134 - 1;
        memmove(&v90[16 * v98], v132 + 16, 16 * (v134 - 1 - v98));
        v31 = v130;
        *(v130 + 2) = v134 - 1;
        v135 = v134 > 2;
        v19 = v165;
        if (!v135)
        {
          goto LABEL_111;
        }
      }

      v105 = &v90[16 * v89];
      v106 = *(v105 - 8);
      v107 = *(v105 - 7);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_130;
      }

      v110 = *(v105 - 6);
      v109 = *(v105 - 5);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_131;
      }

      v112 = *(v100 + 1);
      v113 = v112 - *v100;
      if (__OFSUB__(v112, *v100))
      {
        goto LABEL_133;
      }

      v111 = __OFADD__(v103, v113);
      v114 = v103 + v113;
      if (v111)
      {
        goto LABEL_136;
      }

      if (v114 >= v108)
      {
        v128 = *v99;
        v127 = *(v99 + 1);
        v111 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v111)
        {
          goto LABEL_144;
        }

        if (v103 < v129)
        {
          v98 = v89 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v26 = v169;
    v29 = v170[1];
    v30 = v168;
    v8 = v173;
    v28 = v155;
    v1 = v157;
    if (v168 >= v29)
    {
      goto LABEL_114;
    }
  }

  v64 = v32 + v154;
  if (__OFADD__(v32, v154))
  {
    goto LABEL_147;
  }

  if (v64 >= v63)
  {
    v64 = v170[1];
  }

  if (v64 < v32)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v31 = sub_18E2F02E0(v31);
LABEL_116:
    v144 = v31 + 16;
    v145 = *(v31 + 2);
    while (v145 >= 2)
    {
      if (!*v170)
      {
        goto LABEL_153;
      }

      v146 = v31;
      v31 += 16 * v145;
      v147 = *v31;
      v148 = &v144[2 * v145];
      v149 = v148[1];
      sub_18E2EFD4C(*v170 + *(v169 + 72) * *v31, *v170 + *(v169 + 72) * *v148, *v170 + *(v169 + 72) * v149, v181, v140, v141, v142, v143, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
      if (v2)
      {
        break;
      }

      if (v149 < v147)
      {
        goto LABEL_141;
      }

      if (v145 - 2 >= *v144)
      {
        goto LABEL_142;
      }

      *v31 = v147;
      *(v31 + 1) = v149;
      v150 = *v144 - v145;
      if (*v144 < v145)
      {
        goto LABEL_143;
      }

      v145 = *v144 - 1;
      memmove(v148, v148 + 2, 16 * v150);
      *v144 = v145;
      v31 = v146;
    }

    goto LABEL_124;
  }

  if (v33 == v64)
  {
    goto LABEL_62;
  }

  v156 = v31;
  v159 = v2;
  v65 = *v170;
  v66 = *(v26 + 72);
  v178 = *(v26 + 16);
  v67 = (v65 + v66 * (v33 - 1));
  v174 = -v66;
  v175 = v65;
  v68 = (v32 - v33);
  v161 = v66;
  v162 = v64;
  v69 = v65 + v33 * v66;
  v70 = v177;
LABEL_48:
  v167 = v67;
  v168 = v33;
  v164 = v69;
  v166 = v68;
  while (1)
  {
    v71 = v178;
    (v178)(v70, v69, v8);
    v71(v19, v67, v8);
    v72 = v19;
    v73 = sub_18E44E29C();
    v74 = v8;
    v76 = v75;
    if (v73 == sub_18E44E29C() && v76 == v77)
    {

      v84 = *v180;
      v85 = sub_18E2016D4();
      v84(v85);
      v86 = sub_18E1E2898();
      v84(v86);
      v8 = v74;
      v19 = v72;
      goto LABEL_60;
    }

    sub_18E1D5F00();
    v79 = v70;
    v80 = sub_18E44F3CC();

    v81 = *v180;
    v82 = sub_18E2016D4();
    v81(v82);
    (v81)(v79, v74);
    v8 = v74;
    v19 = v72;
    if ((v80 & 1) == 0)
    {
      v70 = v177;
LABEL_60:
      v33 = v168 + 1;
      v67 = (v167 + v161);
      v68 = v166 - 1;
      v69 = v164 + v161;
      if (v168 + 1 == v162)
      {
        v33 = v162;
        v2 = v159;
        v31 = v156;
        v32 = v160;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v175)
    {
      break;
    }

    v83 = *v179;
    (*v179)(v176, v69, v74);
    sub_18E1CFFC0();
    swift_arrayInitWithTakeFrontToBack();
    sub_18E1D5EF4();
    v83();
    v67 = (v67 + v174);
    v69 += v174;
    v62 = __CFADD__(v68++, 1);
    v70 = v177;
    if (v62)
    {
      goto LABEL_60;
    }
  }

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
}

void sub_18E2EFD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v92 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_18E44E2BC();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v98 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v97 = &v90 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v90 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v44 = v28 - v30 == 0x8000000000000000 && v43 == -1;
  if (v44)
  {
    goto LABEL_72;
  }

  v45 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_73;
  }

  v47 = (v28 - v30) / v43;
  a10 = v30;
  v103 = v24;
  v99 = (v40 + 8);
  v100 = (v40 + 16);
  v48 = v45 / v43;
  if (v47 < v45 / v43)
  {
    v95 = &v90 - v41;
    v97 = v39;
    sub_18E1D5EF4();
    sub_18E26DE88(v49, v50, v51);
    v98 = (v24 + v47 * v43);
    v102 = v98;
    v52 = v24;
    v94 = v31;
    v96 = v26;
    while (1)
    {
      if (v52 >= v98 || v28 >= v26)
      {
        goto LABEL_70;
      }

      v54 = *v100;
      v55 = v28;
      (*v100)(v95, v28, v31);
      v101 = v52;
      v54();
      v56 = sub_18E44E29C();
      v58 = v57;
      if (v56 == sub_18E44E29C() && v58 == v59)
      {

        v67 = *v99;
        v68 = sub_18E1E6BB0();
        (v67)(v68);
        v69 = sub_18E1CFFC0();
        (v67)(v69);
      }

      else
      {
        sub_18E1E2898();
        v61 = sub_18E221AF0();

        v62 = *v99;
        v63 = sub_18E1E6BB0();
        (v62)(v63);
        v64 = sub_18E1CFFC0();
        (v62)(v64);
        if (v61)
        {
          v65 = v55;
          v28 = v55 + v43;
          if (v30 < v55 || v30 >= v28)
          {
            sub_18E2F84A4();
            v26 = v96;
          }

          else
          {
            v26 = v96;
            v31 = v94;
            if (v30 != v65)
            {
              sub_18E1C86B4();
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = v101;
          goto LABEL_40;
        }
      }

      v52 = v101 + v43;
      v70 = v30 < v101 || v30 >= v52;
      v28 = v55;
      if (v70)
      {
        sub_18E2F84A4();
        v26 = v96;
      }

      else
      {
        v26 = v96;
        v31 = v94;
        if (v30 != v101)
        {
          sub_18E1C86B4();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v103 = v52;
LABEL_40:
      v30 += v43;
      a10 = v30;
    }
  }

  sub_18E26DE88(v28, v45 / v43, v24);
  v101 = v24;
  v71 = v24 + v48 * v43;
  v72 = -v43;
  v73 = v71;
  v95 = -v43;
LABEL_42:
  v96 = v28;
  v94 = v28 + v72;
  v74 = v26;
  v91 = v73;
  while (1)
  {
    if (v71 <= v101)
    {
      a10 = v96;
      v102 = v73;
      goto LABEL_70;
    }

    if (v96 <= v30)
    {
      break;
    }

    v93 = v73;
    v75 = v71 + v72;
    v76 = *v100;
    v77 = sub_18E1E2000();
    (v76)(v77);
    (v76)(v98, v94, v31);
    v78 = sub_18E44E29C();
    v80 = v79;
    if (v78 == sub_18E44E29C() && v80 == v81)
    {
      v83 = 0;
    }

    else
    {
      v83 = sub_18E221AF0();
    }

    v84 = (v74 + v95);
    v85 = *v99;
    (*v99)(v98, v31);
    v85(v97, v31);
    if (v83)
    {
      v87 = v74 < v96 || v84 >= v96;
      v26 = v84;
      if (v87)
      {
        v28 = v94;
        sub_18E1C86B4();
        swift_arrayInitWithTakeFrontToBack();
        v73 = v93;
        v72 = v95;
      }

      else
      {
        v89 = v93;
        v88 = v94;
        v73 = v93;
        v44 = v74 == v96;
        v28 = v94;
        v72 = v95;
        if (!v44)
        {
          sub_18E1C86B4();
          swift_arrayInitWithTakeBackToFront();
          v28 = v88;
          v73 = v89;
        }
      }

      goto LABEL_42;
    }

    if (v74 < v71 || v84 >= v71)
    {
      sub_18E1C86B4();
      swift_arrayInitWithTakeFrontToBack();
      v74 = v84;
      v71 = v75;
      v73 = v75;
      v72 = v95;
    }

    else
    {
      v73 = v75;
      v44 = v71 == v74;
      v74 = v84;
      v71 = v75;
      v72 = v95;
      if (!v44)
      {
        sub_18E1C86B4();
        swift_arrayInitWithTakeBackToFront();
        v74 = v84;
        v71 = v75;
        v73 = v75;
      }
    }
  }

  a10 = v96;
  v102 = v91;
LABEL_70:
  sub_18E2F02F4(&a10, &v103, &v102);
  sub_18E1C6650();
}

void sub_18E2F02F4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = sub_18E44E2BC();
  sub_18E1C82B8(v6);
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v4 + (v5 - v4) / v8 * v8;
  if (v3 < v4 || v3 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_18E2F03D0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_18E2F03FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E2706EC(&qword_1EABE2AE0, &unk_18E4AF6C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_18E2F0564()
{
  result = qword_1EABE2120;
  if (!qword_1EABE2120)
  {
    sub_18E44E38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2120);
  }

  return result;
}

unint64_t sub_18E2F05BC()
{
  result = qword_1EABDF7D0;
  if (!qword_1EABDF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7D0);
  }

  return result;
}

unint64_t sub_18E2F0678()
{
  result = qword_1EABE2158;
  if (!qword_1EABE2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2158);
  }

  return result;
}

unint64_t sub_18E2F06CC()
{
  result = qword_1EABE0C38;
  if (!qword_1EABE0C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0C38);
  }

  return result;
}

unint64_t sub_18E2F0720()
{
  result = qword_1EABE0278;
  if (!qword_1EABE0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0278);
  }

  return result;
}

unint64_t sub_18E2F0774()
{
  result = qword_1EABE2198;
  if (!qword_1EABE2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2198);
  }

  return result;
}

unint64_t sub_18E2F07C8()
{
  result = qword_1EABE09A0;
  if (!qword_1EABE09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE09A0);
  }

  return result;
}

unint64_t sub_18E2F081C()
{
  result = qword_1EABE0570;
  if (!qword_1EABE0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0570);
  }

  return result;
}

unint64_t sub_18E2F08D8()
{
  result = qword_1EABE01C0;
  if (!qword_1EABE01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01C0);
  }

  return result;
}

unint64_t sub_18E2F0994()
{
  result = qword_1EABE2230;
  if (!qword_1EABE2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2230);
  }

  return result;
}

unint64_t sub_18E2F09E8()
{
  result = qword_1EABE2240;
  if (!qword_1EABE2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2240);
  }

  return result;
}

unint64_t sub_18E2F0ADC()
{
  result = qword_1EABE2298;
  if (!qword_1EABE2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2298);
  }

  return result;
}

unint64_t sub_18E2F0B30()
{
  result = qword_1EABE22A0;
  if (!qword_1EABE22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE22A0);
  }

  return result;
}

unint64_t sub_18E2F0B84()
{
  result = qword_1EABE22B0;
  if (!qword_1EABE22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE22B0);
  }

  return result;
}

unint64_t sub_18E2F0C40()
{
  result = qword_1EABE0128;
  if (!qword_1EABE0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0128);
  }

  return result;
}

unint64_t sub_18E2F0CFC()
{
  result = qword_1EABE2308;
  if (!qword_1EABE2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2308);
  }

  return result;
}

unint64_t sub_18E2F0DB8()
{
  result = qword_1EABE2338;
  if (!qword_1EABE2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2338);
  }

  return result;
}

unint64_t sub_18E2F0E74()
{
  result = qword_1EABE2368;
  if (!qword_1EABE2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2368);
  }

  return result;
}

unint64_t sub_18E2F0EC8()
{
  result = qword_1EABE2378;
  if (!qword_1EABE2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2378);
  }

  return result;
}

unint64_t sub_18E2F0F84()
{
  result = qword_1EABE0110;
  if (!qword_1EABE0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0110);
  }

  return result;
}

unint64_t sub_18E2F1040()
{
  result = qword_1EABE23C8;
  if (!qword_1EABE23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE23C8);
  }

  return result;
}

unint64_t sub_18E2F10FC()
{
  result = qword_1EABE09D0;
  if (!qword_1EABE09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE09D0);
  }

  return result;
}

unint64_t sub_18E2F1150()
{
  result = qword_1EABE23F8;
  if (!qword_1EABE23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE23F8);
  }

  return result;
}

unint64_t sub_18E2F120C()
{
  result = qword_1EABE2428;
  if (!qword_1EABE2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2428);
  }

  return result;
}

unint64_t sub_18E2F1260()
{
  result = qword_1EABE2438;
  if (!qword_1EABE2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2438);
  }

  return result;
}

unint64_t sub_18E2F131C()
{
  result = qword_1EABE2470;
  if (!qword_1EABE2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2470);
  }

  return result;
}

unint64_t sub_18E2F13D8()
{
  result = qword_1EABE0988;
  if (!qword_1EABE0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0988);
  }

  return result;
}

unint64_t sub_18E2F142C()
{
  result = qword_1EABE24A8;
  if (!qword_1EABE24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE24A8);
  }

  return result;
}

unint64_t sub_18E2F1480()
{
  result = qword_1EABE24E8;
  if (!qword_1EABE24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE24E8);
  }

  return result;
}

unint64_t sub_18E2F14D4()
{
  result = qword_1EABE2580;
  if (!qword_1EABE2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2580);
  }

  return result;
}

unint64_t sub_18E2F1528()
{
  result = qword_1EABE2588;
  if (!qword_1EABE2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2588);
  }

  return result;
}

unint64_t sub_18E2F157C()
{
  result = qword_1EABE0618;
  if (!qword_1EABE0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0618);
  }

  return result;
}

unint64_t sub_18E2F1638()
{
  result = qword_1EABE2610;
  if (!qword_1EABE2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2610);
  }

  return result;
}

unint64_t sub_18E2F16F4()
{
  result = qword_1EABE2640;
  if (!qword_1EABE2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2640);
  }

  return result;
}

unint64_t sub_18E2F17B0()
{
  result = qword_1EABE2670;
  if (!qword_1EABE2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2670);
  }

  return result;
}

unint64_t sub_18E2F186C()
{
  result = qword_1EABE26A0;
  if (!qword_1EABE26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE26A0);
  }

  return result;
}

unint64_t sub_18E2F1928()
{
  result = qword_1EABE0C00;
  if (!qword_1EABE0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0C00);
  }

  return result;
}

unint64_t sub_18E2F19E4()
{
  result = qword_1EABDFFA8;
  if (!qword_1EABDFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFFA8);
  }

  return result;
}

unint64_t sub_18E2F1A38()
{
  result = qword_1EABE2708;
  if (!qword_1EABE2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2708);
  }

  return result;
}

unint64_t sub_18E2F1A8C()
{
  result = qword_1EABE2718;
  if (!qword_1EABE2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2718);
  }

  return result;
}

unint64_t sub_18E2F1AE0(uint64_t a1)
{
  result = sub_18E23144C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F1B34()
{
  result = qword_1EABE0678;
  if (!qword_1EABE0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0678);
  }

  return result;
}

unint64_t sub_18E2F1B88()
{
  result = qword_1EABE0668;
  if (!qword_1EABE0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0668);
  }

  return result;
}

unint64_t sub_18E2F1C24()
{
  result = qword_1EABE0670;
  if (!qword_1EABE0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0670);
  }

  return result;
}

unint64_t sub_18E2F1C78(uint64_t a1)
{
  result = sub_18E231008();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F1CCC()
{
  result = qword_1EABE0228;
  if (!qword_1EABE0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0228);
  }

  return result;
}

unint64_t sub_18E2F1D20()
{
  result = qword_1EABE0218;
  if (!qword_1EABE0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0218);
  }

  return result;
}

unint64_t sub_18E2F1DBC()
{
  result = qword_1EABE0220;
  if (!qword_1EABE0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0220);
  }

  return result;
}

unint64_t sub_18E2F1E10(uint64_t a1)
{
  result = sub_18E2AE070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F1E64()
{
  result = qword_1EABDF9D0;
  if (!qword_1EABDF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9D0);
  }

  return result;
}

unint64_t sub_18E2F1EB8()
{
  result = qword_1EABDF9C0;
  if (!qword_1EABDF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9C0);
  }

  return result;
}

unint64_t sub_18E2F1F54()
{
  result = qword_1EABDF9C8;
  if (!qword_1EABDF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9C8);
  }

  return result;
}

unint64_t sub_18E2F1FA8(uint64_t a1)
{
  result = sub_18E205FC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F1FFC()
{
  result = qword_1EABE0880;
  if (!qword_1EABE0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0880);
  }

  return result;
}

unint64_t sub_18E2F2050()
{
  result = qword_1EABE0870;
  if (!qword_1EABE0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0870);
  }

  return result;
}

unint64_t sub_18E2F20EC()
{
  result = qword_1EABE0878;
  if (!qword_1EABE0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0878);
  }

  return result;
}

unint64_t sub_18E2F2140(uint64_t a1)
{
  result = sub_18E1D3DD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F2194()
{
  result = qword_1EABE06F0;
  if (!qword_1EABE06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06F0);
  }

  return result;
}

unint64_t sub_18E2F21E8()
{
  result = qword_1EABE06E0;
  if (!qword_1EABE06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06E0);
  }

  return result;
}

unint64_t sub_18E2F2284()
{
  result = qword_1EABE06E8;
  if (!qword_1EABE06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06E8);
  }

  return result;
}

unint64_t sub_18E2F22D8(uint64_t a1)
{
  result = sub_18E2EE04C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F232C()
{
  result = qword_1EABE2780;
  if (!qword_1EABE2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2780);
  }

  return result;
}

unint64_t sub_18E2F2380()
{
  result = qword_1EABE2788;
  if (!qword_1EABE2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2788);
  }

  return result;
}

unint64_t sub_18E2F241C()
{
  result = qword_1EABE2798;
  if (!qword_1EABE2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2798);
  }

  return result;
}

unint64_t sub_18E2F2470(uint64_t a1)
{
  result = sub_18E207A4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F24C4()
{
  result = qword_1EABE06B8;
  if (!qword_1EABE06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06B8);
  }

  return result;
}

unint64_t sub_18E2F2518()
{
  result = qword_1EABE06A8;
  if (!qword_1EABE06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06A8);
  }

  return result;
}

unint64_t sub_18E2F25B4()
{
  result = qword_1EABE06B0;
  if (!qword_1EABE06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06B0);
  }

  return result;
}

unint64_t sub_18E2F2608(uint64_t a1)
{
  result = sub_18E2EDFF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F265C()
{
  result = qword_1EABE27A8;
  if (!qword_1EABE27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE27A8);
  }

  return result;
}

unint64_t sub_18E2F26B0()
{
  result = qword_1EABE27B0;
  if (!qword_1EABE27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE27B0);
  }

  return result;
}

unint64_t sub_18E2F274C()
{
  result = qword_1EABE27C0;
  if (!qword_1EABE27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE27C0);
  }

  return result;
}

unint64_t sub_18E2F27A0(uint64_t a1)
{
  result = sub_18E2316AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F27F4()
{
  result = qword_1EABE0658;
  if (!qword_1EABE0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0658);
  }

  return result;
}

unint64_t sub_18E2F2848()
{
  result = qword_1EABE0648;
  if (!qword_1EABE0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0648);
  }

  return result;
}

unint64_t sub_18E2F28E4()
{
  result = qword_1EABE0650;
  if (!qword_1EABE0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0650);
  }

  return result;
}

unint64_t sub_18E2F2938(uint64_t a1)
{
  result = sub_18E2EDFA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F298C()
{
  result = qword_1EABE27D0;
  if (!qword_1EABE27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE27D0);
  }

  return result;
}

unint64_t sub_18E2F29E0()
{
  result = qword_1EABE27D8;
  if (!qword_1EABE27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE27D8);
  }

  return result;
}

unint64_t sub_18E2F2A7C()
{
  result = qword_1EABE27E8;
  if (!qword_1EABE27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE27E8);
  }

  return result;
}

unint64_t sub_18E2F2AD0(uint64_t a1)
{
  result = sub_18E231D0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F2B24()
{
  result = qword_1EABE0168;
  if (!qword_1EABE0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0168);
  }

  return result;
}

unint64_t sub_18E2F2B78()
{
  result = qword_1EABE0158;
  if (!qword_1EABE0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0158);
  }

  return result;
}

unint64_t sub_18E2F2C14()
{
  result = qword_1EABE0160;
  if (!qword_1EABE0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0160);
  }

  return result;
}

unint64_t sub_18E2F2C68(uint64_t a1)
{
  result = sub_18E2EDF50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F2CBC()
{
  result = qword_1EABE27F8;
  if (!qword_1EABE27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE27F8);
  }

  return result;
}

unint64_t sub_18E2F2D10()
{
  result = qword_1EABE2800;
  if (!qword_1EABE2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2800);
  }

  return result;
}

unint64_t sub_18E2F2DAC()
{
  result = qword_1EABE2810;
  if (!qword_1EABE2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2810);
  }

  return result;
}

unint64_t sub_18E2F2E00(uint64_t a1)
{
  result = sub_18E2319DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F2E54()
{
  result = qword_1EABE0638;
  if (!qword_1EABE0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0638);
  }

  return result;
}

unint64_t sub_18E2F2EA8()
{
  result = qword_1EABE0628;
  if (!qword_1EABE0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0628);
  }

  return result;
}

unint64_t sub_18E2F2F44()
{
  result = qword_1EABE0630;
  if (!qword_1EABE0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0630);
  }

  return result;
}

unint64_t sub_18E2F2F98(uint64_t a1)
{
  result = sub_18E2EDEFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F2FEC()
{
  result = qword_1EABE2820;
  if (!qword_1EABE2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2820);
  }

  return result;
}

unint64_t sub_18E2F3040()
{
  result = qword_1EABE2828;
  if (!qword_1EABE2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2828);
  }

  return result;
}

unint64_t sub_18E2F30DC()
{
  result = qword_1EABE2838;
  if (!qword_1EABE2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2838);
  }

  return result;
}

unint64_t sub_18E2F3130(uint64_t a1)
{
  result = sub_18E2AE01C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F3184()
{
  result = qword_1EABDF810;
  if (!qword_1EABDF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF810);
  }

  return result;
}

unint64_t sub_18E2F31D8()
{
  result = qword_1EABDF800;
  if (!qword_1EABDF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF800);
  }

  return result;
}

unint64_t sub_18E2F3274()
{
  result = qword_1EABDF808;
  if (!qword_1EABDF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF808);
  }

  return result;
}

unint64_t sub_18E2F32C8(uint64_t a1)
{
  result = sub_18E2EDEA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F331C()
{
  result = qword_1EABE2848;
  if (!qword_1EABE2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2848);
  }

  return result;
}

unint64_t sub_18E2F3370()
{
  result = qword_1EABE2850;
  if (!qword_1EABE2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2850);
  }

  return result;
}

unint64_t sub_18E2F340C()
{
  result = qword_1EABE2860;
  if (!qword_1EABE2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2860);
  }

  return result;
}

unint64_t sub_18E2F3460(uint64_t a1)
{
  result = sub_18E2062CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F34B4()
{
  result = qword_1EABE0200;
  if (!qword_1EABE0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0200);
  }

  return result;
}

unint64_t sub_18E2F3508()
{
  result = qword_1EABE01F0;
  if (!qword_1EABE01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01F0);
  }

  return result;
}

unint64_t sub_18E2F35A4()
{
  result = qword_1EABE01F8;
  if (!qword_1EABE01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01F8);
  }

  return result;
}

unint64_t sub_18E2F35F8(uint64_t a1)
{
  result = sub_18E2ADF28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F364C()
{
  result = qword_1EABDF9F8;
  if (!qword_1EABDF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9F8);
  }

  return result;
}

unint64_t sub_18E2F36A0()
{
  result = qword_1EABDF9E8;
  if (!qword_1EABDF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9E8);
  }

  return result;
}

unint64_t sub_18E2F373C()
{
  result = qword_1EABDF9F0;
  if (!qword_1EABDF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9F0);
  }

  return result;
}

unint64_t sub_18E2F3790(uint64_t a1)
{
  result = sub_18E1D4BA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F37E4()
{
  result = qword_1ED6A8A68;
  if (!qword_1ED6A8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8A68);
  }

  return result;
}

unint64_t sub_18E2F3838()
{
  result = qword_1ED6A8A60;
  if (!qword_1ED6A8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8A60);
  }

  return result;
}

unint64_t sub_18E2F38D4()
{
  result = qword_1ED6A8B50;
  if (!qword_1ED6A8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8B50);
  }

  return result;
}

unint64_t sub_18E2F3928(uint64_t a1)
{
  result = sub_18E1D8410();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F397C()
{
  result = qword_1ED6A8AA8;
  if (!qword_1ED6A8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8AA8);
  }

  return result;
}

unint64_t sub_18E2F39D0()
{
  result = qword_1ED6A8A98;
  if (!qword_1ED6A8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8A98);
  }

  return result;
}

unint64_t sub_18E2F3A6C()
{
  result = qword_1ED6A8AA0;
  if (!qword_1ED6A8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8AA0);
  }

  return result;
}

unint64_t sub_18E2F3AC0(uint64_t a1)
{
  result = sub_18E2EE0A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F3B14()
{
  result = qword_1EABE2888;
  if (!qword_1EABE2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2888);
  }

  return result;
}

unint64_t sub_18E2F3B68()
{
  result = qword_1EABE2890;
  if (!qword_1EABE2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2890);
  }

  return result;
}

unint64_t sub_18E2F3C04()
{
  result = qword_1EABE28A0;
  if (!qword_1EABE28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE28A0);
  }

  return result;
}

unint64_t sub_18E2F3C58(uint64_t a1)
{
  result = sub_18E2ADF7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F3CAC()
{
  result = qword_1EABDFA18;
  if (!qword_1EABDFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA18);
  }

  return result;
}

unint64_t sub_18E2F3D00()
{
  result = qword_1EABDFA08;
  if (!qword_1EABDFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA08);
  }

  return result;
}

unint64_t sub_18E2F3D9C()
{
  result = qword_1EABDFA10;
  if (!qword_1EABDFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA10);
  }

  return result;
}

unint64_t sub_18E2F3DF0(uint64_t a1)
{
  result = sub_18E2083A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F3E44()
{
  result = qword_1EABE02D0;
  if (!qword_1EABE02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02D0);
  }

  return result;
}

unint64_t sub_18E2F3E98()
{
  result = qword_1EABE02C0;
  if (!qword_1EABE02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02C0);
  }

  return result;
}

unint64_t sub_18E2F3F34()
{
  result = qword_1EABE02C8;
  if (!qword_1EABE02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02C8);
  }

  return result;
}

unint64_t sub_18E2F3F88(uint64_t a1)
{
  result = sub_18E2EDE54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F3FDC()
{
  result = qword_1EABE28B8;
  if (!qword_1EABE28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE28B8);
  }

  return result;
}

unint64_t sub_18E2F4030()
{
  result = qword_1EABE28C0;
  if (!qword_1EABE28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE28C0);
  }

  return result;
}

unint64_t sub_18E2F40CC()
{
  result = qword_1EABE28D0;
  if (!qword_1EABE28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE28D0);
  }

  return result;
}

unint64_t sub_18E2F4120(uint64_t a1)
{
  result = sub_18E22EAB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2F4174()
{
  result = qword_1EABE0BE8;
  if (!qword_1EABE0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BE8);
  }

  return result;
}

unint64_t sub_18E2F41C8()
{
  result = qword_1EABE0BD8;
  if (!qword_1EABE0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BD8);
  }

  return result;
}

unint64_t sub_18E2F4264()
{
  result = qword_1EABE0BE0;
  if (!qword_1EABE0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BE0);
  }

  return result;
}

unint64_t sub_18E2F42B8(uint64_t a1)
{
  result = sub_18E2EDE00();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E2F430C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E2F4348()
{
  result = qword_1EABE28E0;
  if (!qword_1EABE28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE28E0);
  }

  return result;
}

unint64_t sub_18E2F439C()
{
  result = qword_1EABE28E8;
  if (!qword_1EABE28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE28E8);
  }

  return result;
}

unint64_t sub_18E2F4438()
{
  result = qword_1EABE28F8;
  if (!qword_1EABE28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE28F8);
  }

  return result;
}

uint64_t sub_18E2F4538(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 136))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_18E1CFA04(v2);
}

uint64_t sub_18E2F4574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

      return sub_18E1D8480(result, a2);
    }

    *(result + 136) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

uint64_t sub_18E2F4610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 296))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_18E1CFA04(v2);
}

uint64_t sub_18E2F464C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

      return sub_18E1D8480(result, a2);
    }

    *(result + 296) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

uint64_t sub_18E2F46E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_18E1CFA04(v2);
}

uint64_t sub_18E2F4724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

      return sub_18E1D8480(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

uint64_t sub_18E2F4798(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 96))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_18E1CFA04(v2);
}

uint64_t sub_18E2F47D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

      return sub_18E1D8480(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

_BYTE *sub_18E2F4940(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12ModelCatalog21LLMCompileDraftBundleV10CodingKeysOwst_0_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E2F4B38(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E2F4C08()
{
  result = qword_1EABE2900;
  if (!qword_1EABE2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2900);
  }

  return result;
}

unint64_t sub_18E2F4C60()
{
  result = qword_1EABE2908;
  if (!qword_1EABE2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2908);
  }

  return result;
}

unint64_t sub_18E2F4CB8()
{
  result = qword_1EABE2910;
  if (!qword_1EABE2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2910);
  }

  return result;
}

unint64_t sub_18E2F4D10()
{
  result = qword_1EABE2918;
  if (!qword_1EABE2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2918);
  }

  return result;
}

unint64_t sub_18E2F4D68()
{
  result = qword_1EABE2920;
  if (!qword_1EABE2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2920);
  }

  return result;
}

unint64_t sub_18E2F4DC0()
{
  result = qword_1EABE2928;
  if (!qword_1EABE2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2928);
  }

  return result;
}

unint64_t sub_18E2F4E18()
{
  result = qword_1EABE2930;
  if (!qword_1EABE2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2930);
  }

  return result;
}

unint64_t sub_18E2F4E70()
{
  result = qword_1EABE2938;
  if (!qword_1EABE2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2938);
  }

  return result;
}

unint64_t sub_18E2F4EC8()
{
  result = qword_1EABE2940;
  if (!qword_1EABE2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2940);
  }

  return result;
}

unint64_t sub_18E2F4F20()
{
  result = qword_1EABE2948;
  if (!qword_1EABE2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2948);
  }

  return result;
}

unint64_t sub_18E2F4F78()
{
  result = qword_1EABE2950;
  if (!qword_1EABE2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2950);
  }

  return result;
}

unint64_t sub_18E2F4FD0()
{
  result = qword_1EABE2958;
  if (!qword_1EABE2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2958);
  }

  return result;
}

unint64_t sub_18E2F5028()
{
  result = qword_1EABE2960;
  if (!qword_1EABE2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2960);
  }

  return result;
}

unint64_t sub_18E2F5080()
{
  result = qword_1EABE2968;
  if (!qword_1EABE2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2968);
  }

  return result;
}

unint64_t sub_18E2F50D8()
{
  result = qword_1EABE2970;
  if (!qword_1EABE2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2970);
  }

  return result;
}

unint64_t sub_18E2F5130()
{
  result = qword_1EABE2978;
  if (!qword_1EABE2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2978);
  }

  return result;
}

unint64_t sub_18E2F5188()
{
  result = qword_1EABE2980;
  if (!qword_1EABE2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2980);
  }

  return result;
}

unint64_t sub_18E2F51E0()
{
  result = qword_1EABE2988;
  if (!qword_1EABE2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2988);
  }

  return result;
}

unint64_t sub_18E2F5238()
{
  result = qword_1EABE2990;
  if (!qword_1EABE2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2990);
  }

  return result;
}

unint64_t sub_18E2F5290()
{
  result = qword_1EABE2998;
  if (!qword_1EABE2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2998);
  }

  return result;
}

unint64_t sub_18E2F52E8()
{
  result = qword_1EABE29A0;
  if (!qword_1EABE29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29A0);
  }

  return result;
}

unint64_t sub_18E2F5340()
{
  result = qword_1EABE29A8;
  if (!qword_1EABE29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29A8);
  }

  return result;
}

unint64_t sub_18E2F5398()
{
  result = qword_1EABE29B0;
  if (!qword_1EABE29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29B0);
  }

  return result;
}

unint64_t sub_18E2F53F0()
{
  result = qword_1EABE29B8;
  if (!qword_1EABE29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29B8);
  }

  return result;
}

unint64_t sub_18E2F5448()
{
  result = qword_1EABE29C0;
  if (!qword_1EABE29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29C0);
  }

  return result;
}

unint64_t sub_18E2F54A0()
{
  result = qword_1EABE29C8;
  if (!qword_1EABE29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29C8);
  }

  return result;
}

unint64_t sub_18E2F54F8()
{
  result = qword_1EABE29D0;
  if (!qword_1EABE29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29D0);
  }

  return result;
}

unint64_t sub_18E2F5550()
{
  result = qword_1EABE29D8;
  if (!qword_1EABE29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29D8);
  }

  return result;
}

unint64_t sub_18E2F55A8()
{
  result = qword_1EABE0BF0;
  if (!qword_1EABE0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BF0);
  }

  return result;
}

unint64_t sub_18E2F5600()
{
  result = qword_1EABE0BF8;
  if (!qword_1EABE0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BF8);
  }

  return result;
}

unint64_t sub_18E2F5658()
{
  result = qword_1EABE29E0;
  if (!qword_1EABE29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29E0);
  }

  return result;
}

unint64_t sub_18E2F56B0()
{
  result = qword_1EABE29E8;
  if (!qword_1EABE29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29E8);
  }

  return result;
}

unint64_t sub_18E2F5708()
{
  result = qword_1EABE29F0;
  if (!qword_1EABE29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29F0);
  }

  return result;
}

unint64_t sub_18E2F5760()
{
  result = qword_1EABE29F8;
  if (!qword_1EABE29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE29F8);
  }

  return result;
}

unint64_t sub_18E2F57B8()
{
  result = qword_1EABE2A00;
  if (!qword_1EABE2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A00);
  }

  return result;
}

unint64_t sub_18E2F5810()
{
  result = qword_1EABE2A08;
  if (!qword_1EABE2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A08);
  }

  return result;
}

unint64_t sub_18E2F5868()
{
  result = qword_1EABE2A10;
  if (!qword_1EABE2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A10);
  }

  return result;
}

unint64_t sub_18E2F58C0()
{
  result = qword_1EABE2A18;
  if (!qword_1EABE2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A18);
  }

  return result;
}

unint64_t sub_18E2F5918()
{
  result = qword_1EABE0608;
  if (!qword_1EABE0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0608);
  }

  return result;
}

unint64_t sub_18E2F5970()
{
  result = qword_1EABE0610;
  if (!qword_1EABE0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0610);
  }

  return result;
}

unint64_t sub_18E2F59C8()
{
  result = qword_1ED6A8110;
  if (!qword_1ED6A8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8110);
  }

  return result;
}

unint64_t sub_18E2F5A20()
{
  result = qword_1ED6A8118;
  if (!qword_1ED6A8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8118);
  }

  return result;
}

unint64_t sub_18E2F5A78()
{
  result = qword_1EABE2A20;
  if (!qword_1EABE2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A20);
  }

  return result;
}

unint64_t sub_18E2F5AD0()
{
  result = qword_1EABE2A28;
  if (!qword_1EABE2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A28);
  }

  return result;
}

unint64_t sub_18E2F5B28()
{
  result = qword_1EABE2A30;
  if (!qword_1EABE2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A30);
  }

  return result;
}

unint64_t sub_18E2F5B80()
{
  result = qword_1EABE2A38;
  if (!qword_1EABE2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A38);
  }

  return result;
}

unint64_t sub_18E2F5BD8()
{
  result = qword_1EABE2A40;
  if (!qword_1EABE2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A40);
  }

  return result;
}

unint64_t sub_18E2F5C30()
{
  result = qword_1EABE2A48;
  if (!qword_1EABE2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A48);
  }

  return result;
}

unint64_t sub_18E2F5C88()
{
  result = qword_1EABE2A50;
  if (!qword_1EABE2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A50);
  }

  return result;
}

unint64_t sub_18E2F5CE0()
{
  result = qword_1EABE2A58;
  if (!qword_1EABE2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A58);
  }

  return result;
}

unint64_t sub_18E2F5D38()
{
  result = qword_1EABE2A60;
  if (!qword_1EABE2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A60);
  }

  return result;
}

unint64_t sub_18E2F5D90()
{
  result = qword_1EABE2A68;
  if (!qword_1EABE2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A68);
  }

  return result;
}

unint64_t sub_18E2F5DE8()
{
  result = qword_1EABE0100;
  if (!qword_1EABE0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0100);
  }

  return result;
}

unint64_t sub_18E2F5E40()
{
  result = qword_1EABE0108;
  if (!qword_1EABE0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0108);
  }

  return result;
}

unint64_t sub_18E2F5E98()
{
  result = qword_1EABE2A70;
  if (!qword_1EABE2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A70);
  }

  return result;
}

unint64_t sub_18E2F5EF0()
{
  result = qword_1EABE2A78;
  if (!qword_1EABE2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A78);
  }

  return result;
}

unint64_t sub_18E2F5F48()
{
  result = qword_1EABE2A80;
  if (!qword_1EABE2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A80);
  }

  return result;
}

unint64_t sub_18E2F5FA0()
{
  result = qword_1EABE2A88;
  if (!qword_1EABE2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A88);
  }

  return result;
}

unint64_t sub_18E2F5FF8()
{
  result = qword_1EABE2A90;
  if (!qword_1EABE2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A90);
  }

  return result;
}

unint64_t sub_18E2F6050()
{
  result = qword_1EABE2A98;
  if (!qword_1EABE2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2A98);
  }

  return result;
}

unint64_t sub_18E2F60A8()
{
  result = qword_1EABE0118;
  if (!qword_1EABE0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0118);
  }

  return result;
}

unint64_t sub_18E2F6100()
{
  result = qword_1EABE0120;
  if (!qword_1EABE0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0120);
  }

  return result;
}

unint64_t sub_18E2F6158()
{
  result = qword_1EABE2AA0;
  if (!qword_1EABE2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AA0);
  }

  return result;
}

unint64_t sub_18E2F61B0()
{
  result = qword_1EABE2AA8;
  if (!qword_1EABE2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AA8);
  }

  return result;
}

unint64_t sub_18E2F6208()
{
  result = qword_1EABE06C0;
  if (!qword_1EABE06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06C0);
  }

  return result;
}

unint64_t sub_18E2F6260()
{
  result = qword_1EABE06C8;
  if (!qword_1EABE06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06C8);
  }

  return result;
}

unint64_t sub_18E2F62B8()
{
  result = qword_1EABE2AB0;
  if (!qword_1EABE2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AB0);
  }

  return result;
}

unint64_t sub_18E2F6310()
{
  result = qword_1EABE2AB8;
  if (!qword_1EABE2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AB8);
  }

  return result;
}

unint64_t sub_18E2F6368()
{
  result = qword_1EABE01B0;
  if (!qword_1EABE01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01B0);
  }

  return result;
}

unint64_t sub_18E2F63C0()
{
  result = qword_1EABE01B8;
  if (!qword_1EABE01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01B8);
  }

  return result;
}

unint64_t sub_18E2F6418()
{
  result = qword_1EABE0560;
  if (!qword_1EABE0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0560);
  }

  return result;
}

unint64_t sub_18E2F6470()
{
  result = qword_1EABE0568;
  if (!qword_1EABE0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0568);
  }

  return result;
}

unint64_t sub_18E2F64C8()
{
  result = qword_1EABE2AC0;
  if (!qword_1EABE2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AC0);
  }

  return result;
}

unint64_t sub_18E2F6520()
{
  result = qword_1EABE2AC8;
  if (!qword_1EABE2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AC8);
  }

  return result;
}

unint64_t sub_18E2F6578()
{
  result = qword_1EABE2AD0;
  if (!qword_1EABE2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AD0);
  }

  return result;
}

unint64_t sub_18E2F65D0()
{
  result = qword_1EABE2AD8;
  if (!qword_1EABE2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AD8);
  }

  return result;
}

unint64_t sub_18E2F6628()
{
  result = qword_1EABDF7C0;
  if (!qword_1EABDF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7C0);
  }

  return result;
}

unint64_t sub_18E2F6680()
{
  result = qword_1EABDF7C8;
  if (!qword_1EABDF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7C8);
  }

  return result;
}

uint64_t sub_18E2F66D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_18E2706EC(a3, a4);
  sub_18E1C82B8(v5);
  v7 = *(v6 + 16);
  v8 = sub_18E1C5BFC();
  v9(v8);
  return a2;
}

unint64_t sub_18E2F6734()
{
  result = qword_1EABE0298;
  if (!qword_1EABE0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0298);
  }

  return result;
}

unint64_t sub_18E2F6788()
{
  result = qword_1EABE2AF0;
  if (!qword_1EABE2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AF0);
  }

  return result;
}

unint64_t sub_18E2F67DC()
{
  result = qword_1EABE2AF8;
  if (!qword_1EABE2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2AF8);
  }

  return result;
}

unint64_t sub_18E2F6830()
{
  result = qword_1EABE2B00;
  if (!qword_1EABE2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B00);
  }

  return result;
}

unint64_t sub_18E2F6884()
{
  result = qword_1EABE2B08;
  if (!qword_1EABE2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B08);
  }

  return result;
}

unint64_t sub_18E2F68D8()
{
  result = qword_1EABE2B10;
  if (!qword_1EABE2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B10);
  }

  return result;
}

unint64_t sub_18E2F692C()
{
  result = qword_1EABDF780;
  if (!qword_1EABDF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF780);
  }

  return result;
}

unint64_t sub_18E2F6980()
{
  result = qword_1EABE2B18;
  if (!qword_1EABE2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B18);
  }

  return result;
}

unint64_t sub_18E2F69D4()
{
  result = qword_1EABE2B20;
  if (!qword_1EABE2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B20);
  }

  return result;
}

unint64_t sub_18E2F6A28()
{
  result = qword_1EABE2B28;
  if (!qword_1EABE2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B28);
  }

  return result;
}

unint64_t sub_18E2F6A7C()
{
  result = qword_1EABE2B30;
  if (!qword_1EABE2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B30);
  }

  return result;
}

unint64_t sub_18E2F6AD0()
{
  result = qword_1EABDF7A0;
  if (!qword_1EABDF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7A0);
  }

  return result;
}

unint64_t sub_18E2F6B24()
{
  result = qword_1EABE2B38;
  if (!qword_1EABE2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B38);
  }

  return result;
}

unint64_t sub_18E2F6B78()
{
  result = qword_1EABE2B40;
  if (!qword_1EABE2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B40);
  }

  return result;
}

unint64_t sub_18E2F6BCC()
{
  result = qword_1EABE2B48;
  if (!qword_1EABE2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B48);
  }

  return result;
}

unint64_t sub_18E2F6C20()
{
  result = qword_1EABDF7B0;
  if (!qword_1EABDF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7B0);
  }

  return result;
}

unint64_t sub_18E2F6C74()
{
  result = qword_1EABE2B50;
  if (!qword_1EABE2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B50);
  }

  return result;
}

unint64_t sub_18E2F6CC8()
{
  result = qword_1EABE2B58;
  if (!qword_1EABE2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B58);
  }

  return result;
}

unint64_t sub_18E2F6D1C()
{
  result = qword_1EABDF8A0;
  if (!qword_1EABDF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF8A0);
  }

  return result;
}

unint64_t sub_18E2F6D70()
{
  result = qword_1EABE2B60;
  if (!qword_1EABE2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B60);
  }

  return result;
}

unint64_t sub_18E2F6DC4()
{
  result = qword_1EABE2B68;
  if (!qword_1EABE2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B68);
  }

  return result;
}

unint64_t sub_18E2F6E18()
{
  result = qword_1EABDFC08;
  if (!qword_1EABDFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFC08);
  }

  return result;
}

unint64_t sub_18E2F6E6C()
{
  result = qword_1EABE2B70;
  if (!qword_1EABE2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B70);
  }

  return result;
}

unint64_t sub_18E2F6EC0()
{
  result = qword_1EABE2B78;
  if (!qword_1EABE2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B78);
  }

  return result;
}

unint64_t sub_18E2F6F14()
{
  result = qword_1EABE2B80;
  if (!qword_1EABE2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B80);
  }

  return result;
}

unint64_t sub_18E2F6F68()
{
  result = qword_1EABE08E0;
  if (!qword_1EABE08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE08E0);
  }

  return result;
}

unint64_t sub_18E2F6FBC()
{
  result = qword_1EABE2B88;
  if (!qword_1EABE2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B88);
  }

  return result;
}

unint64_t sub_18E2F7010()
{
  result = qword_1EABE2B90;
  if (!qword_1EABE2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B90);
  }

  return result;
}

unint64_t sub_18E2F7064()
{
  result = qword_1EABE2B98;
  if (!qword_1EABE2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2B98);
  }

  return result;
}

unint64_t sub_18E2F70B8()
{
  result = qword_1EABE2BA0;
  if (!qword_1EABE2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BA0);
  }

  return result;
}

unint64_t sub_18E2F710C()
{
  result = qword_1EABE0600;
  if (!qword_1EABE0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0600);
  }

  return result;
}

unint64_t sub_18E2F7160()
{
  result = qword_1EABE2BA8;
  if (!qword_1EABE2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BA8);
  }

  return result;
}

unint64_t sub_18E2F71B4()
{
  result = qword_1EABE2BB0;
  if (!qword_1EABE2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BB0);
  }

  return result;
}

unint64_t sub_18E2F7208()
{
  result = qword_1EABE2BB8;
  if (!qword_1EABE2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BB8);
  }

  return result;
}

unint64_t sub_18E2F725C()
{
  result = qword_1EABE2BC0;
  if (!qword_1EABE2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BC0);
  }

  return result;
}

unint64_t sub_18E2F72B0()
{
  result = qword_1EABE2BC8;
  if (!qword_1EABE2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BC8);
  }

  return result;
}

unint64_t sub_18E2F7304()
{
  result = qword_1EABDF798;
  if (!qword_1EABDF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF798);
  }

  return result;
}

unint64_t sub_18E2F7358()
{
  result = qword_1EABE2BD0;
  if (!qword_1EABE2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BD0);
  }

  return result;
}

unint64_t sub_18E2F73AC()
{
  result = qword_1EABE2BD8;
  if (!qword_1EABE2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BD8);
  }

  return result;
}

unint64_t sub_18E2F7400()
{
  result = qword_1EABE2BE0;
  if (!qword_1EABE2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BE0);
  }

  return result;
}

unint64_t sub_18E2F7454()
{
  result = qword_1EABDF7A8;
  if (!qword_1EABDF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7A8);
  }

  return result;
}

unint64_t sub_18E2F74A8()
{
  result = qword_1EABE2BE8;
  if (!qword_1EABE2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BE8);
  }

  return result;
}

unint64_t sub_18E2F74FC()
{
  result = qword_1EABE2BF0;
  if (!qword_1EABE2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BF0);
  }

  return result;
}

unint64_t sub_18E2F7550()
{
  result = qword_1EABDF898;
  if (!qword_1EABDF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF898);
  }

  return result;
}

unint64_t sub_18E2F75A4()
{
  result = qword_1EABDFC00;
  if (!qword_1EABDFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFC00);
  }

  return result;
}

unint64_t sub_18E2F75F8()
{
  result = qword_1EABE2BF8;
  if (!qword_1EABE2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2BF8);
  }

  return result;
}

unint64_t sub_18E2F764C()
{
  result = qword_1EABE2C00;
  if (!qword_1EABE2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2C00);
  }

  return result;
}

unint64_t sub_18E2F76A0()
{
  result = qword_1EABDF7B8;
  if (!qword_1EABDF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7B8);
  }

  return result;
}

void sub_18E2F7980()
{
  v1 = *(v0 + 976);
  *(v0 + 968) = *(v0 + 968);
  *(v0 + 976) = v1;
}

uint64_t sub_18E2F79C4()
{

  return sub_18E44F35C();
}

void *sub_18E2F79E4(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 72), 0xD8uLL);
}

uint64_t sub_18E2F7A04()
{

  return sub_18E44F35C();
}

uint64_t sub_18E2F7A24()
{

  return sub_18E44F35C();
}

uint64_t sub_18E2F7A44()
{

  return swift_dynamicCast();
}

void sub_18E2F7A64(char a1)
{

  sub_18E26F1E0(a1, v1, 1);
}

uint64_t sub_18E2F7A80()
{

  return swift_arrayDestroy();
}

uint64_t sub_18E2F7AB0()
{
}

void sub_18E2F7AD8()
{
  v1 = *(v0 + 80);
  *(v0 + 72) = *(v0 + 72);
  *(v0 + 80) = v1;
}

void sub_18E2F7AE4(char a1)
{

  sub_18E26F1E0(a1, v1, 1);
}

uint64_t sub_18E2F7B00()
{
  v2 = *(v0 - 72);

  return sub_18E44F35C();
}

uint64_t sub_18E2F7B2C()
{
  result = sub_18E1C551C((v0 + 64), v1 + 16);
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  return result;
}

uint64_t sub_18E2F7B9C()
{

  return swift_dynamicCast();
}

uint64_t sub_18E2F7BB8()
{

  return sub_18E44E50C();
}

void *sub_18E2F7BD4()
{

  return memcpy((v0 + 536), (v0 + 64), 0xD8uLL);
}

double sub_18E2F7BF0()
{

  return sub_18E26C3FC(v1, (v0 + 320));
}

uint64_t sub_18E2F7C18()
{

  return swift_dynamicCast();
}

uint64_t sub_18E2F7C30()
{

  return sub_18E1E8C38(v0 + 16, v1 - 128);
}

uint64_t sub_18E2F7C48()
{
  v2 = *(v0 + 8);
}

void sub_18E2F7CB0()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E2F7CC8()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E2F7CE0(char a1)
{

  sub_18E26F1E0(a1, v1, 0);
}

uint64_t sub_18E2F7CF8(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_18E1E8C38(v1, va);
}

void *sub_18E2F7D10(void *a1)
{

  return memcpy(a1, (v1 + 536), 0xD8uLL);
}

uint64_t sub_18E2F7D7C()
{
  v3 = *(v1 - 192);
  v4 = *(v1 - 184);

  return sub_18E2F66D4(v0 + 56, v1 - 168, v3, v4);
}

uint64_t sub_18E2F7DA0()
{
  v2 = *(v0 - 248);
}

uint64_t sub_18E2F7DB8()
{

  return swift_dynamicCast();
}

uint64_t sub_18E2F7DD0()
{

  return sub_18E1E8C38(v0 + 16, v1 - 128);
}

void sub_18E2F7E0C()
{
  *v0 = v1;
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[3];
}

uint64_t sub_18E2F7E90(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

void sub_18E2F7ED0()
{
  v0[3] = v1;
  v0[4] = v2;
  v0[1] = v3;
  v5 = v0[50];
  v4 = v0[51];
}

void sub_18E2F7EE4()
{
  v0[1] = v1;
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[2];
}

void sub_18E2F7EF8()
{
  v1 = *(v0 + 136);
  *(v0 + 128) = *(v0 + 128);
  *(v0 + 136) = v1;
}

void sub_18E2F7F1C()
{
  v1 = *(v0 - 176);
  *(v0 - 88) = v1;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_18E2F7F54()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[5];
  v4 = v0[2];
}

uint64_t sub_18E2F7F8C(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_18E2F8098()
{
  v3 = *(v0 + 16);
  *v3 = v2;
  v3[1] = v1;
  sub_18E1C551C((v0 + 88), (v3 + 2));

  return sub_18E1C551C((v0 + 48), (v3 + 7));
}

uint64_t sub_18E2F817C(uint64_t result)
{
  *(v1 - 176) = result;
  *(v1 - 88) = result;
  return result;
}

void sub_18E2F8220()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
}

uint64_t sub_18E2F8244()
{
  v2 = *(v0 + 48);

  return sub_18E44E50C();
}

uint64_t sub_18E2F8264()
{
  *(v2 - 72) = v1;
  v4 = *(v0 + 912);
  v5 = *(v0 + 920);

  return type metadata accessor for Utils();
}

uint64_t sub_18E2F8284()
{
  v2 = *(v0 + 24);

  return sub_18E44E28C();
}

uint64_t sub_18E2F82A4()
{
  v2 = *(*(v0 - 288) + 8);
}

uint64_t sub_18E2F82C4()
{

  return sub_18E44E28C();
}

uint64_t sub_18E2F82E4()
{

  return swift_dynamicCast();
}

uint64_t sub_18E2F8304()
{

  return swift_dynamicCast();
}

void *sub_18E2F8324(uint64_t a1)
{
  *(v1 + 88) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 384), 0xD8uLL);
}

void sub_18E2F8344(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_18E2F8364()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_18E44E50C();
}

uint64_t sub_18E2F8384(float a1)
{
  *v2 = a1;
  v5 = *(v1 + 56);

  return sub_18E1C9624(v5, v3, (v1 + 616));
}

uint64_t sub_18E2F83A4(float a1)
{
  *v2 = a1;
  v5 = *(v1 + 40);

  return sub_18E1C9624(v5, v3, (v1 + 600));
}

uint64_t sub_18E2F83C4()
{
  v4 = *(v0 + 24);
  *v4 = v2;
  v4[1] = v1;

  return sub_18E1C551C((v0 + 48), (v4 + 2));
}

uint64_t sub_18E2F83E4()
{
  v0[6] = v1;
  v3 = v0[114];
  v4 = v0[115];

  return type metadata accessor for Utils();
}

uint64_t sub_18E2F8404()
{
  v0[6] = v1;
  v3 = v0[94];
  v4 = v0[95];

  return type metadata accessor for Utils();
}

double sub_18E2F8424@<D0>(_OWORD *a1@<X8>)
{

  return sub_18E26C3FC(v1, a1);
}

uint64_t sub_18E2F8444()
{
  v2 = *(v0 + 40);

  return sub_18E44E28C();
}

uint64_t sub_18E2F8464()
{
  v2 = *(v0 + 32);

  return sub_18E44E28C();
}

uint64_t sub_18E2F8484()
{
  v2 = *(v0 + 40);

  return sub_18E44E50C();
}

uint64_t sub_18E2F84A4()
{
  v2 = *(v0 - 160);

  return swift_arrayInitWithTakeFrontToBack();
}

uint64_t sub_18E2F84C4()
{
  v0[2] = v1;
  v0[3] = v3;
  v0[5] = v2;
  v0[1] = v4;
}

uint64_t sub_18E2F84E4()
{
  *(v0 + 48) = v1;

  return sub_18E32F0AC(v1, v2);
}

uint64_t sub_18E2F8504()
{
  *(v0 + 56) = v1;

  return sub_18E32F0AC(v1, v2);
}

uint64_t sub_18E2F8524()
{
  v0[2] = v4;
  *(v5 - 72) = v2;
  *v0 = v3;
  v0[1] = v1;
}

uint64_t sub_18E2F8544()
{
  v4 = *(v0 + 16);
  *v4 = v2;
  v4[1] = v1;

  return sub_18E1C551C((v0 + 32), (v4 + 2));
}

uint64_t sub_18E2F8564()
{
  v2 = *(v0 + 48);

  return sub_18E44E50C();
}

uint64_t sub_18E2F8584()
{

  return sub_18E1E8C38(v1, v0 + 968);
}

uint64_t sub_18E2F859C@<X0>(uint64_t a1@<X8>)
{

  return sub_18E1E8C38(v1 + 16, a1);
}

uint64_t sub_18E2F85B4()
{
  v2 = *v0;

  return swift_dynamicCast();
}

uint64_t sub_18E2F85CC()
{
  v2 = *(v0 - 192);

  return sub_18E44E2FC();
}

void sub_18E2F85E4()
{

  sub_18E2EEDB8((v0 - 192));
}

uint64_t sub_18E2F85FC()
{
  *(v1 - 192) = v0;
}

uint64_t sub_18E2F8614()
{

  return sub_18E1E8C38(v1 + 96, v0 + 440);
}

uint64_t sub_18E2F862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_18E1E8C38(v9, &a9);
}

uint64_t sub_18E2F8644()
{

  return sub_18E44F3CC();
}

void *sub_18E2F865C(void *a1)
{

  return memcpy(a1, (v1 + 184), 0xD8uLL);
}

uint64_t sub_18E2F8674()
{

  return sub_18E1E8C38(v1, v0 + 656);
}

uint64_t sub_18E2F868C()
{
  v2 = *(v0 + 8);

  return swift_dynamicCast();
}

uint64_t sub_18E2F86A4()
{

  return sub_18E1E8C38(v1 + 56, v0 + 912);
}

double sub_18E2F86BC()
{

  return sub_18E26C3FC(v1, (v0 + 144));
}

uint64_t sub_18E2F86D4(uint64_t a1, uint64_t a2)
{

  return sub_18E1C9624(a1, a2, (v2 - 200));
}

uint64_t sub_18E2F86EC(uint64_t a1, uint64_t a2)
{

  return sub_18E1C9624(a1, a2, (v2 - 152));
}

uint64_t sub_18E2F8704()
{
}

uint64_t sub_18E2F871C()
{
}

uint64_t sub_18E2F8734()
{

  return sub_18E44E99C();
}

uint64_t sub_18E2F874C()
{

  return sub_18E44E99C();
}

uint64_t sub_18E2F8764()
{

  return sub_18E1E8C38(v1, v0 + 88);
}

uint64_t sub_18E2F877C()
{
  v2 = *(v0 + 8);
}

uint64_t sub_18E2F8794()
{
  v2 = *(v0 - 144);

  return sub_18E44E2FC();
}

void sub_18E2F87AC()
{

  sub_18E2EEDB8((v0 - 144));
}

uint64_t sub_18E2F87C4()
{
  *(v1 - 144) = v0;
}

void *sub_18E2F87DC(void *a1)
{

  return memcpy(a1, (v1 + 1712), 0xD8uLL);
}

void *sub_18E2F87F4(void *a1)
{

  return memcpy(a1, (v1 + 1064), 0xD8uLL);
}

uint64_t sub_18E2F880C()
{
  v2 = *(v0 + 8);
}

double sub_18E2F8824@<D0>(_OWORD *a1@<X8>)
{

  return sub_18E26C3FC(v1, a1);
}

double sub_18E2F883C@<D0>(_OWORD *a1@<X8>)
{

  return sub_18E26C3FC(v1, a1);
}

uint64_t sub_18E2F8854()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return type metadata accessor for Utils();
}

uint64_t sub_18E2F886C()
{

  return sub_18E1E8C38(v1, v0 + 72);
}

uint64_t sub_18E2F8884()
{

  return swift_dynamicCast();
}

void *sub_18E2F889C(void *a1)
{

  return memcpy(a1, (v1 + 440), 0xD8uLL);
}

uint64_t sub_18E2F88B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_18E2F66D4(v5 + 56, v4 + 440, a3, a4);
}

uint64_t sub_18E2F88CC()
{

  return sub_18E1E8C38(v1, v0 + 1128);
}

uint64_t sub_18E2F88E4()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return type metadata accessor for Utils();
}

uint64_t sub_18E2F88FC()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
}

uint64_t sub_18E2F8914()
{

  return sub_18E1C551C((v0 + 536), v0 + 280);
}

unint64_t sub_18E2F892C()
{
  v2 = *(v0 + 968);
  v3 = *(v0 + 976);

  return sub_18E2AE554();
}

uint64_t SafetyFailure.init(useCaseIdentifier:userIdentifier:userRequestIdentifier:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 4) = a2;
  v6 = *(type metadata accessor for SafetyFailure(0) + 24);
  v7 = sub_18E44E6AC();
  sub_18E1C4EEC(v7);
  v9 = *(v8 + 32);

  return v9(a4 + v6, a3);
}

objc_class *SafetyFailureWrapper.__allocating_init(safetyFailure:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_18E2F9608(a1, v3 + OBJC_IVAR____TtC12ModelCatalog20SafetyFailureWrapper_safetyFailure);
  v6.receiver = v3;
  v6.super_class = v1;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = sub_18E1C5D78();
  sub_18E2F966C(v4);
  return v1;
}

uint64_t SafetyFailure.userRequestIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SafetyFailure(0) + 24);
  v4 = sub_18E44E6AC();
  v5 = sub_18E1C4EEC(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SafetyFailure.init(useCaseIdentifier:userIdentifier:)@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a3 + *(type metadata accessor for SafetyFailure(0) + 24);
  result = sub_18E44E69C();
  *a3 = v5;
  *(a3 + 4) = a2;
  return result;
}

uint64_t static SafetyFailure.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_18E1C6DAC(*a1);
  v7 = v6;
  if (v5 == sub_18E1C6DAC(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_18E44F3CC();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v11 = *(type metadata accessor for SafetyFailure(0) + 24);

  return MEMORY[0x1EEDC4E90](a1 + v11, a2 + v11);
}

uint64_t sub_18E2F8C1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000018E464040 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000018E467850 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

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

uint64_t sub_18E2F8D40(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x6E65644972657375;
  }

  return 0xD000000000000015;
}

uint64_t sub_18E2F8DB8()
{
  v1 = *v0;
  sub_18E44F48C();
  sub_18E200800(v3, v1);
  return sub_18E44F4CC();
}

uint64_t sub_18E2F8E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E2F8C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E2F8E2C(uint64_t a1)
{
  v2 = sub_18E2F96C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2F8E68(uint64_t a1)
{
  v2 = sub_18E2F96C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SafetyFailure.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_18E2706EC(&qword_1EABE2C18, &qword_18E4AF6E0);
  v6 = sub_18E1C4EAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E2F96C8();
  sub_18E44F4EC();
  v19[15] = *v3;
  v19[14] = 0;
  sub_18E233620();
  sub_18E44F35C();
  if (!v2)
  {
    v14 = *(v3 + 4);
    v19[13] = 1;
    sub_18E44F36C();
    v15 = *(type metadata accessor for SafetyFailure(0) + 24);
    v19[12] = 2;
    sub_18E44E6AC();
    sub_18E1C6B90();
    sub_18E2F971C(v16, v17);
    sub_18E44F35C();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t SafetyFailure.hash(into:)()
{
  sub_18E1C6DAC(*v0);
  sub_18E44EB4C();

  v1 = *(v0 + 4);
  sub_18E44F4BC();
  v2 = *(type metadata accessor for SafetyFailure(0) + 24);
  sub_18E44E6AC();
  sub_18E1C6B90();
  sub_18E2F971C(v3, v4);
  return sub_18E44E9EC();
}

uint64_t SafetyFailure.hashValue.getter()
{
  sub_18E44F48C();
  sub_18E1C6DAC(*v0);
  sub_18E44EB4C();

  v1 = *(v0 + 4);
  sub_18E44F4BC();
  v2 = *(type metadata accessor for SafetyFailure(0) + 24);
  sub_18E44E6AC();
  sub_18E1C6B90();
  sub_18E2F971C(v3, v4);
  sub_18E44E9EC();
  return sub_18E44F4CC();
}

uint64_t SafetyFailure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_18E44E6AC();
  v5 = sub_18E1C4EAC(v4);
  v39 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v11 = v10 - v9;
  v12 = sub_18E2706EC(&unk_1EABE2C40, &qword_18E4AF6E8);
  v13 = sub_18E1C4EAC(v12);
  v41 = v14;
  v42 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v38 - v17;
  v19 = type metadata accessor for SafetyFailure(0);
  v20 = sub_18E1C4EEC(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1C4EDC();
  v25 = v24 - v23;
  v26 = a1[3];
  v27 = a1[4];
  v43 = a1;
  sub_18E1E15F4(a1, v26);
  sub_18E2F96C8();
  sub_18E44F4DC();
  if (!v2)
  {
    v28 = v25;
    v29 = v41;
    v30 = v11;
    v46 = 0;
    sub_18E200894();
    sub_18E44F26C();
    *v28 = v47;
    v45 = 1;
    v31 = v29;
    *(v28 + 4) = sub_18E44F27C();
    v44 = 2;
    sub_18E1C6B90();
    sub_18E2F971C(v32, v33);
    v34 = v30;
    v35 = v4;
    v36 = v42;
    sub_18E44F26C();
    (*(v31 + 8))(v18, v36);
    (*(v39 + 32))(v28 + *(v19 + 24), v34, v35);
    sub_18E2F9764(v28, v40);
  }

  return sub_18E1C9934(v43);
}

uint64_t sub_18E2F9514()
{
  sub_18E44F48C();
  SafetyFailure.hash(into:)();
  return sub_18E44F4CC();
}

void *SafetyFailureWrapper.init(safetyFailure:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_18E2F9608(a1, v1 + OBJC_IVAR____TtC12ModelCatalog20SafetyFailureWrapper_safetyFailure);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = sub_18E1C5D78();
  sub_18E2F966C(v4);
  return v1;
}

uint64_t sub_18E2F9608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyFailure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E2F966C(uint64_t a1)
{
  v2 = type metadata accessor for SafetyFailure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18E2F96C8()
{
  result = qword_1EABE2C20;
  if (!qword_1EABE2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2C20);
  }

  return result;
}

uint64_t sub_18E2F971C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18E2F9764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyFailure(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SafetyFailureWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE2C10 = a1;
  return result;
}

uint64_t sub_18E2F98E4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE2C10;
  return result;
}

uint64_t sub_18E2F9930(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE2C10 = v1;
  return result;
}

Swift::Void __swiftcall SafetyFailureWrapper.encode(with:)(NSCoder with)
{
  v2 = sub_18E44E27C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_18E44E26C();
  type metadata accessor for SafetyFailure(0);
  sub_18E1C82C4();
  sub_18E2F971C(v5, v6);
  v7 = sub_18E44E25C();
  v9 = v8;

  sub_18E25BD94();
  sub_18E2523A0(v7, v9);
  v10 = sub_18E25BDDC(v7, v9);
  v11 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  sub_18E1FDFE0(v7, v9);
}

id SafetyFailureWrapper.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  sub_18E1C5D78();
  return SafetyFailureWrapper.init(coder:)();
}

id SafetyFailureWrapper.init(coder:)()
{
  v1 = v0;
  sub_18E1C5D78();
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SafetyFailure(0);
  v4 = sub_18E1C4EEC(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = sub_18E2706EC(&qword_1EABE2C68, &qword_18E4AF6F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  sub_18E25BD94();
  v19 = sub_18E44EEBC();
  if (v19)
  {
    v20 = v19;
    v38 = v11;
    v39 = ObjectType;
    v40 = v0;
    v21 = sub_18E44E24C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_18E44E23C();
    v24 = MEMORY[0x193ACBD40](v20);
    v26 = v25;
    sub_18E1C82C4();
    sub_18E2F971C(v27, v28);
    sub_18E44E22C();
    sub_18E1FDFE0(v24, v26);

    sub_18E201DC8(v18, 0, 1, v3);
    sub_18E2F9F18(v18, v16);
    if (sub_18E1CAF28(v16, 1, v3) != 1)
    {
      v32 = v38;
      sub_18E2F9764(v16, v38);
      sub_18E2F9608(v32, v9);
      v33 = v39;
      v34 = objc_allocWithZone(v39);
      sub_18E2F9608(v9, v34 + OBJC_IVAR____TtC12ModelCatalog20SafetyFailureWrapper_safetyFailure);
      v41.receiver = v34;
      v41.super_class = v33;
      v31 = objc_msgSendSuper2(&v41, sel_init);
      sub_18E2F966C(v9);

      sub_18E2F966C(v32);
      sub_18E2F9F88(v18);
      swift_getObjectType();
      v35 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
      v36 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
      swift_deallocPartialClassInstance();
      return v31;
    }

    sub_18E2F9F88(v18);

    sub_18E2F9F88(v16);
  }

  else
  {
  }

  swift_getObjectType();
  v29 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x30);
  v30 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_18E2F9F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2C68, &qword_18E4AF6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E2F9F88(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE2C68, &qword_18E4AF6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SafetyFailureWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SafetyFailure(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_18E1C4EDC();
  v8 = v7 - v6;
  sub_18E2F9608(v1 + OBJC_IVAR____TtC12ModelCatalog20SafetyFailureWrapper_safetyFailure, v7 - v6);
  v9 = objc_allocWithZone(ObjectType);
  sub_18E2F9608(v8, v9 + OBJC_IVAR____TtC12ModelCatalog20SafetyFailureWrapper_safetyFailure);
  v12.receiver = v9;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  result = sub_18E2F966C(v8);
  a1[3] = ObjectType;
  *a1 = v10;
  return result;
}

uint64_t SafetyFailureWrapper.description.getter()
{
  sub_18E44EFFC();
  MEMORY[0x193ACC300](0xD000000000000011, 0x800000018E4677B0);
  type metadata accessor for SafetyFailure(0);
  sub_18E44F0DC();
  MEMORY[0x193ACC300](32032, 0xE200000000000000);
  return 0;
}

id SafetyFailureWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetyFailureWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E2FA3DC()
{
  result = sub_18E44E6AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18E2FA478()
{
  result = type metadata accessor for SafetyFailure(319);
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

_BYTE *storeEnumTagSinglePayload for SafetyFailure.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E2FA628()
{
  result = qword_1EABE2D40;
  if (!qword_1EABE2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D40);
  }

  return result;
}

unint64_t sub_18E2FA680()
{
  result = qword_1EABE2D48;
  if (!qword_1EABE2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D48);
  }

  return result;
}

unint64_t sub_18E2FA6D8()
{
  result = qword_1EABE2D50;
  if (!qword_1EABE2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D50);
  }

  return result;
}

__n128 LLMBundle.init(id:tokenizer:baseModel:adapter:draftModel:)()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v13);
  v15 = *(v14 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C6BA8();
  v17 = *v10;
  v18 = v10[1];
  sub_18E1E8C38(v8, v48);
  sub_18E1E8C38(v6, v47);
  sub_18E2FB4EC(v4, v46, &qword_1EABE12F0, &unk_18E49ED90);
  sub_18E1CB024(v2, v45);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_18E1E8C38(v48, v40);
  sub_18E1E8C38(v47, v39);
  sub_18E2FB4EC(v46, v37, &qword_1EABE12F0, &unk_18E49ED90);
  sub_18E1CB024(v45, v35);
  sub_18E2FB4EC(v43, v33, &qword_1EABE2568, &qword_18E4AAE98);
  sub_18E2FB4EC(v41, v31, &qword_1EABE2570, &qword_18E4AAEA0);

  sub_18E44E50C();

  v19 = sub_18E44E54C();
  v20 = sub_18E1C5FE8();
  if (sub_18E1CAF28(v20, v21, v19) == 1)
  {
    v22 = v17;
    sub_18E1C5074();
    sub_18E1C7824(v4);
    sub_18E1C9934(v6);
    sub_18E1C9934(v8);
    sub_18E1E8F44(v41, &qword_1EABE2570, &qword_18E4AAEA0);
    sub_18E1E8F44(v43, &qword_1EABE2568, &qword_18E4AAE98);
    sub_18E1C5D84(v45);
    sub_18E1C7824(v46);
    sub_18E1C9934(v47);
    sub_18E1C9934(v48);
    sub_18E1E8F44(v0, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    v22 = sub_18E44E49C();
    v30 = v23;
    sub_18E1C5074();
    sub_18E1C7824(v4);
    sub_18E1C9934(v6);
    sub_18E1C9934(v8);
    sub_18E1E8F44(v41, &qword_1EABE2570, &qword_18E4AAEA0);
    sub_18E1E8F44(v43, &qword_1EABE2568, &qword_18E4AAE98);
    sub_18E1C5D84(v45);
    sub_18E1C7824(v46);
    sub_18E1C9934(v47);
    sub_18E1C9934(v48);
    sub_18E1C82B8(v19);
    (*(v24 + 8))(v0, v19);

    v18 = v30;
  }

  *v12 = v22;
  *(v12 + 8) = v18;
  sub_18E1C551C(v40, v12 + 16);
  sub_18E1C551C(v39, v12 + 56);
  v25 = v37[1];
  *(v12 + 96) = v37[0];
  *(v12 + 112) = v25;
  v26 = v35[1];
  *(v12 + 136) = v35[0];
  *(v12 + 152) = v26;
  v27 = v33[1];
  *(v12 + 176) = v33[0];
  *(v12 + 192) = v27;
  v28 = v31[0];
  *(v12 + 232) = v31[1];
  *(v12 + 128) = v38;
  *(v12 + 168) = v36;
  *(v12 + 208) = v34;
  *(v12 + 248) = v32;
  *(v12 + 216) = v28;
  *(v12 + 256) = 0u;
  *(v12 + 272) = 0u;
  *(v12 + 288) = 0;
  sub_18E1C5544();
  return result;
}

__n128 LLMBundle.init(id:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:)()
{
  sub_18E1C575C();
  v8 = v7;
  v10 = v9;
  sub_18E1C7F9C();
  v11 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v11);
  v13 = *(v12 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C6BA8();
  v15 = *v1;
  v16 = v1[1];
  v24 = v2;
  sub_18E1E8C38(v2, &v32);
  sub_18E1E8C38(v4, &v31);
  sub_18E2FB4EC(v5, v30, &qword_1EABE12F0, &unk_18E49ED90);
  sub_18E2FB4EC(v6, v29, &qword_1EABE12F8, &qword_18E4AAE90);
  sub_18E2FB4EC(v10, v27, &qword_1EABE2568, &qword_18E4AAE98);
  sub_18E2FB4EC(v8, v25, &qword_1EABE2570, &qword_18E4AAEA0);

  sub_18E44E50C();

  v17 = sub_18E44E54C();
  v18 = sub_18E1C5FE8();
  if (sub_18E1CAF28(v18, v19, v17) == 1)
  {
    sub_18E1E8F44(v8, &qword_1EABE2570, &qword_18E4AAEA0);
    sub_18E1E8F44(v10, &qword_1EABE2568, &qword_18E4AAE98);
    sub_18E1E8F44(v6, &qword_1EABE12F8, &qword_18E4AAE90);
    sub_18E1E8F44(v5, &qword_1EABE12F0, &unk_18E49ED90);
    sub_18E1C9934(v4);
    sub_18E1C9934(v24);
    sub_18E1E8F44(v3, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    sub_18E44E49C();
    sub_18E1E8F44(v8, &qword_1EABE2570, &qword_18E4AAEA0);
    sub_18E1E8F44(v10, &qword_1EABE2568, &qword_18E4AAE98);
    sub_18E1E8F44(v6, &qword_1EABE12F8, &qword_18E4AAE90);
    sub_18E1E8F44(v5, &qword_1EABE12F0, &unk_18E49ED90);
    sub_18E1C9934(v4);
    sub_18E1C9934(v24);
    sub_18E1C82B8(v17);
    (*(v20 + 8))(v3, v17);
  }

  sub_18E1C53B4();
  sub_18E1C8AD4();
  v21 = v27[1];
  *(v0 + 176) = v27[0];
  *(v0 + 192) = v21;
  v22 = v25[0];
  *(v0 + 232) = v25[1];
  *(v0 + 128) = v30[4];
  *(v0 + 168) = v29[4];
  *(v0 + 208) = v28;
  *(v0 + 248) = v26;
  *(v0 + 216) = v22;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_18E1C5544();
  return result;
}

__n128 LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 288) = 0;
  *(a9 + 256) = 0u;
  *(a9 + 272) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_18E1C551C(a3, a9 + 16);
  sub_18E1C551C(a4, a9 + 56);
  v15 = *(a5 + 16);
  *(a9 + 96) = *a5;
  *(a9 + 112) = v15;
  v16 = *(a6 + 16);
  *(a9 + 136) = *a6;
  *(a9 + 152) = v16;
  v17 = *(a7 + 16);
  *(a9 + 176) = *a7;
  *(a9 + 192) = v17;
  v19 = *a8;
  result = a8[1];
  *(a9 + 232) = result;
  *(a9 + 128) = *(a5 + 32);
  *(a9 + 168) = *(a6 + 32);
  *(a9 + 208) = *(a7 + 32);
  *(a9 + 248) = *(a8 + 4);
  *(a9 + 216) = v19;
  return result;
}

void AssetBackedLLMBundle.init(id:tokenizer:baseModel:adapter:draftModel:)()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v13);
  v15 = *(v14 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C6BA8();
  v18 = *v10;
  v17 = v10[1];
  sub_18E1E8C38(v8, v42);
  sub_18E1E8C38(v6, v41);
  sub_18E2FB4EC(v4, v40, &qword_1EABE1300, &unk_18E49EDA0);
  sub_18E1CB024(v2, v39);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_18E1E8C38(v42, v36);
  sub_18E1E8C38(v41, v35);
  sub_18E2FB4EC(v40, v33, &qword_1EABE1300, &unk_18E49EDA0);
  sub_18E1CB024(v39, v31);
  sub_18E2FB4EC(v37, v29, &qword_1EABE24D8, &qword_18E4AAE00);

  sub_18E44E50C();

  v19 = sub_18E44E54C();
  v20 = sub_18E1C5FE8();
  if (sub_18E1CAF28(v20, v21, v19) == 1)
  {
    sub_18E1C5074();
    sub_18E1C7824(v4);
    sub_18E1C9934(v6);
    sub_18E1C9934(v8);
    sub_18E1E8F44(v37, &qword_1EABE24D8, &qword_18E4AAE00);
    sub_18E1C5D84(v39);
    sub_18E1C7824(v40);
    sub_18E1C9934(v41);
    sub_18E1C9934(v42);
    sub_18E1E8F44(v0, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    v18 = sub_18E44E49C();
    v28 = v22;
    sub_18E1C5074();
    sub_18E1C7824(v4);
    sub_18E1C9934(v6);
    sub_18E1C9934(v8);
    sub_18E1E8F44(v37, &qword_1EABE24D8, &qword_18E4AAE00);
    sub_18E1C5D84(v39);
    sub_18E1C7824(v40);
    sub_18E1C9934(v41);
    sub_18E1C9934(v42);
    sub_18E1C82B8(v19);
    (*(v23 + 8))(v0, v19);

    v17 = v28;
  }

  *v12 = v18;
  *(v12 + 8) = v17;
  sub_18E1C551C(v36, v12 + 16);
  sub_18E1C551C(v35, v12 + 56);
  v24 = v33[1];
  *(v12 + 96) = v33[0];
  *(v12 + 112) = v24;
  *(v12 + 128) = v34;
  v25 = v31[1];
  *(v12 + 136) = v31[0];
  *(v12 + 152) = v25;
  *(v12 + 168) = v32;
  *(v12 + 176) = 0u;
  *(v12 + 192) = 0u;
  *(v12 + 208) = 0;
  v26 = v29[0];
  v27 = v29[1];
  *(v12 + 248) = v30;
  *(v12 + 232) = v27;
  *(v12 + 216) = v26;
  *(v12 + 256) = 0u;
  *(v12 + 272) = 0u;
  *(v12 + 288) = 0;
  sub_18E1C5544();
}

void AssetBackedLLMBundle.init(id:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:)()
{
  sub_18E1C575C();
  v8 = v7;
  v22 = v9;
  sub_18E1C7F9C();
  v10 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v10);
  v12 = *(v11 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C6BA8();
  v14 = *v1;
  v15 = v1[1];
  sub_18E1E8C38(v2, &v28);
  sub_18E1E8C38(v4, &v27);
  sub_18E2FB4EC(v5, v26, &qword_1EABE1300, &unk_18E49EDA0);
  sub_18E2FB4EC(v6, v25, &qword_1EABE1308, &unk_18E4AADF0);
  sub_18E2FB4EC(v8, v23, &qword_1EABE24D8, &qword_18E4AAE00);

  sub_18E44E50C();

  v16 = sub_18E44E54C();
  v17 = sub_18E1C5FE8();
  if (sub_18E1CAF28(v17, v18, v16) == 1)
  {
    sub_18E1E8F44(v8, &qword_1EABE24D8, &qword_18E4AAE00);
    sub_18E1E8F44(v22, &qword_1EABE1310, &qword_18E49EDB0);
    sub_18E1E8F44(v6, &qword_1EABE1308, &unk_18E4AADF0);
    sub_18E1E8F44(v5, &qword_1EABE1300, &unk_18E49EDA0);
    sub_18E1C9934(v4);
    sub_18E1C9934(v2);
    sub_18E1E8F44(v3, &qword_1EABE2FE0, &qword_18E49CE00);
  }

  else
  {
    sub_18E44E49C();
    sub_18E1E8F44(v8, &qword_1EABE24D8, &qword_18E4AAE00);
    sub_18E1E8F44(v22, &qword_1EABE1310, &qword_18E49EDB0);
    sub_18E1E8F44(v6, &qword_1EABE1308, &unk_18E4AADF0);
    sub_18E1E8F44(v5, &qword_1EABE1300, &unk_18E49EDA0);
    sub_18E1C9934(v4);
    sub_18E1C9934(v2);
    sub_18E1C82B8(v16);
    (*(v19 + 8))(v3, v16);
  }

  sub_18E1C53B4();
  *(v0 + 128) = v26[4];
  sub_18E1C8AD4();
  *(v0 + 168) = v25[4];
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  v20 = v23[0];
  v21 = v23[1];
  *(v0 + 248) = v24;
  *(v0 + 232) = v21;
  *(v0 + 216) = v20;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_18E1C5544();
}

uint64_t sub_18E2FB4EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18E2706EC(a3, a4);
  sub_18E1C82B8(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

__n128 sub_18E2FB57C()
{
  sub_18E1C674C();
  v5 = v4;
  *(v4 + 288) = 0;
  *(v4 + 256) = 0u;
  *(v4 + 272) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 176) = 0u;
  *v4 = v6;
  *(v4 + 8) = v7;
  v9(v8, v4 + 16);
  v0(v3, v5 + 56);
  v10 = *(v2 + 16);
  *(v5 + 96) = *v2;
  *(v5 + 112) = v10;
  *(v5 + 128) = *(v2 + 32);
  result = *v1;
  v12 = *(v1 + 16);
  *(v5 + 136) = *v1;
  *(v5 + 152) = v12;
  *(v5 + 168) = *(v1 + 32);
  return result;
}

__n128 AssetBackedLLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:)()
{
  sub_18E1C674C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_18E1E8F44(v12, &qword_1EABE1310, &qword_18E49EDB0);
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0;
  *(v11 + 256) = 0u;
  *(v11 + 272) = 0u;
  *(v11 + 288) = 0;
  *v11 = v9;
  *(v11 + 8) = v7;
  sub_18E1C551C(v5, v11 + 16);
  sub_18E1C551C(v3, v11 + 56);
  v13 = *(v2 + 16);
  *(v11 + 96) = *v2;
  *(v11 + 112) = v13;
  v14 = *(v1 + 16);
  *(v11 + 136) = *v1;
  *(v11 + 152) = v14;
  v16 = *v0;
  result = v0[1];
  *(v11 + 232) = result;
  *(v11 + 128) = *(v2 + 32);
  *(v11 + 168) = *(v1 + 32);
  *(v11 + 248) = *(v0 + 4);
  *(v11 + 216) = v16;
  return result;
}

uint64_t StopToken.intValue.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t StopToken.intValue.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t StopToken.stringValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t StopToken.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

BOOL static StopToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == *(a2 + 16) && v6 == v7;
    return v9 || (sub_18E44F3CC() & 1) != 0;
  }

  return !v7;
}

uint64_t sub_18E2FB820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6156746E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18E2FB8EC(char a1)
{
  if (a1)
  {
    return 0x6156676E69727473;
  }

  else
  {
    return 0x65756C6156746E69;
  }
}

uint64_t sub_18E2FB934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E2FB820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E2FB95C(uint64_t a1)
{
  v2 = sub_18E2FBB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E2FB998(uint64_t a1)
{
  v2 = sub_18E2FBB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StopToken.encode(to:)(void *a1)
{
  v4 = sub_18E2706EC(&qword_1EABE2D60, &qword_18E4AF950);
  v5 = sub_18E1C4EAC(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E2FBB48();
  sub_18E44F4EC();
  v19 = 0;
  sub_18E44F2EC();
  if (!v2)
  {
    v18 = 1;
    sub_18E44F2BC();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t sub_18E2FBB48()
{
  result = qword_1EABE2D68;
  if (!qword_1EABE2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D68);
  }

  return result;
}

uint64_t StopToken.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18E2706EC(&qword_1EABE2D70, &qword_18E4AF958);
  v6 = sub_18E1C4EAC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E2FBB48();
  sub_18E44F4DC();
  if (!v2)
  {
    v25 = 0;
    v14 = sub_18E44F1FC();
    v16 = v15;
    v24 = 1;
    v17 = sub_18E44F1CC();
    v20 = v19;
    v21 = *(v8 + 8);
    v23 = v17;
    v21(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v16 & 1;
    *(a2 + 16) = v23;
    *(a2 + 24) = v20;
  }

  sub_18E1C9934(a1);
}

uint64_t AssetMetadata.stopToken(metadataURL:deviceSpecialTokensMap:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  sub_18E2FC154(a1, &v37);
  v5 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {
    sub_18E275468(&v37, &qword_1EABE2D78, &qword_18E4AF960);
LABEL_6:
    sub_18E2FC154(a1, &v37);
    v11 = *(&v38 + 1);
    if (*(&v38 + 1))
    {
      v12 = v39;
      sub_18E1E15F4(&v37, *(&v38 + 1));
      v13 = (*(v12 + 16))(v11, v12);
      v15 = v14;
      result = sub_18E1C9934(&v37);
      if (v15)
      {
        *a2 = xmmword_18E4AF940;
        *(a2 + 16) = v13;
        *(a2 + 24) = v15;
        goto LABEL_25;
      }
    }

    else
    {
      sub_18E275468(&v37, &qword_1EABE2D78, &qword_18E4AF960);
    }

    result = sub_18E44E58C();
    if (v2)
    {
      goto LABEL_25;
    }

    v16 = objc_opt_self();
    sub_18E1C6BB8();
    v17 = sub_18E44E60C();
    *&v37 = 0;
    v18 = [v16 JSONObjectWithData:v17 options:0 error:&v37];

    if (!v18)
    {
      v22 = v37;
      sub_18E44E44C();

      swift_willThrow();
      v23 = sub_18E1C6BB8();
      result = sub_18E1FDFE0(v23, v24);
      goto LABEL_25;
    }

    v19 = v37;
    sub_18E44EF2C();
    swift_unknownObjectRelease();
    sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160);
    if (sub_18E1C82DC() && v35)
    {
      sub_18E26C3FC(v35, &v37);

      if (*(&v38 + 1))
      {
        if ((sub_18E1C82DC() & 1) == 0)
        {
          v31 = sub_18E1C6BB8();
          result = sub_18E1FDFE0(v31, v32);
          goto LABEL_24;
        }

        sub_18E26C3FC(v35, &v35);
        v20 = sub_18E1C6BB8();
        sub_18E1FDFE0(v20, v21);

        if (v36)
        {
          sub_18E270D70(&v35, &v37);
          sub_18E1C97D8(&v37, &v35);
          if (sub_18E1C5090())
          {
            result = sub_18E1C9934(&v37);
            *a2 = v33;
            goto LABEL_4;
          }

          sub_18E270D70(&v37, &v35);
          result = sub_18E1C5090();
          if (result)
          {
            *a2 = xmmword_18E4AF940;
            *(a2 + 16) = v33;
            *(a2 + 24) = v34;
            goto LABEL_25;
          }

LABEL_24:
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 1;
          goto LABEL_25;
        }

        v29 = &v35;
LABEL_23:
        result = sub_18E275468(v29, &qword_1EABE3B70, &qword_18E4AAB80);
        goto LABEL_24;
      }

      v27 = sub_18E1C6BB8();
      sub_18E1FDFE0(v27, v28);
    }

    else
    {
      v25 = sub_18E1C6BB8();
      sub_18E1FDFE0(v25, v26);
      v37 = 0u;
      v38 = 0u;
    }

    v29 = &v37;
    goto LABEL_23;
  }

  v6 = v39;
  sub_18E1E15F4(&v37, *(&v38 + 1));
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  result = sub_18E1C9934(&v37);
  if (v9)
  {
    goto LABEL_6;
  }

  *a2 = v7;
LABEL_4:
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
LABEL_25:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_18E2FC154(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2D78, &qword_18E4AF960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E2FC20C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E2FC260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StopToken.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E2FC3A4()
{
  result = qword_1EABE2D80;
  if (!qword_1EABE2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D80);
  }

  return result;
}

unint64_t sub_18E2FC3FC()
{
  result = qword_1EABE2D88;
  if (!qword_1EABE2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D88);
  }

  return result;
}

unint64_t sub_18E2FC454()
{
  result = qword_1EABE2D90;
  if (!qword_1EABE2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D90);
  }

  return result;
}

__n128 sub_18E2FC4CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_18E2FC4E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 25))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 8)
      {
        v4 = 8;
      }

      else
      {
        v4 = *(a1 + 24);
      }

      v5 = v4 - 9;
      if (v3 < 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E2FC52C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 8;
    }
  }

  return result;
}

ModelCatalog::AssetManagerShared::UsageAliasSubscription __swiftcall AssetManagerShared.UsageAliasSubscription.init(name:value:)(Swift::String name, Swift::String value)
{
  *v2 = name;
  v2[1] = value;
  result.value = value;
  result.name = name;
  return result;
}

uint64_t AssetManagerShared.UsageAliasSubscription.subscriptionName.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x193ACC300](95, 0xE100000000000000);

  MEMORY[0x193ACC300](v1, v2);

  return v4;
}

void static AssetManagerShared.usageAliasSubscription(useCaseIdentifier:arguments:)(char *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  if (!v6)
  {
    v14 = 0xE700000000000000;
    sub_18E1C6BC4();
LABEL_25:
    *a3 = sub_18E1C6DAC(v5);
    a3[1] = v32;
    a3[2] = v3;
    a3[3] = v14;
    return;
  }

  v7 = a2;
  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v8 = sub_18E2FCFC8(a2);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;

  v12 = v10 == 0x7561666544657375 && v11 == 0xEA0000000000746CLL;
  if (v12)
  {
  }

  else
  {
    v13 = sub_18E44F3CC();

    if ((v13 & 1) == 0)
    {
LABEL_9:
      v7 = sub_18E2FDF80(v7);
      goto LABEL_13;
    }
  }

LABEL_13:

  v16 = sub_18E2FD100(v15);

  v17 = *(v16 + 16);
  if (!v17)
  {

LABEL_24:
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1CDB50();
    v3 = sub_18E44EA0C();
    v14 = v31;

    goto LABEL_25;
  }

  v33 = v5;
  v34 = a3;
  v38 = MEMORY[0x1E69E7CC0];
  sub_18E26F1E0(0, v17, 0);
  v18 = 0;
  v19 = (v16 + 40);
  v35 = v16;
  while (v18 < *(v16 + 16))
  {
    v36 = *(v19 - 1);
    v37 = *v19;
    swift_bridgeObjectRetain_n();
    MEMORY[0x193ACC300](95, 0xE100000000000000);
    if (!*(v7 + 16))
    {
      goto LABEL_27;
    }

    v20 = sub_18E1CBD4C();
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v22 = v7;
    v23 = v17;
    v24 = v22;
    v25 = (*(v22 + 56) + 16 * v20);
    v26 = *v25;
    v27 = v25[1];

    MEMORY[0x193ACC300](v26, v27);

    v29 = *(v38 + 16);
    v28 = *(v38 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_18E26F1E0(v28 > 1, v29 + 1, 1);
    }

    ++v18;
    *(v38 + 16) = v29 + 1;
    v30 = v38 + 16 * v29;
    *(v30 + 32) = v36;
    *(v30 + 40) = v37;
    v19 += 2;
    v17 = v23;
    v12 = v23 == v18;
    v16 = v35;
    v7 = v24;
    if (v12)
    {

      a3 = v34;
      v5 = v33;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t AssetManagerShared.UsageAliasSubscription.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetManagerShared.UsageAliasSubscription.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AssetManagerShared.UsageAliasSubscription.psusName.getter()
{
  v2 = *v0;
  v3 = v0[1];

  MEMORY[0x193ACC300](0x6974617267696D2ELL, 0xEF342E38312E6E6FLL);
  return v2;
}

uint64_t AssetManagerShared.UsageAliasSubscription.arguments.getter()
{
  sub_18E1C6BC4();
  v3 = v0[1];
  v2 = v0[2];
  isUniquelyReferenced_nonNull_native = v0[3];
  v5 = sub_18E44E9AC();
  if (v2 == v1 && isUniquelyReferenced_nonNull_native == 0xE700000000000000)
  {
    return v5;
  }

  v7 = sub_18E44F3CC();
  if (v7)
  {
    return v5;
  }

  v52[0] = 95;
  v52[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v7);
  v47[2] = v52;

  v8 = sub_18E2FD1E4(0x7FFFFFFFFFFFFFFFLL, 1, sub_18E1CD848, v47, v2, isUniquelyReferenced_nonNull_native);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {

    if (qword_1EABE0CF0 != -1)
    {
LABEL_34:
      swift_once();
    }

    v41 = sub_18E44E83C();
    sub_18E1C95EC(v41, qword_1EAC7F548);

    v42 = sub_18E44E80C();
    v43 = sub_18E44EE0C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_18E1C9624(v2, isUniquelyReferenced_nonNull_native, v52);
      _os_log_impl(&dword_18E1C1000, v42, v43, "UsageAliasSubscription received a malformed value: %s", v44, 0xCu);
      sub_18E1C9934(v45);
      MEMORY[0x193ACD400](v45, -1, -1);
      MEMORY[0x193ACD400](v44, -1, -1);
    }

    return v5;
  }

  if (!v10)
  {
LABEL_23:

    return v5;
  }

  v11 = 0;
  v12 = v8 + 32;
  v49 = *(v8 + 16);
  v50 = v8;
  v48 = v8 + 32;
  while (1)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!__OFADD__(v11, 2))
    {
      v13 = v11 + 2;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v11 >= *(v9 + 16))
    {
      goto LABEL_30;
    }

    v51 = v13;
    v14 = (v12 + 32 * v11);
    v15 = *v14;
    v2 = v14[1];
    isUniquelyReferenced_nonNull_native = v14[2];
    v16 = v14[3];

    v17 = MEMORY[0x193ACC2B0](v15, v2, isUniquelyReferenced_nonNull_native, v16);
    v19 = v18;

    if (v11 + 1 >= *(v9 + 16))
    {
      goto LABEL_31;
    }

    v20 = (v12 + 32 * (v11 + 1));
    v21 = *v20;
    v2 = v20[1];
    v22 = v20[2];
    v23 = v20[3];

    v24 = MEMORY[0x193ACC2B0](v21, v2, v22, v23);
    v26 = v25;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v5;
    v27 = sub_18E1CBD4C();
    v29 = v5[2];
    v30 = (v28 & 1) == 0;
    v5 = (v29 + v30);
    if (__OFADD__(v29, v30))
    {
      goto LABEL_32;
    }

    v31 = v27;
    v2 = v28;
    sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
    if (sub_18E44F0EC())
    {
      break;
    }

LABEL_18:
    if (v2)
    {

      v5 = v52[0];
      v34 = (*(v52[0] + 56) + 16 * v31);
      v35 = v34[1];
      *v34 = v24;
      v34[1] = v26;
    }

    else
    {
      v5 = v52[0];
      *(v52[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v36 = (v5[6] + 16 * v31);
      *v36 = v17;
      v36[1] = v19;
      v37 = (v5[7] + 16 * v31);
      *v37 = v24;
      v37[1] = v26;
      v38 = v5[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_33;
      }

      v5[2] = v40;
    }

    v9 = v50;
    v11 = v51;
    v12 = v48;
    if (v51 >= v49)
    {
      goto LABEL_23;
    }
  }

  v32 = sub_18E1CBD4C();
  if ((v2 & 1) == (v33 & 1))
  {
    v31 = v32;
    goto LABEL_18;
  }

  result = sub_18E44F41C();
  __break(1u);
  return result;
}