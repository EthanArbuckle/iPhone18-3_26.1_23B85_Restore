void sub_22C9F81A4()
{
  sub_22C9DAEF8();
  v59[0] = v1;
  v61 = v2;
  v3 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v4 = sub_22C9D71B4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C9E05C0();
  sub_22C9FB048();
  MEMORY[0x28223BE20](v7);
  v9 = v59 - v8;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v10 = qword_28143A4B0;
  if (qword_28143A1C8 != -1)
  {
    swift_once();
  }

  v11 = sub_22CA20AE0();
  v60 = sub_22C9D0494(v11, &unk_28143A480);
  v12 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22CA20AC0();
  sub_22C9D7260();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v62 = v13 + 16;
  sub_22C9D7260();
  v14 = swift_allocObject();
  v59[1] = v10;
  v15 = v14;
  *(v14 + 16) = MEMORY[0x277D84FA0];
  v63 = sub_22C9D0434(0, &qword_28143A310, 0x277CD3EC0);
  sub_22C9D02E4(&qword_27D9E4F50, &qword_22CA23E58);
  v16 = sub_22CA20E30();
  v18 = v17;
  v19 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v20 = [v19 Intent];
  swift_unknownObjectRelease();
  v21 = sub_22CA209F0();
  sub_22C9E054C(v21);
  v23 = *(v22 + 16);
  v23(v9, v59[0], v21);
  sub_22C9FB030();
  sub_22C9D0B98(v24, v25, v26, v21);
  v23(v0, v61, v21);
  sub_22C9FB030();
  sub_22C9D0B98(v27, v28, v29, v21);
  v30 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v36 = sub_22C9F97A0(v31, v32, v33, v34, v35);
  v61 = v20;
  v37 = [v20 publisherWithOptions_];
  sub_22C9FB03C();
  v38 = swift_allocObject();
  v38[2] = v16;
  v38[3] = v18;
  v38[4] = v15;
  sub_22C9FAFC4(v38);
  v64 = 1107296256;
  v65 = sub_22C9FAF44;
  v66 = &unk_283FCDD00;
  v39 = _Block_copy(&v63);
  v40 = v68;

  v41 = [v37 filterWithIsIncluded_];
  v42 = sub_22C9FB0E8();
  _Block_release(v42);

  v67 = sub_22C9F8944;
  v68 = 0;
  v63 = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22C9FAF40;
  v66 = &unk_283FCDD28;
  v43 = _Block_copy(&v63);
  sub_22C9FB018();
  v44 = swift_allocObject();
  *(v44 + 16) = v15;
  *(v44 + 24) = v13;
  v67 = sub_22C9FADCC;
  v68 = v44;
  v63 = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22C9FAF40;
  v66 = &unk_283FCDD78;
  v45 = _Block_copy(&v63);

  v46 = [v40 sinkWithCompletion:v43 receiveInput:v45];
  _Block_release(v45);
  _Block_release(v43);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22CA20AC0();
  if (qword_28143A1B8 != -1)
  {
    sub_22C9FAF60();
    swift_once();
  }

  v47 = sub_22CA20B10();
  sub_22C9D0494(v47, &unk_28143A450);
  sub_22C9FB0DC();

  v48 = sub_22CA20AF0();
  v49 = sub_22CA21010();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = sub_22C9D7164();
    v51 = swift_slowAlloc();
    v63 = v51;
    *v50 = 136315138;
    sub_22C9FAFE8();
    swift_beginAccess();
    v52 = *(v13 + 16);

    v54 = MEMORY[0x2318BAA20](v53, MEMORY[0x277D837D0]);
    v60 = v36;
    v56 = v55;

    v57 = sub_22C9D60B0(v54, v56, &v63);

    *(v50 + 4) = v57;
    _os_log_impl(&dword_22C9CA000, v48, v49, "allBundleIDsForINPlayMediaIntents -> %s", v50, 0xCu);
    sub_22C9D04CC(v51);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {
  }

  sub_22C9FAFE8();
  swift_beginAccess();
  v58 = *(v13 + 16);

  sub_22C9DAF14();
}

uint64_t sub_22C9F8820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 eventBody];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = sub_22C9DDEC8(v7, &selRef_intentClass);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (v9 == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = sub_22CA21360();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v13 = sub_22C9DDEC8(v8, &selRef_bundleID);
  if (!v14)
  {
LABEL_12:

LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  v15 = v13;
  v16 = v14;
  swift_beginAccess();
  v17 = *(a4 + 16);

  LOBYTE(v15) = sub_22CA148CC(v15, v16, v17);

  v18 = v15 ^ 1;
  return v18 & 1;
}

void sub_22C9F8950(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = [a1 eventBody];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22C9FA314(v7);
    if (v10 >> 60 == 15)
    {
      if (qword_28143A1B8 != -1)
      {
        swift_once();
      }

      v11 = sub_22CA20B10();
      sub_22C9D0494(v11, &unk_28143A450);
      v12 = a1;
      v13 = sub_22CA20AF0();
      v14 = sub_22CA21000();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v16 = v12;
        v17 = v12;
        _os_log_impl(&dword_22C9CA000, v13, v14, "InteractionData is empty: %@", v15, 0xCu);
        sub_22C9DF60C(v16, &unk_27D9E5090, &qword_22CA22E00);
        MEMORY[0x2318BB680](v16, -1, -1);
        MEMORY[0x2318BB680](v15, -1, -1);
      }

      goto LABEL_8;
    }

    v18 = v9;
    v19 = v10;
    sub_22C9D0434(0, &qword_28143A0A8, 0x277CCAAC8);
    sub_22C9D0434(0, &unk_28143A0B0, 0x277CD3D58);
    v20 = sub_22CA21060();
    if (!v3)
    {
      v29 = v20;
      if (v20)
      {
        v30 = [v20 intent];
        if (v30)
        {
          v31 = v30;
          objc_opt_self();
          v32 = swift_dynamicCastObjCClass();
          if (v32)
          {
            v43 = v32;
            v44 = v31;
            v33 = sub_22C9DDEC8(v8, &selRef_bundleID);
            v35 = 0x6C7070612E6D6F63;
            if (v34)
            {
              v35 = v33;
            }

            v47 = v35;
            if (v34)
            {
              v36 = v34;
            }

            else
            {
              v36 = 0xEE0044494F4E2E65;
            }

            swift_beginAccess();
            v37 = *a2;

            v45 = v36;
            v38 = sub_22CA148CC(v47, v36, v37);

            if (!v38)
            {
              type metadata accessor for MSSuggesterUtils();
              if (sub_22CA1651C(v43, v47, v45))
              {
                swift_beginAccess();

                sub_22C9F9A58(sub_22CA11CC8);
                v39 = *(*a3 + 16);
                sub_22C9F9AE0(v39, sub_22CA11CC8);
                v40 = *a3;
                *(v40 + 16) = v39 + 1;
                v41 = v40 + 16 * v39;
                v42 = v47;
                *(v41 + 32) = v47;
                *(v41 + 40) = v45;
                swift_endAccess();
                swift_beginAccess();
                sub_22CA15904(&v46, v42, v45);
                swift_endAccess();
                sub_22C9FAB40(v18, v19);

                return;
              }
            }

            sub_22C9FAB40(v18, v19);

            goto LABEL_8;
          }
        }

        sub_22C9FAB40(v18, v19);
      }

      else
      {
        sub_22C9FAB40(v18, v19);
      }

LABEL_8:

      return;
    }

    if (qword_28143A1B8 != -1)
    {
      swift_once();
    }

    v21 = sub_22CA20B10();
    sub_22C9D0494(v21, &unk_28143A450);
    v22 = v3;
    v23 = sub_22CA20AF0();
    v24 = sub_22CA21000();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v3;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_22C9CA000, v23, v24, "MSBiomeMediaReader: Error unarchiving interaction: %@", v25, 0xCu);
      sub_22C9DF60C(v26, &unk_27D9E5090, &qword_22CA22E00);
      MEMORY[0x2318BB680](v26, -1, -1);
      MEMORY[0x2318BB680](v25, -1, -1);
      sub_22C9FAB40(v18, v19);
    }

    else
    {
      sub_22C9FAB40(v18, v19);
    }
  }
}

void sub_22C9F8EBC()
{
  sub_22C9DAEF8();
  v2 = v1;
  v49 = v3;
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v5 = sub_22C9D71B4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  sub_22C9FB048();
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v11 = qword_28143A4B0;
  if (qword_28143A1C0 != -1)
  {
    swift_once();
  }

  v12 = sub_22CA20AE0();
  v13 = sub_22C9D0494(v12, &unk_28143A468);
  sub_22C9FB008(v13);
  v50 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22CA20AC0();
  sub_22C9D7260();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_22C9D7260();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84FA0];
  v17 = [BiomeLibrary() App];
  v50 = v11;
  v18 = v17;
  swift_unknownObjectRelease();
  v19 = [v18 Intents];
  sub_22C9FB0F4();
  swift_unknownObjectRelease();
  v20 = [v14 Transcript];
  v48 = v20;
  swift_unknownObjectRelease();
  v21 = sub_22CA209F0();
  sub_22C9E054C(v21);
  v23 = *(v22 + 16);
  v23(v10, v2, v21);
  sub_22C9FB030();
  sub_22C9D0B98(v24, v25, v26, v21);
  v23(v0, v49, v21);
  sub_22C9FB030();
  sub_22C9D0B98(v27, v28, v29, v21);
  v30 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v36 = sub_22C9F97A0(v31, v32, v33, v34, v35);
  v37 = [v20 publisherWithOptions_];
  v55 = sub_22C9FAD08;
  v56 = v16;
  v51 = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22C9FAF44;
  v54 = &unk_283FCDC38;
  v38 = _Block_copy(&v51);

  v39 = [v37 filterWithIsIncluded_];
  _Block_release(v38);

  v55 = sub_22C9FAEA4;
  v56 = 0;
  v51 = MEMORY[0x277D85DD0];
  sub_22C9FAFA0();
  v53 = v40;
  v54 = &unk_283FCDC60;
  v41 = _Block_copy(&v51);
  sub_22C9FB018();
  v42 = swift_allocObject();
  *(v42 + 16) = v16;
  *(v42 + 24) = v15;
  v55 = sub_22C9FAD10;
  v56 = v42;
  v51 = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_22C9FAF40;
  v54 = &unk_283FCDCB0;
  v43 = _Block_copy(&v51);
  v44 = v56;

  v45 = [v39 sinkWithCompletion:v41 receiveInput:v43];
  v46 = sub_22C9FB0F4();
  _Block_release(v46);
  _Block_release(v41);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22CA20AC0();

  sub_22C9FAFE8();
  swift_beginAccess();
  v47 = *(v15 + 16);

  sub_22C9DAF14();
}

uint64_t sub_22C9F93A8(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = v3;
  v5 = [v3 resolvedAction];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  if (![v4 source])
  {
LABEL_21:

    goto LABEL_22;
  }

  v7 = sub_22C9DDEC8(v6, &selRef_identifier);
  if (v8)
  {
    if (v7 == 0xD000000000000014 && v8 == 0x800000022CA27930)
    {
LABEL_18:

      goto LABEL_19;
    }

    v10 = sub_22CA21360();

    if (v10)
    {
      goto LABEL_19;
    }
  }

  v11 = sub_22C9DDEC8(v6, &selRef_identifier);
  if (!v12)
  {
LABEL_16:

LABEL_17:
LABEL_22:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 == 0x6964754179616C50 && v12 == 0xEF746E65746E496FLL)
  {
    goto LABEL_18;
  }

  v14 = sub_22CA21360();

  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v15 = sub_22C9DDEC8(v4, &selRef_bundleID);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v15;
  v18 = v16;
  swift_beginAccess();
  v19 = *(a2 + 16);

  LOBYTE(v17) = sub_22CA148CC(v17, v18, v19);

  v20 = v17 ^ 1;
  return v20 & 1;
}

void sub_22C9F9580(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = MEMORY[0x2318BB0B0]();
  a4(a1, a2 + 16, a3 + 16);

  objc_autoreleasePoolPop(v8);
}

id sub_22C9F95F8(void *a1, uint64_t *a2, uint64_t *a3)
{
  result = [a1 eventBody];
  if (result)
  {
    v6 = result;
    v7 = sub_22C9DDEC8(result, &selRef_bundleID);
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x6C7070612E6D6F63;
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xEE0044494F4E2E65;
    }

    swift_beginAccess();
    v11 = *a2;

    v12 = sub_22CA148CC(v9, v10, v11);

    if (v12)
    {
    }

    else
    {
      swift_beginAccess();

      sub_22C9F9A58(sub_22CA11CC8);
      v13 = *(*a3 + 16);
      sub_22C9F9AE0(v13, sub_22CA11CC8);
      v14 = *a3;
      *(v14 + 16) = v13 + 1;
      v15 = v14 + 16 * v13;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      swift_endAccess();
      swift_beginAccess();
      sub_22CA15904(&v16, v9, v10);
      swift_endAccess();
    }
  }

  return result;
}

id sub_22C9F97A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_22CA209F0();
  v13 = 0;
  if (sub_22C9D68B0(a1, 1, v12) != 1)
  {
    v13 = sub_22CA209A0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_22C9D68B0(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_22CA209A0();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_22C9F98E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C9F992C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C9F99D8(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v4 = *(v3 + 16);
    }

    sub_22CA11A28();
    v3 = v5;
  }

  *v1 = v3;
}

uint64_t sub_22C9F9A58(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_22C9F9AB4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_22CA20EE0();
  }

  return result;
}

uint64_t sub_22C9F9AE0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_22C9F9B28(uint64_t a1, uint64_t a2)
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

  sub_22C9D02E4(&qword_27D9E4F70, &unk_22CA23EA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_22C9F9BA4(uint64_t a1, uint64_t a2)
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

  sub_22C9D02E4(&qword_27D9E4F58, &unk_22CA24D80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

uint64_t sub_22C9F9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22CA21360() & 1;
  }
}

uint64_t sub_22C9F9CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 != a3 || a2 != a4)
    {
      return sub_22CA21360() & 1;
    }

    return 1;
  }

  return v4;
}

