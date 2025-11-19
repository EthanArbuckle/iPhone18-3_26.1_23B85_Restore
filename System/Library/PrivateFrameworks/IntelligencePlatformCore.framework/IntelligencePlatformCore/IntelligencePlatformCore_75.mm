void sub_1C4ABAB38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v33 = v3;
  v18 = *(v3 + 16);
  v19 = sub_1C4EF9CD8();
  v20 = *(*(v19 - 8) + 16);
  v20(v17, a2, v19);
  sub_1C440BAA8(v17, 0, 1, v19);
  v21 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20(v15, a2 + *(v21 + 36), v19);
  sub_1C440BAA8(v15, 0, 1, v19);
  v22 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v23 = sub_1C457A86C(v17, v15, 0, 0, 0);
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
    sub_1C4401CBC(&qword_1EC0C2D60, &qword_1EC0B8600, &unk_1C4F0D4E0);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v29 = v31;
    sub_1C4F02848();

    (*(v32 + 32))(v37, v29, v35);
  }
}

uint64_t sub_1C4ABAED8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v5 = *a2;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1C4ABAF00, 0, 0);
}

uint64_t sub_1C4ABAF00()
{
  v1 = [*(v0 + 40) eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    [*(v0 + 40) timestamp];
    sub_1C4EF9AC8();
    sub_1C4ABA7A4(v2);
    v6 = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = sub_1C4ABB430(v6, v3);

    sub_1C465CF34(v7);
    v9 = v8;

    v10 = type metadata accessor for FeatureProviderChange(0);
    v11 = 0;
    *(v4 + *(v10 + 20)) = 2;
    *(v4 + *(v10 + 24)) = v9;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Unable to parse eventBody from read event in physical social featurizer", v15, 2u);
      sub_1C43FE9D4();
    }

    v10 = type metadata accessor for FeatureProviderChange(0);
    v11 = 1;
  }

  sub_1C440BAA8(*(v0 + 16), v11, 1, v10);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1C4ABB214()
{
  v1 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v2 = [v1 PhysicalSocial];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4ABB344(uint64_t a1)
{
  *(a1 + 8) = sub_1C4ABB3AC(&qword_1EC0C2D40);
  result = sub_1C4ABB3AC(&qword_1EC0C2D48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4ABB3AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhysicalSocialSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4ABB3EC(uint64_t a1)
{
  result = sub_1C4ABB3AC(&qword_1EC0C2D48);
  *(a1 + 16) = result;
  return result;
}

void *sub_1C4ABB430(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4ABB5F4(void *a1)
{
  v1 = [a1 cnContactID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4ABB658(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4ABAED8(a1, a2, v7, v6);
}

uint64_t sub_1C4ABB72C()
{
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    v1 = (*(off_1EDDFF3D0 + 1))();
    v3 = v2;
    v4 = *(v2 + 8);
    v15 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_1C4ABB9A0;
    v7 = v0[5];

    return v15(v7, v1, v3);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C43F8000, v10, v11, "InternalPlugin: Pipeline: loadPhasePlugins: failed to load phases", v12, 2u);
      MEMORY[0x1C6942830](v12, -1, -1);
    }

    v13 = v0[1];
    v14 = MEMORY[0x1E69E7CC0];

    return v13(v14);
  }
}

uint64_t sub_1C4ABB9A0(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C4ABBAA0, 0, 0);
}

uint64_t sub_1C4ABBAA0()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v1 = *(v0 + 56);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_1C43F8000, v3, v4, "InternalPlugin: Pipeline: loadPhasePlugins: loaded %ld phases", v7, 0xCu);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 56);
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1C4ABBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v21 = a4;
  v7 = a1 + 64;
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
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(a1 + 56) + 8 * v15);
      v20[0] = *v16;
      v20[1] = v17;
      v20[2] = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4ABC734(v20, a2, a3, v21);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Pipeline.StatusStore.init(config:pipelineType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1C4409954(a1, a3);
  result = type metadata accessor for Pipeline.StatusStore();
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1C4ABBDAC()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1C4ABBE20@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = sub_1C446ABD0(a1);
  if (!v3)
  {
    sub_1C4B6A274(a2, a3);
  }

  return result;
}

uint64_t sub_1C4ABBEB0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  LOBYTE(a2) = *a2;
  sub_1C44098F0(a3, v10 - v9);
  *(v11 + *(v7 + 28)) = a2;
  v14 = v11;
  v15 = a1;
  v16 = a2;
  sub_1C4D3D104(sub_1C4ABCF1C, v13, &unk_1F43DBA58);
  return sub_1C47CE078(v11);
}

uint64_t sub_1C4ABBF8C(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a1;
  v8 = sub_1C4AD27B0();
  v13[2] = a2;
  v14 = v7;
  v15 = 0;
  sub_1C47240B4(sub_1C4ABCF3C, v13, v8);

  if (*(sub_1C4BA0370() + 16))
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    if (v7)
    {
      v9 = 0x73756F6976657250;
      v10 = 0xEA0000000000203ALL;
    }

    else
    {
      v9 = 0x3A746E6572727543;
      v10 = 0xE900000000000020;
    }

    MEMORY[0x1C6940010](v9, v10);
    sub_1C448D934(a4);
    v11 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *a3;
    sub_1C46627EC();
    *a3 = v16;
  }
}

void sub_1C4ABC0D4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  LOBYTE(a2) = *a2;
  sub_1C44098F0(a3, v10 - v9);
  *(v11 + *(v7 + 28)) = a2;
  v12 = sub_1C4407898();
  sub_1C4ABC1BC(v12, v13, v14, v15);
  if (v3)
  {

    __break(1u);
  }

  else
  {
    v16 = sub_1C4407898();
    sub_1C4ABC1BC(v16, v17, v18, v19);
    sub_1C47CE078(v11);
  }
}

void sub_1C4ABC1BC(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a1;
  if (qword_1EDDF7B60 != -1)
  {
    swift_once();
  }

  v32[0] = xmmword_1EDE2D960;
  v32[1] = *algn_1EDE2D970;
  v33 = qword_1EDE2D980;
  v8 = sub_1C4AD0BA8(v32, v7, 0);
  if (!*(v8 + 16))
  {
    goto LABEL_11;
  }

  if (qword_1EDDF7AC0 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(v7);
  if (v4)
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = v4;
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v4;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Encountered an error while fetch phase status per phase: %@", v13, 0xCu);
      sub_1C45B4B90(v14);
      MEMORY[0x1C6942830](v14, -1, -1);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    else
    {
    }

    return;
  }

  v24 = sub_1C446B0A0();
  v26 = v25;

  if (v26)
  {
    v34 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4ABBBE0(v8, v24, v26, &v34);

    if (v7)
    {
      v27 = 0x73756F6976657250;
      v28 = 0xEA0000000000203ALL;
    }

    else
    {
      v27 = 0x3A746E6572727543;
      v28 = 0xE900000000000020;
    }

    MEMORY[0x1C6940010](v27, v28);
    sub_1C448D934(a3);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = *a4;
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *a4;
    sub_1C4662814();
    *a4 = v31;

LABEL_11:

    return;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDDFECB8);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CD8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 67109378;
    *(v20 + 4) = v7;
    *(v20 + 8) = 2080;
    sub_1C4F02248();

    v22 = 0xE700000000000000;
    v23 = 0x6E776F6E6B6E75;
    switch(a3)
    {
      case 1:
        v22 = 0xE400000000000000;
        v23 = 1819047270;
        break;
      case 2:
        v22 = 0xE500000000000000;
        v23 = 0x61746C6564;
        break;
      case 3:
        v22 = 0xEA0000000000676ELL;
        v23 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v23, v22);

    MEMORY[0x1C6940010](62, 0xE100000000000000);
    v30 = sub_1C441D828(0x6E696C657069503CLL, 0xEF203A6570795465, &v34);

    *(v20 + 10) = v30;
    _os_log_impl(&dword_1C43F8000, v18, v19, "Session id unavailable for %{BOOL}d %s ", v20, 0x12u);
    sub_1C440962C(v21);
    MEMORY[0x1C6942830](v21, -1, -1);
    MEMORY[0x1C6942830](v20, -1, -1);
  }
}

void sub_1C4ABC734(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v27 = a1[1];
  v28 = *a1;
  v4 = a1[2];
  sub_1C456902C(&qword_1EC0B86A8, &qword_1C4F16C10);
  v5 = sub_1C4F02538();
  v6 = v5;
  v7 = 0;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;
  v30 = v5 + 64;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v7 << 6);
      v16 = (*(v4 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v4 + 56) + 8 * v15);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01A28();
      *(v30 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v6[6] + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      v21 = (v6[7] + 16 * v15);
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      v22 = v6[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v6[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44E737C();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44E737C();
        sub_1C4589378();
        v25 = *(*a4 + 16);
        sub_1C4589F10();
        v26 = *a4;
        *(v26 + 16) = v25 + 1;
        *(v26 + 8 * v25 + 32) = v6;
        return;
      }

      v14 = *(v4 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C4ABC99C@<X0>(void *a1@<X0>, int a2@<W2>, char a3@<W3>, uint64_t *a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_1C4409678(a1, v7);
  result = sub_1C4ABCA10(v9, a2, a3, v7, v8);
  *a4 = result;
  return result;
}

uint64_t sub_1C4ABCA10(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_1C4F01F48();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v26);
  v13 = &v25 - v12;
  v25 = *(AssociatedTypeWitness - 8);
  v14 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v25 - v15;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = (*(a5 + 32))(a4, a5);
  *(inited + 40) = v18;
  v28 = inited;
  if (a3)
  {
    v19 = (*(a5 + 40))(a4, a5);
    sub_1C449ADBC(v19);
  }

  sub_1C4ABBE20(v27 & 1, 0, v13);
  if (sub_1C44157D4(v13, 1, AssociatedTypeWitness) == 1)
  {

    (*(v9 + 8))(v13, v26);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = v25;
    v23 = (*(v25 + 32))(v16, v13, AssociatedTypeWitness);
    v24 = v28;
    MEMORY[0x1EEE9AC00](v23);
    *(&v25 - 4) = a4;
    *(&v25 - 3) = a5;
    *(&v25 - 2) = v16;
    v20 = sub_1C45DB55C(sub_1C4ABCEF8, (&v25 - 6), v24);

    (*(v22 + 8))(v16, AssociatedTypeWitness);
  }

  return v20;
}

uint64_t sub_1C4ABCD28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = *a1;
  v9 = a1[1];
  (*(v11 + 16))(&v17 - v8, a2, AssociatedTypeWitness);
  if (swift_dynamicCast())
  {
    v12 = v17;
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    *a3 = v10;
    a3[1] = v9;
    switch(v12)
    {
      case 1:
        v13 = 0xE400000000000000;
        v14 = 1819047270;
        break;
      case 2:
        v13 = 0xE500000000000000;
        v14 = 0x61746C6564;
        break;
      case 3:
        v13 = 0xEA0000000000676ELL;
        v14 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    a3[2] = v14;
    a3[3] = v13;
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    *a3 = v10;
    a3[1] = v9;
    v17 = 0;
    v18 = 0xE000000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = sub_1C4F028E8();
    v16 = v18;
    a3[2] = v17;
    a3[3] = v16;
  }

  return result;
}

uint64_t sub_1C4ABCEF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1C4ABCD28(a1, v2[4], a2);
}

uint64_t sub_1C4ABCF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = sub_1C456902C(&qword_1EC0C1A20, &unk_1C4F4E130);
  v6 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v8 = (&v20 - v7);
  v22 = a1;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(a2 + 48);
    v19 = sub_1C4EFD548();
    (*(*(v19 - 8) + 16))(v8, v18 + *(*(v19 - 8) + 72) * v17, v19);
    *(v8 + *(v20 + 48)) = *(*(a2 + 56) + 8 * v17);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A2F810(&v22, v8, v21);
    result = sub_1C446F170(v8, &qword_1EC0C1A20, &unk_1C4F4E130);
    if (v3)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v22;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Pipeline.sharedPipeline(for:)()
{
  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  return sub_1C4468E90();
}

uint64_t Pipeline.runAppleMusicDelta(reason:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABD1C8);
}

uint64_t sub_1C4ABD1C8()
{
  sub_1C43FBCD4();
  if (qword_1EDDFD268 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Source();
  sub_1C442B738(v0, &qword_1EDDFD270);
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C441BC24(v2);

  return sub_1C4ACB9F0();
}

uint64_t Pipeline.runWalletOrdersDelta(reason:source:)()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);

  return sub_1C4ACB9F0();
}

uint64_t Pipeline.runCNContactDelta(reason:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABD340);
}

uint64_t sub_1C4ABD340()
{
  sub_1C43FBCD4();
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Source();
  sub_1C442B738(v0, &unk_1EDDFD088);
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C441BC24(v2);

  return sub_1C4ACB9F0();
}

uint64_t Pipeline.runEntityTaggingDelta(reason:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABD420);
}

uint64_t sub_1C4ABD420()
{
  sub_1C43FBCD4();
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Source();
  sub_1C442B738(v0, &qword_1EDDFD180);
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C441BC24(v2);

  return sub_1C4ACB9F0();
}

