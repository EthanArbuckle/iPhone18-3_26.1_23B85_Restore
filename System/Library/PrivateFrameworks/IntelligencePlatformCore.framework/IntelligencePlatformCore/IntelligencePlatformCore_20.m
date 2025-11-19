uint64_t sub_1C45AC844()
{
  v1 = v0[48];
  v2 = v0[35];
  v32 = v0[33];
  v34 = v0[34];
  sub_1C442E860(v2 + 48, (v0 + 16));
  v3 = *(v2 + 88);
  v4 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);

  v5 = [v4 init];
  type metadata accessor for PassKitSignal();
  inited = swift_initStackObject();
  v0[57] = inited;
  v7 = v0[19];
  v8 = v0[20];
  v9 = sub_1C4418280((v0 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v12 = sub_1C43FBE7C();
  (*(v10 + 16))(v12, v9, v7);
  v0[58] = sub_1C4A873E0(v12, v5, v3, inited, v7, v8);
  sub_1C440962C(v0 + 16);

  sub_1C4575ED0();
  v13 = sub_1C4F01088();
  if (v13)
  {
    v31 = v0[56];
    v33 = v0[55];
    v16 = v0[53];
    v17 = v0[54];
    v18 = v0[52];
    v20 = v0[48];
    v19 = v0[49];
    v21 = v0[33];
    v22 = v0[34];
    v23 = v19[2];
    v0[59] = v23;
    v0[60] = (v19 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v17, v21, v20);
    v23(v17 + *(v18 + 48), v22, v20);
    sub_1C45AD5C0();
    v30 = *(v18 + 48);
    v24 = v19[4];
    v0[61] = v24;
    v0[62] = (v19 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v31, v16, v20);
    v25 = v19[1];
    v0[63] = v25;
    v0[64] = (v19 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v16 + v30, v20);
    sub_1C4508DB8();
    v24(v31 + *(v33 + 36), v16 + *(v18 + 48), v20);
    v25(v16, v20);
    sub_1C4A85140(v31, v0 + 31);
    sub_1C4420C3C(v0[56], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v26 = v0[31];
    v27 = v0[32];
    v0[65] = v26;
    v0[66] = *(v26 + 16);
    v0[67] = v27;
    sub_1C43FCE74();
    sub_1C440405C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C45ACD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 536);
  if (v4 < *(v3 + 528))
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v3 + 520);
      if (v4 < *(v5 + 16))
      {
        v7 = *(v3 + 376);
        v6 = *(v3 + 384);
        sub_1C442E860(v5 + 40 * v4 + 32, v3 + 168);
        v8 = v4 + 1;
        v9 = *(v3 + 192);
        v10 = *(v3 + 200);
        sub_1C4409678((v3 + 168), v9);
        (*(v10 + 8))(v9, v10);
        if (sub_1C44157D4(v7, 1, v6) == 1)
        {
          v11 = *(v3 + 408);
          v12 = *(v3 + 320);
          sub_1C4420C3C(*(v3 + 376), &unk_1EC0B84E0, qword_1C4F0D2D0);
          v13 = sub_1C440A564();
          v16 = v12;
        }

        else
        {
          v17 = *(v3 + 496);
          v18 = *(v3 + 472);
          v19 = *(v3 + 480);
          v21 = *(v3 + 400);
          v20 = *(v3 + 408);
          v22 = *(v3 + 384);
          v23 = *(v3 + 360);
          v24 = *(v3 + 368);
          v58 = *(v3 + 336);
          v25 = *(v3 + 320);
          (*(v3 + 488))(v21, *(v3 + 376), v22);
          v18(v20, v21, v22);
          v18(v20 + *(v25 + 28), v21, v22);
          sub_1C442E860(v3 + 168, v3 + 208);
          sub_1C440BAA8(v23, 1, 1, v22);
          sub_1C44085D0();
          v26 = v22[1];
          v27 = sub_1C43FD074();
          v28(v27);
          sub_1C45AD734(v24, v23);
          sub_1C44085D0();
          v29 = v22[4];
          v30 = sub_1C43FD074();
          v32 = v31(v30);
          if (v32 == 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = 2;
          }

          if (!v32)
          {
            v33 = 0;
          }

          *(v23 + *(v58 + 20)) = v33;
          sub_1C44085D0();
          v34 = v22[7];
          v35 = sub_1C43FD074();
          v37 = v36(v35);
          v38 = (v23 + *(v58 + 24));
          *v38 = v37;
          v38[1] = v39;
          v40 = *(v3 + 240);
          sub_1C4409678((v3 + 208), *(v3 + 232));
          v41 = *(v40 + 64);
          v42 = sub_1C4402B58();
          v44 = v43(v42);
          v45 = 9;
          if (v44 < 9)
          {
            v45 = v44;
          }

          v47 = *(v3 + 504);
          v46 = *(v3 + 512);
          v48 = *(v3 + 400);
          v49 = *(v3 + 408);
          v50 = *(v3 + 384);
          v51 = *(v3 + 360);
          v52 = *(v3 + 320);
          v53 = *(v52 + 32);
          *(v51 + *(*(v3 + 336) + 28)) = v45;
          sub_1C45AD61C(v51, v49 + v53);
          sub_1C440962C((v3 + 208));
          sub_1C43FFCE0();
          sub_1C45AD6DC(v51, v54);
          v55 = sub_1C4402B58();
          v47(v55);
          sub_1C43FBD94();
          v16 = v52;
        }

        sub_1C440BAA8(v13, v14, v15, v16);
        sub_1C440962C((v3 + 168));
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  sub_1C440BAA8(*(v3 + 408), 1, 1, *(v3 + 320));
  v8 = *(v3 + 536);
LABEL_16:
  *(v3 + 544) = v8;
  sub_1C43FCE74();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1C45AD020()
{
  v1 = v0[40];
  if (sub_1C44157D4(v0[51], 1, v1) == 1)
  {
    goto LABEL_10;
  }

  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[39];
  sub_1C4508DB8();
  sub_1C45AD61C(v4 + *(v1 + 32), v2);
  sub_1C4420C3C(v4, &qword_1EC0B97B8, &unk_1C4F0F7F0);
  if (swift_dynamicCast())
  {
    v6 = v0[44];
    v7 = v0[42];
    v8 = v0[39];
    sub_1C43FBD94();
    sub_1C440BAA8(v9, v10, v11, v7);
    sub_1C45AD680();
    v12 = v0[44];
    if (*(v6 + *(v7 + 20)))
    {
      sub_1C45AD6DC(v12, type metadata accessor for WalletPassContent);
      goto LABEL_6;
    }

    v23 = *(v12 + *(v0[42] + 28));
    sub_1C43FFCE0();
    sub_1C45AD6DC(v24, v25);
    if ((v23 & 0xFE) == 2)
    {
LABEL_10:
      v26 = v0[65];
      v27 = v0[58];

      v28 = v0[56];
      v30 = v0[53];
      v29 = v0[54];
      v32 = v0[50];
      v31 = v0[51];
      v34 = v0[46];
      v33 = v0[47];
      v36 = v0[44];
      v35 = v0[45];
      v37 = v0[43];
      sub_1C4404B50();

      v38 = v0[1];
      sub_1C440405C();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    v13 = v0[42];
    v14 = v0[39];
    v15 = sub_1C440A564();
    sub_1C440BAA8(v15, v16, v17, v18);
    sub_1C4420C3C(v14, &qword_1EC0B97B0, &qword_1C4F30780);
  }

LABEL_6:
  v0[67] = v0[68];
  sub_1C43FCE74();
  sub_1C440405C();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

double sub_1C45AD2A8(char a1, uint64_t a2)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0.0;
  if (a1)
  {
    v10 = *(a2 + 96);
    v11._countAndFlagsBits = 0x74694B73736150;
    v12.value._countAndFlagsBits = 0x726568746FLL;
    v11._object = 0xE700000000000000;
    v12.value._object = 0xE500000000000000;
    v9 = ConfidenceService.confidence(source:signalType:)(v11, v12);
  }

  sub_1C4F00198();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v13, v14, "eventConfidenceDueToBoardingPass = %f", v15, 0xCu);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_1C45AD438()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1C440962C((v0 + 48));
  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  return v0;
}

uint64_t sub_1C45AD488()
{
  sub_1C45AD438();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45AD4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C44A7DA0;

  return sub_1C45AB548(a1, a2, a3, a4);
}

uint64_t sub_1C45AD5C0()
{
  sub_1C4404078();
  v4 = sub_1C456902C(v2, v3);
  sub_1C43FBCE0(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C45AD61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPassContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45AD680()
{
  sub_1C4404078();
  v3 = v2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C45AD6DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C45AD734(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C45AD7A4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1C45AD7B4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C45AD7A4(*a1);
  *a2 = result;
  return result;
}

void sub_1C45AD814()
{
  v1 = *v0;
  v2 = objc_autoreleasePoolPush();
  sub_1C45AD894(v0);

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1C45AD894(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v6 = [v5 AutonamingSuggestions];
  swift_unknownObjectRelease();
  v7 = [v6 Feedback];
  swift_unknownObjectRelease();
  v59 = v7;
  v8 = sub_1C45ADF4C(v7);
  v62 = v9;
  v10 = sub_1C45AE3B8(v9);
  v63 = v8;
  sub_1C45AE578(v8, v10);
  swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = *(a1 + 16);
  result = swift_bridgeObjectRetain_n();
  v18 = 0;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = *(*(v11 + 56) + 8 * v20);
      v14 &= v14 - 1;
      LOBYTE(v66[0]) = *(*(v11 + 48) + v20);
      v66[1] = v21;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22 = v65;
      sub_1C45AE66C(v66, a1);
      v65 = v22;

      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v19);
    ++v18;
    if (v14)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  if (!v10)
  {

    v45 = MEMORY[0x1E69E7CC8];
    v29 = v64;
LABEL_42:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    swift_isUniquelyReferenced_nonNull_native();
    v66[0] = v45;
    sub_1C44684D4();
    sub_1C4F00288();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F00268();

    sub_1C4F00138();
    v51 = sub_1C4F00968();
    v52 = sub_1C4F01CC8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66[0] = v54;
      *v53 = 136315395;
      *(v53 + 4) = sub_1C441D828(0xD00000000000001ALL, 0x80000001C4F8AC80, v66);
      *(v53 + 12) = 2081;
      sub_1C4468200();

      v55 = sub_1C4F00EE8();
      v57 = v56;

      v58 = sub_1C441D828(v55, v57, v66);

      *(v53 + 14) = v58;
      _os_log_impl(&dword_1C43F8000, v51, v52, "Autonaming service sent CA event:%s, payload: %{private}s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v54, -1, -1);
      MEMORY[0x1C6942830](v53, -1, -1);
    }

    (*(v60 + 8))(v29, v61);
  }

  v23 = 0;
  v24 = 0;
  v25 = 1 << *(v10 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v10 + 64);
  v28 = (v25 + 63) >> 6;
  v29 = v64;
  while (v27)
  {
    v30 = v23;
LABEL_21:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = *(*(v10 + 56) + ((v30 << 9) | (8 * v31)));
    v33 = __OFADD__(v24, v32);
    v24 += v32;
    if (v33)
    {
      __break(1u);
LABEL_24:

      v34 = 0;
      v35 = 0;
      v36 = 1 << *(v63 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(v63 + 64);
      v39 = (v36 + 63) >> 6;
      do
      {
        if (!v38)
        {
          while (1)
          {
            v40 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_47;
            }

            if (v40 >= v39)
            {
              goto LABEL_36;
            }

            v38 = *(v63 + 64 + 8 * v40);
            ++v34;
            if (v38)
            {
              v34 = v40;
              goto LABEL_33;
            }
          }
        }

        v40 = v34;
LABEL_33:
        v41 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v42 = *(*(v63 + 56) + ((v40 << 11) | (32 * v41)) + 24);
        v33 = __OFADD__(v35, v42);
        v35 += v42;
      }

      while (!v33);
      __break(1u);
LABEL_36:

      v33 = __OFADD__(v24, v35);
      v43 = v24 + v35;
      if (v33)
      {
        goto LABEL_48;
      }

      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v44 = MEMORY[0x1E69E7CC8];
      swift_isUniquelyReferenced_nonNull_native();
      v66[0] = v44;
      sub_1C44684D4();
      v45 = v66[0];
      result = sub_1C45AF51C();
      if (v46)
      {
        goto LABEL_42;
      }

      v47 = v24 + result;
      if (!__OFADD__(v24, result))
      {
        if (v47 >= 1)
        {
          v48 = v24 / v47;
          v49 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v50 = v48;
          [v49 initWithFloat_];
          swift_isUniquelyReferenced_nonNull_native();
          v66[0] = v45;
          sub_1C44684D4();
          v45 = v66[0];
        }

        goto LABEL_42;
      }

      goto LABEL_49;
    }
  }

  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
      goto LABEL_24;
    }

    v27 = *(v10 + 64 + 8 * v30);
    ++v23;
    if (v27)
    {
      v23 = v30;
      goto LABEL_21;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1C45ADF4C(void *a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBD08();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = sub_1C4EF9CD8();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C43FBDBC();
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x1E69E7CD0];
  sub_1C43FBDBC();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC8];
  v21 = objc_autoreleasePoolPush();
  sub_1C4EF9C38();
  (*(v13 + 16))(v9, v18, v10);
  sub_1C440BAA8(v9, 0, 1, v10);
  sub_1C440BAA8(v6, 1, 1, v10);
  v22 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v23 = sub_1C457A86C(v9, v6, 0, 0, 0);
  v24 = [a1 publisherWithOptions_];

  (*(v13 + 8))(v18, v10);
  objc_autoreleasePoolPop(v21);
  sub_1C43FBDBC();
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x1E69E7CD0];
  v40 = sub_1C45AF984;
  v41 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1C45AF9C8;
  v39 = &unk_1F43E17A8;
  v26 = _Block_copy(&aBlock);
  v27 = [v24 filterWithIsIncluded_];
  _Block_release(v26);
  v40 = nullsub_1;
  v41 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1C44405F8;
  v39 = &unk_1F43E17D0;
  v28 = _Block_copy(&aBlock);
  v29 = swift_allocObject();
  v29[2] = v20;
  v29[3] = v19;
  v29[4] = v25;
  v40 = sub_1C45B1F90;
  v41 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1C4440590;
  v39 = &unk_1F43E1820;
  v30 = _Block_copy(&aBlock);

  v31 = [v27 sinkWithCompletion:v28 receiveInput:v30];

  _Block_release(v30);
  _Block_release(v28);

  swift_beginAccess();
  v32 = *(v20 + 16);
  swift_beginAccess();
  v33 = *(v25 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v32;
}

uint64_t sub_1C45AE3B8(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4411790(OBJC_IVAR____TtC24IntelligencePlatformCore31AutonamingFeedbackCAEventLogger_config);
  v11 = type metadata accessor for GraphStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  GraphStore.init(config:)(v10);
  v14 = sub_1C45B00A4(a1);

  return v14;
}

uint64_t sub_1C45AE578(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = *(a1 + 32);
  sub_1C43FD030();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_7:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v15 << 6);
      LOBYTE(v16) = *(*(a1 + 48) + v17);
      v18 = (*(a1 + 56) + 32 * v17);
      LOBYTE(v20) = v16;
      v19 = v18[1];
      v21 = *v18;
      v22 = v19;
      result = sub_1C45AFDF4(&v20, a2, v2);
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v6 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1C45AE66C(unsigned __int8 *a1, uint64_t a2)
{
  v5 = sub_1C4F00978();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v10 = *(a1 + 1);
  sub_1C4F00288();
  sub_1C4F00268();
  sub_1C4F00138();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();

  if (os_log_type_enabled(v11, v12))
  {
    v24[0] = v5;
    v24[1] = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315651;
    *(v13 + 4) = sub_1C441D828(0xD00000000000001ALL, 0x80000001C4F8AC80, &v26);
    *(v13 + 12) = 2081;
    swift_beginAccess();
    v15 = *(a2 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B97D8, &qword_1C4F0F958);
    sub_1C45B1E90();
    v16 = sub_1C4F00EE8();
    v18 = v17;

    v19 = sub_1C441D828(v16, v18, &v26);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    v20 = 0xE700000000000000;
    v21 = 0x74696B656D6F68;
    switch(v25)
    {
      case 1:
        v20 = 0x80000001C4F8ACE0;
        v21 = 0xD000000000000011;
        break;
      case 2:
        break;
      case 3:
        v20 = 0xE800000000000000;
        v21 = 0x736567617373656DLL;
        break;
      default:
        v20 = 0x80000001C4F8AD00;
        v21 = 0xD000000000000012;
        break;
    }

    v23 = sub_1C441D828(v21, v20, &v26);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_1C43F8000, v11, v12, "Autonaming service sent CA event:%s, payload:%{private}s, source:%s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v14, -1, -1);
    MEMORY[0x1C6942830](v13, -1, -1);

    return (*(v6 + 8))(v9, v24[0]);
  }

  else
  {

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1C45AE9E8(uint64_t a1, void *a2)
{
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FCDF8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = 0;
  v37 = a1;
  v38 = *(a1 + 16);
  v13 = (v12 + 16);
  v33 = v12;
  v34 = a2;
  v36 = (v12 + 8);
  while (1)
  {
    if (v38 == v11)
    {
    }

    v14 = *(type metadata accessor for GraphTriple(0) - 8);
    v15 = *v13;
    (*v13)(v10, v37 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, v4);
    if (*(*a2 + 16))
    {
      sub_1C44E3664();
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v35 = v15;
    v40 = v11;
    v39 = objc_autoreleasePoolPush();
    v17 = GraphStore.loadGraphTriples(subject:)();
    v18 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *a2;
    v41 = *a2;
    v20 = v10;
    sub_1C44E3664();
    if (__OFADD__(*(v19 + 16), (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    sub_1C456902C(&qword_1EC0B97D0, &qword_1C4F0F940);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_18;
      }

      v23 = v25;
    }

    if (v24)
    {
      v27 = v41[7];
      v28 = *(v27 + 8 * v23);
      *(v27 + 8 * v23) = v17;
    }

    else
    {
      v41[(v23 >> 6) + 8] |= 1 << v23;
      v35(v41[6] + *(v33 + 72) * v23, v20, v4);
      *(v41[7] + 8 * v23) = v17;
      v29 = v41[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_17;
      }

      v41[2] = v31;
    }

    a2 = v34;
    *v34 = v41;
    objc_autoreleasePoolPop(v39);
    v11 = v40;
    v10 = v20;
LABEL_14:
    (*v36)(v10, v4);
    ++v11;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C45AECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_1C4EFEEF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v31 = *(a1 + 16);
  v28 = (v6 + 16);
  v29 = a1;
  v27 = (v6 + 8);
  while (v10 != v31)
  {
    v11 = type metadata accessor for GraphTriple(0);
    v12 = v11[7];
    v32 = v29 + ((*(*(v11 - 1) + 80) + 32) & ~*(*(v11 - 1) + 80)) + *(*(v11 - 1) + 72) * v10;
    v13 = v32 + v12;
    if (sub_1C4EFED18())
    {
      v13 = v32 + v11[5];
    }

    v37 = v10 + 1;
    (*v28)(v9, v13, v5);
    v14 = 0;
    v15 = *(a2 + 16);
    while (v15 != v14)
    {
      v16 = v14 + 1;
      v17 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14;
      sub_1C45B1F48(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
      v18 = sub_1C4F010B8();
      v14 = v16;
      if (v18)
      {
        v19 = (v32 + v11[11]);
        v20 = *v19;
        v21 = v19[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v22 = objc_autoreleasePoolPush();
        v35 = v20;
        v36 = v21;
        v33 = 30;
        v34 = 0xE100000000000000;
        sub_1C4415EA8();
        v23 = sub_1C4F01FC8();

        objc_autoreleasePoolPop(v22);
        v24 = v30;
        sub_1C45AF490(v23);
        v30 = v24;

        break;
      }
    }

    (*v27)(v9, v5);
    v10 = v37;
  }
}

uint64_t sub_1C45AEFB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = a3;
  v20 = a2;
  v19 = sub_1C456902C(&qword_1EC0B97C8, &unk_1C4F0F930);
  v5 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v19 - v6;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(a1 + 48);
    v18 = sub_1C4EFF0C8();
    (*(*(v18 - 8) + 16))(v7, v17 + *(*(v18 - 8) + 72) * v16, v18);
    *&v7[*(v19 + 48)] = *(*(a1 + 56) + 8 * v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45B03B4(v7, v20, v21);
    result = sub_1C4420C3C(v7, &qword_1EC0B97C8, &unk_1C4F0F930);
    if (v3)
    {
LABEL_11:
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45AF180(uint64_t a1, void *a2)
{
  v41 = a2;
  v44 = sub_1C456902C(&qword_1EC0B97F0, qword_1C4F0F970);
  v3 = *(*(v44 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40 - v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v45 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v42 = a1 + 64;
  if (v10)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      do
      {
LABEL_8:
        v15 = __clz(__rbit64(v10)) | (v13 << 6);
        v16 = v45;
        v17 = *(v45 + 48);
        v18 = sub_1C4EFF8A8();
        v19 = *(v18 - 8);
        v20 = v46;
        (*(v19 + 16))(v46, v17 + *(v19 + 72) * v15, v18);
        v21 = *(*(v16 + 56) + 8 * v15);
        v23 = v43;
        v22 = v44;
        *(v20 + *(v44 + 48)) = v21;
        sub_1C446C964(v20, v23, &qword_1EC0B97F0, qword_1C4F0F970);
        v24 = *(v23 + *(v22 + 48));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C45B189C();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        (*(v19 + 8))(v23, v18);
        if (v28)
        {
          v31 = v26;
          v32 = v41;
          v33 = *v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v32 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = *(v33 + 16);
            sub_1C458AF3C();
            v33 = v38;
            *v41 = v38;
          }

          v35 = *(v33 + 16);
          if (v35 >= *(v33 + 24) >> 1)
          {
            sub_1C458AF3C();
            v33 = v39;
            *v41 = v39;
          }

          *(v33 + 16) = v35 + 1;
          v36 = v33 + 24 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v28;
          *(v36 + 48) = v30;
          *(v36 + 49) = HIBYTE(v30) & 1;
        }

        v10 &= v10 - 1;
        result = sub_1C4420C3C(v46, &qword_1EC0B97F0, qword_1C4F0F970);
        v7 = v42;
      }

      while (v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45AF490(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 40); v1; --v1)
  {
    v4 = *(i - 1);
    v3 = *i;
    swift_bridgeObjectRetain_n();
    sub_1C44869B4(&v5, v4, v3);

    i += 2;
  }

  return result;
}

uint64_t sub_1C45AF51C()
{
  v0 = sub_1C4F00978();
  v1 = sub_1C43FCDF8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v4 = type metadata accessor for Configuration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4411790(OBJC_IVAR____TtC24IntelligencePlatformCore31AutonamingFeedbackCAEventLogger_config);
  v9 = type metadata accessor for GraphStore();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  GraphStore.init(config:)(v8);
  sub_1C45B0110();
  v13 = v12;

  return v13;
}

uint64_t sub_1C45AF6DC()
{
  v1 = v0[2];

  sub_1C449F0D0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31AutonamingFeedbackCAEventLogger_config, type metadata accessor for Configuration);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AutonamingFeedbackCAEventLogger()
{
  result = qword_1EDDDED00;
  if (!qword_1EDDDED00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45AF7B0()
{
  result = type metadata accessor for Configuration();
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

_BYTE *storeEnumTagSinglePayload for AutonamingFeedbackCAEventSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C45AF930()
{
  result = qword_1EDDDEC20;
  if (!qword_1EDDDEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDEC20);
  }

  return result;
}

BOOL sub_1C45AF984(void *a1)
{
  v1 = [a1 eventBody];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_1C45AF9C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_1C45AFA20(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (!v5)
  {
    return;
  }

  v27 = v5;
  v6 = sub_1C45B1F9C(v5, &selRef_feedbackId);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1C45B1F9C(v27, &selRef_visualId);
    if (!v11)
    {

      goto LABEL_11;
    }

    v12 = v10;
    v13 = v11;
    v14 = sub_1C45AFD34();
    if (v14 == 4 || (v15 = v14, v16 = sub_1C45AFDA0(), v16 == 2))
    {

LABEL_11:

      return;
    }

    v24 = v12;
    v25 = v16;
    swift_beginAccess();
    sub_1C465C06C(v15, *(a2 + 16));
    v17 = v28[8];
    swift_endAccess();
    if (v29)
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v18 = v28[7];
    }

    v26 = v18;
    if (v29)
    {
      v19 = 0;
    }

    else
    {
      v19 = v28[6];
    }

    if (v29)
    {
      v20 = 0;
    }

    else
    {
      v20 = v28[5];
    }

    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v21 = *(a3 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22 = sub_1C4499AD0(v8, v9, v21);

      if (v22)
      {

LABEL_28:

        if (v25)
        {
          if (!__OFADD__(v17, 1))
          {
            goto LABEL_33;
          }

          __break(1u);
        }

        if (!__OFADD__(v26, 1))
        {
LABEL_33:
          swift_beginAccess();
          v23 = *(a2 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v28[0] = *(a2 + 16);
          sub_1C46606B8();
          *(a2 + 16) = v28[0];
          swift_endAccess();

          return;
        }

LABEL_37:
        __break(1u);
        return;
      }

      if (!__OFADD__(v19, 1))
      {
        swift_beginAccess();
        sub_1C44869B4(v28, v24, v13);
        swift_endAccess();

        swift_beginAccess();
        sub_1C44869B4(v28, v8, v9);
        swift_endAccess();
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_37;
  }
}

uint64_t sub_1C45AFD34()
{
  if (sub_1C442B92C() == 7)
  {
    return 0;
  }

  if (sub_1C442B92C() == 8)
  {
    return 1;
  }

  if (sub_1C442B92C() == 3)
  {
    return 2;
  }

  if (sub_1C442B92C() == 2)
  {
    return 3;
  }

  return 4;
}

uint64_t sub_1C45AFDA0()
{
  if ([v0 feedbackType] == 1)
  {
    return 0;
  }

  if ([v0 feedbackType] == 2)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1C45AFDF4(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *a1;
  v4 = a1[2];
  v5 = a1[3];
  v11 = a1[4];
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  if (a2 && (v6 = sub_1C465C0D4(v13, a2), (v7 & 1) == 0))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  swift_beginAccess();
  v9 = *(a3 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a3 + 16);
  sub_1C46607A8();
  *(a3 + 16) = v14;
  return swift_endAccess();
}

uint64_t sub_1C45B00A4(uint64_t a1)
{
  v2 = sub_1C45B030C();
  v4 = MEMORY[0x1E69E7CC8];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45AEFB4(v2, &v4, a1);

  return v4;
}

void sub_1C45B0110()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&qword_1EC0B97C8, &unk_1C4F0F930);
  v2 = sub_1C43FBCE0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - v5;
  v7 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v8 = sub_1C4505B00(sub_1C45B12F8, 0);

  v28 = MEMORY[0x1E69E7CC8];

  sub_1C45AE9E8(v8, &v28);

  v9 = v28;
  v11 = *(v28 + 64);
  v10 = v28 + 64;
  v12 = *(v28 + 32);
  sub_1C43FD030();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = 0;
  v19 = 0;
  if (v15)
  {
LABEL_6:
    while (1)
    {
      v21 = __clz(__rbit64(v15)) | (v18 << 6);
      v22 = *(v9 + 48);
      v23 = sub_1C4EFF0C8();
      sub_1C43FBCE0(v23);
      (*(v24 + 16))(v6, v22 + *(v24 + 72) * v21);
      *&v6[*(v1 + 48)] = *(*(v9 + 56) + 8 * v21);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45B1594();
      if ((v25 & 1) == 0 && __OFADD__(v19++, 1))
      {
        break;
      }

      v15 &= v15 - 1;
      sub_1C4420C3C(v6, &qword_1EC0B97C8, &unk_1C4F0F930);
      if (!v15)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        sub_1C43FE9F0();
        return;
      }

      v15 = *(v10 + 8 * v20);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C45B030C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  v2 = sub_1C4505B00(sub_1C45B1068, 0);

  v4 = MEMORY[0x1E69E7CC8];

  sub_1C45AE9E8(v2, &v4);

  return v4;
}

uint64_t sub_1C45B03B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1C456902C(&qword_1EC0B97C8, &unk_1C4F0F930);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v61 - v10;
  sub_1C446C964(a1, v61 - v10, &qword_1EC0B97C8, &unk_1C4F0F930);
  v12 = *&v11[*(v8 + 56)];
  v13 = sub_1C4EFF0C8();
  (*(*(v13 - 8) + 8))(v11, v13);
  v63 = sub_1C45B08F8();
  v15 = v14;
  sub_1C45B0ACC();
  v17 = v16;

  v69 = *(v17 + 16);
  if (!v69)
  {
LABEL_43:
  }

  v61[1] = v3;
  v18 = 0;
  v67 = a2;
  v68 = v17 + 32;
  v74 = a3 + 56;
  v65 = v17;
  v66 = a3;
  v64 = v15;
  while (v18 < *(v17 + 16))
  {
    v19 = (v68 + 24 * v18);
    v20 = v19[1];
    v21 = *(v19 + 16);
    if (*(v19 + 17))
    {
      v22 = *a2;
      v23 = *(*a2 + 16);
      if (v23)
      {
        v24 = sub_1C457AC14(v21);
        if (v25)
        {
          v23 = *(*(v22 + 56) + 8 * v24);
        }

        else
        {
          v23 = 0;
        }
      }

      v38 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_48;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v39 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v70 = *a2;
      v40 = v70;
      *a2 = 0x8000000000000000;
      v41 = sub_1C457AC14(v21);
      if (__OFADD__(v40[2], (v42 & 1) == 0))
      {
        goto LABEL_49;
      }

      v43 = v41;
      v44 = v42;
      sub_1C456902C(&qword_1EC0B97E0, &qword_1C4F0F960);
      if (sub_1C4F02458())
      {
        v45 = sub_1C457AC14(v21);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_54;
        }

        v43 = v45;
      }

      a2 = v67;

      v47 = v70;
      if ((v44 & 1) == 0)
      {
        v70[(v43 >> 6) + 8] |= 1 << v43;
        *(v47[6] + v43) = v21;
        *(v47[7] + 8 * v43) = v38;
        v48 = v47[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_52;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v26 = *v19;
      v70 = v63;
      v71 = v15;
      v72 = v26;
      v73 = v20;
      sub_1C4415EA8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (sub_1C4F02048())
      {
        if (*(a3 + 16))
        {
          v62 = v21;
          v27 = *(a3 + 40);
          sub_1C4F02AF8();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F01298();
          v28 = sub_1C4F02B68();
          v29 = ~(-1 << *(a3 + 32));
          while (1)
          {
            v30 = v28 & v29;
            if (((*(v74 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
            {
              break;
            }

            v31 = (*(a3 + 48) + 16 * v30);
            if (*v31 != v26 || v31[1] != v20)
            {
              v33 = sub_1C4F02938();
              v28 = v30 + 1;
              if ((v33 & 1) == 0)
              {
                continue;
              }
            }

            LOBYTE(v21) = v62;
            goto LABEL_18;
          }

          swift_bridgeObjectRelease_n();
        }

        else
        {
        }

        goto LABEL_42;
      }

LABEL_18:
      v34 = *a2;
      v35 = *(*a2 + 16);
      if (v35)
      {
        v36 = sub_1C457AC14(v21);
        if (v37)
        {
          v35 = *(*(v34 + 56) + 8 * v36);
        }

        else
        {
          v35 = 0;
        }
      }

      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_50;
      }

      v51 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v70 = *a2;
      v52 = v70;
      *a2 = 0x8000000000000000;
      v53 = sub_1C457AC14(v21);
      if (__OFADD__(v52[2], (v54 & 1) == 0))
      {
        goto LABEL_51;
      }

      v43 = v53;
      v55 = v54;
      sub_1C456902C(&qword_1EC0B97E0, &qword_1C4F0F960);
      if (sub_1C4F02458())
      {
        v56 = sub_1C457AC14(v21);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_54;
        }

        v43 = v56;
      }

      a2 = v67;

      v47 = v70;
      if ((v55 & 1) == 0)
      {
        v70[(v43 >> 6) + 8] |= 1 << v43;
        *(v47[6] + v43) = v21;
        *(v47[7] + 8 * v43) = v38;
        v58 = v47[2];
        v49 = __OFADD__(v58, 1);
        v50 = v58 + 1;
        if (v49)
        {
          goto LABEL_53;
        }

LABEL_40:
        v47[2] = v50;
        goto LABEL_41;
      }
    }

    *(v47[7] + 8 * v43) = v38;
LABEL_41:
    v59 = *a2;
    *a2 = v47;

    v17 = v65;
    a3 = v66;
    v15 = v64;
LABEL_42:
    if (++v18 == v69)
    {
      goto LABEL_43;
    }
  }

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
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C45B08F8()
{
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C43FBE94();
  v0 = *(sub_1C4EFEEF8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0F820;
  sub_1C4EFEBF8();
  sub_1C4EFE338();
  sub_1C4EFE348();
  sub_1C4EFE2C8();
  sub_1C4EFEE68();
  sub_1C4EFE328();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C43FBC98();
  sub_1C45AECD4(v3, v4, v5);
  swift_setDeallocating();
  sub_1C49E1540();
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
  sub_1C4415EA8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F01568();
  swift_bridgeObjectRelease_n();

  return v6;
}

void sub_1C45B0ACC()
{
  sub_1C43FBD3C();
  sub_1C43FBE94();
  v1 = sub_1C4EFF8A8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  v73 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v67 = v19 - v18;
  v71 = type metadata accessor for GraphTriple(0);
  v20 = sub_1C44057B8(v71);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v69 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v62 - v26;
  v27 = *(v0 + 16);
  if (!v27)
  {
    v30 = MEMORY[0x1E69E7CC8];
LABEL_30:
    v77[0] = MEMORY[0x1E69E7CC0];
    sub_1C45AF180(v30, v77);

    sub_1C43FE9F0();
    return;
  }

  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v29 = v0 + v28;
  v70 = *(v25 + 72);
  v65 = v28;
  v66 = v15 + 8;
  v72 = (v4 + 16);
  v30 = MEMORY[0x1E69E7CC8];
  v62 = v4;
  v63 = (v4 + 8);
  v64 = v12;
  while (1)
  {
    sub_1C44065DC();
    sub_1C44308A8(v29, v74);
    v31 = *(v71 + 20);
    sub_1C4EFE968();
    sub_1C441F3B4();
    sub_1C45B1F48(&off_1EDDFCCA8, v32);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v77[0] == v75 && v77[1] == v76)
    {
      v38 = sub_1C44085EC();
      v39(v38);
    }

    else
    {
      v34 = sub_1C43FBEC0();
      v35 = sub_1C44085EC();
      v36(v35);

      if ((v34 & 1) == 0)
      {
        sub_1C4419080();
        sub_1C449F0D0(v74, v37);
        goto LABEL_27;
      }
    }

    v40 = *v72;
    (*v72)(v11, v74 + *(v71 + 24), v1);
    if (v30[2] && (sub_1C457AC78(), (v42 & 1) != 0))
    {
      v43 = *(v30[7] + 8 * v41);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    sub_1C44065DC();
    sub_1C44308A8(v74, v69);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C44F1730(0, *(v43 + 16) + 1, 1, v43);
      v43 = v60;
    }

    v45 = *(v43 + 16);
    v44 = *(v43 + 24);
    v68 = v27;
    if (v45 >= v44 >> 1)
    {
      sub_1C44F1730(v44 > 1, v45 + 1, 1, v43);
      v43 = v61;
    }

    *(v43 + 16) = v45 + 1;
    sub_1C45B1EE4(v69, v43 + v65 + v45 * v70);
    v46 = v40;
    v40(v73, v11, v1);
    swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v30;
    sub_1C457AC78();
    if (__OFADD__(v30[2], (v48 & 1) == 0))
    {
      break;
    }

    v49 = v47;
    v50 = v48;
    sub_1C456902C(&qword_1EC0B97E8, &qword_1C4F0F968);
    if (sub_1C4F02458())
    {
      sub_1C457AC78();
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_33;
      }

      v49 = v51;
    }

    v30 = v77[0];
    if (v50)
    {
      v53 = *(v77[0] + 56);
      v54 = *(v53 + 8 * v49);
      *(v53 + 8 * v49) = v43;
    }

    else
    {
      *(v77[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
      v46((v30[6] + *(v62 + 72) * v49), v73, v1);
      *(v30[7] + 8 * v49) = v43;
      v55 = v30[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_32;
      }

      v30[2] = v57;
    }

    v58 = *v63;
    (*v63)(v73, v1);
    v58(v11, v1);
    sub_1C4419080();
    sub_1C449F0D0(v74, v59);
    v27 = v68;
LABEL_27:
    v29 += v70;
    if (!--v27)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1C4F029F8();
  __break(1u);
}

uint64_t sub_1C45B1068@<X0>(uint64_t *a1@<X8>)
{
  v13 = a1;
  v2 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-1] - v5;
  type metadata accessor for GraphTriple(0);
  v11[3] = &type metadata for FusedTripleColumn;
  v11[4] = sub_1C45021B8();
  LOBYTE(v11[0]) = 1;
  v10[3] = sub_1C4EFEEF8();
  v10[4] = sub_1C45B1F48(&unk_1EDDFA1D8, MEMORY[0x1E69A9748]);
  sub_1C4422F90(v10);
  sub_1C4EFE968();
  v12[3] = sub_1C4EFB298();
  v12[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v12);
  sub_1C4EFBB28();
  sub_1C4420C3C(v10, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v11);
  sub_1C45B1F48(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v12);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45B1F48(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v7 = sub_1C4EFAFE8();
  result = (*(v3 + 8))(v6, v2);
  if (!v1)
  {
    *v13 = v7;
  }

  return result;
}

uint64_t sub_1C45B12F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-1] - v6;
  type metadata accessor for GraphTriple(0);
  v16[3] = &type metadata for FusedTripleColumn;
  v16[4] = sub_1C45021B8();
  LOBYTE(v16[0]) = 4;
  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Source();
  v9 = sub_1C442B738(v8, qword_1EDDFD0B0);
  v10 = *v9;
  v11 = v9[1];
  v15[3] = MEMORY[0x1E69E6158];
  v15[4] = MEMORY[0x1E69A0130];
  v15[0] = v10;
  v15[1] = v11;
  v17[3] = sub_1C4EFB298();
  v17[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v17);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(v15, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v16);
  sub_1C45B1F48(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v17);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C45B1F48(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v12 = sub_1C4EFAFE8();
  result = (*(v4 + 8))(v7, v3);
  if (!v1)
  {
    *a1 = v12;
  }

  return result;
}

void sub_1C45B1594()
{
  sub_1C43FBD3C();
  sub_1C43FBE94();
  v1 = sub_1C4EFEEF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v37 = type metadata accessor for GraphTriple(0);
  v7 = sub_1C43FCDF8(v37);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v15 = *(v2 + 72);
  v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0F830;
  v18 = v17 + v16;
  sub_1C4EFEBF8();
  sub_1C4EFE338();
  sub_1C4EFE348();
  sub_1C4EFE2C8();
  sub_1C4EFEE68();
  sub_1C4EFE328();
  sub_1C4EFE5F8();
  v35 = *(v0 + 16);
  if (v35)
  {
    v19 = 0;
    v36 = (v2 + 16);
    v33 = *(v9 + 72);
    v34 = v0 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    do
    {
      sub_1C44065DC();
      sub_1C44308A8(v20, v14);
      v21 = v14 + *(v37 + 28);
      if (sub_1C4EFED18())
      {
        v21 = v14 + *(v37 + 20);
      }

      ++v19;
      (*v36)(v6, v21, v1);
      sub_1C441F3B4();
      sub_1C45B1F48(&qword_1EDDFCCB0, v22);
      v23 = 8;
      v24 = v18;
      while (--v23)
      {
        v25 = v24 + v15;
        v26 = sub_1C4F010B8();
        v24 = v25;
        if (v26)
        {
          sub_1C4419080();
          sub_1C449F0D0(v14, v30);
          v31 = sub_1C440F234();
          v32(v31);

          goto LABEL_11;
        }
      }

      sub_1C4419080();
      sub_1C449F0D0(v14, v27);
      v28 = sub_1C440F234();
      v29(v28);
    }

    while (v19 != v35);
  }

LABEL_11:
  sub_1C43FE9F0();
}

void sub_1C45B189C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C4EFEEF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v54 - v15;
  v68 = type metadata accessor for GraphTriple(0);
  v16 = sub_1C44057B8(v68);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 16);
  if (!v22)
  {
LABEL_60:

    goto LABEL_61;
  }

  v59 = 0;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v56 = v1;
  v24 = v1 + v23;
  v65 = *(v19 + 72);
  v66 = (v5 + 8);
  v61 = 0;
  v62 = 0x80000001C4F8ADA0;
  v57 = 0x80000001C4F8ADC0;
  v58 = 0;
  v54 = 0x80000001C4F8AE00;
  v55 = 0x80000001C4F8ADE0;
  v64 = 4;
  v60 = v10;
  v63 = v14;
  do
  {
    sub_1C44065DC();
    sub_1C44308A8(v24, v21);
    v25 = *(v68 + 28);
    sub_1C4EFE838();
    sub_1C441F3B4();
    sub_1C45B1F48(&off_1EDDFCCA8, v26);
    sub_1C4412C5C();
    sub_1C43FBEA0();
    if (v71 == v69 && v72 == v70)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_1C43FBEC0();
    }

    v29 = *v66;
    (*v66)(v67, v2);

    if (v28)
    {
      sub_1C4402B80();
      v32 = *v30;
      v31 = v30[1];
      sub_1C44108E4();
      v34 = v32 == v33 - 9 && v62 == v31;
      if (v34 || (sub_1C440DE0C(), (sub_1C4F02938() & 1) != 0))
      {
        v35 = 3;
LABEL_16:
        v64 = v35;
        goto LABEL_37;
      }

      sub_1C44108E4();
      v49 = v32 == v48 - 1 && v57 == v31;
      if (v49 || (sub_1C440DE0C(), (sub_1C4F02938() & 1) != 0))
      {
        v35 = 1;
        goto LABEL_16;
      }

      sub_1C44108E4();
      if (v32 != v50 || v55 != v31)
      {
        sub_1C440DE0C();
        if ((sub_1C4F02938() & 1) == 0)
        {
          sub_1C44108E4();
          v53 = v32 == v52 && v54 == v31;
          if (v53 || (sub_1C440DE0C(), (sub_1C4F02938() & 1) != 0))
          {
            v35 = 2;
          }

          else
          {
            v35 = 4;
          }

          goto LABEL_16;
        }
      }

      v64 = 0;
      goto LABEL_37;
    }

    sub_1C4EFE5F8();
    sub_1C4412C5C();
    sub_1C43FBEA0();
    if (v71 == v69 && v72 == v70)
    {
      sub_1C44330E4();
      v29();

LABEL_24:
      sub_1C4402B80();
      v40 = *v38;
      v39 = v38[1];
      v41 = v40 & 0xFFFFFFFFFFFFLL;
      if ((v39 & 0x2000000000000000) != 0)
      {
        v42 = HIBYTE(v39) & 0xF;
      }

      else
      {
        v42 = v41;
      }

      if (v42)
      {
        v59 = 1;
        goto LABEL_37;
      }

      goto LABEL_29;
    }

    v37 = sub_1C43FBEC0();
    sub_1C44330E4();
    v29();

    if (v37)
    {
      goto LABEL_24;
    }

LABEL_29:
    sub_1C4EFE828();
    sub_1C4412C5C();
    sub_1C4F01578();
    if (v71 == v69 && v72 == v70)
    {
      sub_1C44330E4();
      v29();

LABEL_36:

      sub_1C4402B80();
      v46 = v45[1];
      v58 = *v45;
      v61 = v46;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      goto LABEL_37;
    }

    v44 = sub_1C43FBEC0();
    sub_1C44330E4();
    v29();

    if (v44)
    {
      goto LABEL_36;
    }

LABEL_37:
    sub_1C4419080();
    sub_1C449F0D0(v21, v47);
    v24 += v65;
    --v22;
  }

  while (v22);

  if (v61 && v64 == 4)
  {
    goto LABEL_60;
  }

LABEL_61:
  sub_1C43FE9F0();
}

uint64_t sub_1C45B1DD0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a6 != a3)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  v9 = sub_1C4F02938();
  result = 0;
  if ((v9 & 1) != 0 && a6 == a3)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_1C45B1E50(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1C45B1DD0(*a1, *(a1 + 8), v3 | *(a1 + 16), *a2, *(a2 + 8), v4 | *(a2 + 16));
}

unint64_t sub_1C45B1E90()
{
  result = qword_1EDDDEC30;
  if (!qword_1EDDDEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDEC30);
  }

  return result;
}

uint64_t sub_1C45B1EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45B1F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C45B1F9C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1C4F01138();
  }

  return sub_1C43FBC98();
}

__n128 sub_1C45B2008(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C45B201C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1C45B205C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AutonamingMessagesAggregationHandler.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AutonamingMessagesAggregationHandler.init(config:)(a1);
  return v2;
}

void *AutonamingMessagesAggregationHandler.init(config:)(uint64_t a1)
{
  sub_1C45BC174(v8);
  memcpy(v1 + 2, v8, 0x70uLL);
  v1[16] = 3;
  v1[17] = 0x3FE999999999999ALL;
  v1[18] = 9;
  v3 = [BiomeLibrary() Autonaming];
  swift_unknownObjectRelease();
  v4 = [v3 Messages];
  swift_unknownObjectRelease();
  v5 = [v4 AccuracyFedStats];
  swift_unknownObjectRelease();
  v6 = [v5 source];

  sub_1C4467948(a1);
  v1[19] = v6;
  return v1;
}

uint64_t sub_1C45B221C()
{
  v1 = v0[14];
  v2 = [BiomeLibrary() Autonaming];
  swift_unknownObjectRelease();
  v3 = [v2 Messages];
  swift_unknownObjectRelease();
  v4 = [v3 Inferences];
  swift_unknownObjectRelease();
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = sub_1C4F01108();
  v22 = [v4 publisherWithUseCase_];

  sub_1C43FBDBC();
  v21 = swift_allocObject();
  sub_1C456902C(&qword_1EC0B97F8, &unk_1C4F3FA10);
  *(v21 + 16) = sub_1C440F248();
  sub_1C43FBDBC();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C440F248();
  sub_1C43FBDBC();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C4F00F28();
  v0[6] = sub_1C45B25C4;
  v0[7] = 0;
  v10 = MEMORY[0x1E69E9820];
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C44405F8;
  v0[5] = &unk_1F43E19A8;
  v20 = _Block_copy(v0 + 2);
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v21;
  v11[4] = v8;
  v11[5] = v9;
  v0[6] = sub_1C45B4C58;
  v0[7] = v11;
  v0[2] = v10;
  v0[3] = 1107296256;
  v0[4] = sub_1C45AF9C8;
  v0[5] = &unk_1F43E19F8;
  v12 = _Block_copy(v0 + 2);
  v13 = v0[7];

  v14 = [v22 sinkWithCompletion:v20 shouldContinue:v12];

  _Block_release(v12);
  _Block_release(v20);

  swift_beginAccess();
  v15 = *(v21 + 16);
  swift_beginAccess();
  v16 = *(v8 + 16);
  swift_beginAccess();
  v17 = *(v9 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v18 = v0[1];

  return v18(v15, v16, v17);
}

void sub_1C45B25C4(void *a1)
{
  v2 = [a1 state];
  if (!v2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v12 = "Autonaming Aggregation Analytics: Finished looking through the AutonamingInferences Biome stream";
LABEL_16:
    _os_log_impl(&dword_1C43F8000, oslog, v11, v12, v6, 2u);
LABEL_19:
    MEMORY[0x1C6942830](v6, -1, -1);
    goto LABEL_20;
  }

  if (v2 != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v12 = "Autonaming Aggregation Analytics: Error: unexpected completion state for looking through the AutonamingInferences Biome stream.";
    goto LABEL_16;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = a1;
  oslog = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = [v4 error];
    if (v8)
    {
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 4) = v8;
    *v7 = v9;
    _os_log_impl(&dword_1C43F8000, oslog, v5, "Autonaming Aggregation Analytics: Error: failed looking through the AutonamingInferences Biome stream: %@", v6, 0xCu);
    sub_1C45B4B90(v7);
    MEMORY[0x1C6942830](v7, -1, -1);
    goto LABEL_19;
  }

LABEL_20:
}

uint64_t sub_1C45B2864(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)@<X0>(uint64_t *@<X8>), uint64_t a5)
{
  v9 = sub_1C4F01948();
  if (v9)
  {
LABEL_2:
    v10 = 0;
    v11 = 0;
LABEL_116:
    sub_1C44239FC(v10);
    sub_1C44239FC(v11);
    return (v9 & 1) == 0;
  }

  v12 = [a1 eventBody];
  if (!v12)
  {
LABEL_84:
    a4 = 0;
    v10 = 0;
    v11 = 0;
LABEL_115:
    sub_1C44239FC(a4);
    goto LABEL_116;
  }

  v13 = v12;
  sub_1C45B4BF8(v12, &selRef_modelVersion);
  if (!v14)
  {
    goto LABEL_71;
  }

  v15 = sub_1C44CF75C(1);
  v16 = MEMORY[0x1C693FEF0](v15);
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  v20 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v21 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_71;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    LOBYTE(v126) = 0;
    v24 = sub_1C4AA1330(v16, v18, 10);
    v42 = v117;
    goto LABEL_67;
  }

  if ((v18 & 0x2000000000000000) == 0)
  {
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_120;
    }

    for (i = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1C4F022F8())
    {
      v23 = *i;
      if (v23 == 43)
      {
        if (v20 < 1)
        {
          goto LABEL_129;
        }

        v19 = v20 - 1;
        if (v20 == 1)
        {
          goto LABEL_65;
        }

        v24 = 0;
        if (i)
        {
          v31 = i + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_65;
            }

            v33 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_65;
            }

            v24 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_65;
            }

            ++v31;
            if (!--v19)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v23 == 45)
      {
        if (v20 < 1)
        {
          goto LABEL_127;
        }

        v19 = v20 - 1;
        if (v20 == 1)
        {
          goto LABEL_65;
        }

        v24 = 0;
        if (i)
        {
          v25 = i + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v19)
            {
              goto LABEL_66;
            }
          }

LABEL_65:
          v24 = 0;
          LOBYTE(v19) = 1;
          goto LABEL_66;
        }
      }

      else
      {
        if (!v20)
        {
          goto LABEL_65;
        }

        v24 = 0;
        if (i)
        {
          do
          {
            v37 = *i - 48;
            if (v37 > 9)
            {
              goto LABEL_65;
            }

            v38 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_65;
            }

            v24 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              goto LABEL_65;
            }

            ++i;
          }

          while (--v20);
        }
      }

      LOBYTE(v19) = 0;
LABEL_66:
      LOBYTE(v126) = v19;
      v42 = v19;
LABEL_67:

      if ((v42 & 1) == 0 && v24 <= 8)
      {

        goto LABEL_2;
      }

LABEL_71:
      v125 = sub_1C45B4BF8(v13, &selRef_photosPersonIdentifier);
      v44 = v43;
      sub_1C45B4BF8(v13, &selRef_inferredName);
      v46 = v45;
      v122 = sub_1C45B4BF8(v13, &selRef_inferredContactIdentifier);
      if (!v44)
      {

        goto LABEL_84;
      }

      v123 = v47;
      v124 = a5;
      if (v46)
      {
        v118 = sub_1C4F00FF8();
        v120 = v48;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        swift_beginAccess();
        v49 = *(a3 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v126 = *(a3 + 16);
        v50 = v126;
        *(a3 + 16) = 0x8000000000000000;
        v51 = sub_1C445FAA8(v125, v44);
        if (__OFADD__(*(v50 + 16), (v52 & 1) == 0))
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_130;
        }

        v53 = v51;
        v54 = v52;
        sub_1C456902C(&qword_1EC0B9808, &qword_1C4F0FAE8);
        v55 = sub_1C4F02458();
        v56 = v126;
        if (v55)
        {
          v57 = sub_1C445FAA8(v125, v44);
          if ((v54 & 1) != (v58 & 1))
          {
            goto LABEL_131;
          }

          v53 = v57;
        }

        *(a3 + 16) = v56;
        if ((v54 & 1) == 0)
        {
          sub_1C451067C(&v126);
          sub_1C44686DC(v53, v125, v44, v126, v56);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v59 = *(v56 + 56);
        v60 = *(v59 + 8 * v53);
        swift_isUniquelyReferenced_nonNull_native();
        v126 = *(v59 + 8 * v53);
        v61 = v126;
        *(v59 + 8 * v53) = 0x8000000000000000;
        v62 = sub_1C445FAA8(v118, v120);
        if (__OFADD__(*(v61 + 16), (v63 & 1) == 0))
        {
          goto LABEL_122;
        }

        v64 = v62;
        v65 = v63;
        sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
        if (sub_1C4F02458())
        {
          v66 = sub_1C445FAA8(v118, v120);
          v68 = v123;
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_131;
          }

          v64 = v66;
        }

        else
        {
          v68 = v123;
        }

        v69 = *(v59 + 8 * v53);
        *(v59 + 8 * v53) = v126;

        v70 = *(v59 + 8 * v53);
        if ((v65 & 1) == 0)
        {
          sub_1C44686AC(v64, v118, v120, 0, v70);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v71 = *(v70 + 56);
        v72 = *(v71 + 8 * v64);
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        a5 = v124;
        if (v73)
        {
          goto LABEL_124;
        }

        *(v71 + 8 * v64) = v74;
        swift_endAccess();

        v121 = sub_1C457EB40;
        v119 = sub_1C45B4C68;
        if (!v68)
        {
LABEL_86:
          a4 = 0;
          v10 = 0;
          goto LABEL_107;
        }
      }

      else
      {
        v119 = 0;
        v121 = 0;
        if (!v47)
        {
          goto LABEL_86;
        }
      }

      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v75 = *(a4 + 2);
      swift_isUniquelyReferenced_nonNull_native();
      v126 = *(a4 + 2);
      v76 = v126;
      *(a4 + 2) = 0x8000000000000000;
      v77 = sub_1C445FAA8(v125, v44);
      if (__OFADD__(*(v76 + 16), (v78 & 1) == 0))
      {
        goto LABEL_123;
      }

      v79 = v77;
      v80 = v78;
      sub_1C456902C(&qword_1EC0B9808, &qword_1C4F0FAE8);
      v81 = sub_1C4F02458();
      v82 = v126;
      if (v81)
      {
        v83 = sub_1C445FAA8(v125, v44);
        if ((v80 & 1) != (v84 & 1))
        {
          goto LABEL_131;
        }

        v79 = v83;
      }

      *(a4 + 2) = v82;
      if ((v80 & 1) == 0)
      {
        sub_1C451067C(&v126);
        sub_1C44686DC(v79, v125, v44, v126, v82);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v85 = *(v82 + 56);
      v86 = *(v85 + 8 * v79);
      swift_isUniquelyReferenced_nonNull_native();
      v126 = *(v85 + 8 * v79);
      v87 = v126;
      *(v85 + 8 * v79) = 0x8000000000000000;
      v88 = sub_1C445FAA8(v122, v123);
      if (__OFADD__(*(v87 + 16), (v89 & 1) == 0))
      {
        goto LABEL_125;
      }

      v90 = v88;
      v91 = v89;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      v92 = sub_1C4F02458();
      v93 = v126;
      if (v92)
      {
        v94 = v123;
        v95 = sub_1C445FAA8(v122, v123);
        if ((v91 & 1) != (v96 & 1))
        {
          goto LABEL_131;
        }

        v90 = v95;
      }

      else
      {
        v94 = v123;
      }

      v97 = *(v85 + 8 * v79);
      *(v85 + 8 * v79) = v93;

      v98 = *(v85 + 8 * v79);
      if ((v91 & 1) == 0)
      {
        sub_1C44686AC(v90, v122, v94, 0, *(v85 + 8 * v79));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v99 = *(v98 + 56);
      v100 = *(v99 + 8 * v90);
      v73 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v73)
      {
        goto LABEL_126;
      }

      *(v99 + 8 * v90) = v101;
      swift_endAccess();

      v10 = sub_1C457EB40;
      a4 = sub_1C45B4C68;
      a5 = v124;
LABEL_107:
      swift_beginAccess();
      v102 = *(a5 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v126 = *(a5 + 16);
      v103 = v126;
      *(a5 + 16) = 0x8000000000000000;
      v104 = sub_1C445FAA8(v125, v44);
      v106 = *(v103 + 16);
      v107 = (v105 & 1) == 0;
      a3 = v106 + v107;
      if (__OFADD__(v106, v107))
      {
        __break(1u);
      }

      else
      {
        v108 = v104;
        a5 = v105;
        sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
        v109 = sub_1C4F02458();
        v110 = v126;
        if (v109)
        {
          v111 = sub_1C445FAA8(v125, v44);
          if ((a5 & 1) != (v112 & 1))
          {
            goto LABEL_131;
          }

          v108 = v111;
        }

        *(v124 + 16) = v110;
        if ((a5 & 1) == 0)
        {
          sub_1C44686AC(v108, v125, v44, 0, v110);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v113 = *(v110 + 56);
        v114 = *(v113 + 8 * v108);
        v73 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (!v73)
        {
          *(v113 + 8 * v108) = v115;
          swift_endAccess();

          sub_1C44239FC(v119);
          sub_1C44239FC(v121);
          v11 = sub_1C457EB40;
          goto LABEL_115;
        }
      }

      __break(1u);
LABEL_120:
      ;
    }
  }

  v127[0] = v16;
  v127[1] = v18 & 0xFFFFFFFFFFFFFFLL;
  if (v16 != 43)
  {
    if (v16 != 45)
    {
      if (v19)
      {
        v24 = 0;
        v39 = v127;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v19)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v19)
    {
      if (--v19)
      {
        v24 = 0;
        v28 = v127 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v19)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_128;
  }

  if (v19)
  {
    if (--v19)
    {
      v24 = 0;
      v34 = v127 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v34;
        if (!--v19)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C45B3248(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (v5)
  {
LABEL_9:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(*(a1 + 56) + 8 * v13);
    if (v8 < v14)
    {
      v15 = (*(a1 + 48) + 16 * v13);
      v9 = *v15;
      v16 = v15[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v8 = v14;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45B3378(uint64_t a1, unint64_t a2)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C4EF98F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v8 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v9 = sub_1C44B90E0(v7);
  v59[0] = 0;
  if (![v9 openAndWaitWithUpgrade:0 error:v59])
  {
    v18 = v59[0];
    v19 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = v19;
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_1C43FD084();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      sub_1C44065F4(&dword_1C43F8000, v28, v29, "Photo library could not open successfully due to %@, returning nil for unknown ground truth");
      sub_1C45B4B90(v25);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    goto LABEL_20;
  }

  v10 = v59[0];
  v11 = [v9 librarySpecificFetchOptions];
  v12 = objc_opt_self();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0D130;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F01658();

  v15 = [v12 fetchPersonsWithLocalIdentifiers:v14 options:v11];

  v16 = [v15 fetchedObjects];
  if (v16)
  {
    sub_1C4461BB8(0, &qword_1EC0C2A80, 0x1E6978980);
    v17 = sub_1C4F01678();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C4428DA0() != 1 || !sub_1C4428DA0())
  {

LABEL_20:
    v35 = 0;
    goto LABEL_21;
  }

  sub_1C4431590(0, (v17 & 0xC000000000000001) == 0);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1C6940F90](0, v17);
  }

  else
  {
    v30 = *(v17 + 32);
  }

  v31 = v30;

  v32 = sub_1C47851D4(v31);
  v58 = v11;
  if (!v33)
  {
    goto LABEL_23;
  }

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

LABEL_23:
    v35 = 0;
    v37 = 0;
    goto LABEL_24;
  }

  v35 = sub_1C4F00FF8();
  v37 = v36;

LABEL_24:
  v40 = sub_1C45C0104(v31);
  v42 = v41;
  if (v41)
  {
    v43 = v40;
    v44 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v44 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (!v44)
    {

      v43 = 0;
      v42 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v45 = sub_1C4F00978();
  sub_1C442B738(v45, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = sub_1C4F00968();
  v47 = sub_1C4F01CC8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v57 = v31;
    v49 = v48;
    v56 = swift_slowAlloc();
    v59[0] = v56;
    *v49 = 136315650;
    *(v49 + 4) = sub_1C441D828(a1, a2, v59);
    *(v49 + 12) = 2080;
    if (v37)
    {
      v50 = v35;
    }

    else
    {
      v50 = 7104878;
    }

    if (v37)
    {
      v51 = v37;
    }

    else
    {
      v51 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v52 = sub_1C441D828(v50, v51, v59);

    *(v49 + 14) = v52;
    *(v49 + 22) = 2080;
    if (v42)
    {
      v53 = v43;
    }

    else
    {
      v53 = 7104878;
    }

    if (v42)
    {
      v54 = v42;
    }

    else
    {
      v54 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v55 = sub_1C441D828(v53, v54, v59);

    *(v49 + 24) = v55;
    _os_log_impl(&dword_1C43F8000, v46, v47, "AutonamingMessagesAggregationHandler: Aggregation Analytics: For person id %s, found ground truth name %s and contact %s", v49, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  else
  {
  }

LABEL_21:
  v38 = *MEMORY[0x1E69E9840];
  return v35;
}

id sub_1C45B39C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C45B3248(a3);
  v11 = v10;
  v13 = v12;
  v14 = sub_1C45B3248(a4);
  v16 = v15;
  v18 = v17;
  v19 = a5;
  v20 = a5 * 0.8;
  v130 = v13;
  if (v13 >= 3 && v20 < v13)
  {
    v127 = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = v11;
  }

  else
  {
    v127 = 0;
    v22 = 0;
  }

  if (v18 >= 3 && v20 < v18)
  {
    if (v16)
    {
      v126 = a5;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = v16;
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v22)
  {
    v126 = a5;
    v24 = 0;
LABEL_16:
    v128 = a1;
    v129 = a2;
    sub_1C45B3378(a1, a2);
    v27 = v26;
    v29 = v28;
    if (v24)
    {
      if (v18 >= v13)
      {
        v131 = v25;

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C43FFB88();
        }

        v53 = sub_1C4F00978();
        sub_1C442B738(v53, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v54 = sub_1C4F00968();
        v55 = sub_1C4F01CC8();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *v56 = 136315906;
          *(v56 + 4) = sub_1C441D828(v128, v129, &v132);
          *(v56 + 12) = 2080;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v57 = sub_1C441D828(v14, v24, &v132);

          *(v56 + 14) = v57;
          *(v56 + 22) = 2048;
          *(v56 + 24) = v18;

          *(v56 + 32) = 2048;
          *(v56 + 34) = v126;
          _os_log_impl(&dword_1C43F8000, v54, v55, "AutonamingMessagesAggregationHandler: Person id %s, found most occurring inference contact %s with count %ld over %ld inferences.", v56, 0x2Au);
          swift_arrayDestroy();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        if (v29)
        {
          if (v131 == v14 && v29 == v24)
          {
          }

          else
          {
            v73 = sub_1C4F02938();

            if ((v73 & 1) == 0)
            {
              v30 = v129;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v74 = sub_1C4F00968();
              sub_1C4F01CC8();
              sub_1C43FEB14();
              if (sub_1C43FD09C())
              {
                sub_1C43FD084();
                sub_1C44117BC();
                sub_1C4402BB0();
                *(v14 + 4) = sub_1C43FFCF8(4.8149e-34, v75, v76, v77, v78, v79, v80, v81);
                sub_1C44057CC();
                _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
                sub_1C440A574();
                sub_1C43FE9D4();
              }

              v52 = 2;
              goto LABEL_68;
            }
          }

          v30 = v129;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v113 = sub_1C4F00968();
          sub_1C4F01CC8();
          sub_1C43FEB14();
          if (sub_1C43FD09C())
          {
            sub_1C43FD084();
            sub_1C44117BC();
            sub_1C4402BB0();
            *(v14 + 4) = sub_1C43FFCF8(4.8149e-34, v114, v115, v116, v117, v118, v119, v120);
            sub_1C44057CC();
            _os_log_impl(v121, v122, v123, v124, v125, 0xCu);
            sub_1C440A574();
            sub_1C43FE9D4();
          }

          v52 = 1;
          goto LABEL_68;
        }

        v52 = 0;
        v30 = v129;
LABEL_68:
        v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v101 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        objc_allocWithZone(MEMORY[0x1E698EB40]);
        v102 = v100;
        v103 = v101;
        v104 = sub_1C45BFEB0(0, 0, 0, 0, v100, v101, v52);
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C43FFB88();
        }

        v105 = sub_1C4F00978();
        sub_1C442B738(v105, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v58 = v104;
        v106 = sub_1C4F00968();
        v107 = sub_1C4F01CC8();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v132 = v110;
          *v108 = 136315394;
          *(v108 + 4) = sub_1C441D828(v128, v30, &v132);
          *(v108 + 12) = 2112;
          *(v108 + 14) = v58;
          *v109 = v58;
          v111 = v58;
          _os_log_impl(&dword_1C43F8000, v106, v107, "AutonamingMessagesAggregationHandler: Person id %s, preparing AccuracyFedStats event %@", v108, 0x16u);
          sub_1C45B4B90(v109);
          sub_1C43FBE2C();
          sub_1C440962C(v110);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {
        }

        return v58;
      }
    }

    else
    {
    }

    v30 = a2;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v31 = sub_1C4F00978();
    sub_1C442B738(v31, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v34 = 136315906;
      *(v34 + 4) = sub_1C441D828(v128, a2, &v132);
      *(v34 + 12) = 2080;
      if (v22)
      {
        v35 = v127;
      }

      else
      {
        v35 = 7104878;
      }

      if (v22)
      {
        v36 = v22;
      }

      else
      {
        v36 = 0xE300000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = sub_1C441D828(v35, v36, &v132);

      *(v34 + 14) = v37;
      v30 = v129;
      *(v34 + 22) = 2048;

      *(v34 + 24) = v13;

      *(v34 + 32) = 2048;
      *(v34 + 34) = v126;
      _os_log_impl(&dword_1C43F8000, v32, v33, "AutonamingMessagesAggregationHandler: Person id %s, found most occurring inference name %s with count %ld over %ld inferences.", v34, 0x2Au);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      if (v27)
      {
LABEL_30:
        v38 = sub_1C4F00FF8();
        v40 = v39;

        if (v22)
        {
          if (v38 == v127 && v22 == v40)
          {

LABEL_64:
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v87 = sub_1C4F00968();
            sub_1C4F01CC8();
            sub_1C43FEB14();
            if (sub_1C43FD09C())
            {
              sub_1C43FD084();
              sub_1C44117BC();
              sub_1C4402BB0();
              *(v40 + 4) = sub_1C43FFCF8(4.8149e-34, v88, v89, v90, v91, v92, v93, v94);
              sub_1C44057CC();
              _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
              sub_1C440A574();
              sub_1C43FE9D4();
            }

            v52 = 1;
            goto LABEL_67;
          }

          v42 = sub_1C4F02938();

          if (v42)
          {
            goto LABEL_64;
          }
        }

        else
        {
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v59 = sub_1C4F00968();
        sub_1C4F01CC8();
        sub_1C43FEB14();
        if (sub_1C43FD09C())
        {
          sub_1C43FD084();
          sub_1C44117BC();
          sub_1C4402BB0();
          *(v40 + 4) = sub_1C43FFCF8(4.8149e-34, v60, v61, v62, v63, v64, v65, v66);
          sub_1C44057CC();
          _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
          sub_1C440A574();
          sub_1C43FE9D4();
        }

        v52 = 2;
        goto LABEL_67;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      if (v27)
      {
        goto LABEL_30;
      }
    }

    v52 = 0;
LABEL_67:
    v18 = v130;
    goto LABEL_68;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v43 = sub_1C4F00978();
  sub_1C442B738(v43, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = sub_1C4F00968();
  sub_1C4F01CC8();

  if (sub_1C43FD09C())
  {
    swift_slowAlloc();
    v45 = a5;
    v46 = sub_1C44117BC();
    v132 = v46;
    *v14 = 136315906;
    *(v14 + 4) = sub_1C441D828(a1, a2, &v132);
    *(v14 + 12) = 2048;

    *(v14 + 14) = v13;

    *(v14 + 22) = 2048;

    *(v14 + 24) = v18;

    *(v14 + 32) = 2048;
    *(v14 + 34) = v45;
    sub_1C44057CC();
    _os_log_impl(v47, v48, v49, v50, v51, 0x2Au);
    sub_1C440962C(v46);
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return 0;
}

uint64_t sub_1C45B446C()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v1 = sub_1C4F00978();
  v0[3] = sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "AutonamingMessagesAggregationHandler: Starting writeAggregationAccuracyEvents", v4, 2u);
    sub_1C43FE9D4();
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1C45B45A0;
  v6 = v0[2];

  return sub_1C45B2208();
}

uint64_t sub_1C45B45A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 32);
  v7 = *v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;

  return MEMORY[0x1EEE6DFA0](sub_1C45B46A4, 0, 0);
}

void sub_1C45B46A4()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C45A322C(v5);
  v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C45A322C(v7);
  sub_1C44999E0(v8, v6);
  v10 = v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_1C43FD084();
    *v13 = 134217984;
    *(v13 + 4) = *(v10 + 16);

    sub_1C44065F4(&dword_1C43F8000, v14, v15, "AutonamingMessagesAggregationHandler: Found %ld identifiers to run aggregation on");
    sub_1C43FBE2C();
  }

  else
  {
  }

  v16 = 0;
  v62 = v0[6];
  v63 = v0[7];
  v60 = v0[2];
  v61 = v0[5];
  v17 = v10 + 56;
  v18 = -1;
  v19 = -1 << *(v10 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & *(v10 + 56);
  v21 = (63 - v19) >> 6;
  v64 = v0;
  while (v20)
  {
LABEL_12:
    v23 = v10;
    v24 = (*(v10 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v20)))));
    v25 = *v24;
    v26 = v24[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (sub_1C4F01948())
    {
      v58 = v1[6];
      v57 = v1[7];
      v59 = v1[5];

LABEL_29:
      v56 = v1[1];

      v56();
      return;
    }

    if (*(v61 + 16) && (v27 = v1[5], v28 = sub_1C440DE18(), v30 = sub_1C445FAA8(v28, v29), (v31 & 1) != 0))
    {
      v32 = *(*(v61 + 56) + 8 * v30);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v32 = sub_1C4F00F28();
    }

    if (*(v62 + 16) && (v33 = v64[6], v34 = sub_1C440DE18(), v36 = sub_1C445FAA8(v34, v35), (v37 & 1) != 0))
    {
      v38 = *(*(v62 + 56) + 8 * v36);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v38 = sub_1C4F00F28();
    }

    if (*(v63 + 16))
    {
      v39 = v64[7];
      v40 = sub_1C440DE18();
      v42 = sub_1C445FAA8(v40, v41);
      if (v43)
      {
        v44 = *(*(v63 + 56) + 8 * v42);
      }
    }

    v20 &= v20 - 1;
    v45 = sub_1C440DE18();
    v48 = sub_1C45B39C4(v45, v46, v32, v38, v47);

    v10 = v23;
    v1 = v64;
    if (v48)
    {
      v49 = v64[3];
      v50 = sub_1C4F00968();
      v51 = sub_1C4F01CC8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1C43F8000, v50, v51, "AutonamingMessagesAggregationHandler: Sending aggregation accuracy event", v52, 2u);
        v1 = v64;
        sub_1C43FBE2C();
      }

      [*(v60 + 152) sendEvent_];
    }
  }

  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v54 = v1[6];
      v53 = v1[7];
      v55 = v1[5];

      goto LABEL_29;
    }

    v20 = *(v17 + 8 * v22);
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t AutonamingMessagesAggregationHandler.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  v5 = *(v0 + 96);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);

  return v0;
}

uint64_t AutonamingMessagesAggregationHandler.__deallocating_deinit()
{
  AutonamingMessagesAggregationHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45B4B90(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45B4BF8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C4F01138();

  return v4;
}

void sub_1C45B4C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark) = 0;
  sub_1C44098F0(a1, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_config);
  v21 = *(a2 + 72);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey) = v21;
  v20 = *(a2 + 88);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey) = v20;
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  sub_1C448DB48(&v21, v19);
  sub_1C448DB48(&v20, v19);
  v12 = sub_1C4F01108();
  sub_1C45B6AAC(a2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_biomeUseCase) = v12;
  sub_1C44098F0(a1, v9);
  v13 = type metadata accessor for KeyValueStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore) = KeyValueStore.init(config:domain:)(v9, 0xD000000000000012, 0x80000001C4F8AFF0);
  v16 = sub_1C45B6040();
  sub_1C4467948(a1);
  v17 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark) = v16;
  swift_unknownObjectRelease();
  sub_1C43FE9F0();
}

uint64_t sub_1C45B4F10(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark);
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  return sub_1C45B52F0();
}

uint64_t sub_1C45B4F58(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v20 = sub_1C4F00978();
    sub_1C43FCEE8(v20, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v21))
    {
      v22 = sub_1C43FD084();
      v23 = sub_1C43FFD34();
      v47[0] = v23;
      *v22 = 136315138;
      v24 = sub_1C43FD024();
      *(v22 + 4) = sub_1C441D828(v24, v25, v26);
      sub_1C43FD0B4();
      _os_log_impl(v27, v28, v29, v30, v22, 0xCu);
      sub_1C440962C(v23);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    goto LABEL_13;
  }

  v5 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore);

  v7 = KeyValueStore.keys()();
  v47[0] = a1;
  v47[1] = a2;
  MEMORY[0x1EEE9AC00](v7);
  v46[2] = v47;
  v8 = sub_1C44CE068(sub_1C4579E44, v46, v7);

  if (!v8)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v31 = sub_1C4F00978();
    sub_1C43FCEE8(v31, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_1C43FD084();
      v35 = sub_1C43FFD34();
      v47[0] = v35;
      *v34 = 136315138;
      v36 = sub_1C43FD024();
      *(v34 + 4) = sub_1C441D828(v36, v37, v38);
      sub_1C43FD0B4();
      _os_log_impl(v39, v40, v41, v42, v34, 0xCu);
      sub_1C440962C(v35);
      sub_1C43FFD18();
      sub_1C43FBE2C();
    }

    return 0;
  }

  v9._countAndFlagsBits = sub_1C43FD024();
  v10 = KeyValueStore.delete(key:)(v9);
  if (v11)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_1C43FD084();
      v16 = sub_1C43FFD34();
      v47[0] = v16;
      *v15 = 136315138;
      v17 = sub_1C43FD024();
      *(v15 + 4) = sub_1C441D828(v17, v18, v19);
      _os_log_impl(&dword_1C43F8000, v13, v14, "Unable to reset bookmark with key %s for AutonamingMessagesBookmarker: calling deletion of key failed", v15, 0xCu);
      sub_1C440962C(v16);
      sub_1C43FBE2C();
      sub_1C43FFD18();
    }

LABEL_13:
    return 0;
  }

  v44 = v10;

  if (!v44)
  {
    return 0;
  }

  v45 = *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark) = 0;
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1C45B52F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark);
  v2 = swift_unknownObjectRetain();
  v3 = sub_1C45B5334(v2);
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t sub_1C45B5334(uint64_t a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey);
    v4 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey + 8);
    v19[3] = swift_getObjectType();
    v19[0] = a1;
    swift_unknownObjectRetain();
    v5 = sub_1C4404084();
    v8 = sub_1C45B5650(v5, v6, v7);
    sub_1C440962C(v19);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v9 = sub_1C4F00978();
    sub_1C43FCEE8(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CC8();
    if (sub_1C43FCEA4(v11))
    {
      v12 = sub_1C43FCED0();
      sub_1C43FBD24(v12);
      sub_1C44057CC();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_1C43FE9D4();
    }

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C45B5424()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v29 - v3;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C43FE99C();
  sub_1C4467FE0(v10, v11);
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    sub_1C44686E4(v4);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CC8();
    if (sub_1C43FCEA4(v14))
    {
      v15 = sub_1C43FCED0();
      sub_1C43FBD24(v15);
      sub_1C44057CC();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_1C43FE9D4();
    }

    v21 = 0;
  }

  else
  {
    v22 = *(v6 + 32);
    v23 = sub_1C4404084();
    v24(v23);
    v25 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey);
    v26 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey + 8);
    v29[3] = v5;
    v27 = sub_1C4422F90(v29);
    (*(v6 + 16))(v27, v9, v5);
    v21 = sub_1C45B5650(v25, v26, v29);
    (*(v6 + 8))(v9, v5);
    sub_1C440962C(v29);
  }

  return v21 & 1;
}

uint64_t sub_1C45B5650(uint64_t a1, unint64_t a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (!*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CC8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_1C43FD084();
      v17 = sub_1C43FFD34();
      v35[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1C441D828(a1, a2, v35);
      sub_1C44057CC();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      sub_1C440962C(v17);
      sub_1C43FBE2C();
      sub_1C43FE9D4();
    }

    goto LABEL_14;
  }

  v7 = objc_opt_self();
  sub_1C4409678(a3, a3[3]);

  v35[0] = 0;
  v8 = [v7 archivedDataWithRootObject:sub_1C4F02918() requiringSecureCoding:1 error:v35];
  swift_unknownObjectRelease();
  v9 = v35[0];
  if (!v8)
  {
    v23 = v9;
    v24 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v25 = sub_1C4F00978();
    sub_1C43FCEE8(v25, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = v24;
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1C441D828(a1, a2, v35);
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v30 = sub_1C4F02A38();
      v32 = sub_1C441D828(v30, v31, v35);

      *(v29 + 14) = v32;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Failed to store spotlight bookmark: unable to archive bookmark for key %s as a data object: %s", v29, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v10 = sub_1C4EF9A68();
  v12 = v11;

  sub_1C495BF40();

  sub_1C4434000(v10, v12);
  result = 1;
LABEL_15:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C45B5B90(uint64_t *a1, unint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore))
  {
    v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore);

    v6 = KeyValueStore.keys()();
    v39 = a1;
    v40 = a2;
    MEMORY[0x1EEE9AC00](v6);
    v38[2] = &v39;
    v7 = sub_1C44CE068(sub_1C44CE790, v38, v6);

    if (v7)
    {
      sub_1C43FE99C();
      sub_1C4598D88();
      if (v40 >> 60 != 15)
      {

        goto LABEL_19;
      }

      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v33 = sub_1C4F00978();
      sub_1C43FCEE8(v33, qword_1EDDFECB8);
      v22 = sub_1C4F00968();
      v34 = sub_1C4F01CC8();
      if (os_log_type_enabled(v22, v34))
      {
        v35 = sub_1C43FCED0();
        *v35 = 0;
        _os_log_impl(&dword_1C43F8000, v22, v34, "Unable to decode bookmark from keyValue store, as fetch returned nil", v35, 2u);
        sub_1C43FBE2C();
        v36 = sub_1C4404084();
        sub_1C441DFEC(v36, v37);
      }
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v21 = sub_1C4F00978();
      sub_1C43FCEE8(v21, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22 = sub_1C4F00968();
      v23 = sub_1C4F01CC8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = sub_1C43FD084();
        v25 = sub_1C43FFD34();
        v39 = v25;
        *v24 = 136315138;
        v26 = sub_1C43FE99C();
        *(v24 + 4) = sub_1C441D828(v26, v27, v28);
        sub_1C43FD0B4();
        _os_log_impl(v29, v30, v31, v32, v24, 0xCu);
        sub_1C440962C(v25);
        sub_1C43FFD18();
        sub_1C43FBE2C();
      }
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v8 = sub_1C4F00978();
    sub_1C43FCEE8(v8, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CC8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_1C43FD084();
      v12 = sub_1C43FFD34();
      v39 = v12;
      *v11 = 136315138;
      v13 = sub_1C43FE99C();
      *(v11 + 4) = sub_1C441D828(v13, v14, v15);
      sub_1C44057CC();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      sub_1C440962C(v12);
      sub_1C43FBE2C();
      sub_1C43FE9D4();
    }
  }

LABEL_19:
  sub_1C4404084();
  sub_1C43FE9F0();
}

void *sub_1C45B6040()
{
  sub_1C45B5B90(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey + 8));
  if (v1 >> 60 == 15)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v2 = sub_1C4F00978();
    sub_1C43FCEE8(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_1C43FCED0();
      *v5 = 0;
      sub_1C43FD0B4();
      _os_log_impl(v6, v7, v8, v9, v5, 2u);
      sub_1C43FBE2C();
      v10 = sub_1C43FD024();
      sub_1C441DFEC(v10, v11);
    }

    return 0;
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &qword_1EC0B9818, 0x1E698F0B8);
    v20 = sub_1C4F01D38();
    v12 = qword_1EDDFECB0;
    v13 = v20;
    if (v12 != -1)
    {
      sub_1C43FFB88();
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDDFECB8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CC8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_1C43FCED0();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Unarchived the Biome bookmark successfully from the KeyValueStore object", v17, 2u);
      sub_1C43FFD18();
    }

    v18 = sub_1C43FD024();
    sub_1C441DFEC(v18, v19);
  }

  return v20;
}