void sub_22C9F9D1C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_22C9E6DA0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318BAD10](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_22C9F9E10(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_22C9F9EC0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

void sub_22C9F9F74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C9D02E4(&qword_27D9E4F68, &qword_22CA23E98);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for MSPlayMediaAppIntent();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22C9FA050(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C9D02E4(&qword_27D9E4F68, &qword_22CA23E98);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for MSSuggestion(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_22C9FA12C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22C9F9BA4(*(a1 + 16), 0);
  v4 = sub_22C9FA960(&v6, v3 + 4, v1, a1);

  sub_22C9E297C();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22C9FA1FC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22CA21290();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22CA211D0();
  *v1 = result;
  return result;
}

uint64_t sub_22C9FA29C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_22CA20940();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2318BA4A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2318BA4B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_22C9FA314(void *a1)
{
  v1 = [a1 interaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22CA20970();

  return v3;
}

void (*sub_22C9FA378(uint64_t a1, unint64_t a2, uint64_t a3))(id *)
{
  sub_22C9FB064(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x2318BAD10](v5, v4);
  }

  *v3 = v7;
  return sub_22C9FAEE0;
}

void (*sub_22C9FA3E0(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  sub_22C9FB064(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x2318BAD10](v5, v4);
  }

  *v3 = v7;
  return sub_22C9FA448;
}

uint64_t sub_22C9FA554(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_22C9FA5A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_22CA21290();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C9FA5F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22CA21290();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22C9E6DA0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for MSPlayMediaAppIntent();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22C9FADFC(&qword_27D9E4F78, &qword_27D9E4DA8, &qword_22CA232F0);
        for (i = 0; i != v7; ++i)
        {
          sub_22C9D02E4(&qword_27D9E4DA8, &qword_22CA232F0);
          v9 = sub_22C9FA3E0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9FA780(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22CA21290();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22C9E6DA0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for MSSuggestion(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22C9FADFC(&qword_27D9E4F60, &unk_27D9E47C0, &qword_22CA23E90);
        for (i = 0; i != v7; ++i)
        {
          sub_22C9D02E4(&unk_27D9E47C0, &qword_22CA23E90);
          v9 = sub_22C9FA378(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9FA960(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

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

uint64_t sub_22C9FAB40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22C9FAB54(a1, a2);
  }

  return a1;
}

uint64_t sub_22C9FAB54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22C9FABAC(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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

uint64_t sub_22C9FAD40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_22C9FB03C();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C9FAD88(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  sub_22C9FB018();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C9FADFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C9D0584(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C9FAFC4(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = MEMORY[0x277D85DD0];
  return result;
}

unint64_t sub_22C9FB064(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_22C9CC3A0(a3);

  return sub_22C9CC3AC(a2, v5, a3);
}

id MSWorkoutManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *MSWorkoutManager.healthStore.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MediaSuggester16MSWorkoutManager_healthStore);
  v2 = v1;
  return v1;
}

id MSWorkoutManager.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *&v0[OBJC_IVAR____TtC14MediaSuggester16MSWorkoutManager_healthStore] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MSWorkoutManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_22C9FB214(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = v3;
  *(v4 + 176) = a2;
  *(v4 + 336) = a1;
  v5 = sub_22C9D02E4(&qword_27D9E4F98, &qword_22CA23EC8);
  *(v4 + 200) = v5;
  sub_22C9FC4C0(v5);
  *(v4 + 208) = v6;
  v8 = *(v7 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  v9 = sub_22CA209F0();
  *(v4 + 224) = v9;
  sub_22C9FC4C0(v9);
  *(v4 + 232) = v10;
  v12 = *(v11 + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  v13 = sub_22CA20AB0();
  *(v4 + 264) = v13;
  sub_22C9FC4C0(v13);
  *(v4 + 272) = v14;
  v16 = *(v15 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C9FB3A0, 0, 0);
}

uint64_t sub_22C9FB3A0(id a1, uint64_t a2)
{
  v3 = *(*(v2 + 192) + OBJC_IVAR____TtC14MediaSuggester16MSWorkoutManager_healthStore);
  *(v2 + 288) = v3;
  if (v3)
  {
    v4 = *(v2 + 336);
    if (__OFSUB__(84, v4))
    {
      __break(1u);
    }

    else
    {
      if (v4 == 84)
      {
        v4 = 3000;
        goto LABEL_9;
      }

      if ((v4 & 0x80000000) == 0)
      {
LABEL_9:
        *(v2 + 296) = v4;
        v12 = *(v2 + 280);
        v13 = *(v2 + 256);
        v14 = *(v2 + 216);
        v16 = *(v2 + 176);
        v15 = *(v2 + 184);
        v17 = v3;
        sub_22CA20A80();
        sub_22CA20A60();
        v18 = objc_opt_self();
        v19 = sub_22CA209A0();
        v20 = sub_22CA209A0();
        v21 = [v18 predicateForSamplesWithStartDate:v19 endDate:v20 options:1];
        *(v2 + 304) = v21;

        sub_22C9D02E4(&qword_27D9E4FA0, &qword_22CA23ED0);
        v22 = sub_22C9D02E4(&qword_27D9E4FA8, &qword_22CA23ED8);
        sub_22C9FC4C0(v22);
        v24 = *(v23 + 72);
        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        *(swift_allocObject() + 16) = xmmword_22CA22F90;
        sub_22C9FBF58();
        v27 = v21;
        sub_22CA20D70();

        sub_22C9D02E4(&qword_27D9E4FB8, &qword_22CA23EE0);
        v28 = sub_22C9D02E4(&unk_27D9E4FC0, &unk_22CA23EE8);
        sub_22C9FC4C0(v28);
        v30 = *(v29 + 72);
        v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        *(swift_allocObject() + 16) = xmmword_22CA22F90;
        KeyPath = swift_getKeyPath();
        MEMORY[0x2318BA460](KeyPath, 1);
        sub_22CA20D80();
        v34 = *(MEMORY[0x277CCB608] + 4);
        v35 = swift_task_alloc();
        *(v2 + 312) = v35;
        *v35 = v2;
        v35[1] = sub_22C9FB718;
        v36 = *(v2 + 216);
        a2 = *(v2 + 200);
        a1 = v17;

        return MEMORY[0x282120380](a1, a2);
      }
    }

    __break(1u);
    return MEMORY[0x282120380](a1, a2);
  }

  v5 = *(v2 + 280);
  v6 = *(v2 + 248);
  v7 = *(v2 + 256);
  v8 = *(v2 + 240);
  v9 = *(v2 + 216);

  v10 = *(v2 + 8);

  return v10(0);
}

uint64_t sub_22C9FB718(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_22C9FBD70;
  }

  else
  {
    v5 = sub_22C9FB82C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C9FB82C()
{
  v1 = MEMORY[0x277D84F90];
  v87 = MEMORY[0x277D84F90];
  result = sub_22C9E6DA0(*(v0 + 320));
  if (!result)
  {
LABEL_43:
    v68 = *(v0 + 320);
    v69 = *(v0 + 304);
    v70 = *(v0 + 288);

    v72 = *(v0 + 272);
    v71 = *(v0 + 280);
    v74 = *(v0 + 256);
    v73 = *(v0 + 264);
    v75 = *(v0 + 224);
    v76 = *(v0 + 232);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v76 + 8))(v74, v75);
    (*(v72 + 8))(v71, v73);
    v77 = *(v0 + 280);
    v79 = *(v0 + 248);
    v78 = *(v0 + 256);
    v80 = *(v0 + 240);
    v81 = *(v0 + 216);

    v82 = *(v0 + 8);

    return v82(v1);
  }

  v3 = result;
  if (result < 1)
  {
    goto LABEL_47;
  }

  v4 = 0;
  v5 = *(v0 + 320);
  v6 = v5 & 0xC000000000000001;
  v85 = "associatedActivities";
  v86 = v5 + 32;
  v84 = "CoordinatesLatitude";
  while (1)
  {
    if (v6)
    {
      v7 = MEMORY[0x2318BAD10](v4, *(v0 + 320));
    }

    else
    {
      v7 = *(v86 + 8 * v4);
    }

    v8 = v7;
    v9 = *(v0 + 336);
    result = [v7 workoutActivityType];
    v10 = result;
    if (v9 != 84)
    {
      if (result == *(v0 + 296))
      {
        v23 = v8;
        v24 = sub_22C9FC1D8(v23);
        if (!v24)
        {

          goto LABEL_40;
        }

        v25 = v24;
        v26 = 0.0;
        if (*(v24 + 16))
        {
          v27 = sub_22C9FC50C();
          v29 = sub_22C9FBFA8(v27, v28);
          if (v30)
          {
            sub_22C9D66FC(*(v25 + 56) + 32 * v29, v0 + 16);
            if (swift_dynamicCast())
            {
              v26 = *(v0 + 152);
            }
          }
        }

        if (*(v25 + 16) && (v31 = sub_22C9FC4D0(), v33 = sub_22C9FBFA8(v31, v32), (v34 & 1) != 0))
        {
          sub_22C9D66FC(*(v25 + 56) + 32 * v33, v0 + 48);

          if (swift_dynamicCast())
          {
            v35 = *(v0 + 144);
            goto LABEL_36;
          }
        }

        else
        {
        }

        v35 = 0.0;
LABEL_36:
        v53 = *(v0 + 240);
        v52 = *(v0 + 248);
        v54 = *(v0 + 336);
        v55 = v23;
        v56 = [v55 startDate];
        sub_22CA209D0();

        v57 = [v55 endDate];
        sub_22CA209D0();

        v58 = objc_allocWithZone(type metadata accessor for MSWorkoutItem());
        v59 = MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(v54, v52, v53, v26, v35);
        v60 = MEMORY[0x2318BA9F0]();
        sub_22C9FC520(v60, v61, v62, v63, v64, v65, v66, v67, v83, v84, v85, v86, v87);
        if (v51)
        {
          sub_22C9FC4E8();
        }

        sub_22CA20F00();

LABEL_39:
        v1 = v87;
        goto LABEL_40;
      }

      goto LABEL_28;
    }

    if (result >> 31)
    {
      break;
    }

    v8 = v8;
    v11 = sub_22C9FC1D8(v8);
    if (v11)
    {
      v12 = v11;
      v13 = 0.0;
      if (*(v11 + 16))
      {
        v14 = sub_22C9FC50C();
        v16 = sub_22C9FBFA8(v14, v15);
        if (v17)
        {
          sub_22C9D66FC(*(v12 + 56) + 32 * v16, v0 + 80);
          if (swift_dynamicCast())
          {
            v13 = *(v0 + 168);
          }
        }
      }

      if (*(v12 + 16) && (v18 = sub_22C9FC4D0(), v20 = sub_22C9FBFA8(v18, v19), (v21 & 1) != 0))
      {
        sub_22C9D66FC(*(v12 + 56) + 32 * v20, v0 + 112);

        if (swift_dynamicCast())
        {
          v22 = *(v0 + 160);
LABEL_31:
          v37 = *(v0 + 240);
          v36 = *(v0 + 248);
          v38 = v8;
          v39 = [v38 startDate];
          sub_22CA209D0();

          v40 = [v38 endDate];
          sub_22CA209D0();

          v41 = objc_allocWithZone(type metadata accessor for MSWorkoutItem());
          v42 = MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(v10, v36, v37, v13, v22);
          v43 = MEMORY[0x2318BA9F0]();
          sub_22C9FC520(v43, v44, v45, v46, v47, v48, v49, v50, v83, v84, v85, v86, v87);
          if (v51)
          {
            sub_22C9FC4E8();
          }

          sub_22CA20F00();

          goto LABEL_39;
        }
      }

      else
      {
      }

      v22 = 0.0;
      goto LABEL_31;
    }

LABEL_28:

LABEL_40:
    if (v3 == ++v4)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_22C9FBD70()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v13 = *(v0 + 264);
  v14 = *(v0 + 248);
  v5 = *(v0 + 232);
  v15 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v13);

  v10 = *(v0 + 8);
  v11 = *(v0 + 328);

  return v10();
}

void sub_22C9FBE88(id *a1)
{
  v1 = [*a1 endDate];
  sub_22CA209D0();
}

BOOL sub_22C9FBEE8(_BOOL8 result, int a2)
{
  if (!__OFSUB__(a2, result))
  {
    return a2 == result;
  }

  __break(1u);
  return result;
}

id MSWorkoutManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSWorkoutManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22C9FBF58()
{
  result = qword_27D9E4FB0;
  if (!qword_27D9E4FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E4FB0);
  }

  return result;
}

unint64_t sub_22C9FBFA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22CA21440();
  sub_22CA20E60();
  v6 = sub_22CA21490();

  return sub_22C9FC064(a1, a2, v6);
}

unint64_t sub_22C9FC020(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22CA210C0();

  return sub_22C9FC118(a1, v5);
}

unint64_t sub_22C9FC064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_22CA21360() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22C9FC118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for MSWorkoutItem();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_22CA210D0();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22C9FC1D8(void *a1)
{
  v2 = [a1 metadata];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22CA20DB0();

  return v3;
}

uint64_t dispatch thunk of MSWorkoutManager.workouts(of:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22C9FC3B0;

  return v12(a1, a2, a3);
}

uint64_t sub_22C9FC3B0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22C9FC4E8()
{

  return sub_22CA20EE0();
}

void *sub_22C9FC5D4()
{
  v1 = *(v0 + OBJC_IVAR___MSFeedbackAction_suggestion);
  v2 = v1;
  return v1;
}

uint64_t sub_22C9FC660(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___MSFeedbackAction_suggestion);
  *(v1 + OBJC_IVAR___MSFeedbackAction_suggestion) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22C9FC6CC()
{
  v1 = *(v0 + OBJC_IVAR___MSFeedbackAction_suggestionBundleID);
  v2 = *(v0 + OBJC_IVAR___MSFeedbackAction_suggestionBundleID + 8);

  return v1;
}

uint64_t sub_22C9FC788(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSFeedbackAction_suggestionBundleID);
  v4 = *(v2 + OBJC_IVAR___MSFeedbackAction_suggestionBundleID + 8);
  *v3 = a1;
  v3[1] = a2;
}

id sub_22C9FC7A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR___MSFeedbackAction_suggestion;
  *(v4 + OBJC_IVAR___MSFeedbackAction_suggestion) = 0;
  v6 = (v4 + OBJC_IVAR___MSFeedbackAction_suggestionBundleID);
  *v6 = 0;
  v6[1] = 0;
  *(v4 + OBJC_IVAR___MSFeedbackAction_type) = a1;
  *(v4 + v5) = a2;
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = MSFeedbackAction;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t MSFeedbackAction.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 type];
  v4 = [v1 suggestion];
  v5 = sub_22C9FD3A0(v1);
  v7 = v6;
  v8 = objc_allocWithZone(MSFeedbackAction);
  v9 = sub_22C9FD318(v3, v4, v5, v7);
  result = type metadata accessor for MSFeedbackAction();
  a1[3] = result;
  *a1 = v9;
  return result;
}

Swift::Void __swiftcall MSFeedbackAction.encode(with:)(NSCoder with)
{
  v3 = [v1 type];
  v4 = sub_22CA20E10();
  [(objc_class *)with.super.isa encodeInt32:v3 forKey:v4];

  v5 = [v1 suggestion];
  v6 = sub_22C9FD448();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  sub_22C9FD3A0(v1);
  if (v7)
  {
    v8 = sub_22CA20E10();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22C9FD470();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

id MSFeedbackAction.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = OBJC_IVAR___MSFeedbackAction_suggestion;
  *&v1[OBJC_IVAR___MSFeedbackAction_suggestion] = 0;
  v4 = &v1[OBJC_IVAR___MSFeedbackAction_suggestionBundleID];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = sub_22C9FD448();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {

LABEL_15:
    sub_22C9D027C(&v24);
    goto LABEL_16;
  }

  type metadata accessor for MSSuggestion(0);
  if ((sub_22C9FD490() & 1) == 0)
  {

LABEL_16:
    v17 = *(v4 + 1);

    type metadata accessor for MSFeedbackAction();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v20;
  v8 = sub_22C9FD470();
  v9 = [a1 decodeObjectForKey_];

  if (v9)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {

    goto LABEL_15;
  }

  if ((sub_22C9FD490() & 1) == 0)
  {

    goto LABEL_16;
  }

  v10 = v20;
  v11 = v21;
  v12 = sub_22CA20E10();
  v13 = [a1 decodeInt32ForKey_];

  *&v1[OBJC_IVAR___MSFeedbackAction_type] = v13;
  v14 = *&v1[v3];
  *&v1[v3] = v7;

  v15 = *(v4 + 1);
  *v4 = v10;
  *(v4 + 1) = v11;

  v19.receiver = v1;
  v19.super_class = MSFeedbackAction;
  v16 = objc_msgSendSuper2(&v19, sel_init);

  return v16;
}

uint64_t MSFeedbackAction.isEqual(_:)(uint64_t a1)
{
  sub_22C9D032C(a1, v16);
  if (!v17)
  {
    sub_22C9D027C(v16);
    goto LABEL_23;
  }

  type metadata accessor for MSFeedbackAction();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v13 = 0;
    return v13 & 1;
  }

  v2 = [v1 type];
  if (v2 != [v15 type])
  {
LABEL_22:

    goto LABEL_23;
  }

  v3 = sub_22C9FD3A0(v1);
  v5 = v4;
  v6 = sub_22C9FD3A0(v15);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
LABEL_14:

    goto LABEL_23;
  }

  if (v3 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_22CA21360();

    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_16:
  v10 = [v1 suggestion];
  v11 = [v15 suggestion];
  v12 = v11;
  if (!v10)
  {

    if (!v12)
    {
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_23;
  }

  if (!v11)
  {

    goto LABEL_22;
  }

  type metadata accessor for MSSuggestion(0);
  v13 = sub_22CA210D0();

  return v13 & 1;
}

id MSFeedbackAction.hash.getter()
{
  result = [v0 suggestion];
  if (result)
  {
    v2 = result;
    v3 = sub_22CA210F0();

    return v3;
  }

  return result;
}

id MSFeedbackAction.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_22C9FD318(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = sub_22CA20E10();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithType:a1 suggestion:a2 suggestionBundleID:v7];

  return v8;
}

uint64_t sub_22C9FD3A0(void *a1)
{
  v1 = [a1 suggestionBundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22CA20E20();

  return v3;
}

unint64_t type metadata accessor for MSFeedbackAction()
{
  result = qword_27D9E4FF0;
  if (!qword_27D9E4FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E4FF0);
  }

  return result;
}

uint64_t sub_22C9FD448()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9FD470()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9FD490()
{

  return swift_dynamicCast();
}

uint64_t sub_22C9FD4B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22C9FD538(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C9FD610(char a1)
{
  result = 0x636E657571657266;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F63536C616E6966;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 13:
      sub_22C9FE4BC();
      result = v12 + 7;
      break;
    case 5:
      sub_22C9FE4BC();
      result = v10 + 20;
      break;
    case 6:
      sub_22C9FE4BC();
      result = v13 | 4;
      break;
    case 7:
      sub_22C9FE4BC();
      result = v8 + 11;
      break;
    case 8:
    case 23:
      sub_22C9FE4BC();
      result = v16 + 24;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x6144664F656D6974;
      break;
    case 11:
      sub_22C9FE4BC();
      result = v5 - 1;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x7974697669746361;
      break;
    case 16:
      sub_22C9FE4BC();
      result = v4 | 6;
      break;
    case 17:
      sub_22C9FE4BC();
      result = v9 + 13;
      break;
    case 18:
      sub_22C9FE4BC();
      result = v14 + 26;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 20:
    case 22:
      sub_22C9FE4BC();
      result = v15 + 17;
      break;
    case 21:
      sub_22C9FE4BC();
      result = v11 + 30;
      break;
    case 24:
      sub_22C9FE4BC();
      result = v7 + 37;
      break;
    case 25:
      sub_22C9FE4BC();
      result = v6 + 1;
      break;
    case 27:
      sub_22C9FE4BC();
      result = v3 + 5;
      break;
    default:
      sub_22C9FE4BC();
      result = v17 | 2;
      break;
  }

  return result;
}

uint64_t sub_22C9FD970(char a1)
{
  sub_22CA21440();
  sub_22C9FD610(a1);
  sub_22CA20E60();

  return sub_22CA21490();
}

uint64_t sub_22C9FD9E0(uint64_t a1, char a2)
{
  sub_22C9FD610(a2);
  sub_22CA20E60();
}

uint64_t sub_22C9FDA34()
{
  sub_22CA20E60();
}

uint64_t sub_22C9FDAB8()
{
  sub_22CA21440();
  sub_22CA20E60();

  return sub_22CA21490();
}

uint64_t sub_22C9FDB50(uint64_t a1, char a2)
{
  sub_22CA21440();
  sub_22C9FD610(a2);
  sub_22CA20E60();

  return sub_22CA21490();
}

uint64_t sub_22C9FDBB0(char a1)
{
  if (a1)
  {
    return 0x6574736567677573;
  }

  else
  {
    return 0x64656D75736E6F63;
  }
}

id sub_22C9FDC00()
{
  v0 = sub_22CA20A90();
  v1 = sub_22C9DAE90(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C9E05D0();
  v8 = v7 - v6;
  v9 = sub_22CA20AB0();
  v10 = sub_22C9DAE90(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C9E05D0();
  v17 = v16 - v15;
  v18 = sub_22CA209F0();
  v19 = sub_22C9DAE90(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C9E05D0();
  v26 = v25 - v24;
  sub_22CA20980();
  sub_22CA20A80();
  (*(v3 + 104))(v8, *MEMORY[0x277CC9980], v0);
  v27 = sub_22CA20AA0();
  (*(v3 + 8))(v8, v0);
  if ((v27 - 6) > 5)
  {
    if ((v27 - 12) > 4)
    {
      v29 = objc_opt_self();
      if ((v27 - 17) > 3)
      {
        v28 = [v29 featureValueWithDouble_];
      }

      else
      {
        v28 = [v29 featureValueWithDouble_];
      }
    }

    else
    {
      v28 = [objc_opt_self() featureValueWithDouble_];
    }
  }

  else
  {
    v28 = [objc_opt_self() featureValueWithDouble_];
  }

  v30 = v28;
  (*(v12 + 8))(v17, v9);
  (*(v21 + 8))(v26, v18);
  return v30;
}

id sub_22C9FDEC0(int a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 6:
    case 8:
    case 9:
    case 11:
    case 16:
    case 18:
    case 23:
    case 25:
    case 27:
    case 28:
    case 36:
    case 37:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 49:
    case 51:
    case 54:
    case 55:
    case 56:
    case 60:
    case 61:
    case 63:
    case 64:
    case 65:
    case 68:
    case 71:
    case 77:
    case 81:
    case 82:
    case 83:
      v1 = [objc_opt_self() featureValueWithDouble_];
      break;
    case 2:
    case 7:
    case 12:
    case 19:
    case 21:
    case 29:
    case 33:
    case 38:
    case 52:
    case 57:
    case 58:
    case 62:
    case 66:
    case 72:
    case 78:
    case 80:
      v2 = objc_opt_self();
      v3 = [v2 featureValueWithDouble_];
      v1 = [v2 featureValueWithDouble_];

      break;
    case 4:
    case 5:
    case 10:
    case 13:
    case 14:
    case 15:
    case 17:
    case 20:
    case 22:
    case 24:
    case 26:
    case 30:
    case 31:
    case 32:
    case 34:
    case 35:
    case 39:
    case 40:
    case 42:
    case 47:
    case 48:
    case 50:
    case 53:
    case 59:
    case 67:
    case 69:
    case 70:
    case 73:
    case 74:
    case 75:
    case 76:
    case 79:
      v1 = [objc_opt_self() featureValueWithDouble_];
      break;
    default:
      v1 = [objc_opt_self() featureValueWithDouble_];
      break;
  }

  return v1;
}

uint64_t sub_22C9FE028()
{
  v0 = sub_22CA21380();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22C9FE0A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C9FE028();
  *a2 = result;
  return result;
}

uint64_t sub_22C9FE0D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9FD610(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22C9FE100()
{
  result = qword_27D9E4FF8;
  if (!qword_27D9E4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4FF8);
  }

  return result;
}

uint64_t sub_22C9FE154(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_22C9FE1DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C9FE2C0()
{
  v0 = sub_22CA21320();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C9FE338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C9FE2C0();
  *a2 = result;
  return result;
}

uint64_t sub_22C9FE368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9FDBB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22C9FE398()
{
  result = qword_27D9E5000;
  if (!qword_27D9E5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E5000);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MSSuggestionError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22C9FE418(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C9FE458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_22C9FE518()
{
  sub_22C9D02E4(&qword_27D9E4E48, &unk_22CA243F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CA22F80;
  *(inited + 32) = 0x6144664F656D6974;
  *(inited + 40) = 0xE900000000000079;
  [*(v0 + 16) doubleValue];
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 featureValueWithDouble_];
  v6 = sub_22C9EED80();
  *(inited + 48) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000022CA25C10;
  [*v0 doubleValue];
  *(inited + 96) = [v4 featureValueWithDouble_];
  *(inited + 120) = v6;
  strcpy((inited + 128), "activityType");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v7 = [v4 featureValueWithInt64_];
  *(inited + 168) = v6;
  *(inited + 144) = v7;
  sub_22CA20DD0();
  v8 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  sub_22CA04300();
  return sub_22CA17474();
}

void sub_22C9FEA28()
{
  sub_22CA0467C();
  v4 = v1;
  v202 = v5;
  v201 = sub_22CA20AB0();
  v6 = sub_22C9DAE90(v201);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22CA0431C();
  v200 = v11;
  sub_22CA045EC();
  v199 = sub_22CA20900();
  v12 = sub_22C9DAE90(v199);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C9E05C0();
  v186 = (v17 - v18);
  sub_22CA045E0();
  MEMORY[0x28223BE20](v19);
  sub_22CA045D4();
  v188 = v20;
  sub_22CA045EC();
  v198 = sub_22CA209F0();
  v21 = sub_22C9DAE90(v198);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C9E05C0();
  v189 = v26 - v27;
  sub_22CA045E0();
  MEMORY[0x28223BE20](v28);
  v197 = &v178 - v29;
  sub_22CA045E0();
  MEMORY[0x28223BE20](v30);
  sub_22CA045D4();
  v205 = v31;
  sub_22C9FAFE8();
  swift_beginAccess();
  v203 = v0;
  v32 = *(v0 + 16);
  v34 = *(v32 + 64);
  v33 = v32 + 64;
  sub_22CA0435C(*(v0 + 16));
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  v196 = *MEMORY[0x277CC9968];
  v194 = v8 + 8;
  v195 = v23 + 8;
  v193 = v14 + 8;

  v41 = 0;
  v192 = xmmword_22CA22F90;
  v42 = 0.0;
  v184 = v40;
  v179 = v39;
  v180 = v33;
  if (!v37)
  {
    while (1)
    {
LABEL_3:
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (v43 >= v39)
      {
        break;
      }

      v37 = *(v33 + 8 * v43);
      ++v41;
      if (v37)
      {
        v208 = v4;
        goto LABEL_7;
      }
    }

    v208 = v4;

    v142 = *(v203 + 16);
    v144 = *(v142 + 64);
    v143 = v142 + 64;
    sub_22CA0435C(*(v203 + 16));
    v147 = v146 & v145;
    v149 = (v148 + 63) >> 6;

    v151 = 0;
    v200 = v150;
    while (v147)
    {
      v152 = v147;
LABEL_48:
      v147 = (v152 - 1) & v152;
      if (v42 != 0.0)
      {
        v206 = ((v152 - 1) & v152);
        v154 = __clz(__rbit64(v152)) | (v151 << 6);
        v155 = (*(v150 + 48) + 16 * v154);
        v157 = *v155;
        v156 = v155[1];
        v158 = *(*(v150 + 56) + 72 * v154 + 56);
        v159 = v203;
        sub_22CA04310();
        swift_beginAccess();

        v160 = *(v159 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v209[0] = *(v159 + 16);
        *(v159 + 16) = 0x8000000000000000;
        v161 = v157;
        v207 = v156;
        sub_22C9FBFA8(v157, v156);
        sub_22CA04264();
        v166 = v164 + v165;
        if (__OFADD__(v164, v165))
        {
          goto LABEL_64;
        }

        v167 = v163;
        v205 = v162;
        sub_22C9D02E4(&qword_27D9E4F18, &unk_22CA23D38);
        if (sub_22CA21250())
        {
          sub_22C9FBFA8(v161, v207);
          sub_22CA04244();
          if (!v114)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v168 = v205;
        }

        if ((v167 & 1) == 0)
        {
          goto LABEL_67;
        }

        v169 = v209[0];
        v170 = sub_22CA04458(v168);
        if (!v166)
        {
          goto LABEL_67;
        }

        v172 = *(v171 + 7);
        v204 = v171[6];
        v205 = v172;
        v173 = *(v171 + 5);
        v201 = *(v171 + 4);
        v202 = v173;
        v175 = *(v171 + 2);
        v174 = *(v171 + 3);
        v176 = *(v171 + 1);
        v177 = v158 / v42;
        v222 = v166;
        v223 = v176;
        v224 = v175;
        v225 = v174;
        v226 = v201;
        v227 = v173;
        v228 = v204;
        v229 = v172;
        v230 = v177;
        sub_22CA04704(v170);
        v213 = v166;
        v214 = v176;
        v215 = v175;
        v216 = v174;
        v217 = v201;
        v218 = v202;
        v219 = v204;
        v220 = v205;
        v221 = v177;
        sub_22CA03FFC(&v222, v212);
        sub_22CA0406C(&v213);
        *(v203 + 16) = v169;
        swift_endAccess();

        v150 = v200;
        v147 = v206;
      }
    }

    while (1)
    {
      v153 = v151 + 1;
      if (__OFADD__(v151, 1))
      {
        break;
      }

      if (v153 >= v149)
      {

        goto LABEL_59;
      }

      v152 = *(v143 + 8 * v153);
      ++v151;
      if (v152)
      {
        v151 = v153;
        goto LABEL_48;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  while (2)
  {
    v208 = v4;
    v43 = v41;
LABEL_7:
    v181 = v43;
    v182 = (v37 - 1) & v37;
    v44 = __clz(__rbit64(v37)) | (v43 << 6);
    v45 = *(v40 + 56);
    v46 = (*(v40 + 48) + 16 * v44);
    v47 = v46[1];
    v183 = *v46;
    v48 = (v45 + 72 * v44);
    v49 = *v48;
    v50 = v48[1];
    v190 = *(*v48 + 2);
    v185 = v47;

    v187 = v50;

    v51 = 0.0;
    v191 = v49;
    v52 = v49 + 64;
    v53 = 0.0;
    v54 = 0.0;
    while (v190 != *&v51)
    {
      if (*&v51 >= *(v191 + 2))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      sub_22CA0437C();
      v56 = sub_22CA04468(v55);
      v57 = v49;
      v58 = v208;
      sub_22C9FE518();
      if (v58)
      {
LABEL_40:

LABEL_59:
        sub_22CA04654();
        return;
      }

      sub_22CA046A4();
      v207 = v56;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22CA046E4();
      sub_22CA04564();
      v54 = v54 + v2;
      sub_22CA20980();
      sub_22CA20A80();
      sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
      v59 = sub_22CA20A90();
      sub_22C9DAE90(v59);
      v61 = v60;
      v63 = *(v62 + 72);
      v64 = ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v65 = swift_allocObject();
      *(v65 + 16) = v192;
      (*(v61 + 104))(&v64[v65], v196, v59);
      sub_22CA02080(v65);
      sub_22CA046C4();
      v66 = v188;
      sub_22CA0451C();

      v67 = sub_22CA044B4();
      (v64)(v67);
      v68 = sub_22CA045AC();
      v69(v68);
      v49 = v66;
      v70 = sub_22CA208E0();
      if (v71)
      {
        v3 = 0.0;
      }

      else
      {
        v3 = v70;
      }

      v72 = *(v203 + 24);

      exp(-0.693147181 / v72 * v3);
      v73 = sub_22CA04490();
      v74(v73);
      (v64)(v205, v59);
      v51 = v204;
      v53 = v53 + v2;
      v52 += 40;
    }

    v178 = v42;
    v75 = 0.0;
    v76 = v187;
    v190 = *(v187 + 2);
    v77 = v187 + 64;
    v78 = 0.0;
    v79 = 0.0;
    while (v190 != *&v75)
    {
      v80 = v208;
      if (*&v75 >= *(v76 + 2))
      {
        goto LABEL_61;
      }

      sub_22CA0437C();
      v231 = v49;
      v232 = v81;
      v233 = v82;
      v234 = v83;
      v235 = v84;
      v236 = v3;
      v56 = v83;
      v57 = v49;
      sub_22C9FE518();
      if (v80)
      {
        goto LABEL_40;
      }

      sub_22CA046A4();
      v207 = v56;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22CA046E4();
      sub_22CA04564();
      v79 = v79 + v2;
      sub_22CA20980();
      sub_22CA20A80();
      sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
      v85 = sub_22CA20A90();
      sub_22C9DAE90(v85);
      v87 = v86;
      v89 = *(v88 + 72);
      v90 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = v192;
      v93 = *(v87 + 104);
      v92 = (v87 + 104);
      v93(v91 + v90, v196, v85);
      sub_22CA02080(v91);
      sub_22CA046C4();
      v94 = v186;
      sub_22CA0451C();

      v95 = sub_22CA044B4();
      v92(v95);
      v96 = sub_22CA045AC();
      v97(v96);
      v49 = v94;
      v98 = sub_22CA208E0();
      if (v99)
      {
        v3 = 0.0;
      }

      else
      {
        v3 = v98;
      }

      v100 = *(v203 + 24);

      exp(-0.693147181 / v100 * v3);
      v101 = sub_22CA04490();
      v102(v101);
      (v92)(v189, v85);
      v75 = v204;
      v78 = v78 + v2;
      v77 += 40;
      v76 = v187;
    }

    v103 = v203;
    sub_22CA04310();
    swift_beginAccess();
    v104 = *(v103 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v237 = *(v103 + 16);
    sub_22CA04724();
    sub_22CA04264();
    if (__OFADD__(v107, v108))
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v109 = v106;
    v110 = v105;
    v111 = sub_22C9D02E4(&qword_27D9E4F18, &unk_22CA23D38);
    v112 = sub_22CA21250();
    v206 = v111;
    if (v112)
    {
      sub_22C9FBFA8(v183, v185);
      sub_22CA04244();
      if (!v114)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v113 = v110;
    }

    if ((v109 & 1) == 0 || (v115 = sub_22CA04458(v113), !v110))
    {
LABEL_68:
      __break(1u);
      break;
    }

    v117 = v116[7];
    v207 = v116[8];
    v119 = v116[4];
    v118 = v116[5];
    v121 = v116[2];
    v120 = v116[3];
    v122 = v116[1];
    v222 = v110;
    v223 = v122;
    v224 = v121;
    v225 = v120;
    v226 = v119;
    v227 = v118;
    v228 = v54 / v79;
    v229 = v117;
    v230 = *&v207;
    sub_22CA04704(v115);
    v213 = v110;
    v214 = v122;
    v215 = v121;
    v216 = v120;
    v217 = v119;
    v218 = v118;
    v219 = v54 / v79;
    v220 = v117;
    v221 = *&v207;
    sub_22CA03FFC(&v222, v212);
    sub_22CA0406C(&v213);
    v123 = v203;
    *(v203 + 16) = v237;
    swift_endAccess();
    sub_22CA04310();
    swift_beginAccess();
    v124 = *(v123 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v211 = *(v123 + 16);
    sub_22CA04724();
    v126 = v125;
    sub_22CA04264();
    if (__OFADD__(v128, v129))
    {
      goto LABEL_66;
    }

    v130 = v127;
    if (sub_22CA21250())
    {
      sub_22C9FBFA8(v183, v185);
      sub_22CA04244();
      if (!v114)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v131 = v130;
    }

    if (v126)
    {
      v132 = v211;
      v133 = sub_22CA04458(v131);
      v2 = v53 / v78;
      v207 = v134[8];
      v136 = v134[5];
      v135 = v134[6];
      v138 = v134[3];
      v137 = v134[4];
      v139 = v134[1];
      v140 = v134[2];
      v212[0] = v110;
      v212[1] = v139;
      v212[2] = v140;
      v212[3] = v138;
      v212[4] = v137;
      v212[5] = v136;
      v212[6] = v135;
      *&v212[7] = v53 / v78;
      v212[8] = v207;
      memmove((*(v132 + 56) + v133 * v141), v212, 0x48uLL);
      v210[0] = v110;
      v210[1] = v139;
      v210[2] = v140;
      v210[3] = v138;
      v210[4] = v137;
      v210[5] = v136;
      v210[6] = v135;
      *&v210[7] = v53 / v78;
      v210[8] = v207;
      sub_22CA03FFC(v212, v209);
      sub_22CA0406C(v210);
      *(v203 + 16) = v132;
      swift_endAccess();

      v42 = v178 + v53 / v78;
      v33 = v180;
      v41 = v181;
      v4 = v208;
      v40 = v184;
      v39 = v179;
      v37 = v182;
      if (!v182)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  sub_22CA213C0();
  __break(1u);
}

void (*sub_22C9FF600(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_22CA03F30(0x28uLL);
  *a1 = v6;
  v6[4] = sub_22CA029B4(v6, a2, a3);
  return sub_22C9FF674;
}

void sub_22C9FF674(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_22C9FF6C0()
{
  v1 = v0;
  sub_22CA04340();
  sub_22C9FAFE8();
  swift_beginAccess();
  sub_22CA045F8();
  if (v2)
  {

    v3 = sub_22CA04764();
    if (v4)
    {
      v5 = (*(v0 + 56) + 72 * v3);
      v6 = v5[6];
      v7 = v5[7];
      v8 = v5[8];

      sub_22C9D02E4(&qword_27D9E5020, &qword_22CA243D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22CA22F80;
      *(inited + 32) = sub_22C9FD610(v1[32]);
      *(inited + 40) = v10;
      *(inited + 48) = v6;
      *(inited + 56) = sub_22C9FD610(v1[33]);
      *(inited + 64) = v11;
      *(inited + 72) = v7;
      *(inited + 80) = sub_22C9FD610(v1[34]);
      *(inited + 88) = v12;
      *(inited + 96) = v8;
      return sub_22CA20DD0();
    }
  }

  return 0;
}

void sub_22C9FF7D0(void *a1)
{
  sub_22C9DDEC8(a1, &selRef_intentIdentifier);
  if (v3)
  {
    sub_22CA043A4();
    v4 = v1[2];

    sub_22CA04580();
    v5 = sub_22CA04274();
    sub_22C9FE6CC(v5, v6, v7);
  }

  sub_22C9DDEC8(a1, &selRef_bundleID);
  if (v8)
  {
    sub_22CA043A4();
    v9 = v1[4];

    sub_22CA04580();
    v10 = sub_22CA04274();
    sub_22C9FE6CC(v10, v11, v12);
  }

  if ([a1 subtype] == 1 && sub_22CA0477C() - 1 <= 1)
  {
    v13 = v1[3];
    type metadata accessor for MSSuggesterUtils();

    v14 = sub_22CA0477C();
    sub_22CA167EC(v14);
    sub_22CA04580();
    sub_22CA04744();

    sub_22CA044CC();
  }

  else
  {
    sub_22CA044CC();
  }
}

void sub_22C9FF998(void *a1)
{
  sub_22C9DDEC8(a1, &selRef_intentIdentifier);
  if (v3)
  {
    sub_22CA043A4();
    v4 = v1[2];

    sub_22CA04580();
    v5 = sub_22CA04274();
    sub_22C9FE880(v5);
  }

  sub_22C9DDEC8(a1, &selRef_bundleID);
  if (v6)
  {
    sub_22CA043A4();
    v7 = v1[4];

    sub_22CA04580();
    v8 = sub_22CA04274();
    sub_22C9FE880(v8);
  }

  if (sub_22CA0477C() - 1 > 1)
  {
    sub_22CA044CC();
  }

  else
  {
    v9 = v1[3];
    type metadata accessor for MSSuggesterUtils();

    v10 = sub_22CA0477C();
    sub_22CA167EC(v10);
    sub_22CA04580();
    sub_22CA04744();

    sub_22CA044CC();
  }
}

uint64_t sub_22C9FFB48()
{
  v2 = v0;
  v3 = *(v0 + 16);

  sub_22C9FEA28();

  if (!v1)
  {
    v5 = *(v2 + 24);

    sub_22C9FEA28();

    v6 = *(v2 + 32);

    sub_22C9FEA28();
  }

  return result;
}

id sub_22C9FFBE8(void *a1)
{
  v2 = v1;
  v4 = sub_22CA20DD0();
  sub_22C9DDEBC(a1);
  if (v5)
  {
    v6 = *(v1 + 16);

    v7 = sub_22C9FF6C0();

    if (v7)
    {

      v4 = v7;
    }
  }

  v8 = *(v2 + 32);

  v9 = [a1 bundleID];
  sub_22CA20E20();

  v10 = sub_22C9FF6C0();

  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v34 = v4;
    sub_22CA041E0();
    sub_22CA02DAC(v10, v11, 0, v12, &v34);
    v4 = v34;
  }

  v13 = [a1 bundleID];
  v14 = sub_22CA20E20();
  v16 = v15;

  if (v14 == 0xD000000000000012 && 0x800000022CA25AB0 == v16)
  {
  }

  else
  {
    v18 = sub_22CA21360();

    if ((v18 & 1) == 0)
    {
      v19 = [a1 suggestionSource] == 0;
      v20 = 0.75;
      v21 = 0.25;
      goto LABEL_14;
    }
  }

  v19 = [a1 suggestionSource] == 0;
  v20 = 0.0;
  v21 = 1.0;
LABEL_14:
  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  sub_22C9D02E4(&qword_27D9E5020, &qword_22CA243D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CA22F80;
  v24 = *(v2 + 24);
  *(inited + 32) = sub_22C9FD610(v24[32]);
  *(inited + 40) = v25;
  *(inited + 48) = v22;
  *(inited + 56) = sub_22C9FD610(v24[33]);
  *(inited + 64) = v26;
  *(inited + 72) = v22;
  *(inited + 80) = sub_22C9FD610(v24[34]);
  *(inited + 88) = v27;
  *(inited + 96) = v22;
  v28 = sub_22CA20DD0();
  swift_isUniquelyReferenced_nonNull_native();
  v34 = v4;
  sub_22CA041E0();
  sub_22CA02DAC(v28, v29, 0, v30, &v34);
  sub_22CA0DD9C(v34);
  v31 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  sub_22CA04300();
  v32 = sub_22CA17474();

  return v32;
}

void *sub_22C9FFF08()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_22C9FFF38()
{
  sub_22C9FFF08();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_22C9FFF6C()
{
  v1 = v0;
  type metadata accessor for MSSuggestionItemAttributeFeedbackRewardFeatureStore();
  sub_22CA04398();
  v2 = swift_allocObject();
  sub_22CA00074(16, 17, 18, 7.0);
  v1[2] = v2;
  sub_22CA04398();
  v3 = swift_allocObject();
  sub_22CA00074(22, 23, 24, 7.0);
  v1[3] = v3;
  sub_22CA04398();
  v4 = swift_allocObject();
  sub_22CA00074(19, 20, 21, 7.0);
  v1[4] = v4;
  return v1;
}

uint64_t (*sub_22CA00028())()
{
  sub_22CA04310();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22CA00074(char a1, char a2, char a3, double a4)
{
  *(v4 + 16) = sub_22CA20DD0();
  *(v4 + 24) = a4;
  *(v4 + 32) = a1;
  *(v4 + 33) = a2;
  *(v4 + 34) = a3;
  return v4;
}

uint64_t sub_22CA000EC(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = v4;
  sub_22C9FAFE8();
  swift_beginAccess();
  v12 = *(v7 + 16);

  v36 = a1;
  sub_22C9EEE1C(a1, a2, v12, v38);
  v13 = v38[0];
  v14 = v38[1];
  v16 = *&v38[2];
  v15 = *&v38[3];
  v18 = *&v38[4];
  v17 = *&v38[5];

  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v14 = 0;
    v19 = MEMORY[0x277D84F90];
  }

  v20 = sub_22C9FDEC0(a3);
  v22 = v21;
  v23 = sub_22C9FDC00();
  v25 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = v23;
    v6 = v24;
    v35 = a2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }
  }

  v32 = *(v19 + 16);
  sub_22CA04428();
  sub_22CA11940();
  v19 = v33;
LABEL_6:
  v27 = *(v19 + 16);
  v26 = *(v19 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_22CA042C4(v26);
    sub_22CA11940();
    v19 = v34;
  }

  *(v19 + 16) = v27 + 1;
  v28 = v19 + 40 * v27;
  *(v28 + 32) = v20;
  if (v16 >= a4)
  {
    v29 = v16;
  }

  else
  {
    v29 = a4;
  }

  *(v28 + 40) = v22;
  *(v28 + 44) = a3;
  *(v28 + 48) = v5;
  *(v28 + 56) = v6;
  *(v28 + 64) = a4;
  v39[0] = v19;
  v39[1] = v25;
  *&v39[2] = v29;
  *&v39[3] = v15;
  *&v39[4] = v18;
  *&v39[5] = v17;
  sub_22CA04310();
  swift_beginAccess();
  v30 = *(v7 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v7 + 16);
  sub_22C9EE334(v39, v36, v35);
  *(v7 + 16) = v37;
  return swift_endAccess();
}

void sub_22CA002C4()
{
  sub_22CA0467C();
  v3 = v1;
  v114 = v4;
  v113 = sub_22CA20AB0();
  v5 = sub_22C9DAE90(v113);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22CA0431C();
  v112 = v10;
  sub_22CA045EC();
  v111 = sub_22CA20900();
  v11 = sub_22C9DAE90(v111);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22CA0431C();
  v110 = v16;
  sub_22CA045EC();
  v109 = sub_22CA209F0();
  v17 = sub_22C9DAE90(v109);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C9E05C0();
  v108 = v22 - v23;
  sub_22CA045E0();
  MEMORY[0x28223BE20](v24);
  sub_22CA045D4();
  v107 = v25;
  sub_22C9FAFE8();
  swift_beginAccess();
  v116 = v0;
  v26 = *(v0 + 16);
  v28 = *(v26 + 64);
  v27 = v26 + 64;
  v29 = *(*(v0 + 16) + 32);
  sub_22CA04228();
  v32 = v31 & v30;
  v34 = (v33 + 63) >> 6;
  v106 = *MEMORY[0x277CC9968];
  v105 = (v19 + 8);
  v104 = (v7 + 8);
  v103 = (v13 + 8);

  v36 = 0;
  v37 = 0.0;
  v97 = v27;
  v96 = v34;
  v101 = v35;
  if (v32)
  {
LABEL_2:
    v119 = v3;
    v38 = v36;
LABEL_7:
    v99 = (v32 - 1) & v32;
    v98 = v38;
    v39 = __clz(__rbit64(v32)) | (v38 << 6);
    v40 = (*(v35 + 48) + 16 * v39);
    v100 = *v40;
    v41 = *(*(v35 + 56) + 48 * v39);
    v115 = *(v41 + 16);
    v102 = v40[1];

    v42 = 0;
    v43 = (v41 + 64);
    v44 = 0.0;
    v45 = 0.0;
    while (1)
    {
      if (v115 == v42)
      {

        v67 = sub_22CA044E4();
        sub_22C9FF600(v118, v100, v102);
        v3 = v119;
        if (*v68)
        {
          *(v68 + 24) = v45;
        }

        v69 = sub_22CA04438();
        v70(v69);
        v71 = sub_22CA04448();
        (v67)(v71);
        v72 = sub_22CA044E4();
        sub_22C9FF600(v118, v100, v102);
        if (*v73)
        {
          *(v73 + 32) = v44;
        }

        v74 = sub_22CA04438();
        v75(v74);

        v76 = sub_22CA04448();
        (v72)(v76);
        v37 = v37 + v44;
        v77 = *(v116 + 16);
        v78 = *(v77 + 64);
        v79 = *(v77 + 32);
        sub_22CA04228();
        v82 = v81 & v80;
        v84 = (v83 + 63) >> 6;

        v85 = 0;
        if (v82)
        {
          while (1)
          {
            v86 = v85;
LABEL_24:
            v87 = __clz(__rbit64(v82));
            v82 &= v82 - 1;
            v88 = v87 | (v86 << 6);
            v89 = (*(v77 + 48) + 16 * v88);
            v90 = *v89;
            v91 = v89[1];
            v2 = *(*(v77 + 56) + 48 * v88 + 32);

            v120 = sub_22CA044E4();
            sub_22C9FF600(v118, v90, v91);
            if (*v92)
            {
              *(v92 + 40) = v2 / v37;
            }

            v93 = sub_22CA04438();
            v94(v93);

            v95 = sub_22CA04448();
            (v120)(v95);
            v85 = v86;
            if (!v82)
            {
              goto LABEL_21;
            }
          }
        }

        while (1)
        {
LABEL_21:
          v86 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            __break(1u);
            goto LABEL_33;
          }

          if (v86 >= v84)
          {
            break;
          }

          v82 = *(v77 + 64 + 8 * v86);
          ++v85;
          if (v82)
          {
            goto LABEL_24;
          }
        }

        v36 = v98;
        v35 = v101;
        v27 = v97;
        v34 = v96;
        v32 = v99;
        if (!v99)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }

      if (v42 >= *(v41 + 16))
      {
        break;
      }

      v46 = *(v43 - 4);
      v47 = *(v43 - 5);
      v48 = *(v43 - 2);
      v49 = *(v43 - 8);
      v50 = *v43;
      v51 = sub_22CA04468(*(v43 - 24));
      v52 = v46;
      v53 = sub_22C9FE518();
      if (v119)
      {

        goto LABEL_31;
      }

      v54 = v53;
      v119 = 0;
      ++v42;
      type metadata accessor for MSSuggestionFeatureStore();
      v117 = v51;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22CA039F4(v114, v54);
      sub_22CA04564();
      v45 = v45 + v2;
      sub_22CA20980();
      sub_22CA20A80();
      sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
      v55 = sub_22CA20A90();
      sub_22C9DAE90(v55);
      v57 = v56;
      v59 = *(v58 + 72);
      v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_22CA22F90;
      (*(v57 + 104))(v61 + v60, v106, v55);
      sub_22CA02080(v61);
      sub_22CA209E0();
      sub_22CA20A70();

      v62 = *v105;
      (*v105)(v108, v109);
      (*v104)(v112, v113);
      v63 = sub_22CA208E0();
      if (v64)
      {
        v65 = 0.0;
      }

      else
      {
        v65 = v63;
      }

      v66 = *(v116 + 24);

      v2 = v2 * exp(-0.693147181 / v66 * v65);
      (*v103)(v110, v111);
      v62(v107, v109);
      v44 = v44 + v2;
      v43 += 5;
    }

LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v34)
      {
LABEL_31:

        sub_22CA04654();
        return;
      }

      v32 = *(v27 + 8 * v38);
      ++v36;
      if (v32)
      {
        v119 = v3;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22CA00A94()
{
  v1 = v0;
  sub_22CA04340();
  sub_22C9FAFE8();
  swift_beginAccess();
  sub_22CA045F8();
  if (v2)
  {

    sub_22CA04764();
    if (v3)
    {
      sub_22CA0441C();
      v7 = (v5 + v4 * v6);
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[5];

      sub_22C9D02E4(&qword_27D9E5020, &qword_22CA243D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22CA22F80;
      *(inited + 32) = sub_22C9FD610(v1[32]);
      *(inited + 40) = v12;
      *(inited + 48) = v8;
      *(inited + 56) = sub_22C9FD610(v1[33]);
      *(inited + 64) = v13;
      *(inited + 72) = v9;
      *(inited + 80) = sub_22C9FD610(v1[34]);
      *(inited + 88) = v14;
      *(inited + 96) = v10;
      return sub_22CA20DD0();
    }
  }

  return 0;
}

uint64_t MSItemAttributePlaybackFeatureStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MSItemAttributePlaybackFeatureStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_22CA04398();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_22CA00C9C(void *a1, int a2, double a3)
{
  sub_22C9DDEBC(a1);
  if (v8)
  {
    sub_22CA043A4();
    v9 = *(v3 + 16);

    sub_22CA000EC(v3, v4, a2, a3);
  }

  v10 = *(v3 + 24);

  v11 = [a1 bundleID];
  v12 = sub_22CA20E20();
  v14 = v13;

  sub_22CA000EC(v12, v14, a2, a3);
}

uint64_t sub_22CA00D88(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x2822009F8](sub_22CA00DA8, 0, 0);
}

uint64_t sub_22CA00DA8()
{
  v1 = v0[17];
  v2 = *(v0[18] + 16);

  sub_22CA002C4();
  v0[19] = 0;

  type metadata accessor for MSSuggester();
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_22CA00EB4;

  return static MSSuggester.availableBundleIDs()();
}

uint64_t sub_22CA00EB4(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22CA00FB4, 0, 0);
}

void sub_22CA00FB4()
{
  v257 = v0;
  v1 = v0[18];
  v2 = *(v1 + 24);
  sub_22C9FAFE8();
  swift_beginAccess();
  v254 = v0;
  v255 = v1;
  if (!*(*(v2 + 16) + 16))
  {
    v7 = v0[21];
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = 1.0 / v8;
      v11 = (v7 + 40);
      v249 = *(v7 + 16);
      v252 = v0[21];
      do
      {
        if (v9 >= *(v7 + 16))
        {
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
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
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        v13 = *(v11 - 1);
        v12 = *v11;
        v14 = *(v1 + 24);
        sub_22CA04310();
        swift_beginAccess();

        v15 = *(v14 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v256 = *(v14 + 16);
        *(v14 + 16) = 0x8000000000000000;
        v16 = sub_22CA04350();
        sub_22C9FBFA8(v16, v17);
        sub_22CA04264();
        if (__OFADD__(v20, v21))
        {
          goto LABEL_138;
        }

        v22 = v18;
        v23 = v19;
        sub_22C9D02E4(&qword_27D9E4F10, &qword_22CA23D30);
        sub_22CA04254();
        if (sub_22CA21250())
        {
          v24 = sub_22CA04350();
          sub_22C9FBFA8(v24, v25);
          sub_22CA04330();
          if (!v27)
          {
LABEL_134:
            sub_22CA043DC();

            sub_22CA213C0();
            return;
          }

          v22 = v26;
        }

        if (v23)
        {

          v28 = v256;
          sub_22CA0441C();
          v31 = (v29 + v22 * v30);
          v32 = *v31;
          v31[2] = 0.0;
          *v31 = MEMORY[0x277D84F90];
          v31[1] = 0.0;
          v31[3] = v10;
          v31[4] = v10;
          v31[5] = v10;
        }

        else
        {
          v28 = v256;
          sub_22CA041C8(&v256[v22 >> 6]);
          v33 = (v256[6] + 16 * v22);
          *v33 = v13;
          v33[1] = v12;
          sub_22CA0441C();
          v36 = v34 + v22 * v35;
          *v36 = MEMORY[0x277D84F90];
          *(v36 + 8) = 0;
          *(v36 + 16) = 0;
          *(v36 + 24) = v10;
          *(v36 + 32) = v10;
          *(v36 + 40) = v10;
          v37 = v28[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_139;
          }

          v28[2] = v39;
        }

        ++v9;
        *(v14 + 16) = v28;
        v0 = v254;
        swift_endAccess();

        v11 += 2;
        v7 = v252;
        v1 = v255;
      }

      while (v249 != v9);
      v40 = v254[21];
    }

    goto LABEL_49;
  }

  v3 = v0[19];
  v4 = v0[17];

  sub_22CA002C4();
  if (v3)
  {
    v5 = v0[21];

    v6 = v0[1];
    goto LABEL_50;
  }

  v41 = *(v1 + 24);
  sub_22C9FAFE8();
  swift_beginAccess();
  v42 = *(*(v41 + 16) + 16);
  v43 = v0[21];
  if (v42 > 9)
  {
    v86 = v0[21];
LABEL_49:

    v87 = v0[1];
LABEL_50:
    sub_22CA043DC();

    __asm { BRAA            X1, X16 }
  }

  v250 = v0[21];
  v253 = *(v43 + 16);
  if (v253)
  {
    v44 = 0;
    v45 = MEMORY[0x277D84F98];
    v46 = (v43 + 40);
    while (1)
    {
      if (v44 >= *(v43 + 16))
      {
        goto LABEL_140;
      }

      v48 = *(v46 - 1);
      v47 = *v46;
      v49 = *(v1 + 24);

      sub_22CA04350();
      v50 = sub_22CA00A94();

      if (v50)
      {
        v51 = sub_22C9FD610(*(*(v1 + 24) + 34));
        if (*(v50 + 16))
        {
          v53 = sub_22C9FBFA8(v51, v52);
          v55 = v54;

          v56 = 0;
          if (v55)
          {
            v56 = *(*(v50 + 56) + 8 * v53);
          }
        }

        else
        {

          v56 = 0;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v256 = v45;
        v69 = sub_22CA04350();
        sub_22C9FBFA8(v69, v70);
        v71 = v45[2];
        sub_22CA042B8();
        if (__OFADD__(v74, v75))
        {
          goto LABEL_141;
        }

        v76 = v72;
        v77 = v73;
        sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
        sub_22CA04254();
        if (sub_22CA21250())
        {
          v78 = sub_22CA04350();
          sub_22C9FBFA8(v78, v79);
          sub_22CA04244();
          v1 = v255;
          if (!v27)
          {
            goto LABEL_134;
          }

          v76 = v80;
          if ((v77 & 1) == 0)
          {
LABEL_39:
            v45 = v256;
            sub_22CA041C8(&v256[v76 >> 6]);
            sub_22CA045C0();
            *(v81 + 8 * v76) = v56;
            v82 = v45[2];
            v38 = __OFADD__(v82, 1);
            v83 = v82 + 1;
            if (v38)
            {
              goto LABEL_147;
            }

LABEL_45:
            v45[2] = v83;
            goto LABEL_46;
          }
        }

        else
        {
          v1 = v255;
          if ((v77 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v45 = v256;
        *(v256[7] + 8 * v76) = v56;
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v256 = v45;
        v57 = sub_22CA04350();
        sub_22C9FBFA8(v57, v58);
        v59 = v45[2];
        sub_22CA042B8();
        if (__OFADD__(v62, v63))
        {
          goto LABEL_146;
        }

        v64 = v60;
        v65 = v61;
        sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
        sub_22CA04254();
        if (sub_22CA21250())
        {
          v66 = sub_22CA04350();
          sub_22C9FBFA8(v66, v67);
          sub_22CA04244();
          if (!v27)
          {
            goto LABEL_134;
          }

          v64 = v68;
        }

        if ((v65 & 1) == 0)
        {
          v45 = v256;
          sub_22CA041C8(&v256[v64 >> 6]);
          sub_22CA045C0();
          *(v84 + 8 * v64) = 0;
          v85 = v45[2];
          v38 = __OFADD__(v85, 1);
          v83 = v85 + 1;
          if (v38)
          {
            goto LABEL_149;
          }

          goto LABEL_45;
        }

        v45 = v256;
        *(v256[7] + 8 * v64) = 0;
      }

LABEL_46:
      v43 = v250;
      ++v44;
      v46 += 2;
      if (v253 == v44)
      {
        goto LABEL_54;
      }
    }
  }

  v45 = MEMORY[0x277D84F98];
LABEL_54:
  v256 = sub_22C9FA12C(v45);
  sub_22CA03010(&v256);
  v90 = v256;
  v91 = v256[2];
  v239 = v256;
  if (v91)
  {
    v256 = MEMORY[0x277D84F90];
    sub_22CA0CB14();
    v92 = v256;
    v93 = v256[2];
    v94 = 2 * v93;
    v95 = v90 + 5;
    do
    {
      v96 = v93;
      v98 = *(v95 - 1);
      v97 = *v95;
      v256 = v92;
      v99 = v92;
      v100 = v92[3];
      ++v93;

      if (v96 >= v100 >> 1)
      {
        sub_22CA0CB14();
        v99 = v256;
      }

      v99[2] = v93;
      v101 = &v99[v94];
      v101[4] = v98;
      v101[5] = v97;
      v94 += 2;
      v95 += 3;
      --v91;
      v92 = v99;
    }

    while (v91);
  }

  else
  {
    v92 = MEMORY[0x277D84F90];
    v93 = *(MEMORY[0x277D84F90] + 16);
  }

  v102 = 0;
  v103 = MEMORY[0x277D84F98];
  v104 = v92 + 5;
  v242 = v93;
  v246 = v45;
  while (v93 != v102)
  {
    if (v102 >= v92[2])
    {
      goto LABEL_142;
    }

    v106 = *(v104 - 1);
    v105 = *v104;
    v107 = v104;

    swift_isUniquelyReferenced_nonNull_native();
    v256 = v103;
    v108 = sub_22CA044A8();
    sub_22C9FBFA8(v108, v109);
    v110 = v103[2];
    sub_22CA042B8();
    if (__OFADD__(v113, v114))
    {
      goto LABEL_143;
    }

    v115 = v111;
    v116 = v112;
    sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
    sub_22CA04254();
    if (sub_22CA21250())
    {
      v117 = sub_22CA044A8();
      sub_22C9FBFA8(v117, v118);
      sub_22CA04244();
      if (!v27)
      {
        goto LABEL_134;
      }

      v115 = v119;
    }

    v120 = v102 * 0.1;
    if (v116)
    {

      v103 = v256;
      *(v256[7] + 8 * v115) = v120;
    }

    else
    {
      v103 = v256;
      sub_22CA041C8(&v256[v115 >> 6]);
      v121 = (v103[6] + 16 * v115);
      *v121 = v106;
      v121[1] = v105;
      *(v103[7] + 8 * v115) = v120;
      v122 = v103[2];
      v38 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v38)
      {
        goto LABEL_148;
      }

      v103[2] = v123;
    }

    v104 = v107 + 2;
    ++v102;
    v93 = v242;
    v45 = v246;
  }

  v125 = v103 + 8;
  v124 = v103[8];
  v126 = *(v103 + 32);
  sub_22CA04400();
  v129 = v128 & v127;
  v131 = (63 - v130) >> 6;

  v132 = 0;
  v133 = 0.0;
  v0 = v254;
  for (i = v131; ; v131 = i)
  {
    v134 = v255;
    if (!v129)
    {
      break;
    }

    v135 = v132;
LABEL_80:
    v136 = __clz(__rbit64(v129)) | (v135 << 6);
    v137 = (v103[6] + 16 * v136);
    v139 = *v137;
    v138 = v137[1];
    v140 = *(v103[7] + 8 * v136);
    v247 = *(v250 + 16);

    swift_isUniquelyReferenced_nonNull_native();
    v256 = v45;
    v141 = sub_22CA044A8();
    sub_22C9FBFA8(v141, v142);
    v143 = v45[2];
    sub_22CA042B8();
    if (__OFADD__(v146, v147))
    {
      goto LABEL_158;
    }

    v148 = v144;
    v149 = v145;
    sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
    sub_22CA04254();
    v150 = sub_22CA21250();
    v45 = v256;
    if (v150)
    {
      v151 = sub_22CA044A8();
      sub_22C9FBFA8(v151, v152);
      sub_22CA04330();
      if (!v27)
      {
        goto LABEL_134;
      }

      v148 = v153;
    }

    if (v149)
    {
      *(v45[7] + 8 * v148) = v140 + 1.0 / v247;
      v154 = v45[2];
    }

    else
    {
      sub_22CA041C8(&v45[v148 >> 6]);
      v155 = (v45[6] + 16 * v148);
      *v155 = v139;
      v155[1] = v138;
      *(v45[7] + 8 * v148) = v156;
      v157 = v45[2];
      v154 = v157 + 1;
      if (__OFADD__(v157, 1))
      {
        goto LABEL_162;
      }

      v45[2] = v154;
    }

    v0 = v254;
    if (!v154)
    {
      goto LABEL_159;
    }

    v158 = sub_22CA044A8();
    v160 = sub_22C9FBFA8(v158, v159);
    v162 = v161;

    if ((v162 & 1) == 0)
    {
      goto LABEL_160;
    }

    v129 &= v129 - 1;
    v133 = v133 + *(v45[7] + 8 * v160);
    v132 = v135;
    v125 = v103 + 8;
  }

  while (1)
  {
    v135 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      goto LABEL_144;
    }

    if (v135 >= v131)
    {
      break;
    }

    v129 = v125[v135];
    ++v132;
    if (v129)
    {
      goto LABEL_80;
    }
  }

  v164 = v45 + 8;
  v163 = v45[8];
  v165 = *(v45 + 32);
  sub_22CA04400();
  v168 = v167 & v166;
  v170 = (63 - v169) >> 6;

  v171 = 0;
  v172 = v45;
  v243 = v170;
  if (v168)
  {
    goto LABEL_97;
  }

  do
  {
LABEL_93:
    v173 = v171 + 1;
    if (__OFADD__(v171, 1))
    {
      goto LABEL_145;
    }

    if (v173 >= v170)
    {

      if (v253)
      {
        v191 = (v0[21] + 40);
        v241 = v103;
        do
        {
          v192 = *(v191 - 1);
          v193 = *v191;
          v194 = *(v134 + 24);
          sub_22C9FAFE8();
          swift_beginAccess();
          v195 = *(*(v194 + 16) + 16);

          if (v195)
          {

            sub_22C9FBFA8(v192, v193);
            if (v196)
            {
              sub_22CA0441C();
              v200 = (v198 + v197 * v199);
              v201 = *v200;
              v195 = v200[1];
              v202 = v200[2];
            }

            else
            {
              v195 = 0;
              v201 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v201 = MEMORY[0x277D84F90];
          }

          if (!v172[2])
          {
            goto LABEL_150;
          }

          v203 = sub_22CA04500();
          if ((v204 & 1) == 0)
          {
            goto LABEL_151;
          }

          if (!v172[2])
          {
            goto LABEL_152;
          }

          v205 = *(v172[7] + 8 * v203);
          v206 = sub_22CA04500();
          if ((v207 & 1) == 0)
          {
            goto LABEL_153;
          }

          if (!v172[2])
          {
            goto LABEL_154;
          }

          v248 = v201;
          v251 = v195;
          v244 = v191;
          v208 = *(v172[7] + 8 * v206);
          v209 = sub_22CA04500();
          if ((v210 & 1) == 0)
          {
            goto LABEL_155;
          }

          v211 = v172;
          v212 = *(v172[7] + 8 * v209);
          v213 = *(v134 + 24);
          sub_22CA04310();
          swift_beginAccess();

          v214 = *(v213 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v256 = *(v213 + 16);
          *(v213 + 16) = 0x8000000000000000;
          v215 = v192;
          v216 = v193;
          sub_22C9FBFA8(v192, v193);
          sub_22CA04264();
          if (__OFADD__(v219, v220))
          {
            goto LABEL_156;
          }

          v221 = v217;
          v222 = v218;
          sub_22C9D02E4(&qword_27D9E4F10, &qword_22CA23D30);
          v223 = sub_22CA21250();
          v224 = v256;
          if (v223)
          {
            v225 = v215;
            v226 = sub_22C9FBFA8(v215, v216);
            v0 = v254;
            v134 = v255;
            if ((v222 & 1) != (v227 & 1))
            {
              goto LABEL_134;
            }

            v221 = v226;
          }

          else
          {
            v0 = v254;
            v134 = v255;
            v225 = v215;
          }

          v172 = v211;
          if (v222)
          {
            sub_22CA0441C();
            v230 = (v228 + v221 * v229);
            v231 = *v230;
            sub_22CA04598(v230, v239, i, v241, v244, v248, v251);
          }

          else
          {
            sub_22CA042D8();
            *v232 = v225;
            v232[1] = v216;
            sub_22CA0441C();
            sub_22CA04598((v233 + v221 * v234), v239, i, v241, v244, v248, v251);
            v235 = v224[2];
            v38 = __OFADD__(v235, 1);
            v236 = v235 + 1;
            if (v38)
            {
              goto LABEL_157;
            }

            v224[2] = v236;
          }

          *(v213 + 16) = v224;
          swift_endAccess();

          v191 = (v245 + 16);
          --v253;
        }

        while (v253);
        v237 = v0[21];
      }

      goto LABEL_49;
    }

    v168 = v164[v173];
    ++v171;
  }

  while (!v168);
  v171 = v173;
LABEL_97:
  while (1)
  {
    v174 = __clz(__rbit64(v168)) | (v171 << 6);
    v175 = (v45[6] + 16 * v174);
    v177 = *v175;
    v176 = v175[1];
    v178 = *(v45[7] + 8 * v174);

    swift_isUniquelyReferenced_nonNull_native();
    v256 = v172;
    sub_22C9FBFA8(v177, v176);
    v179 = v172[2];
    sub_22CA042B8();
    if (__OFADD__(v182, v183))
    {
      break;
    }

    v184 = v180;
    v185 = v181;
    sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
    sub_22CA04254();
    if (sub_22CA21250())
    {
      sub_22C9FBFA8(v177, v176);
      sub_22CA04330();
      if (!v27)
      {
        goto LABEL_134;
      }

      v184 = v186;
    }

    v187 = v178 / v133;
    if (v185)
    {

      v172 = v256;
      *(v256[7] + 8 * v184) = v187;
    }

    else
    {
      v172 = v256;
      sub_22CA041C8(&v256[v184 >> 6]);
      v188 = (v172[6] + 16 * v184);
      *v188 = v177;
      v188[1] = v176;
      *(v172[7] + 8 * v184) = v187;
      v189 = v172[2];
      v38 = __OFADD__(v189, 1);
      v190 = v189 + 1;
      if (v38)
      {
        goto LABEL_163;
      }

      v172[2] = v190;
    }

    v0 = v254;
    v134 = v255;
    v170 = v243;
    v164 = v45 + 8;
    v168 &= v168 - 1;
    if (!v168)
    {
      goto LABEL_93;
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

id sub_22CA01CE0(void *a1)
{
  v2 = v1;
  v4 = sub_22CA20DD0();
  sub_22C9DDEBC(a1);
  if (v5)
  {
    sub_22CA043A4();
    v6 = *(v1 + 16);

    v7 = sub_22CA00A94();

    if (v7)
    {

      v4 = v7;
    }
  }

  v8 = *(v2 + 24);

  v9 = [a1 bundleID];
  sub_22CA20E20();

  v10 = sub_22CA00A94();

  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v16 = v4;
    sub_22CA041E0();
    sub_22CA02DAC(v10, v11, 0, v12, &v16);
    v4 = v16;
  }

  sub_22CA0DD9C(v4);
  v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  sub_22CA04300();
  v14 = sub_22CA17474();

  return v14;
}

__n128 sub_22CA01EA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22CA01EB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22CA01EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CA01F54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22CA01F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CA01FF0()
{
  v1 = v0;
  type metadata accessor for MSItemAttributePlaybackFeatureStore();
  sub_22CA04398();
  v2 = swift_allocObject();
  sub_22CA00074(3, 4, 5, 7.0);
  *(v1 + 16) = v2;
  sub_22CA04398();
  v3 = swift_allocObject();
  sub_22CA00074(6, 7, 8, 7.0);
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_22CA02080(uint64_t a1)
{
  v2 = sub_22CA20A90();
  v3 = sub_22C9DAE90(v2);
  v34 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C9E05C0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_22CA045D4();
  v37 = v11;
  if (!*(a1 + 16))
  {
    v13 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_22C9D02E4(&qword_27D9E5028, &qword_22CA243E8);
  sub_22CA04300();
  result = sub_22CA21180();
  v13 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v13;
  }

  v14 = 0;
  v36 = result + 56;
  v31 = a1;
  v32 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v15 = (v34 + 8);
  while (v14 < *(a1 + 16))
  {
    v16 = *(v34 + 72);
    v35 = v14 + 1;
    v17 = *(v34 + 16);
    v17(v37, v32 + v16 * v14, v2);
    v18 = *(v13 + 40);
    sub_22CA03FB8(&qword_27D9E5030);
    v19 = sub_22CA20DE0();
    v20 = ~(-1 << *(v13 + 32));
    while (1)
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = *(v36 + 8 * v22);
      v24 = 1 << (v19 & v20);
      if ((v24 & v23) == 0)
      {
        break;
      }

      v25 = v13;
      v17(v9, *(v13 + 48) + v21 * v16, v2);
      sub_22CA03FB8(&qword_27D9E5038);
      v26 = sub_22CA20E00();
      v27 = *v15;
      (*v15)(v9, v2);
      if (v26)
      {
        result = (v27)(v37, v2);
        v13 = v25;
        goto LABEL_12;
      }

      v19 = v21 + 1;
      v13 = v25;
    }

    *(v36 + 8 * v22) = v24 | v23;
    result = (*(v34 + 32))(*(v13 + 48) + v21 * v16, v37, v2);
    v28 = *(v13 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    *(v13 + 16) = v30;
LABEL_12:
    v14 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_22CA0237C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22C9D02E4(&qword_27D9E4F30, &qword_22CA23D50);
  v7 = sub_22CA212F0();
  if (!*(v5 + 16))
  {

LABEL_31:
    *v3 = v7;
    return;
  }

  v37 = v3;
  v8 = 0;
  v10 = (v5 + 64);
  v9 = *(v5 + 64);
  v11 = *(v5 + 32);
  sub_22CA04228();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v17 = v7 + 64;
  if ((v13 & v12) == 0)
  {
LABEL_6:
    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v16)
      {
        break;
      }

      v20 = v10[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_11;
      }
    }

    if (a2)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        sub_22CA15E14(0, (v36 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
    goto LABEL_31;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v21 = v18 | (v8 << 6);
    v22 = *(*(v5 + 48) + 8 * v21);
    v23 = *(*(v5 + 56) + 8 * v21);
    if ((a2 & 1) == 0)
    {
      v24 = v22;
      v25 = v23;
    }

    v26 = *(v7 + 40);
    v27 = sub_22CA210C0();
    v28 = -1 << *(v7 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v17 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    *(*(v7 + 48) + 8 * v31) = v22;
    *(*(v7 + 56) + 8 * v31) = v23;
    ++*(v7 + 16);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v17 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_22CA025CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22C9D02E4(&qword_27D9E5010, &unk_22CA243C0);
  v37 = a2;
  result = sub_22CA212F0();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_22CA15E14(0, (v35 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v37 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_22CA21440();
    sub_22CA20E60();
    result = sub_22CA21490();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_22CA0286C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_22CA028B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22CA041F8(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * result);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v13;
  }

  return result;
}

unint64_t sub_22CA028F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22CA041F8(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

_OWORD *sub_22CA02924(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_22CA041F8(a1, a2, a3, a4, a5);
  result = sub_22C9E9818(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void *sub_22CA02968(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_22CA041F8(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 72 * v6), v8, 0x48uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void (*sub_22CA029B4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = sub_22CA03F30(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_22CA02D40(v7);
  v7[9] = sub_22CA02AAC(v7 + 4, a2, a3);
  return sub_22CA02A4C;
}

void sub_22CA02A4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22CA02AAC(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = sub_22CA03F30(0xB8uLL);
  *a1 = v8;
  *(v8 + 19) = a3;
  *(v8 + 20) = v3;
  *(v8 + 18) = a2;
  v9 = *v3;
  v10 = sub_22C9FBFA8(a2, a3);
  v8[176] = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_22C9D02E4(&qword_27D9E4F10, &qword_22CA23D30);
  if (sub_22CA21250())
  {
    v14 = *v4;
    v15 = sub_22C9FBFA8(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_22CA213C0();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v8 + 21) = v12;
  if (v13)
  {
    v17 = *(*v4 + 56) + 48 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 24);
    v21 = *(v17 + 40);
  }

  else
  {
    v18 = 0;
    v21 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *(v8 + 12) = v18;
  *(v8 + 104) = v19;
  *(v8 + 120) = v20;
  *(v8 + 17) = v21;
  return sub_22CA02C18;
}

void sub_22CA02C18(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v7 = *(*a1 + 120);
  v6 = *(*a1 + 128);
  v8 = *(*a1 + 136);
  v9 = *(*a1 + 176);
  if (a2)
  {
    if (v3)
    {
      v10 = *(v2 + 168);
      v11 = **(v2 + 160);
      if ((v9 & 1) == 0)
      {
        v12 = *(v2 + 144);
        v13 = *(v2 + 152);
        *v2 = v3;
        *(v2 + 8) = v5;
        *(v2 + 16) = v4;
        *(v2 + 24) = v7;
        *(v2 + 32) = v6;
        *(v2 + 40) = v8;
        v14 = v13;
        v15 = v2;
LABEL_11:
        sub_22CA028B0(v10, v12, v14, v15, v11);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v3)
  {
    v10 = *(v2 + 168);
    v11 = **(v2 + 160);
    if ((v9 & 1) == 0)
    {
      v12 = *(v2 + 144);
      v17 = *(v2 + 152);
      *(v2 + 48) = v3;
      *(v2 + 56) = v5;
      *(v2 + 64) = v4;
      *(v2 + 72) = v7;
      *(v2 + 80) = v6;
      *(v2 + 88) = v8;
      v15 = v2 + 48;
      v14 = v17;
      goto LABEL_11;
    }

LABEL_7:
    v16 = (*(v11 + 56) + 48 * v10);
    *v16 = v3;
    v16[1] = v5;
    v16[2] = v4;
    v16[3] = v7;
    v16[4] = v6;
    v16[5] = v8;
    goto LABEL_12;
  }

  if (*(*a1 + 176))
  {
    sub_22CA03F64(*(**(v2 + 160) + 48) + 16 * *(v2 + 168));
    sub_22CA21270();
  }

LABEL_12:
  v18 = *(v2 + 96);

  free(v2);
}

uint64_t (*sub_22CA02D40(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22CA02D68;
}

uint64_t sub_22CA02D74(double *a1, uint64_t a2, double a3)
{
  *a1 = a3;

  return a2;
}

uint64_t sub_22CA02DAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_22CA03EF4(a1, a2, a3, v43);
  v6 = v43[1];
  v7 = v43[3];
  v8 = v43[4];
  v35 = v43[5];
  v36 = v43[0];
  v9 = (v43[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v37 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v36 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v36 + 56) + 8 * v12);
      v42[0] = *v13;
      v42[1] = v14;
      v42[2] = v15;

      v35(&v39, v42);

      v16 = v39;
      v17 = v40;
      v18 = v41;
      v19 = *a5;
      v20 = sub_22C9FBFA8(v39, v40);
      sub_22CA04264();
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v21;
      if (*(v19 + 24) >= v24)
      {
        if ((v37 & 1) == 0)
        {
          sub_22C9D02E4(&qword_27D9E5008, &qword_22CA243B8);
          sub_22CA21260();
        }
      }

      else
      {
        sub_22CA025CC(v24, v37 & 1);
        v26 = *a5;
        sub_22C9FBFA8(v16, v17);
        sub_22CA04330();
        if (!v28)
        {
          goto LABEL_25;
        }

        v20 = v27;
      }

      v8 &= v8 - 1;
      v29 = *a5;
      if (v25)
      {

        *(*(v29 + 56) + 8 * v20) = v18;
      }

      else
      {
        sub_22CA042D8();
        *v30 = v16;
        v30[1] = v17;
        *(*(v29 + 56) + 8 * v20) = v18;
        v31 = *(v29 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_24;
        }

        *(v29 + 16) = v33;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_22C9E297C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v37 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22CA213C0();
  __break(1u);
  return result;
}

uint64_t sub_22CA03010(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22CA14030(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22CA0307C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22CA0307C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22CA21330();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C9D02E4(&qword_27D9E5018, &qword_22CA243D0);
        v6 = sub_22CA20EF0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22CA03200(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22CA03180(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22CA03180(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22CA03200(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *(v35 - 1))
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_22CA11D94();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_22CA11D94();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
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
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_22CA0384C((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_22CA03714(&v90, *a1, a3);
LABEL_89:
}

uint64_t sub_22CA03714(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22CA13E30(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_22CA0384C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_22CA0384C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_22CA11F90(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[2] >= v4[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 3;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v7[2] = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_22CA11F90(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

void sub_22CA039F4(void *a1, void *a2)
{
  v4 = sub_22CA20E10();
  v5 = [a1 featureValueForName_];

  if (!v5)
  {
    v5 = [objc_opt_self() featureValueWithDouble_];
  }

  swift_getObjectType();
  v6 = sub_22CA20E10();
  v7 = [a2 featureValueForName_];

  if (!v7)
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
  }

  [v5 doubleValue];
  [v7 doubleValue];
  v8 = sub_22CA20E10();
  v24 = a1;
  v9 = [a1 featureValueForName_];

  if (!v9)
  {
    v9 = [objc_opt_self() featureValueWithInt64_];
  }

  v10 = sub_22CA20E10();
  v11 = [a2 0x27872B578];

  if (!v11)
  {
    v11 = [objc_opt_self() featureValueWithInt64_];
  }

  v12 = [v9 int64Value];
  v13 = [v11 int64Value];
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  if (v14 < 0 && __OFSUB__(0, v14))
  {
    goto LABEL_26;
  }

  sub_22CA0DD90();
  v15 = sub_22CA21040();
  v17 = v16;

  if (v15 == 0x6574736567677573 && v17 == 0xEE00616964654D64)
  {

    goto LABEL_19;
  }

  v19 = sub_22CA21360();

  if (v19)
  {

LABEL_19:
    return;
  }

  v20 = sub_22CA20E10();
  v21 = [v24 featureValueForName_];

  if (!v21)
  {
    v21 = [objc_opt_self() 0x27872B9ACLL];
  }

  [v21 doubleValue];

  v22 = sub_22CA20E10();
  v23 = [a2 featureValueForName_];

  if (!v23)
  {
    v23 = [objc_opt_self() 0x27872B9ACLL];
  }

  [v23 doubleValue];
}

double sub_22CA03EB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = sub_22CA02D74(&v7, *a1, *(a1 + 16));
  result = v7;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_22CA03EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void *sub_22CA03F30(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_22CA03FB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22CA20A90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CA03FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&qword_27D9E5040, qword_22CA24400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CA0406C(uint64_t a1)
{
  v2 = sub_22C9D02E4(&qword_27D9E5040, qword_22CA24400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_22CA04118(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22CA0412C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 40))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CA0416C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_22CA041F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

void sub_22CA04288()
{
  *(v0 + 16) = v7;
  v9 = v0 + 40 * v2;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 44) = v1;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v8;
}

void sub_22CA0437C()
{
  v1 = *(v0 - 4);
  v2 = *(v0 - 24);
  v3 = *(v0 - 5);
  v4 = *(v0 - 2);
  v5 = *(v0 - 8);
  v6 = *v0;
}

uint64_t sub_22CA043B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v31 = *(v27 + 16);

  return sub_22C9EE614(&a27, a12, v28);
}

id sub_22CA04468@<X0>(char a1@<W8>)
{
  *(v5 - 192) = v4;
  *(v5 - 184) = a1;
  *(v5 - 180) = v1;
  *(v5 - 176) = v2;
  *(v5 - 168) = v3;
  *(v5 - 160) = v7;

  return v2;
}

uint64_t sub_22CA04490()
{
  v2 = **(v0 + 136);
  result = v1;
  v4 = *(v0 + 184);
  return result;
}

uint64_t sub_22CA044B4()
{
  v2 = **(v0 + 152);
  result = v1;
  v4 = *(v0 + 176);
  return result;
}

uint64_t (*sub_22CA044E4())()
{
  v2 = *(v0 - 304);

  return sub_22CA00028();
}

unint64_t sub_22CA04500()
{

  return sub_22C9FBFA8(v0, v1);
}

uint64_t sub_22CA0451C()
{

  return sub_22CA20A70();
}

void *sub_22CA04540(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char __dst)
{
  v29 = (*(v27 + 56) + 72 * a1);

  return memcpy(&__dst, v29, 0x48uLL);
}

uint64_t sub_22CA04564()
{

  return swift_unknownObjectRelease_n();
}

id sub_22CA04580()
{

  return [v0 (v1 + 3858)];
}

void sub_22CA04598(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a6;
  a1[1] = a7;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
}

uint64_t sub_22CA045AC()
{
  v2 = **(v0 + 144);
  result = v1;
  v4 = *(v0 + 200);
  return result;
}

void sub_22CA045C0()
{
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
  v5 = *(v0 + 56);
}

uint64_t sub_22CA046A4()
{
  *(v0 + 256) = v1;
  *(v0 + 224) = v2 + 1;

  return type metadata accessor for MSSuggestionFeatureStore();
}

uint64_t sub_22CA046C4()
{
  *(v0 + 240) = v1;
  v3 = *(v0 + 168);

  return sub_22CA209E0();
}

void sub_22CA046E4()
{
  v3 = *(v0 + 208);

  sub_22CA039F4(v3, v1);
}

void *sub_22CA04704(uint64_t a1)
{
  v5 = (*(v3 + 56) + a1 * v1);

  return memmove(v5, (v2 + 584), 0x48uLL);
}

unint64_t sub_22CA04724()
{
  *(v1 + 16) = 0x8000000000000000;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);

  return sub_22C9FBFA8(v3, v4);
}

uint64_t sub_22CA04744()
{

  return sub_22C9FE6CC(v1, v2, v0);
}

unint64_t sub_22CA04764()
{

  return sub_22C9FBFA8(v1, v0);
}

id sub_22CA0477C()
{

  return [v0 (v1 + 3320)];
}

void *sub_22CA04794()
{
  v1 = v0;
  v0[2] = 0;
  v2 = sub_22CA20CF0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[3] = sub_22CA20CE0();
  type metadata accessor for MSSuggestionPlaybackRewardFeatureStore();
  swift_allocObject();
  v0[9] = sub_22CA01FF0();
  sub_22C9D02E4(&qword_27D9E4C68, &qword_22CA23280);
  v5 = swift_allocObject();
  sub_22C9D86B0(v5, xmmword_22CA22FA0);
  v6 = type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline();
  swift_allocObject();

  v7 = sub_22CA187F4();
  v5[3].n128_u64[1] = v6;
  v5[4].n128_u64[0] = sub_22CA05338(&qword_27D9E4C80, 255, type metadata accessor for MSSiriKitPlayMediaIntentCandidatePipeline);
  v5[2].n128_u64[0] = v7;
  v8 = v1[9];
  v9 = type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline();
  swift_allocObject();

  v10 = sub_22CA14214();
  v5[6].n128_u64[0] = v9;
  v5[6].n128_u64[1] = sub_22CA05338(&qword_27D9E4C78, 255, type metadata accessor for MSAppIntentAudioPlaybackCandidatePipeline);
  v5[4].n128_u64[1] = v10;
  v1[6] = v5;
  sub_22C9D02E4(&qword_27D9E4C88, &qword_22CA23288);
  v11 = sub_22C9D86BC();
  sub_22C9D86B0(v11, xmmword_22CA22F90);
  v12 = type metadata accessor for MSSuggestionRewardScorerPipeline();
  swift_allocObject();
  v13 = sub_22CA0E6E8();
  v11[3].n128_u64[1] = v12;
  v11[4].n128_u64[0] = sub_22CA05338(&qword_27D9E4C90, 255, type metadata accessor for MSSuggestionRewardScorerPipeline);
  v11[2].n128_u64[0] = v13;
  v1[8] = v11;
  sub_22C9D02E4(&qword_27D9E4C98, &qword_22CA23290);
  v14 = sub_22C9D86BC();
  sub_22C9D86B0(v14, xmmword_22CA22F90);
  v15 = type metadata accessor for MSSuggestionRewardRankingPipeline();
  swift_allocObject();
  v16 = sub_22CA114C8();
  v14[3].n128_u64[1] = v15;
  v14[4].n128_u64[0] = sub_22CA05338(&qword_27D9E4CA0, 255, type metadata accessor for MSSuggestionRewardRankingPipeline);
  v14[2].n128_u64[0] = v16;
  v1[7] = v14;
  sub_22CA211A0();
  MEMORY[0x2318BA9C0](0x696669746E656469, 0xEC000000203A7265);
  v35 = v1[3];
  sub_22CA05338(&qword_27D9E50C0, 255, MEMORY[0x277CE9B50]);

  v17 = sub_22CA21340();
  MEMORY[0x2318BA9C0](v17);

  MEMORY[0x2318BA9C0](0xD000000000000017, 0x800000022CA265E0);
  v18 = v1[6];

  v19 = sub_22C9D02E4(&qword_27D9E4CA8, &qword_22CA23298);
  v20 = MEMORY[0x2318BAA20](v18, v19);
  v22 = v21;

  MEMORY[0x2318BA9C0](v20, v22);

  MEMORY[0x2318BA9C0](0xD000000000000015, 0x800000022CA26600);
  v23 = v1[7];

  v24 = sub_22C9D02E4(&unk_27D9E4CB0, &qword_22CA232A0);
  v25 = MEMORY[0x2318BAA20](v23, v24);
  v27 = v26;

  MEMORY[0x2318BA9C0](v25, v27);

  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = sub_22CA20E10();
  LOBYTE(v27) = [v28 BOOLForKey_];

  *(v1 + 80) = v27;
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v30 = sub_22CA20B10();
  sub_22C9D0494(v30, &unk_28143A4E0);

  v31 = sub_22CA20AF0();
  v32 = sub_22CA21010();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = *(v1 + 80);

    _os_log_impl(&dword_22C9CA000, v31, v32, "checkpointingEnabled is set to %{BOOL}d", v33, 8u);
    MEMORY[0x2318BB680](v33, -1, -1);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_22CA04DB0()
{
  sub_22C9D02E4(&qword_27D9E4C58, &qword_22CA23278);
  v0 = sub_22C9D86BC();
  sub_22C9D86B0(v0, xmmword_22CA22F90);
  v1 = type metadata accessor for MSSuggestionContextFeatureProvider();
  swift_allocObject();
  sub_22C9EE934();
  v0[3].n128_u64[1] = v1;
  v2 = sub_22CA05338(&qword_27D9E4C60, 255, type metadata accessor for MSSuggestionContextFeatureProvider);
  return sub_22C9D86A0(v2);
}

uint64_t sub_22CA04E5C()
{
  sub_22C9D02E4(&qword_27D9E4C48, qword_22CA23238);
  v1 = sub_22C9D86BC();
  *(v1 + 16) = xmmword_22CA22F90;
  v2 = *(v0 + 72);
  v3 = type metadata accessor for MSBatchCandidateFeatureProvider();
  swift_allocObject();

  sub_22CA16A80(v4);
  *(v1 + 56) = v3;
  v5 = sub_22CA05338(&qword_27D9E4C50, 255, type metadata accessor for MSBatchCandidateFeatureProvider);
  return sub_22C9D86A0(v5);
}

uint64_t sub_22CA04F1C()
{
  sub_22C9D02E4(&qword_27D9E4C18, &qword_22CA231C8);
  v0 = sub_22C9D86BC();
  sub_22C9D86B0(v0, xmmword_22CA22F90);
  v1 = type metadata accessor for MSDropDuplicateSuggestions();
  swift_allocObject();
  sub_22C9ECBB8();
  v0[3].n128_u64[1] = v1;
  v2 = sub_22CA05338(&qword_27D9E4C40, 255, type metadata accessor for MSDropDuplicateSuggestions);
  return sub_22C9D86A0(v2);
}

uint64_t sub_22CA04FC8(void *a1)
{
  sub_22C9D02E4(&qword_27D9E4C18, &qword_22CA231C8);
  v2 = sub_22C9D86BC();
  *(v2 + 16) = xmmword_22CA22F90;
  [a1 maxSuggestions];
  v3 = sub_22C9D02E4(&qword_27D9E4C20, &unk_22CA231D0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_22CA20CC0();
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_22C9D85A0();
  *(v2 + 32) = v6;
  return v2;
}

uint64_t sub_22CA0512C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x277CE9B28] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = type metadata accessor for MSSuggestionsNowPlayingRecommendationPipeline();
  v8 = sub_22CA05338(&qword_27D9E5068, v7, type metadata accessor for MSSuggestionsNowPlayingRecommendationPipeline);
  *v5 = v2;
  v5[1] = sub_22C9D8320;

  return MEMORY[0x28213B5F0](a2, v6, v8);
}

uint64_t sub_22CA05338(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22CA05380(char a1, char a2)
{
  v3 = sub_22C9FD610(a1);
  v5 = v4;
  if (v3 == sub_22C9FD610(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22CA21360();
  }

  return v8 & 1;
}

uint64_t sub_22CA05404(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574736567677573;
  }

  else
  {
    v3 = 0x64656D75736E6F63;
  }

  if (v2)
  {
    v4 = 0xED0000616964654DLL;
  }

  else
  {
    v4 = 0xEE00616964654D64;
  }

  if (a2)
  {
    v5 = 0x6574736567677573;
  }

  else
  {
    v5 = 0x64656D75736E6F63;
  }

  if (a2)
  {
    v6 = 0xEE00616964654D64;
  }

  else
  {
    v6 = 0xED0000616964654DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22CA21360();
  }

  return v8 & 1;
}

void *sub_22CA054BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22C9F9B28(*(a1 + 16), 0);
  v4 = sub_22C9FABAC(&v6, v3 + 4, v2, a1);
  sub_22C9E297C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22CA05598()
{
  v1 = *(v0 + OBJC_IVAR___MSRankedSuggester_requestIdentifier);
  v2 = *(v0 + OBJC_IVAR___MSRankedSuggester_requestIdentifier + 8);

  return sub_22C9E3C08();
}

uint64_t sub_22CA05640(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSRankedSuggester_requestIdentifier);
  v4 = *(v2 + OBJC_IVAR___MSRankedSuggester_requestIdentifier + 8);
  *v3 = a1;
  v3[1] = a2;
}

id MSRankedSuggester.init(requestIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MSRankedSuggester_requestIdentifier);
  *v3 = a1;
  v3[1] = a2;
  v5.super_class = MSRankedSuggester;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22CA056D4()
{
  v0 = sub_22CA20A20();
  v1 = sub_22C9DAE90(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22CA0D7E4();
  sub_22CA20A10();
  sub_22CA20A00();
  v4 = sub_22CA0D71C();
  v5(v4);
  _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0();
  return swift_dynamicCastUnknownClassUnconditional();
}

id _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22C9D7254();
  v2 = sub_22CA20E10();

  v3 = [v0 initWithRequestIdentifier_];

  return v3;
}

uint64_t MSRankedSuggester.description.getter()
{
  sub_22CA211A0();

  swift_getObjectType();
  v1 = sub_22CA214B0();
  MEMORY[0x2318BA9C0](v1);

  MEMORY[0x2318BA9C0](0xD000000000000014, 0x800000022CA27F20);
  v2 = [v0 requestIdentifier];
  v3 = sub_22CA20E20();
  v5 = v4;

  MEMORY[0x2318BA9C0](v3, v5);

  MEMORY[0x2318BA9C0](62, 0xE100000000000000);
  return 60;
}

id MSRankedSuggester.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = sub_22CA20A20();
  v3 = sub_22C9DAE90(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_22CA0D7E4();
  sub_22CA20A10();
  sub_22CA20A00();
  v7 = sub_22CA0D71C();
  v8(v7);
  result = _sSo17MSRankedSuggesterC05MediaB0E17requestIdentifierABSS_tcfC_0();
  a1[3] = v6;
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for MSRankedSuggester()
{
  result = qword_28143A290;
  if (!qword_28143A290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143A290);
  }

  return result;
}

Swift::Void __swiftcall MSRankedSuggester.encode(with:)(NSCoder with)
{
  v3 = [v1 requestIdentifier];
  if (!v3)
  {
    sub_22CA20E20();
    sub_22CA20E10();
    sub_22C9D7254();
  }

  v4 = sub_22C9D07A8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id MSRankedSuggester.init(coder:)()
{
  sub_22CA0D74C();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v1;
}

id MSRankedSuggester.init(coder:)(void *a1)
{
  v3 = sub_22C9D07A8();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {

    sub_22C9DF60C(v14, &unk_27D9E4D60, &unk_22CA22BE0);
LABEL_9:
    type metadata accessor for MSRankedSuggester();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v11;
  v6 = &v1[OBJC_IVAR___MSRankedSuggester_requestIdentifier];
  *v6 = v10;
  *(v6 + 1) = v5;
  v9.receiver = v1;
  v9.super_class = MSRankedSuggester;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

uint64_t MSRankedSuggester.suggestions(with:)()
{
  sub_22C9D6F3C();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_22C9D70A8(v2);
  *v3 = v4;
  v3[1] = sub_22CA05E78;

  return sub_22CA05F64(v1, 0);
}

uint64_t sub_22CA05E78()
{
  sub_22C9D6F3C();
  v3 = v2;
  sub_22C9D70B4();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_22C9D6EA4();
  *v7 = v6;

  sub_22C9E6EBC();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_22CA05F64(uint64_t a1, char a2)
{
  *(v3 + 344) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  *(v3 + 128) = v4;
  v5 = *(v4 - 8);
  *(v3 + 136) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v7 = sub_22C9D02E4(&qword_27D9E50A8, &qword_22CA24870);
  *(v3 + 160) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v9 = *(*(sub_22C9D02E4(&unk_27D9E50B0, &qword_22CA24878) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v10 = sub_22CA20D60();
  *(v3 + 192) = v10;
  v11 = *(v10 - 8);
  *(v3 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CA06128, 0, 0);
}

uint64_t sub_22CA07298()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 272) = v5;

  v6 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22CA07380()
{
  v174 = v1;
  v5 = v1;
  v6 = *(v1 + 272);
  v7 = *(v1 + 112);
  KeyPath = MEMORY[0x277D837D0];
  sub_22CA20EB0();
  sub_22CA0D74C();

  [v7 setAllowedBundleIdentifiers_];

  v9 = [*(v5 + 112) allowedBundleIdentifiers];
  v10 = sub_22CA20EC0();

  v11 = *(v10 + 16);

  v172 = v5;
  if (v11)
  {
    v12 = [*(v5 + 112) suggestionType];
    v13 = *(v5 + 256);
    v14 = *(v5 + 112);
    if (v12 == 1)
    {
      type metadata accessor for MSSuggestionsNowPlayingRecommendationPipeline();
      sub_22CA0D5B0();
      v15 = sub_22CA04794();
      *(v5 + 280) = v15;
      v16 = v14;
      sub_22CA0DD60();
      v17 = sub_22CA20AF0();
      sub_22CA21010();
      sub_22CA0DCA0();

      if (sub_22CA0DC70())
      {
        sub_22CA0D248();
        sub_22CA0D13C();
        v18 = sub_22CA0D120();
        sub_22CA0D9C0(v18);
        sub_22CA0D354(4.8151e-34);
        *(v20 + 104) = v19;
        sub_22CA20CF0();
        sub_22CA0CE8C();
        sub_22CA0CE3C(v21, v22);
        sub_22CA0D8D0();
        v23 = sub_22CA21340();
        sub_22CA0D634(v23, v24);
        sub_22CA0D528();
        sub_22CA0D0D4();
        sub_22CA0D228(&dword_22C9CA000, v25, v26, "Calling %s with context: %@");
        sub_22C9DF60C(v4, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D0B8();
        sub_22C9D04CC(v3);
        sub_22CA0D364();
        sub_22C9D6FFC();
      }

      sub_22CA0D6F8();
      v27 = *(MEMORY[0x277CE9B28] + 4);
      v28 = swift_task_alloc();
      *(v5 + 288) = v28;
      sub_22CA0D1AC();
      sub_22CA0CE3C(v29, v30);
      sub_22CA0D3D4();
      *v28 = v31;
      sub_22CA0D174();
    }

    else
    {
      type metadata accessor for MSSuggestionsWorkoutRecommendationPipeline();
      sub_22CA0D5B0();
      v15 = sub_22C9D739C();
      *(v5 + 312) = v15;
      v86 = v14;
      sub_22CA0DD60();
      v87 = sub_22CA20AF0();
      sub_22CA21010();
      sub_22CA0DCA0();

      if (sub_22CA0DC70())
      {
        sub_22CA0D248();
        sub_22CA0D13C();
        v88 = sub_22CA0D120();
        sub_22CA0D9C0(v88);
        sub_22CA0D354(4.8151e-34);
        *(v90 + 72) = v89;
        sub_22CA20CF0();
        sub_22CA0CE8C();
        sub_22CA0CE3C(v91, v92);
        sub_22CA0D8D0();
        v93 = sub_22CA21340();
        sub_22CA0D634(v93, v94);
        sub_22CA0D528();
        sub_22CA0D0D4();
        sub_22CA0D228(&dword_22C9CA000, v95, v96, "Calling %s with context: %@");
        sub_22C9DF60C(v4, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D0B8();
        sub_22C9D04CC(v3);
        sub_22CA0D364();
        sub_22C9D6FFC();
      }

      sub_22CA0D6E0();
      v97 = *(MEMORY[0x277CE9B28] + 4);
      v28 = swift_task_alloc();
      *(v5 + 320) = v28;
      sub_22CA0D1C4();
      sub_22CA0CE3C(v98, v99);
      sub_22CA0D3D4();
      *v28 = v100;
      sub_22CA0D190();
    }

    v28[1] = v33;

    return MEMORY[0x28213B5F0](v15, v0, v32);
  }

  else
  {
    v34 = *(v5 + 256);
    v35 = sub_22CA20AF0();
    v36 = sub_22CA21010();
    if (os_log_type_enabled(v35, v36))
    {
      v0 = swift_slowAlloc();
      *v0 = 0;
      sub_22CA0D9B4();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      sub_22CA0D158();
    }

    v42 = MEMORY[0x277D84F90];
    v162 = (*(v5 + 112) + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
    v43 = *(v5 + 136);
    v44 = (v43 + 16);
    v160 = (v43 + 32);
    v45 = (v43 + 8);
    sub_22CA0D8E8();
    v48 = *(v42 + 16);
    v167 = v44;
    v161 = v45;
    for (i = v48; ; v48 = i)
    {
      if (v47 == v48)
      {
        v49 = 1;
        KeyPath = v48;
      }

      else
      {
        sub_22CA0D8DC();
        if (v50)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        sub_22CA0D328();
        v51 = sub_22CA0CEC4();
        v52(v51);
        v53 = sub_22CA0D21C();
        v46 = sub_22CA0CDE0(v53, v54, &qword_27D9E50A8, &qword_22CA24870);
        v49 = 0;
      }

      v55 = sub_22CA0CFDC(v46, v49);
      sub_22CA0CDE0(v55, v56, &unk_27D9E50B0, &qword_22CA24878);
      sub_22CA0D288();
      if (v57)
      {
        break;
      }

      v170 = KeyPath;
      v36 = *(v5 + 256);
      v58 = *(v5 + 184);
      v0 = *(v5 + 128);
      v59 = *(v5 + 112);
      v60 = *v58;
      (*v160)(*(v5 + 152), v58 + v165[12], v0);
      sub_22CA20B90();
      v61 = *(v5 + 56);
      v62 = sub_22CA20B80();
      swift_getObjectType();
      sub_22CA0DFD8();
      sub_22CA0CF6C();
      sub_22CA21030();
      v163 = sub_22CA20F90();
      v64 = v63;
      v65 = v59;
      v66 = v61;
      v67 = sub_22CA20AF0();
      KeyPath = sub_22CA21010();

      if (sub_22C9D72E0())
      {
        v36 = sub_22C9D71CC();
        sub_22CA0D434();
        v68 = sub_22CA0D120();
        v173[0] = v68;
        *v36 = 136315650;
        v69 = *v162;
        v0 = v162[1];

        v70 = sub_22CA0D95C();
        v5 = sub_22C9D60B0(v70, v0, v71);

        sub_22CA0D788();
        sub_22CA0DAB8();
        _os_log_impl(&dword_22C9CA000, v67, KeyPath, "<requestID: %s Ranked Candidate #%ld: %@", v36, 0x20u);
        sub_22C9DF60C(v60, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D0B8();
        sub_22C9D04CC(v68);
        sub_22C9D6FC4();
        sub_22CA0D0F8();
      }

      v35 = *(v5 + 256);
      v4 = v66;

      swift_unknownObjectRetain();
      v72 = sub_22CA20AF0();
      v73 = sub_22CA20FF0();

      swift_unknownObjectRelease();
      os_log_type_enabled(v72, v73);
      sub_22CA0D500();
      if (v74)
      {
        KeyPath = sub_22C9D71CC();
        v5 = sub_22CA0D434();
        v158 = v36;
        v36 = sub_22C9E29F4();
        v173[0] = v36;
        v157 = sub_22CA0D850(5.7781e-34);
        v4 = v35;
        v75 = sub_22C9D60B0(v163, v64, v173);

        *(KeyPath + 14) = v75;
        *(KeyPath + 22) = v0;
        v35 = v62;
        v76 = sub_22CA21020();
        sub_22CA0D634(v76, v77);
        sub_22CA0D74C();

        *(KeyPath + 24) = v0;
        sub_22CA0DD00(&dword_22C9CA000, v72, v73, "Candidate: %@ finalScore: %s features: %s");
        sub_22C9DF60C(v5, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D034();
        swift_arrayDestroy();
        sub_22CA0D0F8();
        sub_22CA0D3B8();

        swift_unknownObjectRelease();
        v45 = v161;
        v46 = (*v161)(v4, v158);
      }

      else
      {

        swift_unknownObjectRelease();

        v45 = v161;
        v78 = *v161;
        v79 = sub_22CA0D2AC();
        v46 = v81(v79, v80);
      }

      v44 = v167;
      v47 = v170;
      v42 = MEMORY[0x277D84F90];
    }

    v0 = [*(v5 + 112) maxSuggestions];
    KeyPath = swift_getKeyPath();
    v36 = *(v42 + 16);
    if (v36)
    {
      sub_22CA0DB18();
      sub_22CA0D00C();
      sub_22CA0D994();
      do
      {
        v82 = sub_22CA0D734();
        (v4)(v82);
        sub_22CA0D968();
        swift_getAtKeyPath();
        v83 = *v0;
        v84 = sub_22CA0D77C();
        v85(v84);
        sub_22CA0DCE8();
        sub_22CA0D55C();
        sub_22CA0D5E4();
        sub_22CA21200();
        v45 = (v45 + v48);
        --v36;
      }

      while (v36);

      v35 = v173[0];
      v0 = v170;
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

    v101 = sub_22C9E3C08();
    sub_22C9F21E0(v101, v102);
    sub_22CA0D068();
    if (KeyPath)
    {
      sub_22CA21370();
      sub_22CA0D50C();
      v106 = swift_dynamicCastClass();
      if (!v106)
      {
        swift_unknownObjectRelease();
        v106 = MEMORY[0x277D84F90];
      }

      v107 = *(v106 + 16);

      sub_22CA0D924();
      if (!v108)
      {
        sub_22CA0D9D8();
        if (v57)
        {
          swift_dynamicCastClass();
          sub_22CA0DD48();
          if (v48)
          {
            goto LABEL_41;
          }

          v48 = MEMORY[0x277D84F90];
          goto LABEL_40;
        }

        goto LABEL_79;
      }

      goto LABEL_78;
    }

    while (1)
    {
      v103 = sub_22CA0D2AC();
      sub_22CA0DBE0(v103, v104);
      v48 = v105;
LABEL_40:
      swift_unknownObjectRelease();
LABEL_41:
      sub_22C9E6DA0(v48);
      sub_22CA0D38C();
      v168 = v109;
      v171 = v48;
      while (v0 != v45)
      {
        if (KeyPath)
        {
          sub_22CA0D6BC();
        }

        else
        {
          sub_22CA0D918();
          if (v50)
          {
            goto LABEL_73;
          }

          sub_22CA0D6A4();
        }

        sub_22CA0D428();
        if (v108)
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v44 = sub_22CA0D61C();
        v36 = v36;
        v35 = sub_22CA20AF0();
        sub_22CA21010();

        if (sub_22CA0DC58())
        {
          v5 = sub_22C9D71CC();
          sub_22CA0D434();
          v110 = sub_22CA0D39C();
          sub_22CA0D5D8(v110);
          *v5 = 136315650;
          v111 = KeyPath;
          v113 = *v162;
          v112 = v162[1];

          v114 = sub_22CA0D950();
          v4 = sub_22C9D60B0(v114, v112, v115);
          KeyPath = v111;

          *(v5 + 4) = v4;
          sub_22CA0CF34();
          *v48 = v36;
          v116 = v36;
          sub_22CA0D930();
          sub_22CA0DC28(&dword_22C9CA000, v35, v117, "<requestID: %s Final Ranked Candidate #%ld before deep loading: %@");
          sub_22C9DF60C(v48, &unk_27D9E5090, &qword_22CA22E00);
          v0 = v168;
          v48 = v171;
          sub_22C9D70C0();
          sub_22C9D6F60();
          sub_22CA0D034();
        }

        else
        {
        }

        v45 = (v45 + 1);
      }

      sub_22CA0DC10();
      sub_22CA20D40();
      v118 = sub_22CA0DD18();
      if (v0 >= v118)
      {
        break;
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      swift_unknownObjectRelease();
    }

    sub_22CA0D900(v0 - v118);
    if ((v119 & 1) == 0)
    {
      type metadata accessor for MSBiomeMediaReader();
      swift_initStackObject();
      sub_22CA0D41C();
      sub_22C9F2EA4();
      sub_22CA0D41C();

      v48 = v35;
    }

    v36 = MEMORY[0x277D837D0];
    v120 = sub_22C9E6DA0(v48);
    sub_22CA0D594(v120);
    while (v0 != v45)
    {
      if (v44)
      {
        sub_22CA0D6BC();
      }

      else
      {
        sub_22CA0D8F4();
        if (v50)
        {
          goto LABEL_75;
        }

        sub_22CA0D6A4();
      }

      sub_22CA0D428();
      if (v108)
      {
        goto LABEL_74;
      }

      KeyPath = sub_22CA0D61C();
      v121 = v36;
      v35 = sub_22CA20AF0();
      sub_22CA21010();

      if (sub_22CA0DC58())
      {
        v5 = sub_22C9D71CC();
        KeyPath = sub_22CA0D434();
        v122 = sub_22C9D71CC();
        sub_22CA0D5D8(v122);
        *v5 = 136315650;
        sub_22CA0DBF8(v162);
        sub_22CA0D540();
        sub_22CA0D5CC();

        *(v5 + 4) = v48;
        v48 = v171;
        sub_22CA0CF34();
        *KeyPath = v121;
        v123 = v121;
        sub_22CA0D930();
        sub_22CA0DC28(&dword_22C9CA000, v35, v124, "<requestID: %s Final Ranked Candidate #%ld after deep loading: %@");
        sub_22C9DF60C(KeyPath, &unk_27D9E5090, &qword_22CA22E00);
        sub_22CA0D3B8();
        sub_22C9D04CC(v44);
        v44 = v165;
        v0 = v168;
        sub_22C9D70C0();
        sub_22CA0D034();
      }

      else
      {
      }

      v45 = (v45 + 1);
      v36 = MEMORY[0x277D837D0];
    }

    v125 = *(v5 + 248);
    v126 = *(v5 + 240);
    v166 = *(v5 + 232);
    v169 = *(v5 + 256);
    v127 = *(v5 + 224);
    v129 = *(v5 + 112);
    v128 = *(v5 + 120);
    sub_22CA21070();
    sub_22C9D7254();
    v130 = sub_22CA0D64C();
    *(v130 + 16) = xmmword_22CA22FA0;
    v131 = [v129 bundleId];
    sub_22CA20E20();
    sub_22CA0D710();

    *(v130 + 56) = v36;
    *(v130 + 64) = v125;
    *(v130 + 32) = v4;
    *(v130 + 40) = v5;
    v132 = [v128 requestIdentifier];
    sub_22CA20E20();
    sub_22CA0D710();

    *(v130 + 96) = v36;
    *(v130 + 104) = v125;
    *(v130 + 72) = v4;
    *(v130 + 80) = v5;
    sub_22CA0D07C();
    sub_22CA0D4E0();

    v133 = v129;
    sub_22CA0DCB8();
    v134 = v128;
    v135 = v169;
    v136 = sub_22CA20AF0();
    LOBYTE(v127) = sub_22CA21010();

    v137 = os_log_type_enabled(v136, v127);
    v139 = v172[26];
    v138 = v172[27];
    v140 = v172[24];
    v141 = v172[25];
    if (v137)
    {
      sub_22CA0D1FC();
      v142 = sub_22CA0D434();
      v143 = sub_22C9D71CC();
      sub_22CA0D318(v143);
      v144 = sub_22CA0DBB0(3.8523e-34);
      sub_22CA0DB98(v144);
      sub_22CA0D988();
      v145 = [v169 requestIdentifier];
      v164 = v138;
      v146 = sub_22CA20E20();
      v135 = v147;

      sub_22C9D60B0(v146, v135, v173);
      sub_22CA0D528();
      sub_22CA0CF88();
      sub_22CA0DA78(&dword_22C9CA000, v148, v149, "MediaSuggestions: Returning %ld candidates for %s with options: %@, took %fs");
      sub_22C9DF60C(v142, &unk_27D9E5090, &qword_22CA22E00);
      sub_22CA0D2B8();
      sub_22C9D04CC(v139);
      sub_22CA0D0B8();
      sub_22CA0D268();

      v150 = sub_22CA0D2F8();
      v135(v150);
      v151 = v164;
      v152 = v136;
    }

    else
    {

      v153 = sub_22CA0D308();
      v169(v153);
      v151 = v138;
      v152 = v140;
    }

    (v135)(v151, v152);
    sub_22CA0D1DC();

    v154 = sub_22CA0D054();

    return v155(v154);
  }
}

uint64_t sub_22CA081F8()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v3 = v2;
  v5 = *(v4 + 288);
  *v3 = *v1;
  *(v2 + 296) = v6;
  *(v2 + 304) = v0;

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22CA08DE8()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v3 = v2;
  v5 = *(v4 + 320);
  *v3 = *v1;
  *(v2 + 328) = v6;
  *(v2 + 336) = v0;

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22CA099D8()
{
  v1 = v0[35];
  (*(v0[25] + 8))(v0[27], v0[24]);

  v2 = v0[38];
  sub_22CA0DA38();

  sub_22C9D7050();

  return v3();
}

uint64_t sub_22CA09AA0()
{
  v1 = v0[39];
  (*(v0[25] + 8))(v0[27], v0[24]);

  v2 = v0[42];
  sub_22CA0DA38();

  sub_22C9D7050();

  return v3();
}

uint64_t sub_22CA09BF0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22CA09CB4;

  return MSRankedSuggester.suggestions(with:)();
}

uint64_t sub_22CA09CB4()
{
  sub_22CA0D6D4();
  v2 = v0;
  sub_22C9D70B4();
  v4 = v3;
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  sub_22C9D6EA4();
  *v10 = v9;

  if (v0)
  {
    if (v6)
    {
      v11 = v4[4];
      v12 = sub_22CA20920();

      v11[2](v11, 0, v12);
      v13 = v11;
LABEL_6:
      _Block_release(v13);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v14 = v4[4];
      type metadata accessor for MSSuggestion(0);
      v12 = sub_22CA20EB0();

      v14[2](v14, v12, 0);
      v13 = v14;
      goto LABEL_6;
    }
  }

LABEL_9:
  sub_22C9D7050();

  return v15();
}

uint64_t sub_22CA09EBC()
{
  sub_22C9D6F3C();
  *(v0 + 16) = sub_22CA20F50();
  *(v0 + 24) = sub_22CA20F40();
  v2 = sub_22CA20F10();

  return MEMORY[0x2822009F8](sub_22CA09F50, v2, v1);
}

uint64_t sub_22CA09F50()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 24);

  if (qword_28143A0D0 != -1)
  {
    swift_once();
  }

  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22CA09FE0()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 16);
  *(v0 + 32) = sub_22CA20F40();
  v3 = sub_22CA20F10();

  return MEMORY[0x2822009F8](sub_22CA0A068, v3, v2);
}

uint64_t sub_22CA0A068()
{
  sub_22C9D6F3C();
  v1 = v0[4];

  v0[5] = qword_28143A0D8;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22CA0A11C;

  return sub_22C9E5930(0xD000000000000012, 0x800000022CA27F60);
}

uint64_t sub_22CA0A11C()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;

  v6 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22CA0A204()
{
  v52 = v0;
  v4 = v0[7];
  if (*(v4 + 16))
  {
LABEL_2:
    if (qword_28143A320 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v5 = sub_22CA20B10();
      sub_22C9D0494(v5, &unk_28143A4E0);
      v6 = sub_22CA20AF0();
      v7 = sub_22CA21010();
      if (sub_22CA0D874(v7))
      {
        v8 = sub_22C9D7164();
        sub_22C9D71CC();
        sub_22CA0D9CC();
        *v8 = 136315138;

        MEMORY[0x2318BAA20](v9, MEMORY[0x277D837D0]);
        sub_22CA0D758();

        sub_22C9D60B0(v2, v3, &v51);
        sub_22CA0D5CC();

        *(v8 + 4) = v2;
        sub_22CA0D578(&dword_22C9CA000, v10, v1, "allowed bundleIDs before filtering: %s");
        sub_22C9D6F60();
        sub_22C9D6FFC();
      }

      v3 = *(v4 + 16);

      v11 = 0;
      v1 = MEMORY[0x277D84F90];
LABEL_6:
      for (i = (v4 + 40 + 16 * v11); ; i += 2)
      {
        if (v3 == v11)
        {

          v18 = sub_22CA20AF0();
          v19 = sub_22CA21010();

          if (sub_22C9D72E0())
          {
            v20 = sub_22C9D7164();
            sub_22C9D71CC();
            sub_22CA0D9CC();
            *v20 = 136315138;
            v21 = MEMORY[0x2318BAA20](v1, MEMORY[0x277D837D0]);
            v23 = sub_22C9D60B0(v21, v22, &v51);

            *(v20 + 4) = v23;
            sub_22CA0D578(&dword_22C9CA000, v24, v19, "allowed bundleIDs after filtering: %s");
            sub_22C9D6F60();
            sub_22C9D6FFC();
          }

          sub_22C9E6EBC();
          sub_22C9D722C();

          __asm { BRAA            X2, X16 }
        }

        if (v11 >= *(v4 + 16))
        {
          break;
        }

        v14 = *(i - 1);
        v13 = *i;

        v15 = sub_22CA20E10();
        v2 = sub_22CA0CAB8(v15);

        if (v2)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22CA0D890();
            v1 = v51;
          }

          v17 = *(v1 + 16);
          v2 = v17 + 1;
          if (v17 >= *(v1 + 24) >> 1)
          {
            sub_22CA0D82C();
            v1 = v51;
          }

          sub_22CA0D9E4();
          goto LABEL_6;
        }

        ++v11;
      }

      __break(1u);
LABEL_31:
      sub_22CA0CEA4();
    }
  }

  v27 = [objc_opt_self() availablebundleIDsForMediaSuggestions];
  v28 = sub_22CA20EC0();
  v0[8] = v28;

  if (!*(v28 + 16))
  {
    v4 = v28;
    goto LABEL_2;
  }

  if (qword_28143A320 != -1)
  {
    sub_22CA0CEA4();
  }

  v29 = sub_22CA20B10();
  sub_22C9D0494(v29, &unk_28143A4E0);
  v30 = sub_22CA20AF0();
  v31 = sub_22CA21010();
  if (sub_22CA0D874(v31))
  {
    v32 = sub_22C9D7164();
    v33 = sub_22C9D71CC();
    v51 = v33;
    *v32 = 136315138;

    v35 = MEMORY[0x2318BAA20](v34, MEMORY[0x277D837D0]);
    v37 = v36;

    v38 = sub_22C9D60B0(v35, v37, &v51);

    *(v32 + 4) = v38;
    sub_22CA0D9B4();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    sub_22C9D04CC(v33);
    sub_22C9D6FFC();
    sub_22CA0D158();
  }

  v44 = swift_task_alloc();
  v0[9] = v44;
  *v44 = v0;
  v44[1] = sub_22CA0A67C;
  v45 = v0[5];
  sub_22C9D722C();

  return MSMediaAppIntentsCacheManager.saveBundleIDsToCache(_:usecase:)(v46, v47, v48);
}

uint64_t sub_22CA0A67C()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  sub_22C9D6EA4();
  *v5 = v4;

  v6 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_22CA0A77C()
{
  v4 = *(v0 + 64);
  if (qword_28143A320 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = sub_22CA20B10();
    sub_22C9D0494(v5, &unk_28143A4E0);
    v6 = sub_22CA20AF0();
    v7 = sub_22CA21010();
    if (sub_22CA0D874(v7))
    {
      v8 = sub_22C9D7164();
      sub_22C9D71CC();
      sub_22CA0D9CC();
      *v8 = 136315138;

      MEMORY[0x2318BAA20](v9, MEMORY[0x277D837D0]);
      sub_22CA0D758();

      sub_22C9D60B0(v2, v3, &v27);
      sub_22CA0D5CC();

      *(v8 + 4) = v2;
      sub_22CA0D578(&dword_22C9CA000, v10, v1, "allowed bundleIDs before filtering: %s");
      sub_22C9D6F60();
      sub_22C9D6FFC();
    }

    v3 = *(v4 + 16);

    v11 = 0;
    v1 = MEMORY[0x277D84F90];
LABEL_5:
    for (i = (v4 + 40 + 16 * v11); ; i += 2)
    {
      if (v3 == v11)
      {

        v18 = sub_22CA20AF0();
        v19 = sub_22CA21010();

        if (sub_22C9D72E0())
        {
          v20 = sub_22C9D7164();
          sub_22C9D71CC();
          sub_22CA0D9CC();
          *v20 = 136315138;
          v21 = MEMORY[0x2318BAA20](v1, MEMORY[0x277D837D0]);
          v23 = sub_22C9D60B0(v21, v22, &v27);

          *(v20 + 4) = v23;
          sub_22CA0D578(&dword_22C9CA000, v24, v19, "allowed bundleIDs after filtering: %s");
          sub_22C9D6F60();
          sub_22C9D6FFC();
        }

        sub_22C9E6EBC();
        sub_22C9D722C();

        __asm { BRAA            X2, X16 }
      }

      if (v11 >= *(v4 + 16))
      {
        break;
      }

      v14 = *(i - 1);
      v13 = *i;

      v15 = sub_22CA20E10();
      v2 = sub_22CA0CAB8(v15);

      if (v2)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22CA0D890();
          v1 = v27;
        }

        v17 = *(v1 + 16);
        v2 = v17 + 1;
        if (v17 >= *(v1 + 24) >> 1)
        {
          sub_22CA0D82C();
          v1 = v27;
        }

        sub_22CA0D9E4();
        goto LABEL_5;
      }

      ++v11;
    }

    __break(1u);
LABEL_21:
    sub_22CA0CEA4();
  }
}

uint64_t sub_22CA0AA1C@<X0>(void *a1@<X8>)
{
  sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  result = sub_22CA20B90();
  *a1 = v3;
  return result;
}

uint64_t sub_22CA0AA6C(id *a1)
{
  v1 = *a1;
  sub_22C9D02E4(&qword_27D9E50A0, &unk_22CA24AC0);
  return sub_22CA20BA0();
}

void *static MSRankedSuggester.availablebundleIDsForMediaSuggestions()()
{
  v0 = sub_22CA209F0();
  v1 = sub_22C9DAE90(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_22CA21080();
  if (qword_28143A1E8 != -1)
  {
    sub_22CA0CF14();
  }

  if (qword_28143A1F0 != -1)
  {
    sub_22CA0CEF4();
  }

  v11 = sub_22CA20AE0();
  sub_22C9D0494(v11, qword_28143A4C0);
  sub_22CA0D114();
  sub_22CA20AC0();
  sub_22CA209E0();
  sub_22CA209B0();
  v12 = *(v3 + 8);
  v12(v8, v0);
  sub_22CA209E0();
  v20[3] = MEMORY[0x277D84FA0];
  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  sub_22C9F81A4();
  v14 = v13;
  sub_22C9F8EBC();
  v16 = v15;
  sub_22CA0AD88(v14);

  sub_22CA0AD88(v16);

  sub_22CA21070();
  sub_22CA0D114();
  sub_22CA20AC0();

  v18 = sub_22CA054BC(v17);
  v12(v8, v0);
  v12(v10, v0);

  return v18;
}

uint64_t sub_22CA0AD88(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 40); v1; --v1)
  {
    v4 = *(i - 1);
    v3 = *i;
    swift_bridgeObjectRetain_n();
    sub_22CA15904(&v5, v4, v3);

    i += 2;
  }

  return result;
}

uint64_t static MSRankedSuggester.availableBundleIDs(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_22CA20F70();
  sub_22C9D0B98(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_22C9D1034(0, 0, v8, &unk_22CA24830, v10);
}

uint64_t sub_22CA0AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_22CA0AFEC;

  return static MSRankedSuggester.availableBundleIDs()();
}

uint64_t sub_22CA0AFEC()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22CA0B0D4()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));

  sub_22C9D7050();

  return v2();
}

uint64_t sub_22CA0B1CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9D02E4(&unk_27D9E4A00, &qword_22CA22D90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_22CA20F70();
  sub_22C9D0B98(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v13 = v3;
  v14 = a1;

  sub_22C9D1034(0, 0, v10, &unk_22CA24850, v12);
}

uint64_t sub_22CA0B2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  return MEMORY[0x2822009F8](sub_22CA0B2F4, 0, 0);
}

uint64_t sub_22CA0B2F4()
{
  sub_22CA0D6D4();
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22CA0B418;
  v3 = swift_continuation_init();
  v0[17] = sub_22C9D02E4(&qword_27D9E5110, &qword_22CA24858);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22CA0ECEC;
  v0[13] = &unk_283FCE210;
  v0[14] = v3;
  [v2 suggestionsWithOptions:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22CA0B418()
{
  sub_22C9D6F3C();
  sub_22C9D70B4();
  sub_22C9D6F94();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_22C9D70D8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22CA0B514()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 144), 0);

  sub_22C9D7050();

  return v2();
}

uint64_t sub_22CA0B584()
{
  sub_22CA0D6D4();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  swift_willThrow();
  v4 = v1;
  v3(0, v1);

  sub_22C9D7050();

  return v5();
}

uint64_t MSRankedSuggester.candidates(for:)(void *a1)
{
  v3 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22CA0D4A0(v5, v40);
  v7 = MEMORY[0x28223BE20](v6);
  v42 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  sub_22CA0D93C();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  sub_22CA21080();
  if (qword_28143A1E8 != -1)
  {
    sub_22CA0CF14();
  }

  v40 = v1;
  v41 = v11;
  v12 = qword_28143A4B8;
  if (qword_28143A1F0 != -1)
  {
    sub_22CA0CEF4();
  }

  v13 = sub_22CA20AE0();
  sub_22C9D0494(v13, qword_28143A4C0);
  v45 = sub_22C9D02E4(&qword_27D9E5080, &qword_22CA24838);
  v14 = sub_22CA0D64C();
  v44 = xmmword_22CA22FA0;
  *(v14 + 16) = xmmword_22CA22FA0;
  v15 = [a1 bundleId];
  v16 = sub_22CA20E20();
  v18 = v17;

  v19 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v20 = sub_22CA0CBDC();
  *(v14 + 64) = v20;
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v21 = [v47 requestIdentifier];
  v22 = sub_22CA20E20();
  v24 = v23;

  *(v14 + 96) = v19;
  *(v14 + 104) = v20;
  *(v14 + 72) = v22;
  *(v14 + 80) = v24;
  sub_22CA0D114();
  sub_22CA0D664();

  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v48 = MEMORY[0x277D84F90];
  v25 = sub_22CA0D68C();
  v46 = v12;
  if (v25 != 1 && sub_22CA0D68C() != 2)
  {
    sub_22CA209F0();
    v26 = v41;
    sub_22CA0D338(v41);
    v27 = v40;
    v28 = sub_22CA0D090(v40, 1);
    sub_22C9F0A1C(v28, v29, v30, v27);
    v12 = &unk_27D9E4F00;
    sub_22CA0DB78();
    sub_22C9DF60C(v26, &unk_27D9E4F00, &unk_22CA232D0);

    sub_22CA0DBC8();
  }

  if (sub_22CA0D68C() == 1 || sub_22CA0D68C() == 2)
  {
    sub_22CA209F0();
    v31 = v42;
    sub_22CA0D338(v42);
    v12 = v43;
    v32 = sub_22CA0D090(v43, 1);
    sub_22C9F7EA0(v32);
    v33 = sub_22CA0D21C();
    sub_22C9DF60C(v33, v34, &unk_22CA232D0);
    sub_22C9DF60C(v31, &unk_27D9E4F00, &unk_22CA232D0);
    sub_22CA0DBC8();
  }

  sub_22CA21070();
  v35 = sub_22CA0D64C();
  *(v35 + 16) = v44;
  v36 = [a1 bundleId];
  sub_22CA20E20();
  sub_22CA0DCD0();
  v37 = MEMORY[0x277D837D0];
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = v20;
  *(v35 + 32) = v12;
  *(v35 + 40) = a1;
  v38 = [v47 requestIdentifier];
  sub_22CA20E20();
  sub_22CA0DCD0();
  *(v35 + 96) = v37;
  *(v35 + 104) = v20;
  *(v35 + 72) = v12;
  *(v35 + 80) = a1;
  sub_22CA0D114();
  sub_22CA0D9F8();

  return v48;
}

uint64_t MSRankedSuggester.candidates(for:from:to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v5 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22CA0D4A0(v7, v45);
  v9 = MEMORY[0x28223BE20](v8);
  v47 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  sub_22CA0D93C();
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  sub_22CA21080();
  if (qword_28143A1E8 != -1)
  {
    sub_22CA0CF14();
  }

  v45 = v3;
  v46 = v13;
  v14 = qword_28143A4B8;
  if (qword_28143A1F0 != -1)
  {
    sub_22CA0CEF4();
  }

  v15 = sub_22CA20AE0();
  sub_22C9D0494(v15, qword_28143A4C0);
  v52 = sub_22C9D02E4(&qword_27D9E5080, &qword_22CA24838);
  v16 = sub_22CA0D64C();
  v51 = xmmword_22CA22FA0;
  *(v16 + 16) = xmmword_22CA22FA0;
  v17 = [a1 bundleId];
  v18 = sub_22CA20E20();
  v20 = v19;

  v21 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v22 = sub_22CA0CBDC();
  *(v16 + 64) = v22;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v23 = [v54 requestIdentifier];
  v24 = sub_22CA20E20();
  v26 = v25;

  *(v16 + 96) = v21;
  *(v16 + 104) = v22;
  *(v16 + 72) = v24;
  *(v16 + 80) = v26;
  sub_22CA0D114();
  sub_22CA0D664();

  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v55 = MEMORY[0x277D84F90];
  v27 = sub_22CA0D68C();
  v53 = v14;
  if (v27 != 1 && sub_22CA0D68C() != 2)
  {
    sub_22CA209F0();
    v28 = v46;
    sub_22CA0D338(v46);
    v29 = v45;
    v30 = sub_22CA0D090(v45, 1);
    sub_22C9F0A1C(v30, v31, v32, v29);
    v14 = &unk_27D9E4F00;
    sub_22CA0DB78();
    sub_22C9DF60C(v28, &unk_27D9E4F00, &unk_22CA232D0);

    sub_22CA0DBC8();
  }

  if (sub_22CA0D68C() == 1 || sub_22CA0D68C() == 2)
  {
    v33 = sub_22CA209F0();
    sub_22C9E054C(v33);
    v35 = *(v34 + 16);
    v36 = v47;
    v35(v47, v48, v33);
    sub_22C9D0B98(v36, 0, 1, v33);
    v14 = v50;
    v35(v50, v49, v33);
    v37 = sub_22CA0D090(v14, 0);
    sub_22C9F7EA0(v37);
    v38 = sub_22CA0D21C();
    sub_22C9DF60C(v38, v39, &unk_22CA232D0);
    sub_22C9DF60C(v36, &unk_27D9E4F00, &unk_22CA232D0);
    sub_22CA0DBC8();
  }

  sub_22CA21070();
  v40 = sub_22CA0D64C();
  *(v40 + 16) = v51;
  v41 = [a1 bundleId];
  sub_22CA20E20();
  sub_22CA0DCD0();
  v42 = MEMORY[0x277D837D0];
  *(v40 + 56) = MEMORY[0x277D837D0];
  *(v40 + 64) = v22;
  *(v40 + 32) = v14;
  *(v40 + 40) = a1;
  v43 = [v54 requestIdentifier];
  sub_22CA20E20();
  sub_22CA0DCD0();
  *(v40 + 96) = v42;
  *(v40 + 104) = v22;
  *(v40 + 72) = v14;
  *(v40 + 80) = a1;
  sub_22CA0D114();
  sub_22CA0D9F8();

  return v55;
}