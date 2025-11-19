uint64_t sub_232BCC118()
{
  sub_232B26C44();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_232CE9A30();
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v5 = *(v4 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v6 = type metadata accessor for FoundInEventModelOutput();
  v1[25] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = *(*(sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v9 = sub_232CE9700();
  v1[28] = v9;
  v10 = *(v9 - 8);
  v1[29] = v10;
  v11 = *(v10 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v12 = sub_232B5138C();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_232BCC2A8()
{
  v1 = 0xD000000000000015;
  sub_232CE9810();
  if (sub_232CE97B0())
  {
    if (sub_232CE9710())
    {
      if (*(v0[19] + 24))
      {
        type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
        v0[32] = sub_232BB18A8();
        sub_232BB1878(&dword_232CF8058);
        v11 = v2;
        v3 = swift_task_alloc();
        v0[33] = v3;
        *v3 = v0;
        v4 = sub_232BCE14C(v3);

        return v11(v4);
      }

      v6 = "ationRuleBasedImplementation";
    }

    else
    {
      v6 = "Backbone model is disabled";
      v1 = 0xD000000000000027;
    }
  }

  else
  {
    v6 = "ERToImplementation";
    v1 = 0xD00000000000001ALL;
  }

  v7 = v6 | 0x8000000000000000;
  sub_232B4A95C();
  v8 = sub_232B4EC24();
  *v9 = v1;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  sub_232BCE178();

  sub_232BB189C();

  return v10(v8, 1);
}

uint64_t sub_232BCC458()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v2 = v1;
  v4 = *(v3 + 264);
  v5 = *(v3 + 256);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;
  *(v9 + 272) = v8;

  v10 = sub_232B5138C();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232BCC55C()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = v0[19];
    v3 = *(v2 + 24);
    *(v2 + 24) = v1;
    v4 = v1;

    type metadata accessor for DUFoundInEventEncodingSmolBERToSpecification();
    v0[35] = sub_232BB18A8();
    sub_232BB1878(&unk_232CF8050);
    v12 = v5;
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v7 = sub_232BCE14C(v6);

    return v12(v7);
  }

  else
  {
    sub_232B4A95C();
    v9 = sub_232B4EC24();
    *v10 = 0xD000000000000020;
    *(v10 + 8) = 0x8000000232D06770;
    *(v10 + 16) = 0;
    sub_232BCE178();

    sub_232BB189C();

    return v11(v9, 1);
  }
}

uint64_t sub_232BCC6D8()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v2 = v1;
  v4 = *(v3 + 288);
  v5 = *(v3 + 280);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;
  *(v9 + 296) = v8;

  v10 = sub_232B5138C();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_232BCC7DC()
{
  v73 = v0;
  v1 = *(v0 + 296);
  if (!v1)
  {
    v14 = *(v0 + 272);
    sub_232B4A95C();
    v15 = sub_232B4EC24();
    *v16 = 0xD000000000000039;
    *(v16 + 8) = 0x8000000232D07410;
    *(v16 + 16) = 1;
LABEL_35:

    goto LABEL_36;
  }

  type metadata accessor for DUTrialAssetLoader();
  *(v0 + 304) = swift_initStackObject();
  *(v0 + 312) = sub_232C14534();
  v2 = sub_232C149A0();
  v3 = sub_232C15424(0xD00000000000001FLL, 0x8000000232D06190, 0xD000000000000028, 0x8000000232D07450, v2 & 1);
  *(v0 + 320) = v3;
  if (v3)
  {
    v4 = v3;
    LOBYTE(v71) = 1;
    v5 = sub_232C14684();
    *(v0 + 328) = v5;
    if (!v5)
    {
      v19 = *(v0 + 184);
      sub_232CE9A20();
      v20 = sub_232CE9A00();
      v21 = sub_232CEA1C0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_232B02000, v20, v21, "Unable to load assets from Trial", v22, 2u);
        MEMORY[0x238393870](v22, -1, -1);
      }

      v23 = *(v0 + 272);
      v25 = *(v0 + 176);
      v24 = *(v0 + 184);
      v26 = *(v0 + 168);

      (*(v25 + 8))(v24, v26);
      sub_232B4A95C();
      v15 = sub_232B4EC24();
      *v27 = 0xD000000000000047;
      *(v27 + 8) = 0x8000000232D07500;
      *(v27 + 16) = 0;

      goto LABEL_25;
    }

    v6 = v5;
    sub_232C3B410(v5);
    if (v7)
    {
      sub_232BA4DEC(0, &qword_2814DF8C8, 0x277CCA8D8);
      v8 = sub_232BCDD70();
      *(v0 + 336) = v8;
      if (v8)
      {
        v9 = v8;
        v68 = v4;
        v10 = sub_232CE9D20();
        v11 = sub_232CE9D20();
        v12 = [v9 pathForResource:v10 ofType:v11];

        if (v12)
        {
          sub_232CE9D50();

          sub_232BA4DEC(0, &qword_2814DF930, 0x277CBEAC0);
          v13 = sub_232BD748C();
        }

        else
        {
          v13 = 0;
        }

        *(v0 + 344) = v13;
        v40 = sub_232CE9D20();
        v41 = sub_232CE9D20();
        v14 = [v9 pathForResource:v40 ofType:v41];

        if (v14)
        {
          sub_232CE9D50();

          sub_232BA4DEC(0, &qword_2814DF930, 0x277CBEAC0);
          v14 = sub_232BD748C();
        }

        *(v0 + 352) = v14;
        if (v13)
        {
          *(v0 + 104) = 0x6E656B6F74;
          *(v0 + 112) = 0xE500000000000000;
          v42 = [v13 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v42)
          {
            sub_232CEA420();
            swift_unknownObjectRelease();
          }

          else
          {
            v71 = 0u;
            v72 = 0u;
          }

          v48 = v72;
          *(v0 + 16) = v71;
          *(v0 + 32) = v48;
          if (*(v0 + 40))
          {
            sub_232B124A8(&qword_27DDC7648, &unk_232CFA940);
            if (swift_dynamicCast())
            {
              *(v0 + 360) = *(v0 + 136);
              *(v0 + 120) = 0x65636E6575716573;
              *(v0 + 128) = 0xE800000000000000;
              v49 = [v13 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v49)
              {
                sub_232CEA420();
                swift_unknownObjectRelease();
              }

              else
              {
                v71 = 0u;
                v72 = 0u;
              }

              v61 = v72;
              *(v0 + 48) = v71;
              *(v0 + 64) = v61;
              if (*(v0 + 72))
              {
                if (swift_dynamicCast())
                {
                  *(v0 + 368) = *(v0 + 144);
                  type metadata accessor for DUFoundInEventDDSpecification();
                  *(v0 + 376) = sub_232BB18A8();
                  sub_232BB1878(&dword_232CF8040);
                  v70 = v62;
                  v63 = swift_task_alloc();
                  *(v0 + 384) = v63;
                  *v63 = v0;
                  v64 = sub_232BCE14C(v63);

                  v70(v64);
                  return;
                }
              }

              else
              {

                sub_232B267AC(v0 + 48, &qword_27DDC68C8, &qword_232CF6210);
              }

              v50 = *(v0 + 272);
              v51 = 0x8000000232D07600;
              sub_232B4A95C();
              v15 = sub_232B4EC24();
              v53 = 0xD00000000000005BLL;
              goto LABEL_34;
            }

LABEL_33:
            v50 = *(v0 + 272);
            v51 = 0x8000000232D075A0;
            sub_232B4A95C();
            v15 = sub_232B4EC24();
            v53 = 0xD000000000000058;
LABEL_34:
            *v52 = v53;
            *(v52 + 8) = v51;
            *(v52 + 16) = 0;

            goto LABEL_35;
          }
        }

        else
        {
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        sub_232B267AC(v0 + 16, &qword_27DDC68C8, &qword_232CF6210);
        goto LABEL_33;
      }

      v28 = *(v0 + 192);
      sub_232CE9A20();
      v29 = v6;
      v30 = sub_232CE9A00();
      v31 = sub_232CEA1C0();
      if (!os_log_type_enabled(v30, v31))
      {
        v43 = *(v0 + 192);
        v39 = v29;
        v45 = *(v0 + 168);
        v44 = *(v0 + 176);

        (*(v44 + 8))(v43, v45);
        goto LABEL_24;
      }

      v69 = v4;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v71 = v33;
      *v32 = 136315138;
      v34 = sub_232C3B410(v29);
      v36 = v35;
      v67 = v29;

      if (v36)
      {
        v37 = *(v0 + 176);
        v65 = *(v0 + 168);
        v66 = *(v0 + 192);
        v38 = sub_232BAD2D4(v34, v36, &v71);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_232B02000, v30, v31, "Unable to create bundle from %s", v32, 0xCu);
        sub_232B2040C(v33);
        MEMORY[0x238393870](v33, -1, -1);
        MEMORY[0x238393870](v32, -1, -1);

        (*(v37 + 8))(v66, v65);
        v39 = v67;
        v4 = v69;
LABEL_24:
        v46 = *(v0 + 272);
        sub_232B4A95C();
        v15 = sub_232B4EC24();
        *v47 = 0xD000000000000043;
        *(v47 + 8) = 0x8000000232D07550;
        *(v47 + 16) = 0;

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v17 = *(v0 + 272);
  sub_232B4A95C();
  v15 = sub_232B4EC24();
  *v18 = 0xD000000000000042;
  *(v18 + 8) = 0x8000000232D07480;
  *(v18 + 16) = 0;

LABEL_26:

LABEL_36:
  v55 = *(v0 + 240);
  v54 = *(v0 + 248);
  v57 = *(v0 + 208);
  v56 = *(v0 + 216);
  v59 = *(v0 + 184);
  v58 = *(v0 + 192);

  sub_232BB189C();

  v60(v15, 1);
}

uint64_t sub_232BCD128()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v2 = v1;
  v4 = *(v3 + 384);
  v5 = *(v3 + 376);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;
  *(v9 + 392) = v8;

  v10 = sub_232B5138C();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232BCD22C()
{
  if (v0[49])
  {
    v1 = v0[40];
    v2 = v0[37];
    v3 = objc_allocWithZone(MEMORY[0x277CBFF68]);
    v4 = v2;
    v5 = [v3 init];
    v0[50] = v5;
    v6 = *(MEMORY[0x277CBFDF0] + 4);
    v7 = swift_task_alloc();
    v0[51] = v7;
    *v7 = v0;
    v7[1] = sub_232BCD414;

    return MEMORY[0x282111978](v4, v5);
  }

  else
  {
    v8 = v0[45];
    v9 = v0[46];
    v11 = v0[43];
    v10 = v0[44];
    v12 = v0[41];
    v13 = v0[42];
    v14 = v0[39];
    v15 = v0[40];
    v16 = v0[37];
    v17 = v0[34];

    sub_232B4A95C();
    v21 = sub_232B4EC24();
    *v18 = 0xD00000000000001BLL;
    *(v18 + 8) = 0x8000000232D060C0;
    *(v18 + 16) = 0;

    sub_232BCE178();

    sub_232BB189C();

    return v19(v21, 1);
  }
}

uint64_t sub_232BCD414()
{
  v2 = *v1;
  v3 = *v1;
  sub_232B26B3C();
  *v4 = v3;
  v5 = v2[51];
  v6 = *v1;
  sub_232B482C0();
  *v7 = v6;
  v3[52] = v8;
  v3[53] = v0;

  v9 = v2[50];
  if (v0)
  {
    v10 = v3[49];
    v12 = v3[45];
    v11 = v3[46];
    v13 = v3[37];

    v14 = sub_232BCDC50;
  }

  else
  {
    v15 = v3[37];

    v14 = sub_232BCD578;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

void sub_232BCD578()
{
  v1 = sub_232BCA5C4(v0[52], v0[46]);
  v0[54] = v1;

  v2 = v0[52];
  if (v1)
  {
    v3 = sub_232BCACF0(v0[52], v0[45]);
    v0[55] = v3;

    if (v3)
    {
      type metadata accessor for DUWordPieceTokenizerSpecification();
      v0[56] = sub_232BB18A8();
      sub_232BB1878(&dword_232CF8038);
      v4 = swift_task_alloc();
      v0[57] = v4;
      *v4 = v0;
      v4[1] = sub_232BCD7E4;
      v5 = v0[27];
      v6 = v0[19];
      sub_232B26CB4();

      __asm { BR              X2 }
    }

    v17 = 0xD00000000000004CLL;
    v18 = v0[52];
    v19 = v0[49];
    v11 = v0[43];
    v12 = v0[41];
    v29 = v0[42];
    v13 = v0[40];
    v31 = v0[39];
    v32 = v0[44];
    v14 = v0[37];
    v15 = v0[34];

    v16 = "cationModel sequence prediction";
  }

  else
  {
    v9 = v0[49];
    v10 = v0[45];
    v11 = v0[43];
    v29 = v0[42];
    v13 = v0[40];
    v12 = v0[41];
    v30 = v0[39];
    v32 = v0[44];
    v14 = v0[37];
    v15 = v0[34];

    v16 = "lassificationModel";
    v17 = 0xD00000000000004FLL;
  }

  sub_232B4A95C();
  sub_232B4EC24();
  *v20 = v17;
  *(v20 + 8) = v16 | 0x8000000000000000;
  *(v20 + 16) = 0;

  swift_unknownObjectRelease();

  v22 = v0[30];
  v21 = v0[31];
  v24 = v0[26];
  v23 = v0[27];
  v26 = v0[23];
  v25 = v0[24];

  sub_232BB189C();
  sub_232B26CB4();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_232BCD7E4()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 456);
  v3 = *(v1 + 448);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232BCD8E4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = sub_232B12480(v1, 1, v2);
  v4 = v0[55];
  v49 = v0[54];
  v50 = v3;
  if (v3 == 1)
  {
    v5 = v0[49];
    v6 = v0[43];
    v45 = v0[52];
    v47 = v0[44];
    v8 = v0[41];
    v7 = v0[42];
    v9 = v0[40];
    v43 = v0[39];
    v10 = v0[37];
    v11 = v0[34];

    sub_232B267AC(v1, &qword_27DDC6F98, &unk_232CF7CA0);
    sub_232B4A95C();
    v12 = sub_232B4EC24();
    *v13 = 0xD00000000000001ALL;
    *(v13 + 8) = 0x8000000232D04380;
    *(v13 + 16) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    v33 = v0[49];
    v35 = v0[53];
    v36 = v0[44];
    v44 = v0[43];
    v37 = v0[42];
    v38 = v0[40];
    v40 = v0[39];
    v41 = v0[52];
    v42 = v0[37];
    v46 = v0[34];
    v48 = v0[41];
    v15 = v0[30];
    v14 = v0[31];
    v16 = v0[26];
    v32 = v0[25];
    v34 = v0[29];
    (*(v34 + 32))(v14, v1, v2);
    v39 = v14;
    v17 = sub_232CE96B0();
    v19 = v18;
    v20 = *(v34 + 16);
    v20(v15, v14, v2);
    *v16 = v17;
    v16[1] = v19;
    v16[2] = v33;
    v16[3] = v49;
    v16[4] = v4;
    v20(v16 + *(v32 + 32), v15, v2);
    v21 = swift_task_alloc();
    *(v21 + 16) = v15;

    v22 = sub_232BCDEA4(sub_232BC16B4, v21, v4);

    v23 = *(v34 + 8);
    v23(v15, v2);

    v16[4] = v22;
    v12 = sub_232BCB778(v16, v36);

    swift_unknownObjectRelease();

    v23(v39, v2);
    sub_232BCE06C(v16);
  }

  v25 = v0[30];
  v24 = v0[31];
  v27 = v0[26];
  v26 = v0[27];
  v29 = v0[23];
  v28 = v0[24];

  sub_232BB189C();

  return v30(v12, v50 == 1);
}

void sub_232BCDC50()
{
  v12 = v0[53];
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[34];
  sub_232B4A95C();
  sub_232B4EC24();
  *v9 = 0xD000000000000042;
  *(v9 + 8) = 0x8000000232D07660;
  *(v9 + 16) = 1;

  sub_232BCE178();

  sub_232BB189C();
  sub_232B26CB4();

  __asm { BRAA            X3, X16 }
}

id sub_232BCDD70()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_232CE9D20();

  v2 = [v0 initWithPath_];

  return v2;
}

uint64_t sub_232BCDE08(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232BB2AC0;

  return sub_232BCC118();
}

uint64_t sub_232BCDEA4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_232B124A8(&qword_27DDC7280, &unk_232CFAAD0);
  result = sub_232CEA630();
  v6 = result;
  v7 = 0;
  v29 = a3;
  v30 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v29 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v32 = *(*(v29 + 56) + 8 * v18);

      a1(&v31, &v32);

      if (v3)
      {
        break;
      }

      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v30;
      v22 = v31;
      v23 = (v30[6] + 16 * v18);
      *v23 = v20;
      v23[1] = v21;
      *(v30[7] + 8 * v18) = v22;
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v30[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v30;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_232BCE06C(uint64_t a1)
{
  v2 = type metadata accessor for FoundInEventModelOutput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232BCE0E8()
{
  result = qword_27DDC7300;
  if (!qword_27DDC7300)
  {
    sub_232B27EEC(&qword_27DDC72F8, &unk_232CFAAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7300);
  }

  return result;
}

void sub_232BCE160()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232BCE178()
{
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
}

void sub_232BCE1DC()
{

  sub_232BCE960();
}

uint64_t sub_232BCE1FC()
{
  v4 = v1[1];
  *v1 = v0;
  v1[1] = v2;
}

uint64_t sub_232BCE274(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_232CE9A30();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BCE338, 0, 0);
}

uint64_t sub_232BCE338()
{
  v15 = v0;
  v1 = v0[10];
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1B0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_232BAD2D4(0xD000000000000014, 0x8000000232D07790, &v14);
    _os_log_impl(&dword_232B02000, v2, v3, "FoundInEvent phase ID: %s", v8, 0xCu);
    sub_232B2040C(v9);
    MEMORY[0x238393870](v9, -1, -1);
    MEMORY[0x238393870](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_232BCE4F0;
  v11 = v0[6];
  v12 = v0[7];

  return sub_232B50048(v11);
}

uint64_t sub_232BCE4F0(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_232BCE5F0, 0, 0);
}

uint64_t sub_232BCE5F0()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
    swift_beginAccess();
    v4 = *(v2 + v3);
    *(v2 + v3) = v1;
  }

  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

id sub_232BCE690()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 2048;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BCE6EC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_232BB0620;

  return sub_232BCE274(a1, a2);
}

uint64_t sub_232BCE7AC(uint64_t a1)
{
  result = sub_232BD3E90(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_232BD3ED0(result, v3, 0, a1);
  }
}

uint64_t sub_232BCE814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_232CE8AE0();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_232B12504(a2, v7, 1, v6);
}

unint64_t sub_232BCE8C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!*(v1 + 16))
  {
    return 2;
  }

  result = sub_232B1F160(0x79746972616C6F70, 0xE800000000000000);
  if ((v3 & 1) == 0)
  {
    return 2;
  }

  v4 = *(*(v1 + 56) + 8 * result);
  if (v4[2])
  {
    if (v4[4] == 0x544E455645 && v4[5] == 0xE500000000000000)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_232CEA750();
    }

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_232BCE960()
{
  sub_232B35110();
  v4 = *(v0 + 16);
  if (!v4)
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v12 = sub_232CE9A30();
    sub_232BD4144(v12, qword_2814E3DA8);
    v4 = sub_232CE9A00();
    v13 = sub_232CEA1C0();
    if (sub_232BA6EB8(v13))
    {
      v14 = sub_232BA73DC();
      sub_232BD4280(v14);
      sub_232BA6138();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      sub_232BA66EC();
    }

    goto LABEL_30;
  }

  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = v2 == 0x7461767265736572 && v3 == 0xED000064496E6F69;
  if (v8 || (sub_232BD415C() & 1) != 0)
  {
    sub_232BD41E4();
    v9 = v4;
    v10 = 0;
    v11 = 0xD00000000000001ALL;
    goto LABEL_19;
  }

  v20 = v6 == 0x7461767265736572 && v5 == 0xEF656D614E6E6F69;
  if (v20 || (sub_232BD415C() & 1) != 0)
  {
    sub_232BD40F4();
    v21 = "TITLE__HOTEL_RESTAURANT_NAME";
LABEL_18:
    v5 = v21 | 0x8000000000000000;
    v22 = v4;
    v10 = 1;
    v11 = 0xD000000000000011;
    goto LABEL_19;
  }

  v61 = v6 == 0xD000000000000013 && 0x8000000232D06F20 == v5;
  if (v61 || (sub_232BD415C() & 1) != 0)
  {
    sub_232BD40F4();
    sub_232BD41E4();
    v62 = v4;
    v10 = 0;
    v11 = 0xD00000000000001CLL;
  }

  else
  {
    v73 = v6 == 0x6D614E7473657567 && v5 == 0xE900000000000065;
    if (v73 || (sub_232BD415C() & 1) != 0)
    {
      sub_232BD40F4();
      v21 = "EVENT_LOCATION__START_ADDRESS";
      goto LABEL_18;
    }

    v74 = v6 == 0x6369546569766F6DLL && v5 == 0xEF656D614E74656BLL;
    if (v74 || (sub_232BD415C() & 1) != 0)
    {
      sub_232BD40F4();
      sub_232BD41E4();
      v75 = v4;
      v10 = 0;
      v11 = 0xD000000000000018;
    }

    else
    {
      v77 = v6;
      v78 = v5;
      sub_232B48080();
      v76 = v4;
      if (sub_232CEA400())
      {
        sub_232BD42C4();
        v77 = v6;
        v78 = v5;
        v10 = 0;
        if (sub_232CEA400())
        {
          sub_232BD41E4();
          v11 = 0xD000000000000019;
        }

        else
        {
          sub_232BD41E4();
          v11 = 0xD00000000000001BLL;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v5 = 0xE000000000000000;
      }
    }
  }

LABEL_19:
  v23 = v7[4];
  v24 = sub_232BD4274();
  v27 = sub_232B20544(v24, v25, v26);
  if (!v27)
  {

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v37 = sub_232CE9A30();
    sub_232BD4144(v37, qword_2814E3DA8);

    v38 = sub_232CE9A00();
    v39 = sub_232CEA1C0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_232BC1F80();
      v41 = sub_232BD41CC();
      sub_232BD42AC(v41);
      *v40 = 136315138;
      v42 = sub_232BD4274();
      v45 = sub_232BAD2D4(v42, v43, v44);

      *(v40 + 4) = v45;
      sub_232BAE130();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      sub_232BD41F0();
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {
    }

LABEL_30:
    sub_232BD42A0();
    goto LABEL_53;
  }

  v28 = v27;

  v77 = v11;
  v78 = v5;
  MEMORY[0x28223BE20](v29);
  sub_232BD4088();
  if (!sub_232C0A5F8(sub_232B55340, v30, v28))
  {

    goto LABEL_53;
  }

  v31 = v7 + *(type metadata accessor for FoundInEventModelOutput() + 32);
  v32 = sub_232CE96C0();
  v33 = v4;
  v34 = sub_232BCFBF8(v28, v11, v5, v4);

  v35 = sub_232BD2458(v32, v34, *v7, v7[1]);

  sub_232BD2D9C(v35);
  if (!v36)
  {
    if (v5 == 0x8000000232D078B0)
    {
      v51 = v10;
    }

    else
    {
      v51 = 0;
    }

    if (v51 & 1) != 0 || (sub_232CEA750())
    {
      if (qword_2814DFA50 != -1)
      {
        sub_232BB2CAC();
      }

      v52 = sub_232CE9A30();
      sub_232BD4144(v52, qword_2814E3DA8);

      v53 = sub_232CE9A00();
      v54 = sub_232CEA1C0();

      if (!os_log_type_enabled(v53, v54))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_53;
      }

      v55 = swift_slowAlloc();
      v56 = sub_232BD41CC();
      v77 = v56;
      v57 = sub_232BD42F8(4.8151e-34);

      *(v55 + 4) = v57;
      *(v55 + 12) = 2048;
      v58 = v35[2];

      *(v55 + 14) = v58;

      sub_232BD42D8(&dword_232B02000, v59, v60, "DUFoundInEventsPostprocessing: Could not resolve a final candidate for %s in %ld candidates");
      sub_232B2040C(v56);
    }

    else
    {
      if (qword_2814DFA50 != -1)
      {
        sub_232BB2CAC();
      }

      v63 = sub_232CE9A30();
      sub_232BD4144(v63, qword_2814E3DA8);

      v53 = sub_232CE9A00();
      v64 = sub_232CEA1C0();

      if (!os_log_type_enabled(v53, v64))
      {

        goto LABEL_52;
      }

      v65 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v66 = sub_232BD42F8(4.8151e-34);

      *(v65 + 4) = v66;
      *(v65 + 12) = 2080;
      v67 = MEMORY[0x238391D80](v35, MEMORY[0x277D837D0]);
      v69 = v68;

      v70 = sub_232BAD2D4(v67, v69, &v77);

      *(v65 + 14) = v70;
      sub_232BD42D8(&dword_232B02000, v71, v72, "DUFoundInEventsPostprocessing: Could not resolve a final candidate for %s from %s");
      swift_arrayDestroy();
    }

    sub_232BA6A84();
    sub_232BA6A84();
LABEL_52:

    goto LABEL_53;
  }

  sub_232BD2F48();

LABEL_53:
  sub_232B20A00();
}