void sub_1C4ABD590()
{
  sub_1C43FBD3C();
  v85 = v1;
  v86 = v2;
  v87 = v3;
  v88 = v0;
  v84 = v4;
  v5 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v76 - v9;
  v10 = sub_1C4EFDE88();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v79 = &v76 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v76 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v76 - v26;
  v27 = sub_1C4EFDE98();
  v28 = sub_1C43FCDF8(v27);
  v81 = v29;
  v82 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v89 = v33 - v32;
  v34 = MEMORY[0x1E69E7CC8];
  v93 = MEMORY[0x1E69E7CC8];
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v35 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v35);
  v37 = *(v36 + 72);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v78 = v40;
  v41 = *MEMORY[0x1E69A95C0];
  v42 = *(v13 + 104);
  sub_1C43FC448();
  v42();
  v76 = v25;
  sub_1C43FC448();
  v42();
  v43 = v22;
  sub_1C43FC448();
  v42();
  v44 = v79;
  sub_1C43FC448();
  v42();
  v45 = v80;
  sub_1C43FC448();
  v42();
  v74 = v45;
  v75 = 0;
  v46 = v77;
  sub_1C4EFDCD8();

  v47 = *(v13 + 8);
  v48 = sub_1C43FBC98();
  v47(v48);
  (v47)(v44, v10);
  (v47)(v43, v10);
  (v47)(v76, v10);
  (v47)(v46, v10);
  v49 = sub_1C4EFD678();
  v50 = v83;
  sub_1C440BAA8(v83, 1, 1, v49);
  v90[2] = &v93;
  v51 = v89;
  (v87)(v89, v50, v84, v90);
  sub_1C446F170(v50, &unk_1EC0C07E0, &unk_1C4F168F0);
  (*(v81 + 8))(v51, v82);
  v92 = v34;
  v52 = v93 + 64;
  v53 = 1 << *(v93 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v93 + 64);
  v56 = (v53 + 63) >> 6;
  v87 = v93;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v57 = 0;
  v83 = v56;
  v84 = v52;
  if (v55)
  {
LABEL_8:
    while (1)
    {
      v59 = __clz(__rbit64(v55)) | (v57 << 6);
      v60 = (*(v87 + 48) + 16 * v59);
      v62 = *v60;
      v61 = v60[1];
      v63 = *(*(v87 + 56) + 8 * v59);
      v89 = *(v63 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v91 = v34;
      v64 = sub_1C445FAA8(v62, v61);
      if (__OFADD__(v34[2], (v65 & 1) == 0))
      {
        break;
      }

      v66 = v64;
      v67 = v65;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      v68 = sub_1C4F02458();
      if (v68)
      {
        v68 = sub_1C445FAA8(v62, v61);
        if ((v67 & 1) != (v69 & 1))
        {
          goto LABEL_22;
        }

        v66 = v68;
      }

      v34 = v91;
      if (v67)
      {
        *(v91[7] + 8 * v66) = v89;
      }

      else
      {
        v91[(v66 >> 6) + 8] |= 1 << v66;
        v70 = (v34[6] + 16 * v66);
        *v70 = v62;
        v70[1] = v61;
        *(v34[7] + 8 * v66) = v89;
        v71 = v34[2];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          goto LABEL_21;
        }

        v34[2] = v73;
        v68 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v55 &= v55 - 1;
      MEMORY[0x1EEE9AC00](v68);
      *(&v76 - 4) = &v92;
      *(&v76 - 3) = v62;
      v74 = v61;
      sub_1C4ABDEF0(1, 3, v63, v85, (&v76 - 6), v86);

      v56 = v83;
      v52 = v84;
      if (!v55)
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
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v58 >= v56)
      {

        sub_1C43FE9F0();
        return;
      }

      v55 = *(v52 + 8 * v58);
      ++v57;
      if (v55)
      {
        v57 = v58;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4ABDBFC()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C4EFF0C8();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C440E3E8();
  v20 = (v6 + *(v2(0) + 32));
  v22 = *v20;
  v21 = v20[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FE5F8();
  sub_1C4EFD2E8();
  v23 = sub_1C4EFD548();
  if (sub_1C44157D4(v0, 1, v23) == 1)
  {
    sub_1C446F170(v0, &qword_1EC0B8568, &unk_1C4F319B0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v22 = sub_1C4EFD3D8();
    v21 = v24;
    sub_1C440A6B8(v23);
    (*(v25 + 8))(v0, v23);
  }

  (*(v10 + 16))(v15, v6, v7);
  v26 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *v4;
  v43 = *v4;
  *v4 = 0x8000000000000000;
  v28 = sub_1C43FE5F8();
  v30 = sub_1C445FAA8(v28, v29);
  if (__OFADD__(*(v27 + 16), (v31 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v32 = v30;
  v33 = v31;
  sub_1C456902C(&unk_1EC0C2E10, &qword_1C4F4E068);
  if (sub_1C4F02458())
  {
    v34 = sub_1C43FE5F8();
    v36 = sub_1C445FAA8(v34, v35);
    if ((v33 & 1) == (v37 & 1))
    {
      v32 = v36;
      goto LABEL_8;
    }

LABEL_13:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

LABEL_8:
  v38 = *v4;
  *v4 = v43;

  v39 = *v4;
  if (v33)
  {
  }

  else
  {
    sub_1C44686DC(v32, v22, v21, MEMORY[0x1E69E7CC0], *v4);
  }

  v40 = *(v39 + 56) + 8 * v32;
  sub_1C4588EAC();
  v41 = *(*v40 + 16);
  sub_1C4589A94();
  v42 = *v40;
  *(v42 + 16) = v41 + 1;
  (*(v10 + 32))(v42 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v41, v15, v7);
  sub_1C43FE9F0();
}

uint64_t sub_1C4ABDEF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(*(v6 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
    v9 = MEMORY[0x1EEE9AC00](result);
    v14[2] = v10;
    v15 = v9;
    v16 = v11;
    v17 = v12;
    v18 = v13;

    sub_1C4465390(a6, v14);
  }

  return result;
}

uint64_t sub_1C4ABDF8C(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v60 = a5;
  v51 = a6;
  v55 = a4;
  LODWORD(v61) = a3;
  v58 = a1;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v54 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v51 - v19;
  sub_1C4EFBD18();
  v67 = a2;
  v62[3] = &type metadata for FusedTripleColumn;
  v53 = sub_1C45021B8();
  v62[4] = v53;
  LOBYTE(v62[0]) = 0;
  v52 = sub_1C4EFB298();
  v65 = v52;
  v66 = MEMORY[0x1E699FE60];
  sub_1C4422F90(&v63);
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4472508(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  sub_1C4F01458();
  sub_1C440962C(v62);
  sub_1C4EFBCD8();
  (*(v8 + 8))(v11, v7);
  sub_1C440962C(&v63);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0C890;
  *(v20 + 56) = &type metadata for FusedTripleColumn;
  v21 = sub_1C48112EC();
  *(v20 + 64) = v21;
  v22 = v61;
  *(v20 + 32) = v61;
  *(v20 + 96) = &type metadata for FusedTripleColumn;
  *(v20 + 104) = v21;
  LOBYTE(v11) = v55;
  *(v20 + 72) = v55;
  v65 = &type metadata for FusedTripleColumn;
  v66 = v53;
  LOBYTE(v63) = v22;
  v23 = MEMORY[0x1E699FE50];
  *(v20 + 136) = v52;
  *(v20 + 144) = v23;
  sub_1C4422F90((v20 + 112));
  sub_1C4EFBD28();
  sub_1C440962C(&v63);
  sub_1C4401CBC(&unk_1EDDFE840, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v24 = v54;
  sub_1C4EFB688();

  v25 = *(v56 + 8);
  v25(v16, v12);
  sub_1C456902C(&qword_1EC0BE5D8, &qword_1C4F376E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C4F0CE60;
  *(v26 + 56) = &type metadata for FusedTripleColumn;
  v27 = sub_1C481123C();
  *(v26 + 64) = v27;
  *(v26 + 32) = v61;
  *(v26 + 96) = &type metadata for FusedTripleColumn;
  *(v26 + 104) = v27;
  *(v26 + 72) = v11;
  sub_1C4401CBC(&qword_1EDDFA270, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v28 = v57;
  sub_1C4EFB6E8();

  v25(v24, v12);
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v29 = v59;
  v30 = sub_1C4EFB028();
  v31 = v29;
  result = (v25)(v28, v12);
  if (v29)
  {
    return result;
  }

  v59 = v30;
  while (1)
  {
    v33 = sub_1C4458EE8();
    if (v31)
    {
    }

    v34 = v33;
    if (!v33)
    {
    }

    sub_1C4EFBBA8();
    v35 = sub_1C4EFBBE8();
    if (v35)
    {
      v36 = MEMORY[0x1EEE9AC00](v35);
      *(&v51 - 2) = v34;
      *(&v51 - 1) = 0;
      v37 = sqlite3_column_type(v36, 0);
      if (v37 == 5)
      {
        MEMORY[0x1EEE9AC00](v37);
        *(&v51 - 2) = sub_1C487BF24;
        *(&v51 - 1) = (&v51 - 4);
        sub_1C4EFB968();
        goto LABEL_24;
      }

      v38 = sub_1C4F011E8();
      v40 = v39;
      v63 = v38;
    }

    else
    {
      sub_1C4EFBB98();
      v38 = v63;
      v40 = v64;
    }

    sub_1C4EFBBA8();
    v41 = sub_1C4EFBBE8();
    if (v41)
    {
      v42 = MEMORY[0x1EEE9AC00](v41);
      *(&v51 - 2) = v34;
      *(&v51 - 1) = 1;
      v43 = sqlite3_column_type(v42, 1);
      if (v43 == 5)
      {
        MEMORY[0x1EEE9AC00](v43);
        *(&v51 - 2) = sub_1C487BF24;
        *(&v51 - 1) = (&v51 - 4);
        goto LABEL_23;
      }

      v44 = sub_1C4F011E8();
      v46 = v45;
      v63 = v44;
    }

    else
    {
      sub_1C4EFBB98();
      v44 = v63;
      v46 = v64;
    }

    sub_1C4EFBBA8();
    v47 = sub_1C4EFBBE8();
    if (v47)
    {
      break;
    }

    sub_1C4EFBB98();
    v60(v38, v40, v44, v46, v63);
LABEL_17:
  }

  v61 = 0;
  v48 = MEMORY[0x1EEE9AC00](v47);
  *(&v51 - 2) = v34;
  *(&v51 - 1) = 2;
  v49 = sqlite3_column_type(v48, 2);
  if (v49 != 5)
  {
    v50 = sub_1C4F02AA8();
    v31 = v61;
    v60(v38, v40, v44, v46, v50);
    goto LABEL_17;
  }

  MEMORY[0x1EEE9AC00](v49);
  *(&v51 - 2) = sub_1C487BDA4;
  *(&v51 - 1) = (&v51 - 4);
LABEL_23:
  sub_1C4EFB968();
LABEL_24:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABE90C(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v58 = a5;
  v49 = a6;
  v53 = a4;
  LODWORD(v59) = a3;
  v56 = a1;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v52 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v49 - v19;
  sub_1C4EFBD18();
  v65 = a2;
  v60[3] = &type metadata for FusedTripleColumn;
  v51 = sub_1C45021B8();
  v60[4] = v51;
  LOBYTE(v60[0]) = 0;
  v50 = sub_1C4EFB298();
  v63 = v50;
  v64 = MEMORY[0x1E699FE60];
  sub_1C4422F90(&v61);
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4472508(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
  sub_1C4F01458();
  sub_1C440962C(v60);
  sub_1C4EFBCD8();
  (*(v8 + 8))(v11, v7);
  sub_1C440962C(&v61);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F0C890;
  *(v20 + 56) = &type metadata for FusedTripleColumn;
  v21 = sub_1C48112EC();
  *(v20 + 64) = v21;
  v22 = v59;
  *(v20 + 32) = v59;
  *(v20 + 96) = &type metadata for FusedTripleColumn;
  *(v20 + 104) = v21;
  LOBYTE(v11) = v53;
  *(v20 + 72) = v53;
  v63 = &type metadata for FusedTripleColumn;
  v64 = v51;
  LOBYTE(v61) = v22;
  v23 = MEMORY[0x1E699FE50];
  *(v20 + 136) = v50;
  *(v20 + 144) = v23;
  sub_1C4422F90((v20 + 112));
  sub_1C4EFBD28();
  sub_1C440962C(&v61);
  sub_1C4401CBC(&unk_1EDDFE840, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v24 = v52;
  sub_1C4EFB688();

  v25 = *(v54 + 8);
  v25(v16, v12);
  sub_1C456902C(&qword_1EC0BE5D8, &qword_1C4F376E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C4F0CE60;
  *(v26 + 56) = &type metadata for FusedTripleColumn;
  v27 = sub_1C481123C();
  *(v26 + 64) = v27;
  *(v26 + 32) = v59;
  *(v26 + 96) = &type metadata for FusedTripleColumn;
  *(v26 + 104) = v27;
  *(v26 + 72) = v11;
  sub_1C4401CBC(&qword_1EDDFA270, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v28 = v55;
  sub_1C4EFB6E8();

  v25(v24, v12);
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v29 = v57;
  v30 = sub_1C4EFB028();
  v31 = v29;
  result = (v25)(v28, v12);
  if (!v29)
  {
    v57 = v30;
    while (1)
    {
      v33 = sub_1C4458EE8();
      if (v31)
      {
      }

      v34 = v33;
      if (!v33)
      {
      }

      sub_1C4EFBBA8();
      v35 = sub_1C4EFBBE8();
      if (v35)
      {
        v36 = MEMORY[0x1EEE9AC00](v35);
        *(&v49 - 2) = v34;
        *(&v49 - 1) = 0;
        v37 = sqlite3_column_type(v36, 0);
        if (v37 == 5)
        {
          goto LABEL_20;
        }

        v38 = sub_1C4F011E8();
        v40 = v39;
        v61 = v38;
      }

      else
      {
        sub_1C4EFBB98();
        v38 = v61;
        v40 = v62;
      }

      sub_1C4EFBBA8();
      v41 = sub_1C4EFBBE8();
      if (v41)
      {
        v42 = MEMORY[0x1EEE9AC00](v41);
        *(&v49 - 2) = v34;
        *(&v49 - 1) = 1;
        v37 = sqlite3_column_type(v42, 1);
        if (v37 == 5)
        {
          goto LABEL_20;
        }

        v43 = sub_1C4F011E8();
        v45 = v44;
        v61 = v43;
      }

      else
      {
        sub_1C4EFBB98();
        v43 = v61;
        v45 = v62;
      }

      sub_1C4EFBBA8();
      v46 = sub_1C4EFBBE8();
      if (v46)
      {
        v59 = 0;
        v47 = MEMORY[0x1EEE9AC00](v46);
        *(&v49 - 2) = v34;
        *(&v49 - 1) = 2;
        v37 = sqlite3_column_type(v47, 2);
        if (v37 == 5)
        {
LABEL_20:
          MEMORY[0x1EEE9AC00](v37);
          *(&v49 - 2) = sub_1C487BF24;
          *(&v49 - 1) = (&v49 - 4);
          sub_1C4EFB968();
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v48 = sub_1C4F02AA8();
        v31 = v59;
        v58(v38, v40, v43, v45, v48);
      }

      else
      {
        sub_1C4EFBB98();
        v58(v38, v40, v43, v45, v61);
      }
    }
  }

  return result;
}

uint64_t Pipeline.runDeltaUpdate(reason:source:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1C43FFE30(sub_1C4ABF2A8);
}

uint64_t sub_1C4ABF2A8()
{
  sub_1C43FCF70();
  if (v0[2] == 1 || (v1 = v0[4] + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores, (Configuration.isLivableSourcesEnabled.getter() & 1) != 0))
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1C4ABF410;
    v3 = v0[3];
    v4 = v0[4];
    sub_1C440F4D4(v0[2]);

    return sub_1C4ACB9F0();
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C43FCEE8(v6, qword_1EDE2DE10);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();
    if (sub_1C4402B64(v8))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B48();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_1C43FE9D4();
    }

    sub_1C43FC1B0();

    return v14();
  }
}

uint64_t sub_1C4ABF410()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4ABF4F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABF508);
}

uint64_t sub_1C4ABF508()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);
  *(v0 + 48) = 3;

  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  v3[1] = sub_1C4ABF5C0;
  v5 = *(v0 + 24);
  v6 = sub_1C4414E5C(*(v0 + 16));

  return sub_1C446D32C(v6, v7, v8, v9);
}

uint64_t sub_1C4ABF5C0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    sub_1C43FBDA0();

    return v13();
  }
}

uint64_t sub_1C4ABF6DC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);

  sub_1C43FBDA0();
  v3 = *(v0 + 40);

  return v2();
}

void sub_1C4ABF738()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox);
  os_unfair_lock_lock(v1 + 6);
  sub_1C4AC3258(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1C4ABF788()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDCB4(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABF81C()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDC7C(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABF8B0()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDCD0(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABF944()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDCEC(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABF9D8()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDC98(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFA6C()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACD990(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFB00()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACD9AC(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFB94()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACDD08(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFC28()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C4ACD974(v1, v2);
  sub_1C4461D38();
  if (v0)
  {
    return sub_1C440246C();
  }

  if (v4)
  {
    if (qword_1EDDFEC88 != -1)
    {
      sub_1C4410E64();
    }

    return sub_1C440246C();
  }

  sub_1C443288C();
  result = sub_1C44122F4();
  __break(1u);
  return result;
}

uint64_t sub_1C4ABFCBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4ABFCD4);
}

uint64_t sub_1C4ABFCD4()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);
  *(v0 + 48) = 1;

  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  v3[1] = sub_1C4ABFD8C;
  v5 = *(v0 + 24);
  v6 = sub_1C4414E5C(*(v0 + 16));

  return sub_1C446D32C(v6, v7, v8, v9);
}

uint64_t sub_1C4ABFD8C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    sub_1C43FBDA0();

    return v13();
  }
}

uint64_t sub_1C4ABFEC8()
{
  sub_1C44249B4();
  sub_1C4404D98();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1C4F00978();
  *(v0 + 24) = sub_1C442B738(v2, qword_1EDE2DE10);

  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = sub_1C43FD084();
    sub_1C43FFD34();
    sub_1C4458794();
    *v7 = 136315138;
    sub_1C4AD0240();
    sub_1C4424D3C();

    v8 = sub_1C4404044();
    sub_1C441D828(v8, v9, v10);
    sub_1C4404C88();

    *(v7 + 4) = v6;
    sub_1C4404638(&dword_1C43F8000, v11, v12, "PhaseStart %s");
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v14 = sub_1C4414DF4(v13);
  *v14 = v15;
  v14[1] = sub_1C4AC0040;
  v16 = *(v0 + 16);
  sub_1C442642C();

  return sub_1C448F6CC();
}

uint64_t sub_1C4AC0040()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C4AC0158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);

  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v10 + 16);
  if (v15)
  {
    v17 = sub_1C43FD084();
    sub_1C43FFD34();
    sub_1C4458794();
    *v17 = 136315138;
    sub_1C4AD0240();
    sub_1C4424D3C();

    v18 = sub_1C4404044();
    sub_1C441D828(v18, v19, v20);
    sub_1C4404C88();

    *(v17 + 4) = v16;
    sub_1C4404638(&dword_1C43F8000, v21, v22, "PhaseFinish %s");
    sub_1C440AEF4();
    sub_1C43FEA20();
  }

  else
  {
  }

  sub_1C43FC1B0();
  sub_1C442642C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_1C4AC0270()
{
  sub_1C44249B4();
  sub_1C4404D98();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v2 = *(v1 + 16);
  v3 = sub_1C4F00978();
  *(v1 + 24) = sub_1C442B738(v3, qword_1EDE2DE10);

  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  v6 = sub_1C4402B64(v5);
  v7 = *(v1 + 16);
  if (v6)
  {
    sub_1C43FD084();
    sub_1C44117BC();
    sub_1C4458794();
    *v0 = 136315138;
    sub_1C4852348();
    sub_1C4424D3C();

    v8 = sub_1C4404044();
    v11 = sub_1C441D828(v8, v9, v10);

    *(v0 + 4) = v11;
    sub_1C4402B48();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1C440AEF4();
    sub_1C43FE9D4();
  }

  else
  {
  }

  v17 = swift_task_alloc();
  v18 = sub_1C4414DF4(v17);
  *v18 = v19;
  v18[1] = sub_1C4AC03E4;
  v20 = *(v1 + 16);
  sub_1C442642C();

  return sub_1C4C8C598();
}

uint64_t sub_1C4AC03E4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1C4AC04FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();
  v16 = sub_1C4402B64(v15);
  v17 = *(v11 + 16);
  if (v16)
  {
    sub_1C43FD084();
    sub_1C44117BC();
    sub_1C4458794();
    *v10 = 136315138;
    sub_1C4852348();
    sub_1C4424D3C();

    v18 = sub_1C4404044();
    v21 = sub_1C441D828(v18, v19, v20);

    *(v10 + 4) = v21;
    sub_1C4402B48();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    sub_1C440AEF4();
    sub_1C43FE9D4();
  }

  else
  {
  }

  sub_1C43FC1B0();
  sub_1C442642C();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t Pipeline.runLifeEventsDelta(reason:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FFE30(sub_1C4AC0608);
}

uint64_t sub_1C4AC0608()
{
  sub_1C43FBCD4();
  if (qword_1EDDFED08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Source();
  sub_1C442B738(v0, qword_1EDDFED10);
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C441BC24(v2);

  return sub_1C4ACB9F0();
}

uint64_t sub_1C4AC06D0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  v9 = sub_1C44019F8(a2, *(v8 + 16));
  swift_endAccess();
  if (!v9)
  {
    sub_1C443113C(a2, v7);
    v10 = _s12JobSchedulerCMa(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1C4CDAD0C(v7);
    swift_beginAccess();

    v13 = *(v8 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v8 + 16);
    sub_1C46627C4();
    *(v8 + 16) = v16;
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_1C4AC0828(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4AC0848, 0, 0);
}

uint64_t sub_1C4AC0848()
{
  sub_1C43FCF70();
  v1 = *(v0 + 24);
  sub_1C4AC0AB0(*(v0 + 16));
  sub_1C4408F38(&unk_1C4F4E178);
  v8 = v2;
  v3 = swift_task_alloc();
  v4 = sub_1C4414DF4(v3);
  *v4 = v5;
  v4[1] = sub_1C4AC0928;
  v6 = *(v0 + 24);

  return v8();
}

uint64_t sub_1C4AC0928()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    sub_1C43FBDA0();

    return v9();
  }

  else
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C4AC0A3C()
{
  sub_1C43FCF70();
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  sub_1C4AC1064();
  sub_1C43FBDA0();

  return v4();
}

void *sub_1C4AC0AB0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDE2DE10);

  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  v18 = os_log_type_enabled(v16, v17);
  v38 = v9;
  v39 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v37 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136315138;
    v22 = sub_1C4852348();
    v53 = a1;
    v23 = v14;
    v24 = v10;
    v25 = v22;
    v26 = v11;
    v28 = v27;

    v29 = sub_1C441D828(v25, v28, &v40);
    v11 = v26;

    *(v20 + 4) = v29;
    v10 = v24;
    v14 = v23;
    a1 = v53;
    _os_log_impl(&dword_1C43F8000, v16, v17, "PhaseMetricsStart %s", v20, 0xCu);
    sub_1C440962C(v21);
    MEMORY[0x1C6942830](v21, -1, -1);
    v30 = v20;
    v3 = v37;
    MEMORY[0x1C6942830](v30, -1, -1);
  }

  else
  {
  }

  result = sub_1C446ABD0(0);
  if (!v3)
  {
    v32 = result;
    v53 = a1;
    if (qword_1EDDF7B60 != -1)
    {
      swift_once();
    }

    v50 = xmmword_1EDE2D960;
    v51 = *algn_1EDE2D970;
    v52 = qword_1EDE2D980;
    v34 = *(v39 + 16);
    v33 = *(v39 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448DA58(v34, v33, v32, 0, 0);

    if (qword_1EDDF7B58 != -1)
    {
      swift_once();
    }

    v47 = xmmword_1EDE2D938;
    v48 = unk_1EDE2D948;
    v49 = qword_1EDE2D958;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448DA58(v34, v33, v32, 0, 0);

    sub_1C4EF9CC8();
    if (qword_1EDDF7AE8 != -1)
    {
      swift_once();
    }

    v44 = xmmword_1EDE2D7D0;
    v45 = unk_1EDE2D7E0;
    v46 = qword_1EDE2D7F0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446ABD0(0);
    v35 = v38;
    sub_1C448E94C();

    v36 = sub_1C44157D4(v35, 1, v10);
    sub_1C446F170(v35, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (v36 == 1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448EA0C(v14);
    }

    if (qword_1EDDF7B50 != -1)
    {
      swift_once();
    }

    v41 = xmmword_1EDE2D910;
    v42 = unk_1EDE2D920;
    v43 = qword_1EDE2D930;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448EA0C(v14);
    (*(v11 + 8))(v14, v10);
  }

  return result;
}

void *sub_1C4AC1064()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  result = sub_1C446ABD0(0);
  if (!v0)
  {
    v48 = v7;
    v47 = v16;
    v46 = v5;
    v45 = v13;
    v20 = v52;
    v49 = result;
    v51 = v8;
    v50 = v9;
    sub_1C4EF9CC8();
    if (qword_1EDDF7B50 != -1)
    {
      swift_once();
    }

    v61 = xmmword_1EDE2D910;
    v62 = unk_1EDE2D920;
    v63 = qword_1EDE2D930;
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446ABD0(0);
    v23 = v48;
    sub_1C448E94C();

    v24 = v51;
    v25 = sub_1C44157D4(v23, 1, v51);
    if (v25 == 1)
    {
      sub_1C446F170(v23, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      v27 = v47;
      (*(v50 + 32))(v47, v23, v24);
      if (qword_1EDDF7B40 != -1)
      {
        swift_once();
      }

      v59[0] = xmmword_1EDE2D8E8;
      v59[1] = *&qword_1EDE2D8F8;
      v60 = qword_1EDE2D908;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C446ABD0(0);
      sub_1C44BEC80(v59, v21, v22);
      LODWORD(v48) = v32;

      sub_1C4EF9CB8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44BF3A4(v59, v21, v22);

      (*(v50 + 8))(v27, v51);
    }

    if (qword_1EDDF7AE8 != -1)
    {
      swift_once();
    }

    v56 = xmmword_1EDE2D7D0;
    v57 = unk_1EDE2D7E0;
    v58 = qword_1EDE2D7F0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446ABD0(0);
    v26 = v46;
    sub_1C448E94C();

    v28 = v51;
    v29 = sub_1C44157D4(v26, 1, v51);
    v30 = v26;
    if (v29 == 1)
    {
      sub_1C446F170(v26, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v31 = v50;
    }

    else
    {
      v33 = v45;
      (*(v50 + 32))(v45, v30, v28);
      sub_1C4EF9CB8();
      if (qword_1EDDF7AF8 != -1)
      {
        swift_once();
      }

      v54[0] = xmmword_1EDE2D7F8;
      v54[1] = *&qword_1EDE2D808;
      v55 = qword_1EDE2D818;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44BF3A4(v54, v21, v22);

      v31 = v50;
      (*(v50 + 8))(v33, v51);
    }

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v34 = sub_1C4F00978();
    sub_1C442B738(v34, qword_1EDE2DE10);

    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CF8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v38;
      *v37 = 136315138;
      v39 = sub_1C4852348();
      v40 = v31;
      v42 = v41;

      v43 = sub_1C441D828(v39, v42, &v53);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1C43F8000, v35, v36, "PhaseMetricsFinish %s", v37, 0xCu);
      sub_1C440962C(v38);
      MEMORY[0x1C6942830](v38, -1, -1);
      MEMORY[0x1C6942830](v37, -1, -1);

      return (*(v40 + 8))(v18, v51);
    }

    else
    {

      return (*(v31 + 8))(v18, v51);
    }
  }

  return result;
}

uint64_t sub_1C4AC1918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C4404044();
  v11 = sub_1C456902C(v9, v10);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C440E3E8();
  sub_1C446C964(a3, v5, &qword_1EC0BC660, &qword_1C4F29150);
  v15 = sub_1C4F018C8();
  v16 = sub_1C44157D4(v5, 1, v15);

  if (v16 == 1)
  {
    sub_1C446F170(v5, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    sub_1C440A6B8(v15);
    (*(v17 + 8))(v5, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C456902C(&unk_1EC0C2EC0, &qword_1C4F6A810);
    return swift_task_create();
  }

  swift_getObjectType();
  v20 = sub_1C4F017F8();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C43FE5F8();
  sub_1C4F011C8();

  sub_1C456902C(&unk_1EC0C2EC0, &qword_1C4F6A810);
  swift_task_create();
  sub_1C4406834();

  return v20;
}

void sub_1C4AC1B58()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440E3E8();
  sub_1C446C964(v4, v0, &qword_1EC0BC660, &qword_1C4F29150);
  v11 = sub_1C4F018C8();
  v12 = sub_1C44157D4(v0, 1, v11);

  if (v12 == 1)
  {
    sub_1C446F170(v0, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    sub_1C440A6B8(v11);
    (*(v13 + 8))(v0, v11);
  }

  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C43FE748();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C4F017F8();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C43FE5F8();
  sub_1C4F011C8();

  sub_1C43FE748();
  sub_1C4406834();

LABEL_9:
  sub_1C43FE9F0();
}

uint64_t sub_1C4AC1D58()
{
  sub_1C456902C(&qword_1EC0C2EE8, &unk_1C4F4E188);
  swift_allocObject();
  result = sub_1C4CE53C4();
  qword_1EDE2D368 = result;
  return result;
}

uint64_t sub_1C4AC1DA4()
{
  *(v0 + 24) = 4;
  *(v0 + 32) = 0;
  sub_1C4AC1DF4();
  v2 = v1;
  sub_1C441CCF4();
  sub_1C4454270();
  *(v0 + 16) = v2;
  return v0;
}

void sub_1C4AC1DF4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v28 = sub_1C4F00D58();
  v2 = sub_1C43FCDF8(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v27 = sub_1C4F00D88();
  v10 = sub_1C43FCDF8(v27);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = type metadata accessor for Configuration();
  v19 = sub_1C43FCF7C(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4461BB8(0, &qword_1EDDFA490, 0x1E69E9630);
  sub_1C4F01DD8();
  swift_getObjectType();
  sub_1C440B110();
  sub_1C443113C(v1, &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v25 = swift_allocObject();
  sub_1C44760B0(&v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v29[4] = sub_1C4ACE03C;
  v29[5] = v25;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1C4833DD0;
  v29[3] = &unk_1F43F8F20;
  v26 = _Block_copy(v29);
  sub_1C4795168();
  sub_1C479516C();
  sub_1C4F01DE8();
  _Block_release(v26);
  (*(v4 + 8))(v9, v28);
  (*(v12 + 8))(v17, v27);

  sub_1C4F01E08();
  sub_1C43FE9F0();
}

uint64_t sub_1C4AC20C0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C4F01DF8();
  swift_unknownObjectRelease();
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return v1;
}

uint64_t sub_1C4AC2124()
{
  sub_1C4AC20C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AC2158(uint64_t a1)
{
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C43F8000, v3, v4, "Pipeline: handling SIGTERM", v5, 2u);
    MEMORY[0x1C6942830](v5, -1, -1);
  }

  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  sub_1C4468E90(a1);
  sub_1C4ABF738();
}

void *sub_1C4AC22D4(uint64_t a1)
{
  v3 = v1;
  v27[1] = *v1;
  v5 = type metadata accessor for Configuration();
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  v14 = type metadata accessor for PhaseStores();
  v15 = sub_1C43FBD18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  sub_1C4EFC798();
  v1[2] = sub_1C4EFC788();
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService) = 0;
  sub_1C443113C(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config);
  sub_1C443113C(a1, v13);
  PhaseStores.init(config:)(v13, v20);
  if (v2)
  {
    sub_1C4454270();
    v21 = v1[2];

    sub_1C4454270();

    v22 = *(*v1 + 48);
    v23 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C44760B0(v20, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores);
    sub_1C440B110();
    sub_1C443113C(a1, v11);
    type metadata accessor for Pipeline.GuardedData();
    v24 = swift_allocObject();
    sub_1C4AC1DA4();
    sub_1C456902C(&unk_1EC0C2ED8, &qword_1C4F4E180);
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    *(v25 + 16) = v24;
    sub_1C441CCF4();
    sub_1C4454270();
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox) = v25;
  }

  return v3;
}

uint64_t Pipeline.deinit()
{
  v1 = *(v0 + 16);

  sub_1C441CCF4();
  sub_1C4454270();
  sub_1C4454270();

  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox);

  return v0;
}

uint64_t Pipeline.__deallocating_deinit()
{
  Pipeline.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AC2640()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v2 + 760);
  *v4 = *v1;
  *(v3 + 768) = v0;

  v6 = *(v2 + 752);

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4AC2760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C44249B4();
  sub_1C4404D98();
  v11 = *(v10 + 577);
  v12 = [objc_opt_self() defaultCenter];
  sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
  v13 = *(v10 + 578);
  v14 = MEMORY[0x1E69E6158];
  if (v11 == 1)
  {
    v15 = *MEMORY[0x1E69A9F38];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy((v10 + 648), "pipelineType");
    *(v10 + 661) = 0;
    *(v10 + 662) = -5120;
    v17 = v15;
    sub_1C4F02198();
    sub_1C440BDD4();
    switch(v13)
    {
      case 1:
        goto LABEL_4;
      case 2:
        goto LABEL_5;
      case 3:
        goto LABEL_6;
      default:
        break;
    }
  }

  else
  {
    v20 = *MEMORY[0x1E69A9F40];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy((v10 + 632), "pipelineType");
    *(v10 + 645) = 0;
    *(v10 + 646) = -5120;
    v17 = v20;
    sub_1C4F02198();
    sub_1C440BDD4();
    switch(v13)
    {
      case 1:
LABEL_4:
        sub_1C4426D3C();
        break;
      case 2:
LABEL_5:
        sub_1C44336F0();
        break;
      case 3:
LABEL_6:
        sub_1C4403620();
        break;
      default:
        break;
    }
  }

  v21 = *(v10 + 752);
  *(inited + 96) = v14;
  *(inited + 72) = v19;
  *(inited + 80) = v18;
  v22 = sub_1C4F00F28();
  sub_1C446C7A4(v17, 0, v22, v12);

  sub_1C4ACE0A8();

  sub_1C43FC1B0();
  sub_1C442642C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_1C4AC2988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  v15 = *(v14 + 768);
  v16 = *(v14 + 744);
  v17 = *(v14 + 720);
  *(v14 + 664) = v15;
  v18 = v15;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {
    v19 = *(v14 + 578);
    v20 = *(v14 + 744);
    v21 = *(v14 + 736);
    v22 = *(v14 + 728);
    v23 = *(v14 + 720);

    (*(v22 + 32))(v21, v20, v23);
    v24 = [objc_opt_self() defaultCenter];
    v25 = *MEMORY[0x1E69A9F38];
    sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy((v14 + 616), "pipelineType");
    *(v14 + 629) = 0;
    *(v14 + 630) = -5120;
    v27 = v25;
    v28 = MEMORY[0x1E69E6158];
    sub_1C4F02198();
    sub_1C440BDD4();
    switch(v19)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C4403620();
        break;
      default:
        break;
    }

    v50 = *(v14 + 752);
    v51 = *(v14 + 736);
    v52 = *(v14 + 728);
    v53 = *(v14 + 720);
    *(inited + 96) = v28;
    *(inited + 72) = v30;
    *(inited + 80) = v29;
    v54 = sub_1C4F00F28();
    sub_1C446C7A4(v27, 0, v54, v24);

    sub_1C4ACD9E4();
    sub_1C43FFB2C();
    sub_1C44803FC();
    sub_1C4AC3120(v55);
    swift_willThrow();

    (*(v52 + 8))(v51, v53);
    v56 = *(v14 + 664);
LABEL_16:

    goto LABEL_19;
  }

  *(v14 + 672) = v15;
  v31 = v15;
  v32 = swift_dynamicCast();
  v33 = *(v14 + 578);
  if (v32)
  {

    a10 = *(v14 + 560);
    v34 = *(v14 + 568);
    v35 = *(v14 + 576);
    v36 = [objc_opt_self() defaultCenter];
    v37 = *MEMORY[0x1E69A9F48];
    sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_1C4F0D130;
    strcpy((v14 + 600), "pipelineType");
    *(v14 + 613) = 0;
    *(v14 + 614) = -5120;
    v39 = v37;
    v40 = MEMORY[0x1E69E6158];
    sub_1C4F02198();
    sub_1C440BDD4();
    switch(v33)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C4403620();
        break;
      default:
        break;
    }

    v57 = *(v14 + 752);
    *(v38 + 96) = v40;
    *(v38 + 72) = v42;
    *(v38 + 80) = v41;
    v58 = sub_1C4F00F28();
    sub_1C446C7A4(v39, 0, v58, v36);

    sub_1C4ACD9E4();
    sub_1C43FFB2C();
    *v59 = a10;
    *(v59 + 8) = v34;
    *(v59 + 16) = v35;
    swift_willThrow();

    v56 = *(v14 + 672);
    goto LABEL_16;
  }

  v43 = [objc_opt_self() defaultCenter];
  v44 = *MEMORY[0x1E69A9F48];
  sub_1C456902C(&qword_1EC0C2DE8, &unk_1C4F4E048);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_1C4F0D130;
  strcpy((v14 + 584), "pipelineType");
  *(v14 + 597) = 0;
  *(v14 + 598) = -5120;
  v46 = v44;
  v47 = MEMORY[0x1E69E6158];
  sub_1C4F02198();
  sub_1C440BDD4();
  switch(v33)
  {
    case 1:
      sub_1C4426D3C();
      break;
    case 2:
      sub_1C44336F0();
      break;
    case 3:
      sub_1C4403620();
      break;
    default:
      break;
  }

  v60 = *(v14 + 752);
  *(v45 + 96) = v47;
  *(v45 + 72) = v49;
  *(v45 + 80) = v48;
  sub_1C4F00F28();
  v61 = sub_1C4440DAC();
  sub_1C446C7A4(v61, v62, v63, v43);

  swift_getErrorValue();
  v64 = *(v14 + 536);
  v65 = *(v14 + 544);
  v66 = *(v14 + 552);
  sub_1C4ACD9E4();
  sub_1C43FFB2C();
  sub_1C44803FC();
  sub_1C4ACE0C0(v65, v67);
  swift_willThrow();

LABEL_19:
  sub_1C4ACE0A8();

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C4AC2F14()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3 & 1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4AC3020()
{
  sub_1C43FBCD4();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  **(v0 + 16) = *(v0 + 56);
  v3 = sub_1C4F01948();
  sub_1C4AC3C14(v3 & 1, v1);
  sub_1C499A018(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config, 1);
  sub_1C43FC1B0();

  return v4();
}

uint64_t sub_1C4AC30A4()
{
  sub_1C43FBCD4();
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1C4F01948();
  sub_1C4AC3C14(v3 & 1, v1);
  sub_1C499A018(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config, 1);
  sub_1C43FBDA0();
  v5 = v0[6];

  return v4();
}

uint64_t sub_1C4AC3120@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C4F01828();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  if (swift_dynamicCast())
  {
    v7 = 0;
    v8 = 2;
    result = 3;
  }

  else
  {
    sub_1C4472508(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
    result = sub_1C4F02A38();
    v8 = 1;
  }

  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1C4AC3258(uint64_t a1)
{
  if (*(*a1 + 32))
  {
    v1 = *(*a1 + 32);

    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    sub_1C4F01918();
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C43F8000, v3, v4, "Pipeline: task cancelled.", v5, 2u);
      MEMORY[0x1C6942830](v5, -1, -1);
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "Pipeline: stop called but pipeline is not running.", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    sub_1C4ACD9E4();
    swift_allocError();
    *v11 = xmmword_1C4F14630;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1C4AC3480(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25[-v7];
  v9 = *a1;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DE10);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315394;
    v15 = sub_1C46655C4();
    v17 = sub_1C441D828(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v25[15] = v9;
    sub_1C456902C(&qword_1EC0BD3A0, &qword_1C4F2DB70);
    v18 = sub_1C4F01198();
    v20 = sub_1C441D828(v18, v19, &v26);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1C43F8000, v11, v12, "%s - clear intermidate data for pipelineType: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v14, -1, -1);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  v21 = v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
  v22 = *&v21[*(type metadata accessor for PhaseStores() + 24)];
  v31 = v9;
  sub_1C44AF8F4(&v31);
  v30 = v9;
  sub_1C4495FC0(&v30);
  v29 = v9;
  v23 = sub_1C4EFD548();
  sub_1C440BAA8(v8, 1, 1, v23);
  sub_1C44ABA54(&v29, v8);
  sub_1C446F170(v8, &qword_1EC0B8568, &unk_1C4F319B0);
  v28 = v9;
  sub_1C440BAA8(v8, 1, 1, v23);
  sub_1C44A8814(&v28, v8);
  sub_1C446F170(v8, &qword_1EC0B8568, &unk_1C4F319B0);
  v27 = v9;
  sub_1C440BAA8(v8, 1, 1, v23);
  sub_1C44A2734(&v27, v8);
  result = sub_1C446F170(v8, &qword_1EC0B8568, &unk_1C4F319B0);
  if (v9 != 4)
  {
    result = sub_1C4684BDC();
    if (result)
    {
      sub_1C486D7F0();
      return sub_1C486D86C();
    }
  }

  return result;
}

uint64_t sub_1C4AC37B4()
{
  if (qword_1EDDF7B18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE2D870;
  v0 = *algn_1EDE2D878;
  v2 = qword_1EDE2D880;
  v3 = unk_1EDE2D888;
  v4 = qword_1EDE2D890;
  v5 = sub_1C456902C(&unk_1EC0C2E50, &unk_1C4F4E090);
  v48 = v5;
  v6 = sub_1C4401CBC(&qword_1EDDF7C98, &unk_1EC0C2E50, &unk_1C4F4E090);
  v49 = v6;
  v7 = swift_allocObject();
  *&v47 = v7;
  v7[2] = v1;
  v7[3] = v0;
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v4;
  v7[7] = 0;
  v7[8] = v3;
  v7[9] = v4;
  sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v37 = inited;
  sub_1C441D670(&v47, inited + 32);
  sub_1C446F0D0(v3);
  sub_1C446F0D0(v3);
  v9 = qword_1EDDF7B10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDE2D848;
  v11 = unk_1EDE2D850;
  v12 = qword_1EDE2D858;
  v13 = unk_1EDE2D860;
  v14 = qword_1EDE2D868;
  v45 = v5;
  v46 = v6;
  v15 = swift_allocObject();
  *&v44 = v15;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  v15[7] = 0;
  v15[8] = v13;
  v15[9] = v14;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1C4F0D130;
  sub_1C441D670(&v44, v16 + 32);
  sub_1C446F0D0(v13);
  sub_1C446F0D0(v13);
  v17 = qword_1EDDF7B08;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE2D820;
  v18 = *algn_1EDE2D828;
  v20 = qword_1EDE2D830;
  v21 = unk_1EDE2D838;
  v22 = qword_1EDE2D840;
  v42 = v5;
  v43 = v6;
  v23 = swift_allocObject();
  *&v41 = v23;
  v23[2] = v19;
  v23[3] = v18;
  v23[4] = v20;
  v23[5] = v21;
  v23[6] = v22;
  v23[7] = 0;
  v23[8] = v21;
  v23[9] = v22;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1C4F0D130;
  sub_1C441D670(&v41, v24 + 32);
  sub_1C446F0D0(v21);
  sub_1C446F0D0(v21);
  v25 = qword_1EDDF7B28;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDE2D898;
  v27 = unk_1EDE2D8A0;
  v28 = qword_1EDE2D8A8;
  v29 = unk_1EDE2D8B0;
  v30 = qword_1EDE2D8B8;
  v39 = sub_1C456902C(&unk_1EC0C2E88, &unk_1C4F4E0B0);
  v40 = sub_1C4401CBC(qword_1EDDEA910, &unk_1EC0C2E88, &unk_1C4F4E0B0);
  v31 = swift_allocObject();
  *&v38 = v31;
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 32) = v28;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  *(v31 + 56) = 1;
  *(v31 + 57) = v50[0];
  *(v31 + 60) = *(v50 + 3);
  *(v31 + 64) = v29;
  *(v31 + 72) = v30;
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1C4F0D130;
  sub_1C441D670(&v38, v32 + 32);
  sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1C4F0D480;
  *(v33 + 32) = v37;
  *(v33 + 40) = v16;
  *(v33 + 48) = v24;
  *(v33 + 56) = v32;
  sub_1C446F0D0(v29);
  sub_1C446F0D0(v29);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F8F4(v33);
  v35 = v34;
  swift_setDeallocating();
  sub_1C446FAEC();
  return v35;
}

void sub_1C4AC3C14(char a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DE10);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2048;
    *(v9 + 10) = a2;
    _os_log_impl(&dword_1C43F8000, v7, v8, "Pipeline: run will finish. c:%{BOOL}d,r:%lu", v9, 0x12u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  v10 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_lockbox);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock((v10 + 24));
  sub_1C4ACDA38((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
}

void sub_1C4AC3D7C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v95 = a4;
  v105 = a3;
  v99 = sub_1C4EF9CD8();
  v96 = *(v99 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v90 - v11;
  v12 = type metadata accessor for Configuration();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v94 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v93 = &v90 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v90 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v90 - v21;
  v23 = type metadata accessor for Pipeline.StatusStore();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *a1;
  if (*(v97 + 24) == 4)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v97 + 24);
  }

  v100 = a2;
  v92 = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config;
  sub_1C443113C(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_config, v27);
  v29 = *(v24 + 28);
  v102 = v28;
  v27[v29] = v28;
  if (qword_1EDDF7BB8 != -1)
  {
    swift_once();
  }

  sub_1C443113C(v27, v22);
  v30 = v27[v29];
  v106._countAndFlagsBits = 0xD000000000000010;
  v106._object = 0x80000001C4FAAFC0;
  v103 = 0x80000001C4FAAFC0;
  v104 = v29;
  v31 = 0xE700000000000000;
  v91 = 0x6E776F6E6B6E75;
  v32 = 0x6E776F6E6B6E75;
  switch(v30)
  {
    case 1:
      v31 = 0xE400000000000000;
      v32 = 1819047270;
      break;
    case 2:
      v31 = 0xE500000000000000;
      v32 = 0x61746C6564;
      break;
    case 3:
      v32 = 0x69686374614D6F74;
      v31 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v32, v31);

  MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
  countAndFlagsBits = v106._countAndFlagsBits;
  object = v106._object;
  v35 = type metadata accessor for KeyValueStore();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  KeyValueStore.init(config:domain:)(v22, countAndFlagsBits, object);
  if (v4)
  {

LABEL_13:
    v38 = 0;
    goto LABEL_14;
  }

  v38 = sub_1C44BAADC();
  v61 = v60;

  if (v61)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (qword_1EDDF7B38 != -1)
  {
    swift_once();
  }

  sub_1C443113C(v27, v20);
  v39 = v27[v104];
  v40 = 0xE700000000000000;
  v106._countAndFlagsBits = 0xD000000000000010;
  v106._object = v103;
  v41 = 0x6E776F6E6B6E75;
  switch(v39)
  {
    case 1:
      v40 = 0xE400000000000000;
      v41 = 1819047270;
      break;
    case 2:
      v40 = 0xE500000000000000;
      v41 = 0x61746C6564;
      break;
    case 3:
      v41 = 0x69686374614D6F74;
      v40 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v41, v40);

  MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
  v42 = v106._countAndFlagsBits;
  v43 = v106._object;
  v44 = *(v35 + 48);
  v45 = *(v35 + 52);
  swift_allocObject();
  KeyValueStore.init(config:domain:)(v20, v42, v43);
  v46 = v101;
  sub_1C446FB00();

  v62 = v99;
  v47 = v98;
  v48 = sub_1C4AD2674();
  if (v105)
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  if (v48)
  {
    v50 = 3;
  }

  else
  {
    v50 = v49;
  }

  v51 = sub_1C4EF9CC8();
  MEMORY[0x1EEE9AC00](v51);
  *(&v90 - 48) = v102;
  *(&v90 - 5) = v47;
  *(&v90 - 32) = v50;
  *(&v90 - 3) = v38;
  *(&v90 - 2) = v46;
  sub_1C446C840(0, 0, sub_1C4ACDA5C);
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  v52 = static NSUserDefaults.testTelemetry.getter() | (v95 != 1);
  v53 = sub_1C4AD2518();
  v54 = v53;
  if (v52 & 1) != 0 && (v53)
  {
    sub_1C4AD1484();
    switch(v102)
    {
      case 1:

        goto LABEL_38;
      default:
        v63 = sub_1C4F02938();

        if (v63)
        {
LABEL_38:
          v64 = v93;
          sub_1C443113C(v100 + v92, v93);
          v65 = type metadata accessor for GraphStore();
          v66 = *(v65 + 48);
          v67 = *(v65 + 52);
          swift_allocObject();
          GraphStore.init(config:)(v64);
          sub_1C4ABD590();
          sub_1C4ABD590();
          sub_1C486C438();

          v47 = v98;

          v62 = v99;

          v46 = v101;
        }

        break;
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v55 = sub_1C4F00978();
    sub_1C442B738(v55, qword_1EDE2DE10);
    v56 = sub_1C4F00968();
    v57 = sub_1C4F01CB8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1C43F8000, v56, v57, "Pipeline: Give up logging to CA since triggered by internal app/tool", v58, 2u);
      v59 = v58;
      v46 = v101;
      MEMORY[0x1C6942830](v59, -1, -1);
    }
  }

  if (v54)
  {
    sub_1C443113C(v27, v94);
    v68 = v27[v104];
    v69 = 0xE700000000000000;
    v106._countAndFlagsBits = 0xD000000000000010;
    v106._object = v103;
    v70 = 0x6E776F6E6B6E75;
    v71 = &xmmword_1EDDFD000;
    switch(v68)
    {
      case 1:
        v69 = 0xE400000000000000;
        v70 = 1819047270;
        break;
      case 2:
        v69 = 0xE500000000000000;
        v70 = 0x61746C6564;
        break;
      case 3:
        v70 = 0x69686374614D6F74;
        v69 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v70, v69);

    MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
    v72 = v106._countAndFlagsBits;
    v73 = v106._object;
    v74 = *(v35 + 48);
    v75 = *(v35 + 52);
    swift_allocObject();
    KeyValueStore.init(config:domain:)(v94, v72, v73);
    v76 = v27[v104];
    v77 = 0xE700000000000000;
    v106._countAndFlagsBits = 0xD000000000000010;
    v106._object = v103;
    switch(v76)
    {
      case 1:
        v77 = 0xE400000000000000;
        v78 = 1819047270;
        goto LABEL_48;
      case 2:
        v77 = 0xE500000000000000;
        v78 = 0x61746C6564;
LABEL_48:
        v91 = v78;
        break;
      case 3:
        v91 = 0x69686374614D6F74;
        v77 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v91, v77);

    MEMORY[0x1C6940010](0x756F69766572702ELL, 0xE900000000000073);
    KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(v106, 1, 1);
  }

  else
  {
    v71 = &xmmword_1EDDFD000;
  }

  sub_1C4454270();
  (*(v96 + 8))(v47, v62);
  sub_1C446F170(v46, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v79 = v97;
  v80 = *(v97 + 32);
  *(v97 + 32) = 0;

  *(v79 + 24) = 4;
  v81 = v100 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
  v82 = type metadata accessor for PhaseStores();
  v83 = *(v81 + v82[5]);
  sub_1C4A95964();
  v84 = *(v81 + v82[6]);
  sub_1C4A959A8();
  v85 = *(v81 + v82[7]);
  sub_1C4A959EC();
  if (*(v71 + 5) != -1)
  {
    swift_once();
  }

  v86 = sub_1C4F00978();
  sub_1C442B738(v86, qword_1EDE2DE10);
  v87 = sub_1C4F00968();
  v88 = sub_1C4F01CF8();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 67109376;
    *(v89 + 4) = v105 & 1;
    *(v89 + 8) = 2048;
    *(v89 + 10) = v95;
    _os_log_impl(&dword_1C43F8000, v87, v88, "Pipeline: run finished. c:%{BOOL}d,r:%lu", v89, 0x12u);
    MEMORY[0x1C6942830](v89, -1, -1);
  }
}

uint64_t sub_1C4AC4C6C(char a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v68 = a4;
  LODWORD(v67) = a3;
  v70 = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v62 - v8;
  v73 = sub_1C4EF9CD8();
  v71 = *(v73 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C456902C(&qword_1EC0C2AA8, &qword_1C4F4E070);
  v11 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v13 = (&v62 - v12);
  if (qword_1EDDF7B80 != -1)
  {
    swift_once();
  }

  v14 = xmmword_1EDE2D988;
  v15 = unk_1EDE2D998;
  v16 = xmmword_1EDE2D9A0;
  v90 = xmmword_1EDE2D988;
  v91 = unk_1EDE2D998;
  *&v92 = *(&xmmword_1EDE2D9A0 + 1);
  BYTE8(v92) = a1;
  v93 = xmmword_1EDE2D9A0;
  v88 = sub_1C456902C(&unk_1EC0C2E20, &qword_1C4F4E078);
  v89 = sub_1C4401CBC(&unk_1EDDF7CB8, &unk_1EC0C2E20, &qword_1C4F4E078);
  v17 = swift_allocObject();
  *&v87 = v17;
  v18 = v91;
  v17[1] = v90;
  v17[2] = v18;
  v19 = v93;
  v17[3] = v92;
  v17[4] = v19;
  v72 = sub_1C456902C(&unk_1EC0C2E30, &qword_1C4F4E080);
  inited = swift_initStackObject();
  v74 = xmmword_1C4F0D130;
  *(inited + 16) = xmmword_1C4F0D130;
  v65 = inited;
  sub_1C441D670(&v87, inited + 32);
  v94 = v14;
  v95 = v15;
  v96 = v16;
  v97 = a1;
  v98 = v16;
  sub_1C446F0D0(v16);
  sub_1C446F0D0(v16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446C964(&v90, &v84, &unk_1EC0C2E20, &qword_1C4F4E078);
  sub_1C446F170(&v94, &unk_1EC0C2E20, &qword_1C4F4E078);
  if (qword_1EDDF7B90 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDE2D9B0;
  v21 = *algn_1EDE2D9B8;
  v23 = qword_1EDE2D9C0;
  v24 = unk_1EDE2D9C8;
  v25 = qword_1EDE2D9D0;
  v26 = v66;
  (*(v71 + 16))(v13 + *(v66 + 44), v70, v73);
  *v13 = v22;
  v13[1] = v21;
  v13[2] = v23;
  v13[3] = v24;
  v13[4] = v25;
  v27 = (v13 + *(v26 + 48));
  *v27 = v24;
  v27[1] = v25;
  v85 = v26;
  v86 = sub_1C4401CBC(qword_1EDDF7CD8, &qword_1EC0C2AA8, &qword_1C4F4E070);
  v28 = sub_1C4422F90(&v84);
  sub_1C446C964(v13, v28, &qword_1EC0C2AA8, &qword_1C4F4E070);
  v29 = swift_initStackObject();
  *(v29 + 16) = v74;
  sub_1C441D670(&v84, v29 + 32);
  sub_1C446F0D0(v24);
  sub_1C446F0D0(v24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F170(v13, &qword_1EC0C2AA8, &qword_1C4F4E070);
  if (qword_1EDDF7BC0 != -1)
  {
    swift_once();
  }

  v30 = xmmword_1EDE2DA78;
  v31 = qword_1EDE2DA88;
  v32 = unk_1EDE2DA90;
  v33 = qword_1EDE2DA98;
  v82 = sub_1C456902C(&unk_1EC0C2E40, &qword_1C4F4E088);
  v83 = sub_1C4401CBC(&unk_1EDDF7CC8, &unk_1EC0C2E40, &qword_1C4F4E088);
  v34 = swift_allocObject();
  *&v81 = v34;
  *(v34 + 16) = v30;
  *(v34 + 32) = v31;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  *(v34 + 56) = v67;
  *(v34 + 57) = v99[0];
  *(v34 + 60) = *(v99 + 3);
  *(v34 + 64) = v32;
  *(v34 + 72) = v33;
  v35 = swift_initStackObject();
  *(v35 + 16) = v74;
  sub_1C441D670(&v81, v35 + 32);
  sub_1C446F0D0(v32);
  sub_1C446F0D0(v32);
  v36 = qword_1EDDF7BB8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v36 != -1)
  {
    swift_once();
  }

  v37 = v68 + 1;
  if (__OFADD__(v68, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v68 = v29;
  v38 = qword_1EDE2DA58;
  v39 = unk_1EDE2DA60;
  v40 = qword_1EDE2DA68;
  v41 = unk_1EDE2DA70;
  v42 = qword_1EDE2DA50;
  v79 = sub_1C456902C(&unk_1EC0C2E50, &unk_1C4F4E090);
  v80 = sub_1C4401CBC(&qword_1EDDF7C98, &unk_1EC0C2E50, &unk_1C4F4E090);
  v43 = swift_allocObject();
  *&v78 = v43;
  v43[2] = v42;
  v43[3] = v38;
  v43[4] = v39;
  v43[5] = v40;
  v43[6] = v41;
  v43[7] = v37;
  v43[8] = v40;
  v43[9] = v41;
  v36 = swift_initStackObject();
  *(v36 + 16) = v74;
  sub_1C441D670(&v78, v36 + 32);
  v44 = v64;
  sub_1C446C964(v63, v64, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v45 = v73;
  if (sub_1C44157D4(v44, 1, v73) != 1)
  {
    v67 = v35;
    v35 = v71;
    (*(v71 + 32))(v69, v44, v45);
    sub_1C446F0D0(v40);
    sub_1C446F0D0(v40);
    v47 = qword_1EDDF7AD8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v47 == -1)
    {
LABEL_13:
      v49 = qword_1EDE2D7A8;
      v48 = unk_1EDE2D7B0;
      v51 = qword_1EDE2D7B8;
      v50 = unk_1EDE2D7C0;
      v52 = qword_1EDE2D7C8;
      sub_1C4EF9CB8();
      v54 = v53;
      v76 = sub_1C456902C(&unk_1EC0C2E68, &qword_1C4F4E0A0);
      v77 = sub_1C4401CBC(&unk_1EDDF7CA0, &unk_1EC0C2E68, &qword_1C4F4E0A0);
      v55 = swift_allocObject();
      *&v75 = v55;
      v55[2] = v49;
      v55[3] = v48;
      v55[4] = v51;
      v55[5] = v50;
      v55[6] = v52;
      v55[7] = v54;
      v55[8] = v50;
      v55[9] = v52;
      v46 = swift_allocObject();
      *(v46 + 16) = v74;
      sub_1C441D670(&v75, v46 + 32);
      sub_1C446F0D0(v50);
      sub_1C446F0D0(v50);
      v56 = *(v35 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v56(v69, v73);
      v35 = v67;
      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_13;
  }

  sub_1C446F0D0(v40);
  sub_1C446F0D0(v40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F170(v44, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v46 = MEMORY[0x1E69E7CC0];
LABEL_14:
  sub_1C456902C(&qword_1EC0C2E60, &unk_1C4F54100);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_1C4F13950;
  v58 = v68;
  *(v57 + 32) = v65;
  *(v57 + 40) = v58;
  *(v57 + 48) = v35;
  *(v57 + 56) = v36;
  *(v57 + 64) = v46;
  sub_1C446F8F4(v57);
  v60 = v59;
  swift_setDeallocating();
  sub_1C446FAEC();
  return v60;
}

uint64_t sub_1C4AC5534()
{
  sub_1C43FBCD4();
  sub_1C4424774();
  v1 = v0[141];
  v2 = v0[135];
  v3 = v0[131];

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4AC55B4()
{
  sub_1C43FBCD4();
  sub_1C4424774();
  v1 = v0[142];
  v2 = v0[135];
  v3 = v0[131];

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4AC5634()
{
  sub_1C43FBCD4();
  sub_1C4424774();
  v1 = v0[139];
  v2 = v0[135];
  v3 = v0[131];

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4AC56A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4AC56C0, 0, 0);
}

uint64_t sub_1C4AC56C0()
{
  sub_1C43FBCD4();
  v1 = [objc_opt_self() sharedService];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService);
    *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1C4AC5788;
  v5 = *(v0 + 32);

  return sub_1C4AC5A88();
}

uint64_t sub_1C4AC5788()
{
  sub_1C43FCF70();
  v2 = v1;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v0;
  sub_1C43FBDAC();
  *v9 = v8;

  *(v4 + 16) = v2;
  v10 = (v4 + 16);
  v11 = swift_task_alloc();
  v10[4] = v11;
  *v11 = v8;
  v11[1] = sub_1C4AC58B0;
  v12 = v10[2];
  v13 = sub_1C440F4D4(v10[1]);

  return sub_1C448B910(v13, v10);
}

uint64_t sub_1C4AC58B0()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v2 + 48);
  *v4 = *v1;
  *(v3 + 56) = v0;

  v6 = *(v2 + 16);

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4AC59D0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService);
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService) = 0;

  sub_1C4EFFCB8();
  if (v1)
  {
    v4 = sub_1C43FF4D8();
  }

  else
  {
    sub_1C4F01948();
    sub_1C43FBCF0();
    v4 = v6 & 1;
  }

  return v5(v4);
}

uint64_t sub_1C4AC5A64()
{
  v1 = *(v0 + 56);
  v2 = sub_1C4409E50();
  return v3(v2);
}

uint64_t sub_1C4AC5A88()
{
  v1[152] = v0;
  v1[153] = *v0;
  v2 = type metadata accessor for PhaseStores();
  v1[154] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[155] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AC5B44, 0, 0);
}

uint64_t sub_1C4AC5B44()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1216);
  *(v0 + 1248) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
  sub_1C441A2F4();
  sub_1C443113C(v3 + v4, v5);
  *(v0 + 2137) = 1;
  v6 = type metadata accessor for RelationshipPhase();
  *(v0 + 1256) = v6;
  sub_1C43FD23C(v6);
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1264) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  v9 = sub_1C440F4D4(v8);

  return sub_1C447E5D8(v9, v10);
}

uint64_t sub_1C4AC5C10()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1264);
  *v2 = *v0;
  *(v1 + 1272) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC5CF8()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1216);
  *(v0 + 80) = *(v0 + 1256);
  sub_1C443F708();
  *(v0 + 88) = sub_1C4472508(v5, v6);
  *(v0 + 56) = v1;
  *(v0 + 1280) = sub_1C456902C(&qword_1EC0B8AA8, &unk_1C4F4E0E0);
  v7 = sub_1C44331AC();
  *(v0 + 1288) = v7;
  sub_1C4459BE0(v7, xmmword_1C4F0D130);
  sub_1C441D670((v0 + 56), v8);
  sub_1C441A2F4();
  sub_1C443113C(v4 + v2, v3);
  *(v0 + 2160) = 1;
  [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_1C43FBE94();
  v9 = type metadata accessor for ContactsPersonPhase();
  *(v0 + 1296) = v9;
  sub_1C43FD23C(v9);
  swift_allocObject();
  v10 = swift_task_alloc();
  *(v0 + 1304) = v10;
  *v10 = v0;
  sub_1C445E98C(v10);
  sub_1C4416368(v11);
  sub_1C4426C44();

  return sub_1C44758E8(v12, v13, v14, v15);
}

uint64_t sub_1C4AC5E50()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1304);
  *v2 = *v0;
  *(v1 + 1312) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC5F38()
{
  sub_1C43FEAEC();
  v4 = *(v1 + 1312);
  v5 = *(v1 + 1296);
  sub_1C441B4A0();
  *(v1 + 160) = v6;
  sub_1C4418510();
  v9 = sub_1C4472508(v7, v8);
  *(v1 + 1320) = v9;
  *(v1 + 168) = v9;
  *(v1 + 136) = v4;
  v10 = sub_1C440C6A0();
  *(v1 + 1328) = v10;
  sub_1C4459BE0(v10, xmmword_1C4F0D130);
  sub_1C441D670((v1 + 136), v11);
  sub_1C441A2F4();
  sub_1C443113C(v3 + v2, v0);
  *(v1 + 2158) = 1;
  v12 = type metadata accessor for HKEmergencyContactPhase();
  *(v1 + 1336) = v12;
  sub_1C43FD23C(v12);
  swift_allocObject();
  v13 = swift_task_alloc();
  *(v1 + 1344) = v13;
  *v13 = v1;
  sub_1C445E98C(v13);
  v15 = sub_1C440F4D4(v14);

  return sub_1C4887C68(v15, v16);
}

uint64_t sub_1C4AC6064()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1344);
  *v2 = *v0;
  *(v1 + 1352) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC614C()
{
  sub_1C43FEAEC();
  v4 = *(v1 + 1352);
  v5 = *(v1 + 1336);
  sub_1C441B4A0();
  *(v1 + 240) = v6;
  *(v1 + 248) = sub_1C4472508(&qword_1EDDE1FF0, type metadata accessor for HKEmergencyContactPhase);
  *(v1 + 216) = v4;
  v7 = sub_1C440C6A0();
  *(v1 + 1360) = v7;
  sub_1C4459BE0(v7, xmmword_1C4F0D130);
  sub_1C441D670((v1 + 216), v8);
  sub_1C441A2F4();
  sub_1C443113C(v3 + v2, v0);
  *(v1 + 2156) = 1;
  v9 = type metadata accessor for IntentsPersonPhase();
  *(v1 + 1368) = v9;
  sub_1C43FD23C(v9);
  swift_allocObject();
  v10 = swift_task_alloc();
  *(v1 + 1376) = v10;
  *v10 = v1;
  sub_1C445E98C(v10);
  v12 = sub_1C440F4D4(v11);

  return sub_1C494C7F0(v12, v13);
}