void sub_1C45B6350(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - v11;
  sub_1C45B5B90(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey + 8));
  v14 = v13;
  v16 = v15;
  if (v15 >> 60 == 15)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v17 = sub_1C4F00978();
    sub_1C43FCEE8(v17, qword_1EDDFECB8);
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CB8();
    if (sub_1C43FCEA4(v19))
    {
      v20 = sub_1C43FCED0();
      sub_1C43FBD24(v20);
      sub_1C44057CC();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      sub_1C43FE9D4();
      sub_1C441DFEC(v14, v16);
    }

    sub_1C4EF9CD8();
    sub_1C43FCF64();
    sub_1C43FE9F0();

    sub_1C440BAA8(v26, v27, v28, v29);
  }

  else
  {
    sub_1C4EF9CD8();
    sub_1C43FCF64();
    v51 = v31;
    sub_1C440BAA8(v32, v33, v34, v31);
    sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &unk_1EDDDB878, 0x1E695DF00);
    v35 = sub_1C4F01D38();
    sub_1C44686E4(v12);
    v36 = 1;
    if (v35)
    {
      sub_1C43FCF64();
      v37 = v51;
      sub_1C440BAA8(v38, v39, v40, v51);
      sub_1C45B6A54();
      sub_1C4F025C8();

      if (sub_1C44157D4(v7, 1, v37) != 1)
      {
        (*(*(v37 - 8) + 32))(v10, v7, v37);
        v36 = 0;
      }
    }

    else
    {
      v37 = v51;
    }

    sub_1C440BAA8(v10, v36, 1, v37);
    sub_1C45B69E4(v10, v12);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v41 = sub_1C4F00978();
    sub_1C43FCEE8(v41, qword_1EDDFECB8);
    v42 = sub_1C4F00968();
    v43 = sub_1C4F01CC8();
    if (sub_1C43FCEA4(v43))
    {
      v44 = sub_1C43FCED0();
      sub_1C43FBD24(v44);
      sub_1C44057CC();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      sub_1C43FE9D4();
    }

    sub_1C441DFEC(v14, v16);

    sub_1C45B69E4(v12, a1);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C45B6808()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_config);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey + 8);

  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey + 8);

  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore);

  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C45B6888()
{
  sub_1C45B6808();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AutonamingMessagesBookmarker()
{
  result = qword_1EDDE00C8;
  if (!qword_1EDDE00C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45B6934()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C45B69E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C45B6A54()
{
  result = qword_1EC0B9810;
  if (!qword_1EC0B9810)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9810);
  }

  return result;
}

uint64_t sub_1C45B6B00()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    memcpy(__dst, (v0 + 56), sizeof(__dst));
    type metadata accessor for AutonamingMessagesProcessHandler();
    swift_allocObject();
    sub_1C45BC048(__dst, &v5);
    v1 = sub_1C45C62B8(__dst);
    v3 = *(v2 + 176);
    *(v2 + 176) = v1;
  }

  return v1;
}