void sub_232BCF130()
{
  sub_232B35110();
  v3 = *(v0 + 16);
  if (!v3)
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v19 = sub_232CE9A30();
    sub_232BD4144(v19, qword_2814E3DA8);
    v11 = sub_232CE9A00();
    v20 = sub_232CEA1C0();
    if (sub_232BA6EB8(v20))
    {
      v21 = sub_232BA73DC();
      sub_232BD4280(v21);
      sub_232BA6138();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      sub_232BA66EC();
    }

    goto LABEL_20;
  }

  v4 = v2;
  sub_232BD42C4();
  if (v6)
  {
    v7 = 0xD00000000000001DLL;
  }

  else
  {
    v7 = 0xD00000000000001BLL;
  }

  if (v6)
  {
    v8 = "EVENT_LOCATION__END_ADDRESS";
  }

  else
  {
    v8 = "EVENT_TIME__START_DATETIME";
  }

  v9 = v8 | 0x8000000000000000;
  v10 = *(v5 + 32);
  v11 = v3;
  v12 = sub_232B20544(v1, 0xE800000000000000, v10);
  if (!v12)
  {

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v27 = sub_232CE9A30();
    sub_232BD4144(v27, qword_2814E3DA8);
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1C0();
    if (sub_232BD4258(v29))
    {
      v30 = sub_232BC1F80();
      v31 = sub_232BD41CC();
      sub_232BD42AC(v31);
      *v30 = 136315138;
      *(v30 + 4) = sub_232BAD2D4(v1, 0xE800000000000000, v37);
      sub_232BAE130();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      sub_232BD41F0();
      sub_232BA6A84();
      sub_232BA6A84();
    }

LABEL_20:
    sub_232BD42A0();
    goto LABEL_22;
  }

  v13 = v12;
  v37[0] = v7;
  v37[1] = v9;
  MEMORY[0x28223BE20](v12);
  sub_232BD4088();
  if (sub_232C0A5F8(sub_232B55340, v14, v13))
  {
    v15 = v4 + *(type metadata accessor for FoundInEventModelOutput() + 32);
    v16 = sub_232CE96C0();
    v17 = v11;
    v18 = sub_232BCFBF8(v13, v7, v9, v3);

    sub_232BD1DEC(v16, v18, *v4, v4[1], v4[2]);
  }

  else
  {

    sub_232BD42A0();
  }

LABEL_22:
  sub_232B20A00();
}

void sub_232BCF408()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v5 = sub_232CE8AE0();
  v6 = sub_232B48F0C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B3516C();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v105[-v15];
  v17 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v18 = sub_232B2D120(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_232B3516C();
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v105[-v25];
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v105[-v28];
  MEMORY[0x28223BE20](v27);
  v34 = *(v0 + 16);
  if (v34)
  {
    v107 = v16;
    v108 = v13;
    v109 = v8;
    v110 = v33;
    v113 = v5;
    v114 = v32;
    v111 = &v105[-v30];
    v112 = v31;
    if (v2)
    {
      v35 = 0xD00000000000001ALL;
    }

    else
    {
      v35 = 0xD000000000000018;
    }

    if (v2)
    {
      v36 = "EVENT_TIME__END_DATETIME";
    }

    else
    {
      v36 = "sectionLabelTokenMergeDistance";
    }

    v37 = v36 | 0x8000000000000000;
    v38 = *(v4 + 32);
    v39 = v34;
    v40 = sub_232B20544(1701669236, 0xE400000000000000, v38);
    if (v40)
    {
      v41 = v40;
      v106 = v2;
      v115[0] = v35;
      v115[1] = v37;
      MEMORY[0x28223BE20](v40);
      sub_232BD4088();
      if (!sub_232C0A5F8(sub_232B551FC, v42, v41))
      {

        sub_232BD42A0();
        goto LABEL_45;
      }

      v43 = v4 + *(type metadata accessor for FoundInEventModelOutput() + 32);
      v44 = sub_232CE96C0();
      v45 = v39;
      v46 = sub_232BCFBF8(v41, v35, v37, v34);
      v47 = v45;

      v48 = sub_232BD0D6C(v44, v46, *(v4 + 16), v106 & 1);

      v49 = v111;
      sub_232B55484();
      v50 = v113;
      sub_232B12504(v51, v52, v53, v113);
      v54 = *(v48 + 16);
      if (v54)
      {
        v55 = v114;
        if (v54 == 1)
        {
          sub_232BCE814(v48, v29);

          if (sub_232B12480(v29, 1, v50) == 1)
          {
            sub_232B267AC(v29, &qword_27DDC70B0, &unk_232CF81C0);
            goto LABEL_36;
          }

          v90 = v109[4];
          v91 = v107;
          v92 = sub_232BD4274();
          v90(v92);
          sub_232B267AC(v49, &qword_27DDC70B0, &unk_232CF81C0);
          (v90)(v49, v91, v50);
        }

        else
        {
          sub_232BD06E0();
          if (sub_232B12480(v26, 1, v50) == 1)
          {
            sub_232B267AC(v26, &qword_27DDC70B0, &unk_232CF81C0);
            if (qword_2814DFA50 != -1)
            {
              sub_232BB2CAC();
            }

            v76 = sub_232CE9A30();
            sub_232BD4144(v76, qword_2814E3DA8);

            v77 = sub_232CE9A00();
            v78 = sub_232CEA1C0();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = sub_232BC1F80();
              v80 = sub_232BD41CC();
              v109 = v46;
              sub_232BD42AC(v80);
              *v79 = 136315138;
              v81 = MEMORY[0x238391D80](v48, v50);
              v83 = v82;

              v84 = sub_232BAD2D4(v81, v83, v115);
              v55 = v114;

              *(v79 + 4) = v84;
              sub_232BA6138();
              _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
              sub_232BD41F0();
              v46 = v109;
              sub_232BA6A84();
              sub_232BA66EC();
            }

            else
            {
            }

            goto LABEL_36;
          }

          v93 = v108;
          v94 = v109[4];
          v94(v108, v26, v50);
          sub_232B267AC(v49, &qword_27DDC70B0, &unk_232CF81C0);
          v94(v49, v93, v50);
        }

        sub_232B12504(v49, 0, 1, v50);
      }

      else
      {

        v55 = v114;
      }

LABEL_36:
      v95 = v47;
      v96 = v110;
      sub_232BD3FB8(v49, v110);
      v97 = sub_232B12480(v96, 1, v50);
      sub_232B267AC(v96, &qword_27DDC70B0, &unk_232CF81C0);
      if (v97 == 1 || sub_232BD423C() || (sub_232CE8A30(), (v98 & 1) != 0) || sub_232BD423C() || (sub_232CE8A60(), (v99 & 1) != 0) || sub_232BD423C() || (sub_232CE8A50(), (v100 & 1) != 0))
      {
        sub_232B55484();
        sub_232B12504(v101, v102, v103, v50);
      }

      else
      {
        sub_232BD3FB8(v49, v55);
      }

      sub_232B55134(v55, v49);
      v104 = v112;
      sub_232BD3FB8(v49, v112);
      sub_232BCFE7C();

      sub_232B267AC(v104, &qword_27DDC70B0, &unk_232CF81C0);
      sub_232B267AC(v49, &qword_27DDC70B0, &unk_232CF81C0);
      goto LABEL_45;
    }

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v65 = sub_232CE9A30();
    sub_232BD4144(v65, qword_2814E3DA8);
    v66 = sub_232CE9A00();
    v67 = sub_232CEA1C0();
    if (sub_232BA6EB8(v67))
    {
      v68 = v39;
      v69 = sub_232BC1F80();
      v70 = sub_232BD41CC();
      v115[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_232BAD2D4(1701669236, 0xE400000000000000, v115);
      sub_232BA6138();
      _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
      sub_232B2040C(v70);
      sub_232BA6A84();
      sub_232BA66EC();
    }

    else
    {
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v56 = sub_232CE9A30();
    sub_232BD4144(v56, qword_2814E3DA8);
    v57 = sub_232CE9A00();
    v58 = sub_232CEA1C0();
    if (sub_232BA6EB8(v58))
    {
      v59 = sub_232BA73DC();
      sub_232BD4280(v59);
      sub_232BA6138();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      sub_232BA66EC();
    }
  }

LABEL_45:
  sub_232B20A00();
}

uint64_t sub_232BCFBF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCAB58]) init];
  if (!a4)
  {
    v26 = 0u;
    v27 = 0u;
LABEL_10:
    sub_232B267AC(&v26, &qword_27DDC68C8, &qword_232CF6210);
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  *&v24 = 0xD00000000000001ELL;
  *(&v24 + 1) = 0x8000000232D07810;
  v7 = [a4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_232CEA420();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    goto LABEL_10;
  }

  sub_232B124A8(&qword_27DDC7640, &qword_232CFA938);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = sub_232B1DFEC(a2, a3, v24);
  v10 = v9;

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_12:
  v11 = 0;
  v12 = *(a1 + 16);
  v20 = v8 + 1;
  v13 = __OFADD__(v8, 1);
  v21 = v13;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v12 == v11)
    {
      return v6;
    }

    v15 = *(i - 1);
    v16 = *i;

    v17 = [v6 lastIndex];
    *&v26 = v15;
    *(&v26 + 1) = v16;
    sub_232B48080();
    LOBYTE(v15) = sub_232CEA3F0();

    if (v15)
    {
      break;
    }

LABEL_26:
    ++v11;
  }

  if (v8 < 1 || (result = sub_232CE8910(), v17 == result))
  {
LABEL_25:
    [v6 addIndex_];
    goto LABEL_26;
  }

  v19 = v11 - v17;
  if (!__OFSUB__(v11, v17))
  {
    if (v19 >= 2)
    {
      if (v21)
      {
        goto LABEL_29;
      }

      if (v20 >= v19)
      {
        [v6 addIndexesInRange_];
      }
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_232BCFE7C()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v73 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  v11 = sub_232CE8E90();
  v12 = sub_232B48F0C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B20704();
  v19 = v18 - v17;
  v20 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v20);
  v22 = *(v21 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  v26 = sub_232CE8D10();
  v27 = sub_232B48F0C(v26);
  v74 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  v75 = v32 - v31;
  v33 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B2D120(v33);
  v35 = *(v34 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v36);
  v38 = &v72 - v37;
  v39 = sub_232CE8AE0();
  v40 = sub_232B48F0C(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_232B20704();
  v47 = v46 - v45;
  v48 = v1;
  v50 = v49;
  sub_232BD3FB8(v48, v38);
  if (sub_232B12480(v38, 1, v50) == 1)
  {
    v51 = &qword_27DDC70B0;
    v52 = &unk_232CF81C0;
    v53 = v38;
LABEL_5:
    sub_232B267AC(v53, v51, v52);
    goto LABEL_18;
  }

  (*(v42 + 32))(v47, v38, v50);
  sub_232CE8E50();
  sub_232CE8E30();
  (*(v14 + 8))(v19, v11);
  if (sub_232B12480(v25, 1, v26) == 1)
  {
    (*(v42 + 8))(v47, v50);
    v51 = &qword_27DDC6A80;
    v52 = &qword_232CF6D30;
    v53 = v25;
    goto LABEL_5;
  }

  v72 = v50;
  v54 = v74;
  (*(v74 + 32))(v75, v25, v26);
  sub_232CE8AC0();
  v55 = sub_232CE8F00();
  v56 = sub_232B12480(v10, 1, v55);
  sub_232B267AC(v10, &qword_27DDC70B8, &qword_232CF81D0);
  if (v56 == 1)
  {
    v57 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_232CE8A40();
    if (v58 & 1) != 0 && (sub_232CE8A80(), (v59) && (sub_232CE8A90(), (v60))
    {
      v61 = 0x2D4D4D2D79797979;
      v62 = 0xEA00000000006464;
    }

    else
    {
      v62 = 0x8000000232D016A0;
      v61 = 0xD000000000000015;
    }

    sub_232BD39AC(v61, v62, v57);
    v66 = v75;
    v67 = sub_232CE8CD0();
    v68 = [v57 stringFromDate_];

    sub_232CE9D50();
    (*(v54 + 8))(v66, v26);
  }

  else
  {
    v63 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v64 = v73;
    sub_232CE8AC0();
    if (sub_232B12480(v64, 1, v55) == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = sub_232CE8ED0();
      (*(*(v55 - 8) + 8))(v64, v55);
    }

    [v63 setTimeZone_];

    v69 = v75;
    v70 = sub_232CE8CD0();
    v71 = [v63 stringFromDate_];

    sub_232CE9D50();
    (*(v54 + 8))(v69, v26);
  }

  (*(v42 + 8))(v47, v72);
LABEL_18:
  sub_232B20A00();
}

uint64_t sub_232BD0424()
{
  v0 = sub_232CE8A70();
  v2 = v1;
  v3 = sub_232CE8A70();
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
LABEL_7:
      sub_232CE8A70();
      return v5 & 1;
    }
  }

  else if ((v4 & 1) != 0 || v0 != v3)
  {
    goto LABEL_7;
  }

  v5 = 1;
  return v5 & 1;
}

void sub_232BD04A8()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE8AE0();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v12 = v11 - v10;
  v13 = *(v7 + 16);
  v13(v11 - v10, v1, v4);
  sub_232CE8A70();
  if (v14)
  {
    goto LABEL_4;
  }

  if (sub_232BD0424())
  {
    sub_232CE8AB0();
LABEL_4:
    v13(v3, v12, v4);
    v15 = 0;
    goto LABEL_10;
  }

  if (qword_2814DFA50 != -1)
  {
    sub_232BB2CAC();
  }

  v16 = sub_232CE9A30();
  sub_232BD4144(v16, qword_2814E3DA8);
  v17 = sub_232CE9A00();
  v18 = sub_232CEA1C0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_232BC1F80();
    v20 = sub_232BD41CC();
    v25 = v20;
    *v19 = 136315138;
    v21 = swift_beginAccess();
    v22 = MEMORY[0x238390790](v21);
    v24 = sub_232BAD2D4(v22, v23, &v25);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_232B02000, v17, v18, "Conflict detected when merging component into %s", v19, 0xCu);
    sub_232B2040C(v20);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  v15 = 1;