uint64_t sub_1C4AC6284()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1376);
  *v2 = *v0;
  *(v1 + 1384) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC636C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1368);
  sub_1C441769C();
  *(v0 + 320) = v3;
  *(v0 + 328) = sub_1C4472508(qword_1EDDE5AF8, type metadata accessor for IntentsPersonPhase);
  *(v0 + 296) = v1;
  v4 = sub_1C440C6A0();
  *(v0 + 1392) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 296), v4 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2154) = 1;
  v5 = type metadata accessor for BMAppleMusicEventPhase();
  *(v0 + 1400) = v5;
  sub_1C43FD23C(v5);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v0 + 1408) = v6;
  *v6 = v0;
  sub_1C445E98C(v6);
  sub_1C440F4D4(v7);
  sub_1C4426C44();

  return sub_1C4656CD4(v8, v9);
}

uint64_t sub_1C4AC6498()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1408);
  *v2 = *v0;
  *(v1 + 1416) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC6580()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1400);
  sub_1C441769C();
  *(v0 + 400) = v3;
  v4 = sub_1C4472508(&qword_1EDDE3230, type metadata accessor for BMAppleMusicEventPhase);
  *(v0 + 1424) = v4;
  *(v0 + 408) = v4;
  *(v0 + 376) = v1;
  v5 = sub_1C440C6A0();
  *(v0 + 1432) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 376), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2152) = 1;
  v6 = type metadata accessor for INGroupPhase();
  *(v0 + 1440) = v6;
  sub_1C43FD23C(v6);
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 1448) = v7;
  *v7 = v0;
  sub_1C445E98C(v7);
  sub_1C440F4D4(v8);
  sub_1C4426C44();

  return sub_1C4940F64(v9, v10);
}