void *sub_1C45B6BA0(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for Configuration();
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v2[22] = 0;
  memcpy(v2 + 7, a2, 0x70uLL);
  type metadata accessor for AutonamingMessagesModelHandler();
  swift_allocObject();
  sub_1C45BC048(a2, v40);
  v2[6] = sub_1C45C36EC();
  v14 = [BiomeLibrary() Autonaming];
  sub_1C4433BBC();
  v15 = [v3 Messages];
  swift_unknownObjectRelease();
  v16 = [v15 Inferences];
  sub_1C4433BBC();
  v17 = [v3 source];

  v4[2] = v17;
  v18 = [BiomeLibrary() Autonaming];
  sub_1C4433BBC();
  v19 = [v3 Messages];
  swift_unknownObjectRelease();
  v20 = [v19 Inferences];
  sub_1C4433BBC();
  v21 = [v3 pruner];

  v4[3] = v21;
  v22 = sub_1C43FBEF8();
  sub_1C44098F0(v22, v23);
  v24 = type metadata accessor for AutonamingMessagesBookmarker();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1C45BC048(a2, v40);
  sub_1C45B4C74(v13, a2);
  v4[4] = v27;
  v28 = [BiomeLibrary() Autonaming];
  swift_unknownObjectRelease();
  v29 = [v28 Messages];
  swift_unknownObjectRelease();
  v30 = [v29 MessageIds];
  swift_unknownObjectRelease();
  v31 = a2[6];
  v32 = a2[7];
  v33 = sub_1C4F01108();
  sub_1C45B6AAC(a2);
  v34 = [v30 publisherWithUseCase_];

  v4[5] = v34;
  v35 = [BiomeLibrary() Autonaming];
  swift_unknownObjectRelease();
  v36 = [v35 Messages];
  swift_unknownObjectRelease();
  v37 = [v36 AccuracyFedStats];
  swift_unknownObjectRelease();
  v38 = [v37 source];

  sub_1C4467948(a1);
  v4[21] = v38;
  return v4;
}