LABEL_10:
  sub_232B12504(v3, v15, 1, v4);
  (*(v7 + 8))(v12, v4);
  sub_232B20A00();
}

void sub_232BD06E0()
{
  sub_232B35110();
  v79 = v0;
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - v7;
  v9 = sub_232CE8E80();
  v78 = *(v9 - 8);
  v10 = v78;
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v81 = v13 - v12;
  v14 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v14);
  v16 = *(v15 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v17);
  v18 = sub_232B124A8(&qword_27DDC7800, &unk_232CFAB88);
  sub_232B2D120(v18);
  v20 = *(v19 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v21);
  v84 = sub_232CE8AE0();
  v22 = sub_232B48F0C(v84);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_232B3516C();
  v85 = (v27 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v68 - v30;
  sub_232CE8E90();
  sub_232B55484();
  sub_232B12504(v32, v33, v34, v35);
  sub_232CE8F00();
  sub_232B55484();
  sub_232B12504(v36, v37, v38, v39);
  v83 = v31;
  sub_232CE8AA0();
  sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
  v40 = *(v10 + 72);
  v41 = v78;
  v42 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_232CF74B0;
  v44 = *(v41 + 104);
  v44(v43 + v42, *MEMORY[0x277CC9998], v9);
  v44(v43 + v42 + v40, *MEMORY[0x277CC9988], v9);
  v44(v43 + v42 + 2 * v40, *MEMORY[0x277CC9968], v9);
  v44(v43 + v42 + 3 * v40, *MEMORY[0x277CC9980], v9);
  v44(v43 + v42 + 4 * v40, *MEMORY[0x277CC99A0], v9);
  v80 = v40;
  v45 = *MEMORY[0x277CC99C8];
  v82 = v9;
  v44(v43 + v42 + 5 * v40, v45, v9);
  v46 = sub_232C0D110(v43);
  v47 = v46;
  v71 = *(v79 + 16);
  if (v71)
  {
    v69 = v24;
    v70 = v2;
    v48 = 0;
    v74 = *(v24 + 16);
    v75 = v24 + 16;
    v49 = v46 + 56;
    v73 = v79 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v78 = v41 + 8;
    v79 = v41 + 16;
    v50 = (v24 + 8);
    v77 = (v24 + 32);
    v72 = *(v24 + 72);
    v52 = v84;
    v51 = v85;
    while (2)
    {
      v76 = v48 + 1;
      v74(v51, v73 + v72 * v48, v52);
      v53 = 1 << *(v47 + 32);
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      else
      {
        v54 = -1;
      }

      v55 = v54 & *(v47 + 56);
      v56 = (v53 + 63) >> 6;

      v57 = 0;
      if (v55)
      {
        while (1)
        {
          v58 = v57;
LABEL_11:
          v59 = v47;
          v60 = v81;
          v61 = v82;
          (*v79)(v81, *(v47 + 48) + (__clz(__rbit64(v55)) | (v58 << 6)) * v80, v82);
          v62 = v83;
          sub_232BD04A8();
          (*v78)(v60, v61);
          v63 = *v50;
          v52 = v84;
          (*v50)(v62, v84);
          if (sub_232B12480(v8, 1, v52) == 1)
          {
            break;
          }

          v55 &= v55 - 1;
          v64 = *v77;
          v65 = sub_232BD4274();
          v66(v65);
          v57 = v58;
          v47 = v59;
          if (!v55)
          {
            goto LABEL_8;
          }
        }

        v63(v85, v52);
        sub_232B267AC(v8, &qword_27DDC70B0, &unk_232CF81C0);
        v67 = 1;
        v2 = v70;
        goto LABEL_19;
      }

      while (1)
      {
LABEL_8:
        v58 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          __break(1u);
          return;
        }

        if (v58 >= v56)
        {
          break;
        }

        v55 = *(v49 + 8 * v58);
        ++v57;
        if (v55)
        {
          goto LABEL_11;
        }
      }

      v51 = v85;
      (*v50)(v85, v52);
      v48 = v76;
      if (v76 != v71)
      {
        continue;
      }

      break;
    }

    v24 = v69;
    v2 = v70;
  }

  else
  {

    v52 = v84;
  }

  (*(v24 + 32))(v2, v83, v52);
  v67 = 0;
LABEL_19:
  sub_232B12504(v2, v67, 1, v52);
  sub_232B20A00();
}

uint64_t sub_232BD0D6C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v20 = MEMORY[0x277D84F90];
  sub_232BD42B8();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = &v20;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_232BD3FA8;
  *(v9 + 24) = v8;
  v18 = sub_232BD4038;
  v19 = v9;
  sub_232BD40A0();
  v15 = 1107296256;
  sub_232BD403C();
  v16 = v10;
  v17 = &unk_284812168;
  v11 = _Block_copy(aBlock);

  [a2 enumerateRangesUsingBlock_];
  _Block_release(v11);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v13 = v20;

    return v13;
  }

  return result;
}

uint64_t sub_232BD0ED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v65 = a7;
  LODWORD(v7) = a6;
  v12 = sub_232CE8AE0();
  v60 = *(v12 - 8);
  v13 = *(v60 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v56 - v16;
  v17 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v62 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - v21;
  v23 = type metadata accessor for FoundInEventDataDetectorsOutput();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  result = MEMORY[0x28223BE20](v23);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v29 = *(a4 + 16);
  if (v29 <= a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v32 >= v29)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v33 = NSUnionRange(*(a4 + 32 + 16 * a1), *(a4 + 32 + 16 * v32));
  result = v33.location;
  length = v33.length;
  location = v33.location;
  v34 = *(a5 + 16);
  if (v34)
  {
    v35 = a5 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v36 = *(v24 + 72);
    v61 = (v60 + 32);
    v56 = v60 + 8;
    v57 = (v60 + 16);
    v58 = v7;
    do
    {
      sub_232BC1980(v35, v28);
      if (v28[v23[8]] == 5)
      {
        v37 = v23[20];
        v38 = &v28[v23[19]];
        if (v38[8])
        {
          v39 = 0;
        }

        else
        {
          v39 = *v38;
        }

        v40 = &v28[v37];
        v41 = *&v28[v37];
        if (v40[8])
        {
          v42 = 0;
        }

        else
        {
          v42 = v41;
        }

        v43 = v28;
        if ((v7 & 1) == 0)
        {
          v43 = &v28[v23[6]];
        }

        sub_232BD3FB8(v43, v22);
        if (sub_232B12480(v22, 1, v12) == 1 || (v68.length = length, v68.location = location, v69.location = v39, v69.length = v42, NSIntersectionRange(v68, v69).length < 1))
        {
          sub_232BD3F4C(v28);
          v45 = v22;
        }

        else
        {
          v44 = v62;
          sub_232BD3FB8(v22, v62);
          if (sub_232B12480(v44, 1, v12) != 1)
          {
            v46 = v63;
            v59 = *v61;
            v59(v63, v44, v12);
            (*v57)(v64, v46, v12);
            v47 = v65;
            v48 = *v65;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v47 = v48;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v53 = *(v48 + 16);
              sub_232B36AB4();
              v48 = v54;
              *v65 = v54;
            }

            v7 = *(v48 + 16);
            if (v7 >= *(v48 + 24) >> 1)
            {
              sub_232B36AB4();
              *v65 = v55;
            }

            v50 = v60;
            (*(v60 + 8))(v63, v12);
            sub_232BD3F4C(v28);
            v51 = v64;
            v52 = *v65;
            *(v52 + 16) = v7 + 1;
            v59((v52 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v7), v51, v12);
            result = sub_232B267AC(v22, &qword_27DDC70B0, &unk_232CF81C0);
            LOBYTE(v7) = v58;
            goto LABEL_24;
          }

          sub_232BD3F4C(v28);
          sub_232B267AC(v22, &qword_27DDC70B0, &unk_232CF81C0);
          v45 = v44;
        }

        result = sub_232B267AC(v45, &qword_27DDC70B0, &unk_232CF81C0);
      }

      else
      {
        result = sub_232BD3F4C(v28);
      }

LABEL_24:
      v35 += v36;
      --v34;
    }

    while (v34);
  }

  return result;
}

BOOL sub_232BD1400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 1;
  }

  sub_232B1F160(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  if (!*(a5 + 16))
  {
    return 0;
  }

  v7 = sub_232BD4330();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = (*(a5 + 56) + 16 * v7);
  v11 = *v9;
  v12 = v9[1];
  sub_232B48080();
  return sub_232CEA3C0() == 0;
}

uint64_t sub_232BD14C4(uint64_t a1)
{
  v43 = *(a1 + 16);
  if (!v43)
  {
    return MEMORY[0x277D84F98];
  }

  v1 = 0;
  v44 = a1 + 32;
  v2 = MEMORY[0x277D84F98];
  while (2)
  {
    v3 = *(v44 + 8 * v1);
    v45 = v1 + 1;
    v5 = v3 + 64;
    v4 = *(v3 + 64);
    v6 = *(v3 + 32);
    sub_232BD4178();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    v48 = v12;

    v13 = 0;
    v46 = v11;
    v47 = v5;
    if (!v9)
    {
      goto LABEL_5;
    }

    do
    {
      v14 = v13;
LABEL_8:
      v15 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
      v16 = (*(v48 + 48) + v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = (*(v48 + 56) + v15);
      v21 = *v19;
      v20 = v19[1];

      v22 = sub_232BA62A4();
      if (!sub_232BD1400(v22, v23, v21, v20, v2))
      {

        return 0;
      }

      v49 = v21;
      swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_232BA62A4();
      sub_232B1F160(v24, v25);
      sub_232B66BA0();
      if (__OFADD__(v28, v29))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        result = sub_232CEA7A0();
        __break(1u);
        return result;
      }

      v30 = v26;
      v31 = v27;
      sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
      if (sub_232CEA5C0())
      {
        v32 = sub_232BA62A4();
        v34 = sub_232B1F160(v32, v33);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_27;
        }

        v30 = v34;
      }

      v9 &= v9 - 1;
      if (v31)
      {

        v36 = (*(v2 + 56) + 16 * v30);
        v37 = v36[1];
        *v36 = v49;
        v36[1] = v20;
      }

      else
      {
        sub_232BD40C0();
        *v38 = v49;
        v38[1] = v20;
        v39 = *(v2 + 16);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_26;
        }

        *(v2 + 16) = v41;
      }

      v13 = v14;
      v11 = v46;
      v5 = v47;
    }

    while (v9);
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v14 >= v11)
      {
        break;
      }

      v9 = *(v5 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v1 = v45;
    if (v45 != v43)
    {
      continue;
    }

    return v2;
  }
}

void sub_232BD1728()
{
  sub_232B35110();
  v87.location = v0;
  v87.length = v1;
  v3 = v2;
  v93 = sub_232CE9A30();
  v4 = sub_232B48F0C(v93);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = type metadata accessor for FoundInEventDataDetectorsOutput();
  v13 = sub_232B48F0C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v20 = v19 - v18;
  v91 = sub_232CE9C60();
  v21 = *(v3 + 16);
  if (!v21)
  {
LABEL_72:
    sub_232B20A00();
    return;
  }

  v22 = 0;
  v23 = (v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
  v99 = *MEMORY[0x277CCA6F0];
  v98 = *MEMORY[0x277CCA6E8];
  v97 = *MEMORY[0x277CCA6B0];
  v95 = *MEMORY[0x277CCA6E0];
  v94 = *MEMORY[0x277CCA6B8];
  v92 = (v6 + 8);
  v24 = *(v15 + 72);
  v100 = v11;
  v86 = v12;
  v85 = v20;
  v84 = v21;
  v83 = v23;
  v82 = v24;
  while (1)
  {
    sub_232BC1980(v23 + v24 * v22, v20);
    if (*(v20 + v12[8]) == 4)
    {
      v25 = *(v20 + v12[17]);
      if (v25)
      {
        v26 = v12[19];
        v27 = v20 + v12[20];
        v28 = *(v27 + 8);
        v29 = *v27;
        v30.length = v28 ? 0 : v29;
        v30.location = *(v20 + v26 + 8) ? 0 : *(v20 + v26);
        if (NSIntersectionRange(v87, v30).length >= 1)
        {
          break;
        }
      }
    }

LABEL_71:
    ++v22;
    sub_232BD3F4C(v20);
    if (v22 == v21)
    {
      goto LABEL_72;
    }
  }

  v88 = v22;
  v32 = v25 + 64;
  v31 = *(v25 + 64);
  v33 = *(v25 + 32);
  sub_232BD4178();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;

  v39 = 0;
  v96 = v38;
  v89 = v25 + 64;
  v101 = v25;
LABEL_13:
  v40 = v39;
  if (!v36)
  {
    goto LABEL_15;
  }

  do
  {
    v39 = v40;
LABEL_18:
    v41 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v42 = v41 | (v39 << 6);
    v43 = *(*(v25 + 48) + 8 * v42);
    v44 = (*(v25 + 56) + 16 * v42);
    v45 = v44[1];
    v102 = *v44;
    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    v47 = v47 && v23 == v46;
    if (v47)
    {
      v65 = v43;
      v90 = v45;

      sub_232BD4194();
      goto LABEL_59;
    }

    v48 = sub_232BD4050();
    v49 = v43;

    if (v48)
    {
      v90 = v45;
      sub_232BD4194();
      goto LABEL_60;
    }

    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    if (v47 && v23 == v50)
    {
      sub_232BD4104();
      goto LABEL_55;
    }

    sub_232BD4050();
    sub_232BD4318();

    if (v48)
    {
      sub_232BD4104();
      goto LABEL_57;
    }

    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    if (v47 && v23 == v52)
    {
      sub_232BD4074();
      sub_232BD420C();
      goto LABEL_59;
    }

    sub_232BD4050();
    sub_232BD4318();

    if (v48)
    {
      sub_232BD4074();
      sub_232BD420C();
      goto LABEL_60;
    }

    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    if (v47 && v23 == v54)
    {
      sub_232BD4074();
      sub_232BD428C();
LABEL_55:
      v38 = v38 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
LABEL_59:

LABEL_60:
      swift_isUniquelyReferenced_nonNull_native();
      v103 = v91;
      sub_232B1F160(v45, v38);
      sub_232B66BA0();
      if (__OFADD__(v68, v69))
      {
        goto LABEL_74;
      }

      v70 = v66;
      v71 = v67;
      sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
      if (sub_232CEA5C0())
      {
        v72 = sub_232BA62A4();
        v74 = sub_232B1F160(v72, v73);
        v76 = v90;
        if ((v71 & 1) != (v75 & 1))
        {
          goto LABEL_76;
        }

        v70 = v74;
        if ((v71 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v76 = v90;
        if ((v71 & 1) == 0)
        {
LABEL_64:
          v23 = v103;
          sub_232BD40C0();
          *v77 = v102;
          v77[1] = v76;

          isa = v23[2].isa;
          v79 = __OFADD__(isa, 1);
          v80 = (isa + 1);
          if (v79)
          {
            goto LABEL_75;
          }

          v91 = v23;
          v23[2].isa = v80;
          goto LABEL_68;
        }
      }

      v91 = v103;
      v81 = (v103[7].isa + 16 * v70);
      v23 = v81[1];
      *v81 = v102;
      v81[1] = v76;

LABEL_68:
      v25 = v101;
      v38 = v96;
      v32 = v89;
      goto LABEL_13;
    }

    sub_232BD4050();
    sub_232BD4318();

    if (v48)
    {
      sub_232BD4074();
      sub_232BD428C();
LABEL_57:
      v38 = v38 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      goto LABEL_60;
    }

    sub_232CE9D50();
    sub_232BD4128();
    sub_232B5557C();
    if (v47 && v23 == v56)
    {
      sub_232BD41B0();
      goto LABEL_59;
    }

    sub_232BD4050();
    sub_232BD4318();

    if (v48)
    {
      sub_232BD41B0();
      goto LABEL_60;
    }

    sub_232CE9A20();
    v58 = v49;
    v23 = sub_232CE9A00();
    v59 = sub_232CEA1E0();

    if (os_log_type_enabled(v23, v59))
    {
      v60 = sub_232BC1F80();
      v61 = sub_232BD41CC();
      sub_232BD42AC(v61);
      *v60 = 136315138;
      v62 = sub_232CE9D50();
      v64 = sub_232BAD2D4(v62, v63, &v103);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_232B02000, v23, v59, "DUFoundInEventPostprocessing: unknown address component key: %s", v60, 0xCu);
      sub_232BD41F0();
      v38 = v96;
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {
    }

    (*v92)(v100, v93);
    v40 = v39;
    v25 = v101;
  }

  while (v36);
LABEL_15:
  while (1)
  {
    v39 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v39 >= v38)
    {

      v12 = v86;
      v20 = v85;
      v21 = v84;
      v22 = v88;
      v23 = v83;
      v24 = v82;
      goto LABEL_71;
    }

    v36 = *(v32 + 8 * v39);
    ++v40;
    if (v36)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  sub_232CEA7A0();
  __break(1u);
}

uint64_t sub_232BD1DEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = MEMORY[0x277D84F90];
  v13 = sub_232CE9C60();
  v54 = v12;
  v55 = MEMORY[0x277D84FA0];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v6;
  v14[4] = a5;
  v14[5] = &v54;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = &v55;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_232BD3E5C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_232BD4038;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  sub_232BD403C();
  aBlock[2] = v16;
  aBlock[3] = &unk_2848120F0;
  v17 = _Block_copy(aBlock);

  [a2 enumerateRangesUsingBlock_];
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_232BB2CAC();
    goto LABEL_9;
  }

  v18 = v54;
  v19 = *(v54 + 16);
  v6 = &unk_2814DF000;
  if (!v19)
  {
    goto LABEL_12;
  }

  if (v19 == 1)
  {

    if (*(v18 + 16))
    {
      v13 = *(v18 + 32);

      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v21 = sub_232BD14C4(v20);

  if (v21)
  {

    v13 = v21;
    goto LABEL_12;
  }

  if (qword_2814DFA50 != -1)
  {
    goto LABEL_30;
  }

LABEL_9:
  v22 = sub_232CE9A30();
  sub_232BD4144(v22, qword_2814E3DA8);
  v23 = sub_232CE9A00();
  v24 = sub_232CEA1C0();
  if (sub_232BD4258(v24))
  {
    *sub_232BA73DC() = 0;
    sub_232BAE130();
    _os_log_impl(v25, v26, v27, v28, v29, 2u);
    sub_232BA6A84();
  }

LABEL_12:
  if (!*(v13 + 16))
  {
    v30 = *(v55 + 16);
    if (v30)
    {
      if (v30 == 1)
      {

        sub_232BCE7AC(v31);

        goto LABEL_27;
      }

      v41 = sub_232BD3064(v40);

      sub_232BD2D0C(v41);
      v43 = v42;

      if (v43)
      {
        goto LABEL_27;
      }

      if (v6[330] != -1)
      {
        sub_232BB2CAC();
      }

      v44 = sub_232CE9A30();
      sub_232BD4144(v44, qword_2814E3DA8);
      v33 = sub_232CE9A00();
      v45 = sub_232CEA1C0();
      if (!os_log_type_enabled(v33, v45))
      {
LABEL_26:

        goto LABEL_27;
      }

      v46 = sub_232BC1F80();
      v52 = sub_232BD41CC();
      *v46 = 136315138;
      swift_beginAccess();

      v47 = sub_232CEA0E0();
      v49 = v48;

      v50 = sub_232BAD2D4(v47, v49, &v52);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_232B02000, v33, v45, "Unable to obtain final candidate in group of %s", v46, 0xCu);
      sub_232BD41F0();
      sub_232BA6A84();
    }

    else
    {
      if (v6[330] != -1)
      {
        sub_232BB2CAC();
      }

      v32 = sub_232CE9A30();
      sub_232BD4144(v32, qword_2814E3DA8);
      v33 = sub_232CE9A00();
      v34 = sub_232CEA1C0();
      if (!sub_232BD4258(v34))
      {
        goto LABEL_26;
      }

      *sub_232BA73DC() = 0;
      sub_232BAE130();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
    }

    sub_232BA6A84();
    goto LABEL_26;
  }

LABEL_27:

  return v13;
}

unint64_t sub_232BD22C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(a4 + 16);
  if (v9 <= result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 >= v9)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v25[10] = v7;
  v25[11] = v8;
  NSUnionRange(*(a4 + 32 + 16 * result), *(a4 + 32 + 16 * v12));
  sub_232BD1728();
  v15 = v14;
  if (*(v14 + 16))
  {
    sub_232BAD0B4();
    v16 = *(*a7 + 16);
    sub_232BAD200(v16);
    v17 = *a7;
    *(v17 + 16) = v16 + 1;
    *(v17 + 8 * v16 + 32) = v15;
  }

  else
  {
  }

  result = sub_232CEA110();
  if ((v18 & 1) == 0)
  {
    v19 = sub_232CE9FB0();
    MEMORY[0x238391B80](v19);

    v20 = sub_232CE9D20();

    v21 = _PASCollapseWhitespaceAndStrip();

    v22 = sub_232CE9D50();
    v24 = v23;

    sub_232C48B20(v25, v22, v24);
  }

  return result;
}

uint64_t sub_232BD2458(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = MEMORY[0x277D84F90];
  sub_232BD42B8();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = &v20;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_232BD3E10;
  *(v9 + 24) = v8;
  v18 = sub_232BD3E1C;
  v19 = v9;
  sub_232BD40A0();
  v15 = 1107296256;
  sub_232BD403C();
  v16 = v10;
  v17 = &unk_284812078;
  v11 = _Block_copy(aBlock);

  [a2 enumerateRangesUsingBlock_];
  _Block_release(v11);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v13 = v20;

    return v13;
  }

  return result;
}