uint64_t sub_1C4AC66B0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1448);
  *v2 = *v0;
  *(v1 + 1456) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC6798()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1440);
  sub_1C441769C();
  *(v0 + 480) = v3;
  *(v0 + 488) = sub_1C4472508(qword_1EDDEB5D8, type metadata accessor for INGroupPhase);
  *(v0 + 456) = v1;
  v4 = sub_1C440C6A0();
  *(v0 + 1464) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 456), v4 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2150) = 1;
  v5 = type metadata accessor for PhotosPersonPhase();
  *(v0 + 1472) = v5;
  sub_1C43FD23C(v5);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v0 + 1480) = v6;
  *v6 = v0;
  sub_1C445E98C(v6);
  sub_1C440F4D4(v7);
  sub_1C4426C44();

  return sub_1C4487D4C(v8, v9);
}

uint64_t sub_1C4AC68C4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1480);
  *v2 = *v0;
  *(v1 + 1488) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC69AC()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1472);
  sub_1C441769C();
  *(v0 + 560) = v3;
  sub_1C446035C();
  *(v0 + 568) = sub_1C4472508(v4, v5);
  *(v0 + 536) = v1;
  v6 = sub_1C440C6A0();
  *(v0 + 1496) = v6;
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 536), v6 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2148) = 1;
  v7 = type metadata accessor for FamilyCircleGroupPhase();
  *(v0 + 1504) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 1512) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C47CE144(v10, v11);
}

uint64_t sub_1C4AC6AC8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1512);
  *v2 = *v0;
  *(v1 + 1520) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC6BB0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1504);
  sub_1C441769C();
  *(v0 + 640) = v4;
  *(v0 + 648) = sub_1C4472508(qword_1EDDE2E90, type metadata accessor for FamilyCircleGroupPhase);
  *(v0 + 616) = v2;
  v5 = sub_1C440C6A0();
  *(v0 + 1528) = v5;
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 616), v5 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService;
  *(v0 + 1536) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService;
  v7 = *(v1 + v6);
  *(v0 + 2146) = 1;
  v8 = type metadata accessor for EventKitEventPhase();
  *(v0 + 1544) = v8;
  sub_1C43FD23C(v8);
  swift_allocObject();
  v9 = v7;
  v10 = swift_task_alloc();
  *(v0 + 1552) = v10;
  *v10 = v0;
  sub_1C445E98C(v10);
  sub_1C4414E5C(v11);
  sub_1C4426C44();

  return sub_1C478450C(v12, v13, v14);
}

uint64_t sub_1C4AC6CF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1552);
  *v2 = *v0;
  *(v1 + 1560) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC6DE0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1544);
  sub_1C441769C();
  *(v0 + 720) = v3;
  *(v0 + 728) = sub_1C4472508(qword_1EDDED548, type metadata accessor for EventKitEventPhase);
  *(v0 + 696) = v1;
  v4 = sub_1C440C6A0();
  *(v0 + 1568) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 696), v4 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2144) = 1;
  v5 = type metadata accessor for LSBundleRecordSoftwarePhase();
  *(v0 + 1576) = v5;
  sub_1C43FD23C(v5);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v0 + 1584) = v6;
  *v6 = v0;
  sub_1C445E98C(v6);
  sub_1C440F4D4(v7);
  sub_1C4426C44();

  return sub_1C4A2B8A8(v8, v9);
}

uint64_t sub_1C4AC6F0C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1584);
  *v2 = *v0;
  *(v1 + 1592) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC6FF4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1576);
  sub_1C441769C();
  *(v0 + 800) = v3;
  *(v0 + 808) = sub_1C4472508(qword_1EDDE05F0, type metadata accessor for LSBundleRecordSoftwarePhase);
  *(v0 + 776) = v1;
  v4 = sub_1C440C6A0();
  *(v0 + 1600) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 776), v4 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2142) = 1;
  v5 = type metadata accessor for PGRelationshipPhase();
  *(v0 + 1608) = v5;
  sub_1C43FD23C(v5);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v0 + 1616) = v6;
  *v6 = v0;
  sub_1C445E98C(v6);
  sub_1C440F4D4(v7);
  sub_1C4426C44();

  return sub_1C4489800(v8, v9);
}

uint64_t sub_1C4AC7120()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1616);
  *v2 = *v0;
  *(v1 + 1624) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC7208()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1280);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1224);
  v5 = *(v0 + 1216);
  *(v0 + 880) = *(v0 + 1608);
  sub_1C441AFE0();
  *(v0 + 888) = sub_1C4472508(v6, v7);
  *(v0 + 856) = v1;
  v8 = sub_1C44331AC();
  *(v0 + 1632) = v8;
  *(v8 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 856), v8 + 32);
  v9 = swift_task_alloc();
  *(v0 + 1640) = v9;
  *v9 = v0;
  v9[1] = sub_1C4AC7310;
  sub_1C4426C44();

  return sub_1C4ABB70C(v10);
}