void sub_1C45B6EFC(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDDFECB8);

  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136643075;
    v8 = *(a1 + 88);
    v9 = sub_1C45C1EA0();
    v11 = sub_1C441D828(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C441D828(v13, v12, &v17);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Autonaming Message processing: Donating into the Autonaming.Messages.Inferences biome stream using InferenceData with imageMessage: %{sensitive}s\n and image: %s", v7, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD18();
    sub_1C43FEA20();
  }

  v15 = *(v2 + 16);
  v16 = sub_1C45BEF24();
  [v15 sendEvent_];
}

uint64_t sub_1C45B70B8()
{
  v1 = *(v0 + 32);
  v2 = sub_1C45B4F58(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey + 8));
  return v2 & sub_1C45B4F58(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey + 8)) & 1;
}

uint64_t sub_1C45B7114(void *a1)
{
  v3 = *(v1 + 24);
  v4 = sub_1C4F01108();
  sub_1C43FBDBC();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C45BC014;
  *(v6 + 24) = v5;
  v10[4] = sub_1C45BC01C;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C45B7938;
  v10[3] = &unk_1F43E1BB0;
  v7 = _Block_copy(v10);
  v8 = a1;

  [v3 deleteWithPolicy:v4 eventsPassingTest:v7];

  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C45B7298(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 eventBody];
  v5 = sub_1C45B4BF8(a3, &selRef_messageId);
  if (!v6)
  {
    if (qword_1EDDFECB0 != -1)
    {
LABEL_47:
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Autonaming Message Deletion: No messageEvent.messageId was found";
LABEL_23:
    _os_log_impl(&dword_1C43F8000, v21, v22, v24, v23, 2u);
    MEMORY[0x1C6942830](v23, -1, -1);
LABEL_24:

    goto LABEL_25;
  }

  v7 = v6;
  if (v4)
  {
    v8 = v5;
    v9 = sub_1C45B4BF8(v4, &selRef_imageMessageIdentifier);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = sub_1C45B4BF8(a3, &selRef_messageId);
      v15 = v14;
      v16 = sub_1C45B4BF8(v4, &selRef_imageMessageIdentifier);
      if (v15)
      {
        if (v17)
        {
          if (v13 == v16 && v15 == v17)
          {

            goto LABEL_39;
          }

          v19 = sub_1C4F02938();

          if (v19)
          {
LABEL_39:
            if (qword_1EDDFECB0 != -1)
            {
              swift_once();
            }

            v46 = sub_1C4F00978();
            sub_1C442B738(v46, qword_1EDDFECB8);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v39 = sub_1C4F00968();
            v40 = sub_1C4F01CF8();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v50[0] = v42;
              *v41 = 136315394;
              v47 = sub_1C441D828(v8, v7, v50);

              *(v41 + 4) = v47;
              *(v41 + 12) = 2080;
              v48 = sub_1C441D828(v11, v12, v50);

              *(v41 + 14) = v48;
              v45 = "Autonaming Message Deletion: Message event with message id: %s and inference event with imageMessageIdentifier: %s match";
LABEL_43:
              _os_log_impl(&dword_1C43F8000, v39, v40, v45, v41, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1C6942830](v42, -1, -1);
              MEMORY[0x1C6942830](v41, -1, -1);
              goto LABEL_45;
            }

LABEL_44:

LABEL_45:

            return 1;
          }

LABEL_29:
          v49 = v11;
          v30 = [v4 contextMessageIdentifiers];
          v31 = sub_1C4F01678();

          v32 = (v31 + 40);
          v33 = -*(v31 + 16);
          v34 = -1;
          do
          {
            if (v33 + v34 == -1)
            {

              return 0;
            }

            if (++v34 >= *(v31 + 16))
            {
              __break(1u);
              goto LABEL_47;
            }

            v35 = v32 + 2;
            v36 = *v32;
            v50[0] = *(v32 - 1);
            v50[1] = v36;
            sub_1C4415EA8();
            v37 = sub_1C4F02048();
            v32 = v35;
          }

          while ((v37 & 1) == 0);

          if (qword_1EDDFECB0 != -1)
          {
            swift_once();
          }

          v38 = sub_1C4F00978();
          sub_1C442B738(v38, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v39 = sub_1C4F00968();
          v40 = sub_1C4F01CF8();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v50[0] = v42;
            *v41 = 136315394;
            v43 = sub_1C441D828(v8, v7, v50);

            *(v41 + 4) = v43;
            *(v41 + 12) = 2080;
            v44 = sub_1C441D828(v49, v12, v50);

            *(v41 + 14) = v44;
            v45 = "Autonaming Message Deletion: Message event contains a message id: %s that was found in the contextMessageIdentifiers array for the inferenceEventBody with image message identifier: %s";
            goto LABEL_43;
          }

          goto LABEL_44;
        }
      }

      else if (!v17)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Autonaming Message Deletion: No inferenceEventBody.imageMessageIdentifier was found";
    goto LABEL_23;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1C4F00978();
  sub_1C442B738(v25, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v26 = sub_1C4F01CD8();
  if (os_log_type_enabled(v4, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v26, "Autonaming Message Deletion: No event body found in deleteEvents of the autonamingMessagesInferenceStreamPruner", v27, 2u);
    MEMORY[0x1C6942830](v27, -1, -1);
  }

LABEL_25:

  return 0;
}

uint64_t sub_1C45B7938(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_1C45B79A8()
{
  v51 = v0;
  v1 = v0[14];
  sub_1C43FBDBC();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1C43FBDBC();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v49 = *(v1 + 40);
  v4 = *(*(v1 + 32) + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark);
  v0[6] = sub_1C45BC004;
  v0[7] = v3;
  v5 = MEMORY[0x1E69E9820];
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C4442530;
  v0[5] = &unk_1F43E1B10;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  swift_unknownObjectRetain();

  v0[6] = sub_1C45BC00C;
  v0[7] = v2;
  v0[2] = v5;
  v0[3] = 1107296256;
  v0[4] = sub_1C45BC0BC;
  v0[5] = &unk_1F43E1B38;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  v10 = [v49 drivableSinkWithBookmark:v4 completion:v6 shouldContinue:{v8, v3 + 16}];
  _Block_release(v8);
  _Block_release(v6);

  swift_beginAccess();
  v11 = *(v2 + 16);
  if (v11)
  {
    v12 = qword_1EDDFECB0;
    v13 = v11;
    if (v12 != -1)
    {
      sub_1C43FFB88();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v15 = v13;
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CC8();

    if (os_log_type_enabled(v16, v17))
    {
      v6 = sub_1C43FD084();
      v18 = sub_1C43FFD34();
      v50 = v18;
      *v6 = 136315138;
      v19 = sub_1C45B4BF8(v15, &selRef_messageId);
      if (v20)
      {
        v12 = v20;
      }

      else
      {
        v19 = 0xD000000000000013;
        v12 = 0x80000001C4F8B170;
      }

      v21 = sub_1C441D828(v19, v12, &v50);

      *(v6 + 1) = v21;
      _os_log_impl(&dword_1C43F8000, v16, v17, "Autonaming Biome events: Received an event body for event: %s and beginning processing of event", v6, 0xCu);
      sub_1C440962C(v18);
      sub_1C43FFD4C();
      sub_1C43FEA20();
    }

    v22 = [v15 hasIsDeletion];
    v23 = [v15 isDeletion];
    if (v22 && v23)
    {
      v24 = sub_1C4F00968();
      sub_1C4F01CC8();
      sub_1C442DD28();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = sub_1C43FCED0();
        sub_1C440C354(v26);
        _os_log_impl(&dword_1C43F8000, v24, v6, "Autonaming Biome events: Event received is of type deletion, performing deletion", v12, 2u);
        sub_1C43FBE2C();
      }

      v22 = v0[14];

      sub_1C45B7114(v15);
    }

    sub_1C447EF28();
    v27 = *v22;
    v28 = swift_unknownObjectRetain();
    v29 = sub_1C45B4F10(v28);
    swift_unknownObjectRelease();
    v30 = sub_1C4F00968();
    if (v29)
    {
      sub_1C4F01CC8();
      sub_1C442DD28();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_1C43FCED0();
        sub_1C440C354(v32);
        v35 = "Autonaming Biome events: Successfully updated autonaming bookmarker after publisher completion task and event was processed";
LABEL_24:
        sub_1C445E76C(&dword_1C43F8000, v33, v34, v35);
        sub_1C43FBE2C();
      }
    }

    else
    {
      sub_1C4F01CD8();
      sub_1C442DD28();
      if (os_log_type_enabled(v30, v45))
      {
        v46 = sub_1C43FCED0();
        sub_1C440C354(v46);
        v35 = "Autonaming Biome events: Unable to update autonaming bookmarker after publisher completion task";
        goto LABEL_24;
      }
    }

    goto LABEL_26;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v36 = sub_1C4F00978();
  sub_1C442B738(v36, qword_1EDDFECB8);
  v37 = sub_1C4F00968();
  sub_1C4F01CC8();
  sub_1C442DD28();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = sub_1C43FCED0();
    sub_1C440C354(v39);
    sub_1C445E76C(&dword_1C43F8000, v40, v41, "Autonaming Biome events: Reached end of biome queue or queue is empty");
    sub_1C43FBE2C();
  }

  v42 = v0[14];

  sub_1C447EF28();
  v43.isa = v37->isa;
  v44 = swift_unknownObjectRetain();
  sub_1C45B4F10(v44);
  swift_unknownObjectRelease();
  sub_1C45B6B00();
  sub_1C45C6314();

LABEL_26:

  swift_unknownObjectRelease();
  sub_1C43FBCF0();

  return v47(v11 != 0);
}

uint64_t sub_1C45B7EEC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 state];
  if (!v6)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v9, v16))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v17 = "Autonaming Biome events: processAutonamingMessagesBiome completed";