unint64_t sub_232BD25C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t *a7)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(a4 + 16);
  if (v7 <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 >= v7)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  NSUnionRange(*(a4 + 32 + 16 * result), *(a4 + 32 + 16 * v10));
  result = sub_232CEA110();
  if ((v15 & 1) == 0)
  {
    v16 = sub_232BD33C8(result, v14, a5, a6);
    v18 = v17;

    v19 = MEMORY[0x238391D20](v16, v18, a5, a6);
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      sub_232CE9FA0();
      v24 = sub_232CE9D20();

      v25 = _PASCollapseWhitespaceAndStrip();

      v26 = sub_232CE9D50();
      v28 = v27;

      sub_232BAD03C();
      v29 = *(*a7 + 16);
      result = sub_232BAD188(v29);
      v30 = *a7;
      *(v30 + 16) = v29 + 1;
      v31 = v30 + 16 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_232BD276C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F98];
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v4 = *i;
      v6 = v2[2];

      if (v6 && (v7 = sub_232BD4330(), (v8 & 1) != 0))
      {
        v9 = *(v2[7] + 8 * v7);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_232BD4330();
      sub_232B66BA0();
      if (__OFADD__(v13, v14))
      {
        goto LABEL_21;
      }

      v15 = v11;
      v16 = v12;
      sub_232B124A8(&qword_27DDC77F8, &unk_232CFE4F0);
      if (sub_232CEA5C0())
      {
        v17 = sub_232BD4330();
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_23;
        }

        v15 = v17;
      }

      if (v16)
      {

        *(v2[7] + 8 * v15) = v10;
      }

      else
      {
        v2[(v15 >> 6) + 8] |= 1 << v15;
        v19 = (v2[6] + 16 * v15);
        *v19 = v5;
        v19[1] = v4;
        *(v2[7] + 8 * v15) = v10;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_22;
        }

        v2[2] = v22;
      }

      if (!--v1)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_232CEA7A0();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_232BD2900(uint64_t a1)
{
  v2 = sub_232B61CC8(a1);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = sub_232BD3490(a1, v4);
  v6 = v5[2];
  if (v6)
  {
    v32 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v6, 0);
    v9 = sub_232B66AD8(v5);
    v10 = 0;
    v11 = v5 + 8;
    v28 = v6;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v5 + 32))
      {
        v12 = v9 >> 6;
        if ((v11[v9 >> 6] & (1 << v9)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 9) != v7)
        {
          goto LABEL_27;
        }

        v29 = v8;
        v30 = v10;
        v31 = v7;
        v13 = (v5[6] + 16 * v9);
        v15 = *v13;
        v14 = v13[1];
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_232B649F4(v16 > 1, v17 + 1, 1);
        }

        *(v32 + 16) = v17 + 1;
        v18 = v32 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v14;
        v19 = 1 << *(v5 + 32);
        if (v9 >= v19)
        {
          goto LABEL_28;
        }

        v11 = v5 + 8;
        v20 = v5[v12 + 8];
        if ((v20 & (1 << v9)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v5 + 9) != v31)
        {
          goto LABEL_30;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v22 = v28;
        }

        else
        {
          v23 = v12 << 6;
          v24 = v12 + 1;
          v22 = v28;
          v25 = &v5[v12 + 9];
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_232B48E94(v9, v31, v29 & 1);
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_21;
            }
          }

          sub_232B48E94(v9, v31, v29 & 1);
        }

LABEL_21:
        v10 = v30 + 1;
        if (v30 + 1 == v22)
        {
          goto LABEL_24;
        }

        v8 = 0;
        v7 = *(v5 + 9);
        v9 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
  }
}

void sub_232BD2B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = (a1 + 40);
    v4 = 0x8000000000000000;
    v5 = *(a1 + 16);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;

      v8 = sub_232CE9E60();

      if (v8 > v4)
      {
        v4 = v8;
      }

      v3 += 2;
      --v5;
    }

    while (v5);
    v9 = 0;
    v10 = a1 + 40;
    v11 = MEMORY[0x277D84F90];
LABEL_7:
    v12 = (v10 + 16 * v9);
    while (v1 != v9)
    {
      if (v9 >= v1)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }

      v14 = *(v12 - 1);
      v13 = *v12;

      if (sub_232CE9E60() == v4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232B649F4(0, v11[2] + 1, 1);
        }

        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          sub_232B649F4(v15 > 1, v16 + 1, 1);
        }

        v11[2] = v16 + 1;
        v17 = &v11[2 * v16];
        v17[4] = v14;
        v17[5] = v13;
        ++v9;
        goto LABEL_7;
      }

      ++v9;
      v12 += 2;
    }

    if (v11[2] == 1)
    {
      v18 = v11[4];
      v19 = v11[5];
    }

    else
    {
    }
  }
}

uint64_t sub_232BD2D0C(uint64_t a1)
{
  v1 = sub_232BD276C(a1);
  sub_232BD2900(v1);
  v3 = v2;

  v4 = v3[2];
  if (v4 < 2)
  {
    if (!v4)
    {

      return 0;
    }

    v6 = v3[4];
    v7 = v3[5];
  }

  else
  {
    sub_232BD2B60(v3);
    v6 = v5;
  }

  return v6;
}

uint64_t sub_232BD2D9C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v4 = sub_232CE9A30();
    sub_232BD4144(v4, qword_2814E3DA8);
    v5 = sub_232CE9A00();
    v6 = sub_232CEA1C0();
    if (sub_232BA6EB8(v6))
    {
      v7 = sub_232BA73DC();
      sub_232BD4280(v7);
      sub_232BA6138();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_232BA66EC();
    }

    return 0;
  }

  if (v1 != 1)
  {
    v13 = sub_232BD2D0C(a1);
    if (v14)
    {
      return v13;
    }

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v16 = sub_232CE9A30();
    sub_232BD4144(v16, qword_2814E3DA8);

    v17 = sub_232CE9A00();
    v18 = sub_232CEA1C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_232BC1F80();
      *v19 = 134217984;
      *(v19 + 4) = v1;

      _os_log_impl(&dword_232B02000, v17, v18, "DUFoundInEventsPostprocessing: Unable to find most frequent longest candidate from %ld candidates", v19, 0xCu);
      sub_232BA6A84();
    }

    else
    {
    }

    return 0;
  }

  v2 = a1[4];
  v3 = a1[5];

  return v2;
}

uint64_t sub_232BD2F48()
{
  v0 = sub_232CE89D0();
  v1 = sub_232B48F0C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232CE8980();
  sub_232B48080();
  v9 = sub_232CEA3A0();
  (*(v3 + 8))(v8, v0);
  return v9;
}

void *sub_232BD3064(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_232B374D0(*(a1 + 16), 0);
  v4 = sub_232BD3A10(&v6, v3 + 4, v1, a1);

  sub_232B08AC8();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_232BD3120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_232B374D0(*(a1 + 16), 0);
  v4 = sub_232BD3B6C(&v6, v3 + 4, v1, a1);

  sub_232B08AC8();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_232BD31DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_232B124A8(&qword_27DDC6B78, &unk_232CF6F00);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 4);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
      return;
    }

    goto LABEL_10;
  }
}

void sub_232BD32A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_232B124A8(&qword_27DDC6B00, &unk_232CF6E80);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 8);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_232BD336C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_232CE9F40();
    sub_232BD4224(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x238391C70](15, a1 >> 16);
    sub_232BD4224(v3);
    return v4 | 8;
  }
}