uint64_t sub_1C4AC7310()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1640);
  *v2 = *v0;
  *(v1 + 1648) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC73F8()
{
  sub_1C4404D98();
  v1 = *(v0 + 1648);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = v1 + 32;
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448BD48(v4, v0 + 1136);
        v6 = *(v0 + 1160);
        v7 = *(v0 + 1168);
        v8 = sub_1C4409678((v0 + 1136), v6);
        v9 = sub_1C4AA7B20(v8, v6, v7);
        sub_1C440962C((v0 + 1136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v5 + 16);
          sub_1C4401E28();
          sub_1C458F0B4();
          v5 = v12;
        }

        v10 = *(v5 + 16);
        if (v10 >= *(v5 + 24) >> 1)
        {
          sub_1C4401E28();
          sub_1C458F0B4();
          v5 = v13;
        }

        *(v5 + 16) = v10 + 1;
        *(v5 + 8 * v10 + 32) = v9;
        v4 += 40;
        --v3;
      }

      while (v3);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    static PhaseBuilder.buildArray(_:)(v5);
    sub_1C4406834();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 1656) = v1;
  v14 = *(v0 + 1216) + *(v0 + 1248);
  if (Configuration.isLifeEventSourceEnabled.getter() & 1) != 0 || (v15 = *(v0 + 1216) + *(v0 + 1248), (Configuration.isAllSourcesEnabled.getter()))
  {
    v16 = *(v0 + 1248);
    v17 = *(v0 + 1240);
    v18 = *(v0 + 1216);
    sub_1C441A2F4();
    sub_1C443113C(v20 + v19, v21);
    *(v0 + 2159) = 1;
    v22 = type metadata accessor for LifeEventPhase();
    *(v0 + 1664) = v22;
    sub_1C43FD23C(v22);
    swift_allocObject();
    v23 = swift_task_alloc();
    *(v0 + 1672) = v23;
    *v23 = v0;
    sub_1C445E98C(v23);
    v25 = sub_1C440F4D4(v24);

    return sub_1C49C9C78(v25, v26);
  }

  else
  {
    *(v0 + 1688) = v2;
    v28 = *(v0 + 1248);
    v29 = *(v0 + 1240);
    v30 = *(v0 + 1216);
    sub_1C441A2F4();
    sub_1C443113C(v32 + v31, v33);
    *(v0 + 2141) = 1;
    v34 = type metadata accessor for ScreenTimePhase();
    *(v0 + 1696) = v34;
    sub_1C43FD23C(v34);
    swift_allocObject();
    v35 = swift_task_alloc();
    *(v0 + 1704) = v35;
    *v35 = v0;
    sub_1C445E98C(v35);
    v37 = sub_1C440F4D4(v36);

    return sub_1C4AF1E6C(v37, v38);
  }
}

uint64_t sub_1C4AC76A4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1672);
  *v2 = *v0;
  *(v1 + 1680) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC778C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1280);
  *(v0 + 120) = *(v0 + 1664);
  *(v0 + 128) = sub_1C4472508(&qword_1EDDE9700, type metadata accessor for LifeEventPhase);
  *(v0 + 96) = v1;
  v3 = sub_1C440C6A0();
  sub_1C4459BE0(v3, xmmword_1C4F0D130);
  sub_1C441D670((v0 + 96), v4);
  *(v0 + 1688) = v3;
  v5 = *(v0 + 1248);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1216);
  sub_1C441A2F4();
  sub_1C443113C(v9 + v8, v10);
  *(v0 + 2141) = 1;
  v11 = type metadata accessor for ScreenTimePhase();
  *(v0 + 1696) = v11;
  sub_1C43FD23C(v11);
  swift_allocObject();
  v12 = swift_task_alloc();
  *(v0 + 1704) = v12;
  *v12 = v0;
  sub_1C445E98C(v12);
  v14 = sub_1C440F4D4(v13);

  return sub_1C4AF1E6C(v14, v15);
}

uint64_t sub_1C4AC78C8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1704);
  *v2 = *v0;
  *(v1 + 1712) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC79B0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1712);
  v2 = *(v0 + 1696);
  sub_1C441769C();
  *(v0 + 960) = v3;
  *(v0 + 968) = sub_1C4472508(qword_1EDDE75C8, type metadata accessor for ScreenTimePhase);
  *(v0 + 936) = v1;
  v4 = sub_1C440C6A0();
  *(v0 + 1720) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 936), v4 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2139) = 1;
  v5 = type metadata accessor for FavoriteSportsTeamPhase();
  *(v0 + 1728) = v5;
  sub_1C43FD23C(v5);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v0 + 1736) = v6;
  *v6 = v0;
  sub_1C445E98C(v6);
  sub_1C440F4D4(v7);
  sub_1C4426C44();

  return sub_1C47D0B6C(v8, v9);
}

uint64_t sub_1C4AC7ADC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1736);
  *v2 = *v0;
  *(v1 + 1744) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC7BC4()
{
  sub_1C43FEAEC();
  v4 = *(v1 + 1744);
  v5 = *(v1 + 1728);
  v6 = *(v1 + 1536);
  sub_1C441B4A0();
  *(v1 + 1040) = v7;
  *(v1 + 1048) = sub_1C4472508(qword_1EDDE2210, type metadata accessor for FavoriteSportsTeamPhase);
  *(v1 + 1016) = v4;
  v8 = sub_1C440C6A0();
  *(v1 + 1752) = v8;
  *(v8 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v1 + 1016), v8 + 32);
  sub_1C441A2F4();
  sub_1C443113C(v3 + v2, v0);
  v9 = *(v3 + v6);
  *(v1 + 2161) = 1;
  v10 = type metadata accessor for FoundInAppsEventPhase();
  *(v1 + 1760) = v10;
  sub_1C43FD23C(v10);
  swift_allocObject();
  v11 = v9;
  v12 = swift_task_alloc();
  *(v1 + 1768) = v12;
  *v12 = v1;
  sub_1C445E98C(v12);
  v14 = sub_1C4414E5C(v13);

  return sub_1C480C688(v14, v15, v16);
}

uint64_t sub_1C4AC7D14()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1768);
  *v2 = *v0;
  *(v1 + 1776) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC7DFC()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1776);
  v2 = *(v0 + 1760);
  sub_1C441769C();
  *(v0 + 1120) = v3;
  *(v0 + 1128) = sub_1C4472508(qword_1EDDE3B98, type metadata accessor for FoundInAppsEventPhase);
  *(v0 + 1096) = v1;
  v4 = sub_1C440C6A0();
  *(v0 + 1784) = v4;
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 1096), v4 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2136) = 1;
  v5 = type metadata accessor for FoundInAppsPersonPhase();
  *(v0 + 1792) = v5;
  sub_1C43FD23C(v5);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v0 + 1800) = v6;
  *v6 = v0;
  sub_1C445E98C(v6);
  sub_1C440F4D4(v7);
  sub_1C4426C44();

  return sub_1C480D544(v8, v9);
}

uint64_t sub_1C4AC7F28()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1800);
  *v2 = *v0;
  *(v1 + 1808) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC8308()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1832);
  *v2 = *v0;
  *(v1 + 1840) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC83F0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1840);
  v2 = *(v0 + 1824);
  sub_1C441769C();
  *(v0 + 440) = v3;
  sub_1C4450788();
  *(v0 + 448) = sub_1C4472508(v4, v5);
  *(v0 + 416) = v1;
  v6 = sub_1C440C6A0();
  *(v0 + 1848) = v6;
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 416), v6 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2153) = 1;
  v7 = type metadata accessor for WalletEmailOrderEventPhase();
  *(v0 + 1856) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 1864) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4D44064(v10, v11);
}

uint64_t sub_1C4AC850C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1864);
  *v2 = *v0;
  *(v1 + 1872) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC85F4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1856);
  sub_1C441769C();
  *(v0 + 360) = v3;
  sub_1C441DDF8();
  *(v0 + 368) = sub_1C4472508(v4, v5);
  *(v0 + 336) = v1;
  v6 = sub_1C440C6A0();
  *(v0 + 1880) = v6;
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 336), v6 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2155) = 1;
  v7 = type metadata accessor for WalletClassicOrderEventPhase();
  *(v0 + 1888) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 1896) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4D3F768(v10, v11);
}

uint64_t sub_1C4AC8710()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1896);
  *v2 = *v0;
  *(v1 + 1904) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC87F8()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 1904);
  v2 = *(v0 + 1888);
  sub_1C441769C();
  *(v0 + 280) = v3;
  sub_1C445FE44();
  *(v0 + 288) = sub_1C4472508(v4, v5);
  *(v0 + 256) = v1;
  v6 = sub_1C440C6A0();
  *(v0 + 1912) = v6;
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 256), v6 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2157) = 1;
  v7 = type metadata accessor for WalletTransactionOrderEventPhase();
  *(v0 + 1920) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 1928) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4D5D318(v10, v11);
}

uint64_t sub_1C4AC8914()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1928);
  *v2 = *v0;
  *(v1 + 1936) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC8C7C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1968);
  *v2 = *v0;
  *(v1 + 1976) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC8D64()
{
  sub_1C43FCF70();
  v1 = *(v0 + 1976);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1320);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1248);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1216);
  *(v0 + 1000) = *(v0 + 1296);
  *(v0 + 1008) = v3;
  *(v0 + 976) = v1;
  v8 = sub_1C44331AC();
  *(v0 + 1984) = v8;
  *(v8 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 976), v8 + 32);
  sub_1C441A2F4();
  sub_1C443113C(v7 + v5, v6);
  *(v0 + 2140) = 2;
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  v11 = swift_task_alloc();
  *(v0 + 1992) = v11;
  *v11 = v0;
  sub_1C445E98C(v11);
  v13 = sub_1C440F4D4(v12);

  return sub_1C4656CD4(v13, v14);
}

uint64_t sub_1C4AC8E74()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 1992);
  *v2 = *v0;
  *(v1 + 2000) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC8F5C()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1248);
  v5 = *(v0 + 1216);
  *(v0 + 920) = *(v0 + 1400);
  *(v0 + 928) = v2;
  *(v0 + 896) = v1;
  v6 = sub_1C44331AC();
  *(v0 + 2008) = v6;
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 896), v6 + 32);
  if ((Configuration.isWalletOrderSourcesEnabled.getter() & 1) == 0)
  {
    v58 = *(v0 + 2008);
    v57 = *(v0 + 1984);
    v54 = *(v0 + 1816);
    v55 = *(v0 + 1960);
    v52 = *(v0 + 1752);
    v53 = *(v0 + 1784);
    v50 = *(v0 + 1688);
    v51 = *(v0 + 1720);
    v48 = *(v0 + 1632);
    v49 = *(v0 + 1656);
    v46 = *(v0 + 1568);
    v47 = *(v0 + 1600);
    v44 = *(v0 + 1496);
    v45 = *(v0 + 1528);
    v43 = *(v0 + 1464);
    v20 = *(v0 + 1432);
    v21 = *(v0 + 1392);
    v22 = *(v0 + 1360);
    v23 = *(v0 + 1328);
    v24 = *(v0 + 1288);
    v25 = *(v0 + 1280);
    v56 = *(v0 + 1240);
    v26 = type metadata accessor for RegisteredViewsGenerationFullPhase();
    v27 = swift_allocObject();
    sub_1C4413F70(v27, "ViewGenerationFullPipelinePhase");
    *(v0 + 840) = v26;
    sub_1C4435C54();
    *(v0 + 848) = sub_1C4472508(v28, v29);
    *(v0 + 816) = v27;
    v30 = sub_1C440C6A0();
    *(v30 + 16) = xmmword_1C4F0D130;
    v59 = *(v0 + 1944);
    sub_1C441D670((v0 + 816), v30 + 32);
    sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C4F453E0;
    *(v31 + 32) = v24;
    *(v31 + 40) = v23;
    *(v31 + 48) = v22;
    *(v31 + 56) = v21;
    *(v31 + 64) = v20;
    *(v31 + 72) = v43;
    v39 = sub_1C446BFF0(v31, v32, v33, v34, v35, v36, v37, v38, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    *(v39 + 21) = v59;
    v39[23] = v55;
    v39[24] = v57;
    v40 = MEMORY[0x1E69E7CC0];
    v39[25] = v58;
    v39[26] = v40;
    v39[27] = v30;
    static PhaseBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1C448B4C8();

    sub_1C43FBCF0();
    sub_1C4401D60();

    __asm { BRAA            X2, X16 }
  }

  v7 = *(v0 + 1248);
  v8 = *(v0 + 1240);
  v9 = *(v0 + 1216);
  sub_1C441A2F4();
  sub_1C443113C(v11 + v10, v12);
  *(v0 + 2143) = 2;
  v13 = type metadata accessor for WalletEmailOrderEventPhase();
  *(v0 + 2016) = v13;
  sub_1C43FD23C(v13);
  swift_allocObject();
  v14 = swift_task_alloc();
  *(v0 + 2024) = v14;
  *v14 = v0;
  sub_1C445E98C(v14);
  sub_1C440F4D4(v15);
  sub_1C4401D60();

  return sub_1C4D44064(v16, v17);
}

uint64_t sub_1C4AC9250()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 2024);
  *v2 = *v0;
  *(v1 + 2032) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC9338()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2016);
  sub_1C441769C();
  *(v0 + 760) = v3;
  sub_1C441DDF8();
  *(v0 + 768) = sub_1C4472508(v4, v5);
  *(v0 + 736) = v1;
  v6 = sub_1C440C6A0();
  *(v0 + 2040) = v6;
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 736), v6 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2145) = 2;
  v7 = type metadata accessor for WalletClassicOrderEventPhase();
  *(v0 + 2048) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 2056) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4D3F768(v10, v11);
}

uint64_t sub_1C4AC9454()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 2056);
  *v2 = *v0;
  *(v1 + 2064) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC953C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 2064);
  v2 = *(v0 + 2048);
  sub_1C441769C();
  *(v0 + 680) = v3;
  sub_1C445FE44();
  *(v0 + 688) = sub_1C4472508(v4, v5);
  *(v0 + 656) = v1;
  v6 = sub_1C440C6A0();
  *(v0 + 2072) = v6;
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 656), v6 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2147) = 2;
  v7 = type metadata accessor for WalletTrackedOrderEventPhase();
  *(v0 + 2080) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 2088) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4D58F70(v10, v11);
}

uint64_t sub_1C4AC9658()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 2088);
  *v2 = *v0;
  *(v1 + 2096) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4AC9740()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2080);
  sub_1C441769C();
  *(v0 + 600) = v3;
  sub_1C4450788();
  *(v0 + 608) = sub_1C4472508(v4, v5);
  *(v0 + 576) = v1;
  v6 = sub_1C440C6A0();
  *(v0 + 2104) = v6;
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 576), v6 + 32);
  sub_1C441A2F4();
  sub_1C442A990();
  *(v0 + 2149) = 2;
  v7 = type metadata accessor for WalletTransactionOrderEventPhase();
  *(v0 + 2112) = v7;
  sub_1C43FD23C(v7);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 2120) = v8;
  *v8 = v0;
  sub_1C445E98C(v8);
  sub_1C440F4D4(v9);
  sub_1C4426C44();

  return sub_1C4D5D318(v10, v11);
}

uint64_t sub_1C4AC985C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 2120);
  *v2 = *v0;
  *(v1 + 2128) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C4AC9944()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2040);
  v5 = *(v0 + 1280);
  *(v0 + 520) = *(v0 + 2112);
  sub_1C44341D0();
  *(v0 + 528) = sub_1C4472508(v6, v7);
  *(v0 + 496) = v1;
  v8 = sub_1C440C6A0();
  *(v8 + 16) = xmmword_1C4F0D130;
  sub_1C441D670((v0 + 496), v8 + 32);
  sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F0D480;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v8;
  v49 = static PhaseBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1C448B4C8();
  v47 = *(v0 + 1984);
  v48 = *(v0 + 2008);
  v45 = *(v0 + 1960);
  v42 = *(v0 + 1784);
  v43 = *(v0 + 1816);
  v40 = *(v0 + 1720);
  v41 = *(v0 + 1752);
  v38 = *(v0 + 1656);
  v39 = *(v0 + 1688);
  v36 = *(v0 + 1600);
  v37 = *(v0 + 1632);
  v34 = *(v0 + 1528);
  v35 = *(v0 + 1568);
  v32 = *(v0 + 1464);
  v33 = *(v0 + 1496);
  v10 = *(v0 + 1432);
  v11 = *(v0 + 1392);
  v12 = *(v0 + 1360);
  v13 = *(v0 + 1328);
  v14 = *(v0 + 1288);
  v15 = *(v0 + 1280);
  v44 = *(v0 + 1240);
  v16 = type metadata accessor for RegisteredViewsGenerationFullPhase();
  v17 = swift_allocObject();
  sub_1C4413F70(v17, "ViewGenerationFullPipelinePhase");
  *(v0 + 840) = v16;
  sub_1C4435C54();
  *(v0 + 848) = sub_1C4472508(v18, v19);
  *(v0 + 816) = v17;
  v20 = sub_1C440C6A0();
  *(v20 + 16) = xmmword_1C4F0D130;
  v46 = *(v0 + 1944);
  sub_1C441D670((v0 + 816), v20 + 32);
  sub_1C456902C(&qword_1EC0B8B18, &qword_1C4F0DF40);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C4F453E0;
  *(v21 + 32) = v14;
  *(v21 + 40) = v13;
  *(v21 + 48) = v12;
  *(v21 + 56) = v11;
  *(v21 + 64) = v10;
  *(v21 + 72) = v32;
  v29 = sub_1C446BFF0(v21, v22, v23, v24, v25, v26, v27, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  *(v29 + 21) = v46;
  v29[23] = v45;
  v29[24] = v47;
  v29[25] = v48;
  v29[26] = v49;
  v29[27] = v20;
  static PhaseBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1C448B4C8();

  sub_1C43FBCF0();
  sub_1C4401D60();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C4AC9BEC()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 56);

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4AC9D0C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 104);
  sub_1C4EFFCB8();
  if (v1)
  {
    v2 = sub_1C43FF4D8();
  }

  else
  {
    sub_1C4F01948();
    sub_1C43FBCF0();
    v2 = v4 & 1;
  }

  return v3(v2);
}

uint64_t sub_1C4AC9D88()
{
  v1 = *(v0 + 104);
  v2 = sub_1C4409E50();
  return v3(v2);
}

uint64_t sub_1C4AC9DAC(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = *(*(type metadata accessor for MatchExtractorService() - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = *(*(type metadata accessor for PhaseStores() - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AC9E74, 0, 0);
}

uint64_t sub_1C4AC9E74()
{
  sub_1C43FCF70();
  if (qword_1EDDF7BB0 != -1)
  {
    sub_1C440D748();
  }

  v1 = *(v0 + 208);
  v2 = *&qword_1EDE2DA38;
  *(v0 + 112) = xmmword_1EDE2DA28;
  *(v0 + 128) = v2;
  *(v0 + 144) = qword_1EDE2DA48;
  sub_1C446ABD0(0);
  sub_1C440F1BC();
  sub_1C448B734();

  sub_1C4F01968();
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  *(v0 + 248) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores;
  sub_1C441A2F4();
  sub_1C443113C(v5 + v6, v7);
  *(v0 + 448) = 3;
  [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_1C43FBE94();
  v8 = type metadata accessor for ContactsPersonPhase();
  sub_1C43FD23C(v8);
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  *v9 = v0;
  v9[1] = sub_1C4ACA018;
  v10 = sub_1C4416368(*(v0 + 240));

  return sub_1C44758E8(v10, v11, v12, v13);
}

uint64_t sub_1C4ACA018()
{
  sub_1C43FCF70();
  v2 = v1;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 256);
  v8 = *v0;
  sub_1C43FBDAC();
  *v9 = v8;
  *(v4 + 264) = v2;

  sub_1C4408F38(&unk_1C4F4E128);
  v13 = v10;
  v11 = swift_task_alloc();
  *(v4 + 272) = v11;
  *v11 = v8;
  sub_1C43FC688(v11);

  return v13();
}

uint64_t sub_1C4ACA13C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4ACA234()
{
  sub_1C43FEAEC();
  v18 = v0;
  v1 = *(v0 + 280);
  sub_1C4F01968();
  if (v1)
  {
    v4 = *(v0 + 264);

    sub_1C4462830();

    v5 = sub_1C43FF4D8();

    return v6(v5);
  }

  else
  {
    if (qword_1EDDF7BA0 != -1)
    {
      sub_1C442539C();
    }

    v2 = *(v0 + 208);
    v3 = *algn_1EDE2DA10;
    *(v0 + 152) = xmmword_1EDE2DA00;
    *(v0 + 168) = v3;
    *(v0 + 184) = qword_1EDE2DA20;
    sub_1C446ABD0(0);
    sub_1C440F1BC();
    sub_1C448B734();
    *(v0 + 288) = 0;
    v8 = *(v0 + 248);
    v9 = *(v0 + 232);
    v10 = *(v0 + 216);

    v17[0] = 3;
    sub_1C4AC3480(v17);
    *(v0 + 296) = sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(v0 + 304) = inited;
    *(inited + 16) = xmmword_1C4F10430;
    sub_1C441A2F4();
    sub_1C443113C(v10 + v8, v9);
    *(v0 + 449) = 3;
    matched = type metadata accessor for INPersonMatchExtractor();
    sub_1C43FD23C(matched);
    swift_allocObject();
    v13 = swift_task_alloc();
    *(v0 + 312) = v13;
    *v13 = v0;
    sub_1C44B8FDC(v13);
    v15 = sub_1C440F4D4(v14);

    return sub_1C494C02C(v15, v16);
  }
}

uint64_t sub_1C4ACA424()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 312);
  *v2 = *v0;
  *(v1 + 320) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4ACA50C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  *(*(v0 + 304) + 32) = *(v0 + 320);
  sub_1C441A2F4();
  sub_1C443113C(v3 + v4, v5);
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService;
  *(v0 + 328) = OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_geoMapService;
  v7 = *(v3 + v6);
  *(v0 + 450) = 3;
  matched = type metadata accessor for EventKitEventMatchExtractor();
  sub_1C43FD23C(matched);
  swift_allocObject();
  v9 = v7;
  v10 = swift_task_alloc();
  *(v0 + 336) = v10;
  *v10 = v0;
  sub_1C44B8FDC(v10);
  v12 = sub_1C4414E5C(v11);

  return sub_1C4783C94(v12, v13, v14);
}

uint64_t sub_1C4ACA5FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 336);
  *v2 = *v0;
  *(v1 + 344) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4ACA6E4()
{
  sub_1C43FCF70();
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  *(v3 + 40) = *(v0 + 344);
  *(v0 + 192) = v3;
  inited = swift_initStackObject();
  *(v0 + 352) = inited;
  *(inited + 16) = xmmword_1C4F10430;
  sub_1C441A2F4();
  sub_1C443113C(v6 + v4, v5);
  v8 = *(v6 + v1);
  *(v0 + 451) = 3;
  matched = type metadata accessor for FoundInAppsEventMatchExtractor();
  sub_1C43FD23C(matched);
  swift_allocObject();
  v10 = v8;
  v11 = swift_task_alloc();
  *(v0 + 360) = v11;
  *v11 = v0;
  sub_1C44B8FDC(v11);
  v13 = sub_1C4414E5C(v12);

  return sub_1C480BE6C(v13, v14, v15);
}