LABEL_16:
    _os_log_impl(&dword_1C43F8000, v9, v16, v17, v11, 2u);
LABEL_19:
    MEMORY[0x1C6942830](v11, -1, -1);
    goto LABEL_20;
  }

  if (v6 != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v9, v16))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v17 = "Autonaming Biome events: Error: processAutonamingMessagesBiome unexpected completion state.";
    goto LABEL_16;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDDFECB8);
  v8 = a1;
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CD8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = [v8 error];
    if (v13)
    {
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&dword_1C43F8000, v9, v10, "Autonaming Biome events: Error: processAutonamingMessagesBiome failed: %@", v11, 0xCu);
    sub_1C4423A0C(v12, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v12, -1, -1);
    goto LABEL_19;
  }

LABEL_20:

  swift_beginAccess();
  v19 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C45B81D0(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;

  return 0;
}

uint64_t sub_1C45B8234(uint64_t a1, uint64_t a2)
{
  v106 = a1;
  v109 = a2;
  v108 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v108);
  v103 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  v102 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v101 - v8;
  v110 = sub_1C4EF9E58();
  v9 = sub_1C43FCDF8(v110);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C4EF9F88();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v27 = sub_1C43FBD18(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v107 = &v101 - v33;
  v34 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  v35 = sub_1C43FBD18(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v101 - v38;
  v40 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v41 = sub_1C43FBD18(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v101 - v44;
  v46 = sub_1C4EF9648();
  v47 = sub_1C43FCDF8(v46);
  v111 = v48;
  v112 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  v53 = v52 - v51;
  sub_1C440BAA8(v45, 1, 1, v17);
  v54 = sub_1C4EFA018();
  sub_1C440BAA8(v39, 1, 1, v54);
  v55 = v53;
  sub_1C4EF9618();
  v56 = v110;
  (*(v11 + 104))(v16, *MEMORY[0x1E6969868], v110);
  sub_1C4EF9E68();
  v57 = v107;
  (*(v11 + 8))(v16, v56);
  v58 = v108;
  v110 = v55;
  sub_1C4EF9F08();
  (*(v20 + 8))(v25, v17);
  sub_1C4467FE0(v57, v32);
  if (sub_1C44157D4(v32, 1, v58) == 1)
  {
    sub_1C4423A0C(v32, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v59 = v109;
LABEL_9:
    v76 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v77 = [v76 InFocus];
    swift_unknownObjectRelease();
    v78 = *(v105 + 104);
    v79 = *(v105 + 112);
    v80 = sub_1C4F01108();
    v81 = sub_1C4415840();
    v83 = [v81 v82];

    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    v118 = sub_1C45B8C20;
    v119 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v115 = 1107296256;
    v116 = sub_1C44405F8;
    v117 = &unk_1F43E1A48;
    v85 = _Block_copy(&aBlock);
    v86 = swift_allocObject();
    v86[2] = v106;
    v86[3] = v59;
    v86[4] = v84;
    v118 = sub_1C45BBFF8;
    v119 = v86;
    aBlock = MEMORY[0x1E69E9820];
    v115 = 1107296256;
    v116 = sub_1C45BC0BC;
    v117 = &unk_1F43E1A98;
    v87 = _Block_copy(&aBlock);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v88 = [v83 sinkWithCompletion:v85 shouldContinue:v87];
    _Block_release(v87);
    _Block_release(v85);

    swift_beginAccess();
    if (*(v84 + 16))
    {
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v89 = sub_1C4F00978();
      sub_1C442B738(v89, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v90 = sub_1C4F00968();
      v91 = sub_1C4F01CC8();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = sub_1C43FD084();
        v93 = sub_1C43FFD34();
        v113 = v93;
        *v92 = 136315138;
        sub_1C4408600(&qword_1EDDFCD50);
        v94 = sub_1C4F02858();
        v96 = sub_1C441D828(v94, v95, &v113);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_1C43F8000, v90, v91, "Autonaming Analytics: Did not found a Messages app closing event happening after the image message: %s", v92, 0xCu);
        sub_1C440962C(v93);
        sub_1C43FFD4C();
        sub_1C43FBE2C();
      }
    }

    sub_1C4423A0C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
    (*(v111 + 8))(v110, v112);
    v97 = *(v84 + 16);

    return v97;
  }

  v61 = v103;
  v60 = v104;
  (*(v103 + 32))(v104, v32, v58);
  v59 = v109;
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    v73 = *(v61 + 8);
    v74 = sub_1C43FBEF8();
    v75(v74);
    goto LABEL_9;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v62 = sub_1C4F00978();
  sub_1C442B738(v62, qword_1EDDFECB8);
  v63 = v102;
  (*(v61 + 16))(v102, v60, v58);
  v64 = sub_1C4F00968();
  v65 = sub_1C4F01CC8();
  if (sub_1C440212C(v65))
  {
    v66 = sub_1C43FD084();
    v67 = sub_1C43FFD34();
    aBlock = v67;
    *v66 = 136315138;
    sub_1C4408600(&qword_1EDDFCD50);
    sub_1C4F02858();
    v68 = *(v61 + 8);
    v68(v63, v58);
    v69 = sub_1C4409A28();
    v72 = sub_1C441D828(v69, v70, v71);

    *(v66 + 4) = v72;
    _os_log_impl(&dword_1C43F8000, v64, v65, "Autonaming Analytics: Image Message older than release date %s, cannot send analytics", v66, 0xCu);
    sub_1C440962C(v67);
    sub_1C43FFD4C();
    sub_1C43FE9D4();

    v68(v104, v58);
  }

  else
  {

    v98 = *(v61 + 8);
    v98(v63, v58);
    v99 = sub_1C43FBEF8();
    (v98)(v99);
  }

  sub_1C4423A0C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(v111 + 8))(v110, v112);
  return 0;
}

void sub_1C45B8C20(void *a1)
{
  v2 = [a1 state];
  if (!v2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v12 = "Autonaming Analytics: Finished looking through the AppInFocus Biome stream";
LABEL_16:
    _os_log_impl(&dword_1C43F8000, oslog, v11, v12, v6, 2u);
LABEL_19:
    MEMORY[0x1C6942830](v6, -1, -1);
    goto LABEL_20;
  }

  if (v2 != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v12 = "Autonaming Analytics: Error: unexpected completion state for looking through the AppInFocus Biome stream.";
    goto LABEL_16;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = a1;
  oslog = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = [v4 error];
    if (v8)
    {
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 4) = v8;
    *v7 = v9;
    _os_log_impl(&dword_1C43F8000, oslog, v5, "Autonaming Analytics: Error: failed looking through the AppInFocus Biome stream: %@", v6, 0xCu);
    sub_1C4423A0C(v7, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v7, -1, -1);
    goto LABEL_19;
  }

LABEL_20:
}

uint64_t sub_1C45B8ED0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = [a1 eventBody];
  if (!v14)
  {
    return 1;
  }

  v15 = v14;
  v16 = sub_1C4632064(v14);
  if (!v17)
  {
LABEL_14:

    return 1;
  }

  if (v16 == 0xD000000000000013 && v17 == 0x80000001C4F84800)
  {
  }

  else
  {
    v19 = sub_1C4F02938();

    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v15 starting])
  {
    goto LABEL_14;
  }

  v20 = [v15 absoluteTimestamp];
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;
  sub_1C4EF9C78();

  v22 = OBJC_IVAR____TtC24IntelligencePlatformCore11MessageData_contentCreationDate;
  sub_1C4498DE4(&qword_1EDDFCD70);
  v44 = v22;
  if (sub_1C4F01068())
  {
    (*(v7 + 8))(v13, v6);
    goto LABEL_14;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1C4F00978();
  sub_1C442B738(v24, qword_1EDDFECB8);
  (*(v7 + 16))(v11, v13, v6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CC8();

  v43 = v26;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45[0] = v42;
    *v27 = 136315394;
    v40 = sub_1C4498DE4(&qword_1EDDFCD50);
    v41 = v25;
    v39 = sub_1C4F02858();
    v29 = v28;
    v30 = *(v7 + 8);
    v30(v11, v6);
    v31 = sub_1C441D828(v39, v29, v45);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = sub_1C4F02858();
    v34 = sub_1C441D828(v32, v33, v45);

    *(v27 + 14) = v34;
    v35 = v41;
    _os_log_impl(&dword_1C43F8000, v41, v43, "Autonaming Analytics: Found a Messages app closing event happening at %s after the image message: %s", v27, 0x16u);
    v36 = v42;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v36, -1, -1);
    MEMORY[0x1C6942830](v27, -1, -1);

    v30(v13, v6);
  }

  else
  {

    v37 = *(v7 + 8);
    v37(v11, v6);
    v37(v13, v6);
  }

  swift_beginAccess();
  result = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_1C45B9354(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C45B936C()
{
  v16 = v0;
  v2 = sub_1C45BC6A4(*(v0 + 296), *(v0 + 304));
  v4 = v3;
  *(v0 + 320) = v3;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v5 = sub_1C4F00978();
  *(v0 + 328) = sub_1C442B738(v5, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F00968();
  sub_1C4F01CC8();

  if (sub_1C442FAFC())
  {
    sub_1C43FD084();
    v15 = sub_1C4402BBC();
    *v1 = 136315138;
    *(v1 + 4) = sub_1C441D828(v2, v4, &v15);
    sub_1C440A5A8();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  v12 = *(v0 + 312);
  *(v0 + 376) = sub_1C45B8234(*(v0 + 296), *(v0 + 304)) & 1;
  *(v0 + 336) = *(v12 + 48);
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_1C45B9504;

  return sub_1C45C513C(v2, v4);
}

uint64_t sub_1C45B9504()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *(v4 + 320);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v11[44] = v9;
  v11[45] = v10;
  v11[46] = v0;

  if (v0)
  {
    v12 = sub_1C45B9BC8;
  }

  else
  {
    v12 = sub_1C45B9628;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1C45B9628()
{
  v97 = v0;
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CC8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    sub_1C43FD084();
    v96 = sub_1C4402BBC();
    *v1 = 136315138;
    v8 = sub_1C44057DC();
    *(v1 + 4) = sub_1C441D828(v8, v9, v10);
    _os_log_impl(&dword_1C43F8000, v4, v5, "Result from running inference on Autonaming Messages LLM: %s", v1, 0xCu);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  v12 = *(v0 + 352);
  v11 = *(v0 + 360);
  type metadata accessor for AutonamingMessagesModelHandler();
  v13 = sub_1C4402120();
  sub_1C45C2CF0(v13, v14, v15);

  v17 = *(v0 + 208);
  if (v17 == 1)
  {
    if (*(v0 + 376) == 1)
    {
      v18 = *(v0 + 328);
      v19 = sub_1C4F00968();
      v20 = sub_1C4F01CC8();
      if (sub_1C443FA44(v20))
      {
        v21 = sub_1C43FCED0();
        sub_1C43FBD24(v21);
        sub_1C43FBED8(&dword_1C43F8000, v22, v23, "Autonaming Analytics: Sending an analytics event for inferenceLLMConversionError.");
        sub_1C43FE9D4();
      }

      v24 = *(v0 + 336);
      v25 = *(v0 + 312);

      v26 = *(v25 + 168);
      sub_1C45C2C84();
      v27 = objc_allocWithZone(MEMORY[0x1E698EB40]);
      v28 = sub_1C44148CC();
      v30 = sub_1C440DE24(v28, v29, 2);
      v31 = sub_1C4415840();
      [v31 v32];
    }

    v33 = *(v0 + 328);
    v35 = *(v0 + 296);
    v34 = *(v0 + 304);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CC8();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_28;
    }

    v38 = *(v0 + 304);
    v39 = sub_1C43FD084();
    v40 = sub_1C43FFD34();
    v96 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1C441D828(*(v38 + 16), *(v38 + 24), &v96);
    v41 = "Unable to donate inference for autonaming from messages from the message with unique identifier: %s, as conversion from LLM output to InferenceOutput failed";
LABEL_27:
    _os_log_impl(&dword_1C43F8000, v36, v37, v41, v39, 0xCu);
    sub_1C440962C(v40);
    sub_1C43FEA20();
    sub_1C43FE9D4();
LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 136) = *(v0 + 200);
  *(v0 + 144) = v17;
  *(v0 + 152) = *(v0 + 216);
  *(v0 + 168) = *(v0 + 232);
  *(v0 + 184) = *(v0 + 248);
  if ((sub_1C45C0288(v16) & 1) == 0)
  {
    sub_1C4423A0C(v0 + 200, &unk_1EC0B9820, &unk_1C4F0FC10);
LABEL_21:
    if (*(v0 + 376) == 1)
    {
      v75 = *(v0 + 328);
      v76 = sub_1C4F00968();
      v77 = sub_1C4F01CC8();
      if (sub_1C443FA44(v77))
      {
        v78 = sub_1C43FCED0();
        sub_1C43FBD24(v78);
        sub_1C43FBED8(&dword_1C43F8000, v79, v80, "Autonaming Analytics: Sending an analytics event for an unclear inference.");
        sub_1C43FE9D4();
      }

      v81 = *(v0 + 336);
      v82 = *(v0 + 312);

      v83 = *(v82 + 168);
      sub_1C45C2C84();
      v84 = objc_allocWithZone(MEMORY[0x1E698EB40]);
      v85 = sub_1C44148CC();
      v87 = sub_1C440DE24(v85, v86, 3);
      v88 = sub_1C4415840();
      [v88 v89];
    }

    v90 = *(v0 + 328);
    v92 = *(v0 + 296);
    v91 = *(v0 + 304);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CC8();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_28;
    }

    v93 = *(v0 + 304);
    v39 = sub_1C43FD084();
    v40 = sub_1C43FFD34();
    v96 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1C441D828(*(v93 + 16), *(v93 + 24), &v96);
    v41 = "Unable to donate inference for autonaming from messages from the message with unique identifier: %s, as the inferred name or participant name is nil";
    goto LABEL_27;
  }

  v42 = *(v0 + 304);
  v44 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult);
  v43 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 8);
  v45 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 16);
  v46 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 24);
  v47 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 32);
  if (v43)
  {
    v48 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = v44;
  }

  else
  {
    v49 = 0;
  }

  v50 = *(v0 + 336);
  v51 = *(v0 + 296);
  v52 = sub_1C441B770();
  sub_1C45BBF70(v52, v53);
  v54 = sub_1C441B770();
  sub_1C45BBFB4(v54, v55);
  v56 = sub_1C45C2C84();
  v58 = v57;
  type metadata accessor for InferenceData();
  swift_initStackObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C45BE1A0(v51, v42, (v0 + 136), v49, v43, v56, v58);
  v60 = v59;
  if (!sub_1C45BEF04())
  {

    goto LABEL_21;
  }

  v61 = *(v0 + 376);
  v62 = *(v0 + 312);
  sub_1C45B6EFC(v60);
  if (v61 == 1)
  {
    v63 = *(v0 + 328);
    v64 = sub_1C45BF034();
    v65 = sub_1C4F00968();
    sub_1C4F01CC8();

    if (sub_1C442FAFC())
    {
      v66 = sub_1C43FD084();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v64;
      *v67 = v64;
      v68 = v64;
      sub_1C440A5A8();
      _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
      sub_1C4423A0C(v67, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD18();
      sub_1C43FFD4C();
    }

    v74 = *(v0 + 312);

    [*(v74 + 168) sendEvent_];
  }

  else
  {
  }

LABEL_29:
  sub_1C43FBCF0();

  return v94();
}