uint64_t sub_232BD33C8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0xC) == 4 << v8)
  {
    result = sub_232BD336C(a2, a3, a4);
    v6 = result;
  }

  if ((v7 & 0xC) == v9)
  {
    result = sub_232BD336C(v7, a3, a4);
    v7 = result;
  }

  v10 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 >> 14 <= 4 * v10 && v6 >> 14 >= v7 >> 14)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t *sub_232BD3490(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      a2 = sub_232BD36F0(v11, v6, v4, a2);
      MEMORY[0x238393870](v11, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v7 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_232C4883C(0, v6, v7);
  v8 = sub_232BD3600(v7, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v8;
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return a2;
}

unint64_t *sub_232BD3600(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_232BD3778(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_232BD3778(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_232BD36F0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_232BD3600(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_232BD3778(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_232B124A8(&qword_27DDC77F0, &unk_232CFAB70);
  result = sub_232CEA650();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_232CEA820();

    sub_232CE9E40();
    result = sub_232CEA850();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_232BD39AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_232CE9D20();

  [a3 setDateFormat_];
}

uint64_t sub_232BD3A10(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232BD3B6C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_232BD3CC8()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_232B20A00();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v3 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v19 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      v18 = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_232BD3E1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_232BD3E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_232BD3E5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  return sub_232BD22C4(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));
}

uint64_t sub_232BD3E90(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_232CEA450();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_232BD3ED0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_232BD3F4C(uint64_t a1)
{
  v2 = type metadata accessor for FoundInEventDataDetectorsOutput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BD3FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BD4050()
{

  return sub_232CEA750();
}

void sub_232BD40C0()
{
  *(v0 + 8 * (v3 >> 6) + 64) |= 1 << v3;
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
  v5 = *(v0 + 56) + 16 * v3;
}

uint64_t sub_232BD4128()
{

  return sub_232CE9D50();
}

uint64_t sub_232BD415C()
{

  return sub_232CEA750();
}

uint64_t sub_232BD41CC()
{

  return swift_slowAlloc();
}

uint64_t sub_232BD423C()
{

  return sub_232B12480(v1, 1, v0);
}

BOOL sub_232BD4258(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_232BD42D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_232BD42F8(float a1)
{
  *v3 = a1;

  return sub_232BAD2D4(v2, v1, (v4 - 96));
}

uint64_t sub_232BD4318()
{
}

unint64_t sub_232BD4330()
{

  return sub_232B1F160(v1, v0);
}

void static DUIDClassificationImplementation.containsDataDetector(for:)()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE9A30();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v41 = v11 - v10;
  v12 = objc_opt_self();
  v13 = sub_232CE9D20();
  v14 = MEMORY[0x238391CC0](v3, v1);
  if (qword_2814E1820 != -1)
  {
    swift_once();
  }

  v15 = [v12 scanString:v13 range:0 configuration:{v14, qword_2814E1828, v41}];

  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v16 = sub_232CE9FE0();

  v17 = sub_232B26B10(v16);
  v43 = v7;
  if (v17)
  {
    v18 = v17;
    if (v17 < 1)
    {
      __break(1u);
      return;
    }

    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2383922C0](v19, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = [v21 type];
      v24 = sub_232CE9D50();
      v26 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = *(v20 + 16);
        sub_232BD71FC();
        sub_232B35ECC();
        v20 = v30;
      }

      v27 = *(v20 + 16);
      if (v27 >= *(v20 + 24) >> 1)
      {
        sub_232BD71FC();
        sub_232B35ECC();
        v20 = v31;
      }

      ++v19;

      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;
    }

    while (v18 != v19);
  }

  sub_232B25E10(v16);

  sub_232CE9A20();
  v32 = sub_232CE9A00();
  v33 = sub_232CEA1E0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_232BC1F80();
    v35 = sub_232BD41CC();
    v44 = v35;
    *v34 = 136315138;

    v37 = MEMORY[0x238391D80](v36, MEMORY[0x277D837D0]);
    v39 = v38;

    v40 = sub_232BAD2D4(v37, v39, &v44);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_232B02000, v32, v33, "DUIDClassificationImplementation: Data Detectors detected %s", v34, 0xCu);
    sub_232B2040C(v35);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  (*(v43 + 8))(v42, v4);
  sub_232B20A00();
}

uint64_t sub_232BD46E8()
{
  sub_232CE9810();
  result = sub_232CE9800();
  byte_27DDC7808 = result & 1;
  return result;
}

id sub_232BD475C()
{
  result = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
  qword_2814E1828 = result;
  return result;
}

uint64_t sub_232BD47A8()
{
  v0 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  sub_232B135FC(v0, qword_27DDD4FC0);
  v1 = sub_232B135C4(v0, qword_27DDD4FC0);
  v2 = sub_232CE8E10();

  return sub_232B12504(v1, 1, 1, v2);
}

void sub_232BD4824()
{
  sub_232B35110();
  v2 = v1;
  v3 = sub_232CE9A30();
  v4 = sub_232B48F0C(v3);
  v136 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  sub_232B20628();
  v128 = v11;
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  sub_232B20628();
  v131 = v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  v130 = &v122 - v15;
  v133 = sub_232B124A8(&qword_27DDC7538, &unk_232CFA0F0);
  v16 = sub_232B13F24(v133);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v122 - v19;
  v135 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  v21 = sub_232B13F24(v135);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_232B20714();
  v132 = v24;
  sub_232B20600();
  MEMORY[0x28223BE20](v25);
  sub_232B20628();
  v129 = v26;
  sub_232B20600();
  MEMORY[0x28223BE20](v27);
  sub_232BD7208();
  MEMORY[0x28223BE20](v28);
  v30 = &v122 - v29;
  v31 = sub_232CE8E10();
  v32 = sub_232B48F0C(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_232B20714();
  v127 = v37;
  sub_232B20600();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v122 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v122 - v42;
  getNLAssetLocale(for:)(v2, v30);
  sub_232BAE100(v30);
  if (v65)
  {
    sub_232B13790(v30, &qword_27DDC7398, &unk_232CF9070);
    sub_232CE9A20();
    v44 = v2;
    v45 = sub_232CE9A00();
    v46 = sub_232CEA1C0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v3;
      v48 = sub_232BC1F80();
      v49 = sub_232BD41CC();
      v138[0] = v49;
      *v48 = 136315138;
      v137 = v44;
      type metadata accessor for NLLanguage();
      v50 = v44;
      v51 = sub_232CE9DC0();
      v53 = sub_232BAD2D4(v51, v52, v138);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_232B02000, v45, v46, "DUIDClassificationImplementation: Embedding not found for %s", v48, 0xCu);
      sub_232B2040C(v49);
      sub_232BD7180();
      sub_232BA6A84();

      sub_232BD71C4();
      v55 = v10;
      v56 = v47;
    }

    else
    {

      sub_232BD71C4();
      v55 = v10;
      v56 = v3;
    }

    v54(v55, v56);
    goto LABEL_32;
  }

  v125._rawValue = v2;
  v126 = v3;
  v134 = v34;
  v57 = *(v34 + 32);
  v57(v43, v30, v31);
  v58 = 0x27DDC6000uLL;
  if (qword_2814E3E88)
  {
    v123 = *(v134 + 16);
    v124 = v43;
    v123(v0, v43, v31);
    sub_232BD71FC();
    sub_232B12504(v59, v60, v61, v62);
    if (qword_27DDC63A0 != -1)
    {
      sub_232BD7140();
    }

    v63 = sub_232B135C4(v135, qword_27DDD4FC0);
    swift_beginAccess();
    v64 = *(v133 + 48);
    sub_232BAD840(v0, v20);
    sub_232BAD840(v63, &v20[v64]);
    sub_232BAE100(v20);
    if (v65)
    {
      sub_232B13790(v0, &qword_27DDC7398, &unk_232CF9070);
      sub_232BAE100(&v20[v64]);
      if (v65)
      {
        sub_232B13790(v20, &qword_27DDC7398, &unk_232CF9070);
        v43 = v124;
LABEL_29:
        v106 = v130;
        sub_232CE9A20();
        v107 = v127;
        v123(v127, v43, v31);
        v108 = sub_232CE9A00();
        v109 = sub_232CEA1A0();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = sub_232BC1F80();
          v111 = sub_232BD41CC();
          v138[0] = v111;
          *v110 = 136315138;
          v112 = sub_232CE8D60();
          v114 = v113;
          v115 = *(v134 + 8);
          v115(v107, v31);
          v116 = sub_232BAD2D4(v112, v114, v138);

          *(v110 + 4) = v116;
          _os_log_impl(&dword_232B02000, v108, v109, "DUIDClassificationImplementation: OTA model is already loaded and locale %s matches currently loaded model, early return.", v110, 0xCu);
          sub_232B2040C(v111);
          sub_232BA6A84();
          sub_232BD7180();

          sub_232BD71C4();
          v117(v130, v126);
          v118 = sub_232BD71B8();
          (v115)(v118);
        }

        else
        {

          v119 = *(v134 + 8);
          v119(v107, v31);
          sub_232BD71C4();
          v120(v106, v126);
          v121 = sub_232BD71B8();
          (v119)(v121);
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_232BAD840(v20, v129);
      sub_232BAE100(&v20[v64]);
      if (!v65)
      {
        v57(v41, &v20[v64], v31);
        sub_232BD70F8(&qword_27DDC7540, MEMORY[0x277CC9788]);
        v103 = sub_232CE9CF0();
        v104 = *(v134 + 8);
        v104(v41, v31);
        sub_232B13790(v0, &qword_27DDC7398, &unk_232CF9070);
        v105 = sub_232BD71B8();
        (v104)(v105);
        sub_232B13790(v20, &qword_27DDC7398, &unk_232CF9070);
        v43 = v124;
        v58 = 0x27DDC6000;
        if (v103)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      sub_232B13790(v0, &qword_27DDC7398, &unk_232CF9070);
      v66 = *(v134 + 8);
      v67 = sub_232BD71B8();
      v68(v67);
    }

    sub_232B13790(v20, &qword_27DDC7538, &unk_232CFA0F0);
    v43 = v124;
    v58 = 0x27DDC6000uLL;
  }

LABEL_19:
  getLDAsset(for:with:)(0xD00000000000001ELL, 0x8000000232D07A80, v43);
  if (v69)
  {
    v70 = v69;
    v71 = v131;
    sub_232CE9A20();
    v72 = sub_232CE9A00();
    v73 = sub_232CEA1A0();
    v74 = sub_232BC1E54(v73);
    v75 = v126;
    if (v74)
    {
      v76 = sub_232BA73DC();
      *v76 = 0;
      _os_log_impl(&dword_232B02000, v72, v73, "DUIDClassificationImplementation: LinguisticData bundle found, loading model", v76, 2u);
      sub_232BA6A84();
    }

    sub_232BD71C4();
    v77(v71, v75);
    sub_232BD51B0();
    v78 = v134;
    if (*(v58 + 928) != -1)
    {
      sub_232BD7140();
    }

    v79 = sub_232B135C4(v135, qword_27DDD4FC0);
    v80 = v132;
    (*(v78 + 16))(v132, v43, v31);
    sub_232BD71FC();
    sub_232B12504(v81, v82, v83, v84);
    swift_beginAccess();
    sub_232BAD7D0(v80, v79);
    swift_endAccess();

    v85 = *(v78 + 8);
    v86 = sub_232BD71B8();
    v87(v86);
  }

  else
  {
    v88 = v128;
    sub_232CE9A20();
    v89 = sub_232CE9A00();
    v90 = sub_232CEA1A0();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v126;
    v93 = v134;
    if (v91)
    {
      *sub_232BA73DC() = 0;
      sub_232BD71E0();
      _os_log_impl(v94, v95, v96, v97, v98, 2u);
      sub_232BD7180();
    }

    sub_232BD71C4();
    v99(v88, v92);
    requestNLAsset(for:)(v125);
    v100 = *(v93 + 8);
    v101 = sub_232BD71B8();
    v102(v101);
  }

LABEL_32:
  sub_232B20A00();
}

void sub_232BD51B0()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_232CE9A30();
  v7 = sub_232B48F0C(v6);
  v67[3] = v8;
  v68 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20714();
  v67[2] = v11;
  sub_232B20600();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v67 - v14;
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v67[0] = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  v67[1] = v67 - v18;
  v19 = sub_232CE8B40();
  v20 = sub_232B48F0C(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v27 = v26 - v25;
  v28 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = v67 - v30;
  v32 = sub_232CE8C00();
  v33 = sub_232B13F24(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_232B20704();
  v38 = v37 - v36;
  sub_232BD7050(v5, v3, 0x6C65646F6D6C6D2ELL, 0xE900000000000063, v1);
  if (v39)
  {
    v40 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v40 setComputeUnits_];
    sub_232BA4DEC(0, &qword_2814DF8D0, 0x277CBFF20);
    sub_232B12504(v31, 1, 1, v32);
    (*(v22 + 104))(v27, *MEMORY[0x277CC91D8], v19);
    sub_232CE8BE0();
    v41 = v40;
    v47 = sub_232C13FE8(v38, v41);
    v48 = objc_allocWithZone(MEMORY[0x277CD89D0]);
    v49 = v47;
    v50 = sub_232BD6F4C(v47);
    v51 = [v49 modelDescription];
    v52 = [v51 metadata];

    type metadata accessor for MLModelMetadataKey();
    sub_232BD70F8(&qword_2814DF900, type metadata accessor for MLModelMetadataKey);
    v53 = sub_232CE9C40();

    sub_232B1E114(*MEMORY[0x277CBFE98], v53);

    if (v71[3])
    {
      v54 = swift_dynamicCast();
      v55 = v67[0];
      if (v54)
      {
        v57 = v69;
        v56 = v70;
LABEL_11:
        qword_27DDD4FD8 = v57;
        qword_27DDD4FE0 = v56;

        v58 = qword_2814E3E88;
        qword_2814E3E88 = v50;
        v59 = v50;

        sub_232CE9A20();
        v60 = sub_232CE9A00();
        v61 = sub_232CEA1A0();
        if (sub_232BC1E54(v61))
        {
          v62 = sub_232BC1F80();
          v63 = sub_232BD41CC();
          v71[0] = v63;
          *v62 = 136315138;
          if (qword_27DDD4FE0)
          {
            v64 = qword_27DDD4FD8;
          }

          else
          {
            v64 = 0x6E776F6E6B6E75;
          }

          if (qword_27DDD4FE0)
          {
            v65 = qword_27DDD4FE0;
          }

          else
          {
            v65 = 0xE700000000000000;
          }

          v66 = sub_232BAD2D4(v64, v65, v71);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_232B02000, v60, v61, "DUFoundInEventClassificationImplementation: Successfully loaded model. Model description %s", v62, 0xCu);
          sub_232B2040C(v63);
          sub_232BD719C();
          sub_232BA6A84();
        }

        else
        {
        }

        sub_232BD721C();
        v46 = v55;
        goto LABEL_21;
      }
    }

    else
    {
      sub_232B13790(v71, &qword_27DDC68C8, &qword_232CF6210);
      v55 = v67[0];
    }

    v56 = 0xE300000000000000;
    v57 = 7104878;
    goto LABEL_11;
  }

  sub_232CE9A20();
  v42 = sub_232CE9A00();
  v43 = sub_232CEA1C0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = sub_232BA73DC();
    *v44 = 0;
    _os_log_impl(&dword_232B02000, v42, v43, "DUIDClassificationImplementation: Unable to find model URL from DocumentUnderstanding bundle.", v44, 2u);
    sub_232BA6A84();
  }

  sub_232BD721C();
  v46 = v15;
LABEL_21:
  v45(v46, v68);
  sub_232B20A00();
}

uint64_t static DUIDClassificationImplementation.getLoadedModelDescription()()
{
  type metadata accessor for DUIDClassificationImplementation();
  v0 = *MEMORY[0x277CD8708];
  sub_232BD4824();
  v1 = qword_27DDD4FD8;

  return v1;
}

uint64_t static DUIDClassificationImplementation.isIDDocument(for:labelKey:labelThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v154 = a4;
  v151 = a1;
  v152 = a2;
  v144 = sub_232CE99B0();
  v8 = sub_232B48F0C(v144);
  v143 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v142 = v13 - v12;
  v14 = sub_232CE9970();
  v159 = sub_232B48F0C(v14);
  v160 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v159);
  sub_232B20714();
  v147 = v18;
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  v21 = v141 - v20;
  MEMORY[0x28223BE20](v22);
  sub_232BD7208();
  MEMORY[0x28223BE20](v23);
  v25 = v141 - v24;
  v26 = sub_232CE9A30();
  v27 = sub_232B48F0C(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_232B20714();
  v158 = v32;
  sub_232B20600();
  MEMORY[0x28223BE20](v33);
  sub_232B20628();
  v146 = v34;
  sub_232B20600();
  MEMORY[0x28223BE20](v35);
  sub_232B20628();
  v141[0] = v36;
  sub_232B20600();
  MEMORY[0x28223BE20](v37);
  sub_232B20628();
  v145 = v38;
  sub_232B20600();
  MEMORY[0x28223BE20](v39);
  v41 = v141 - v40;
  v42 = sub_232CE99A0();
  v43 = sub_232B48F0C(v42);
  v149 = v44;
  v150 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_232B20704();
  v49 = v48 - v47;
  if (qword_2814DFA58 != -1)
  {
    sub_232BD7160();
  }

  v141[1] = a3;
  v50 = sub_232B135C4(v26, qword_2814E3DC0);
  v51 = *(v29 + 16);
  v153 = v26;
  v51(v41, v50, v26);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v157 = v49;
  v52 = sub_232CE9990();
  v53 = sub_232CEA270();
  v54 = sub_232CEA340();
  v155 = v29;
  if (v54)
  {
    v55 = sub_232BA73DC();
    sub_232BD7228(v55);
    v56 = sub_232CE9960();
    sub_232BD7240(&dword_232B02000, v52, v53, v56, "DUIDClassificationImplementation:isIDDocument", "");
    sub_232BA6A84();
  }

  v58 = v159;
  v57 = v160;
  v59 = *(v160 + 16);
  v59(v5, v25, v159);
  v60 = sub_232CE99E0();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v148 = sub_232CE99D0();
  v63 = *(v57 + 8);
  v160 = v57 + 8;
  v156 = v63;
  v63(v25, v58);
  sub_232CE9990();
  sub_232CE9950();
  v64 = sub_232CE9990();
  v65 = sub_232CEA270();
  if (sub_232CEA340())
  {
    v66 = sub_232BA73DC();
    sub_232BD7228(v66);
    v67 = sub_232CE9960();
    sub_232BD7240(&dword_232B02000, v64, v65, v67, "DUIDClassificationImplementation:loadCompiledNLModel", "");
    sub_232BA6A84();
  }

  v68 = v159;
  v59(v5, v21, v159);
  v69 = *(v60 + 48);
  v70 = *(v60 + 52);
  swift_allocObject();
  sub_232CE99D0();
  v156(v21, v68);
  v71 = v147;
  if (qword_2814E0C00 != -1)
  {
    swift_once();
  }

  v72 = v153;
  v73 = v157;
  v74 = v158;
  if (byte_27DDC7808 == 1)
  {
    v75 = objc_opt_self();
    v76 = sub_232CE9D20();
    v77 = [v75 dominantLanguageForString_];

    if (v77)
    {
      sub_232CE9A20();
      v78 = sub_232CE9A00();
      v79 = sub_232CEA1E0();
      if (sub_232BC1E54(v79))
      {
        *sub_232BA73DC() = 0;
        sub_232BD71D0();
        _os_log_impl(v80, v81, v82, v83, v84, 2u);
        v74 = v158;
        sub_232BA6A84();
      }

      sub_232BD71F0();
      v146 = v85;
      v85(v145, v72);
      type metadata accessor for DUIDClassificationImplementation();
      sub_232BD4824();
    }

    else
    {
      v96 = v141[0];
      sub_232CE9A20();
      v97 = sub_232CE9A00();
      v98 = sub_232CEA1E0();
      if (sub_232BC1E54(v98))
      {
        v99 = sub_232BA73DC();
        *v99 = 0;
        _os_log_impl(&dword_232B02000, v97, v98, "DUIDClassificationImplementation: LanguageRecognizer failed, skipping multilingual model loading", v99, 2u);
        sub_232BA6A84();

        sub_232BD71F0();
        v101 = v141[0];
      }

      else
      {

        sub_232BD71F0();
        v101 = v96;
      }

      v146 = v100;
      v100(v101, v72);
    }
  }

  else
  {
    sub_232CE9A20();
    v86 = sub_232CE9A00();
    v87 = sub_232CEA1E0();
    if (sub_232BC1E54(v87))
    {
      *sub_232BA73DC() = 0;
      sub_232BD71D0();
      _os_log_impl(v88, v89, v90, v91, v92, 2u);
      v74 = v158;
      sub_232BA6A84();
    }

    sub_232BD71F0();
    v93 = v146;
    v146 = v94;
    v94(v93, v72);
    type metadata accessor for DUIDClassificationImplementation();
    v95 = *MEMORY[0x277CD8708];
    sub_232BD4824();
  }

  v102 = sub_232CE9990();
  sub_232CE99C0();
  v103 = sub_232CEA260();
  if (sub_232CEA340())
  {

    v104 = v142;
    sub_232CE99F0();

    v105 = v143;
    v106 = v144;
    if ((*(v143 + 88))(v104, v144) == *MEMORY[0x277D85B00])
    {
      v107 = "[Error] Interval already ended";
    }

    else
    {
      (*(v105 + 8))(v104, v106);
      v107 = "";
    }

    v108 = sub_232BA73DC();
    sub_232BD7228(v108);
    v109 = sub_232CE9960();
    sub_232BD7240(&dword_232B02000, v102, v103, v109, "DUIDClassificationImplementation:loadCompiledNLModel", v107);
    sub_232BD719C();
    v74 = v158;
  }

  v156(v71, v159);
  v110 = qword_2814E3E88;
  if (qword_2814E3E88)
  {
    v165[0] = v151;
    v165[1] = v152;
    v163 = 10;
    v164 = 0xE100000000000000;
    v161 = 32;
    v162 = 0xE100000000000000;
    sub_232B48080();
    v111 = v110;
    sub_232CEA3B0();
    v112 = sub_232CEA2C0();

    if (*(v112 + 16))
    {
      sub_232CE9A20();

      v113 = sub_232CE9A00();
      v114 = sub_232CEA1E0();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v165[0] = v160;
        *v115 = 136315394;
        v116 = sub_232BD7234();
        *(v115 + 4) = sub_232BAD2D4(v116, v117, v118);
        *(v115 + 12) = 2080;
        sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_232CF6460;
        v120 = sub_232BD7234();
        v122 = sub_232B1DFEC(v120, v121, v112);
        v123 = MEMORY[0x277D83A80];
        *(v119 + 56) = MEMORY[0x277D839F8];
        *(v119 + 64) = v123;
        if (v124)
        {
          v125 = 0;
        }

        else
        {
          v125 = v122;
        }

        *(v119 + 32) = v125;
        v126 = sub_232CE9D80();
        v128 = sub_232BAD2D4(v126, v127, v165);

        *(v115 + 14) = v128;
        sub_232BD71D0();
        _os_log_impl(v129, v130, v131, v132, v133, 0x16u);
        swift_arrayDestroy();
        sub_232BA6A84();
        sub_232BA6A84();

        v146(v158, v153);
      }

      else
      {

        v146(v74, v72);
      }

      v134 = sub_232BD7234();
      v136 = COERCE_DOUBLE(sub_232B1DFEC(v134, v135, v112));
      v138 = v137;

      if ((v138 & 1) == 0)
      {
        v139 = v136 > a5;
        goto LABEL_38;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v139 = 2;
LABEL_38:
  sub_232BD6CF0();

  (*(v149 + 8))(v73, v150);
  return v139;
}

uint64_t static DUIDClassificationImplementation.isIDDocumentLLM(for:labelThreshold:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(sub_232B124A8(&qword_27DDC7398, &unk_232CF9070) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_232CE9970();
  v2[9] = v4;
  sub_232B27FBC(v4);
  v2[10] = v5;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v8 = sub_232CE9A30();
  v2[13] = v8;
  sub_232B27FBC(v8);
  v2[14] = v9;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = sub_232CE99A0();
  v2[16] = v12;
  sub_232B27FBC(v12);
  v2[17] = v13;
  v15 = *(v14 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BD66A8, 0, 0);
}

uint64_t sub_232BD66A8()
{
  v26 = v0;
  if (qword_2814DFA58 != -1)
  {
    sub_232BD7160();
  }

  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_232B135C4(v4, qword_2814E3DC0);
  (*(v3 + 16))(v2, v5, v4);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v6 = sub_232CE9990();
  v7 = sub_232CEA270();
  if (sub_232CEA340())
  {
    v8 = v0[12];
    v9 = sub_232BA73DC();
    *v9 = 0;
    v10 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v6, v7, v10, "DUIDClassificationImplementation:isIDDocumentLLM", "", v9, 2u);
    sub_232BD7180();
  }

  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];

  (*(v14 + 16))(v11, v12, v13);
  v16 = sub_232CE99E0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[19] = sub_232CE99D0();
  (*(v14 + 8))(v12, v13);
  type metadata accessor for DUModelRunner();
  v25 = 3;
  v0[20] = DUModelRunner.__allocating_init(extractionCategory:pid:)(&v25, 0, 1);
  sub_232CE8D50();
  v19 = sub_232CE8E10();
  sub_232B12504(v15, 0, 1, v19);
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_232BD6900;
  v21 = v0[7];
  v22 = v0[8];
  v23 = v0[6];

  return sub_232BDE98C(v23, v21, v22);
}

uint64_t sub_232BD6900(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 168);
  v8 = *v3;
  v6[22] = v2;

  v9 = v6[20];
  v10 = v6[8];
  if (v2)
  {
    sub_232B13790(v10, &qword_27DDC7398, &unk_232CF9070);

    v11 = sub_232BD6BF4;
  }

  else
  {
    v6[23] = a2;
    v6[24] = a1;
    sub_232B13790(v10, &qword_27DDC7398, &unk_232CF9070);

    v11 = sub_232BD6A98;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_232BD6A98()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[12];
  v14 = v0[11];
  v15 = v0[8];
  v0[2] = v0[24];
  v0[3] = v1;
  v0[4] = 0x6E776F6E6B6E75;
  v0[5] = 0xE700000000000000;
  sub_232B48080();
  v8 = sub_232CEA3F0();

  sub_232BD6CF0();

  v9 = *(v4 + 8);
  v10 = sub_232BD7234();
  v11(v10);

  v12 = v0[1];

  return v12((v8 & 1) == 0, 0x3FF0000000000000);
}

uint64_t sub_232BD6BF4()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];
  swift_willThrow();
  sub_232BD6CF0();

  (*(v5 + 8))(v2, v4);

  v10 = v0[1];
  v11 = v0[22];

  return v10();
}

void sub_232BD6CF0()
{
  sub_232B35110();
  v1 = v0;
  v27 = v2;
  v3 = sub_232CE99B0();
  v4 = sub_232B48F0C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = sub_232CE9970();
  v13 = sub_232B48F0C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v20 = v19 - v18;
  v21 = sub_232CE9990();
  sub_232CE99C0();
  v26 = sub_232CEA260();
  if ((sub_232CEA340() & 1) == 0)
  {
LABEL_13:

    (*(v15 + 8))(v20, v12);
    sub_232B20A00();
    return;
  }

  if ((v1 & 1) == 0)
  {
    v22 = v27;
    if (v27)
    {
LABEL_9:

      sub_232CE99F0();

      if ((*(v6 + 88))(v11, v3) == *MEMORY[0x277D85B00])
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v11, v3);
        v23 = "";
      }

      v24 = sub_232BA73DC();
      sub_232BD7228(v24);
      v25 = sub_232CE9960();
      sub_232BD7240(&dword_232B02000, v21, v26, v25, v22, v23);
      sub_232BD719C();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v22 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

id sub_232BD6F4C(void *a1)
{
  v2 = v1;
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v4 = [v2 initWithMLModel:a1 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_232CE8B30();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_232BD7050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_232CE9D20();
  v7 = sub_232CE9D20();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_232CE9D50();

  return v9;
}

uint64_t sub_232BD70F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232BD7140()
{

  return swift_once();
}

uint64_t sub_232BD7160()
{

  return swift_once();
}

void sub_232BD7180()
{

  JUMPOUT(0x238393870);
}

void sub_232BD719C()
{

  JUMPOUT(0x238393870);
}

void sub_232BD7240(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 2u);
}

void sub_232BD7258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v1, 0);
    v5 = sub_232B666F4(a1);
    v6 = 0;
    v7 = a1 + 64;
    v26 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v27 = v4;
        v28 = v6;
        v29 = v3;
        v9 = (*(a1 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v12 = sub_232CE9DD0();
        v14 = v13;
        v16 = *(v30 + 16);
        v15 = *(v30 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_232B649F4(v15 > 1, v16 + 1, 1);
        }

        *(v30 + 16) = v16 + 1;
        v17 = v30 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        v18 = 1 << *(a1 + 32);
        if (v5 >= v18)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v19 = *(a1 + 64 + 8 * v8);
        if ((v19 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v29)
        {
          goto LABEL_27;
        }

        v20 = v19 & (-2 << (v5 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v8 << 6;
          v22 = v8 + 1;
          v23 = (a1 + 72 + 8 * v8);
          while (v22 < (v18 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              sub_232B48E94(v5, v29, v27 & 1);
              v18 = __clz(__rbit64(v24)) + v21;
              goto LABEL_18;
            }
          }

          sub_232B48E94(v5, v29, v27 & 1);
        }

LABEL_18:
        v6 = v28 + 1;
        if (v28 + 1 == v26)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

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
  }
}

id sub_232BD748C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_232CE9D20();

  v2 = [v0 initWithContentsOfFile_];

  return v2;
}

BOOL sub_232BD7500(uint64_t a1)
{
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CFABE0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x8000000232D07AF0;
  sub_232BD8164();
  *(v4 + 48) = v3 + 4;
  *(v4 + 56) = v5;
  sub_232BD8164();
  *(v7 + 64) = v6 | 3;
  *(v7 + 72) = v8;
  sub_232BD8164();
  *(v9 + 80) = v11;
  *(v9 + 88) = v10;
  sub_232BD8164();
  *(v12 + 96) = v14;
  *(v12 + 104) = v13;
  sub_232BD8164();
  *(v15 + 112) = v16;
  *(v15 + 120) = v17;
  sub_232BD8164();
  *(v19 + 128) = v18 + 7;
  *(v19 + 136) = v20;
  sub_232BD8164();
  *(v22 + 144) = v21 - 1;
  *(v22 + 152) = v23;
  strcpy((v22 + 160), "X-Spam-Status");
  *(v22 + 174) = -4864;
  strcpy((v22 + 176), "X-Spam-Score");
  *(v22 + 189) = 0;
  *(v22 + 190) = -5120;
  *(v22 + 192) = 0x2D73757269562D58;
  *(v22 + 200) = 0xEF64656E6E616353;
  *(v22 + 208) = 0x4449452D47532D58;
  *(v22 + 216) = 0xE800000000000000;
  *(v22 + 224) = 0x797469746E452D58;
  *(v22 + 232) = 0xEB0000000044492DLL;
  strcpy((v22 + 240), "X-Feedback-ID");
  *(v22 + 254) = -4864;
  *(v22 + 256) = 0x44492D47532D58;
  *(v22 + 264) = 0xE700000000000000;
  strcpy((v22 + 272), "X-DMARC-Info");
  *(v22 + 285) = 0;
  *(v22 + 286) = -5120;
  *(v22 + 288) = 0x6E492D4C43492D58;
  *(v22 + 296) = 0xEA00000000006F66;
  *(v22 + 304) = 0x63532D4C43492D58;
  *(v22 + 312) = 0xEB0000000065726FLL;
  *(v22 + 320) = v21 - 4;
  *(v22 + 328) = 0x8000000232D07BF0;
  *(v22 + 336) = 0x412D706F68532D58;
  *(v22 + 344) = 0xEA00000000007070;
  strcpy((v22 + 352), "X-SES-Outgoing");
  *(v22 + 367) = -18;
  *(v22 + 368) = 0x4C4246534D2D58;
  *(v22 + 376) = 0xE700000000000000;
  strcpy((v22 + 384), "X-SFMC-Stack");
  *(v22 + 397) = 0;
  *(v22 + 398) = -5120;
  strcpy((v22 + 400), "X-KMail-Flow");
  *(v22 + 413) = 0;
  *(v22 + 414) = -5120;
  strcpy((v22 + 416), "X-AliDM-Trace");
  *(v22 + 430) = -4864;
  *(v22 + 432) = v21;
  *(v22 + 440) = 0x8000000232D07C10;
  *(v22 + 448) = v21 - 2;
  *(v22 + 456) = 0x8000000232D07C30;
  strcpy((v22 + 464), "X-Campaign-ID");
  *(v22 + 478) = -4864;
  sub_232BD8164();
  *(v24 + 480) = v25;
  *(v24 + 488) = v26;
  strcpy((v24 + 496), "X-MessageKey");
  *(v24 + 509) = 0;
  *(v24 + 510) = -5120;
  strcpy((v24 + 512), "X-Report-Abuse");
  *(v24 + 527) = -18;
  v41 = MEMORY[0x277D84F90];
  sub_232B649F4(0, 31, 0);
  for (i = 0; i != 496; i += 16)
  {
    v28 = *(inited + i + 32);
    v29 = *(inited + i + 40);
    v30 = sub_232CE9DD0();
    v32 = v31;
    v34 = *(v41 + 16);
    v33 = *(v41 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_232B649F4(v33 > 1, v34 + 1, 1);
    }

    *(v41 + 16) = v34 + 1;
    v35 = v41 + 16 * v34;
    *(v35 + 32) = v30;
    *(v35 + 40) = v32;
  }

  swift_setDeallocating();
  sub_232C78884();
  sub_232BD7258(a1);
  v37 = sub_232BDC7F4(v36);
  v38 = sub_232BDC7F4(v41);
  v39 = sub_232BDC964(v38, v37);

  return (v39 & 1) == 0;
}

uint64_t sub_232BD7984()
{
  type metadata accessor for DUInhumans();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_232BD8000(0x736E616D75686E49, 0xE800000000000000, 0x7473696C70, 0xE500000000000000, v1);
  if (v2)
  {
    sub_232BD80BC();
    v3 = sub_232BD748C();
    if (v3)
    {
      v4 = v3;
      sub_232CE9C30();
    }

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v5 = sub_232CE9A30();
    sub_232B135C4(v5, qword_2814E3DA8);
    v6 = sub_232CE9A00();
    v7 = sub_232CEA1C0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "DUInhumans: Failed to load plist dictionary";
LABEL_12:
      _os_log_impl(&dword_232B02000, v6, v7, v9, v8, 2u);
      MEMORY[0x238393870](v8, -1, -1);
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v10 = sub_232CE9A30();
    sub_232B135C4(v10, qword_2814E3DA8);
    v6 = sub_232CE9A00();
    v7 = sub_232CEA1C0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "DUInhumans: Failed to locate plist bundle";
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_232BD7BA4(uint64_t a1, unint64_t a2)
{
  result = sub_232BD7984();
  if (result)
  {
    sub_232B1E16C(a1, a2, result);

    if (v11[3])
    {
      sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
      sub_232B598F4(v11);
    }

    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v5 = sub_232CE9A30();
    sub_232B135C4(v5, qword_2814E3DA8);

    v6 = sub_232CE9A00();
    v7 = sub_232CEA1C0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_232BAD2D4(a1, a2, v11);
      _os_log_impl(&dword_232B02000, v6, v7, "DUInhumans: Failed to locale %s key", v8, 0xCu);
      sub_232B2040C(v9);
      MEMORY[0x238393870](v9, -1, -1);
      MEMORY[0x238393870](v8, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_232BD7D58(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v27 = sub_232B124A8(&qword_27DDC7810, &qword_232CFAC08);
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v29 = &v23 - v8;
  MEMORY[0x28223BE20](v7);
  v28 = &v23 - v9;
  result = sub_232BD7BA4(0xD000000000000011, 0x8000000232D07AD0);
  if (result)
  {
    v11 = result;
    v12 = *(result + 16);
    if (v12)
    {
      v13 = 0;
      v25 = (v2 + 8);
      v26 = result;
      v23 = (v2 + 32);
      v24 = v6;
      v14 = (result + 40);
      while (v13 < *(v11 + 16))
      {
        v16 = *(v14 - 1);
        v15 = *v14;

        sub_232CE9240();
        v17 = v29;
        v18 = v27;
        sub_232CE9230();
        v19 = *v25;
        (*v25)(v6, v18);
        v20 = v12;
        v21 = v28;
        (*v23)(v28, v17, v18);
        v32 = v30;
        v33 = v31;
        sub_232BAD8B0();
        sub_232BD8100();
        LOBYTE(v15) = sub_232CE9CC0();
        v22 = v21;
        v12 = v20;
        v6 = v24;
        result = v19(v22, v18);
        v11 = v26;
        if (v15)
        {

          return 1;
        }

        ++v13;
        v14 += 2;
        if (v12 == v13)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      return 0;
    }
  }

  return result;
}

uint64_t sub_232BD8000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_232CE9D20();

  v7 = sub_232CE9D20();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_232CE9D50();

  return v9;
}

unint64_t sub_232BD80BC()
{
  result = qword_2814DF930;
  if (!qword_2814DF930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DF930);
  }

  return result;
}

unint64_t sub_232BD8100()
{
  result = qword_2814E25B0;
  if (!qword_2814E25B0)
  {
    sub_232B27EEC(&qword_27DDC7810, &qword_232CFAC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E25B0);
  }

  return result;
}

uint64_t sub_232BD8170@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DULanguageTaggingSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932220;
  *a1 = result;
  return result;
}

uint64_t sub_232BD81D8()
{
  v1 = *(v0[5] + 24);
  v0[6] = v1;
  if (!v1)
  {
    sub_232B4A95C();
    swift_allocError();
    *v8 = 0xD000000000000015;
    *(v8 + 8) = 0x8000000232D04650;
    *(v8 + 16) = 0;
    goto LABEL_8;
  }

  v2 = sub_232B58240();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v6 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_232CF6460;
      *(v7 + 32) = v4;
      *(v7 + 40) = v5;
LABEL_8:
      v9 = v0[1];

      return v9();
    }

    v12 = v1;
  }

  else
  {
    v11 = v1;
  }

  type metadata accessor for DUConcatenatedDocumentTextSpecification();
  v0[7] = swift_allocObject();
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_232BD8398;
  v14 = v0[5];

  return sub_232B4F570(v14);
}

uint64_t sub_232BD8398(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[8];
  v6 = v3[7];
  v8 = *v2;
  v4[9] = a2;

  return MEMORY[0x2822009F8](sub_232BD84BC, 0, 0);
}

uint64_t sub_232BD84BC()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[3];
    v3 = objc_opt_self();
    v4 = sub_232CE9D20();

    v5 = [v3 dominantLanguageForString_];

    v6 = v0[6];
    if (v5)
    {
      v7 = sub_232CE9D50();
      v9 = v8;

      sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_232CF6460;
      *(v10 + 32) = v7;
      *(v10 + 40) = v9;
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v11 = v0[6];
    sub_232B4A95C();
    v10 = swift_allocError();
    *v12 = 0xD000000000000031;
    *(v12 + 8) = 0x8000000232D07CC0;
    *(v12 + 16) = 0;
  }

  v13 = v0[1];

  return v13(v10, v1 == 0);
}

uint64_t sub_232BD8680(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232BD81B8(a2);
}

uint64_t sub_232BD876C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  sub_232B26BFC();
  v2 = *(v0 + v1);
}

uint64_t sub_232BD880C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232BD885C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BD880C(v4);
}

void *sub_232BD890C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BD89A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232BD89F4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232BD89A4(v2);
}