uint64_t sub_1C4ACA7EC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 368) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4ACA8D4()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  *(*(v0 + 352) + 32) = *(v0 + 368);
  sub_1C441A2F4();
  sub_1C443113C(v5 + v4, v6);
  *(v0 + 452) = 3;
  matched = type metadata accessor for FoundInAppsPersonMatchExtractor();
  sub_1C43FD23C(matched);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *v8 = v0;
  sub_1C44B8FDC(v8);
  v10 = sub_1C440F4D4(v9);

  return sub_1C480CD80(v10, v11);
}

uint64_t sub_1C4ACA9A0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 376);
  *v2 = *v0;
  *(v1 + 384) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4ACAA88()
{
  v57 = v0;
  v1 = v0[44];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  *(v1 + 40) = v0[48];
  sub_1C49D4BB0(v1);
  sub_1C441A2F4();
  sub_1C443113C(v5 + v2, v3);
  sub_1C4A2F088(v3, v4);
  v0[25] = MEMORY[0x1E69E7CC8];
  v6 = v0 + 25;
  v0[49] = v0[24];
  v7 = sub_1C4428DA0();
  v8 = v0[36];
  v0[50] = v7;
  v0[51] = 1;
  v0[52] = 0;
  v9 = v0[49];
  if (!v7)
  {
    v52 = v8;
    v53 = v0;

    v14 = *v6;
    v15 = *v6 + 64;
    v16 = *(*v6 + 32);
    sub_1C4401700();
    v19 = v18 & v17;
    v21 = (63 - v20) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = 0;
    v54 = v14;
    while (v19)
    {
      v23 = v22;
LABEL_12:
      v24 = __clz(__rbit64(v19)) | (v23 << 6);
      v25 = (*(v14 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v14 + 56) + 8 * v24);
      v29 = qword_1EDDFD028;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v29 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v19 &= v19 - 1;
      v30 = sub_1C4F00978();
      sub_1C442B738(v30, qword_1EDE2DE10);
      sub_1C4426A94();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v31 = sub_1C4F00968();
      v32 = sub_1C4F01CF8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        log = v31;
        v56 = sub_1C43FFD34();
        v34 = v56;
        *v33 = 136315394;
        v35 = sub_1C441D828(v26, v27, &v56);

        *(v33 + 4) = v35;
        *(v33 + 12) = 2048;
        v36 = *(v28 + 16);

        *(v33 + 14) = v36;

        _os_log_impl(&dword_1C43F8000, log, v32, "Pipeline: For entity type %s, %ld pairs were extracted.", v33, 0x16u);
        sub_1C440962C(v34);
        sub_1C43FBE2C();
        v14 = v54;
        sub_1C43FBE2C();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v22 = v23;
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        sub_1C4F01968();
        if (v52)
        {
          v41 = v53[33];
          v42 = v53[28];
          sub_1C44078AC();
          sub_1C4454270();

LABEL_24:

          sub_1C4462830();

          sub_1C43FF4D8();
LABEL_25:
          sub_1C4409A94();

          __asm { BRAA            X2, X16 }
        }

        v23 = v53;
        v40 = sub_1C447E32C();
        sub_1C446ABD0(v40);
        sub_1C440F1BC();
        sub_1C448B734();
        v45 = v53[28];

        if ((sub_1C4A2F2BC(v14) & 1) == 0)
        {
          v46 = v53[28];
          sub_1C4A2F358(v14);
        }

        v47 = sub_1C447E32C();
        sub_1C446ABD0(v47);
LABEL_32:
        sub_1C4406834();
        sub_1C440F1BC();
        sub_1C448B734();
        v48 = *(v23 + 264);

        sub_1C4F01948();

        v50 = *(v23 + 232);
        v49 = *(v23 + 240);
        v51 = *(v23 + 224);
        sub_1C44078AC();
        sub_1C4454270();

        sub_1C444B24C();
        goto LABEL_25;
      }

      v19 = *(v15 + 8 * v23);
      v22 = (v22 + 1);
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v10 = v9 & 0xC000000000000001;
  sub_1C4431590(0, (v9 & 0xC000000000000001) == 0);
  v11 = v0[49];
  if (v10)
  {
    v12 = MEMORY[0x1C6940F90](0, v11);
  }

  else
  {
    v12 = *(v11 + 32);
  }

  v0[53] = v12;
  sub_1C4F01968();
  if (v8)
  {
    sub_1C445139C();

    sub_1C44078AC();
    sub_1C4454270();
    v13 = v0[25];
    goto LABEL_24;
  }

  v37 = swift_task_alloc();
  v0[54] = v37;
  *v37 = v0;
  sub_1C442F328(v37);
  sub_1C4409A94();

  return sub_1C4A2DDE8();
}

uint64_t sub_1C4ACB048()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[55] = v0;

  if (v0)
  {
    v9 = v3[49];

    v10 = v3[25];
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4ACB150()
{
  v77 = v0;
  v1 = v0[55];
  v2 = v0[28];
  v3 = *(v0[53] + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4ABCF60(MEMORY[0x1E69E7CC8], v3, v2);

  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v75 = sub_1C4F00978();
  sub_1C43FCEE8(v75, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1C43FD084();
    v8 = sub_1C43FFD34();
    v76[0] = v8;
    *v7 = 136315138;
    sub_1C456902C(&unk_1EC0C2EB0, &qword_1C4F32390);
    v9 = sub_1C4F00EE8();
    v11 = sub_1C441D828(v9, v10, v76);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Pipeline: for this extractor, linked pairs are: %s", v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v12 = v0[51];
  v13 = v0[52];
  v14 = v0[28];
  sub_1C4A31734(v0 + 25, v4);

  if (v13 == 0x7FFFFFFFFFFFFFFELL)
  {
    __break(1u);
    goto LABEL_45;
  }

  v15 = sub_1C447E32C();
  sub_1C446ABD0(v15);
  if (v1)
  {
    v16 = v0[53];
    v17 = v0[49];
    v18 = v0[33];
    v19 = v0[28];

    sub_1C44078AC();
    sub_1C4454270();
    v22 = v0[25];

LABEL_9:
    sub_1C4462830();

    sub_1C43FF4D8();
    goto LABEL_10;
  }

  v20 = v12 + 1;
  sub_1C440F1BC();
  sub_1C448B734();
  v21 = v0[53];

  v25 = v0[52] + 1;
  v0[51] = v20;
  v0[52] = v25;
  v26 = v0[49];
  if (v25 == v0[50])
  {
    v70 = v20;

    v27 = v0[25];
    v29 = *(v27 + 64);
    v28 = v27 + 64;
    v30 = *(v27 + 32);
    sub_1C4401700();
    v33 = v32 & v31;
    v35 = (63 - v34) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v36 = 0;
    v71 = v27;
    while (v33)
    {
      v37 = v36;
LABEL_20:
      v38 = __clz(__rbit64(v33)) | (v37 << 6);
      v39 = (*(v27 + 48) + 16 * v38);
      v40 = v39[1];
      v73 = *v39;
      v41 = *(*(v27 + 56) + 8 * v38);
      v42 = qword_1EDDFD028;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v42 != -1)
      {
        swift_once();
      }

      v33 &= v33 - 1;
      sub_1C442B738(v75, qword_1EDE2DE10);
      sub_1C4426A94();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CF8();

      log = v43;
      if (os_log_type_enabled(v43, v44))
      {
        swift_slowAlloc();
        v72 = sub_1C44117BC();
        v76[0] = v72;
        *v27 = 136315394;
        v45 = sub_1C441D828(v73, v40, v76);

        *(v27 + 4) = v45;
        *(v27 + 12) = 2048;
        v46 = *(v41 + 16);

        *(v27 + 14) = v46;

        _os_log_impl(&dword_1C43F8000, log, v44, "Pipeline: For entity type %s, %ld pairs were extracted.", v27, 0x16u);
        sub_1C440962C(v72);
        sub_1C43FBE2C();
        v27 = v71;
        sub_1C43FBE2C();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v36 = v37;
    }

    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v35)
      {

        sub_1C4F01968();
        if (__OFADD__(v70, 1))
        {
          __break(1u);
        }

        else
        {
          v50 = sub_1C447E32C();
          sub_1C446ABD0(v50);
          sub_1C440F1BC();
          sub_1C448B734();
          v54 = v0[28];

          v55 = sub_1C4A2F2BC(v27);
          if ((v55 & 1) == 0)
          {
            v56 = v0[28];
            sub_1C4A2F358(v27);
          }

          if (!__OFADD__(v70 + 1, 1))
          {
            v63 = sub_1C447E32C();
            v27 = 0;
            sub_1C446ABD0(v63);
            goto LABEL_42;
          }
        }

        __break(1u);
        sub_1C4419274();
        swift_once();
        sub_1C43FCEE8(v75, qword_1EDE2DE10);
        v57 = sub_1C4F00968();
        v58 = sub_1C4F01CF8();
        v59 = os_log_type_enabled(v57, v58);
        v60 = v0[33];
        if (v59)
        {
          *sub_1C43FCED0() = 0;
          sub_1C4402B90(&dword_1C43F8000, v61, v62, "Pipeline: Error while writing linked pairs to json.");
          sub_1C43FBE2C();
        }

LABEL_46:
        v68 = v0[29];
        v67 = v0[30];
        v69 = v0[28];
        sub_1C44078AC();
        sub_1C4454270();

        sub_1C444B24C();
LABEL_10:
        sub_1C4409A94();

        __asm { BRAA            X2, X16 }
      }

      v33 = *(v28 + 8 * v37);
      ++v36;
      if (v33)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_42:
    sub_1C440F1BC();
    sub_1C448B734();
    if (v27)
    {
      v64 = v0[33];
      v65 = v0[28];

      sub_1C44078AC();
      sub_1C4454270();
      goto LABEL_9;
    }

LABEL_45:
    v66 = v0[33];

    sub_1C4F01948();

    goto LABEL_46;
  }

  v47 = v26 & 0xC000000000000001;
  sub_1C4431590(v25, (v26 & 0xC000000000000001) == 0);
  v48 = v0[49];
  if (v47)
  {
    v49 = MEMORY[0x1C6940F90](v25, v48);
  }

  else
  {
    v49 = *(v48 + 8 * v25 + 32);
  }

  v0[53] = v49;
  sub_1C4F01968();
  v51 = swift_task_alloc();
  v0[54] = v51;
  *v51 = v0;
  sub_1C442F328();
  sub_1C4409A94();

  return sub_1C4A2DDE8();
}

uint64_t sub_1C4ACB8D4()
{
  sub_1C43FCF70();
  v1 = v0[33];

  v2 = v0[35];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  v6 = sub_1C4409E50();

  return v7(v6);
}

uint64_t sub_1C4ACB954()
{
  sub_1C43FCF70();
  v1 = v0[53];
  v2 = v0[33];
  v3 = v0[28];

  sub_1C44078AC();
  sub_1C4454270();
  v4 = v0[55];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];

  v8 = sub_1C4409E50();

  return v9(v8);
}

uint64_t sub_1C4ACB9F0()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Source();
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4ACBA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_1C44249B4();
  a17 = v19;
  a18 = v20;
  sub_1C4404D98();
  a16 = v18;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  if (static NSUserDefaults.isGraphStoreManuallyOverridden.getter())
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v21 = v18[6];
    v22 = v18[3];
    v23 = sub_1C4F00978();
    v24 = sub_1C442B738(v23, qword_1EDE2DE10);
    sub_1C4413658();
    v25 = sub_1C43FBC98();
    sub_1C443113C(v25, v26);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();
    v29 = sub_1C4402B64(v28);
    v30 = v18[6];
    if (v29)
    {
      v31 = v18[5];
      sub_1C43FD084();
      v32 = sub_1C44117BC();
      a9 = v32;
      *v24 = 136315138;
      sub_1C442BE64();
      sub_1C44760B0(v30, v31);
      v33 = *v31;
      v34 = v31[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440FA8C();
      sub_1C4454270();
      v35 = sub_1C441D828(v33, v34, &a9);

      *(v24 + 4) = v35;
      sub_1C4402B48();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      sub_1C440962C(v32);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    else
    {

      sub_1C440FA8C();
      sub_1C4454270();
    }

    v56 = v18[5];
    v55 = v18[6];

    sub_1C43FC1B0();
    sub_1C442642C();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10);
  }

  else
  {
    v42 = v18[3];
    v41 = v18[4];
    v43 = v18[2];
    v44 = swift_task_alloc();
    v18[7] = v44;
    v44[2] = v41;
    v44[3] = v43;
    v44[4] = v42;
    v45 = *(MEMORY[0x1E69E8920] + 4);
    v46 = swift_task_alloc();
    v18[8] = v46;
    *v46 = v18;
    v46[1] = sub_1C4ACBCF0;
    sub_1C43FEAF8();
    sub_1C442642C();

    return MEMORY[0x1EEE6DE38](v47, v48, v49, v50, v51, v52, v53, v54);
  }
}

uint64_t sub_1C4ACBCF0()
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

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4ACBDF0()
{
  sub_1C43FBCD4();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C4ACBE50()
{
  sub_1C43FBCD4();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  sub_1C43FBDA0();
  v5 = v0[9];

  return v4();
}

uint64_t sub_1C4ACBEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v7 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Source();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v20 = *(a2 + 16);
  sub_1C443113C(a4, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = (v14 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  sub_1C44760B0(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  (*(v8 + 32))(v17 + v16, v11, v7);

  sub_1C4EFC778();
}

uint64_t sub_1C4ACC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(type metadata accessor for Source() - 8);
  v4[8] = v5;
  v4[9] = *(v5 + 64);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4ACC1C4, 0, 0);
}

uint64_t sub_1C4ACC1C4()
{
  sub_1C43FEAEC();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  *(v0 + 112) = 2;
  sub_1C4413658();
  sub_1C443113C(v6, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v0 + 88) = v8;
  sub_1C442BE64();
  sub_1C44760B0(v1, v9 + v7);
  *(v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;

  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_1C4ACC2F8;
  v11 = *(v0 + 32);
  v12 = sub_1C440F4D4(*(v0 + 40));

  return sub_1C446D32C(v12, (v0 + 112), v13, v8);
}

uint64_t sub_1C4ACC2F8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4ACC3F8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C4F01818();
  v2 = *(v0 + 80);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4ACC470()
{
  sub_1C4404D98();
  v23 = v0;
  v1 = v0[11];

  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v2 = v0[13];
  v3 = sub_1C4F00978();
  sub_1C43FCEE8(v3, qword_1EDE2DE10);
  v4 = v2;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    sub_1C43FD084();
    v8 = sub_1C44117BC();
    v22 = v8;
    *v2 = 136315138;
    v0[3] = v7;
    v9 = v7;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v10 = sub_1C4F01198();
    v12 = sub_1C441D828(v10, v11, &v22);

    *(v2 + 1) = v12;
    sub_1C4402B48();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FEA20();
    sub_1C43FE9D4();
  }

  v18 = v0[7];
  v0[2] = v0[13];
  sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C4F01808();
  v19 = v0[10];

  sub_1C43FBDA0();

  return v20();
}

uint64_t sub_1C4ACC61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = *(*(type metadata accessor for Configuration() - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Source() - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[34] = v6;
  *v6 = v3;
  v6[1] = sub_1C4ACC748;

  return sub_1C46BC754();
}

uint64_t sub_1C4ACC748()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4ACC840()
{
  v49 = v0;
  if (!*(v0 + 200))
  {
    sub_1C446F170(v0 + 176, &qword_1EC0C2ED0, qword_1C4F1E888);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v5 = *(v0 + 264);
    v6 = *(v0 + 224);
    v7 = sub_1C4F00978();
    v8 = sub_1C442B738(v7, qword_1EDE2DE10);
    sub_1C4413658();
    v9 = sub_1C43FBC98();
    sub_1C443113C(v9, v10);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    v13 = sub_1C4402B64(v12);
    v14 = *(v0 + 264);
    if (v13)
    {
      v15 = *(v0 + 248);
      sub_1C43FD084();
      v16 = sub_1C44117BC();
      v48[0] = v16;
      *v8 = 136315138;
      sub_1C442BE64();
      sub_1C44760B0(v14, v15);
      v17 = *v15;
      v18 = v15[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440FA8C();
      sub_1C4454270();
      v19 = sub_1C441D828(v17, v18, v48);

      *(v8 + 4) = v19;
      sub_1C4402B48();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      sub_1C440962C(v16);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    else
    {

      sub_1C440FA8C();
      sub_1C4454270();
    }

    sub_1C4F01948();
    sub_1C443E3B4();

    sub_1C444B24C();
LABEL_16:
    sub_1C4410B00();

    __asm { BRAA            X2, X16 }
  }

  sub_1C441D670((v0 + 176), v0 + 136);
  if (qword_1EDDF7BB0 != -1)
  {
    sub_1C440D748();
  }

  v1 = *(v0 + 280);
  v2 = *(v0 + 216);
  v3 = qword_1EDE2DA48;
  v4 = *&qword_1EDE2DA38;
  *(v0 + 16) = xmmword_1EDE2DA28;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  sub_1C446ABD0(0);
  if (v1)
  {
    sub_1C445C1D0();

    sub_1C43FF4D8();
    goto LABEL_16;
  }

  sub_1C440F1BC();
  sub_1C448B734();
  v25 = *(v0 + 232);

  LOBYTE(v48[0]) = 2;
  sub_1C4AC3480(v48);
  v26 = *(v0 + 168);
  sub_1C4409678((v0 + 136), *(v0 + 160));
  v27 = *(*(v26 + 8) + 32);
  v28 = sub_1C4406834();
  v29(v28);
  if (qword_1EDDF7B58 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 216);
  v31 = unk_1EDE2D948;
  *(v0 + 56) = xmmword_1EDE2D938;
  *(v0 + 72) = v31;
  *(v0 + 88) = qword_1EDE2D958;
  v32 = *(v0 + 168);
  sub_1C4409678((v0 + 136), *(v0 + 160));
  v33 = *(*(v32 + 8) + 8);
  sub_1C4406834();
  v34 = sub_1C4F02858();
  v36 = v35;
  v37 = sub_1C446ABD0(0);
  sub_1C448DA58(v34, v36, v37, 0, 0);

  v40 = *(v0 + 168);
  sub_1C4409678((v0 + 136), *(v0 + 160));
  v41 = swift_task_alloc();
  *(v0 + 288) = v41;
  v42 = *(v40 + 8);
  *v41 = v0;
  v41[1] = sub_1C4ACCC3C;
  sub_1C4414E5C(*(v0 + 216));
  sub_1C4410B00();

  return sub_1C448BF44(v43, v44, v45);
}

uint64_t sub_1C4ACCC3C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 296) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C4ACCD34()
{
  if (qword_1EDDF7BA0 != -1)
  {
    sub_1C442539C();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  v3 = *algn_1EDE2DA10;
  *(v0 + 96) = xmmword_1EDE2DA00;
  *(v0 + 112) = v3;
  *(v0 + 128) = qword_1EDE2DA20;
  sub_1C446ABD0(0);
  if (!v1)
  {
    sub_1C440F1BC();
    sub_1C448B734();
    v4 = *(v0 + 256);
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);

    sub_1C440B110();
    sub_1C443113C(v6 + v9, v5);
    sub_1C4413658();
    sub_1C443113C(v8, v4);
    v10 = type metadata accessor for RegisteredViewsGenerationDeltaPhase(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    *(v0 + 304) = sub_1C4AA81FC(v5, v4);
    v11 = sub_1C4852348();
    v13 = v12;
    v14 = sub_1C446ABD0(0);
    sub_1C448DA58(v11, v13, v14, 0, 0);

    sub_1C4408F38(&unk_1C4F4E170);
    v17 = swift_task_alloc();
    *(v0 + 312) = v17;
    *v17 = v0;
    v17[1] = sub_1C4ACCF74;
    sub_1C440F4D4(*(v0 + 216));
    sub_1C4410B00();

    __asm { BR              X1 }
  }

  sub_1C445C1D0();

  sub_1C43FF4D8();
  sub_1C4410B00();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C4ACCF74()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 320) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4ACD06C()
{
  sub_1C43FEAEC();
  v1 = v0[40];
  v2 = v0[27];
  sub_1C446ABD0(0);
  if (v1)
  {
    v3 = v0[38];

    sub_1C445C1D0();

    v4 = sub_1C43FF4D8();
  }

  else
  {
    sub_1C440F1BC();
    sub_1C448B734();

    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C43FCEE8(v7, qword_1EDE2DE10);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C4402B64(v9))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B48();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      sub_1C43FE9D4();
    }

    v15 = v0[38];

    sub_1C4F01948();

    sub_1C440962C(v0 + 17);
    sub_1C443E3B4();

    v4 = sub_1C444B24C();
  }

  return v5(v4);
}

uint64_t sub_1C4ACD1F0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 280);
  sub_1C443E3B4();

  v2 = sub_1C4409E50();

  return v3(v2);
}

uint64_t sub_1C4ACD268()
{
  sub_1C43FCF70();
  sub_1C440962C((v0 + 136));
  v1 = *(v0 + 296);
  sub_1C443E3B4();

  v2 = sub_1C4409E50();

  return v3(v2);
}

uint64_t sub_1C4ACD2E8()
{
  sub_1C43FCF70();
  v1 = v0[38];

  sub_1C440962C(v0 + 17);
  v2 = v0[40];
  sub_1C443E3B4();

  v3 = sub_1C4409E50();

  return v4(v3);
}

uint64_t type metadata accessor for Pipeline()
{
  result = qword_1EDDF0A98;
  if (!qword_1EDDF0A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4ACD3C4()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for PhaseStores();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4ACD4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for GraphDatabase, sub_1C4851D4C, sub_1C4660690);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for BehaviorDatabase, sub_1C45EE02C, sub_1C4660C4C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for GlobalKnowledgeDatabase, GlobalKnowledgeDatabase.init(config:), sub_1C4660E9C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4415624(a1, a2, sub_1C44019F8, type metadata accessor for OntologyDatabase, sub_1C44F7E2C, sub_1C44F7DB8);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for EventLogDatabase, EventLogDatabase.init(config:), sub_1C4661EC4);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4415624(a1, a2, sub_1C44019F8, type metadata accessor for ViewGeneration.ViewGenerators, sub_1C4C891D4, sub_1C4662500);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, _s19SyncDeviceRetrieverCMa, sub_1C4CEA5EC, sub_1C4662774);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for ViewUpdate.FrontEventQueue, sub_1C4CE79AC, sub_1C466279C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD8CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4AC06D0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4ACD8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C43FE424(a1, a2, sub_1C44019F8, type metadata accessor for QIDDatabase, sub_1C4AD9D08, sub_1C466283C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1C4ACD9E4()
{
  result = qword_1EDDF7ED8[0];
  if (!qword_1EDDF7ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF7ED8);
  }

  return result;
}