uint64_t sub_1C45B9BC8()
{
  v33 = v0;
  if (*(v0 + 376))
  {
    v2 = *(v0 + 328);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CC8();
    if (sub_1C443FA44(v4))
    {
      v5 = sub_1C43FCED0();
      sub_1C43FBD24(v5);
      sub_1C43FBED8(&dword_1C43F8000, v6, v7, "Autonaming Analytics: Sending an analytics event for modelRunError.");
      sub_1C43FE9D4();
    }

    v8 = *(v0 + 336);
    v9 = *(v0 + 312);

    v10 = *(v9 + 168);
    sub_1C45C2C84();
    v11 = objc_allocWithZone(MEMORY[0x1E698EB40]);
    v12 = sub_1C44148CC();
    v14 = sub_1C440DE24(v12, v13, 1);
    v15 = sub_1C4415840();
    [v15 v16];
  }

  v17 = *(v0 + 368);
  v18 = *(v0 + 328);
  v19 = v17;
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CD8();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 368);
  if (v22)
  {
    sub_1C43FD084();
    v32 = sub_1C4402BBC();
    *v1 = 136315138;
    swift_getErrorValue();
    v25 = *(v0 + 264);
    v24 = *(v0 + 272);
    v26 = *(v0 + 280);
    v27 = sub_1C4F02A38();
    v29 = sub_1C441D828(v27, v28, &v32);

    *(v1 + 4) = v29;
    _os_log_impl(&dword_1C43F8000, v20, v21, "Unable to run inference for autonaming from messages due to error: %s", v1, 0xCu);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  else
  {
  }

  sub_1C43FBCF0();

  return v30(0);
}