char *sub_232BD8A74(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v3 = sub_232B13F24(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v42 = v7 - v6;
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v9 = sub_232B2D120(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B3516C();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  sub_232B20704();
  v23 = (v22 - v21);
  v24 = [objc_allocWithZone(type metadata accessor for DULanguageTaggingResponse()) init];
  sub_232BD9F28(a1, v23);
  v25 = *v23;
  v26 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  sub_232B13F5C();
  v27 = *&v24[v26];
  *&v24[v26] = v25;

  v28 = *(v19 + 32);
  sub_232B21B7C(v23 + v28, v17);
  if (sub_232B12480(v17, 1, v2) == 1)
  {
    sub_232BD9438(a1);
    sub_232BD9438(v23);
    sub_232B13790(v17, &qword_27DDC67C8, &unk_232CF5E70);
  }

  else
  {
    v29 = a1;
    sub_232B13790(v17, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B21B7C(v23 + v28, v14);
    v30 = sub_232BD9FD4();
    if (sub_232B12480(v30, v31, v2) == 1)
    {
      v32 = v42;
      sub_232CE9330();
      v33 = (v32 + *(v2 + 20));
      *v33 = 0;
      v33[1] = 0;
      v34 = sub_232BD9FD4();
      if (sub_232B12480(v34, v35, v2) != 1)
      {
        sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BD9FA4();
      sub_232BD9494(v14, v42, v36);
    }

    v37 = sub_232B4C530();
    sub_232BD9438(v29);
    sub_232BD9438(v23);
    v38 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
    sub_232B13F5C();
    v39 = *&v24[v38];
    *&v24[v38] = v37;
  }

  return v24;
}

char *sub_232BD8D20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = [objc_allocWithZone(v2) init];
  sub_232BD9F28(a1, v18);
  v20 = *v18;
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  swift_beginAccess();
  v22 = *&v19[v21];
  *&v19[v21] = v20;

  v23 = *(v15 + 32);
  sub_232B21B7C(v18 + v23, v13);
  if (sub_232B12480(v13, 1, v4) == 1)
  {
    sub_232BD9438(a1);
    sub_232BD9438(v18);
    sub_232B13790(v13, &qword_27DDC67C8, &unk_232CF5E70);
  }

  else
  {
    v24 = a1;
    sub_232B13790(v13, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B21B7C(v18 + v23, v11);
    if (sub_232B12480(v11, 1, v4) == 1)
    {
      v25 = v32;
      sub_232CE9330();
      v26 = (v25 + *(v4 + 20));
      *v26 = 0;
      v26[1] = 0;
      if (sub_232B12480(v11, 1, v4) != 1)
      {
        sub_232B13790(v11, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BD9494(v11, v32, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
    }

    v27 = sub_232B4C530();
    sub_232BD9438(v24);
    sub_232BD9438(v18);
    v28 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
    swift_beginAccess();
    v29 = *&v19[v28];
    *&v19[v28] = v27;
  }

  return v19;
}

char *DULanguageTaggingResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v6 = sub_232B13F24(v59);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v58 = v10 - v9;
  v11 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v12 = sub_232B2D120(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B3516C();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v21 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v22 = sub_232B2D120(v21);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v56 - v26;
  v28 = *(a2 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_232B20704();
  v32 = v31 - v30;
  v33 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v34 = sub_232B13F24(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_232B20704();
  v39 = (v38 - v37);
  v40 = [objc_allocWithZone(v3) init];
  (*(v28 + 16))(v32, a1, a2);
  if (swift_dynamicCast())
  {
    v57 = a1;
    sub_232B12504(v27, 0, 1, v33);
    sub_232BD9FBC();
    sub_232BD9494(v27, v39, v41);
    v42 = *v39;
    v43 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
    sub_232B13F5C();
    v44 = *&v40[v43];
    *&v40[v43] = v42;

    v45 = *(v33 + 24);
    sub_232B21B7C(v39 + v45, v20);
    v46 = v59;
    LODWORD(v42) = sub_232B12480(v20, 1, v59);
    sub_232B13790(v20, &qword_27DDC67C8, &unk_232CF5E70);
    if (v42 == 1)
    {
      (*(v28 + 8))(v57, a2);
      sub_232BD9438(v39);
    }

    else
    {
      sub_232B21B7C(v39 + v45, v17);
      v47 = sub_232B12480(v17, 1, v46);
      v48 = v57;
      if (v47 == 1)
      {
        v49 = v58;
        sub_232CE9330();
        v50 = (v49 + *(v46 + 20));
        *v50 = 0;
        v50[1] = 0;
        if (sub_232B12480(v17, 1, v46) != 1)
        {
          sub_232B13790(v17, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232BD9FA4();
        sub_232BD9494(v17, v58, v51);
      }

      v52 = sub_232B4C530();
      (*(v28 + 8))(v48, a2);
      sub_232BD9438(v39);
      v53 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
      sub_232B13F5C();
      v54 = *&v40[v53];
      *&v40[v53] = v52;
    }
  }

  else
  {
    (*(v28 + 8))(a1, a2);

    sub_232B12504(v27, 1, 1, v33);
    sub_232B13790(v27, &qword_27DDC7828, &unk_232CFBAC0);
    return 0;
  }

  return v40;
}

uint64_t sub_232BD9438(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BD9494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232BD94F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v5 = sub_232B2D120(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42[-v8];
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v11 = sub_232B13F24(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v42[-v21];
  v23 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  sub_232B20704();
  v28 = (v27 - v26);
  *(v27 - v26) = MEMORY[0x277D84F90];
  v29 = v27 - v26 + *(v24 + 28);
  sub_232CE9330();
  v30 = *(v24 + 32);
  sub_232BD9FE0(v28 + v30, 1);
  v31 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo;
  swift_beginAccess();
  v32 = *(v2 + v31);
  if (!v32)
  {
    v37 = sub_232BD9FD4();
    sub_232BD9FE0(v37, v38);
    goto LABEL_5;
  }

  v33 = v32;
  sub_232B55A40(v20);

  v34 = swift_dynamicCast();
  sub_232BD9FE0(v9, v34 ^ 1u);
  v35 = sub_232BD9FD4();
  if (sub_232B12480(v35, v36, v10) == 1)
  {
LABEL_5:
    sub_232B13790(v9, &qword_27DDC67C8, &unk_232CF5E70);
    goto LABEL_6;
  }

  sub_232BD9494(v9, v22, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232BD9494(v22, v16, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232B13790(v28 + v30, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232BD9494(v16, v28 + v30, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232BD9FE0(v28 + v30, 0);
LABEL_6:
  v39 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
  swift_beginAccess();
  *v28 = *(v2 + v39);
  sub_232BD9FBC();
  sub_232BD9494(v28, a1, v40);
}

uint64_t sub_232BD97A4@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232BD94F4(v7 - v6);
  v9 = sub_232BD8A74(v8);
  result = sub_232B124A8(&qword_27DDC7830, &qword_232CFAC60);
  a1[3] = result;
  *a1 = v9;
  return result;
}

void sub_232BD9898(void *a1)
{
  type metadata accessor for DULanguageTaggingResponse();
  sub_232BD9F8C();
  sub_232BD9EE0(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DULanguageTaggingResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232BD9F8C();
  sub_232BD9EE0(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B4D64C();
    return 0;
  }

  swift_getObjectType();
  sub_232B4D64C();
  return v5;
}

id DULanguageTaggingResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DULanguageTaggingResponse.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_responseDebugInfo] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DULanguageTaggingResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DULanguageTaggingResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DULanguageTaggingResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232BD9CA4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232BD8D20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232BD9EE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232BD9F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BD9FE0(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

uint64_t sub_232BDA058(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  v4 = swift_task_alloc();
  *(v2 + 120) = v4;
  *v4 = v2;
  v4[1] = sub_232BDA108;

  return sub_232B5027C(a2);
}

uint64_t sub_232BDA108(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_232BDA208, 0, 0);
}

uint64_t sub_232BDA208()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[14];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v5 = *(v2 + v3);
      v6 = v5;
    }

    else
    {
      v6 = [objc_allocWithZone(type metadata accessor for DULanguageTaggingResponse()) init];
      v5 = 0;
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = v6;
    v7 = v6;
    v8 = v5;

    v9 = *(v2 + v3);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
      swift_beginAccess();
      v11 = *(v9 + v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v12 = OBJC_IVAR____TtC21DocumentUnderstanding25DULanguageTaggingResponse_languageTags;
    swift_beginAccess();
    v13 = *&v7[v12];
    *&v7[v12] = v11;

    v14 = *(v2 + v3);
    if (v14)
    {
      swift_beginAccess();
      v15 = v14;
      sub_232C5E194(v1);
      swift_endAccess();
    }

    else
    {
    }
  }

  v16 = v0[1];

  return v16();
}

id sub_232BDA3A0()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 1;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BDA3FC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_232BB0620;

  return sub_232BDA058(a1, a2);
}

void getNLAssetLocale(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_232CE9A30();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (v12)
  {
    v13 = v12;
    sub_232CE9A20();
    v14 = v13;
    v15 = sub_232CE9A00();
    v16 = sub_232CEA1A0();
    if (os_log_type_enabled(v15, v16))
    {
      v30 = a2;
      v17 = sub_232BC1F80();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      v19 = sub_232BDB73C(v14);
      v21 = v20;

      if (!v21)
      {
LABEL_12:
        __break(1u);
        return;
      }

      v22 = sub_232BAD2D4(v19, v21, &v31);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_232B02000, v15, v16, "DULDAssetUtils: embedding asset locale identifier %s", v17, 0xCu);
      sub_232B2040C(v18);
      sub_232BA6A84();
      sub_232BA6A84();

      (*(v7 + 8))(v11, v4);
      a2 = v30;
    }

    else
    {

      (*(v7 + 8))(v11, v4);
    }

    sub_232BDB73C(v14);
    if (v28)
    {
      sub_232CE8D50();

      v29 = sub_232CE8E10();
      sub_232B12504(a2, 0, 1, v29);
      sub_232B20A00();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_232CE8E10();
  sub_232B20A00();

  sub_232B12504(v23, v24, v25, v26);
}

void getLDAsset(for:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_232CE8E10();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_232CE9A30();
  v14 = sub_232B48F0C(v48);
  v46 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v44 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  sub_232CE9A20();
  v20 = *(v9 + 16);
  v47 = a3;
  v20(v13, a3, v6);

  v21 = sub_232CE9A00();
  v22 = sub_232CEA1A0();
  v23 = a2;

  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v45 = a1;
    v25 = v24;
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v25 = 136315394;
    v26 = sub_232CE8D60();
    v28 = v27;
    (*(v9 + 8))(v13, v6);
    v29 = sub_232BAD2D4(v26, v28, aBlock);
    v30 = v48;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v31 = v23;
    *(v25 + 14) = sub_232BAD2D4(v45, v23, aBlock);
    _os_log_impl(&dword_232B02000, v21, v22, "DULDAssetUtils: Enumerating LinguisticDataAssets for locale %s and asset name %s", v25, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    a1 = v45;
    sub_232BA6A84();

    v32 = sub_232BDB93C();
    v22(v32, v30);
  }

  else
  {

    (*(v9 + 8))(v13, v6);
    v33 = sub_232BDB93C();
    v22(v33, v48);
    v31 = a2;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = sub_232CE8DA0();
  sub_232BC1E0C();
  v36 = swift_allocObject();
  v36[2] = a1;
  v36[3] = v31;
  v36[4] = v34;
  aBlock[4] = sub_232BDB7A0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232BDAEC8;
  aBlock[3] = &unk_284812200;
  v37 = _Block_copy(aBlock);

  LDEnumerateAssetDataItems();
  _Block_release(v37);

  swift_beginAccess();
  if (!*(v34 + 16))
  {
    v38 = v44;
    sub_232CE9A20();
    v39 = sub_232CE9A00();
    v40 = sub_232CEA1A0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_232B02000, v39, v40, "DULDAssetUtils: Asset not found", v41, 2u);
      sub_232BA6A84();
    }

    v22(v38, v48);
  }

  v42 = *(v34 + 16);

  sub_232B20A00();
}

Swift::Void __swiftcall requestNLAsset(for:)(__C::NLLanguage a1)
{
  v2 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_232CE9A30();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (v17)
  {
    v18 = v17;
    sub_232CE9A20();
    v19 = sub_232CE9A00();
    v20 = sub_232CEA1A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_232B02000, v19, v20, "DULDAssetUtils: Requesting assets", v21, 2u);
      sub_232BA6A84();
    }

    (*(v9 + 8))(v16, v6);
    v22 = sub_232CEA090();
    sub_232B12504(v5, 1, 1, v22);
    sub_232BC1E0C();
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v18;
    sub_232B23FB4(0, 0, v5, &unk_232CFAD38, v23);
  }

  else
  {
    sub_232CE9A20();
    v24 = a1._rawValue;
    v25 = sub_232CE9A00();
    v26 = sub_232CEA1A0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_232BC1F80();
      v28 = swift_slowAlloc();
      v33 = v24;
      v34 = v28;
      *v27 = 136315138;
      type metadata accessor for NLLanguage();
      v29 = v24;
      v30 = sub_232CE9DC0();
      v32 = sub_232BAD2D4(v30, v31, &v34);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_232B02000, v25, v26, "DULDAssetUtils: did not find embedding for language %s, skipping asset request", v27, 0xCu);
      sub_232B2040C(v28);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    (*(v9 + 8))(v14, v6);
  }

  sub_232B20A00();
}

void sub_232BDAEC8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v15 = a2;
  v13 = a4;
  v14 = a5;
  v12(a2, a3, a4, a5, a6);
}

uint64_t sub_232BDAF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = sub_232CE9A30();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BDB054, 0, 0);
}

uint64_t sub_232BDB054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[19];
  v14[2] = v14;
  v14[7] = v14 + 18;
  v14[3] = sub_232BDB170;
  v16 = swift_continuation_init();
  v14[17] = sub_232B124A8(&qword_27DDC7670, &unk_232CFA978);
  v14[10] = MEMORY[0x277D85DD0];
  v14[11] = 1107296256;
  v14[12] = sub_232BBD66C;
  v14[13] = &unk_284812250;
  v14[14] = v16;
  [v15 requestAssetsWithCompletionHandler_];

  return MEMORY[0x282200938](v14 + 2, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_232BDB170()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_232BDB384;
  }

  else
  {
    v3 = sub_232BDB280;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232BDB280()
{
  v1 = v0[23];
  v2 = v0[18];
  sub_232CE9A20();
  v3 = sub_232CE9A00();
  v4 = sub_232CEA1A0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_232BC1F80();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_232B02000, v3, v4, "DULDAssetUtils: request assets complete, return code %ld", v5, 0xCu);
    sub_232BA6A84();
  }

  v6 = v0[22];
  (*(v0[21] + 8))(v0[23], v0[20]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_232BDB384()
{
  v1 = v0[24];
  v2 = v0[22];
  swift_willThrow();
  sub_232CE9A20();
  v3 = v1;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = sub_232BC1F80();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_232B02000, v4, v5, "DULDAssetUtils: Error when requesting assets %@", v8, 0xCu);
    sub_232BDB890(v9);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  else
  {
  }

  v12 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v13 = v0[1];

  return v13();
}

void sub_232BDB4F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_232CE8C00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  if (a4)
  {
    v29 = a8;
    type metadata accessor for CFString();
    v30 = a4;
    v22 = sub_232CE9D20();
    sub_232BC1928();
    v23 = sub_232CE8F80();

    if ((v23 & 1) != 0 && a1)
    {
      sub_232CE8BB0();
      (*(v12 + 32))(v21, v19, v11);
      sub_232BDB8F8();
      (*(v12 + 16))(v16, v21, v11);
      v24 = sub_232BBD328(v16);

      (*(v12 + 8))(v21, v11);
      v25 = v29;
      swift_beginAccess();
      v26 = *(v25 + 16);
      *(v25 + 16) = v24;
    }

    else
    {
      v27 = v30;
    }
  }
}

uint64_t sub_232BDB73C(void *a1)
{
  v1 = [a1 assetLocaleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232CE9D50();

  return v3;
}

uint64_t sub_232BDB7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232BDB7C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_232BB0620;

  return sub_232BDAF88(a1, v4, v5, v6);
}

uint64_t sub_232BDB890(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6FD0, &unk_232CFA240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232BDB8F8()
{
  result = qword_2814DF8C8;
  if (!qword_2814DF8C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DF8C8);
  }

  return result;
}

uint64_t static DULLMInput.cleanText(_:)(uint64_t a1, unint64_t a2)
{
  v17 = sub_232CE89D0();
  v5 = sub_232B48F0C(v17);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_232BDC1EC(a1, a2);
  v14 = v13;
  v22 = v12;
  v23 = v13;
  v20 = 0x5DADC2A0C25BLL;
  v21 = 0xA600000000000000;
  v18 = 32;
  v19 = 0xE100000000000000;
  sub_232B48080();
  sub_232BDC76C();
  sub_232BDC790();
  v22 = &v22;
  v23 = v2;
  v20 = 9666786;
  v21 = 0xA300000000000000;
  v18 = 45;
  v19 = 0xE100000000000000;
  sub_232BDC750();
  sub_232BDC76C();
  sub_232BDC7D4();
  v22 = &v22;
  v23 = v14;
  v20 = 0x3B706D6126;
  v21 = 0xE500000000000000;
  v18 = 38;
  v19 = 0xE100000000000000;
  sub_232BDC750();
  sub_232BDC76C();
  sub_232BDC790();
  v22 = &v22;
  v23 = v2;
  v20 = 0x3B7073626E26;
  v21 = 0xE600000000000000;
  v18 = 32;
  v19 = 0xE100000000000000;
  sub_232BDC750();
  sub_232BDC76C();
  sub_232BDC7D4();
  v22 = &v22;
  v23 = v14;
  v20 = 0x7D2C337B09;
  v21 = 0xE500000000000000;
  v18 = 2313;
  v19 = 0xE200000000000000;
  sub_232BDC750();
  sub_232BDC76C();
  sub_232BDC790();
  v22 = &v22;
  v23 = v2;
  v20 = 0x7D2C337B20;
  v21 = 0xE500000000000000;
  v18 = 8224;
  v19 = 0xE200000000000000;
  sub_232BDC750();
  sub_232BDC76C();
  sub_232BDC7D4();
  v22 = &v22;
  v23 = v14;
  v20 = 0x7D2C337B0ALL;
  v21 = 0xE500000000000000;
  v18 = 2570;
  v19 = 0xE200000000000000;
  sub_232BDC750();
  sub_232BDC76C();
  sub_232BDC790();
  v22 = &v22;
  v23 = v2;
  sub_232CE89B0();
  v15 = sub_232CEA3A0();
  (*(v7 + 8))(v11, v17);

  return v15;
}

Swift::String __swiftcall DULLMInput.constructModelInput()()
{
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v43 - v4;
  v6 = sub_232CE8D10();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v15 = sub_232CE9D20();
  [v14 setDateFormat_];

  v16 = type metadata accessor for DULLMInput();
  sub_232BB0C6C(v1 + *(v16 + 36), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    sub_232CE8D00();
    if (sub_232B12480(v5, 1, v6) != 1)
    {
      sub_232BB0C04(v5);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v5, v6);
  }

  v17 = sub_232CE8CD0();
  (*(v9 + 8))(v13, v6);
  v18 = [v14 stringFromDate_];

  v19 = sub_232CE9D50();
  v21 = v20;

  static DULLMInput.cleanText(_:)(v1[1], v1[2]);
  v22 = sub_232BDC7B0();
  v23 = MEMORY[0x238391B80](v22);
  v25 = v24;

  v26 = *v1;
  if (*v1)
  {
    if (v26 != 1)
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_232CEA4F0();

      v44 = 0xD00000000000001BLL;
      v45 = 0x8000000232D07DD0;
      v43[1] = v26;
      v41 = sub_232CEA720();
      MEMORY[0x238391C30](v41);

      MEMORY[0x238391C30](0xD000000000000012, 0x8000000232D07DF0);
      v39 = sub_232CEA5F0();
      __break(1u);
      goto LABEL_29;
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_232CEA4F0();

    v44 = 0xD000000000000010;
    v45 = 0x8000000232D07E10;
    MEMORY[0x238391C30](v19, v21);

    MEMORY[0x238391C30](0xD000000000000012, 0x8000000232D07E30);
    MEMORY[0x238391C30](v23, v25);
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_232CEA4F0();
    MEMORY[0x238391C30](0xD000000000000010, 0x8000000232D07E10);
    MEMORY[0x238391C30](v19, v21);

    MEMORY[0x238391C30](0xD00000000000001CLL, 0x8000000232D07E50);
    v28 = v1[5];
    v27 = v1[6];
    if (v27)
    {
      v29 = v1[5];
    }

    else
    {
      v29 = 0;
    }

    if (v27)
    {
      v30 = v1[6];
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v29, v30);

    MEMORY[0x238391C30](32, 0xE100000000000000);
    v32 = v1[7];
    v31 = v1[8];
    if (v31)
    {
      v33 = v1[7];
    }

    else
    {
      v33 = 0;
    }

    if (v31)
    {
      v34 = v1[8];
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v33, v34);

    MEMORY[0x238391C30](0xD000000000000015, 0x8000000232D07E70);
    v36 = v1[3];
    v35 = v1[4];
    if (v35)
    {
      v37 = v1[3];
    }

    else
    {
      v37 = 0;
    }

    if (v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v37, v38);

    MEMORY[0x238391C30](0xD000000000000013, 0x8000000232D07E90);
    MEMORY[0x238391C30](v23, v25);

    MEMORY[0x238391C30](0x3E79646F622F3CLL, 0xE700000000000000);
  }

  v39 = v44;
  v40 = v45;
LABEL_29:
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

void *sub_232BDC0B4()
{
  result = sub_232C0D594(&unk_28480CDB0);
  off_2814E0BF0 = result;
  return result;
}

uint64_t FormatUnicodeScalarsToRemove.getter()
{
  if (qword_2814E0BE8 != -1)
  {
    swift_once();
  }
}

uint64_t DULLMInput.init(documentType:documentText:subject:senderName:senderEmail:receivedDate:emailHeaders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  v13 = type metadata accessor for DULLMInput();
  result = sub_232BA4BBC(a11, a9 + *(v13 + 36));
  *(a9 + *(v13 + 40)) = a12;
  return result;
}

Swift::String __swiftcall DULLMInput.cleanAndTruncateText(_:)(Swift::String a1)
{
  static DULLMInput.cleanText(_:)(a1._countAndFlagsBits, a1._object);
  v1 = sub_232BDC7B0();
  v2 = MEMORY[0x238391B80](v1);
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_232BDC1EC(uint64_t a1, unint64_t a2)
{
  v19 = 0;
  v20 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = 0;
    v21 = a2 & 0xFFFFFFFFFFFFFFLL;
    v17 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = sub_232CEA4E0();
        v10 = v9;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v21;
          v7 = v18 + v5;
          v8 = *(v18 + v5);
          if (*(v18 + v5) < 0)
          {
            switch(__clz(v8 ^ 0xFF))
            {
              case 0x1Au:
LABEL_26:
                v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
                v10 = 2;
                break;
              case 0x1Bu:
LABEL_27:
                v8 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
                v10 = 3;
                break;
              case 0x1Cu:
LABEL_28:
                v8 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3F;
                v10 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v6 = v17;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = sub_232CEA550();
          }

          v7 = (v6 + v5);
          v8 = *(v6 + v5);
          if (*(v6 + v5) < 0)
          {
            switch(__clz(v8 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_26;
              case 0x1Bu:
                goto LABEL_27;
              case 0x1Cu:
                goto LABEL_28;
              default:
                break;
            }
          }
        }

LABEL_14:
        v10 = 1;
      }

LABEL_15:
      if (qword_2814E0BE8 != -1)
      {
        swift_once();
      }

      v11 = off_2814E0BF0;
      if (*(off_2814E0BF0 + 2))
      {
        v12 = *(off_2814E0BF0 + 5);
        sub_232CEA820();
        sub_232CEA840();
        v13 = sub_232CEA850();
        v14 = ~(-1 << v11[32]);
        while (1)
        {
          v15 = v13 & v14;
          if (((*&v11[(((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v13 & v14)) & 1) == 0)
          {
            break;
          }

          v13 = v15 + 1;
          if (*(*(v11 + 6) + 4 * v15) == v8)
          {
            goto LABEL_23;
          }
        }
      }

      sub_232CE9E00();
LABEL_23:
      v5 += v10;
      if (v5 >= v3)
      {

        return v19;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for DULLMInput()
{
  result = qword_2814E18E8;
  if (!qword_2814E18E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DULLMInput.truncateText(_:limit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = sub_232B57E40(a3);
  v5 = MEMORY[0x238391B80](v4);

  return v5;
}

Swift::tuple_String_String __swiftcall DULLMInput.constructClassifierInput()()
{
  static DULLMInput.cleanText(_:)(v0[1], v0[2]);
  v1 = sub_232BDC7B0();
  v2 = MEMORY[0x238391B80](v1);
  v4 = v3;

  if (v0[4])
  {
    v9 = v0[3];
    v10 = v0[4];

    MEMORY[0x238391C30](32, 0xE100000000000000);

    MEMORY[0x238391C30](v2, v4);

    v5 = v9;
    v6 = v10;
  }

  else
  {

    v5 = v2;
    v6 = v4;
  }

  v7 = v2;
  v8 = v4;
  result._1._object = v6;
  result._1._countAndFlagsBits = v5;
  result._0._object = v8;
  result._0._countAndFlagsBits = v7;
  return result;
}

void sub_232BDC628()
{
  type metadata accessor for DUDocumentType();
  if (v0 <= 0x3F)
  {
    sub_232B28F10();
    if (v1 <= 0x3F)
    {
      sub_232B33904();
      if (v2 <= 0x3F)
      {
        sub_232BDC6EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_232BDC6EC()
{
  if (!qword_2814DFA18)
  {
    sub_232B27EEC(&qword_27DDC6B40, &qword_232CF6EC8);
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_2814DFA18);
    }
  }
}

uint64_t sub_232BDC76C()
{

  return sub_232CEA3B0();
}

uint64_t sub_232BDC790()
{
}

uint64_t sub_232BDC7B0()
{

  return sub_232B57E40(6000);
}

uint64_t sub_232BDC7D4()
{
}

uint64_t sub_232BDC7F4(uint64_t a1)
{
  result = MEMORY[0x238391E80](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_232C48B20(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t DUModelRunner.__allocating_init(extractionCategory:pid:)(char *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  type metadata accessor for DUModelRunner();
  sub_232BDCE60();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  sub_232B0D220(&v8, v6 + 40);
  return v6;
}

uint64_t sub_232BDC964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_232CEA820();

      sub_232CE9E40();
      v19 = sub_232CEA850();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_232CEA750();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232BDCB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v19 = v4;
  if (v9)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 1;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_17:
        sub_232B1FA04(*(v4 + 48) + 40 * (__clz(__rbit64(v9)) | (v12 << 6)), v23);
        v21[0] = v23[0];
        v21[1] = v23[1];
        v22 = v24;
        if (*(v6 + 16))
        {
          v14 = *(v6 + 40);
          v15 = sub_232CEA470();
          v16 = ~(-1 << *(v6 + 32));
          while (1)
          {
            v17 = v15 & v16;
            if (((*(v6 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
            {
              break;
            }

            sub_232B1FA04(*(v6 + 48) + 40 * v17, v20);
            v18 = MEMORY[0x238392210](v20, v21);
            sub_232B1FA60(v20);
            v15 = v17 + 1;
            if (v18)
            {

              sub_232B1FA60(v21);
              return 0;
            }
          }
        }

        v9 &= v9 - 1;
        result = sub_232B1FA60(v21);
        v4 = v19;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

DocumentUnderstanding::DUExtractionCategory_optional __swiftcall DUExtractionCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232CEA670();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DUExtractionCategory.rawValue.getter()
{
  result = 0x73746E657645;
  switch(*v0)
  {
    case 1:
      result = sub_232BDF3A0() & 0xFFFFFFFFFFFFLL | 0x7244000000000000;
      break;
    case 2:
      result = 1685217603;
      break;
    case 3:
      result = sub_232BDF410();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232BDCE28@<X0>(uint64_t *a1@<X8>)
{
  result = DUExtractionCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_232BDCE60()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_232CE9A30();
  v9 = sub_232B48F0C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v16 = v15 - v14;
  v17 = *v5;
  if (v1)
  {
    v18 = 0xE700000000000000;
    v41 = 0x746E6572727563;
  }

  else
  {
    v43 = v3;
    sub_232BDF28C();
    v41 = sub_232CEA410();
    v18 = v19;
  }

  sub_232CE9A20();

  v20 = sub_232CE9A00();
  v21 = sub_232CEA1B0();

  if (os_log_type_enabled(v20, v21))
  {
    v42 = v17;
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = 0xE600000000000000;
    v24 = sub_232BDF3A0();
    switch(v42)
    {
      case 1:
        v23 = 0xEB00000000746661;
        v24 = sub_232BDF3A0() & 0xFFFFFFFFFFFFLL | 0x7244000000000000;
        break;
      case 2:
        v23 = 0xE400000000000000;
        v24 = 1685217603;
        break;
      case 3:
        v23 = 0xE900000000000074;
        v24 = sub_232BDF410();
        break;
      default:
        break;
    }

    v25 = sub_232BAD2D4(v24, v23, &v43);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = sub_232BAD2D4(v41, v18, &v43);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_232B02000, v20, v21, "DUModelRunner: Init %s adapter for %s process", v22, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    (*(v11 + 8))(v16, v8);
    v17 = v42;
  }

  else
  {

    (*(v11 + 8))(v16, v8);
  }

  switch(v17)
  {
    case 0:
      LOBYTE(v43) = 0;
      type metadata accessor for DUEventAdapter();
      sub_232BDF3B0();
      v27 = sub_232BDF36C();
      v30 = sub_232B9B864(v27, v28, v29);
      v31 = &off_284810C70;
      break;
    case 1:
      LOBYTE(v43) = 1;
      type metadata accessor for DUEventDraftGating();
      sub_232BDF3B0();
      v38 = sub_232BDF36C();
      v30 = sub_232B9EB70(v38, v39, v40);
      v31 = &off_284810C20;
      break;
    case 2:
      LOBYTE(v43) = 2;
      type metadata accessor for DUPersonalIDAdapter();
      sub_232BDF3B0();
      v32 = sub_232BDF36C();
      v30 = sub_232BE4ECC(v32, v33, v34);
      v31 = &off_284812418;
      break;
    case 3:
      LOBYTE(v43) = 3;
      type metadata accessor for DUPersonalIDAdapterDraft();
      sub_232BDF3B0();
      v35 = sub_232BDF36C();
      v30 = sub_232BE7678(v35, v36, v37);
      v31 = &off_2848123C8;
      break;
    default:
      JUMPOUT(0);
  }

  v7[3] = v8;
  v7[4] = v31;
  *v7 = v30;
  sub_232B20A00();
}

void static DUModelRunner.isModelEnabled(modelType:preferredLanguages:)()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE9A30();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v62 = v11 - v10;
  v12 = sub_232CE8E00();
  v13 = sub_232B48F0C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v20 = v19 - v18;
  v21 = sub_232B124A8(&qword_27DDC7848, &unk_232CFAD60);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v61 - v23;
  v25 = *v3;
  v63 = v7;
  v64 = v4;
  v61 = v25;
  if (v1)
  {
    v26 = v1;
  }

  else
  {
    v26 = sub_232CE8D90();
  }

  v27 = *(v26 + 16);
  v28 = (v15 + 8);

  v29 = 0;
  v30 = v26 + 40;
  v67 = MEMORY[0x277D84F90];
  v68 = v26;
  v66 = v26 + 40;
LABEL_5:
  v31 = (v30 + 16 * v29);
  while (v27 != v29)
  {
    if (v29 >= *(v26 + 16))
    {
      __break(1u);
      return;
    }

    v32 = *(v31 - 1);
    v33 = *v31;
    swift_bridgeObjectRetain_n();
    sub_232CE8DE0();
    sub_232CE8DF0();
    (*v28)(v20, v12);
    v34 = sub_232CE8D80();
    if (sub_232B12480(v24, 1, v34) != 1)
    {
      v35 = sub_232CE8D70();
      v65 = v36;

      (*(*(v34 - 8) + 8))(v24, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v67 + 16);
        sub_232B35ECC();
        v67 = v42;
      }

      v26 = v68;
      v37 = *(v67 + 16);
      if (v37 >= *(v67 + 24) >> 1)
      {
        sub_232B35ECC();
        v67 = v43;
      }

      ++v29;
      v38 = v67;
      *(v67 + 16) = v37 + 1;
      v39 = v38 + 16 * v37;
      v40 = v65;
      v30 = v66;
      *(v39 + 32) = v35;
      *(v39 + 40) = v40;
      goto LABEL_5;
    }

    sub_232BDEC24(v24);
    v31 += 2;
    ++v29;
    v26 = v68;
  }

  v44 = [objc_opt_self() supportedLanguages];
  v45 = sub_232CEA0D0();

  v46 = sub_232BDC7F4(v67);
  v47 = sub_232BDD76C(v46);

  v48 = sub_232BDCB3C(v47, v45);

  if (v48)
  {
    v49 = v62;
    sub_232CE9A20();
    v50 = v68;

    v51 = sub_232CE9A00();
    v52 = sub_232CEA1E0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v53 = 136315394;
      v54 = 0xE600000000000000;
      v55 = sub_232BDF3A0();
      switch(v61)
      {
        case 1:
          v54 = 0xEB00000000746661;
          v55 = sub_232BDF3A0() & 0xFFFFFFFFFFFFLL | 0x7244000000000000;
          break;
        case 2:
          v54 = 0xE400000000000000;
          v55 = 1685217603;
          break;
        case 3:
          v54 = 0xE900000000000074;
          v55 = sub_232BDF410();
          break;
        default:
          break;
      }

      v56 = sub_232BAD2D4(v55, v54, &v70);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2080;
      v69 = v50;
      sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
      sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
      v57 = sub_232CE9CD0();
      v59 = v58;

      v60 = sub_232BAD2D4(v57, v59, &v70);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_232B02000, v51, v52, "DUModelRunner: %s model is not supported for device with languages: %s", v53, 0x16u);
      swift_arrayDestroy();
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {
    }

    (*(v63 + 8))(v49, v64);
  }

  else
  {
  }

  sub_232B20A00();
}

uint64_t sub_232BDD76C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC7870, qword_232CFAEF0);
    v2 = sub_232CEA4C0();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v11;
    v23 = v11[1];

    swift_dynamicCast();
    v12 = *(v2 + 40);
    result = sub_232CEA470();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v5 &= v5 - 1;
    v21 = *(v2 + 48) + 40 * v16;
    *(v21 + 32) = v26;
    *v21 = v24;
    *(v21 + 16) = v25;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void static DUModelRunner.isLLMAvailable(for:)()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232CE9090();
  v3 = sub_232B48F0C(v2);
  v67 = v4;
  v68 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v66 = v8 - v7;
  v9 = sub_232CE9A30();
  v10 = sub_232B48F0C(v9);
  v64 = v11;
  v65 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v69 = v15 - v14;
  v63 = sub_232CE90D0();
  v16 = sub_232B48F0C(v63);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v23 = v22 - v21;
  v62 = sub_232CE90B0();
  v24 = sub_232B48F0C(v62);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_232B20704();
  v31 = v30 - v29;
  v32 = sub_232CE90F0();
  v33 = sub_232B48F0C(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v39 = &v60 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v60 - v41;
  v71 = *v1;
  static DUModelRunner.getUseCaseIdentifier(for:)();
  (*(v18 + 104))(v23, *MEMORY[0x277D0E2D8], v63);
  sub_232CE90A0();
  sub_232CE90E0();
  (*(v26 + 8))(v31, v62);
  sub_232CE9A20();
  v43 = *(v35 + 16);
  v62 = v39;
  v63 = v42;
  v44 = v39;
  v45 = v32;
  v43(v44, v42, v32);
  v46 = sub_232CE9A00();
  v47 = sub_232CEA1B0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v70 = v61;
    *v48 = 136315138;
    sub_232BDEC8C();
    v49 = v62;
    v50 = sub_232CEA720();
    v52 = v51;
    v53 = *(v35 + 8);
    v53(v49, v45);
    v54 = sub_232BAD2D4(v50, v52, &v70);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_232B02000, v46, v47, "DUModelRunner: GenerativeModelsAvailability is %s", v48, 0xCu);
    sub_232B2040C(v61);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  else
  {

    v53 = *(v35 + 8);
    v53(v62, v45);
  }

  (*(v64 + 8))(v69, v65);
  v55 = v66;
  v56 = v63;
  sub_232CE90C0();
  v53(v56, v45);
  v58 = v67;
  v57 = v68;
  v59 = (*(v67 + 88))(v55, v68) != *MEMORY[0x277D0DFB0];
  (*(v58 + 8))(v55, v57);
  sub_232B20A00();
}

void static DUModelRunner.getUseCaseIdentifier(for:)()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v10 = v9 - v8;
  v11 = *v1;
  if (v11 != 2 && *v1)
  {
    sub_232CE9A20();
    v12 = sub_232CE9A00();
    v13 = sub_232CEA1C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      v16 = 0xEB00000000746661;
      v17 = 0x724473746E657645;
      if (v11 != 1)
      {
        v17 = 0x6661724464726143;
        v16 = 0xE900000000000074;
      }

      v18 = sub_232BAD2D4(v17, v16, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_232B02000, v12, v13, "DUModelRunner: getUseCaseIdentifier is called with unknown modelType = %s", v14, 0xCu);
      sub_232B2040C(v15);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    (*(v5 + 8))(v10, v2);
  }

  sub_232B20A00();
}

uint64_t sub_232BDE050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_232CE9970();
  v4[6] = v5;
  sub_232B27FBC(v5);
  v4[7] = v6;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v9 = sub_232CE9A30();
  v4[10] = v9;
  sub_232B27FBC(v9);
  v4[11] = v10;
  v12 = *(v11 + 64) + 15;
  v4[12] = swift_task_alloc();
  v13 = sub_232CE99A0();
  v4[13] = v13;
  sub_232B27FBC(v13);
  v4[14] = v14;
  v16 = *(v15 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BDE1C0, 0, 0);
}

uint64_t sub_232BDE1C0()
{
  if (qword_2814DFA58 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = sub_232B135C4(v4, qword_2814E3DC0);
  (*(v3 + 16))(v2, v5, v4);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v6 = sub_232CE9990();
  v7 = sub_232CEA270();
  if (sub_232CEA340())
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v6, v7, v10, "DUModelRunner:extractAttributes", "", v9, 2u);
    sub_232BA6A84();
  }

  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[5];

  (*(v14 + 16))(v11, v12, v13);
  v16 = sub_232CE99E0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[16] = sub_232CE99D0();
  (*(v14 + 8))(v12, v13);
  v19 = v15[9];
  sub_232B203C8(v15 + 5, v15[8]);
  v20 = *(v19 + 8);
  v25 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v23 = sub_232BDF380(v22);

  return v25(v23);
}

uint64_t sub_232BDE44C()
{
  sub_232BDF3E8();
  v4 = v3;
  v5 = *(v3 + 136);
  v6 = *v2;
  sub_232B26B3C();
  *v7 = v6;
  *(v4 + 144) = v0;

  if (v0)
  {
    v8 = sub_232BDE62C;
  }

  else
  {
    *(v4 + 152) = v1;
    v8 = sub_232BDE564;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_232BDE564()
{
  sub_232BDF424();
  sub_232BDF438(v4, "DUModelRunner:extractAttributes");

  (*(v3 + 8))(v0, v1);

  v5 = *(v2 + 8);
  v6 = *(v2 + 152);

  return v5(v6);
}

uint64_t sub_232BDE62C()
{
  sub_232BDF424();
  sub_232BDF438(v4, "DUModelRunner:extractAttributes");

  (*(v3 + 8))(v0, v1);

  v5 = *(v2 + 8);
  v6 = *(v2 + 144);

  return v5();
}

uint64_t sub_232BDE6F0(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_232CE99B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_232CE9970();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_232CE9990();
  sub_232CE99C0();
  v22 = sub_232CEA260();
  result = sub_232CEA340();
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

      sub_232CE99F0();

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
      v20 = sub_232CE9960();
      _os_signpost_emit_with_name_impl(&dword_232B02000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x238393870](v19, -1, -1);
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

uint64_t sub_232BDE98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_232BDE9B0, 0, 0);
}

uint64_t sub_232BDE9B0()
{
  v1 = *(v0 + 40);
  v2 = v1[9];
  sub_232B203C8(v1 + 5, v1[8]);
  v3 = *(v2 + 24);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v6 = sub_232BDF380(v5);

  return v8(v6);
}

uint64_t sub_232BDEACC(uint64_t a1, uint64_t a2)
{
  sub_232BDF3E8();
  v7 = *(v6 + 48);
  v8 = *v4;
  sub_232B26B3C();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v2)
  {
    v10 = v3;
    v11 = a2;
  }

  return v12(v10, v11);
}

uint64_t DUModelRunner.__deallocating_deinit()
{
  sub_232B2040C((v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_232BDEC24(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7848, &unk_232CFAD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232BDEC8C()
{
  result = qword_27DDC7850;
  if (!qword_27DDC7850)
  {
    sub_232CE90F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7850);
  }

  return result;
}

unint64_t sub_232BDECE8()
{
  result = qword_27DDC7858;
  if (!qword_27DDC7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DUExtractionCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of DUModelRunner.extractAttributes(from:locale:)()
{
  sub_232BDF3F8();
  v2 = *(v1 + 112);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = sub_232BDF3CC(v4);

  return v6(v5);
}

uint64_t sub_232BDEF88(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t dispatch thunk of DUModelRunner.invokeModel(with:locale:)()
{
  sub_232BDF3F8();
  v2 = *(v1 + 120);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = sub_232BDF3CC(v4);

  return v6(v5);
}

uint64_t sub_232BDF190(uint64_t a1, uint64_t a2)
{
  sub_232BDF3E8();
  v6 = *(v5 + 16);
  v7 = *v3;
  sub_232B26B3C();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v2, a2);
}

unint64_t sub_232BDF28C()
{
  result = qword_2814DFA28;
  if (!qword_2814DFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA28);
  }

  return result;
}

uint64_t sub_232BDF2E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BDF320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BDF380(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

uint64_t sub_232BDF3B0()
{

  return swift_allocObject();
}

void sub_232BDF424()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
}

uint64_t sub_232BDF438(uint64_t a1, const char *a2)
{

  return sub_232BDE6F0(v2, a2, 31, 2);
}

uint64_t sub_232BDF458(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v8 = sub_232BA2B04(v3, a2, 10);
    v27 = v26;

    if (v27)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_232CEA550();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
LABEL_62:
      v29 = v4;
      if (v4)
      {
LABEL_63:

        return v3;
      }

LABEL_65:
      v28[0] = v8;
      return sub_232CEA720();
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v28;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v28 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v28 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}