uint64_t sub_1C4ACDA70()
{
  v1 = *(v0 + 16);
  sub_1C4ABDBFC();
  return v2 & 1;
}

uint64_t sub_1C4ACDADC()
{
  v1 = *(v0 + 16);
  sub_1C4ABDBFC();
  return v2 & 1;
}

uint64_t sub_1C4ACDB6C()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);
  v3 = sub_1C43FBC98();

  return sub_1C4AC56A0(v3, v4);
}

uint64_t sub_1C4ACDBF4()
{
  sub_1C43FBCD4();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);
  v3 = sub_1C43FBC98();

  return sub_1C4AC9DAC(v3, v4);
}

uint64_t sub_1C4ACDD30()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = type metadata accessor for Source();
  sub_1C43FCF7C(v1);
  v4 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C43FBD18(v5);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = swift_task_alloc();
  v11 = sub_1C43FC218(v10);
  *v11 = v12;
  v11[1] = sub_1C442E8C4;
  sub_1C4426C44();

  return sub_1C4ACC0FC(v13, v14, v15, v16);
}

uint64_t sub_1C4ACDE60()
{
  sub_1C43FCF70();
  sub_1C4403FC0();
  v2 = type metadata accessor for Source();
  sub_1C43FCF7C(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v1 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = sub_1C43FC218(v7);
  *v8 = v9;
  v8[1] = sub_1C4ACDF54;

  return sub_1C4ACC61C(v0, v1 + v4, v6);
}

uint64_t sub_1C4ACDF54()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1C43FBDAC();
  *v6 = v5;

  sub_1C43FBCF0();

  return v7(v2);
}

uint64_t sub_1C4ACE03C()
{
  v1 = type metadata accessor for Configuration();
  sub_1C43FBD18(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1C4AC2158(v3);
}

uint64_t sub_1C4ACE0A8()
{
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
}

uint64_t sub_1C4ACE0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  if (swift_dynamicCast())
  {
    v8 = 0;
    v9 = 2;
    result = 3;
  }

  else
  {
    result = sub_1C4F02A38();
    v9 = 1;
  }

  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t PipelineError.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v10 = 0;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000037, 0x80000001C4FAFFF0);
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    switch(v1)
    {
      case 1:
        v3 = 0xE400000000000000;
        v4 = 1819047270;
        break;
      case 2:
        v3 = 0xE500000000000000;
        v4 = 0x61746C6564;
        break;
      case 3:
        v3 = 0xEA0000000000676ELL;
        v4 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v4, v3);

    return v10;
  }

  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    sub_1C4F02248();

    v10 = 0xD000000000000015;
    MEMORY[0x1C6940010](v1, v2);
    return v10;
  }

  result = 0x206E776F6E6B6E55;
  v6 = *v0;
  switch(v1)
  {
    case 1:
      sub_1C441A30C();
      result = v7 + 31;
      break;
    case 2:
      sub_1C441A30C();
      result = v8 + 18;
      break;
    case 3:
      sub_1C441A30C();
      result = v9 + 30;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PipelineError.errorCode.getter()
{
  if (!*(v0 + 16))
  {
    return 2;
  }

  if (*(v0 + 16) == 1)
  {
    return 4;
  }

  return qword_1C4F4E2E8[*v0];
}

uint64_t PipelineError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v6;
  v7 = PipelineError.description.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  return sub_1C4F00F28();
}