uint64_t sub_1C45B9D9C()
{
  sub_1C43FBCD4();
  v1[2] = v0;
  v2 = sub_1C4EF9F68();
  v1[3] = v2;
  sub_1C43FCF7C(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v6 = sub_1C4EF9F88();
  v1[6] = v6;
  sub_1C43FCF7C(v6);
  v1[7] = v7;
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v10 = sub_1C4EF9CD8();
  v1[9] = v10;
  sub_1C43FCF7C(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = sub_1C43FE604();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  v1[16] = sub_1C43FE604();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v17 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C45B9FC8()
{
  v163 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v1 = sub_1C4F00978();
  v0[28] = sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (sub_1C43FEB2C(v3))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4410910(&dword_1C43F8000, v4, v5, "Autonaming Queue preparation: Preparing a queue of messages to process");
    sub_1C43FEA20();
  }

  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[9];
  v9 = v0[2];

  v10 = *(v9 + 32);
  sub_1C45B6350(v6);
  v11 = sub_1C43FBEF8();
  sub_1C4467FE0(v11, v12);
  v13 = sub_1C44157D4(v7, 1, v8);
  v14 = v0[26];
  if (v13 == 1)
  {
    v152 = v0[20];
    v155 = v0[19];
    v15 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    v19 = v0[7];
    v18 = v0[8];
    v150 = v0[6];
    v20 = v0[4];
    v21 = v0[5];
    v22 = v0[3];
    sub_1C4423A0C(v0[25], &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4EF9F58();
    (*(v20 + 104))(v21, *MEMORY[0x1E6969A68], v22);
    sub_1C4EF9CC8();
    sub_1C4EF9F28();
    v157 = *(v16 + 8);
    v157(v15, v17);
    v24 = *(v20 + 8);
    v23 = v20 + 8;
    v24(v21, v22);
    v26 = *(v19 + 8);
    v25 = v19 + 8;
    v26(v18, v150);
    sub_1C4467FE0(v14, v152);
    sub_1C4467FE0(v14, v155);
    v27 = sub_1C4F00968();
    sub_1C4F01CC8();
    sub_1C442DD28();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[20];
    if (v29)
    {
      v31 = v0[18];
      v32 = v0[9];
      swift_slowAlloc();
      v162 = sub_1C4402BBC();
      *v23 = 136315394;
      v33 = sub_1C4402120();
      sub_1C4467FE0(v33, v34);
      v35 = sub_1C44157D4(v31, 1, v32);
      v36 = v0[18];
      if (v35 == 1)
      {
        v37 = 7104878;
        sub_1C4423A0C(v0[18], &unk_1EC0B84E0, qword_1C4F0D2D0);
        v38 = 0xE300000000000000;
      }

      else
      {
        v69 = v0[9];
        v70 = v0[18];
        v37 = sub_1C4EF9B18();
        v38 = v71;
        v157(v36, v69);
      }

      v72 = v0[19];
      v73 = v0[17];
      v74 = v0[9];
      sub_1C4423A0C(v0[20], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v75 = sub_1C441D828(v37, v38, &v162);

      *(v23 + 4) = v75;
      *(v23 + 12) = 2048;
      sub_1C4467FE0(v72, v73);
      v76 = sub_1C44157D4(v73, 1, v74);
      v77 = v0[19];
      v78 = v0[17];
      if (v76 == 1)
      {
        sub_1C4423A0C(v0[19], &unk_1EC0B84E0, qword_1C4F0D2D0);
        v79 = sub_1C4402120();
        sub_1C4423A0C(v79, v80, qword_1C4F0D2D0);
        v81 = 0;
        v61 = v157;
      }

      else
      {
        v95 = v0[9];
        sub_1C4EF9AD8();
        v81 = v96;
        sub_1C4423A0C(v77, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v97 = sub_1C4402120();
        v61 = v157;
        (v157)(v97);
      }

      *(v23 + 14) = v81;
      _os_log_impl(&dword_1C43F8000, v27, v25, "Autonaming Queue preparation: Did not find a date bookmark, starting the query from 5 years ago: %s (%f)", v23, 0x16u);
      sub_1C4406614();
      sub_1C43FFD4C();
    }

    else
    {
      v60 = v0[19];

      sub_1C4423A0C(v60, &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C4423A0C(v30, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v61 = v157;
    }
  }

  else
  {
    v40 = v0[23];
    v39 = v0[24];
    v42 = v0[14];
    v41 = v0[15];
    v43 = v0[13];
    v45 = v0[9];
    v44 = v0[10];
    (*(v44 + 32))(v41, v0[25], v45);
    sub_1C4EF9BE8();
    sub_1C440BAA8(v14, 0, 1, v45);
    v46 = sub_1C43FBEF8();
    sub_1C4467FE0(v46, v47);
    sub_1C4467FE0(v14, v40);
    v48 = *(v44 + 16);
    v48(v42, v41, v45);
    v48(v43, v41, v45);
    v49 = sub_1C4F00968();
    v50 = sub_1C4F01CC8();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[24];
    if (v51)
    {
      v158 = v50;
      v53 = v0[22];
      v54 = v0[9];
      v55 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *v55 = 136315906;
      sub_1C4467FE0(v52, v53);
      v56 = sub_1C44157D4(v53, 1, v54);
      v57 = v0[22];
      if (v56 == 1)
      {
        v58 = 7104878;
        sub_1C4423A0C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v59 = 0xE300000000000000;
      }

      else
      {
        v83 = v0[9];
        v82 = v0[10];
        v58 = sub_1C4EF9B18();
        v59 = v84;
        (*(v82 + 8))(v57, v83);
      }

      v85 = v0[23];
      v86 = v0[21];
      v87 = v0[9];
      sub_1C4423A0C(v0[24], &unk_1EC0B84E0, qword_1C4F0D2D0);
      v88 = sub_1C441D828(v58, v59, &v162);

      *(v55 + 4) = v88;
      *(v55 + 12) = 2048;
      sub_1C4467FE0(v85, v86);
      v89 = sub_1C44157D4(v86, 1, v87);
      v90 = v0[23];
      v91 = v0[21];
      if (v89 == 1)
      {
        sub_1C4423A0C(v0[23], &unk_1EC0B84E0, qword_1C4F0D2D0);
        v92 = sub_1C4409A28();
        sub_1C4423A0C(v92, v93, qword_1C4F0D2D0);
        v94 = 0;
      }

      else
      {
        v99 = v0[9];
        v98 = v0[10];
        sub_1C4EF9AD8();
        v94 = v100;
        sub_1C4423A0C(v90, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v101 = *(v98 + 8);
        v102 = sub_1C4409A28();
        v103(v102);
      }

      v104 = v0[14];
      v153 = v0[15];
      v105 = v0[13];
      v107 = v0[9];
      v106 = v0[10];
      *(v55 + 14) = v94;
      *(v55 + 22) = 2080;
      v108 = sub_1C4EF9B18();
      v110 = v109;
      v111 = *(v106 + 8);
      v111(v104, v107);
      v112 = sub_1C441D828(v108, v110, &v162);

      *(v55 + 24) = v112;
      *(v55 + 32) = 2048;
      sub_1C4EF9AD8();
      v61 = v111;
      v114 = v113;
      v111(v105, v107);
      *(v55 + 34) = v114;
      _os_log_impl(&dword_1C43F8000, v49, v158, "Autonaming Queue preparation: Found a date bookmark, starting the query from date %s (%f), bookmarkDate was %s (%f)", v55, 0x2Au);
      swift_arrayDestroy();
      sub_1C43FFD4C();
      sub_1C43FEA20();

      v111(v153, v107);
    }

    else
    {
      v62 = v0[23];
      v63 = v0[14];
      v159 = v0[15];
      v64 = v0[13];
      v66 = v0[9];
      v65 = v0[10];

      v61 = *(v65 + 8);
      v61(v64, v66);
      v61(v63, v66);
      v67 = sub_1C44057DC();
      sub_1C4423A0C(v67, v68, qword_1C4F0D2D0);
      sub_1C4423A0C(v52, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v61(v159, v66);
    }
  }

  v0[29] = v61;
  v115 = v0[16];
  v116 = v0[9];
  sub_1C4467FE0(v0[26], v115);
  v117 = sub_1C44157D4(v115, 1, v116);
  v118 = v0[16];
  if (v117 == 1)
  {
    sub_1C4423A0C(v0[16], &unk_1EC0B84E0, qword_1C4F0D2D0);
    v119 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C442DD28();
    v121 = os_log_type_enabled(v119, v120);
    v123 = v0[26];
    v122 = v0[27];
    if (v121)
    {
      *sub_1C43FCED0() = 0;
      sub_1C440A5A8();
      _os_log_impl(v124, v125, v126, v127, v128, 2u);
      sub_1C43FFD4C();
    }

    sub_1C4423A0C(v123, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4423A0C(v122, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v130 = v0[26];
    v129 = v0[27];
    v132 = v0[24];
    v131 = v0[25];
    v133 = v0[22];
    v134 = v0[23];
    v136 = v0[20];
    v135 = v0[21];
    v138 = v0[18];
    v137 = v0[19];
    v146 = v0[17];
    v147 = v0[16];
    v148 = v0[15];
    v149 = v0[14];
    v151 = v0[13];
    v154 = v0[12];
    v156 = v0[11];
    v160 = v0[8];
    v161 = v0[5];

    sub_1C43FBCF0();

    return v139(0);
  }

  else
  {
    v141 = v0[12];
    v142 = v0[2];
    (*(v0[10] + 32))(v0[11], v0[16], v0[9]);
    v0[30] = *(sub_1C45B6B00() + 16);

    sub_1C4EF9CC8();
    v143 = swift_task_alloc();
    v0[31] = v143;
    *v143 = v0;
    v143[1] = sub_1C45BAA84;
    v145 = v0[11];
    v144 = v0[12];

    return sub_1C45C9000();
  }
}

uint64_t sub_1C45BAA84()
{
  sub_1C43FBDE4();
  v2 = v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = v4[31];
  v6 = v4[30];
  v7 = v4[29];
  v8 = v4[12];
  v9 = v4[10];
  v10 = v4[9];
  v11 = *v0;
  sub_1C43FBDAC();
  *v12 = v11;
  *(v2 + 256) = v13;

  *(v2 + 264) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14 = sub_1C43FBEF8();
  v7(v14);
  v15 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C45BAC0C()
{
  v1 = v0[32];
  v2 = v0[28];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CC8();
  v5 = sub_1C440212C(v4);
  v6 = v0[32];
  if (v5)
  {
    v7 = sub_1C43FD084();
    *v7 = 134217984;
    *(v7 + 4) = sub_1C4428DA0();

    sub_1C4415F30(&dword_1C43F8000, v8, v4, "Autonaming Queue preparation: Found a queue of %ld messages");
    sub_1C43FEA20();
  }

  else
  {
    v9 = v0[32];
  }

  v10 = v0[33];
  v37 = v0[32];
  v11 = v0[29];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[11];
  v15 = v0[9];

  v11(v14, v15);
  sub_1C4423A0C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4423A0C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[24];
  v19 = v0[25];
  v21 = v0[22];
  v20 = v0[23];
  v23 = v0[20];
  v22 = v0[21];
  v25 = v0[18];
  v24 = v0[19];
  v28 = v0[17];
  v29 = v0[16];
  v30 = v0[15];
  v31 = v0[14];
  v32 = v0[13];
  v33 = v0[12];
  v34 = v0[11];
  v35 = v0[8];
  v36 = v0[5];

  sub_1C43FBCF0();

  return v26(v37);
}

uint64_t sub_1C45BAE28()
{
  sub_1C43FBCD4();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1C4EF9CD8();
  v1[7] = v4;
  sub_1C43FCF7C(v4);
  v1[8] = v5;
  v7 = *(v6 + 64);
  v1[9] = sub_1C43FE604();
  v1[10] = swift_task_alloc();
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  v1[11] = sub_1C43FE604();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C45BAF38()
{
  v60 = v1;
  v3 = v1[4];
  v4 = v1[5];
  if (sub_1C4428DA0() == v4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CC8();
    if (sub_1C43FEB2C(v7))
    {
      v8 = sub_1C43FCED0();
      sub_1C43FBD24(v8);
      _os_log_impl(&dword_1C43F8000, v6, v7, "Autonaming Queue processing: Reached the end of the messages queue, processing is complete", v0, 2u);
      sub_1C43FE9D4();
    }

LABEL_7:
    sub_1C442FADC();

    sub_1C43FBCF0();

    return v9(0);
  }

  v11 = v1[4] & 0xC000000000000001;
  sub_1C4431590(v1[5], v11 == 0);
  v13 = v1[4];
  v12 = v1[5];
  if (v11)
  {
    v14 = MEMORY[0x1C6940F90](v12, v13);
  }

  else
  {
    v14 = *(v13 + 8 * v12 + 32);
  }

  v15 = v14;
  v1[16] = v14;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v16 = sub_1C4F00978();
  v1[17] = sub_1C442B738(v16, qword_1EDDFECB8);
  v17 = v15;
  v18 = sub_1C4F00968();
  sub_1C4F01CC8();

  if (sub_1C442FAFC())
  {
    sub_1C43FD084();
    v59 = sub_1C4402BBC();
    *v2 = 136315138;
    v19 = sub_1C45C28D8([v17 attributeSet]);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v19 = 7104878;
      v21 = 0xE300000000000000;
    }

    v22 = sub_1C441D828(v19, v21, &v59);

    *(v2 + 4) = v22;
    sub_1C440A5A8();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  v28 = [v17 attributeSet];
  v29 = [v28 contentCreationDate];

  if (v29)
  {
    v30 = v1[14];
    sub_1C4EF9C78();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v33 = v1[14];
  v32 = v1[15];
  v34 = v1[13];
  v35 = v1[7];
  sub_1C440BAA8(v33, v31, 1, v35);
  sub_1C45B69E4(v33, v32);
  sub_1C4467FE0(v32, v34);
  v36 = sub_1C44157D4(v34, 1, v35);
  v37 = v1[13];
  if (v36 == 1)
  {
    sub_1C4423A0C(v1[13], &unk_1EC0B84E0, qword_1C4F0D2D0);
    v38 = sub_1C4F00968();
    v39 = sub_1C4F01CC8();
    if (sub_1C43FEB2C(v39))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4410910(&dword_1C43F8000, v40, v41, "Autonaming Queue processing: Event does not contain a time, continuing with processing");
      sub_1C43FEA20();
    }
  }

  else
  {
    v42 = v1[9];
    v43 = v1[7];
    v44 = v1[8];
    (*(v44 + 32))(v1[10], v1[13], v43);
    sub_1C4EF9CC8();
    sub_1C4EF9CB8();
    v46 = v45;
    v47 = *(v44 + 8);
    v47(v42, v43);
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CC8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134218240;
      *(v50 + 4) = v46;
      *(v50 + 12) = 2048;
      sub_1C44F920C();
      *(v50 + 14) = static NSUserDefaults.autonamingMessagesProcessingDelay.getter();
      _os_log_impl(&dword_1C43F8000, v48, v49, "Autonaming Queue processing: Message has messageTimeDelta between message being written and current system time of: %f. Current time delta for processing an event is: %f seconds", v50, 0x16u);
      sub_1C43FFD18();
    }

    sub_1C44F920C();
    if (v46 < static NSUserDefaults.autonamingMessagesProcessingDelay.getter())
    {
      v51 = sub_1C4F00968();
      v52 = sub_1C4F01CD8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = sub_1C43FD084();
        *v53 = 134217984;
        *(v53 + 4) = static NSUserDefaults.autonamingMessagesProcessingDelay.getter();
        _os_log_impl(&dword_1C43F8000, v51, v52, "Autonaming Queue processing: Cannot process event as the set time delta for processing an event: %f seconds have not yet passed since the event took place", v53, 0xCu);
        sub_1C43FFD18();
      }

      v54 = v1[15];
      v55 = v1[10];
      v56 = v1[7];

      v47(v55, v56);
      sub_1C4423A0C(v54, &unk_1EC0B84E0, qword_1C4F0D2D0);
      goto LABEL_7;
    }

    v47(v1[10], v1[7]);
  }

  v57 = v1[6];
  v1[18] = sub_1C45B6B00();
  v58 = swift_task_alloc();
  v1[19] = v58;
  *v58 = v1;
  v58[1] = sub_1C45BB4FC;

  return sub_1C45C7658(v17);
}

uint64_t sub_1C45BB4FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  v4 = *(v3 + 152);
  v5 = *(v3 + 144);
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v10 + 160) = v8;
  *(v10 + 168) = v9;

  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C45BB600()
{
  v60 = v0;
  if (!v0[20])
  {
    v10 = v0[15];
    v11 = *(v0[6] + 32);
    v12 = sub_1C45B5424();
    v13 = v0[17];
    if (v12)
    {
      sub_1C4467FE0(v0[15], v0[12]);
      v14 = sub_1C4F00968();
      v15 = sub_1C4F01CC8();
      if (sub_1C440212C(v15))
      {
        v17 = v0[11];
        v16 = v0[12];
        v18 = v0[7];
        v19 = sub_1C43FD084();
        v20 = sub_1C43FFD34();
        v59 = v20;
        *v19 = 136315138;
        v21 = sub_1C4409A28();
        sub_1C4467FE0(v21, v22);
        v23 = sub_1C44157D4(v17, 1, v18);
        v24 = v0[11];
        if (v23 == 1)
        {
          sub_1C4423A0C(v0[11], &unk_1EC0B84E0, qword_1C4F0D2D0);
          v25 = 0xE300000000000000;
          v26 = 7104878;
        }

        else
        {
          v49 = v0[7];
          v50 = v0[8];
          v26 = sub_1C4EF9B18();
          v25 = v51;
          v52 = *(v50 + 8);
          v1 = v50 + 8;
          v52(v24, v49);
        }

        v53 = sub_1C4410184();
        sub_1C4423A0C(v53, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v54 = sub_1C441D828(v26, v25, &v59);

        *(v19 + 4) = v54;
        sub_1C4415F30(&dword_1C43F8000, v55, v15, "Autonaming Queue processing: Successfully updated autonaming spotlight bookmark with date %s");
        sub_1C440962C(v20);
        sub_1C43FFD4C();
        sub_1C43FEA20();

        sub_1C45BBF30(v1);
        v45 = v58;
        v46 = &unk_1EC0B84E0;
        v47 = qword_1C4F0D2D0;
      }

      else
      {
        v38 = v0[20];
        v37 = v0[21];
        v39 = v0[15];
        v40 = v0[16];
        v41 = v0[12];

        sub_1C45BBF30(v38);
        sub_1C440F228();
        sub_1C4423A0C(v42, v43, v44);
        sub_1C440F228();
      }
    }

    else
    {
      v27 = sub_1C4F00968();
      v28 = sub_1C4F01CD8();
      v29 = sub_1C43FEB2C(v28);
      v31 = v0[20];
      v30 = v0[21];
      v32 = v0[15];
      v33 = v0[16];
      if (v29)
      {
        *sub_1C43FCED0() = 0;
        sub_1C4404B70(&dword_1C43F8000, v34, v35, "Autonaming Queue processing: Unable to update autonaming bookmarker after publisher completion task");
        sub_1C43FFD18();

        v36 = sub_1C44057DC();
        sub_1C45BBF30(v36);
      }

      else
      {

        v48 = sub_1C44057DC();
        sub_1C45BBF30(v48);
      }

      v46 = &unk_1EC0B84E0;
      v47 = qword_1C4F0D2D0;
      v45 = v32;
    }

    sub_1C4423A0C(v45, v46, v47);
    sub_1C442FADC();

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    __asm { BRAA            X2, X16 }
  }

  v2 = v0[21];
  v3 = v0[20];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1C45BB960;
  v5 = v0[6];
  sub_1C43FD0C0();

  return sub_1C45B9354(v6, v7);
}

uint64_t sub_1C45BB960()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *(v1 + 24) = v3;
  *(v1 + 16) = v0;
  v5 = *(v4 + 176);
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;

  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C45BBA48()
{
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  v5 = sub_1C4F00968();
  sub_1C4F01CC8();

  if (sub_1C442FAFC())
  {
    v6 = *(v0 + 24);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 128);
    swift_slowAlloc();
    v70 = sub_1C4402BBC();
    *v1 = 67109378;
    *(v1 + 4) = v6;
    *(v1 + 8) = 2080;
    v10 = sub_1C45C28D8([v9 attributeSet]);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 7104878;
      v12 = 0xE300000000000000;
    }

    v13 = sub_1C441D828(v10, v12, &v70);

    *(v1 + 10) = v13;
    sub_1C440A5A8();
    _os_log_impl(v14, v15, v16, v17, v18, 0x12u);
    sub_1C4406614();
    sub_1C43FFD4C();
  }

  else
  {
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
  }

  v21 = *(v0 + 120);
  v22 = *(*(v0 + 48) + 32);
  v23 = sub_1C45B5424();
  v24 = *(v0 + 136);
  if (v23)
  {
    sub_1C4467FE0(*(v0 + 120), *(v0 + 96));
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CC8();
    if (sub_1C440212C(v26))
    {
      v28 = *(v0 + 88);
      v27 = *(v0 + 96);
      v29 = *(v0 + 56);
      v30 = sub_1C43FD084();
      v31 = sub_1C43FFD34();
      v70 = v31;
      *v30 = 136315138;
      v32 = sub_1C4409A28();
      sub_1C4467FE0(v32, v33);
      v34 = sub_1C44157D4(v28, 1, v29);
      v35 = *(v0 + 88);
      if (v34 == 1)
      {
        v36 = 7104878;
        sub_1C4423A0C(*(v0 + 88), &unk_1EC0B84E0, qword_1C4F0D2D0);
        v37 = 0xE300000000000000;
      }

      else
      {
        v60 = *(v0 + 56);
        v61 = *(v0 + 64);
        v36 = sub_1C4EF9B18();
        v37 = v62;
        v63 = *(v61 + 8);
        v2 = v61 + 8;
        v63(v35, v60);
      }

      v64 = sub_1C4410184();
      sub_1C4423A0C(v64, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v65 = sub_1C441D828(v36, v37, &v70);

      *(v30 + 4) = v65;
      sub_1C4415F30(&dword_1C43F8000, v66, v26, "Autonaming Queue processing: Successfully updated autonaming spotlight bookmark with date %s");
      sub_1C440962C(v31);
      sub_1C43FFD4C();
      sub_1C43FEA20();

      sub_1C45BBF30(v2);
      v56 = v69;
      v57 = &unk_1EC0B84E0;
      v58 = qword_1C4F0D2D0;
    }

    else
    {
      v49 = *(v0 + 160);
      v48 = *(v0 + 168);
      v50 = *(v0 + 120);
      v51 = *(v0 + 128);
      v52 = *(v0 + 96);

      sub_1C45BBF30(v49);
      sub_1C440F228();
      sub_1C4423A0C(v53, v54, v55);
      sub_1C440F228();
    }
  }

  else
  {
    v38 = sub_1C4F00968();
    v39 = sub_1C4F01CD8();
    v40 = sub_1C43FEB2C(v39);
    v42 = *(v0 + 160);
    v41 = *(v0 + 168);
    v43 = *(v0 + 120);
    v44 = *(v0 + 128);
    if (v40)
    {
      *sub_1C43FCED0() = 0;
      sub_1C4404B70(&dword_1C43F8000, v45, v46, "Autonaming Queue processing: Unable to update autonaming bookmarker after publisher completion task");
      sub_1C43FFD18();

      v47 = sub_1C44057DC();
      sub_1C45BBF30(v47);
    }

    else
    {

      v59 = sub_1C44057DC();
      sub_1C45BBF30(v59);
    }

    v57 = &unk_1EC0B84E0;
    v58 = qword_1C4F0D2D0;
    v56 = v43;
  }

  sub_1C4423A0C(v56, v57, v58);
  sub_1C442FADC();

  sub_1C43FBCF0();
  sub_1C43FD0C0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C45BBE1C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
  v4 = *(v0 + 80);
  v5 = *(v0 + 96);
  v6 = *(v0 + 112);
  v7 = *(v0 + 136);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  v10 = *(v0 + 176);

  return v0;
}

uint64_t sub_1C45BBED8()
{
  sub_1C45BBE1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45BBF30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C45BBF70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C45BBFB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C45BC01C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1C45BC0C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1C45BC108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C45BC174@<X0>(double *a1@<X8>)
{
  sub_1C44F920C();
  v2 = static NSUserDefaults.autonamingMessagesContextMessagesTimeInterval.getter();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F0FC40;
  v4 = *MEMORY[0x1E6964B18];
  *(v3 + 32) = sub_1C4F01138();
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x1E6964440];
  *(v3 + 48) = sub_1C4F01138();
  *(v3 + 56) = v7;
  v8 = *MEMORY[0x1E6963C98];
  *(v3 + 64) = sub_1C4F01138();
  *(v3 + 72) = v9;
  v10 = *MEMORY[0x1E6963E78];
  *(v3 + 80) = sub_1C4F01138();
  *(v3 + 88) = v11;
  v12 = *MEMORY[0x1E6963EA8];
  *(v3 + 96) = sub_1C4F01138();
  *(v3 + 104) = v13;
  v14 = *MEMORY[0x1E6963D18];
  *(v3 + 112) = sub_1C4F01138();
  *(v3 + 120) = v15;
  v16 = *MEMORY[0x1E69649F8];
  *(v3 + 128) = sub_1C4F01138();
  *(v3 + 136) = v17;
  v18 = *MEMORY[0x1E6963EA0];
  *(v3 + 144) = sub_1C4F01138();
  *(v3 + 152) = v19;
  v20 = *MEMORY[0x1E6963CF8];
  *(v3 + 160) = sub_1C4F01138();
  *(v3 + 168) = v21;
  v22 = *MEMORY[0x1E69649E8];
  *(v3 + 176) = sub_1C4F01138();
  *(v3 + 184) = v23;
  v24 = *MEMORY[0x1E6963FC0];
  *(v3 + 192) = sub_1C4F01138();
  *(v3 + 200) = v25;
  v26 = *MEMORY[0x1E6964A30];
  *(v3 + 208) = sub_1C4F01138();
  *(v3 + 216) = v27;
  *(v3 + 224) = 0xD000000000000028;
  *(v3 + 232) = 0x80000001C4F8B1C0;
  *(v3 + 240) = 0xD00000000000001ALL;
  *(v3 + 248) = 0x80000001C4F8B1F0;
  *(v3 + 256) = sub_1C4F01138();
  *(v3 + 264) = v28;
  v29 = *MEMORY[0x1E69645D0];
  *(v3 + 272) = sub_1C4F01138();
  *(v3 + 280) = v30;
  v31 = *MEMORY[0x1E6963F40];
  result = sub_1C4F01138();
  *(v3 + 288) = result;
  *(v3 + 296) = v33;
  *a1 = -2.31584178e77;
  *(a1 + 1) = 0x80000001C4F8B1C0;
  a1[2] = -2.31584178e77;
  *(a1 + 3) = 0x80000001C4F8B1F0;
  a1[4] = -2.31584178e77;
  *(a1 + 5) = 0x80000001C4F8B210;
  a1[6] = -2.31584178e77;
  *(a1 + 7) = 0x80000001C4F8B230;
  a1[8] = v2;
  a1[9] = -2.31584178e77;
  *(a1 + 10) = 0x80000001C4F8B250;
  a1[11] = -2.31584178e77;
  *(a1 + 12) = 0x80000001C4F8B270;
  *(a1 + 13) = v3;
  return result;
}

uint64_t sub_1C45BC3F4(uint64_t a1, unint64_t a2)
{
  v29 = sub_1C4F02C18();
  v5 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = a1;
    v23[1] = v2;
    v11 = 0;
    v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C4F02238();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v26[0] = v10;
          v26[1] = v25;
          v14 = v26 + v11;
          v15 = *(v26 + v11);
          if (*(v26 + v11) < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
LABEL_20:
                v19 = v14[1] & 0x3F | ((v15 & 0x1F) << 6);
                v17 = 2;
                break;
              case 0x1Bu:
LABEL_21:
                v20 = ((v15 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3Fu;
                v17 = 3;
                break;
              case 0x1Cu:
LABEL_22:
                v21 = ((v15 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3Fu;
                v17 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v13 = v24;
          if ((v10 & 0x1000000000000000) == 0)
          {
            v13 = sub_1C4F022F8();
          }

          v14 = (v13 + v11);
          v15 = *(v13 + v11);
          if (*(v13 + v11) < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_20;
              case 0x1Bu:
                goto LABEL_21;
              case 0x1Cu:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v17 = 1;
      }

LABEL_15:
      sub_1C4F02C28();
      v18 = sub_1C4F02C08();
      (*v12)(v8, v29);
      if ((v18 & 1) == 0)
      {
        sub_1C4F01248();
      }

      v11 += v17;
      if (v11 >= v9)
      {

        return v27;
      }
    }
  }

  return 0;
}

uint64_t sub_1C45BC6A4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult + 8))
  {
    v2 = *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult);
    v3 = *(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  result = sub_1C4428DA0();
  if (result)
  {
    v5 = result;
    if (result >= 1)
    {
      v6 = 0;
      v7 = a1;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C6940F90](v6, v7);
        }

        else
        {
          v8 = *(v7 + 8 * v6 + 32);
        }

        v9 = *(v8 + 112);
        if (v9)
        {
          v10 = *(v8 + 104);
          v11 = *(v8 + 80);
          if (*(v8 + 80))
          {
            v12 = *(v8 + 112);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            type metadata accessor for TextMessageData(0);
            v13 = swift_dynamicCastClass();
            if (v13 && (v14 = *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet + 8)) != 0)
            {
              v15 = *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore15TextMessageData_contentSnippet);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v16 = sub_1C45BC3F4(v15, v14);
              v18 = v17;
              v19 = HIBYTE(v17) & 0xF;
              if ((v17 & 0x2000000000000000) == 0)
              {
                v19 = v16 & 0xFFFFFFFFFFFFLL;
              }

              if (v19)
              {
                v20 = v16;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                MEMORY[0x1C6940010](8250, 0xE200000000000000);
                MEMORY[0x1C6940010](v20, v18);

                MEMORY[0x1C6940010](1047411744, 0xE400000000000000);
                MEMORY[0x1C6940010](v10, v9);
              }

              else
              {
              }

              v7 = a1;
            }

            else
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            v11 = *(v8 + 80);
          }

          if (v11 != 1)
          {

            goto LABEL_26;
          }

          sub_1C4F02248();

          sub_1C4431EE4();
          MEMORY[0x1C6940010](v10, v9);
          v7 = a1;
        }

LABEL_26:
        if (v5 == ++v6)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    sub_1C4F02248();
    sub_1C4431EE4();
    v21 = sub_1C43FD024();
    MEMORY[0x1C6940010](v21);

    sub_1C4431EE4();
    MEMORY[0x1C6940010](0, 0xE000000000000000);

    sub_1C4431EE4();
    return 0;
  }

  return result;
}

uint64_t sub_1C45BC9EC(unint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    type metadata accessor for MessageData(0);

    v4 = sub_1C4F024B8();
  }

  else
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02988();
    type metadata accessor for MessageData(0);
    v4 = a1;
  }

  sub_1C49D3640(v4);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = a2;
  sub_1C49D3640(inited);
  sub_1C45BCAE4(&v7);
  return v7;
}

void sub_1C45BCAE4(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1C4836300(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1C45BD238(v4);
  *a1 = v2;
}

void sub_1C45BCB5C(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C4428DA0();
  sub_1C4412C7C();
  while (v1 != v2)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = sub_1C43FD024();
      v3 = MEMORY[0x1C6940F90](v13);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      sub_1C441F3CC();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    if (*(v3 + 80))
    {
    }

    else
    {
      v5 = sub_1C4F02318();
      sub_1C4406648(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
      sub_1C440A5B8();
      sub_1C4F02328();
    }

    ++v2;
  }
}

void sub_1C45BCC2C(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  sub_1C4428DA0();
  sub_1C4412C7C();
  while (1)
  {
    if (v1 == v2)
    {
      v15 = sub_1C4428DA0();
      if (v15)
      {
        v16 = v15;
        sub_1C44CD9C0();
        if (v16 < 0)
        {
          goto LABEL_25;
        }

        v17 = 0;
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v18 = sub_1C43FD024();
            v19 = MEMORY[0x1C6940F90](v18);
          }

          else
          {
            v19 = *(v25 + 8 * v17 + 32);
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v22 = *(v5 + 16);
          if (v22 >= *(v5 + 24) >> 1)
          {
            sub_1C44CD9C0();
          }

          ++v17;
          *(v5 + 16) = v22 + 1;
          v23 = v5 + 16 * v22;
          *(v23 + 32) = v21;
          *(v23 + 40) = v20;
        }

        while (v16 != v17);
      }

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = sub_1C43FD024();
      v3 = MEMORY[0x1C6940F90](v14);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      sub_1C441F3CC();
    }

    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (*(v3 + 80))
    {
    }

    else
    {
      v6 = sub_1C4F02318();
      sub_1C4406648(v6, v7, v8, v9, v10, v11, v12, v13, v24, v25);
      sub_1C440A5B8();
      sub_1C4F02328();
    }

    ++v2;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1C45BCDE8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_captioningResult + 8))
  {
    if (qword_1EDDFECB0 != -1)
    {
LABEL_57:
      sub_1C43FFB88();
    }

    v18 = sub_1C4F00978();
    v19 = sub_1C442B738(v18, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CC8();
    if (!sub_1C43FCEA4(v21))
    {
      goto LABEL_40;
    }

    v22 = sub_1C43FCED0();
    *v22 = 0;
    v23 = "canGeneratePrompt: Image message does not containing a captioning result, conversation isn't eligible for prompt generation";
    goto LABEL_39;
  }

  if (!*(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore16ImageMessageData_personIdentificationResult + 8))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v24 = sub_1C4F00978();
    v19 = sub_1C442B738(v24, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v25 = sub_1C4F01CC8();
    if (!sub_1C43FCEA4(v25))
    {
      goto LABEL_40;
    }

    v22 = sub_1C43FCED0();
    *v22 = 0;
    v23 = "canGeneratePrompt: Image message does not containing a person identification result, conversation isn't eligible for prompt generation";
LABEL_39:
    _os_log_impl(&dword_1C43F8000, v20, v19, v23, v22, 2u);
    MEMORY[0x1C6942830](v22, -1, -1);
LABEL_40:

    return 0;
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_1C4428DA0();
  sub_1C4412C7C();
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = sub_1C43FD024();
      v4 = MEMORY[0x1C6940F90](v14);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      sub_1C441F3CC();
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (*(v4 + 80))
    {
    }

    else
    {
      v6 = sub_1C4F02318();
      sub_1C4406648(v6, v7, v8, v9, v10, v11, v12, v13, v35, v36);
      sub_1C440A5B8();
      sub_1C4F02328();
    }

    ++v3;
  }

  if (sub_1C4428DA0() < 1)
  {

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v26 = sub_1C4F00978();
    v19 = sub_1C442B738(v26, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v27 = sub_1C4F01CC8();
    if (sub_1C43FCEA4(v27))
    {
      v22 = sub_1C43FCED0();
      *v22 = 0;
      v23 = "canGeneratePrompt: Conversation does not contain any messages with text, conversation isn't eligible for prompt generation";
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  sub_1C4428DA0();
  sub_1C4412C7C();
  while (1)
  {
    if (v2 == v3)
    {

      return 1;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C6940F90](v3, v36);
    }

    else
    {
      if (v3 >= *(v36 + 16))
      {
        goto LABEL_56;
      }

      v15 = *(v36 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_55;
    }

    v16 = *(v15 + 112);
    if (!v16)
    {
      break;
    }

    if ((v16 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v16) & 0xF;
    }

    else
    {
      v17 = *(v15 + 104) & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {

      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88();
      }

      v34 = sub_1C4F00978();
      sub_1C442B738(v34, qword_1EDDFECB8);
      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CC8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_1C43FCED0();
        *v32 = 0;
        v33 = "canGeneratePrompt: Observed a context message with an empty CNContactSenderFirstName, conversation isn't eligible for prompt generation";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    ++v3;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v29 = sub_1C4F00978();
  sub_1C442B738(v29, qword_1EDDFECB8);
  v30 = sub_1C4F00968();
  v31 = sub_1C4F01CC8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_1C43FCED0();
    *v32 = 0;
    v33 = "canGeneratePrompt: Observed a context message without a CNContactSenderFirstName, conversation isn't eligible for prompt generation";
LABEL_51:
    _os_log_impl(&dword_1C43F8000, v30, v31, v33, v32, 2u);
    MEMORY[0x1C6942830](v32, -1, -1);
  }

LABEL_52:

  return 0;
}

void sub_1C45BD238(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C4F02828();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C49B7534(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C45BD404(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C45BD318(0, v3, 1, a1);
  }
}

uint64_t sub_1C45BD318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v15 = v6;
      do
      {
        v10 = *v6;

        v11 = sub_1C4EF9C18();

        if ((v11 & 1) == 0)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v12 = *v6;
        *v6 = v6[1];
        v6[1] = v12;
        --v6;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v15 + 1;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C45BD404(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v5 = v100;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v85 = (v6 + 16);
      v86 = *(v6 + 16);
      while (v86 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v87 = v6;
        v6 += 16 * v86;
        v88 = *v6;
        v89 = &v85[2 * v86];
        v90 = *(v89 + 1);
        sub_1C45BDA38((*a3 + 8 * *v6), (*a3 + 8 * *v89), (*a3 + 8 * v90), v98);
        if (v5)
        {
          break;
        }

        if (v90 < v88)
        {
          goto LABEL_117;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_118;
        }

        *v6 = v88;
        *(v6 + 8) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_119;
        }

        v86 = *v85 - 1;
        sub_1C461950C(v89 + 16, v91, v89);
        *v85 = v86;
        v6 = v87;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v6 = sub_1C46194F4(v6);
    goto LABEL_93;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_22;
    }

    v93 = v6;
    v8 = *(*a3 + 8 * v5);
    v9 = v7;
    v10 = (*a3 + 8 * v7);
    v11 = 8 * v9;
    v13 = *v10;
    v12 = v10 + 2;

    v6 = sub_1C4EF9C18();

    v95 = v9;
    v14 = v9 + 2;
    do
    {
      v15 = v14;
      if (++v5 >= v4)
      {
        v5 = v4;
        if (v6)
        {
          goto LABEL_8;
        }

LABEL_20:
        v6 = v93;
        v7 = v95;
        goto LABEL_22;
      }

      v17 = *(v12 - 1);
      v16 = *v12;

      v18 = sub_1C4EF9C18() & 1;

      ++v12;
      v14 = v15 + 1;
    }

    while ((v6 & 1) == v18);
    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v7 = v95;
    if (v5 < v95)
    {
      goto LABEL_123;
    }

    if (v95 >= v5)
    {
      v6 = v93;
    }

    else
    {
      v19 = v4 >= v15 ? v15 : v4;
      v20 = 8 * v19 - 8;
      v21 = v5;
      v22 = v95;
      v6 = v93;
      do
      {
        if (v22 != --v21)
        {
          v23 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v24 = *(v23 + v11);
          *(v23 + v11) = *(v23 + v20);
          *(v23 + v20) = v24;
        }

        ++v22;
        v20 -= 8;
        v11 += 8;
      }

      while (v22 < v21);
    }

LABEL_22:
    v25 = a3[1];
    if (v5 < v25)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_122;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v5 < v7)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = *(v6 + 16);
      sub_1C458A358();
      v6 = v83;
    }

    v37 = *(v6 + 16);
    v38 = v37 + 1;
    if (v37 >= *(v6 + 24) >> 1)
    {
      sub_1C458A358();
      v6 = v84;
    }

    *(v6 + 16) = v38;
    v39 = v6 + 32;
    v40 = (v6 + 32 + 16 * v37);
    *v40 = v7;
    v40[1] = v5;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        v42 = (v39 + 16 * (v38 - 1));
        v43 = (v6 + 16 * v38);
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v44 = *(v6 + 32);
          v45 = *(v6 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_58:
          if (v47)
          {
            goto LABEL_108;
          }

          v59 = *v43;
          v58 = v43[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_111;
          }

          v63 = v42[1];
          v64 = v63 - *v42;
          if (__OFSUB__(v63, *v42))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v61, v64))
          {
            goto LABEL_116;
          }

          if (v61 + v64 >= v46)
          {
            if (v46 < v64)
            {
              v41 = v38 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v38 < 2)
        {
          goto LABEL_110;
        }

        v66 = *v43;
        v65 = v43[1];
        v54 = __OFSUB__(v65, v66);
        v61 = v65 - v66;
        v62 = v54;
LABEL_73:
        if (v62)
        {
          goto LABEL_113;
        }

        v68 = *v42;
        v67 = v42[1];
        v54 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v54)
        {
          goto LABEL_115;
        }

        if (v69 < v61)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v41 - 1 >= v38)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v73 = (v39 + 16 * (v41 - 1));
        v74 = *v73;
        v75 = v41;
        v76 = v39 + 16 * v41;
        v77 = *(v76 + 8);
        sub_1C45BDA38((*a3 + 8 * *v73), (*a3 + 8 * *v76), (*a3 + 8 * v77), v98);
        if (v100)
        {
          goto LABEL_101;
        }

        if (v77 < v74)
        {
          goto LABEL_103;
        }

        v78 = v5;
        v5 = v39;
        v79 = v6;
        v6 = *(v6 + 16);
        if (v75 > v6)
        {
          goto LABEL_104;
        }

        *v73 = v74;
        v73[1] = v77;
        if (v75 >= v6)
        {
          goto LABEL_105;
        }

        v80 = v75;
        v38 = v6 - 1;
        sub_1C461950C((v76 + 16), v6 - 1 - v80, v76);
        *(v79 + 16) = v6 - 1;
        v81 = v6 > 2;
        v6 = v79;
        v39 = v5;
        v5 = v78;
        if (!v81)
        {
          goto LABEL_87;
        }
      }

      v48 = v39 + 16 * v38;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = v43[1];
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = v42[1];
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_91;
    }
  }

  v26 = (v7 + a4);
  if (__OFADD__(v7, a4))
  {
    goto LABEL_124;
  }

  if (v26 >= v25)
  {
    v26 = a3[1];
  }

  if (v26 < v7)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v5 == v26)
  {
    goto LABEL_38;
  }

  v94 = v6;
  v96 = v7;
  v27 = *a3;
  v28 = *a3 + 8 * v5 - 8;
  v29 = v7 - v5;
  v98 = v26;
LABEL_31:
  v30 = *(v27 + 8 * v5);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    v33 = *v32;

    v34 = sub_1C4EF9C18();

    if ((v34 & 1) == 0)
    {
LABEL_36:
      ++v5;
      v28 += 8;
      --v29;
      if (v5 == v98)
      {
        v5 = v98;
        v6 = v94;
        v7 = v96;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v27)
    {
      break;
    }

    v35 = *v32;
    *v32 = v32[1];
    v32[1] = v35;
    --v32;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_36;
    }
  }

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
}

uint64_t sub_1C45BDA38(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C4474DF4(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;

      v15 = sub_1C4EF9C18();

      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v16 = v4;
    v17 = v7 == v4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  sub_1C4474DF4(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v30 = v4;
LABEL_15:
  v18 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v20 = v7;
    v21 = *(v10 - 1);
    v22 = v18;
    v23 = *v18;

    v24 = sub_1C4EF9C18();

    v25 = v5 + 1;
    if (v24)
    {
      v17 = v25 == v6;
      v26 = v22;
      v6 = v22;
      v7 = v20;
      v4 = v30;
      if (!v17)
      {
        *v5 = *v26;
        v6 = v26;
      }

      goto LABEL_15;
    }

    if (v10 != v25)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v18 = v22;
    v7 = v20;
    v4 = v30;
  }

LABEL_28:
  v27 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, 8 * v27);
  }

  return 1;
}

uint64_t sub_1C45BDC5C(uint64_t a1, unint64_t a2)
{
  v29 = sub_1C4F02C18();
  v5 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = a1;
    v23[1] = v2;
    v11 = 0;
    v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C4F02238();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v26[0] = v10;
          v26[1] = v25;
          v14 = v26 + v11;
          v15 = *(v26 + v11);
          if (*(v26 + v11) < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
LABEL_20:
                v19 = v14[1] & 0x3F | ((v15 & 0x1F) << 6);
                v17 = 2;
                break;
              case 0x1Bu:
LABEL_21:
                v20 = ((v15 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3Fu;
                v17 = 3;
                break;
              case 0x1Cu:
LABEL_22:
                v21 = ((v15 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3Fu;
                v17 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v13 = v24;
          if ((v10 & 0x1000000000000000) == 0)
          {
            v13 = sub_1C4F022F8();
          }

          v14 = (v13 + v11);
          v15 = *(v13 + v11);
          if (*(v13 + v11) < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_20;
              case 0x1Bu:
                goto LABEL_21;
              case 0x1Cu:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v17 = 1;
      }

LABEL_15:
      sub_1C4F02C28();
      v18 = sub_1C4F02C08();
      (*v12)(v8, v29);
      if ((v18 & 1) == 0)
      {
        sub_1C4F01248();
      }

      v11 += v17;
      if (v11 >= v9)
      {

        return v27;
      }
    }
  }

  return 0;
}

uint64_t sub_1C45BDF0C()
{
  MEMORY[0x1C6940010](*v0, *(v0 + 8));
  sub_1C442C3D8();
  sub_1C4F02248();

  MEMORY[0x1C6940010](*(v0 + 16), *(v0 + 24));
  sub_1C442C3D8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F8B4D0);

  MEMORY[0x1C6940010](0x6E656469666E6F63, 0xEC000000203A6563);
  v1 = *(v0 + 32);
  sub_1C4F01A98();
  sub_1C442C3D8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0, 0xE000000000000000);

  return 0x44496E6F73726570;
}

uint64_t sub_1C45BE078(uint64_t a1, uint64_t a2)
{
  sub_1C4F02248();

  strcpy(v5, "imageCaption: ");
  MEMORY[0x1C6940010](a1, a2);
  sub_1C442C3D8();
  MEMORY[0x1C6940010](0x6F63536567616D69, 0xEC000000203A6572);
  sub_1C4F01A98();
  sub_1C442C3D8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0, 0xE000000000000000);

  return v5[0];
}

void sub_1C45BE1A0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = 0;
  v7[7] = 0;
  v7[2] = a4;
  v7[3] = a5;
  v18 = *a3;
  v13 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v14 = v18;
    v17 = v18;
    MEMORY[0x1EEE9AC00](a1);
    v15[2] = &v17;
    sub_1C45C0218(&v18, v16);
    if (!sub_1C44CE068(sub_1C44CE790, v15, &unk_1F43D2400))
    {
      v7[4] = v14;
      v7[5] = v13;
      v7[12] = 0x3FECCCCCCCCCCCCDLL;
      goto LABEL_6;
    }

    sub_1C4423A0C(&v18, &qword_1EC0C2BD0, &qword_1C4F0FF50);
  }

  v7[12] = 0;
  v7[4] = 0;
  v7[5] = 0;
LABEL_6:
  v7[8] = 0;
  v7[9] = 0;
  v7[10] = a1;
  v7[11] = a2;
  v7[13] = a6;
  v7[14] = a7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C45BE2F0(a3);
  sub_1C45C01C4(a3);

  sub_1C43FE9F0();
}

void sub_1C45BE2F0(uint64_t a1)
{
  v122 = sub_1C4EF9488();
  v3 = *(v122 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[11];
  v7 = v6[14];
  if (!v7 || (v8 = *(a1 + 56)) == 0 || !v6[9])
  {
    if (qword_1EDDFECB0 == -1)
    {
LABEL_11:
      v26 = sub_1C4F00978();
      sub_1C43FCEE8(v26, qword_1EDDFECB8);
      v131 = sub_1C4F00968();
      v27 = sub_1C4F01CC8();
      if (os_log_type_enabled(v131, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1C43F8000, v131, v27, "Unable to run deriveInferredContactIdentifier due to missing data", v28, 2u);
        sub_1C43FBE2C();
      }

      sub_1C43FE9F0();

      return;
    }

LABEL_100:
    sub_1C44064A8();
    swift_once();
    goto LABEL_11;
  }

  v126 = v6[9];
  v119 = v1;
  v130 = v6;
  v9 = v6[13];
  v127 = a1;
  v10 = *(a1 + 48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v132 = sub_1C45BDC5C(v9, v7);
  v133 = v11;
  v12 = v121;
  sub_1C4EF9418();
  v13 = sub_1C4415EA8();
  v14 = sub_1C4F01FF8();
  v128 = v15;
  v129 = v14;
  v16 = *(v3 + 8);
  v17 = v122;
  v16(v12, v122);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v118 = v10;
  v120 = v8;
  v18 = sub_1C45BDC5C(v10, v8);
  v131 = 0;
  v132 = v18;
  v133 = v19;
  sub_1C4EF9418();
  v116 = v13;
  v20 = v128;
  v21 = sub_1C4F01FF8();
  v23 = v22;
  v117 = v3 + 8;
  v115 = v16;
  v16(v12, v17);

  if (v129 == v21 && v20 == v23)
  {

    goto LABEL_17;
  }

  v25 = sub_1C4F02938();

  if (v25)
  {
LABEL_17:
    v17 = v119;
    v31 = v130;
    if (v126[2])
    {
      v33 = v126[4];
      v32 = v126[5];
      v34 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v35 = v127;
    v36 = v17[7];
    v17[6] = v33;
    v17[7] = v34;

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v37 = sub_1C4F00978();
    sub_1C43FCEE8(v37, qword_1EDDFECB8);

    sub_1C45C0168(v35, &v132);
    v38 = sub_1C4F00968();
    v39 = sub_1C4F01CC8();
    sub_1C45C01C4(v35);

    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_1C43FFD34();
      v17 = sub_1C440D048();
      v132 = v17;
      *v40 = 136315650;
      if (v31[14])
      {
        v41 = v31[13];
        v42 = v31[14];
      }

      else
      {
        v42 = 0x80000001C4F8B520;
        v41 = 0xD00000000000001BLL;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v43 = sub_1C441D828(v41, v42, &v132);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = sub_1C4412C88();
      v46 = sub_1C441D828(v44, v120, v45);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2080;
      v47 = v31[9];
      if (v47 && v47[2])
      {
        v49 = v47[4];
        v48 = v47[5];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v49 = 0xD000000000000021;
        v48 = 0x80000001C4F8B4F0;
      }

      v50 = sub_1C441D828(v49, v48, &v132);

      *(v40 + 24) = v50;
      _os_log_impl(&dword_1C43F8000, v38, v39, "[Image Message] Found a match between the output of the LLM and the sender first name, self.imageMessage.CNContactSenderFirstName: %s \n modelInferenceOutput.participantName: %s \n  imageMessage.senderContactIdentifiers?.first %s ", v40, 0x20u);
      swift_arrayDestroy();
      sub_1C43FFD4C();
      sub_1C43FBE2C();

      sub_1C43FD0DC();
    }

    else
    {
    }

    goto LABEL_32;
  }

  sub_1C43FD0DC();
LABEL_32:
  sub_1C45BCB5C(v17[10]);
  v125 = v51;
  v124 = sub_1C4428DA0();
  if (!v124)
  {
LABEL_82:

    if (v17[7])
    {
      v17[12] = 0x3FECCCCCCCCCCCCDLL;
    }

LABEL_84:
    sub_1C43FE9F0();
    return;
  }

  v53 = 0;
  v123 = v125 & 0xC000000000000001;
  v113 = v125 & 0xFFFFFFFFFFFFFF8;
  v111 = 0x80000001C4F8B4F0;
  *&v52 = 136315650;
  v112 = v52;
  while (1)
  {
    if (v123)
    {
      v54 = MEMORY[0x1C6940F90](v53, v125);
    }

    else
    {
      if (v53 >= *(v113 + 16))
      {
        goto LABEL_99;
      }

      v55 = *(v125 + 8 * v53 + 32);
    }

    v56 = (v53 + 1);
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v57 = *(v54 + 112);
    if (v57)
    {
      break;
    }

LABEL_69:
    ++v53;
    if (v56 == v124)
    {
      goto LABEL_82;
    }
  }

  v126 = (v53 + 1);
  v127 = v53;
  v130 = v54;
  v58 = *(v54 + 104);
  swift_bridgeObjectRetain_n();
  v17 = v120;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v114 = v58;
  v129 = v57;
  v59 = v131;
  v132 = sub_1C45BDC5C(v58, v57);
  v133 = v60;
  v61 = v121;
  sub_1C4EF9418();
  v128 = sub_1C4F01FF8();
  v63 = v62;
  v64 = v122;
  v65 = v115;
  v115(v61, v122);

  v66 = sub_1C45BDC5C(v118, v17);
  v131 = v59;
  v132 = v66;
  v133 = v67;
  sub_1C4EF9418();
  v68 = sub_1C4F01FF8();
  v70 = v69;
  v65(v61, v64);

  if (v128 == v68 && v63 == v70)
  {

    sub_1C43FD0DC();
  }

  else
  {
    v72 = sub_1C4F02938();

    sub_1C43FD0DC();
    if ((v72 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v73 = v129;
  v74 = v130[9];
  if (!v74)
  {
    goto LABEL_65;
  }

  if (!v17[7])
  {
    v83 = v74[2];
    if (v83)
    {
      v85 = v74[4];
      v84 = v74[5];
      v86 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v85 = 0;
      v86 = 0;
    }

    v17[6] = v85;
    v17[7] = v86;
    v87 = qword_1EDDFECB0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v87 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v88 = sub_1C4F00978();
    sub_1C43FCEE8(v88, qword_1EDDFECB8);
    v89 = v120;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v90 = sub_1C4F00968();
    v91 = sub_1C4F01CC8();

    if (!os_log_type_enabled(v90, v91))
    {

      goto LABEL_67;
    }

    v77 = sub_1C43FFD34();
    v132 = sub_1C440D048();
    *v77 = v112;
    v17 = sub_1C441D828(v114, v73, &v132);

    *(v77 + 4) = v17;
    *(v77 + 12) = 2080;
    v92 = sub_1C4412C88();
    *(v77 + 14) = sub_1C441D828(v92, v89, v93);
    *(v77 + 22) = 2080;
    if (v83)
    {
      if (!v74[2])
      {
        __break(1u);
        goto LABEL_102;
      }

      v95 = v74[4];
      v94 = v74[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v95 = 0xD000000000000021;
      v94 = v111;
    }

    v53 = v127;

    v17 = sub_1C441D828(v95, v94, &v132);

    *(v77 + 24) = v17;
    _os_log_impl(&dword_1C43F8000, v90, v91, "[Context Message] Found a match between the output of the LLM and the sender first name, contextMessage.CNContactSenderFirstName: %s \n modelInferenceOutput.participantName: %s \n  contextMessage.senderContactIdentifiers?.first %s ", v77, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    sub_1C43FD0DC();
LABEL_68:
    v56 = v126;
    goto LABEL_69;
  }

  v75 = v130[9];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v76 = v17[7];
  v77 = v74[2];
  if (!v77)
  {
    if (v76)
    {
      goto LABEL_86;
    }

LABEL_65:

    goto LABEL_66;
  }

  v78 = v17[6];
  v80 = v74[4];
  v79 = v74[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v76)
  {
    if (!v79)
    {
      goto LABEL_86;
    }

    if (v78 != v80 || v76 != v79)
    {
      v82 = sub_1C4F02938();

      if ((v82 & 1) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_66:

LABEL_67:
    v53 = v127;
    goto LABEL_68;
  }

  if (!v79)
  {
    goto LABEL_65;
  }

LABEL_86:

  v96 = v17[7];
  v17[6] = 0;
  v17[7] = 0;

  if (qword_1EDDFECB0 != -1)
  {
LABEL_102:
    sub_1C44064A8();
    swift_once();
  }

  v97 = sub_1C4F00978();
  sub_1C43FCEE8(v97, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v98 = sub_1C4F00968();
  v99 = sub_1C4F01CC8();

  if (!os_log_type_enabled(v98, v99))
  {

    goto LABEL_97;
  }

  v100 = sub_1C43FFD34();
  v132 = sub_1C440D048();
  *v100 = v112;
  v101 = v17[7];
  if (v101)
  {
    v102 = v17[6];
    v103 = v101;
  }

  else
  {
    v102 = 0;
    v103 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v104 = sub_1C441D828(v102, v103, &v132);

  *(v100 + 4) = v104;
  *(v100 + 12) = 2080;
  if (!v77)
  {
    v106 = 0;
    v105 = 0xE000000000000000;
LABEL_96:

    v107 = sub_1C441D828(v106, v105, &v132);

    *(v100 + 14) = v107;
    *(v100 + 22) = 2080;
    v108 = sub_1C4412C88();
    *(v100 + 24) = sub_1C441D828(v108, v120, v109);
    _os_log_impl(&dword_1C43F8000, v98, v99, "[Image+Context Message] Found conflicting matches between two contacts %s and %s for the participant name inferred %s: returning nil as inferredContactIdentifier instead", v100, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
LABEL_97:

    goto LABEL_84;
  }

  if (v74[2])
  {
    v106 = v74[4];
    v105 = v74[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_96;
  }

  __break(1u);
}