uint64_t sub_1C4ACE4AC(uint64_t a1)
{
  v2 = sub_1C4ACE580();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4ACE4E8(uint64_t a1)
{
  v2 = sub_1C4ACE580();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C4ACE554(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_1C4ACE580()
{
  result = qword_1EC0C2EF0;
  if (!qword_1EC0C2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2EF0);
  }

  return result;
}

uint64_t PipelinePhase.init(stores:phaseSource:sourceIngestor:linker:fusion:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v14 = a3[3];
  v15 = a3[4];
  sub_1C4418280(a3, v14);
  sub_1C4418B94();
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v20 = sub_1C443E2C0(v19);
  v21(v20);
  v22 = sub_1C4487AD8(a1, a2, v7, a4, a5, a6, v6, v14, v15);
  sub_1C440962C(a3);
  return v22;
}

uint64_t sub_1C4ACF6F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
  swift_beginAccess();
  sub_1C46CBA70(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C4ACF7B8()
{
  v1 = type metadata accessor for Source();
  v2 = sub_1C43FBD18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  switch(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType))
  {
    case 1:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  v8 = sub_1C441DE10();

  if (v8)
  {
LABEL_5:
    v10 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_stores;
    v11 = *(v10 + *(type metadata accessor for PhaseStores() + 24));
    v12 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
    sub_1C440D164();
    sub_1C44078C4();
    sub_1C448CFCC(v0 + v12, v7, v13);
    sub_1C4490D2C();
    sub_1C442D1D0();
    return sub_1C447EAE0(v7, v14);
  }

  return result;
}

uint64_t sub_1C4ACF908()
{
  sub_1C440962C((v1 + 56));
  v4 = *(v1 + 160);
  sub_1C440CD48();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D358())
  {
    v13 = *(v1 + 136);

    sub_1C43FBDA0();
    goto LABEL_20;
  }

  if (!*(v0 + 80))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v15 = sub_1C441BC3C();
    sub_1C43FF4EC(v15, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44253BC();
    if (sub_1C443FF34())
    {
      sub_1C440FAA4();
      sub_1C440E550();
      sub_1C440D1D4();
      *v2 = 136315138;
      v16 = sub_1C4AD00FC();
      sub_1C4426D4C(v16, v17, v18);
      sub_1C44160EC();
      *(v2 + 4) = v3;
      sub_1C4404638(&dword_1C43F8000, v19, v20, "%s caught unrecoverable error, phase was skipped");
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_19;
  }

  if (*(v0 + 80) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v5 = sub_1C441BC3C();
    sub_1C43FF4EC(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v7 = sub_1C4AD00FC();
    sub_1C4426D4C(v7, v8, v9);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v12 = "%s phase had no data to process";
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v21 = sub_1C441BC3C();
    sub_1C43FF4EC(v21, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v22 = sub_1C4AD00FC();
    sub_1C4426D4C(v22, v23, v24);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v12 = "%s source is disabled due to privacy setting";
  }

  sub_1C4404638(&dword_1C43F8000, v10, v11, v12);
  sub_1C440AEF4();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_19:

  v25 = *(v1 + 128);
  sub_1C4ACF7B8();

  v26 = *(v1 + 136);

  sub_1C43FC1B0();
LABEL_20:

  return v14();
}

uint64_t sub_1C4ACFBB4()
{
  v4 = *(v1 + 176);
  sub_1C440CD48();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D358())
  {
    v13 = *(v1 + 136);

    sub_1C43FBDA0();
    goto LABEL_20;
  }

  if (!*(v0 + 80))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v15 = sub_1C441BC3C();
    sub_1C43FF4EC(v15, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44253BC();
    if (sub_1C443FF34())
    {
      sub_1C440FAA4();
      sub_1C440E550();
      sub_1C440D1D4();
      *v2 = 136315138;
      v16 = sub_1C4AD00FC();
      sub_1C4426D4C(v16, v17, v18);
      sub_1C44160EC();
      *(v2 + 4) = v3;
      sub_1C4404638(&dword_1C43F8000, v19, v20, "%s caught unrecoverable error, phase was skipped");
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_19;
  }

  if (*(v0 + 80) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v5 = sub_1C441BC3C();
    sub_1C43FF4EC(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v7 = sub_1C4AD00FC();
    sub_1C4426D4C(v7, v8, v9);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v12 = "%s phase had no data to process";
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v21 = sub_1C441BC3C();
    sub_1C43FF4EC(v21, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v22 = sub_1C4AD00FC();
    sub_1C4426D4C(v22, v23, v24);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v12 = "%s source is disabled due to privacy setting";
  }

  sub_1C4404638(&dword_1C43F8000, v10, v11, v12);
  sub_1C440AEF4();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_19:

  v25 = *(v1 + 128);
  sub_1C4ACF7B8();

  v26 = *(v1 + 136);

  sub_1C43FC1B0();
LABEL_20:

  return v14();
}

uint64_t sub_1C4ACFE58()
{
  v4 = *(v1 + 192);
  sub_1C440CD48();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D358())
  {
    v13 = *(v1 + 136);

    sub_1C43FBDA0();
    goto LABEL_20;
  }

  if (!*(v0 + 80))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v15 = sub_1C441BC3C();
    sub_1C43FF4EC(v15, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44253BC();
    if (sub_1C443FF34())
    {
      sub_1C440FAA4();
      sub_1C440E550();
      sub_1C440D1D4();
      *v2 = 136315138;
      v16 = sub_1C4AD00FC();
      sub_1C4426D4C(v16, v17, v18);
      sub_1C44160EC();
      *(v2 + 4) = v3;
      sub_1C4404638(&dword_1C43F8000, v19, v20, "%s caught unrecoverable error, phase was skipped");
      sub_1C440AEF4();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_19;
  }

  if (*(v0 + 80) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v5 = sub_1C441BC3C();
    sub_1C43FF4EC(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v7 = sub_1C4AD00FC();
    sub_1C4426D4C(v7, v8, v9);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v12 = "%s phase had no data to process";
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v21 = sub_1C441BC3C();
    sub_1C43FF4EC(v21, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44253BC();
    if (!sub_1C443FF34())
    {
      goto LABEL_19;
    }

    sub_1C440FAA4();
    sub_1C440E550();
    sub_1C440D1D4();
    *v2 = 136315138;
    v22 = sub_1C4AD00FC();
    sub_1C4426D4C(v22, v23, v24);
    sub_1C44160EC();
    *(v2 + 4) = v3;
    v12 = "%s source is disabled due to privacy setting";
  }

  sub_1C4404638(&dword_1C43F8000, v10, v11, v12);
  sub_1C440AEF4();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_19:

  v25 = *(v1 + 128);
  sub_1C4ACF7B8();

  v26 = *(v1 + 136);

  sub_1C43FC1B0();
LABEL_20:

  return v14();
}

uint64_t sub_1C4AD00FC()
{
  v1 = v0;
  v2 = type metadata accessor for Source();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = 60;
  v11 = 0xE100000000000000;
  v9[1] = type metadata accessor for PipelinePhase();
  sub_1C456902C(&qword_1EC0C2F00, &qword_1C4F4E410);
  v6 = sub_1C4F01198();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](3830560, 0xE300000000000000);
  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
  swift_beginAccess();
  sub_1C448CFCC(v1 + v7, v5, type metadata accessor for Source);
  MEMORY[0x1C6940010](*v5, v5[1]);
  sub_1C447EAE0(v5, type metadata accessor for Source);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v10;
}

uint64_t sub_1C4AD0240()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Source();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = (v8 - v7);
  sub_1C456902C(&qword_1EC0C2EF8, &unk_1C4F4E400);
  v10 = sub_1C4F01198();
  MEMORY[0x1C6940010](v10);

  MEMORY[0x1C6940010](3830560, 0xE300000000000000);
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_source;
  sub_1C440D164();
  sub_1C44078C4();
  sub_1C448CFCC(v1 + v11, v9, v12);
  MEMORY[0x1C6940010](*v9, v9[1]);
  sub_1C442D1D0();
  sub_1C447EAE0(v9, v13);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1C4AD0370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C4412320();
  v15 = sub_1C444B260();
  sub_1C44B6A64(v15, v16, v17);
  v18 = sub_1C4404658();
  v19(v18);

  sub_1C43FBDA0();
  v20 = *(v14 + 184);
  sub_1C43FD0C0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C4AD043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C4412320();
  v15 = sub_1C444B260();
  sub_1C44BD174(v15, v16, v17);
  v18 = sub_1C4404658();
  v19(v18);

  sub_1C43FBDA0();
  v20 = *(v14 + 184);
  sub_1C43FD0C0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C4AD0508(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Source();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C448CFCC(a1, v7, type metadata accessor for Source);
  v8 = *a2;
  return sub_1C4ACF6F8(v7);
}

uint64_t PipelinePhase.__allocating_init(stores:phaseSource:sourceIngestor:linker:fusion:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = v6;
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);
  v17 = swift_allocObject();
  v18 = a3[3];
  v19 = a3[4];
  sub_1C4418280(a3, v18);
  sub_1C4418B94();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v24 = sub_1C443E2C0(v23);
  v25(v24);
  v26 = sub_1C4487AD8(a1, a2, v7, a4, a5, a6, v17, v18, v19);
  sub_1C440962C(a3);
  return v26;
}

uint64_t PipelinePhase.__deallocating_deinit()
{
  PipelinePhase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AD071C(uint64_t a1)
{
  result = sub_1C4AD0B60(&qword_1EDDF7EC0, type metadata accessor for PipelinePhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PipelinePhase()
{
  result = qword_1EDDF7EB0;
  if (!qword_1EDDF7EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AD07C0(uint64_t a1)
{
  result = sub_1C4AD0B60(&unk_1EDDF7EC8, type metadata accessor for PipelinePhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AD0820()
{
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for PhaseStores();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = type metadata accessor for Linker();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for Fuser();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of PipelinePhase.run()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442E8C4;

  return v6();
}

uint64_t sub_1C4AD0B60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4AD0BA8(void *a1, int a2, char a3)
{
  v4 = v3;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v9 = a1[1];
  *(inited + 32) = *a1;
  *(inited + 40) = v9;
  v93 = inited;
  if (a3)
  {
    v10 = a1[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C449ADBC(v11);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v12 = 0;
  sub_1C446ABD0(a2 & 1);
  v23 = sub_1C448E2AC();

  if (!v23)
  {
    goto LABEL_8;
  }

  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  v21 = sub_1C4F00F28();
  v24 = 0;
  v25 = v23 + 56;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 56);
  v29 = (v26 + 63) >> 6;
  v74 = xmmword_1C4F0CE60;
  v71 = v29;
  v72 = v23 + 56;
  v81 = v4;
  v80 = a2;
  v73 = v23;
  if (!v28)
  {
LABEL_15:
    while (1)
    {
      v30 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v30 >= v29)
      {

        return v21;
      }

      v28 = *(v25 + 8 * v30);
      ++v24;
      if (v28)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    swift_once();
    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    v14 = v12;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Encountered an error while fetching for phase status %@", v17, 0xCu);
      sub_1C45B4B90(v18);
      MEMORY[0x1C6942830](v18, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    else
    {
    }

LABEL_8:
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    return sub_1C4F00F28();
  }

LABEL_14:
  v30 = v24;
LABEL_18:
  v77 = v21;
  v31 = v28;
  v32 = *(v23 + 48);
  v75 = v30;
  v33 = (v32 + ((v30 << 10) | (16 * __clz(__rbit64(v28)))));
  v34 = v33[1];
  v84 = *v33;
  v85 = v34;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v78 = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C2F10, &qword_1C4F4E428);
  v35 = swift_initStackObject();
  *(v35 + 16) = v74;
  if (qword_1EDDF7B40 != -1)
  {
    swift_once();
  }

  v36 = unk_1EDE2D900;
  v87 = sub_1C456902C(&qword_1EC0C2F18, &qword_1C4F4E430);
  *(v35 + 56) = v87;
  v37 = sub_1C4AD23DC();
  *(v35 + 64) = v37;
  v38 = swift_allocObject();
  *(v35 + 32) = v38;
  sub_1C441A320(v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v36);
  if (qword_1EDDF7AF8 != -1)
  {
    swift_once();
  }

  v76 = (v31 - 1) & v31;
  v83 = v35 + 32;
  v39 = unk_1EDE2D810;
  *(v35 + 96) = v87;
  *(v35 + 104) = v37;
  v40 = swift_allocObject();
  *(v35 + 72) = v40;
  sub_1C441A320(v40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v39);
  v41 = 0;
  v42 = 0;
  v82 = v35;
  while (1)
  {
    LODWORD(v87) = v41;
    sub_1C442E860(v83 + 40 * v42, v90);
    sub_1C4409678(v90, v91);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v44 = sub_1C4F01F48();
    v86 = *(v44 - 8);
    v45 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v44);
    v47 = &v70 - v46;
    v48 = v85;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4ABBE20(v80 & 1, v48, v47);
    if (!v12)
    {
      break;
    }

    v12 = 0;
LABEL_35:
    sub_1C440962C(v90);
    v41 = 1;
    v42 = 1;
    if (v87)
    {
      swift_setDeallocating();
      sub_1C49E17A4();
      v69 = v77;
      swift_isUniquelyReferenced_nonNull_native();
      v89[0] = v69;
      sub_1C4661E9C();

      v21 = v89[0];
      v24 = v75;
      v28 = v76;
      v25 = v72;
      v23 = v73;
      v29 = v71;
      if (!v76)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v49 = v86;
  v79 = 0;

  if (sub_1C44157D4(v47, 1, AssociatedTypeWitness) == 1)
  {
    (*(v49 + 8))(v47, v44);
LABEL_34:
    v12 = v79;
    goto LABEL_35;
  }

  v89[3] = AssociatedTypeWitness;
  v89[4] = swift_getAssociatedConformanceWitness();
  v89[5] = swift_getAssociatedConformanceWitness();
  v50 = sub_1C4422F90(v89);
  (*(*(AssociatedTypeWitness - 8) + 32))(v50, v47, AssociatedTypeWitness);
  sub_1C456902C(&qword_1EC0C2F20, &qword_1C4F4E438);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v51 = v88;
  v52 = v91;
  v53 = v92;
  sub_1C4409678(v90, v91);
  v54 = (*(v53 + 32))(v52, v53);
  v56 = v55;
  v57 = v78;
  swift_isUniquelyReferenced_nonNull_native();
  v89[0] = v57;
  v58 = sub_1C445FAA8(v54, v56);
  v12 = v79;
  if (__OFADD__(*(v57 + 16), (v59 & 1) == 0))
  {
    goto LABEL_43;
  }

  v60 = v58;
  v61 = v59;
  sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  if (sub_1C4F02458())
  {
    v62 = sub_1C445FAA8(v54, v56);
    if ((v61 & 1) != (v63 & 1))
    {
      goto LABEL_45;
    }

    v60 = v62;
  }

  if (v61)
  {

    v78 = v89[0];
    *(*(v89[0] + 56) + 8 * v60) = v51;
    goto LABEL_35;
  }

  v64 = v89[0];
  *(v89[0] + 8 * (v60 >> 6) + 64) |= 1 << v60;
  v65 = (v64[6] + 16 * v60);
  *v65 = v54;
  v65[1] = v56;
  *(v64[7] + 8 * v60) = v51;
  v66 = v64[2];
  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (!v67)
  {
    v78 = v64;
    v64[2] = v68;
    goto LABEL_35;
  }

  __break(1u);
LABEL_45:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C4AD1484()
{
  v0 = sub_1C4AD2518();
  v1 = 0xD00000000000001ALL;
  if (v0)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (v0)
  {
    v3 = "PieplineFinishedRunStats";
  }

  else
  {
    v3 = "graphConstruction";
  }

  if (sub_1C4AD2518())
  {
    v1 = 0xD000000000000018;
    v4 = "RunStatsPerPhase";
  }

  else
  {
    v4 = "PipelineUnfinishedRunStats";
  }

  v5 = sub_1C4AD2518();
  if (v5)
  {
    v6 = 0xD000000000000020;
  }

  else
  {
    v6 = 0xD000000000000022;
  }

  if (v5)
  {
    v7 = "edRunStatsPerPhase";
  }

  else
  {
    v7 = "PieplineUnfinishedRunStats";
  }

  v8 = objc_autoreleasePoolPush();
  sub_1C4AD159C(v2, v3 | 0x8000000000000000);

  sub_1C4AD159C(v1, v4 | 0x8000000000000000);

  sub_1C4AD1820(v6, v7 | 0x8000000000000000);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C4AD159C(uint64_t a1, unint64_t a2)
{
  sub_1C4AD21FC();
  sub_1C4F00288();
  sub_1C465E7E0();
  sub_1C4F00268();

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315651;
    type metadata accessor for Pipeline.StatusStore();
    sub_1C456902C(&qword_1EC0C2F08, &qword_1C4F4E420);
    v9 = sub_1C4F01198();
    v11 = sub_1C441D828(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1C441D828(a1, a2, &v17);
    *(v7 + 22) = 2081;
    sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
    v12 = sub_1C4F00EE8();
    v14 = v13;

    v15 = sub_1C441D828(v12, v14, &v17);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_1C43F8000, v5, v6, "%s sent CA event:%s, payload:%{private}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v8, -1, -1);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1C4AD1820(uint64_t a1, unint64_t a2)
{
  v71 = 0xD000000000000013;
  v72 = 0x80000001C4FAFEE0;
  v74 = 0;
  v75 = 0;
  v73 = &unk_1F43DAAE0;
  v4 = 0;
  sub_1C446ABD0(0);
  sub_1C49C3968();

  LOBYTE(v5) = v69[0];
  if (LOBYTE(v69[0]) == 4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Pipeline type isn't available while submitting to per phase latency CA event";
    goto LABEL_6;
  }

  if (qword_1EDDF7AC0 != -1)
  {
    goto LABEL_57;
  }

LABEL_9:
  sub_1C446ABD0(0);
  if (v4)
  {

LABEL_12:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();
    if (!os_log_type_enabled(v7, v8))
    {
LABEL_7:

      return 0;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "SessionID isn't available while submitting to per phase latency CA event";
LABEL_6:
    _os_log_impl(&dword_1C43F8000, v7, v8, v10, v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
    goto LABEL_7;
  }

  sub_1C446B0A0();
  v14 = v13;

  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = a1 == 0xD000000000000022 && 0x80000001C4FB0130 == a2;
  if (v15 || (sub_1C4F02938() & 1) != 0)
  {
    v4 = 0;
    v16 = 0xEA00000000002E65;
    v62 = 0x6C7070612E6D6F63;
  }

  else
  {
    v62 = 0;
    v16 = 0;
    v4 = 1;
  }

  v61 = v5;
  if (qword_1EDDF7B60 != -1)
  {
    swift_once();
  }

  v69[0] = xmmword_1EDE2D960;
  v69[1] = *algn_1EDE2D970;
  v70 = qword_1EDE2D980;
  v17 = sub_1C4AD0BA8(v69, 0, 1);
  v18 = 0;
  v19 = v17 + 64;
  v65 = v17;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v5 = v21 & *(v17 + 64);
  v22 = (v20 + 63) >> 6;
  if (v4)
  {
    v23 = 0;
  }

  else
  {
    v23 = v62;
  }

  v24 = 0xE000000000000000;
  if (!v4)
  {
    v24 = v16;
  }

  v59 = v24;
  v60 = v23;
  v63 = v22;
  v64 = v17 + 64;
  if (v5)
  {
    while (1)
    {
      v25 = v18;
LABEL_38:
      v26 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v27 = v26 | (v25 << 6);
      v28 = *(v65 + 48) + 16 * v27;
      log = *v28;
      v29 = *(*(v65 + 56) + 8 * v27);
      v30 = *(v29 + 16);
      v31 = *(v28 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v30)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v32 = sub_1C445FAA8(0x6D69546573616870, 0xEE00746E65705365);
        if (v33)
        {
          if (*(v29 + 16))
          {
            v34 = *(*(v29 + 56) + 8 * v32);
            v35 = sub_1C445FAA8(0xD000000000000015, 0x80000001C4FB01D0);
            if (v36)
            {
              v37 = *(*(v29 + 56) + 8 * v35);

              sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1C4F13950;
              *(inited + 32) = 0x6D614E6573616850;
              *(inited + 40) = 0xE900000000000065;
              v39 = sub_1C4F01108();

              *(inited + 48) = v39;
              strcpy((inited + 56), "phaseTimeSpent");
              *(inited + 71) = -18;
              *(inited + 72) = sub_1C4F019C8();
              *(inited + 80) = 0xD000000000000015;
              *(inited + 88) = 0x80000001C4FB01D0;
              *(inited + 96) = sub_1C4F019C8();
              *(inited + 104) = 0x496E6F6973736573;
              *(inited + 112) = 0xE900000000000064;
              *(inited + 120) = sub_1C4F01108();
              strcpy((inited + 128), "pipelineType");
              *(inited + 141) = 0;
              *(inited + 142) = -5120;
              v68[0] = 0;
              v68[1] = 0xE000000000000000;
              sub_1C448D934(v61);
              v40 = sub_1C4F01108();

              *(inited + 144) = v40;
              sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
              sub_1C4F00F28();
              sub_1C4F00288();
              sub_1C4F00268();
              if (qword_1EDDFECB0 != -1)
              {
                swift_once();
              }

              v41 = sub_1C4F00978();
              sub_1C442B738(v41, qword_1EDDFECB8);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v42 = sub_1C4F00968();
              v4 = sub_1C4F01CC8();

              if (!os_log_type_enabled(v42, v4))
              {
                goto LABEL_52;
              }

              v57 = v4;
              v4 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v68[0] = v58;
              *v4 = 136315907;
              type metadata accessor for Pipeline.StatusStore();
              sub_1C456902C(&qword_1EC0C2F08, &qword_1C4F4E420);
              v43 = sub_1C4F01198();
              v45 = sub_1C441D828(v43, v44, v68);

              *(v4 + 4) = v45;
              *(v4 + 12) = 2080;
              *(v4 + 14) = sub_1C441D828(a1, a2, v68);
              *(v4 + 22) = 2080;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v46 = sub_1C441D828(v60, v59, v68);

              *(v4 + 24) = v46;
              *(v4 + 32) = 2081;
              v47 = sub_1C4F00EE8();
              v49 = v48;

              v50 = sub_1C441D828(v47, v49, v68);

              *(v4 + 34) = v50;
              _os_log_impl(&dword_1C43F8000, v42, v57, "%s sent CA event:%s, prefix: %s, payload:%{private}s", v4, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x1C6942830](v58, -1, -1);
              v51 = v4;
              goto LABEL_51;
            }
          }
        }
      }

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v52 = sub_1C4F00978();
      sub_1C442B738(v52, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v42 = sub_1C4F00968();
      v4 = sub_1C4F01CD8();

      if (!os_log_type_enabled(v42, v4))
      {
LABEL_52:

        goto LABEL_53;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v68[0] = v54;
      *v53 = 136315138;
      v55 = sub_1C441D828(log, v31, v68);
      loga = v42;
      v56 = v55;

      *(v53 + 4) = v56;
      v42 = loga;
      _os_log_impl(&dword_1C43F8000, loga, v4, "Latency unavailable while submitting phase latency to CA event for phase: %s", v53, 0xCu);
      sub_1C440962C(v54);
      MEMORY[0x1C6942830](v54, -1, -1);
      v51 = v53;
LABEL_51:
      MEMORY[0x1C6942830](v51, -1, -1);
LABEL_53:

      v18 = v25;
      v22 = v63;
      v19 = v64;
      if (!v5)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_9;
    }

    if (v25 >= v22)
    {
      break;
    }

    v5 = *(v19 + 8 * v25);
    ++v18;
    if (v5)
    {
      goto LABEL_38;
    }
  }

  return 1;
}

uint64_t sub_1C4AD21FC()
{
  v1 = sub_1C4AD27B0();
  v29 = v0;
  v30 = 256;
  sub_1C47240B4(sub_1C4ABCF3C, v28, v1);

  v2 = sub_1C4BA0370();
  sub_1C456902C(&qword_1EC0C2F28, &qword_1C4F4E440);
  result = sub_1C4F02538();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v2 + 64;
  v9 = v7 & *(v2 + 64);
  v10 = (v6 + 63) >> 6;
  v26 = result + 64;
  v27 = v2;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v27 + 56) + 16 * v14);
      v19 = *v18;
      v20 = v18[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = sub_1C4F01108();

      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (v4[6] + 16 * v14);
      *v22 = v16;
      v22[1] = v17;
      *(v4[7] + 8 * v14) = v21;
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        return v4;
      }

      v13 = *(v8 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4AD23DC()
{
  result = qword_1EDDF9F30;
  if (!qword_1EDDF9F30)
  {
    sub_1C4572308(&qword_1EC0C2F18, &qword_1C4F4E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F30);
  }

  return result;
}

uint64_t sub_1C4AD2440(uint64_t a1)
{
  if (qword_1EDDF7BB8 != -1)
  {
    swift_once();
  }

  sub_1C446ABD0(0);
  v2 = sub_1C44BAADC();
  v4 = v3;

  return (v2 > a1) & ~v4;
}

uint64_t sub_1C4AD2518()
{
  if (qword_1EDDF7BC0 != -1)
  {
    sub_1C441A340();
  }

  sub_1C442013C(&xmmword_1EDE2DA78);
  if (v0)
  {

    return 0;
  }

  else
  {
    sub_1C44078DC();
    v3 = sub_1C4598F3C();

    sub_1C440B128();
    v1 = 0;
    switch(v3)
    {
      case 1:
        sub_1C4400BB0();
        break;
      case 2:

        return 1;
      case 4:
        return v1;
      default:
        break;
    }

    v4 = sub_1C4F02938();

    return v4 & 1;
  }
}

uint64_t sub_1C4AD2674()
{
  if (qword_1EDDF7BC0 != -1)
  {
    sub_1C441A340();
  }

  sub_1C442013C(&xmmword_1EDE2DA78);
  if (v0)
  {

    return 0;
  }

  else
  {
    sub_1C44078DC();
    v3 = sub_1C4598F3C();

    sub_1C440B128();
    v1 = 0;
    switch(v3)
    {
      case 1:
        sub_1C4400BB0();
        break;
      case 3:

        return 1;
      case 4:
        return v1;
      default:
        break;
    }

    v4 = sub_1C4F02938();

    return v4 & 1;
  }
}

uint64_t sub_1C4AD27B0()
{
  sub_1C456902C(&qword_1EC0C2F10, &qword_1C4F4E428);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F17CE0;
  v53 = sub_1C456902C(&qword_1EC0C2F40, &qword_1C4F4E450);
  *(v0 + 56) = v53;
  v52 = sub_1C4AD3BEC(&qword_1EDDF9F48, &qword_1EC0C2F40, &qword_1C4F4E450);
  *(v0 + 64) = v52;
  sub_1C44006A8();
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  v1[2] = 0xD000000000000013;
  v1[3] = 0x80000001C4FAFEE0;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = &unk_1F43DAAE0;
  if (qword_1EDDF7B38 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE2D8C0;
  v3 = *algn_1EDE2D8C8;
  v4 = qword_1EDE2D8D0;
  v5 = unk_1EDE2D8D8;
  v6 = qword_1EDE2D8E0;
  v55 = sub_1C456902C(&qword_1EC0C2F48, &qword_1C4F4E458);
  *(v0 + 96) = v55;
  v54 = sub_1C4AD3BEC(qword_1EDDF9F58, &qword_1EC0C2F48, &qword_1C4F4E458);
  *(v0 + 104) = v54;
  sub_1C44006A8();
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  v7[6] = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v5);
  if (qword_1EDDF7AC0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDE2D758;
  v9 = unk_1EDE2D760;
  v10 = qword_1EDE2D768;
  v11 = unk_1EDE2D770;
  v12 = qword_1EDE2D778;
  v13 = sub_1C456902C(&qword_1EC0C2F50, &qword_1C4F4E460);
  *(v0 + 136) = v13;
  v14 = sub_1C4AD3BEC(&qword_1EDDF9F40, &qword_1EC0C2F50, &qword_1C4F4E460);
  *(v0 + 144) = v14;
  sub_1C44006A8();
  v15 = swift_allocObject();
  *(v0 + 112) = v15;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v12;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v11);
  if (qword_1EDDF7B28 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE2D898;
  v17 = unk_1EDE2D8A0;
  v18 = qword_1EDE2D8A8;
  v19 = unk_1EDE2D8B0;
  v20 = qword_1EDE2D8B8;
  *(v0 + 176) = sub_1C456902C(&qword_1EC0C2F58, &qword_1C4F4E468);
  *(v0 + 184) = sub_1C4AD3BEC(&qword_1EDDF9F38, &qword_1EC0C2F58, &qword_1C4F4E468);
  sub_1C44006A8();
  v21 = swift_allocObject();
  *(v0 + 152) = v21;
  v21[2] = v16;
  v21[3] = v17;
  v21[4] = v18;
  v21[5] = v19;
  v21[6] = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v19);
  if (qword_1EDDF7BC0 != -1)
  {
    swift_once();
  }

  sub_1C4413670(&xmmword_1EDE2DA78);
  *(v0 + 216) = sub_1C456902C(&qword_1EC0C2F60, &unk_1C4F4E470);
  *(v0 + 224) = sub_1C4AD3BEC(&qword_1EDDF9F50, &qword_1EC0C2F60, &unk_1C4F4E470);
  sub_1C44006A8();
  v22 = swift_allocObject();
  *(v0 + 192) = v22;
  sub_1C441233C(v22);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v18);
  if (qword_1EDDF7AC8 != -1)
  {
    swift_once();
  }

  sub_1C4413670(&qword_1EDE2D780);
  *(v0 + 256) = v55;
  *(v0 + 264) = v54;
  sub_1C44006A8();
  v23 = swift_allocObject();
  *(v0 + 232) = v23;
  sub_1C441233C(v23);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v18);
  if (qword_1EDDF7B58 != -1)
  {
    swift_once();
  }

  sub_1C4413670(&xmmword_1EDE2D938);
  *(v0 + 296) = v13;
  *(v0 + 304) = v14;
  sub_1C44006A8();
  v24 = swift_allocObject();
  *(v0 + 272) = v24;
  sub_1C441233C(v24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v18);
  if (qword_1EDDF7B80 != -1)
  {
    swift_once();
  }

  v25 = unk_1EDE2D9A0;
  *(v0 + 336) = v53;
  *(v0 + 344) = v52;
  sub_1C44006A8();
  v26 = swift_allocObject();
  *(v0 + 312) = v26;
  sub_1C44176B0(v26);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v25);
  if (qword_1EDDF7B98 != -1)
  {
    swift_once();
  }

  v27 = unk_1EDE2D9F0;
  *(v0 + 376) = v55;
  *(v0 + 384) = v54;
  sub_1C44006A8();
  v28 = swift_allocObject();
  *(v0 + 352) = v28;
  sub_1C44176B0(v28);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v27);
  if (qword_1EDDF7B90 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDE2D9B0;
  v30 = *algn_1EDE2D9B8;
  v32 = qword_1EDE2D9C0;
  v31 = unk_1EDE2D9C8;
  v33 = qword_1EDE2D9D0;
  *(v0 + 416) = v55;
  *(v0 + 424) = v54;
  sub_1C44006A8();
  v34 = swift_allocObject();
  *(v0 + 392) = v34;
  v34[2] = v29;
  v34[3] = v30;
  v34[4] = v32;
  v34[5] = v31;
  v34[6] = v33;
  v35 = sub_1C456902C(&qword_1EC0C2F18, &qword_1C4F4E430);
  *(v0 + 456) = v35;
  v36 = sub_1C4AD3BEC(&qword_1EDDF9F30, &qword_1EC0C2F18, &qword_1C4F4E430);
  *(v0 + 464) = v36;
  sub_1C44006A8();
  v37 = swift_allocObject();
  *(v0 + 432) = v37;
  v37[2] = 0xD000000000000010;
  v37[3] = 0x80000001C4FB0270;
  v37[5] = 0;
  v37[6] = 0;
  v37[4] = &unk_1F43DAB10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C446F0D0(v31);
  if (qword_1EDDF7AD8 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4(&qword_1EDE2D7A8);
  *(v0 + 496) = v35;
  *(v0 + 504) = v36;
  sub_1C44006A8();
  v38 = swift_allocObject();
  *(v0 + 472) = v38;
  sub_1C4420158(v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7BB0 != -1)
  {
    swift_once();
  }

  v39 = xmmword_1EDE2DA28;
  v40 = qword_1EDE2DA38;
  v41 = unk_1EDE2DA40;
  v42 = qword_1EDE2DA48;
  v43 = sub_1C456902C(&qword_1EC0C2F68, &unk_1C4F4E480);
  *(v0 + 536) = v43;
  v44 = sub_1C4AD3BEC(&qword_1EDDF9F28, &qword_1EC0C2F68, &unk_1C4F4E480);
  *(v0 + 544) = v44;
  sub_1C44006A8();
  v45 = swift_allocObject();
  *(v0 + 512) = v45;
  *(v45 + 16) = v39;
  *(v45 + 32) = v40;
  *(v45 + 40) = v41;
  *(v45 + 48) = v42;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7BA0 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4(&xmmword_1EDE2DA00);
  *(v0 + 576) = v43;
  *(v0 + 584) = v44;
  sub_1C44006A8();
  v46 = swift_allocObject();
  *(v0 + 552) = v46;
  sub_1C4420158(v46);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7BB8 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4(&qword_1EDE2DA50);
  *(v0 + 616) = v43;
  *(v0 + 624) = v44;
  sub_1C44006A8();
  v47 = swift_allocObject();
  *(v0 + 592) = v47;
  sub_1C4420158(v47);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7B18 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4(&qword_1EDE2D870);
  *(v0 + 656) = v43;
  *(v0 + 664) = v44;
  sub_1C44006A8();
  v48 = swift_allocObject();
  *(v0 + 632) = v48;
  sub_1C4420158(v48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7B10 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4(&qword_1EDE2D848);
  *(v0 + 696) = v43;
  *(v0 + 704) = v44;
  sub_1C44006A8();
  v49 = swift_allocObject();
  *(v0 + 672) = v49;
  sub_1C4420158(v49);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  if (qword_1EDDF7B08 != -1)
  {
    swift_once();
  }

  sub_1C442D1F4(&qword_1EDE2D820);
  *(v0 + 736) = v43;
  *(v0 + 744) = v44;
  sub_1C44006A8();
  v50 = swift_allocObject();
  *(v0 + 712) = v50;
  sub_1C4420158(v50);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44328A0();
  return v0;
}

void sub_1C4AD3174()
{
  qword_1EDE2D8C0 = 0xD000000000000010;
  *algn_1EDE2D8C8 = 0x80000001C4FB02F0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD31A4()
{
  qword_1EDE2D758 = 0x496E6F6973736573;
  unk_1EDE2D760 = 0xE900000000000064;
  sub_1C43FDCEC(&qword_1EDE2D758);
}

void sub_1C4AD31D4()
{
  qword_1EDE2D898 = 0xD000000000000011;
  unk_1EDE2D8A0 = 0x80000001C4FB0350;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3204()
{
  *&xmmword_1EDE2DA78 = 0xD000000000000014;
  *(&xmmword_1EDE2DA78 + 1) = 0x80000001C4FB03E0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3234()
{
  qword_1EDE2D780 = 0xD000000000000019;
  *algn_1EDE2D788 = 0x80000001C4FB0330;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3264()
{
  *&xmmword_1EDE2D0E0 = 0xD00000000000001CLL;
  *(&xmmword_1EDE2D0E0 + 1) = 0x80000001C4FB0400;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3294()
{
  strcpy(&xmmword_1EDE2D938, "currentPhase");
  BYTE13(xmmword_1EDE2D938) = 0;
  HIWORD(xmmword_1EDE2D938) = -5120;
  sub_1C43FDCEC(&xmmword_1EDE2D938);
}

void sub_1C4AD32C8()
{
  qword_1EDE2D988 = 0xD000000000000010;
  unk_1EDE2D990 = 0x80000001C4FB02D0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD32F8()
{
  qword_1EDE2D9D8 = 0xD000000000000018;
  unk_1EDE2D9E0 = 0x80000001C4FB0290;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD3328()
{
  qword_1EDE2D9B0 = 0xD000000000000019;
  *algn_1EDE2D9B8 = 0x80000001C4FB0250;
  sub_1C44078EC();
}

void sub_1C4AD3380(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24[-1] - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  sub_1C448EE10();
  if (!v2)
  {
    if (qword_1EDDF7B98 != -1)
    {
      swift_once();
    }

    sub_1C446FB00();
    if (sub_1C44157D4(v7, 1, v8) == 1)
    {
      sub_1C44686E4(v7);
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v15 = sub_1C4F00978();
      sub_1C442B738(v15, qword_1EDDFECB8);
      v16 = sub_1C4F00968();
      v17 = sub_1C4F01CD8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        v23 = &unk_1F43F95A8;
        sub_1C456902C(&qword_1EC0C2F30, &qword_1C4F4E448);
        v20 = sub_1C4F01198();
        v22 = sub_1C441D828(v20, v21, &v25);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1C43F8000, v16, v17, "%s lastPipelineRunStartDate is nil", v18, 0xCu);
        sub_1C440962C(v19);
        MEMORY[0x1C6942830](v19, -1, -1);
        MEMORY[0x1C6942830](v18, -1, -1);
      }
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C44BED60();
      sub_1C4EF9AD8();
      sub_1C4EF9AD8();
      v24[0] = 0xD000000000000010;
      v24[1] = 0x80000001C4FB0270;
      v24[3] = 0;
      v24[4] = 0;
      v24[2] = &unk_1F43DAB10;
      sub_1C44BF3A4(v24, 0, 0);
      (*(v9 + 8))(v12, v8);
    }
  }
}

void sub_1C4AD376C()
{
  qword_1EDE2D7A8 = 0xD000000000000017;
  unk_1EDE2D7B0 = 0x80000001C4FB02B0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD379C()
{
  *&xmmword_1EDE2DA28 = 0xD00000000000001CLL;
  *(&xmmword_1EDE2DA28 + 1) = 0x80000001C4FB03C0;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD37CC()
{
  qword_1EDE2DA50 = 0xD00000000000001CLL;
  qword_1EDE2DA58 = 0x80000001C4FB0310;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}