uint64_t sub_1CF008708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2770, &qword_1CFA12988);
    v3 = sub_1CF9E7908();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1D386A440](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

BOOL sub_1CF008830(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1D386A440](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

id sub_1CF0088DC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CF9E6888();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1CF0089A8()
{
  v45 = sub_1CF9E6938();
  v1 = *(v45 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for ItemMetadata() + 132));
  if (!v5)
  {
    return sub_1CF008E44(MEMORY[0x1E69E7CC0]);
  }

  if (!*(v5 + 16))
  {
    return sub_1CF008E44(MEMORY[0x1E69E7CC0]);
  }

  v6 = sub_1CEFE4328(0xD000000000000015, 0x80000001CFA3F550);
  if ((v7 & 1) == 0)
  {
    return sub_1CF008E44(MEMORY[0x1E69E7CC0]);
  }

  v8 = (*(v5 + 56) + 16 * v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = sub_1CF9E5408();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1CEFE42D4(v9, v10);
  sub_1CF9E53F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
  sub_1CF1E1118();
  sub_1CF9E53E8();

  v37 = v10;
  v38 = v9;
  result = v47;
  v42 = *(v47 + 16);
  if (!v42)
  {
    v14 = MEMORY[0x1E69E7CC8];
LABEL_15:

    sub_1CEFE4714(v38, v37);
    return v14;
  }

  v16 = 0;
  v17 = (v47 + 32);
  v18 = (v1 + 8);
  v14 = MEMORY[0x1E69E7CC8];
  v41 = v4;
  v40 = v47;
  v39 = (v1 + 8);
  while (v16 < *(result + 16))
  {
    v44 = v14;
    v19 = *v17;
    v20 = v17[1];
    v21 = v17[3];
    *&v48[16] = v17[2];
    v49 = v21;
    v47 = v19;
    *v48 = v20;
    v46[4] = *v17;
    sub_1CEFCCBDC(&v47, v46, &unk_1EC4BF250, &unk_1CFA01B50);
    FPItemVersionData.description.getter();
    sub_1CF9E6928();
    v22 = sub_1CF9E68C8();
    v24 = v23;

    v25 = *v18;
    result = (*v18)(v4, v45);
    if (v24 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v46[0] = *&v48[8];
    FPItemVersionData.description.getter();
    sub_1CF9E6918();
    v26 = v4;
    v27 = sub_1CF9E68C8();
    v29 = v28;

    result = v25(v26, v45);
    if (v29 >> 60 == 15)
    {
      goto LABEL_18;
    }

    v30 = objc_allocWithZone(MEMORY[0x1E69674E8]);
    sub_1CEFF05F4(v22, v24);
    sub_1CEFF05F4(v27, v29);
    v31 = sub_1CF9E5B48();
    v32 = sub_1CF9E5B48();
    v43 = [v30 initWithContentVersion:v31 metadataVersion:v32];

    sub_1CEFE48D8(v27, v29);
    sub_1CEFE48D8(v22, v24);
    sub_1CEFCCBDC(&v47, v46, &unk_1EC4BF250, &unk_1CFA01B50);
    v33 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = v33;
    v35 = v43;
    sub_1CF1D2448(&v47, v43, isUniquelyReferenced_nonNull_native);
    ++v16;
    sub_1CEFCCC44(&v47, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CEFE48D8(v27, v29);
    sub_1CEFE48D8(v22, v24);

    v14 = *&v46[0];
    v17 += 4;
    v4 = v41;
    result = v40;
    v18 = v39;
    if (v42 == v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1CF008E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B38, &qword_1CFA079D0);
  v3 = sub_1CF9E7BE8();

  v4 = *(a1 + 48);
  *v22 = *(a1 + 32);
  *&v22[16] = v4;
  v5 = *(a1 + 80);
  *&v22[32] = *(a1 + 64);
  *&v22[48] = v5;
  *&v22[64] = *(a1 + 96);
  v6 = *v22;
  sub_1CEFCCBDC(v22, v21, &qword_1EC4C0B40, &qword_1CFA079D8);
  result = sub_1CF7BF928(v6);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = a1 + 104;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v6;
    v10 = (v3[7] + (result << 6));
    v11 = *&v22[8];
    v12 = *&v22[24];
    v13 = *&v22[56];
    v10[2] = *&v22[40];
    v10[3] = v13;
    *v10 = v11;
    v10[1] = v12;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v9 + 72;
    v18 = *(v9 + 16);
    *v22 = *v9;
    *&v22[16] = v18;
    v19 = *(v9 + 48);
    *&v22[32] = *(v9 + 32);
    *&v22[48] = v19;
    *&v22[64] = *(v9 + 64);
    v6 = *v22;
    sub_1CEFCCBDC(v22, v21, &qword_1EC4C0B40, &qword_1CFA079D8);
    result = sub_1CF7BF928(v6);
    v9 = v17;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF008FD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1CF1FDB18(*(a1 + 16), 0);
  v4 = sub_1CF1FDA94(&v6, v3 + 32, v2, a1);
  sub_1CEFCB59C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1CF009068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B30, &qword_1CFA084C0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1CEFE42D4(v7, v8);
      result = sub_1CEFE4328(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CF009180()
{
  v1 = *(v0 + *(type metadata accessor for ItemMetadata() + 132));
  if (v1 && *(v1 + 16))
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    while (v4)
    {
      v8 = v7;
LABEL_12:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      LOBYTE(v11) = sub_1CF9E6AE8();

      if (v11)
      {
        v13 = 1;
LABEL_16:

        return v13;
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        v13 = 0;
        goto LABEL_16;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        v7 = v8;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CF009330()
{
  v1 = v0;
  v37 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v31 - v4;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v35 = 0;
  v36 = 0xE000000000000000;
  if (v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed] == 1)
  {
    MEMORY[0x1D3868CC0](0x6465687361727420, 0xE800000000000000);
  }

  sub_1CEFCCBDC(&v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_lastUsedDate], v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    goto LABEL_9;
  }

  (*(v7 + 32))(v10, v5, v6);
  v32 = 0x3A64756C20;
  v33 = 0xE500000000000000;
  sub_1CF9E5C98();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v11 >= 9.22337204e18)
  {
    goto LABEL_14;
  }

  v34 = v11;
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](v32, v33);

  (*(v7 + 8))(v10, v6);
LABEL_9:
  v13 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_favoriteRank];
  if (v13)
  {
    v32 = 0x7469726F76616620;
    v33 = 0xEA00000000003A65;
    v14 = v13;
    v34 = [v14 unsignedLongLongValue];
    v15 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v15);

    MEMORY[0x1D3868CC0](v32, v33);
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  v34 = v0;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v16 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v31[1] = &v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11B0, &qword_1CFA084D0);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](8736, 0xE200000000000000);
  v17 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename];
  v18 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename + 8];
  v19 = sub_1CF9E6888();
  v20 = [v19 fp_obfuscatedFilename];

  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);

  MEMORY[0x1D3868CC0](0x3A64692022, 0xE500000000000000);
  v24 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
  v25 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v25);

  MEMORY[0x1D3868CC0](0x3A64697020, 0xE500000000000000);
  v26 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier];
  v27 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v27);

  MEMORY[0x1D3868CC0](0x3A69747520, 0xE500000000000000);
  sub_1CF9E5FF8();
  sub_1CF00BC08(&qword_1EC4C11B8, MEMORY[0x1E69E8450]);
  v28 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v28);

  MEMORY[0x1D3868CC0](v35, v36);
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  result = v32;
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF009B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF00A468(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1CF00A5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1CF00A614(void *a1)
{
  sub_1CF9E7948();

  v18[0] = 0xD000000000000019;
  v18[1] = 0x80000001CFA3F800;
  v15 = a1;
  v2 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v2);

  v3 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CF9FA440;
  v19 = v3;
  sub_1CEFFD0A8();
  v5 = sub_1CF9E7718();
  v14 = v3;
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1CEFD51C4();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = 0xD000000000000019;
  *(v4 + 80) = 0x80000001CFA3F800;
  sub_1CF9E6018();

  sub_1CF00AADC(v15, v16, v18);
  sub_1CF9E7298();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CF9FA450;
  v19 = v14;
  v11 = sub_1CF9E7718();
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = v9;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1CF9E6018();
  if (v17)
  {
  }

  return v18[0];
}

void sub_1CF00AADC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a3;
  v70 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v65 - v10;
  v12 = sub_1CF9E5A58();
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalDomain();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *MEMORY[0x1E6967258];
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;
  if (v21 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v23 == v24)
  {
    goto LABEL_8;
  }

  v26 = sub_1CF9E8048();

  if (v26)
  {
    goto LABEL_9;
  }

  v27 = *MEMORY[0x1E6967280];
  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;
  if (v28 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v30 == v31)
  {
    goto LABEL_8;
  }

  v40 = sub_1CF9E8048();

  if (v40)
  {
    goto LABEL_9;
  }

  v41 = *MEMORY[0x1E6967298];
  v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v44 = v43;
  if (v42 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v44 == v45)
  {
    goto LABEL_8;
  }

  v46 = sub_1CF9E8048();

  if (v46)
  {
    goto LABEL_9;
  }

  v47 = *MEMORY[0x1E6967158];
  v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v50 = v49;
  if (v48 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v50 == v51)
  {
LABEL_8:

    goto LABEL_9;
  }

  v52 = sub_1CF9E8048();

  if (v52)
  {
LABEL_9:
    sub_1CEFFD30C(v70 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v19, type metadata accessor for LocalDomain);
    v32 = objc_allocWithZone(type metadata accessor for LocalRootEnumerator());
    v33 = a1;
    v34 = sub_1CF00B20C(v33, v19);

    v35 = *(v34 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
    v36 = *&v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier];
    if (v36)
    {
      v37 = OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader;
      *(*(v36 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4C06F90;
      swift_unknownObjectWeakAssign();
      v38 = *(v36 + v37);
      v39 = v35;
      sub_1CF01C124();
    }

LABEL_11:
    *v69 = v34;
    return;
  }

  v53 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD89C((v70 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1, a1, v7);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v54 - 8) + 48))(v7, 1, v54) == 1)
  {
    sub_1CEFCCC44(v7, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v68 + 56))(v11, 1, 1, v12);
  }

  else
  {
    v67 = v53;
    v55 = *(v54 + 48);
    v56 = v68;
    v66 = *(v68 + 32);
    v66(v11, v7, v12);
    (*(v56 + 56))(v11, 0, 1, v12);
    v57 = &v7[v55];
    v58 = v56;
    sub_1CEFCCC44(v57, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if ((*(v56 + 48))(v11, 1, v12) != 1)
    {
      v66(v15, v11, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
      v59 = *(v56 + 72);
      v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1CF9FA450;
      (*(v58 + 16))(v61 + v60, v15, v12);
      sub_1CEFFD30C(v70 + v67, v19, type metadata accessor for LocalDomain);
      objc_allocWithZone(type metadata accessor for LocalFileEnumerator());
      v34 = sub_1CF00F410(a1, v61, v19);
      v62 = *(v34 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier);
      if (v62)
      {
        v63 = OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader;
        *(*(v62 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4C06F90;
        swift_unknownObjectWeakAssign();
        v64 = *(v62 + v63);
        sub_1CF01C124();
      }

      (*(v58 + 8))(v15, v12);
      goto LABEL_11;
    }
  }

  sub_1CEFCCC44(v11, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (FPItemNotFoundError())
  {
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for LocalRootEnumerator()
{
  result = qword_1EDEA5EB0;
  if (!qword_1EDEA5EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CF00B20C(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for LocalDomain();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for LocalContainer(0);
  v99 = *(v103 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1CF9E5A58();
  v104 = *(v101 - 8);
  v12 = *(v104 + 64);
  v13 = MEMORY[0x1EEE9AC00](v101);
  v100 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v91 - v17;
  v18 = type metadata accessor for LocalContainerSnapshot(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x1E6967258];
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;
  v27 = v23 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v25 == v26;
  v28 = MEMORY[0x1E6967298];
  v95 = ObjectType;
  if (v27)
  {

    v35 = *v28;
  }

  else
  {
    v29 = sub_1CF9E8048();

    v30 = *v28;
    if ((v29 & 1) == 0)
    {
      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v32;
      if (v31 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v33 == v34)
      {
        goto LABEL_8;
      }

      v84 = sub_1CF9E8048();

      if (v84)
      {
        goto LABEL_10;
      }

      v85 = *MEMORY[0x1E6967280];
      v86 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v88 = v87;
      if (v86 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v88 == v89)
      {
LABEL_8:
      }

      else
      {
        v90 = sub_1CF9E8048();

        if ((v90 & 1) == 0)
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalRootEnumerator.swift", 105, 2, 21);
        }
      }
    }
  }

LABEL_10:
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_rootID] = a1;
  sub_1CF00BE10(a2, &v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_domain], type metadata accessor for LocalDomain);
  v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v38 = v37;
  if (v36 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v38 == v39)
  {
    v40 = a1;

LABEL_14:
    sub_1CF00BF00(a2, v21);
    goto LABEL_18;
  }

  v41 = sub_1CF9E8048();
  v42 = a1;

  if (v41)
  {
    goto LABEL_14;
  }

  v43 = type metadata accessor for LocalContainerMonitor(0);
  v44 = v43;
  if (qword_1EDEA56B8 != -1)
  {
    v43 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v43);
  *(&v91 - 2) = v44;
  *(&v91 - 1) = a2;
  sub_1CF9E7398();
  v45 = v107;
  sub_1CEFFF6AC(v21);

LABEL_18:
  sub_1CF00F1D4(v21, &v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot], type metadata accessor for LocalContainerSnapshot);
  v98 = v3;
  v46 = &v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot];
  swift_beginAccess();
  v47 = *&v46[*(v18 + 32)];
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  v96 = a1;
  v97 = a2;
  if (v48)
  {
    v106 = MEMORY[0x1E69E7CC0];

    sub_1CF000F0C(0, v48, 0);
    v50 = v106;
    v51 = *(v99 + 80);
    v91 = v47;
    v52 = v47 + ((v51 + 32) & ~v51);
    v53 = *(v99 + 72);
    v54 = (v104 + 16);
    v55 = v101;
    v56 = v93;
    do
    {
      v57 = v102;
      sub_1CF00BE10(v52, v102, type metadata accessor for LocalContainer);
      (*v54)(v56, v57 + *(v103 + 28), v55);
      sub_1CF00F2A4(v57, type metadata accessor for LocalContainer);
      v106 = v50;
      v59 = *(v50 + 16);
      v58 = *(v50 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1CF000F0C(v58 > 1, v59 + 1, 1);
        v55 = v101;
        v50 = v106;
      }

      *(v50 + 16) = v59 + 1;
      (*(v104 + 32))(v50 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v59, v56, v55);
      v52 += v53;
      --v48;
    }

    while (v48);

    a1 = v96;
    a2 = v97;
    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  v60 = *MEMORY[0x1E6967280];
  v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v63 = v62;
  if (v61 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v63 == v64)
  {

    v67 = v98;
  }

  else
  {
    v66 = sub_1CF9E8048();

    v67 = v98;
    if ((v66 & 1) == 0)
    {
      v68 = v50;
      goto LABEL_39;
    }
  }

  v69 = *(v50 + 16);
  if (v69)
  {
    v106 = v49;
    sub_1CF000F0C(0, v69, 0);
    v68 = v106;
    v70 = *(v104 + 16);
    v102 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v103 = v70;
    v71 = v50 + v102;
    v99 = *(v104 + 72);
    v72 = (v104 + 8);
    v104 += 16;
    v73 = (v104 + 16);
    v74 = v101;
    v75 = v92;
    do
    {
      v76 = v100;
      (v103)(v100, v71, v74);
      sub_1CF9E5958();
      v74 = v101;
      (*v72)(v76, v101);
      v106 = v68;
      v78 = *(v68 + 16);
      v77 = *(v68 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1CF000F0C(v77 > 1, v78 + 1, 1);
        v74 = v101;
        v68 = v106;
      }

      *(v68 + 16) = v78 + 1;
      v79 = v99;
      (*v73)(v68 + v102 + v78 * v99, v75, v74);
      v71 += v79;
      --v69;
    }

    while (v69);

    a2 = v97;
    v67 = v98;
    a1 = v96;
  }

  else
  {

    v68 = MEMORY[0x1E69E7CC0];
  }

LABEL_39:
  v80 = v94;
  sub_1CF00BE10(a2, v94, type metadata accessor for LocalDomain);
  v81 = objc_allocWithZone(type metadata accessor for LocalFileEnumerator());
  *&v67[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator] = sub_1CF00F410(a1, v68, v80);
  v105.receiver = v67;
  v105.super_class = v95;
  v82 = objc_msgSendSuper2(&v105, sel_init);
  sub_1CF00F2A4(a2, type metadata accessor for LocalDomain);
  return v82;
}

uint64_t sub_1CF00BB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BB78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BBC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BC08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BC50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BC98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BD28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BD70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BDB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00BE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00BE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CF00BF00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v68 = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5248();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v52 - v8;
  v10 = sub_1CF9E5268();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v62 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  v19 = sub_1CF9E5A58();
  v58 = *(v19 - 8);
  v59 = v19;
  v20 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_1CF00C970(a1, v22);
  if (sub_1CF00CC24())
  {
    v23 = sub_1CF9E5A78();
    v25 = v24;
    v66 = 0;
    v67 = 0xE000000000000000;
    v26 = v23;
    sub_1CF9E7948();

    v66 = 0x2064616572;
    v67 = 0xE500000000000000;
    v56 = v26;
    v27 = sub_1CF9E5AB8();
    MEMORY[0x1D3868CC0](v27);

    MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA50550);
    MEMORY[0x1D3868CC0](*(v60 + 32), *(v60 + 40));
    MEMORY[0x1D3868CC0](0x6E69616D6F642022, 0xE800000000000000);
    v53 = v67;
    v54 = v66;
    v55 = v25;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1CF9FA450;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1CEFD51C4();
    v29 = v53;
    *(v28 + 32) = v54;
    *(v28 + 40) = v29;
    sub_1CF9E6018();

    v30 = sub_1CF9E5688();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_1CF9E5678();
    type metadata accessor for LocalContainerSnapshot(0);
    sub_1CF00CC8C(&qword_1EDEA54F8, type metadata accessor for LocalContainerSnapshot);
    v33 = v55;
    sub_1CF9E5668();
    v34 = v33;
    v35 = v56;
    (*(v58 + 8))(v22, v59);

    sub_1CEFE4714(v35, v34);
LABEL_15:
    v50 = *MEMORY[0x1E69E9840];
    return;
  }

  v36 = [objc_opt_self() defaultManager];
  v37 = sub_1CF9E5928();
  v66 = 0;
  v38 = [v36 removeItemAtURL:v37 error:&v66];

  if (v38)
  {
    v39 = v66;
  }

  else
  {
    v40 = v66;
    v41 = sub_1CF9E57F8();

    swift_willThrow();
  }

  sub_1CF9E5118();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00CC8C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  sub_1CF9E57D8();
  v42 = sub_1CF9E50D8();
  (*(v63 + 8))(v18, v10);
  swift_willThrow();
  v66 = v42;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    (*(v63 + 32))(v62, v16, v10);
    sub_1CF00CC8C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57A8();
    sub_1CF9E5118();
    sub_1CF00CC8C(&unk_1EC4C1140, MEMORY[0x1E6967E70]);
    sub_1CF9E6C28();
    sub_1CF9E6C28();
    v44 = *(v57 + 8);
    v44(v7, v3);
    v44(v9, v3);
    if (v65 == v64)
    {

      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1CF9FA450;
      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 64) = sub_1CEFD51C4();
      *(v45 + 32) = 0xD00000000000002BLL;
      *(v45 + 40) = 0x80000001CFA50520;
      sub_1CF9E6018();

      v46 = type metadata accessor for LocalContainerMonitor(0);
      if (qword_1EDEA56B8 != -1)
      {
        v46 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v46);
      sub_1CF9E7398();
      v47 = v65;
      v48 = v61;
      sub_1CEFFF6AC(v61);

      v49 = type metadata accessor for LocalContainerSnapshot(0);
      *(v48 + *(v49 + 20)) = 1;
      *(v48 + *(v49 + 24)) = 1;
      sub_1CF4EC9F0();
      (*(v63 + 8))(v62, v10);
      (*(v58 + 8))(v22, v59);

      goto LABEL_15;
    }

    (*(v63 + 8))(v62, v10);
  }

  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA50500);
  v51 = sub_1CF9E5A18();
  MEMORY[0x1D3868CC0](v51);

  MEMORY[0x1D3868CC0](0x2064656C69616620, 0xED00002068746977);
  v65 = v42;
  sub_1CF9E7B58();
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF00C970(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = [objc_opt_self() defaultManager];
  v4 = [v7 URLsForDirectory:14 inDomains:1];
  v5 = sub_1CF9E5A58();
  v6 = sub_1CF9E6D48();

  if (*(v6 + 16))
  {
    (*(*(v5 - 8) + 16))(a2, v6 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);

    sub_1CF9E5938();
    sub_1CF9E7948();

    MEMORY[0x1D3868CC0](*(a1 + 32), *(a1 + 40));
    MEMORY[0x1D3868CC0](0x7473696C702ELL, 0xE600000000000000);
    sub_1CF9E5938();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF00CC24()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = sub_1CF0065A8(MEMORY[0x1E695DB80]);
  v1 = *MEMORY[0x1E69E9840];
  return v0 & 1;
}

uint64_t sub_1CF00CC8C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CF00CCE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  sub_1CEFCCBDC(a1 + *a3, &v15 - v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1CF9E5C48();
    (*(v10 + 8))(v8, v9);
    v12 = v13;
  }

  return v12;
}

id sub_1CF00CE50(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_1CEFE42D4(*v3, *(v3 + 8));
    v7 = sub_1CF9E5B48();
    sub_1CEFE48D8(v6, v4);
    v5 = v7;
  }

  return v5;
}

id sub_1CF00D1A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_1CF9E6888();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1CF00D644(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1CF00D95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1CF9E5248();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E5268();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1CF9E5D98();
  v53 = *(v59 - 8);
  v10 = *(v53 + 64);
  v11 = MEMORY[0x1EEE9AC00](v59);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v47 - v13;
  v54 = type metadata accessor for LocalDomain();
  v14 = *(*(v54 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v54);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1078, &qword_1CFA080B0);
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - v22;
  v24 = type metadata accessor for LocalContainerSnapshot(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v28 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1CF00E0A8();
  v30 = v62;
  sub_1CF9E8298();
  if (!v30)
  {
    v31 = v60;
    v48 = v27;
    v49 = v24;
    v62 = v19;
    v50 = v17;
    v33 = v58;
    v32 = v59;
    v34 = v57;
    v68 = 0;
    if (sub_1CF9E7D78())
    {
      sub_1CF9E51B8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00CC8C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v35 = v55;
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      (*(v56 + 8))(v31, v35);
      swift_willThrow();
      (*(v34 + 8))(v23, v20);
    }

    else
    {
      v67 = 1;
      sub_1CF00CC8C(&qword_1EDEAA310, type metadata accessor for LocalDomain);
      sub_1CF9E7D88();
      v66 = 2;
      sub_1CF00CC8C(&qword_1EDEAECB8, MEMORY[0x1E69695A8]);
      sub_1CF9E7D88();
      v37 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1080, &qword_1CFA080B8);
      v65 = 3;
      sub_1CF00E98C(&qword_1EDEA37D8, &unk_1EDEA7A80);
      sub_1CF9E7D88();
      v61 = v23;
      v38 = v64;
      v39 = v62;
      v40 = v50;
      sub_1CEFFD374(v62, v50, type metadata accessor for LocalDomain);
      v41 = v33;
      v42 = v53;
      (*(v53 + 16))(v52, v41, v32);
      v60 = v38;
      if (!*(v38 + 2))
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 168);
      }

      v43 = v49;
      v44 = *(v49 + 20);
      v55 = *(v49 + 24);
      v56 = v44;
      (*(v42 + 8))(v41, v32);
      sub_1CF0005D0(v39, type metadata accessor for LocalDomain);
      (*(v37 + 8))(v61, v20);
      v45 = v48;
      sub_1CF0008F4(v40, v48, type metadata accessor for LocalDomain);
      (*(v42 + 32))(v45 + *(v43 + 28), v52, v32);
      *(v45 + *(v43 + 32)) = v60;
      v46 = v55;
      *(v45 + v56) = 1;
      *(v45 + v46) = 1;
      sub_1CF0008F4(v45, v51, type metadata accessor for LocalContainerSnapshot);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

unint64_t sub_1CF00E0A8()
{
  result = qword_1EDEA5510[0];
  if (!qword_1EDEA5510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA5510);
  }

  return result;
}

uint64_t sub_1CF00E0FC()
{
  v1 = 118;
  v2 = 30323;
  if (*v0 != 2)
  {
    v2 = 99;
  }

  if (*v0)
  {
    v1 = 100;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for DocumentContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1CF00E1E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1CF9E5248();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E5268();
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1200, &qword_1CFA085E8);
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v18 = type metadata accessor for LocalDomain();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v22 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1CF00E7B8();
  v24 = v47;
  sub_1CF9E8298();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v25 = v45;
  v47 = v18;
  v26 = v10;
  v27 = v44;
  v52 = 0;
  if (sub_1CF9E7D78())
  {
    sub_1CF9E51B8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E824(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v28 = v42;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v43 + 8))(v25, v28);
    swift_willThrow();
    (*(v27 + 8))(v17, v14);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v51 = 1;
  *(v21 + 2) = sub_1CF9E7D48();
  *(v21 + 3) = v30;
  v50 = 2;
  v45 = sub_1CF9E7D48();
  v46 = v21;
  *(v21 + 4) = v45;
  *(v21 + 5) = v31;
  v43 = v31;
  v49 = 3;
  sub_1CF00E824(&unk_1EDEAB400, MEMORY[0x1E6968FB0]);
  sub_1CF9E7D88();
  v42 = v14;
  v32 = v47;
  v33 = *(v47 + 32);
  (*(v40 + 32))(&v46[v33], v13, v26);
  if (v45 == 0x6C75616665645F5FLL && v43 == 0xEB000000005F5F74)
  {
    v34 = 1;
  }

  else
  {
    v34 = sub_1CF9E8048();
  }

  v35 = v41;
  v21[*(v32 + 36)] = v34 & 1;
  v36 = sub_1CEFFBB54(&v21[v33]);
  v38 = v37;
  (*(v27 + 8))(v17, v42);
  *v21 = v38;
  *(v21 + 2) = v36;
  sub_1CF000F50(v21, v35, type metadata accessor for LocalDomain);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1CF000CD0(v21, type metadata accessor for LocalDomain);
}

unint64_t sub_1CF00E7B8()
{
  result = qword_1EDEAA328;
  if (!qword_1EDEAA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA328);
  }

  return result;
}

uint64_t sub_1CF00E824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00E86C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00E8B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00E8FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00E944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00E98C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C1080, &qword_1CFA080B8);
    sub_1CF00CC8C(a2, type metadata accessor for LocalContainer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF00EA28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v64 = type metadata accessor for LocalDomain();
  v3 = *(*(v64 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v64);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v52 - v6;
  v7 = sub_1CF9E5A58();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10C0, &unk_1CFA080D0);
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF00F0FC();
  v19 = v65;
  sub_1CF9E8298();
  if (v19)
  {
    v29 = a1;
  }

  else
  {
    v57 = v11;
    v58 = v7;
    v65 = v13;
    v20 = v63;
    LOBYTE(v66) = 0;
    v21 = sub_1CF9E7D48();
    v22 = v14;
    v24 = v23;
    v56 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    v68 = 1;
    sub_1CF00F168(&qword_1EDEA3818);
    sub_1CF9E7D88();
    v25 = v67;
    v54 = v66;
    v55 = v24;
    LOBYTE(v66) = 2;
    sub_1CF00CC8C(&unk_1EDEAB400, MEMORY[0x1E6968FB0]);
    v26 = v22;
    v27 = v17;
    v28 = v58;
    sub_1CF9E7D88();
    LOBYTE(v66) = 3;
    sub_1CF00CC8C(&qword_1EDEAA310, type metadata accessor for LocalDomain);
    v31 = v61;
    sub_1CF9E7D88();
    v53 = v27;
    v64 = v26;
    v32 = sub_1CF9E6888();

    (*(v62 + 16))(v57, v65, v28);
    v33 = v60;
    sub_1CEFFD374(v31, v60, type metadata accessor for LocalDomain);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v34 = sub_1CF9E6AE8();

    v56 = v25;
    v52 = a1;
    if (v34)
    {
      v35 = v32;

      v36 = v62;
      v37 = v54;
    }

    else
    {
      v38 = *MEMORY[0x1E6967258];
      v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v41 = v40;
      v35 = v32;

      v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v37 = v54;
      if (v39 == v42 && v41 == v43)
      {

        v36 = v62;
      }

      else
      {
        v44 = sub_1CF9E8048();

        v36 = v62;
        if ((v44 & 1) == 0)
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
        }
      }
    }

    v45 = v57;
    if ((sub_1CF9E5848() & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
    }

    v46 = v59;
    *v59 = v35;
    v46[1] = v37;
    v46[2] = v56;
    v47 = type metadata accessor for LocalContainer(0);
    v48 = *(v47 + 24);
    v49 = v47;
    v62 = v47;
    sub_1CEFFD374(v33, v46 + v48, type metadata accessor for LocalDomain);
    sub_1CEFFBA1C(v46 + *(v49 + 28));
    sub_1CF0005D0(v33, type metadata accessor for LocalDomain);
    v50 = *(v36 + 8);
    v51 = v58;
    v50(v45, v58);
    sub_1CF0005D0(v61, type metadata accessor for LocalDomain);
    v50(v65, v51);
    (*(v20 + 8))(v53, v64);
    *(v46 + *(v62 + 32)) = 1;
    v29 = v52;
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

unint64_t sub_1CF00F0FC()
{
  result = qword_1EDEA7AA8[0];
  if (!qword_1EDEA7AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA7AA8);
  }

  return result;
}

uint64_t sub_1CF00F168(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF00F1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00F23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00F2A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF00F304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF00F364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LocalFileEnumerator()
{
  result = qword_1EDEAB368;
  if (!qword_1EDEAB368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF00F410(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for LocalDomain();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v88 = *(v9 - 8);
  v10 = *(v88 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v93 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v74 - v13;
  v14 = sub_1CF9E7388();
  v90 = *(v14 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E7318();
  v83 = *(v17 - 8);
  v18 = *(v83 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v74 - v21;
  v81 = sub_1CF9E6448();
  v22 = *(v81 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v81);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v74 - v27;
  v29 = MEMORY[0x1E69E7CC0];
  v87 = a3;
  v84 = v9;
  v85 = a1;
  v74 = v8;
  v91 = v14;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CF9E7818())
  {
    sub_1CF6F4684(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CD0];
  }

  v31 = v86;
  *&v86[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumerators] = v30;
  v79 = OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue;
  v78 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v77 = "on.LocalChangesObserverContext";
  sub_1CF9E63F8();
  v95 = v29;
  sub_1CF00FE88(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF00FED0(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  v32 = v82;
  sub_1CF9E77B8();
  v33 = v81;
  (*(v22 + 16))(v26, v28, v81);
  v34 = v83;
  (*(v83 + 16))(v80, v32, v17);
  (*(v90 + 104))(v89, *MEMORY[0x1E69E8098], v91);
  v35 = v31;
  v36 = sub_1CF9E73B8();
  (*(v34 + 8))(v32, v17);
  (*(v22 + 8))(v28, v33);
  *&v31[v79] = v36;
  v37 = v92;
  if (*(v92 + 16))
  {
    v97 = v92;
    v38 = *MEMORY[0x1E6967298];
    v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v41 = v40;
    v42 = v85;
    if (v39 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v41 == v43)
    {

      v44 = v84;
      v45 = v87;
    }

    else
    {
      v46 = sub_1CF9E8048();

      v44 = v84;
      v45 = v87;
      if ((v46 & 1) == 0)
      {
        v56 = v74;
        sub_1CF00BE78(v87, v74, type metadata accessor for LocalDomain);
        v57 = type metadata accessor for FSChangesNotifier();
        v58 = *(v57 + 48);
        v59 = *(v57 + 52);
        swift_allocObject();
        v60 = v42;

        v61 = sub_1CF56356C(v60, v37, v56);
        *&v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier] = v61;
        if (v61)
        {
          goto LABEL_19;
        }

        v95 = 0;
        v96 = 0xE000000000000000;
        sub_1CF9E7948();
        v33 = 0xD000000000000011;
        MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA512D0);
        if (!*(v37 + 16))
        {
          goto LABEL_25;
        }

        v62 = v88;
        v63 = v37 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
        v64 = v93;
        (*(v88 + 16))(v93, v63, v44);
        sub_1CF9E5A18();
        (*(v62 + 8))(v64, v44);
        v65 = sub_1CF9E6888();

        v66 = [v65 fp_prettyPath];

        v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v69 = v68;

        MEMORY[0x1D3868CC0](v67, v69);

        MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA512F0);
        v37 = v95;
        v33 = v96;
        if (qword_1EDEA3408 != -1)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }
    }

    *&v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier] = 0;
    v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_shouldUpdateFileIDInGenstore] = 1;
    v47 = *(v37 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v95 = MEMORY[0x1E69E7CC0];
      sub_1CF000F0C(0, v47, 0);
      v48 = v95;
      v49 = *(v88 + 16);
      v90 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v91 = v49;
      v37 += v90;
      v89 = *(v88 + 72);
      v50 = (v88 + 8);
      v92 = v88 + 16;
      v51 = (v88 + 32);
      v33 = v75;
      do
      {
        v52 = v93;
        v91(v93, v37, v44);
        sub_1CF9E5958();
        (*v50)(v52, v44);
        v95 = v48;
        v54 = *(v48 + 16);
        v53 = *(v48 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1CF000F0C(v53 > 1, v54 + 1, 1);
          v48 = v95;
        }

        *(v48 + 16) = v54 + 1;
        v55 = v89;
        (*v51)(v48 + v90 + v54 * v89, v33, v44);
        v37 += v55;
        --v47;
      }

      while (v47);
      v35 = v86;
      v45 = v87;
      v42 = v85;
    }

    sub_1CF000FB8(v48);
    while (1)
    {
      *&v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID] = v42;
      v71 = v97;
      if (*(v97 + 16))
      {
        break;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      swift_once();
LABEL_18:
      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1CF9FA450;
      *(v70 + 56) = MEMORY[0x1E69E6158];
      *(v70 + 64) = sub_1CEFD51C4();
      *(v70 + 32) = v37;
      *(v70 + 40) = v33;
      sub_1CF9E6018();

LABEL_19:
      v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_shouldUpdateFileIDInGenstore] = 0;
    }

    (*(v88 + 16))(&v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_itemURL], v97 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v44);
    *&v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_urls] = v71;
    sub_1CF00BE78(v45, &v35[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain], type metadata accessor for LocalDomain);
    v94.receiver = v35;
    v94.super_class = ObjectType;
    v72 = objc_msgSendSuper2(&v94, sel_init);
    sub_1CF00F304(v45, type metadata accessor for LocalDomain);
    return v72;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF00FE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF00FED0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1CF00FF8C(void *a1)
{
  v1 = a1;
  sub_1CEFCE64C();

  sub_1CF9E5A58();
  v2 = sub_1CF9E6D28();

  return v2;
}

void sub_1CF01001C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a6;
  v33 = a5;
  v32 = sub_1CF9E63A8();
  v38 = *(v32 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  if (!a1)
  {
    v19 = fpfs_current_log();
  }

  v20 = a1;
  v34 = fpfs_adopt_log();
  v21 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v41 = v22;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v23 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v23);

  sub_1CF9E6978();

  v24 = __fp_log_fork();

  *(v21 + 16) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v7;
  *(v25 + 40) = a2;
  *(v25 + 48) = a3;
  *(v25 + 56) = a4;
  v26 = v35;
  *(v25 + 64) = v33;
  *(v25 + 72) = v26;
  v44 = sub_1CF010500;
  v45 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_18;
  v27 = _Block_copy(&aBlock);
  v28 = v19;

  v7;

  sub_1CF9E63F8();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1CF010454(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  v29 = v32;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v18, v14, v27);
  _Block_release(v27);
  (*(v38 + 8))(v14, v29);
  (*(v36 + 8))(v18, v37);

  v30 = v34;
  v31 = fpfs_adopt_log();
}

uint64_t sub_1CF0103FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF010454(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CF01049C()
{
  result = qword_1EDEAEDB0;
  if (!qword_1EDEAEDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAEDB0);
  }

  return result;
}

void sub_1CF01052C(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v55 = a4;
  v56 = a1;
  LODWORD(v58) = a3;
  v57 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1CF9E6448();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  v20 = v19;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v22 = sub_1CF8403B4();
      aBlock = v22;
      LOBYTE(v64) = 1;
      a7(&aBlock);

      return;
    }
  }

  v52 = v16;
  v53 = v13;
  v54 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v51[0] = [v23 serialQueue];

      v67 = nullsub_1;
      v68 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1CEFCA444;
      v66 = &block_descriptor_5544;
      v25 = _Block_copy(&aBlock);
      v26 = v59;
      sub_1CF9E63F8();
      v62 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v27 = v60;
      v28 = v54;
      sub_1CF9E77B8();
      v29 = v51[0];
      MEMORY[0x1D3869630](0, v26, v27, v25);
      _Block_release(v25);

      (*(v53 + 8))(v27, v28);
      (*(v52 + 8))(v26, v61);
    }
  }

  v51[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v30 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v31 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v32 = swift_allocObject();
  v32[2] = a6;
  v32[3] = sub_1CF7968B0;
  v51[1] = v20;
  v33 = v55;
  v32[4] = v20;
  v32[5] = v33;
  v32[6] = a5;
  v34 = a6;

  v35 = v30;
  v55 = fpfs_adopt_log();
  v36 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v64 = v37;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v41 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v41);

  sub_1CF9E6978();

  v42 = __fp_log_fork();

  *(v36 + 16) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v30;
  *(v43 + 24) = v36;
  *(v43 + 32) = v31;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  *(v43 + 56) = v40;
  *(v43 + 64) = sub_1CF902D8C;
  *(v43 + 72) = v32;
  v67 = sub_1CF2B9F54;
  v68 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1CEFCA444;
  v66 = &block_descriptor_5556;
  v44 = _Block_copy(&aBlock);
  v58 = v35;

  v45 = v31;

  v46 = v59;
  sub_1CF9E63F8();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v47 = v60;
  v48 = v54;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v44);
  (*(v53 + 8))(v47, v48);
  (*(v52 + 8))(v46, v61);

  v49 = v55;
  v50 = fpfs_adopt_log();
}

uint64_t sub_1CF010C2C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1CF8B19C0(a1, v6, v7, v1 + v4, v8, v10, v11);
}

void sub_1CF010CE0(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v191 = a4;
  v192 = a3;
  v188 = a2;
  v196 = a1;
  v193 = a5;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v179 = *(v172 - 8);
  v6 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v175 = v148 - v7;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v180 = v8;
  v181 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v148[12] = v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v148[7] = v148 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v148[11] = v148 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v148[6] = v148 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v148[10] = v148 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v148[5] = v148 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v148[9] = v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v148[3] = v148 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v165 = v148 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v159 = v148 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v169 = v148 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v160 = v148 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v161 = v148 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v162 = v148 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v148[8] = v148 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v148[2] = v148 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v164 = v148 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v155 = v148 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v166 = v148 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v156 = v148 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v157 = v148 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v158 = v148 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v148[4] = v148 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v148[1] = v148 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v163 = v148 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v150 = v148 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v151 = v148 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v152 = v148 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v153 = v148 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v154 = v148 - v70;
  v182 = type metadata accessor for ItemMetadata();
  v71 = *(*(v182 - 8) + 64);
  v72 = MEMORY[0x1EEE9AC00](v182);
  v149 = v148 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v178 = v148 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v168 = v148 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v167 = v148 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v177 = v148 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v174 = v148 - v82;
  v190 = sub_1CF9E5A58();
  v185 = *(v190 - 8);
  v83 = *(v185 + 64);
  v84 = MEMORY[0x1EEE9AC00](v190);
  v186 = v148 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v170 = v148 - v86;
  v87 = sub_1CF9E6118();
  v183 = *(v87 - 8);
  v184 = v87;
  v88 = *(v183 + 64);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v187 = v148 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v173 = v148 - v91;
  v92 = type metadata accessor for VFSItem(0);
  v194 = *(v92 - 8);
  v195 = v92;
  v93 = *(v194 + 64);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v176 = v148 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v97 = v148 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v99 = *(*(v98 - 8) + 64);
  v100 = MEMORY[0x1EEE9AC00](v98 - 8);
  v102 = (v148 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v100);
  v104 = v148 - v103;
  v105 = sub_1CF9E64A8();
  v106 = *(v105 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v109 = (v148 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = v5;
  v110 = *(v5 + 16);
  v111 = v110[8];
  *v109 = v111;
  (*(v106 + 104))(v109, *MEMORY[0x1E69E8018], v105);
  v112 = v111;
  v113 = sub_1CF9E64D8();
  (*(v106 + 8))(v109, v105);
  if (v113)
  {
    v189 = v110;
    v114 = *(v110[4] + 16);
    type metadata accessor for VFSFileTree(0);
    swift_dynamicCastClassUnconditional();

    sub_1CF264F9C(v192, v191, 0x208000u, v104);

    sub_1CEFCCBDC(v104, v102, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v115 = v194;
    v116 = v195;
    if ((*(v194 + 48))(v102, 1, v195) == 1)
    {
      sub_1CEFCCC44(v104, &unk_1EC4BEC00, &unk_1CF9FCB60);
      sub_1CEFCCC44(v102, &unk_1EC4BEC00, &unk_1CF9FCB60);
      (*(v115 + 56))(v193, 1, 1, v116);
    }

    else
    {
      sub_1CEFE4E00(v102, v97, type metadata accessor for VFSItem);
      v117 = v193;
      v118 = v189;
      if ((v188 & 1) == 0)
      {
        goto LABEL_11;
      }

      v119 = objc_sync_enter(v189);
      if (v119)
      {
        MEMORY[0x1EEE9AC00](v119);
        v146 = v118;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v145, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v120 = v118[qword_1EDEADAA8];
      v121 = objc_sync_exit(v118);
      if (v121)
      {
        MEMORY[0x1EEE9AC00](v121);
        v146 = v118;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v145, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      if ((v120 & 1) != 0 && (v97[8] != 2 || *v97 >= 2uLL) && v97[*(v195 + 28) + *(v182 + 72)] != 1)
      {
        MEMORY[0x1EEE9AC00](v121);
        v146 = v171;
        v147 = v97;
        sub_1CF928EDC("vfsItemFromURL(_:skipResetingItems:pkgItemsLookupPolicy:options:)", 65, 2, sub_1CF796578, &v145, v117);
        sub_1CEFCCC44(v104, &unk_1EC4BEC00, &unk_1CF9FCB60);
      }

      else
      {
LABEL_11:
        sub_1CEFCCC44(v104, &unk_1EC4BEC00, &unk_1CF9FCB60);
        sub_1CEFE505C(v97, v117, type metadata accessor for VFSItem);
        (*(v115 + 56))(v117, 0, 1, v195);
      }

      sub_1CF007CB8(v97, type metadata accessor for VFSItem);
    }
  }

  else
  {
    __break(1u);

    sub_1CF19BF48(&v213);
    sub_1CF007CB8(v178, type metadata accessor for ItemMetadata);
    sub_1CF007CB8(v174, type metadata accessor for ItemMetadata);
    v122 = v149;
    v123 = v110[1];

    *v110 = 0;
    v110[1] = 0;
    v124 = v183;
    *(v104 + 32) = v185;
    *(v104 + 40) = v124;
    v125 = (v104 + v102[9]);
    *v125 = v187;
    *(v125 + 2) = 0;
    *(v125 + 2) = 0;
    v125[24] = 0;
    sub_1CEFE505C(v122, v104 + v102[7], type metadata accessor for ItemMetadata);
    v126 = v186;
    sub_1CEFCCC44(&v186[v104], &unk_1EC4BED30, &unk_1CFA00710);
    sub_1CEFE55D0(v175, &v126[v104], &unk_1EC4BE310, qword_1CF9FCBE0);
    v184(&v126[v104], 0, 1, v172);
    LODWORD(v126) = *(v190 + 16);

    *(v104 + v102[13]) = v126;
    v127 = (v104 + v102[14]);
    *v127 = 0;
    v127[4] = 1;
    v128 = (v104 + v102[11]);
    *v128 = 0;
    v128[4] = 1;
    v129 = (v104 + v102[8]);
    v130 = *(v97 + 13);
    *(v129 + 12) = *(v97 + 12);
    *(v129 + 13) = v130;
    *(v129 + 14) = *(v97 + 14);
    *(v129 + 30) = v212;
    v131 = *(v97 + 9);
    *(v129 + 8) = *(v97 + 8);
    *(v129 + 9) = v131;
    v132 = *(v97 + 11);
    *(v129 + 10) = *(v97 + 10);
    *(v129 + 11) = v132;
    v133 = *(v97 + 5);
    *(v129 + 4) = *(v97 + 4);
    *(v129 + 5) = v133;
    v134 = *(v97 + 7);
    *(v129 + 6) = *(v97 + 6);
    *(v129 + 7) = v134;
    v135 = *(v97 + 1);
    *v129 = *v97;
    *(v129 + 1) = v135;
    v136 = *(v97 + 3);
    *(v129 + 2) = *(v97 + 2);
    *(v129 + 3) = v136;
    *(v104 + v102[10]) = 0;
    sub_1CF007CB8(v122, type metadata accessor for ItemMetadata);
    v137 = v193;
    sub_1CEFE4E00(v104, v193, type metadata accessor for VFSItem);
    (*(v194 + 56))(v137, 0, 1, v102);
    v138 = *(v97 + 27);
    v208 = *(v97 + 26);
    v209 = v138;
    v139 = *(v97 + 29);
    v210 = *(v97 + 28);
    v211 = v139;
    v140 = *(v97 + 23);
    v204 = *(v97 + 22);
    v205 = v140;
    v141 = *(v97 + 25);
    v206 = *(v97 + 24);
    v207 = v141;
    v142 = *(v97 + 19);
    v200 = *(v97 + 18);
    v201 = v142;
    v143 = *(v97 + 21);
    v202 = *(v97 + 20);
    v203 = v143;
    v144 = *(v97 + 17);
    v198 = *(v97 + 16);
    v197[0] = 0;
    v197[1] = v189;
    v197[2] = v191;
    v199 = v144;
    sub_1CF07574C(v197);
  }
}

void sub_1CF013B54(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3, v9);
  swift_unknownObjectRelease();
}

void sub_1CF013BE8(void *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for FSChangeToken();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5B88();
  sub_1CF01426C(v12, v13, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CF4EC1A4(v6);
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CF9FA450;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1CEFD51C4();
    *(v14 + 32) = 0xD000000000000035;
    *(v14 + 40) = 0x80000001CFA500D0;
    sub_1CF9E6018();

    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_1CF9E6888();
    v17 = [v15 initWithDomain:v16 code:-1002 userInfo:0];

    v18 = v17;
    v19 = sub_1CF9E57E8();

    [a1 finishEnumeratingWithError_];
  }

  else
  {
    v46 = a1;
    sub_1CF00F1D4(v6, v11, type metadata accessor for FSChangeToken);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1CF9E7948();

    v47 = 0xD000000000000017;
    v48 = 0x80000001CFA50110;
    v20 = [v1 description];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    MEMORY[0x1D3868CC0](v21, v23);

    MEMORY[0x1D3868CC0](0x3A64695B20, 0xE500000000000000);
    v24 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_rootID];
    v25 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v25);

    MEMORY[0x1D3868CC0](0x3A6D6F726620, 0xE600000000000000);
    v26 = sub_1CF015C10();
    MEMORY[0x1D3868CC0](v26);

    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v42 = v47;
    v44 = v1;
    v27 = v48;
    v28 = sub_1CEFFCE80();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1CF9FA440;
    v47 = v28;
    v30 = sub_1CEFFD0A8();
    v43 = v28;
    v45 = v30;
    v31 = sub_1CF9E7718();
    v33 = v32;
    v34 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1CEFD51C4();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    *(v29 + 96) = v34;
    *(v29 + 104) = v35;
    v36 = v42;
    *(v29 + 64) = v35;
    *(v29 + 72) = v36;
    *(v29 + 80) = v27;

    sub_1CF9E6018();

    sub_1CF016130(v44, v46, v11);

    sub_1CF9E7298();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1CF9FA450;
    v47 = v43;
    v38 = sub_1CF9E7718();
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = v35;
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    sub_1CF9E6018();

    sub_1CF00F2A4(v11, type metadata accessor for FSChangeToken);
  }

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t type metadata accessor for FSChangeToken()
{
  result = qword_1EDEA84D8;
  if (!qword_1EDEA84D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF01426C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CF9E53C8();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v29 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for FSChangeToken();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v26[-v17];
  v19 = *(v16 + 36);
  v20 = sub_1CF9E5D98();
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  if (a2 >> 60 == 15)
  {
    sub_1CF0156A8(&v18[v19]);
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  else
  {
    v27 = v19;
    v28 = a3;
    v21 = sub_1CF9E5688();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1CEFE42D4(a1, a2);
    sub_1CF9E5678();
    sub_1CF0149C0(&qword_1EDEA84E8, type metadata accessor for FSChangeToken);
    sub_1CF9E5668();

    sub_1CEFE48D8(a1, a2);
    sub_1CEFE48D8(a1, a2);
    sub_1CF0156A8(&v18[v27]);
    sub_1CF015710(v15, v18);
    v24 = v28;
    sub_1CF015774(v18, v28);
    (*(v11 + 56))(v24, 0, 1, v10);
    return sub_1CF0157D8(v18);
  }
}

uint64_t sub_1CF0149C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF014A20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v77[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5248();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E5268();
  v7 = *(v6 - 8);
  v69 = v6;
  v70 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1CF9E5A58();
  v67 = *(v72 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v12 = *(*(v64 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v64);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  v18 = sub_1CF9E5D98();
  v65 = *(v18 - 8);
  v19 = v65[8];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1748, &qword_1CFA0AA00);
  v71 = *(v22 - 8);
  v23 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v61 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1CF0152C8();
  v28 = v75;
  sub_1CF9E8298();
  if (!v28)
  {
    v75 = v21;
    v61 = v15;
    v62 = v17;
    v29 = v72;
    v30 = v71;
    LOBYTE(v77[0]) = 0;
    v31 = sub_1CF9E7D78();
    v32 = v22;
    if (v31)
    {
      if (v31 == 2)
      {
        LOBYTE(v77[0]) = 1;
        sub_1CF0149C0(&qword_1EDEAECB8, MEMORY[0x1E69695A8]);
        sub_1CF9E7D88();
        LOBYTE(v77[0]) = 2;
        v33 = v30;
        v50 = sub_1CF9E7DE8();
        LOBYTE(v77[0]) = 3;
        v51 = sub_1CF9E7DE8();
        v76 = 4;
        sub_1CF015474();
        sub_1CF9E7D88();
        v52 = LOBYTE(v77[0]);
        LOBYTE(v77[0]) = 5;
        v53 = sub_1CF9E7DE8();
        LODWORD(v72) = v52;
        v73 = v53;
        LOBYTE(v77[0]) = 6;
        sub_1CF01559C(&qword_1EDEAB388, &qword_1EDEAECB8);
        v54 = v62;
        sub_1CF9E7D88();
        (*(v33 + 8))(v25, v32);
        v55 = v65;
        v56 = v63;
        (v65[4])(v63, v75, v18);
        v57 = v54;
        v58 = v61;
        sub_1CF015638(v57, v61);
        v59 = type metadata accessor for FSChangeToken();
        v60 = v59[9];
        (v55[7])(v56 + v60, 1, 1, v18);
        *(v56 + v59[5]) = v50;
        *(v56 + v59[6]) = v51;
        *(v56 + v59[7]) = v72;
        *(v56 + v59[8]) = v73;
        sub_1CEFFFEB8(v58, v56 + v60);
        goto LABEL_11;
      }
    }

    else
    {
      v75 = v22;
      v34 = [objc_opt_self() defaultManager];
      v35 = [v34 URLsForDirectory:14 inDomains:1];
      v36 = v29;
      v37 = sub_1CF9E6D48();

      if (!*(v37 + 16))
      {
        __break(1u);
      }

      v39 = v66;
      v38 = v67;
      (*(v67 + 16))(v66, v37 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v36);

      sub_1CF9E5938();
      v40 = sub_1CF9E5928();
      v77[0] = 0;
      v65 = v34;
      v41 = [v34 removeItemAtURL:v40 error:v77];

      if (v41)
      {
        v42 = *(v38 + 8);
        v43 = v77[0];
        v42(v39, v36);
      }

      else
      {
        v44 = v77[0];
        v45 = sub_1CF9E57F8();

        swift_willThrow();
        (*(v38 + 8))(v39, v36);
      }

      v32 = v75;
    }

    sub_1CF9E51B8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF0149C0(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v47 = v68;
    v46 = v69;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v70 + 8))(v47, v46);
    swift_willThrow();
    (*(v30 + 8))(v25, v32);
  }

LABEL_11:
  result = __swift_destroy_boxed_opaque_existential_1(v74);
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1CF0152C8()
{
  result = qword_1EDEA8508;
  if (!qword_1EDEA8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8508);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ErrorDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ErrorDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1CF015474()
{
  result = qword_1EDEA6C58;
  if (!qword_1EDEA6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6C58);
  }

  return result;
}

unint64_t sub_1CF015528()
{
  result = qword_1EDEA6C60;
  if (!qword_1EDEA6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6C60);
  }

  return result;
}

void *sub_1CF01557C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1CF01559C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BEDE0, qword_1CF9FA390);
    sub_1CF0149C0(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF015638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF0156A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF015710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FSChangeToken();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF015774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FSChangeToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF0157D8(uint64_t a1)
{
  v2 = type metadata accessor for FSChangeToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF015848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E5D98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CF015988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5D98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CF015B18()
{
  v3 = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v0 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FF0, qword_1CFA07EE0);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  result = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF015C10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_1CF9E5D98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  v11 = type metadata accessor for FSChangeToken();
  v12 = *(v0 + v11[8]);
  if (v12)
  {
    v29[0] = 0x3A66666F20;
    v29[1] = 0xE500000000000000;
    v27 = v12;
    v13 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v13);

    MEMORY[0x1D3868CC0](v29[0], v29[1]);
  }

  sub_1CF0160C0(v0 + v11[9], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CF0156A8(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    strcpy(v29, " containers:");
    BYTE5(v29[1]) = 0;
    HIWORD(v29[1]) = -5120;
    v27 = sub_1CF9E5D18();
    v28 = v14;
    v25 = 45;
    v26 = 0xE100000000000000;
    sub_1CEFE4E68();
    v15 = sub_1CF9E7638();

    if (!v15[2])
    {
      goto LABEL_10;
    }

    v17 = v15[4];
    v18 = v15[5];

    MEMORY[0x1D3868CC0](v17, v18);

    MEMORY[0x1D3868CC0](v29[0], v29[1]);

    (*(v7 + 8))(v10, v6);
  }

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  MEMORY[0x1D3868CC0](0x65676E6168435346, 0xED00006E656B6F54);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v27 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1758, &qword_1CFA0AA10);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A76656420, 0xE500000000000000);
  v27 = sub_1CF9E5D18();
  v28 = v19;
  v25 = 45;
  v26 = 0xE100000000000000;
  sub_1CEFE4E68();
  v20 = sub_1CF9E7638();

  if (v20[2])
  {
    v21 = v20[4];
    v22 = v20[5];

    MEMORY[0x1D3868CC0](v21, v22);

    MEMORY[0x1D3868CC0](0x7361426874617020, 0xEB000000003A6465);
    v27 = *(v1 + v11[5]);
    v23 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v23);

    MEMORY[0x1D3868CC0](0x65736142636F640ALL, 0xEA00000000003A64);
    v27 = *(v1 + v11[6]);
    v24 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v24);

    MEMORY[0x1D3868CC0](v30, v31);
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);

    return v29[0];
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF0160C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CF016130(uint64_t a1, void *a2, uint64_t a3)
{
  v77 = a3;
  v6 = type metadata accessor for FSChangeToken();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for LocalContainer(0);
  v78 = *(v80 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1CF9E5A58();
  v82 = *(v74 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v75 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalDomain();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v68 - v19;
  v21 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v22 = a1;
  v23 = sub_1CF9E6888();
  v24 = [v21 initWithSuiteName_];

  if (v24)
  {
    v25 = sub_1CF9E6888();
    v26 = [v24 BOOLForKey_];

    if (v26)
    {
      goto LABEL_14;
    }
  }

  v27 = v22 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot;
  swift_beginAccess();
  v28 = sub_1CF016934(a2);
  swift_endAccess();
  if ((v28 & 1) == 0)
  {
LABEL_14:
    v61 = *(v22 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
    sub_1CF00BE10(v77, v9, type metadata accessor for FSChangeToken);
    v62 = v61;
    v63 = sub_1CF018EB8();
    v64 = v9;
    v66 = v65;
    v67 = sub_1CF9E5B48();
    sub_1CEFE4714(v63, v66);
    sub_1CF00F2A4(v64, type metadata accessor for FSChangeToken);
    sub_1CF019840(a2);

    return;
  }

  v71 = v9;
  v72 = v3;
  v29 = v22;
  v70 = type metadata accessor for LocalContainerSnapshot(0);
  v30 = *(v70 + 28);
  v31 = sub_1CF9E5D98();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v20, v27 + v30, v31);
  (*(v32 + 56))(v20, 0, 1, v31);
  sub_1CEFFFEB8(v20, v77 + *(v6 + 36));
  v33 = OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator;
  v73 = v29;
  v34 = *(v29 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
  v35 = *&v34[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1CF4EC25C;
  *(v37 + 24) = v36;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_20;
  v38 = _Block_copy(aBlock);
  v39 = v34;

  dispatch_sync(v35, v38);
  _Block_release(v38);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    v69 = v33;
    v40 = *(v27 + *(v70 + 32));
    v41 = *(v40 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v70 = a2;
      aBlock[0] = MEMORY[0x1E69E7CC0];

      sub_1CF000F0C(0, v41, 0);
      v42 = aBlock[0];
      v43 = *(v78 + 80);
      v68[1] = v40;
      v44 = v40 + ((v43 + 32) & ~v43);
      v78 = *(v78 + 72);
      v45 = (v82 + 16);
      v46 = v74;
      v47 = v75;
      do
      {
        v48 = v79;
        sub_1CF00BE10(v44, v79, type metadata accessor for LocalContainer);
        (*v45)(v47, v48 + *(v80 + 28), v46);
        sub_1CF00F2A4(v48, type metadata accessor for LocalContainer);
        aBlock[0] = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1CF000F0C(v49 > 1, v50 + 1, 1);
          v42 = aBlock[0];
        }

        *(v42 + 16) = v50 + 1;
        (*(v82 + 32))(v42 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v50, v47, v46);
        v44 += v78;
        --v41;
      }

      while (v41);

      a2 = v70;
    }

    v51 = v73;
    v52 = *(v73 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_rootID);
    v53 = v76;
    sub_1CF00BE10(v73 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_domain, v76, type metadata accessor for LocalDomain);
    v54 = objc_allocWithZone(type metadata accessor for LocalFileEnumerator());
    v55 = sub_1CF00F410(v52, v42, v53);
    v56 = *(v51 + v69);
    *(v51 + v69) = v55;
    v57 = v55;

    v58 = *&v57[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier];
    if (v58)
    {
      v59 = OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader;
      *(*(v58 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4C06F90;
      swift_unknownObjectWeakAssign();
      v60 = *(v58 + v59);
      sub_1CF01C124();
    }

    v9 = v71;
    v22 = v73;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1CF0168E8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF016934(void *a1)
{
  v187 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8);
  v178 = *(v1 - 8);
  v2 = *(v178 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v180 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v188 = &v168 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v214 = &v168 - v8;
  v9 = type metadata accessor for LocalDomain();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v213 = (&v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v212 = &v168 - v13;
  v211 = sub_1CF9E5A58();
  v193 = *(v211 - 8);
  v14 = *(v193 + 64);
  v15 = MEMORY[0x1EEE9AC00](v211);
  v215 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v210 = &v168 - v17;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  v18 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v168 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v183 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v206 = &v168 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v202 = &v168 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v197 = &v168 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v168 - v31;
  v207 = type metadata accessor for LocalContainer(0);
  v190 = *(v207 - 8);
  v33 = *(v190 + 64);
  v34 = MEMORY[0x1EEE9AC00](v207);
  v209 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v216 = (&v168 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v208 = (&v168 - v38);
  v201 = type metadata accessor for LocalContainerSnapshot(0);
  v176 = *(v201 - 8);
  v39 = *(v176 + 64);
  v40 = MEMORY[0x1EEE9AC00](v201);
  v177 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v168 - v41;
  v43 = sub_1CF9E5D98();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v168 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for LocalContainerMonitor(0);
  v49 = v48;
  if (qword_1EDEA56B8 != -1)
  {
    v48 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v48);
  v50 = v200;
  *(&v168 - 2) = v49;
  *(&v168 - 1) = v50;
  sub_1CF9E7398();
  v217 = 0;
  v51 = v221;
  v52 = *(v201 + 28);
  v53 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version;
  swift_beginAccess();
  (*(v44 + 16))(v47, &v51[v53], v43);
  LOBYTE(v53) = sub_1CF9E5D48();
  v195 = v44;
  v54 = *(v44 + 8);
  v182 = v44 + 8;
  v181 = v54;
  v54(v47, v43);
  if (v53)
  {

    return 0;
  }

  v56 = v47;
  v170 = v39;
  v175 = v51;
  sub_1CEFFF6AC(v42);
  v219 = 0;
  v220 = 0xE000000000000000;
  sub_1CF9E7948();

  v219 = 0xD000000000000020;
  v220 = 0x80000001CFA50400;
  sub_1CF00CC8C(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
  v57 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v57);

  MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
  v58 = v201;
  v59 = *(v201 + 28);
  v199 = v42;
  v173 = v59;
  v198 = v43;
  v60 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v60);

  v61 = v219;
  v62 = v220;
  v63 = v58;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1CF9FA450;
  *(v64 + 56) = MEMORY[0x1E69E6158];
  *(v64 + 64) = sub_1CEFD51C4();
  *(v64 + 32) = v61;
  *(v64 + 40) = v62;
  sub_1CF9E6018();

  v65 = MEMORY[0x1E69E7CC0];
  v219 = MEMORY[0x1E69E7CC0];
  v66 = *(v63 + 32);
  v67 = *(v200 + v66);
  v68 = *(v67 + 16);
  v174 = v52;
  v172 = v66;
  v171 = v67;
  if (v68)
  {
    v69 = v67 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
    v70 = *MEMORY[0x1E6967258];
    v204 = (v190 + 48);
    v196 = (v195 + 48);
    v168 = (v195 + 32);
    v185 = (v193 + 16);
    v184 = (v193 + 8);
    v203 = MEMORY[0x1E69E7CC0];
    v71 = *(v190 + 72);
    v194 = v32;
    v72 = v208;
    v169 = v56;
    v205 = v70;
    v189 = v71;
    while (1)
    {
      sub_1CEFFD374(v69, v72, type metadata accessor for LocalContainer);
      v73 = *v72;
      v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v76 = v75;
      if (v74 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v76 == v77)
      {
      }

      else
      {
        v79 = sub_1CF9E8048();

        if ((v79 & 1) == 0)
        {
          v81 = *&v199[*(v201 + 32)];
          MEMORY[0x1EEE9AC00](v80);
          *(&v168 - 2) = v72;
          v82 = v217;
          sub_1CF0183F0(sub_1CF0185BC, v83, v32);
          v217 = v82;
          v84 = (*v204)(v32, 1, v207);
          v85 = v206;
          if (v84 == 1)
          {
            sub_1CEFCCC44(v32, &unk_1EC4C1110, &qword_1CFA08100);
            v86 = v73;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v72 = v208;
              v87 = v203;
            }

            else
            {
              v87 = sub_1CF1F72E0(0, v203[2] + 1, 1, v203);
              v72 = v208;
            }

            v89 = v87[2];
            v88 = v87[3];
            if (v89 >= v88 >> 1)
            {
              v87 = sub_1CF1F72E0((v88 > 1), v89 + 1, 1, v87);
            }

            v87[2] = v89 + 1;
            v203 = v87;
            v87[v89 + 4] = v86;
            goto LABEL_11;
          }

          sub_1CF0008F4(v32, v216, type metadata accessor for LocalContainer);
          v90 = v197;
          sub_1CF01866C(v197);
          v91 = *v196;
          v92 = v198;
          v93 = (*v196)(v90, 1, v198);
          sub_1CEFCCC44(v90, &unk_1EC4BEDE0, qword_1CF9FA390);
          if (v93 == 1)
          {
            goto LABEL_30;
          }

          v94 = v202;
          sub_1CF01866C(v202);
          sub_1CF01866C(v85);
          v95 = v85;
          v96 = *(v192 + 48);
          v97 = v94;
          v98 = v191;
          sub_1CEFCCBDC(v97, v191, &unk_1EC4BEDE0, qword_1CF9FA390);
          v186 = v96;
          v99 = v98 + v96;
          v100 = v95;
          sub_1CEFCCBDC(v95, v99, &unk_1EC4BEDE0, qword_1CF9FA390);
          if (v91(v98, 1, v92) == 1)
          {
            sub_1CEFCCC44(v95, &unk_1EC4BEDE0, qword_1CF9FA390);
            sub_1CEFCCC44(v202, &unk_1EC4BEDE0, qword_1CF9FA390);
            v101 = v91(v98 + v186, 1, v92);
            v32 = v194;
            if (v101 == 1)
            {
              sub_1CEFCCC44(v98, &unk_1EC4BEDE0, qword_1CF9FA390);
              goto LABEL_40;
            }

LABEL_29:
            sub_1CEFCCC44(v98, &qword_1EC4C1108, &qword_1CFA18060);
            goto LABEL_30;
          }

          v102 = v183;
          sub_1CEFCCBDC(v98, v183, &unk_1EC4BEDE0, qword_1CF9FA390);
          if (v91(v98 + v186, 1, v92) == 1)
          {
            sub_1CEFCCC44(v100, &unk_1EC4BEDE0, qword_1CF9FA390);
            sub_1CEFCCC44(v202, &unk_1EC4BEDE0, qword_1CF9FA390);
            v181(v102, v92);
            goto LABEL_29;
          }

          v123 = v169;
          (*v168)(v169, v98 + v186, v92);
          sub_1CF00CC8C(&qword_1EDEAECC0, MEMORY[0x1E69695A8]);
          LODWORD(v186) = sub_1CF9E6868();
          v124 = v102;
          v125 = v181;
          v181(v123, v92);
          sub_1CEFCCC44(v100, &unk_1EC4BEDE0, qword_1CF9FA390);
          sub_1CEFCCC44(v202, &unk_1EC4BEDE0, qword_1CF9FA390);
          v125(v124, v92);
          sub_1CEFCCC44(v98, &unk_1EC4BEDE0, qword_1CF9FA390);
          v32 = v194;
          if (v186)
          {
LABEL_40:
            sub_1CF0005D0(v216, type metadata accessor for LocalContainer);
          }

          else
          {
LABEL_30:
            v103 = v207;
            v104 = *v185;
            v105 = v216;
            v106 = v210;
            v107 = v211;
            (*v185)(v210, v216 + *(v207 + 28), v211);
            v108 = v105 + *(v103 + 24);
            v109 = v212;
            sub_1CEFFD374(v108, v212, type metadata accessor for LocalDomain);
            v104(v215, v106, v107);
            v110 = v213;
            sub_1CEFFD374(v109, v213, type metadata accessor for LocalDomain);
            v111 = type metadata accessor for VFSItem(0);
            v112 = v214;
            (*(*(v111 - 8) + 56))(v214, 1, 1, v111);
            v113 = objc_allocWithZone(type metadata accessor for LocalItem(0));
            v114 = sub_1CF001704(v215, v110, v112);
            sub_1CF0005D0(v109, type metadata accessor for LocalDomain);
            (*v184)(v106, v107);
            if (v114)
            {
              v115 = v73;
              v116 = v203;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v71 = v189;
              if (isUniquelyReferenced_nonNull_native)
              {
                v32 = v194;
                v118 = v216;
                v119 = v116;
              }

              else
              {
                v119 = sub_1CF1F72E0(0, v116[2] + 1, 1, v116);
                v32 = v194;
                v118 = v216;
              }

              v121 = v119[2];
              v120 = v119[3];
              if (v121 >= v120 >> 1)
              {
                v119 = sub_1CF1F72E0((v120 > 1), v121 + 1, 1, v119);
              }

              v119[2] = v121 + 1;
              v203 = v119;
              v119[v121 + 4] = v115;
              v122 = v114;
              MEMORY[0x1D3868FA0]();
              if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v126 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1CF9E6D88();
              }

              sub_1CF9E6DE8();

              sub_1CF0005D0(v118, type metadata accessor for LocalContainer);
              v72 = v208;
              goto LABEL_11;
            }

            sub_1CF0005D0(v216, type metadata accessor for LocalContainer);
            v32 = v194;
          }

          v72 = v208;
          v71 = v189;
        }
      }

LABEL_11:
      sub_1CF0005D0(v72, type metadata accessor for LocalContainer);
      v69 += v71;
      if (!--v68)
      {
        v66 = *(v201 + 32);
        v65 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }
    }
  }

  v203 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v127 = *&v199[v66];
  swift_bridgeObjectRetain_n();
  v128 = sub_1CF018774(v127, v200);

  v218 = v65;
  v129 = *(v128 + 16);
  v130 = v198;
  if (v129)
  {
    v197 = v127;
    v131 = *(v207 + 28);
    v207 = *(v207 + 24);
    v208 = v131;
    v132 = (*(v190 + 80) + 32) & ~*(v190 + 80);
    v196 = v128;
    v133 = v128 + v132;
    v206 = *(v190 + 72);
    v204 = (v193 + 8);
    v205 = (v193 + 16);
    v202 = MEMORY[0x1E69E7CC0];
    v134 = v215;
    do
    {
      v216 = type metadata accessor for LocalContainer;
      v217 = v129;
      v135 = v209;
      sub_1CEFFD374(v133, v209, type metadata accessor for LocalContainer);
      v136 = *v205;
      v138 = v210;
      v137 = v211;
      (*v205)(v210, v208 + v135, v211);
      v139 = v212;
      sub_1CEFFD374(v135 + v207, v212, type metadata accessor for LocalDomain);
      v136(v134, v138, v137);
      v140 = v213;
      sub_1CEFFD374(v139, v213, type metadata accessor for LocalDomain);
      v141 = type metadata accessor for VFSItem(0);
      v142 = v214;
      (*(*(v141 - 8) + 56))(v214, 1, 1, v141);
      v143 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v144 = sub_1CF001704(v134, v140, v142);
      sub_1CF0005D0(v139, type metadata accessor for LocalDomain);
      (*v204)(v138, v137);
      v145 = sub_1CF0005D0(v135, v216);
      if (v144)
      {
        MEMORY[0x1D3868FA0](v145);
        if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v146 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v202 = v218;
      }

      v133 += v206;
      v129 = v217 - 1;
    }

    while (v217 != 1);

    v130 = v198;
    v147 = v203;
    v127 = v197;
    v148 = v202;
  }

  else
  {

    v148 = MEMORY[0x1E69E7CC0];
    v147 = v203;
  }

  sub_1CF018CFC(v148);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v203 = v147;
  v149 = sub_1CF9E6D28();
  v150 = v187;
  [v187 didDeleteItemsWithIdentifiers_];

  v151 = v219;
  v152 = v200;
  if (v219 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    sub_1CF9E7B78();
  }

  else
  {

    sub_1CF9E8068();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  v153 = sub_1CF9E6D28();

  [v150 didUpdateItems_];

  v154 = v199;
  (*(v195 + 24))(v152 + v174, &v199[v173], v130);

  *(v152 + v172) = v127;
  if (v151 >> 62)
  {
    v155 = sub_1CF9E7818();
  }

  else
  {
    v155 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v156 = v201;
  v157 = v188;
  if (v155 <= 0)
  {
    v158 = v203[2];

    if (!v158)
    {
      sub_1CF0005D0(v154, type metadata accessor for LocalContainerSnapshot);

      return 0;
    }
  }

  else
  {
  }

  v159 = *(v152 + *(v156 + 24));
  v160 = v175;
  if (*(v152 + *(v156 + 20)) == 1)
  {
    if (*(v152 + *(v156 + 24)))
    {
      sub_1CEFFD374(v152, v157, type metadata accessor for LocalContainerSnapshot);
      v161 = 0;
    }

    else
    {
      v161 = 1;
    }

    v162 = v176 + 56;
    (*(v176 + 56))(v157, v161, 1, v156);
    v163 = v180;
    sub_1CEFCCBDC(v157, v180, &unk_1EC4C10F8, &qword_1CFA080F8);
    v164 = v177;
    sub_1CEFFD374(v154, v177, type metadata accessor for LocalContainerSnapshot);
    v165 = (*(v178 + 80) + 16) & ~*(v178 + 80);
    v166 = (v179 + *(v162 + 24) + v165) & ~*(v162 + 24);
    v167 = swift_allocObject();
    sub_1CF4F1080(v163, v167 + v165);
    sub_1CF0008F4(v164, v167 + v166, type metadata accessor for LocalContainerSnapshot);
    sub_1CF4EDEA8(v203, sub_1CF4F10F0, v167);

    sub_1CEFCCC44(v157, &unk_1EC4C10F8, &qword_1CFA080F8);
    sub_1CF0005D0(v154, type metadata accessor for LocalContainerSnapshot);
  }

  else
  {
    if (!*(v152 + *(v156 + 24)))
    {
      sub_1CF0005D0(v154, type metadata accessor for LocalContainerSnapshot);

      return 1;
    }

    sub_1CF4EC9F0();

    sub_1CF0005D0(v154, type metadata accessor for LocalContainerSnapshot);
  }

  return 1;
}

uint64_t sub_1CF01819C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for LocalContainerSnapshot(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    v9 = *(v8 + 24);

    v10 = *(v8 + 40);

    v11 = *(type metadata accessor for LocalDomain() + 32);
    v12 = sub_1CF9E5A58();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
    v13 = *(v4 + 28);
    v14 = sub_1CF9E5D98();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
    v15 = *(v8 + *(v4 + 32));
  }

  v16 = v0 + ((v2 + v3 + v6) & ~v6);
  v17 = *(v16 + 24);

  v18 = *(v16 + 40);

  v19 = *(type metadata accessor for LocalDomain() + 32);
  v20 = sub_1CF9E5A58();
  (*(*(v20 - 8) + 8))(v16 + v19, v20);
  v21 = *(v4 + 28);
  v22 = sub_1CF9E5D98();
  (*(*(v22 - 8) + 8))(v16 + v21, v22);
  v23 = *(v16 + *(v4 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF0183F0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocalContainer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1CEFFD374(v13, v11, type metadata accessor for LocalContainer);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1CF0005D0(v11, type metadata accessor for LocalContainer);
      }

      if (v15)
      {
        break;
      }

      sub_1CF0005D0(v11, type metadata accessor for LocalContainer);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1CF0008F4(v11, v19, type metadata accessor for LocalContainer);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_1CF0185DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (v4 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();
  }

  return v9 & 1;
}

uint64_t sub_1CF01866C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LocalContainer(0) + 28);
  v4 = sub_1CF9E5898();
  v5 = v4;
  if (v4[2] >= 9uLL && (v4[20] == 0x746E656D75636F44 ? (v7 = v4[21] == 0xE900000000000073) : (v7 = 0), v7 || (sub_1CF9E8048() & 1) != 0))
  {
    v8 = v5[18];
    v9 = v5[19];

    sub_1CF9E5D08();
  }

  else
  {
    v6 = sub_1CF9E5D98();
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_1CF018774(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v51 = type metadata accessor for LocalContainer(0);
  v3 = *(*(v51 - 1) + 64);
  v4 = MEMORY[0x1EEE9AC00](v51);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v43 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = (&v43 - v11);
  v46 = *(a1 + 16);
  if (v46)
  {
    v13 = 0;
    v14 = *(v10 + 72);
    v48 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v45 = a1 + v48;
    v15 = MEMORY[0x1E69E7CC0];
    v44 = v6;
    while (1)
    {
      v49 = v15;
      sub_1CEFFD374(v45 + v14 * v13, v12, type metadata accessor for LocalContainer);
      v16 = *(v47 + *(type metadata accessor for LocalContainerSnapshot(0) + 32));
      v17 = *(v16 + 16);
      v50 = v16;

      if (v17)
      {
        break;
      }

LABEL_34:

      v38 = v44;
      sub_1CF0008F4(v12, v44, type metadata accessor for LocalContainer);
      v15 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CF680DD0(0, *(v15 + 16) + 1, 1);
        v15 = v52;
      }

      v41 = *(v15 + 16);
      v40 = *(v15 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1CF680DD0(v40 > 1, v41 + 1, 1);
        v15 = v52;
      }

      *(v15 + 16) = v41 + 1;
      sub_1CF0008F4(v38, v15 + v48 + v41 * v14, type metadata accessor for LocalContainer);
LABEL_39:
      if (++v13 == v46)
      {
        return v15;
      }
    }

    v18 = v50 + v48;
    while (1)
    {
      sub_1CEFFD374(v18, v9, type metadata accessor for LocalContainer);
      v19 = *v9;
      v20 = *v12;
      v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v23 = v22;
      if (v21 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v23 == v24)
      {
      }

      else
      {
        v26 = sub_1CF9E8048();

        if ((v26 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v27 = v9[2];
      v28 = v12[2];
      if (v27)
      {
        if (!v28 || (v9[1] != v12[1] || v27 != v28) && (sub_1CF9E8048() & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v28)
      {
        goto LABEL_32;
      }

      v29 = v51[6];
      v30 = v9 + v29;
      v31 = v12 + v29;
      if (*(v9 + v29) != *(v12 + v29) || *(v30 + 2) != *(v31 + 2) || (*(v30 + 2) != *(v31 + 2) || *(v30 + 3) != *(v31 + 3)) && (sub_1CF9E8048() & 1) == 0 || (*(v30 + 4) != *(v31 + 4) || *(v30 + 5) != *(v31 + 5)) && (sub_1CF9E8048() & 1) == 0 || (v32 = type metadata accessor for LocalDomain(), v33 = *(v32 + 32), (sub_1CF9E59A8() & 1) == 0) || v30[*(v32 + 36)] != v31[*(v32 + 36)] || (v34 = v51[7], (sub_1CF9E59A8() & 1) == 0))
      {
LABEL_32:
        sub_1CF0005D0(v9, type metadata accessor for LocalContainer);
        goto LABEL_33;
      }

      v35 = v51[8];
      v36 = *(v9 + v35);
      v37 = *(v12 + v35);
      sub_1CF0005D0(v9, type metadata accessor for LocalContainer);
      if (v36 == v37)
      {

        sub_1CF0005D0(v12, type metadata accessor for LocalContainer);
        v15 = v49;
        goto LABEL_39;
      }

LABEL_33:
      v18 += v14;
      if (!--v17)
      {
        goto LABEL_34;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CF018C04(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1CF9E7818();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1CF9E7818();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1CF1F9400(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CF018D14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CF9E7818();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CF9E7818();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CEFCCCEC(&qword_1EC4BE7F0, &qword_1EC4BE7E8, &qword_1CF9FE6B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7E8, &qword_1CF9FE6B8);
            v9 = sub_1CF8E376C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LocalItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF018EB8()
{
  v0 = sub_1CF9E53C8();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1CF9E56C8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1CF9E56B8();
  type metadata accessor for FSChangeToken();
  sub_1CF0149C0(&qword_1EDEA84F0, type metadata accessor for FSChangeToken);
  v6 = sub_1CF9E56A8();

  return v6;
}

uint64_t sub_1CF019470(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1750, &qword_1CFA0AA08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF0152C8();
  sub_1CF9E82A8();
  v17[15] = 0;
  sub_1CF9E7EE8();
  if (!v2)
  {
    v17[14] = 1;
    sub_1CF9E5D98();
    sub_1CF0149C0(&qword_1EDEAECC8, MEMORY[0x1E69695A8]);
    sub_1CF9E7F08();
    v11 = type metadata accessor for FSChangeToken();
    v12 = *(v3 + v11[5]);
    v17[13] = 2;
    sub_1CF9E7F68();
    v13 = *(v3 + v11[6]);
    v17[12] = 3;
    sub_1CF9E7F68();
    v17[11] = *(v3 + v11[7]);
    v17[10] = 4;
    sub_1CF019790();
    sub_1CF9E7F08();
    v14 = *(v3 + v11[8]);
    v17[9] = 5;
    sub_1CF9E7F68();
    v15 = v11[9];
    v17[8] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
    sub_1CF01559C(&unk_1EDEAB390, &qword_1EDEAECC8);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CF019790()
{
  result = qword_1EDEA6C68[0];
  if (!qword_1EDEA6C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA6C68);
  }

  return result;
}

void sub_1CF019840(void *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for FSChangeToken();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5B88();
  sub_1CF01426C(v12, v13, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4C0FE0, qword_1CFA07EC0);
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CF9FA450;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1CEFD51C4();
    *(v14 + 32) = 0xD000000000000035;
    *(v14 + 40) = 0x80000001CFA500D0;
    sub_1CF9E6018();

    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_1CF9E6888();
    v17 = [v15 initWithDomain:v16 code:-1002 userInfo:0];

    v18 = v17;
    v19 = sub_1CF9E57E8();

    [a1 finishEnumeratingWithError_];
  }

  else
  {
    v46 = a1;
    sub_1CF00F23C(v6, v11, type metadata accessor for FSChangeToken);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1CF9E7948();

    v47 = 0xD000000000000017;
    v48 = 0x80000001CFA50110;
    v20 = [v1 description];
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    MEMORY[0x1D3868CC0](v21, v23);

    MEMORY[0x1D3868CC0](0x3A64695B20, 0xE500000000000000);
    v24 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID];
    v25 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v25);

    MEMORY[0x1D3868CC0](0x3A6D6F726620, 0xE600000000000000);
    v26 = sub_1CF015C10();
    MEMORY[0x1D3868CC0](v26);

    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v42 = v47;
    v44 = v1;
    v27 = v48;
    v28 = sub_1CEFFCE80();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1CF9FA440;
    v47 = v28;
    v30 = sub_1CEFFD0A8();
    v43 = v28;
    v45 = v30;
    v31 = sub_1CF9E7718();
    v33 = v32;
    v34 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1CEFD51C4();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    *(v29 + 96) = v34;
    *(v29 + 104) = v35;
    v36 = v42;
    *(v29 + 64) = v35;
    *(v29 + 72) = v36;
    *(v29 + 80) = v27;

    sub_1CF9E6018();

    sub_1CF019FE8(v44, v46, v11);

    sub_1CF9E7298();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1CF9FA450;
    v47 = v43;
    v38 = sub_1CF9E7718();
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = v35;
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    sub_1CF9E6018();

    sub_1CF00F304(v11, type metadata accessor for FSChangeToken);
  }

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF019EF0()
{
  v3 = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v0 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1270, &qword_1CFA08830);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  result = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF019FE8(_BYTE *a1, char *a2, uint64_t a3)
{
  v64 = a3;
  v65 = a2;
  v4 = type metadata accessor for LocalDomain();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FSChangeToken();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v60 - v12;
  v14 = sub_1CF9E5D98();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FSEventReader();
  v19 = &a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain];
  v20 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain + 8];
  sub_1CF01A820(v20, v13);
  v21 = v14;
  v22 = v15;
  if ((*(v15 + 48))(v13, 1, v21) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEDE0, qword_1CF9FA390);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1CF9E7948();

    v67 = 0xD00000000000001ALL;
    v68 = 0x80000001CFA51050;
    v69 = v20;
    v23 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v23);

    v24 = v67;
    v25 = v68;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1CF9FA450;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1CEFD51C4();
    *(v26 + 32) = v24;
    *(v26 + 40) = v25;
    sub_1CF9E6018();

    v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v28 = sub_1CF9E6888();
    v29 = [v27 initWithDomain:v28 code:-1005 userInfo:0];

    v30 = v29;
    v31 = sub_1CF9E57E8();

    [v65 finishEnumeratingWithError_];
  }

  else
  {
    (*(v15 + 32))(v18, v13, v21);
    v32 = v64;
    v33 = sub_1CF9E5D48();
    v62 = v21;
    if (v33)
    {
      v34 = a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_shouldUpdateFileIDInGenstore];
      v35 = type metadata accessor for LocalChangesObserverContext();
      v36 = objc_allocWithZone(v35);
      swift_unknownObjectWeakInit();
      *&v36[OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer] = v65;
      *&v36[OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_localFileEnumerator] = a1;
      v36[OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_shouldUpdateFileIDInGenstore] = v34;
      v66.receiver = v36;
      v66.super_class = v35;
      swift_unknownObjectRetain();
      v37 = a1;
      v38 = objc_msgSendSuper2(&v66, sel_init);
      v39 = v61;
      sub_1CF00BE78(v32, v61, type metadata accessor for FSChangeToken);
      v40 = *&v37[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID];
      v41 = *&v37[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_urls];
      v65 = v18;
      v42 = v63;
      sub_1CF00BE78(v19, v63, type metadata accessor for LocalDomain);
      v43 = objc_allocWithZone(type metadata accessor for FSChangesEnumerator());
      v64 = v22;
      v44 = v43;
      v45 = v40;

      v46 = v38;
      v47 = sub_1CF01AD30(v39, v45, v41, v46, v42, v44);

      v48 = swift_unknownObjectWeakAssign();
      v49 = *&v37[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue];
      MEMORY[0x1EEE9AC00](v48);
      *(&v60 - 2) = v37;
      *(&v60 - 1) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1268, &unk_1CFA08820);
      sub_1CF9E7398();

      sub_1CF01BA64();
      (*(v64 + 8))(v65, v62);
    }

    else
    {
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1CF9E7948();

      v67 = 0xD000000000000015;
      v68 = 0x80000001CFA51070;
      sub_1CF00FE88(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
      v50 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v50);

      MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
      v51 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v51);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v52 = v67;
      v53 = v68;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1CF9FA450;
      *(v54 + 56) = MEMORY[0x1E69E6158];
      *(v54 + 64) = sub_1CEFD51C4();
      *(v54 + 32) = v52;
      *(v54 + 40) = v53;
      sub_1CF9E6018();

      v55 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v56 = sub_1CF9E6888();
      v57 = [v55 initWithDomain:v56 code:-1002 userInfo:0];

      v58 = v57;
      v59 = sub_1CF9E57E8();

      [v65 finishEnumeratingWithError_];
      (*(v15 + 8))(v18, v62);
    }
  }
}

uint64_t sub_1CF01A820@<X0>(dev_t a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = FSEventsCopyUUIDForDevice(a1);
  if (!v8)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1CF9E7948();

    v26 = 0xD000000000000023;
    v27 = 0x80000001CFA52C30;
    LODWORD(v25) = a1;
    v15 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v15);

    v16 = v26;
    v17 = v27;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1CF9FA450;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1CEFD51C4();
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    sub_1CF9E6018();
    goto LABEL_11;
  }

  v9 = v8;
  v10 = CFUUIDCreateString(0, v8);
  if (!v10)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA52C60);
    v25 = v9;
    type metadata accessor for CFUUID(0);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](0x76656420726F6620, 0xEC00000020656369);
    LODWORD(v25) = a1;
    v19 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v19);

    v20 = v26;
    v21 = v27;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1CF9FA450;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1CEFD51C4();
    *(v22 + 32) = v20;
    *(v22 + 40) = v21;
    sub_1CF9E6018();

LABEL_11:

    v23 = sub_1CF9E5D98();
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  v11 = v10;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E5D08();

  v12 = sub_1CF9E5D98();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v7, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v13 + 32))(a2, v7, v12);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }

  return result;
}

uint64_t type metadata accessor for FSEventReader()
{
  result = qword_1EDEA8438;
  if (!qword_1EDEA8438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FSChangesEnumerator()
{
  result = qword_1EDEA6018;
  if (!qword_1EDEA6018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF01AD30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v57 = sub_1CF9E7318();
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CF9E7388();
  v49 = *(v52 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v54 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LocalDomain();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges] = 0;
  *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfReaderCaughtUp] = 0;
  *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source] = 0;
  v58 = a3;
  if (*(a3 + 16))
  {
    v23 = &a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken];
    sub_1CF00BE78(a1, &a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken], type metadata accessor for FSChangeToken);
    *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID] = a2;
    sub_1CF00BE78(a5, &a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain], type metadata accessor for LocalDomain);
    *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer] = a4;
    v24 = a2;
    *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_startupFSEventID] = FSEventsGetCurrentEventId();
    v25 = type metadata accessor for FSChangeToken();
    v51 = v23[*(v25 + 28)];
    v26 = 20;
    if (v51)
    {
      v26 = 24;
    }

    v27 = *(v25 + v26);
    v61 = a1;
    v50 = *(a1 + v27);
    sub_1CF00BE78(a5, v22, type metadata accessor for LocalDomain);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1CF9E7948();

    v63 = 0xD000000000000014;
    v64 = 0x80000001CFA51100;
    v28 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v28);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v29 = v63;
    v30 = v64;
    v31 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v32 = sub_1CF9E6888();
    v33 = [v31 initWithSuiteName_];

    v60 = a5;
    v53 = v22;
    if (v33 && (v34 = sub_1CF9E6888(), v35 = [v33 BOOLForKey_], v33, v34, v35))
    {
      v36 = 0.1;
    }

    else
    {
      v36 = 0.5;
    }

    v37 = type metadata accessor for FSEventReader();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v40 = swift_allocObject();
    v40[2] = 0;
    *(v40 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v46[1] = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1CF9E7948();

    v63 = 0xD00000000000001ELL;
    v64 = 0x80000001CFA51120;
    v47 = v30;
    v48 = v29;
    MEMORY[0x1D3868CC0](v29, v30);
    (*(v49 + 104))(v54, *MEMORY[0x1E69E8098], v52);
    sub_1CF9E63F8();
    v63 = MEMORY[0x1E69E7CC0];
    sub_1CF00FE88(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
    sub_1CF00FED0(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
    sub_1CF9E77B8();
    v40[3] = sub_1CF9E73B8();
    v40[6] = v58;
    sub_1CF00F23C(v53, v40 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, type metadata accessor for LocalDomain);
    v41 = v50;
    v40[4] = v50;
    v40[5] = v41;
    *(v40 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) = v51;
    *(v40 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency) = v36;
    *(v40 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) = 1;
    v42 = (v40 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription);
    v43 = v47;
    *v42 = v48;
    v42[1] = v43;
    *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader] = v40;
    v62.receiver = a6;
    v62.super_class = ObjectType;
    v44 = objc_msgSendSuper2(&v62, sel_init);
    sub_1CF00F304(v60, type metadata accessor for LocalDomain);
    sub_1CF00F304(v61, type metadata accessor for FSChangeToken);
    return v44;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF01B414@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  LOBYTE(a1) = sub_1CF01B4A0((a2 + 8), a1);
  result = swift_endAccess();
  *a2 = a1 & 1;
  return result;
}

uint64_t sub_1CF01B4A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1CF9E7828();

    if (v9)
    {

      type metadata accessor for FSChangesEnumerator();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1CF9E7818();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1CF4768B4(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1CF6EC52C(v22 + 1, &qword_1EC4C06F8, &qword_1CFA05B08);
    }

    v20 = v8;
    sub_1CF485A90();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for FSChangesEnumerator();
  v11 = *(v6 + 40);
  v12 = sub_1CF9E7558();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1CF01B6C8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1CF9E7568();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_1CF01B6C8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CF6EC52C(v6 + 1, &qword_1EC4C06F8, &qword_1CFA05B08);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1CF6EF948(&qword_1EC4C06F8, &qword_1CFA05B08);
      goto LABEL_12;
    }

    sub_1CF01B858(v6 + 1, &qword_1EC4C06F8, &qword_1CFA05B08);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1CF9E7558();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for FSChangesEnumerator();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1CF9E7568();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CF9E80F8();
  __break(1u);
}

uint64_t sub_1CF01B858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1CF9E78E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1CF9E7558();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1CF01BA64()
{
  v1 = v0;
  v2 = sub_1CF9E6388();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v61 = (v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v57 = (v47 - v6);
  v58 = sub_1CF9E6498();
  v62 = *(v58 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x1EEE9AC00](v58);
  v55 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = v47 - v10;
  v11 = sub_1CF9E63A8();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v49 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E73D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_sync_enter(v0);
  v22 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader;
  *(*&v0[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader] + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4C06C30;
  swift_unknownObjectWeakAssign();
  v23 = *&v0[v22];

  sub_1CF01C124();

  v47[1] = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v24 = *&v1[v22];
  v48 = v1;
  v25 = *(v24 + 24);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CF01C474(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v27 = sub_1CF9E73E8();

  (*(v18 + 8))(v21, v17);
  ObjectType = swift_getObjectType();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1CF562728;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_29;
  v30 = _Block_copy(aBlock);

  v31 = v49;
  sub_1CF01C504();
  v32 = v50;
  sub_1CEFD5A30();
  sub_1CF9E7408();
  _Block_release(v30);
  (*(v53 + 8))(v32, v54);
  (*(v51 + 8))(v31, v52);

  v33 = v55;
  sub_1CF9E6478();
  v34 = v57;
  *v57 = 2;
  v36 = v59;
  v35 = v60;
  (*(v59 + 104))(v34, *MEMORY[0x1E69E7F48], v60);
  v37 = v56;
  MEMORY[0x1D3868740](v33, v34);
  v38 = *(v36 + 8);
  v39 = v35;
  v38(v34, v35);
  v40 = *(v62 + 8);
  v62 += 8;
  v41 = v33;
  v42 = v58;
  v40(v41, v58);
  sub_1CEFD5B64(v34);
  v43 = v61;
  sub_1CEFD5BD8(v61);
  MEMORY[0x1D3869770](v37, v34, v43, ObjectType);
  v38(v43, v39);
  v38(v34, v39);
  v40(v37, v42);
  sub_1CF9E7428();
  v44 = v48;
  v45 = *&v48[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source];
  *&v48[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source] = v27;
  swift_unknownObjectRelease();
  return objc_sync_exit(v44);
}

uint64_t sub_1CF01C0EC()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF01C144(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E63A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6448();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 24);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = a2;
  v16 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_1CF01C38C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v14, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

unint64_t sub_1CF01C38C()
{
  result = qword_1EDEAEDF0;
  if (!qword_1EDEAEDF0)
  {
    sub_1CF9E63A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAEDF0);
  }

  return result;
}

uint64_t sub_1CF01C3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF01C42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF01C474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF01C4BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF01C510(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v59 - v8;
  if (*(a1 + 16))
  {
    goto LABEL_19;
  }

  v65 = v7;
  v67 = 0x676E697472617473;
  v68 = 0xE900000000000020;
  v10 = sub_1CF01CD68();
  MEMORY[0x1D3868CC0](v10);

  v11 = v68;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
  {
    v12 = v67;
    v13 = MEMORY[0x1E69E6158];
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CF9FA450;
    *(v14 + 56) = v13;
    *(v14 + 64) = sub_1CEFD51C4();
    *(v14 + 32) = v12;
    *(v14 + 40) = v11;
    sub_1CF9E6018();
  }

  context.version = 0;
  context.info = a1;
  context.retain = sub_1CF01D120;
  context.release = sub_1CF02B8DC;
  context.copyDescription = 0;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) != 1)
  {
    v16 = *(a1 + 48);
    v17 = *(v16 + 16);
    if (v17)
    {
      v64 = v2;
      v67 = MEMORY[0x1E69E7CC0];
      v60 = a1;

      sub_1CEFE95CC(0, v17, 0);
      v18 = v67;
      v20 = v3[2];
      v19 = v3 + 2;
      v63 = v20;
      v21 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v62 = v19[7];
      do
      {
        v22 = v65;
        v23 = v64;
        (v63)(v65, v21, v64);
        v24 = sub_1CF9E5A18();
        v26 = v25;
        (*(v19 - 1))(v22, v23);
        v67 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1CEFE95CC((v27 > 1), v28 + 1, 1);
          v18 = v67;
        }

        *(v18 + 16) = v28 + 1;
        v29 = v18 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v21 += v62;
        --v17;
      }

      while (v17);
      a1 = v60;
    }

    else
    {
    }

    v30 = sub_1CF9E6D28();

    v34 = FSEventStreamCreate(0, sub_1CF0264E0, &context, v30, *(a1 + 40), *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency), 0x51u);

    if (v34)
    {
      *(a1 + 16) = v34;
LABEL_18:
      FSEventStreamSetDispatchQueue(v34, *(a1 + 24));
      result = FSEventStreamStart(v34);
      goto LABEL_19;
    }

    __break(1u);
LABEL_30:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 51);
  }

  v15 = NSHomeDirectory();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  sub_1CF9E58C8();

  if ((sub_1CF9E5848() & 1) == 0)
  {
    goto LABEL_30;
  }

  type metadata accessor for stat(0);
  sub_1CF9E59B8();
  v32 = v67;
  v33 = sub_1CF9E6D28();
  v34 = FSEventStreamCreateRelativeToDevice(0, sub_1CF0264E0, &context, v32, v33, *(a1 + 40), *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency), 0x51u);

  v35 = v3[1];
  v35(v9, v2);
  *(a1 + 16) = v34;
  if (v34)
  {
    goto LABEL_18;
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1CF9E7948();

  v67 = 0xD000000000000020;
  v68 = 0x80000001CFA52A50;
  v36 = *(a1 + 48);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v63 = v35;
    v64 = v3 + 1;
    v60 = a1;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v37, 0);
    v38 = v66;
    v40 = v3[2];
    v39 = v3 + 2;
    v62 = v40;
    v41 = v36 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v61 = v39[7];
    do
    {
      v42 = v65;
      v43 = v39;
      v62(v65, v41, v2);
      v44 = sub_1CF9E5928();
      v45 = [v44 fp_shortDescription];

      v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v48 = v47;

      v63(v42, v2);
      v66 = v38;
      v50 = *(v38 + 16);
      v49 = *(v38 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1CEFE95CC((v49 > 1), v50 + 1, 1);
        v38 = v66;
      }

      *(v38 + 16) = v50 + 1;
      v51 = v38 + 16 * v50;
      *(v51 + 32) = v46;
      *(v51 + 40) = v48;
      v41 += v61;
      --v37;
      v39 = v43;
    }

    while (v37);
  }

  v52 = MEMORY[0x1E69E6158];
  v53 = MEMORY[0x1D3868FE0](v38, MEMORY[0x1E69E6158]);
  v55 = v54;

  MEMORY[0x1D3868CC0](v53, v55);

  v56 = v67;
  v57 = v68;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E72A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1CF9FA450;
  *(v58 + 56) = v52;
  *(v58 + 64) = sub_1CEFD51C4();
  *(v58 + 32) = v56;
  *(v58 + 40) = v57;
  sub_1CF9E6018();

LABEL_19:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF01CD68()
{
  v1 = v0;
  v32 = sub_1CF9E5A58();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v5 = *v0;
  v6 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v33 = v0;
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A747261747320, 0xE700000000000000);
  v33 = v0[4];
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x3A7473616C20, 0xE600000000000000);
  v33 = v0[5];
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x3A65646F6D20, 0xE600000000000000);
  LOBYTE(v33) = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A736C727520, 0xE600000000000000);
  v9 = v0[6];
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v28 = v0;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v10, 0);
    v11 = v33;
    v13 = *(v2 + 16);
    v12 = v2 + 16;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v29 = *(v12 + 56);
    v30 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = v31;
      v17 = v32;
      v30(v31, v14, v32);
      v18 = sub_1CF9E5A18();
      v20 = v19;
      (*v15)(v16, v17);
      v33 = v11;
      v22 = v11[2];
      v21 = v11[3];
      if (v22 >= v21 >> 1)
      {
        sub_1CEFE95CC((v21 > 1), v22 + 1, 1);
        v11 = v33;
      }

      v11[2] = v22 + 1;
      v23 = &v11[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v14 += v29;
      --v10;
    }

    while (v10);
    v1 = v28;
  }

  v24 = MEMORY[0x1D3868FE0](v11, MEMORY[0x1E69E6158]);
  v26 = v25;

  MEMORY[0x1D3868CC0](v24, v26);

  MEMORY[0x1D3868CC0](0x3A72656E776F20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(v1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription), *(v1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription + 8));
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return v34;
}

uint64_t sub_1CF01D120(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

id sub_1CF01D1A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v8[1] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v8[2] = v5;
  v6 = type metadata accessor for ReconciliationID();
  (*(*(v6 - 8) + 16))(&v1[v4], a1, v6);
  v8[0].receiver = v1;
  v8[0].super_class = ObjectType;
  return [(objc_super *)v8 init];
}

uint64_t sub_1CF01D288()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v2 = type metadata accessor for ReconciliationID();
  return sub_1CF01D5C4(v2);
}

uint64_t sub_1CF01D314(void *a1)
{
  v1 = a1;
  v2 = sub_1CF01D288();

  return v2;
}

uint64_t sub_1CF01D348(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v6);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v21, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v19, v3);
    MEMORY[0x1D386A470](1);
    v22 = *(a2[5] + 40);
    sub_1CF9E6758();
    return (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v11 + 32))(v15, v19, v10);
    MEMORY[0x1D386A470](0);
    v24 = *(a2[4] + 40);
    sub_1CF9E6758();
    return (*(v11 + 8))(v15, v10);
  }
}

uint64_t sub_1CF01D5C4(void *a1)
{
  sub_1CF9E81D8();
  sub_1CF01D348(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF01D60C()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1D386A470](1);
      return MEMORY[0x1D386A4A0](v1);
    }

    else
    {
      if (v1)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      return MEMORY[0x1D386A470](v3);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    return sub_1CF9E8208();
  }
}

uint64_t sub_1CF01D680(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v3 = type metadata accessor for ReconciliationID();
  return (*(*(v3 - 8) + 8))(&a1[v2], v3);
}

uint64_t sub_1CF01D738(void *a1)
{
  v2 = a1[3];
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v5);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v16, v2);
    v22 = 0;
    v23 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x28726568746F2ELL, 0xE700000000000000);
    v18 = *(a1[5] + 16);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v19 = v22;
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    (*(v9 + 32))(v13, v16, v8);
    v22 = 0;
    v23 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x286E69616D2ELL, 0xE600000000000000);
    v20 = *(a1[4] + 16);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v19 = v22;
    (*(v9 + 8))(v13, v8);
  }

  return v19;
}

uint64_t _s18FileProviderDaemon9VFSItemIDO11descriptionSSvg_0()
{
  if (!*(v0 + 8))
  {
    v4 = 0x284449636F64;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v4 = 0x284449656C6966;
    v3 = *v0;
LABEL_5:
    v1 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v1);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v4;
  }

  if (*v0)
  {
    return 0x6873617274;
  }

  else
  {
    return 1953460082;
  }
}

uint64_t sub_1CF01DAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t (*)()), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a4;
  v44 = a3;
  v41 = a2;
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v13 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v37 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v37 = *(v16 - 8);
  v17 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  v40 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = a8;
  v21 = swift_getAssociatedConformanceWitness();
  v45 = v16;
  v46 = AssociatedTypeWitness;
  v47 = AssociatedConformanceWitness;
  v48 = v21;
  v22 = type metadata accessor for ReconciliationID();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v37 - v24;
  (*(v26 + 16))(&v37 - v24, v39, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v38;
    v28 = (*(v38 + 32))(v15, v25, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v28);
    *(&v37 - 6) = a5;
    *(&v37 - 5) = a6;
    v29 = v41;
    v30 = v42;
    *(&v37 - 4) = v40;
    *(&v37 - 3) = v30;
    *(&v37 - 2) = v15;
    *(&v37 - 1) = v29;
    v31 = v44(1, sub_1CF06E0F8);
    (*(v27 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v32 = v37;
    v33 = (*(v37 + 32))(v19, v25, v16);
    MEMORY[0x1EEE9AC00](v33);
    *(&v37 - 6) = a5;
    *(&v37 - 5) = a6;
    v34 = v41;
    v35 = v42;
    *(&v37 - 4) = v40;
    *(&v37 - 3) = v35;
    *(&v37 - 2) = v19;
    *(&v37 - 1) = v34;
    v31 = v44(0, sub_1CF01DF6C);
    (*(v32 + 8))(v19, v16);
  }

  return v31;
}

uint64_t sub_1CF01DEB0(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = 20550;
  }

  else
  {
    v5 = 21318;
  }

  MEMORY[0x1D3868CC0](v5, 0xE200000000000000);

  v6 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v7 = a2(v6);
  MEMORY[0x1D3868CC0](v7);

  return a4;
}

uint64_t sub_1CF01DF84(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  v4 = *(v3 + 32);
  v5 = swift_checkMetadataState();
  return v4(a2, v5, v3);
}

uint64_t sub_1CF01E03C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1CF01E0C4(a3, *(a4 + 8));
  sub_1CF01E3FC(v10, a1, a2, a3, a4, a5);
}

uint64_t sub_1CF01E0C4(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_1CF9E82E8();
  v8 = v7;
  swift_beginAccess();
  v9 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {

    goto LABEL_9;
  }

  v10 = sub_1CEFE4328(v6, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    (*(a2 + 40))(a1, a2);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v13 = sub_1CF9E6E88();
    v14 = sub_1CF9E82E8();
    v16 = v15;
    v21 = sub_1CF9E6E58();
    *&v20 = v13;
    swift_beginAccess();

    sub_1CF1C8750(&v20, v14, v16);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v9[7] + 32 * v10, v18);
  sub_1CEFE9EB8(v18, &v20);
  swift_endAccess();
  sub_1CEFE9EB8(&v20, v18);
  swift_getAssociatedTypeWitness();
  sub_1CF9E6E58();
  swift_dynamicCast();
  v13 = v19;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v13;
}

uint64_t sub_1CF01E3FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v34 = a6;
  v11 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v32 = v20;
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v31 - v21;
  v38 = a2;
  v22 = [a2 columns];
  v43 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = *(AssociatedConformanceWitness + 16);
  v23 = 0;
  v49 = MEMORY[0x1D38688F0](v22, AssociatedTypeWitness, MEMORY[0x1E69E7CA0] + 8);
  v44 = a5;
  v45 = (v13 + 16);
  v37 = a5 + 24;
  v39 = (v13 + 8);
  v40 = (v13 + 32);
  while (1)
  {
    if (v23 == sub_1CF9E6DF8())
    {
      *&v48[0] = v49;
      v28 = *(v44 + 32);
      v29 = type metadata accessor for SQLCodableDictionaryWrapper();
      WitnessTable = swift_getWitnessTable();
      v28(v48, v29, WitnessTable);
    }

    v25 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v25)
    {
      v26 = *(v13 + 16);
      v27 = v42;
      v26(v42, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, AssociatedTypeWitness);
    }

    else
    {
      result = sub_1CF9E7998();
      v27 = v42;
      if (v32 != 8)
      {
        goto LABEL_18;
      }

      *&v48[0] = result;
      v26 = *v45;
      (*v45)(v42, v48, AssociatedTypeWitness);
      swift_unknownObjectRelease();
    }

    result = (*v40)(v19, v27, AssociatedTypeWitness);
    if (__OFADD__(v41, v23))
    {
      break;
    }

    (*(v44 + 24))(&v46, v19, v38, (v41 + v23));
    if (v6)
    {
      (*v39)(v19, AssociatedTypeWitness);
    }

    if (v47)
    {
      sub_1CEFE9EB8(&v46, v48);
      v26(v36, v19, AssociatedTypeWitness);
      sub_1CEFD1104(v48, &v46);
      sub_1CF9E6708();
      sub_1CF9E6738();
      __swift_destroy_boxed_opaque_existential_1(v48);
      result = (*v39)(v19, AssociatedTypeWitness);
    }

    else
    {
      (*v39)(v19, AssociatedTypeWitness);
      result = sub_1CEFCCC44(&v46, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }

    if (++v23 == 0x80000000)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1CF01E87C(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4[2];
  v5 = a4[3];
  v7 = a4[4];
  v8 = a4[5];
  sub_1CF01E8A4(*a1, a2, a3, a5);
}

void sub_1CF01E8A4(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CF9E79E8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a1 >> 4) & 3;
  if (v14 <= 1)
  {
    if (v14)
    {
      v16 = a1 & 0xCF;
      v15 = a4;
    }

    else
    {
      v15 = a4;
      v16 = a1;
    }

    sub_1CF01EE6C(v16, a2, a3, v15);
    return;
  }

  if (v14 == 2)
  {
    if (a1)
    {
      *(a4 + 24) = &type metadata for NSecTimestamp;
      v17 = [a2 longAtIndex_];
    }

    else
    {
      *(a4 + 24) = &type metadata for JobSchedulingPriority;
      v17 = [a2 unsignedLongAtIndex_];
    }

    goto LABEL_23;
  }

  if (a1 > 0x32u)
  {
    if (a1 <= 0x34u)
    {
      if (a1 != 51)
      {
        v18 = [a2 BOOLAtIndex_];
        *(a4 + 24) = MEMORY[0x1E69E6370];
        *a4 = v18;
        return;
      }

      goto LABEL_21;
    }

    if (a1 != 53)
    {
LABEL_21:
      v17 = [a2 longAtIndex_];
      v24 = MEMORY[0x1E69E6530];
      goto LABEL_22;
    }

    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      v17 = [a2 longAtIndex_];
      v24 = &type metadata for PolicyContentStatus;
LABEL_22:
      *(a4 + 24) = v24;
LABEL_23:
      *a4 = v17;
      return;
    }

LABEL_37:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (a1 == 48)
  {
    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      v25 = v39;
      sub_1CEFEC210(a3, &v40);
      if (v25)
      {
        return;
      }

      v26 = v40;
      if (v40 != 4)
      {
        *(a4 + 24) = &type metadata for FileItemKind;
        *a4 = v26;
        return;
      }
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (a1 != 49)
  {
    if ([a2 isNullAtIndex_])
    {
      *(a4 + 24) = &type metadata for SyncPausedStatus;
      *a4 = 0;
      return;
    }

    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      v17 = [a2 longAtIndex_];
      v24 = &type metadata for SyncPausedStatus;
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  v35 = v11;
  v36 = v10;
  v38 = [a2 isNullAtIndex_];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  if (v38)
  {
    v40 = v20;
    v41 = v19;
    v42 = AssociatedConformanceWitness;
    v43 = v22;
    type metadata accessor for ReconciliationID();
    v23 = sub_1CF9E65E8();
    *(a4 + 24) = sub_1CF9E6E58();
    *a4 = v23;
  }

  else
  {
    v40 = v20;
    v41 = v19;
    v42 = AssociatedConformanceWitness;
    v43 = v22;
    v27 = type metadata accessor for ReconciliationID();
    v28 = sub_1CF9E6E58();
    *(a4 + 24) = v28;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v29 = v39;
    sub_1CF4C1368(v28, a3);
    if (v29)
    {
      __swift_deallocate_boxed_opaque_existential_0(a4);
      v40 = v29;
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast())
      {

        sub_1CF9E7FA8();
        v31 = *(v27[-1].Description + 9);
        v32 = *(v27[-1].Description + 80);
        swift_allocObject();
        v33 = sub_1CF9E6D68();
        sub_1CF4C1368(v27, a3);
        *(a4 + 24) = v28;
        *a4 = v33;
        (*(v35 + 8))(v13, v36);
      }
    }
  }
}

void sub_1CF01EE6C(unsigned __int8 a1@<W0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v116 = a3;
  v114 = a4;
  v115 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CF9E75D8();
  v110 = *(v5 - 8);
  v111 = v5;
  v6 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v109 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v109 = *(v10 - 8);
  v11 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v109 - v12;
  v113 = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v109 - v21;
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      if (a1 <= 0xC2u)
      {
        if (a1 == 192)
        {
          v70 = v115;
          v71 = v116;
          if (([v115 isNullAtIndex_] & 1) == 0)
          {
            v72 = [v70 unsignedIntAtIndex_];
            v73 = v114;
            *(v114 + 24) = MEMORY[0x1E69E7668];
            *v73 = v72;
            return;
          }

          goto LABEL_62;
        }

        v52 = v116;
        v53 = v115;
        if (a1 == 193)
        {
          if (([v115 isNullAtIndex_] & 1) == 0)
          {
            v54 = [v53 longLongAtIndex_];
            v55 = v114;
            *(v114 + 24) = MEMORY[0x1E69E7360];
            *v55 = v54;
            return;
          }

          goto LABEL_62;
        }

        v74 = v20;
        v75 = v19;
        v76 = v113;
        v77 = *(swift_getAssociatedConformanceWitness() + 8);
        v78 = v53;
        v79 = v117;
        Optional<A>.init(rs:at:)(v78, v52, v76, v77, v18);
        if (v79)
        {
          return;
        }

        v80 = *(v76 - 8);
        if ((*(v80 + 48))(v18, 1, v76) != 1)
        {
          v101 = v114;
          *(v114 + 24) = v76;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v101);
          (*(v80 + 32))(boxed_opaque_existential_0, v18, v76);
          return;
        }

        (*(v74 + 8))(v18, v75);
      }

      else if (a1 > 0xC4u)
      {
        if (a1 != 197)
        {
          v86 = v115;
          v87 = v116;
          if (([v115 isNullAtIndex_] & 1) == 0)
          {
            v88 = [v86 integerAtIndex_];
            if (v88)
            {
              v89 = [objc_opt_self() domainVersionWithVersion_];
              v90 = sub_1CF1E7FC0();
              v91 = v114;
              *(v114 + 24) = v90;
              *v91 = v89;
              return;
            }
          }

          goto LABEL_62;
        }

        v58 = AssociatedTypeWitness;
        v59 = *(swift_getAssociatedConformanceWitness() + 8);
        v60 = v115;
        v61 = v117;
        Optional<A>.init(rs:at:)(v60, v116, v58, v59, v8);
        if (v61)
        {
          return;
        }

        v62 = *(v58 - 8);
        if ((*(v62 + 48))(v8, 1, v58) != 1)
        {
          v103 = v114;
          *(v114 + 24) = v58;
          v104 = __swift_allocate_boxed_opaque_existential_0(v103);
          (*(v62 + 32))(v104, v8, v58);
          return;
        }

        (*(v110 + 8))(v8, v111);
      }

      else
      {
        if (a1 == 195)
        {
          v27 = v115;
          v28 = v116;
          if (([v115 isNullAtIndex_] & 1) == 0)
          {
            v29 = [v27 stringAtIndex_];
            v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v32 = v31;

            v33 = v114;
            *(v114 + 24) = &type metadata for Filename;
            *v33 = v30;
            v33[1] = v32;
            return;
          }

LABEL_62:
          v92 = v114;
          *v114 = 0u;
          *(v92 + 16) = 0u;
          return;
        }

        v81 = *(swift_getAssociatedConformanceWitness() + 8);
        v82 = v115;
        v83 = v117;
        Optional<A>.init(rs:at:)(v82, v116, v9, v81, v13);
        if (v83)
        {
          return;
        }

        v84 = *(v9 - 8);
        if ((*(v84 + 48))(v13, 1, v9) != 1)
        {
          v105 = v114;
          *(v114 + 24) = v9;
          v106 = __swift_allocate_boxed_opaque_existential_0(v105);
          (*(v84 + 32))(v106, v13, v9);
          return;
        }

        (*(v109 + 8))(v13, v10);
      }

LABEL_58:
      v85 = v114;
      *v114 = 0u;
      *(v85 + 16) = 0u;
      return;
    }

    v39 = v116;
    v40 = v115;
    if (a1 > 0x83u)
    {
      if (a1 > 0x85u)
      {
        v50 = v114;
        if (a1 == 134)
        {
          v66 = [v115 BOOLAtIndex_];
          v67 = MEMORY[0x1E69E6370];
          goto LABEL_47;
        }

        if (([v115 isNullAtIndex_] & 1) == 0)
        {
          v100 = [v40 longLongAtIndex_];
          if ((v100 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            *(v50 + 24) = MEMORY[0x1E69E76D8];
            *v50 = v100;
          }

          return;
        }
      }

      else
      {
        v49 = v117;
        v50 = v114;
        if (a1 == 132)
        {
          *(v114 + 24) = &type metadata for ContentStatus;
          v51 = sub_1CEFEBAE8(v39);
          if (v49)
          {
            __swift_deallocate_boxed_opaque_existential_0(v50);
          }

          else
          {
            *v50 = v51;
          }

          return;
        }

        if (([v115 isNullAtIndex_] & 1) == 0)
        {
          v66 = sub_1CF1E0758(v39);
          if (v49)
          {
            return;
          }

          v67 = &type metadata for DiskImportStatus;
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (a1 <= 0x81u)
      {
        if (a1 == 128)
        {
          v41 = v20;
          v42 = v19;
          v43 = v113;
          v44 = *(swift_getAssociatedConformanceWitness() + 8);
          v45 = v40;
          v46 = v117;
          Optional<A>.init(rs:at:)(v45, v39, v43, v44, v22);
          if (v46)
          {
            return;
          }

          v47 = *(v43 - 8);
          if ((*(v47 + 48))(v22, 1, v43) != 1)
          {
            v107 = v114;
            *(v114 + 24) = v43;
            v108 = __swift_allocate_boxed_opaque_existential_0(v107);
            (*(v47 + 32))(v108, v22, v43);
            return;
          }

          (*(v41 + 8))(v22, v42);
          goto LABEL_58;
        }

        v63 = &type metadata for DeletionStatus;
LABEL_64:
        v93 = v114;
        *(v114 + 24) = v63;
        *v93 = [v40 longAtIndex_];
        return;
      }

      if (a1 == 130)
      {
        v63 = &type metadata for Fields;
        goto LABEL_64;
      }

      v94 = [v115 isNullAtIndex_];
      v95 = v117;
      v50 = v114;
      if ((v94 & 1) == 0)
      {
        v66 = sub_1CEFEBAE8(v39);
        if (v95)
        {
          return;
        }

        v67 = &type metadata for MaterializationStatus;
LABEL_47:
        *(v50 + 24) = v67;
        *v50 = v66;
        return;
      }
    }

    *v50 = 0u;
    *(v50 + 16) = 0u;
    return;
  }

  if (a1 >> 6)
  {
    v34 = a1 & 0x3F;
    v35 = v117;
    v37 = v114;
    v36 = v115;
    v38 = v116;
    if (v34)
    {
      if (v34 == 1)
      {
        *(v114 + 24) = &type metadata for JobWaitCondition;
        *v37 = [v36 longAtIndex_];
      }

      else
      {
        v57 = v116;
        if ([v115 isNullAtIndex_])
        {
          *v37 = 0u;
          *(v37 + 16) = 0u;
        }

        else
        {
          v68 = sub_1CF1DFFC4(v57);
          if (!v35)
          {
            v69 = v68;
            *(v37 + 24) = type metadata accessor for Continuation();
            *v37 = v69;
          }
        }
      }
    }

    else
    {
      v56 = [v115 longAtIndex_];
      *(v37 + 24) = MEMORY[0x1E69E6530];
      *v37 = v56;
    }

    return;
  }

  v23 = v115;
  v24 = v116;
  v25 = [v115 isNullAtIndex_];
  v26 = v114;
  if (v25)
  {
LABEL_4:
    *v26 = 0u;
    *(v26 + 16) = 0u;
    return;
  }

  if (a1 > 2u)
  {
    if (a1 == 3 || a1 == 4)
    {
      v64 = [v23 longLongAtIndex_];
      v65 = MEMORY[0x1E69E7360];
    }

    else
    {
      if ([v23 isNullAtIndex_])
      {
        goto LABEL_4;
      }

      v64 = [v23 unsignedIntegerAtIndex_];
      v65 = MEMORY[0x1E69E6810];
    }

    goto LABEL_78;
  }

  if (!a1)
  {
    v64 = [v23 unsignedLongLongAtIndex_];
    v65 = MEMORY[0x1E69E76D8];
LABEL_78:
    *(v26 + 24) = v65;
    *v26 = v64;
    return;
  }

  if (a1 == 1)
  {
    if ([v23 isNullAtIndex_])
    {
      goto LABEL_4;
    }

    v48 = [v23 unsignedIntAtIndex_];
    *(v26 + 24) = MEMORY[0x1E69E7668];
    *v26 = v48;
  }

  else
  {
    if ([v23 isNullAtIndex_])
    {
      goto LABEL_4;
    }

    v96 = [v23 dataAtIndex_];
    v97 = sub_1CF9E5B88();
    v99 = v98;

    *(v26 + 24) = MEMORY[0x1E6969080];
    *v26 = v97;
    *(v26 + 8) = v99;
  }
}

uint64_t Optional<A>.init(rs:at:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1CF9E75D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  if ([a1 isNullAtIndex_])
  {

    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  else
  {
    result = (*(a4 + 16))(a1, a2, a3, a4);
    if (!v5)
    {
      (*(*(a3 - 8) + 56))(v15, 0, 1, a3);
      return (*(v12 + 32))(a5, v15, v11);
    }
  }

  return result;
}

void sub_1CF01FC0C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CEFE9AC4([a1 longAtIndex_], &v7);

  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 8) = v6;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFSItemID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CF01FD44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CF9E81D8();
  a4(v8, v6);
  return sub_1CF9E8228();
}

uint64_t sub_1CF01FD9C(unsigned int a1, unsigned __int8 a2)
{
  v2 = (a1 >> 4) & 3;
  if (v2 <= 1)
  {
    if (v2)
    {
      if ((a2 & 0x30) == 0x10)
      {
        LOBYTE(a1) = a1 & 0xCF;
        a2 &= 0xCFu;
LABEL_24:

        return sub_1CF020028(a1, a2);
      }
    }

    else if ((a2 & 0x30) == 0)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v2 != 2)
  {
    if (a1 <= 0x32u)
    {
      if (a1 == 48)
      {
        if (a2 != 48)
        {
          return 0;
        }
      }

      else if (a1 == 49)
      {
        if (a2 != 49)
        {
          return 0;
        }
      }

      else if (a2 != 50)
      {
        return 0;
      }
    }

    else if (a1 > 0x34u)
    {
      if (a1 == 53)
      {
        if (a2 != 53)
        {
          return 0;
        }
      }

      else if (a2 != 54)
      {
        return 0;
      }
    }

    else if (a1 == 51)
    {
      if (a2 != 51)
      {
        return 0;
      }
    }

    else if (a2 != 52)
    {
      return 0;
    }

    return 1;
  }

  if ((a2 & 0x30) != 0x20)
  {
    return 0;
  }

  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x6D617473656D6974;
  }

  else
  {
    v4 = 0x797469726F697270;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000070;
  }

  if (a2)
  {
    v6 = 0x6D617473656D6974;
  }

  else
  {
    v6 = 0x797469726F697270;
  }

  if (a2)
  {
    v7 = 0xE900000000000070;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    return 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

    return v9 & 1;
  }
}

void sub_1CF01FF64(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [a1 dataAtIndex_];
  v6 = sub_1CF9E5B88();
  v8 = v7;

  *a3 = v6;
  a3[1] = v8;
}

uint64_t sub_1CF01FFD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF020028(unsigned __int8 a1, unsigned __int8 a2)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      if (a1 <= 0xC2u)
      {
        if (a1 == 192)
        {
          if (a2 != 192)
          {
            return 0;
          }
        }

        else if (a1 == 193)
        {
          if (a2 != 193)
          {
            return 0;
          }
        }

        else if (a2 != 194)
        {
          return 0;
        }
      }

      else if (a1 > 0xC4u)
      {
        if (a1 == 197)
        {
          if (a2 != 197)
          {
            return 0;
          }
        }

        else if (a2 != 198)
        {
          return 0;
        }
      }

      else if (a1 == 195)
      {
        if (a2 != 195)
        {
          return 0;
        }
      }

      else if (a2 != 196)
      {
        return 0;
      }
    }

    else if (a1 > 0x83u)
    {
      if (a1 > 0x85u)
      {
        if (a1 == 134)
        {
          if (a2 != 134)
          {
            return 0;
          }
        }

        else if (a2 != 135)
        {
          return 0;
        }
      }

      else if (a1 == 132)
      {
        if (a2 != 132)
        {
          return 0;
        }
      }

      else if (a2 != 133)
      {
        return 0;
      }
    }

    else if (a1 > 0x81u)
    {
      if (a1 == 130)
      {
        if (a2 != 130)
        {
          return 0;
        }
      }

      else if (a2 != 131)
      {
        return 0;
      }
    }

    else if (a1 == 128)
    {
      if (a2 != 128)
      {
        return 0;
      }
    }

    else if (a2 != 129)
    {
      return 0;
    }

    return 1;
  }

  if (a1 >> 6)
  {
    if ((a2 & 0xC0) == 0x40)
    {
      v8 = 0xD000000000000010;
      v9 = a1 & 0x3F;
      if ((a1 & 0x3F) != 0)
      {
        if (v9 == 1)
        {
          v10 = 0xD000000000000010;
        }

        else
        {
          v10 = 0xD000000000000012;
        }

        if (v9 == 1)
        {
          v7 = 0x80000001CFA2C3F0;
        }

        else
        {
          v7 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v10 = 0x6574617473;
      }

      v11 = 0x80000001CFA2C410;
      if ((a2 & 0x3F) == 1)
      {
        v11 = 0x80000001CFA2C3F0;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if ((a2 & 0x3F) != 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = 0x6574617473;
      }

      if ((a2 & 0x3F) != 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (v10 != v12)
      {
        goto LABEL_102;
      }

      goto LABEL_100;
    }

    return 0;
  }

  if (a2 > 0x3Fu)
  {
    return 0;
  }

  v2 = 0x64695F656C6966;
  v3 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0xE800000000000000;
      v6 = 0x6E6F697461636F6CLL;
    }

    else
    {
      if (a1 == 4)
      {
        v6 = 0x6874676E656CLL;
      }

      else
      {
        v6 = 0x7367616C66;
      }

      if (v3 == 4)
      {
        v7 = 0xE600000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }
    }
  }

  else
  {
    v4 = 0x6E756F635F6E6567;
    v5 = 0xE900000000000074;
    if (a1 != 1)
    {
      v4 = 0x6E6F635F74736574;
      v5 = 0xEC000000746E6574;
    }

    if (a1)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x64695F656C6966;
    }

    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  v15 = 0xE700000000000000;
  v16 = 0xE800000000000000;
  v17 = 0x6E6F697461636F6CLL;
  v18 = 0xE600000000000000;
  v19 = 0x6874676E656CLL;
  if (a2 != 4)
  {
    v19 = 0x7367616C66;
    v18 = 0xE500000000000000;
  }

  if (a2 != 3)
  {
    v17 = v19;
    v16 = v18;
  }

  v20 = 0x6E756F635F6E6567;
  v21 = 0xE900000000000074;
  if (a2 != 1)
  {
    v20 = 0x6E6F635F74736574;
    v21 = 0xEC000000746E6574;
  }

  if (a2)
  {
    v2 = v20;
    v15 = v21;
  }

  if (a2 <= 2u)
  {
    v22 = v2;
  }

  else
  {
    v22 = v17;
  }

  if (a2 <= 2u)
  {
    v13 = v15;
  }

  else
  {
    v13 = v16;
  }

  if (v6 != v22)
  {
    goto LABEL_102;
  }

LABEL_100:
  if (v7 == v13)
  {

    return 1;
  }

LABEL_102:
  v23 = sub_1CF9E8048();

  return v23 & 1;
}

uint64_t sub_1CF02043C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v95 = a1;
  v79 = a8;
  v100 = &_s9SQLFieldsON_1;
  v101 = a4;
  v80 = sub_1CF020F5C();
  v102 = v80;
  v103 = a7;
  v14 = a7;
  v96 = a7;
  v83 = type metadata accessor for SQLCodableAccessorWrapper();
  v82 = *(v83 - 8);
  v15 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v73 - v16;
  v86 = a6;
  v87 = a3;
  v17 = type metadata accessor for ItemReconciliationHalf();
  v84 = *(v17 - 8);
  v85 = v17;
  v18 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v73 - v19;
  v20 = sub_1CF020FE0();
  v100 = &type metadata for ItemReconciliationHalfSQLFields;
  v101 = a4;
  v102 = v20;
  v103 = v14;
  v21 = type metadata accessor for SQLCodableAccessorWrapper();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v73 - v26;
  v28 = a5;
  v29 = type metadata accessor for ItemReconciliationHalf();
  v90 = *(v29 - 8);
  v91 = v29;
  v30 = *(v90 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v73 - v34;
  v92 = a4;
  v36 = a4;
  v37 = v20;
  sub_1CF021034(sub_1CEFED334, 0, v36, &type metadata for ItemReconciliationHalfSQLFields, v96, v20, v27);
  v38 = v28;
  WitnessTable = swift_getWitnessTable();
  v94 = v21;
  v40 = v93;
  v41 = sub_1CF021160(a2, v21, v38, WitnessTable, v35);
  if (v40)
  {
    return (*(v22 + 8))(v27, v94, v41);
  }

  v43 = v89;
  v77 = v37;
  v78 = v33;
  v75 = a2;
  v76 = v38;
  v93 = v35;
  v44 = *(v22 + 8);
  v44(v27, v94, v41);
  LOBYTE(v99) = 50;
  sub_1CF0230B4(&v99, &type metadata for SyncPausedStatus, v92, &type metadata for SyncPausedStatus, v96);
  v74 = v44;
  v73 = v22 + 8;
  v45 = v90;
  v46 = v91;
  v47 = v93;
  *&v93[*(v91 + 76)] = v100;
  (*(v45 + 16))(v78, v47, v46);
  sub_1CF021034(sub_1CEFF0598, 0, v92, &type metadata for ItemReconciliationHalfSQLFields, v96, v77, v43);
  v48 = sub_1CF021160(v87, v94, v86, WitnessTable, v88);
  v74(v43, v94, v48);
  LOBYTE(v100) = 48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE998, &qword_1CF9FEF18);
  v50 = v92;
  v51 = v96;
  sub_1CF0230AC(v92, v49);
  sub_1CF0230B4(&v100, v49, v50, v49, v51);
  v105[0] = v105[1];
  LOBYTE(v98) = 49;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = swift_getAssociatedConformanceWitness();
  v100 = AssociatedTypeWitness;
  v101 = v53;
  v102 = AssociatedConformanceWitness;
  v103 = v55;
  type metadata accessor for ReconciliationID();
  v56 = sub_1CF9E6E58();
  sub_1CF0230B4(&v98, v56, v92, v56, v96);
  v57 = v93;
  v58 = v99;
  v59 = v81;
  sub_1CF021034(sub_1CF023FE0, 0, v92, &_s9SQLFieldsON_1, v96, v80, v81);
  v60 = v83;
  v61 = swift_getWitnessTable();
  v62 = sub_1CF023F08(v59, v60, v61);
  v94 = v63;
  v89 = v62;
  (*(v82 + 8))(v59, v60);
  LOBYTE(v98) = 51;
  v64 = MEMORY[0x1E69E6530];
  v65 = v92;
  v66 = v96;
  sub_1CF0230AC(v92, MEMORY[0x1E69E6530]);
  sub_1CF0230B4(&v98, v64, v65, v64, v66);
  v67 = v100;
  LOBYTE(v97) = 54;
  sub_1CF0230B4(&v97, MEMORY[0x1E69E6530], v92, MEMORY[0x1E69E6530], v96);
  v83 = v98;
  LOBYTE(v97) = 52;
  v68 = MEMORY[0x1E69E6370];
  v69 = v92;
  v70 = v96;
  sub_1CF0230AC(v92, MEMORY[0x1E69E6370]);
  sub_1CF0230B4(&v97, v68, v69, v68, v70);
  LOBYTE(v51) = v104[1];
  v104[0] = 53;
  v71 = v92;
  v72 = v96;
  sub_1CF0230AC(v92, &type metadata for PolicyContentStatus);
  sub_1CF0230B4(v104, &type metadata for PolicyContentStatus, v71, &type metadata for PolicyContentStatus, v72);
  (*(v90 + 8))(v57, v91);
  return sub_1CF023FF0(v78, v88, v105, v58, v89, v94, v67, v83, v79, v51, v97);
}

unint64_t sub_1CF020F5C()
{
  result = qword_1EDEAD438;
  if (!qword_1EDEAD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD438);
  }

  return result;
}

unint64_t sub_1CF020FE0()
{
  result = qword_1EDEABF18;
  if (!qword_1EDEABF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEABF18);
  }

  return result;
}

uint64_t sub_1CF021034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = a4;
  v21[1] = a3;
  v21[2] = a6;
  v21[3] = a5;
  v19 = (a7 + *(type metadata accessor for SQLCodableAccessorWrapper() + 52));
  *v19 = a1;
  v19[1] = a2;
}

double sub_1CF021160@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v160 = a5;
  *&v212 = &_s9SQLFieldsON_0;
  *(&v212 + 1) = a2;
  v161 = sub_1CF022A90();
  *&v213 = v161;
  *(&v213 + 1) = a4;
  v164 = type metadata accessor for SQLCodableAccessorWrapper();
  v162 = *(v164 - 8);
  v9 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v154[-v10];
  v11 = sub_1CF022AE4();
  *&v212 = &_s9SQLFieldsON_2;
  *(&v212 + 1) = a2;
  v204 = a2;
  v169 = v11;
  *&v213 = v11;
  *(&v213 + 1) = a4;
  v12 = type metadata accessor for SQLCodableAccessorWrapper();
  v171 = *(v12 - 8);
  v172 = v12;
  v13 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v170 = &v154[-v14];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v185 = *(AssociatedTypeWitness - 8);
  v16 = *(v185 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v176 = &v154[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v175 = &v154[-v19];
  v20 = swift_getAssociatedTypeWitness();
  v194 = *(v20 - 8);
  v21 = *(v194 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v181 = &v154[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v180 = &v154[-v24];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  *&v212 = v20;
  *(&v212 + 1) = AssociatedTypeWitness;
  v173 = v26;
  v174 = AssociatedConformanceWitness;
  *&v213 = AssociatedConformanceWitness;
  *(&v213 + 1) = v26;
  v184 = type metadata accessor for FileItemVersion();
  v189 = sub_1CF9E75D8();
  v186 = *(v189 - 8);
  v27 = *(v186 + 64);
  v28 = MEMORY[0x1EEE9AC00](v189);
  v165 = &v154[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v187 = &v154[-v30];
  v31 = swift_getAssociatedTypeWitness();
  v158 = a1;
  v159 = a3;
  v168 = swift_getAssociatedConformanceWitness();
  v198 = type metadata accessor for ItemStateVersion();
  v32 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v167 = &v154[-v33];
  v182 = sub_1CF9E75D8();
  v179 = *(v182 - 8);
  v34 = *(v179 + 64);
  v35 = MEMORY[0x1EEE9AC00](v182);
  v177 = &v154[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x1EEE9AC00](v35);
  v191 = &v154[-v38];
  v183 = *(v31 - 8);
  v39 = *(v183 + 64);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v178 = &v154[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v199 = &v154[-v42];
  v201 = AssociatedTypeWitness;
  v195 = sub_1CF9E75D8();
  v192 = *(v195 - 8);
  v43 = *(v192 + 64);
  v44 = MEMORY[0x1EEE9AC00](v195);
  v46 = &v154[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = MEMORY[0x1EEE9AC00](v44);
  v188 = &v154[-v48];
  v49 = MEMORY[0x1EEE9AC00](v47);
  v166 = &v154[-v50];
  MEMORY[0x1EEE9AC00](v49);
  v193 = &v154[-v51];
  v52 = sub_1CF9E75D8();
  v200 = *(v52 - 8);
  v53 = *(v200 + 64);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v197 = &v154[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v154[-v57];
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = &v154[-v60];
  MEMORY[0x1EEE9AC00](v59);
  v202 = &v154[-v62];
  v196 = v20;
  if (!swift_dynamicCastMetatype())
  {
    LOBYTE(v212) = -60;
    v67 = v203;
    sub_1CF0230B4(&v212, v52, v204, v52, a4);
    if (v67)
    {
      return result;
    }

    v157 = v46;
    v190 = a4;
    v203 = 0;
    v66 = v200;
    (*(v200 + 32))(v202, v58, v52);
LABEL_7:
    v68 = swift_dynamicCastMetatype();
    v69 = v197;
    v70 = v199;
    if (v68)
    {
      v71 = v52;
      LOBYTE(v212) = -62;
      v73 = v190;
      v72 = v191;
      v74 = v203;
      (*(v190 + 32))(v31, &v212, v31, v204, v190);
      v203 = v74;
      if (v74)
      {
        (*(v66 + 8))(v202, v71);
        return result;
      }

      v190 = v73;
      v91 = v183;
      if ((*(v183 + 48))(v72, 1, v31) == 1)
      {
        (*(v179 + 8))(v72, v182);
        v92 = v185;
        (*(v185 + 56))(v193, 1, 1, v201);
        v52 = v71;
      }

      else
      {
        v188 = v71;
        (*(v91 + 32))(v70, v72, v31);
        v93 = v178;
        (*(v91 + 16))(v178, v70, v31);
        LOBYTE(v207) = -61;
        v94 = v204;
        v95 = v190;
        sub_1CF0230AC(v204, &type metadata for Filename);
        v96 = v203;
        sub_1CF0230B4(&v207, &type metadata for Filename, v94, &type metadata for Filename, v95);
        v203 = v96;
        if (v96)
        {
          v97 = *(v91 + 8);
          v97(v93, v31);
          v97(v199, v31);
          (*(v66 + 8))(v202, v188);
          return result;
        }

        (*(v91 + 8))(v199, v31);
        v207 = v212;
        ItemStateVersion.init(parentID:filename:)(v93, &v207, v31, v167);
        v98 = v166;
        v99 = v201;
        v100 = swift_dynamicCast();
        v92 = v185;
        (*(v185 + 56))(v98, v100 ^ 1u, 1, v99);
        (*(v192 + 32))(v193, v98, v195);
        v52 = v188;
        v69 = v197;
      }
    }

    else
    {
      LOBYTE(v212) = -59;
      v87 = v188;
      v88 = v195;
      v89 = v203;
      v90 = v190;
      sub_1CF0230B4(&v212, v195, v204, v195, v190);
      v203 = v89;
      if (v89)
      {
        goto LABEL_14;
      }

      v190 = v90;
      (*(v192 + 32))(v193, v87, v88);
      v92 = v185;
    }

    (*(v66 + 16))(v69, v202, v52);
    v101 = v194;
    v102 = v69;
    v103 = v69;
    v104 = v66;
    v105 = v196;
    if ((*(v194 + 48))(v102, 1, v196) == 1)
    {
      (*(v104 + 8))(v103, v52);
      v106 = 1;
      v107 = v189;
      v108 = v187;
      v66 = v104;
    }

    else
    {
      v188 = v52;
      v109 = v105;
      v110 = v180;
      v199 = *(v101 + 32);
      (v199)(v180, v103, v109);
      v111 = v192;
      v112 = v157;
      v113 = v195;
      (*(v192 + 16))(v157, v193, v195);
      if ((*(v92 + 48))(v112, 1, v201) == 1)
      {
        (*(v101 + 8))(v110, v196);
        (*(v111 + 8))(v112, v113);
        v106 = 1;
        v52 = v188;
        v107 = v189;
        v108 = v187;
      }

      else
      {
        v114 = *(v92 + 32);
        v115 = v175;
        v116 = v112;
        v117 = v110;
        v118 = v201;
        v114(v175, v116, v201);
        v119 = v117;
        v120 = v196;
        (v199)(v181, v119, v196);
        v121 = v176;
        v114(v176, v115, v118);
        v108 = v187;
        sub_1CF023878(v181, 0, v121, 0, 0, 0, v120, v118, v187);
        v106 = 0;
        v52 = v188;
        v107 = v189;
      }

      v66 = v200;
    }

    (*(*(v184 - 8) + 56))(v108, v106, 1);
    v219 = 0;
    v122 = v203;
    (*(v190 + 32))(&v216, MEMORY[0x1E69E76D8], &v219, MEMORY[0x1E69E76D8], v204);
    v123 = v186;
    if (v122)
    {
      (*(v186 + 8))(v108, v107);
      (*(v192 + 8))(v193, v195);
      (*(v66 + 8))(v202, v52);
      return result;
    }

    v203 = 0;
    v124 = v192;
    if (v217)
    {
      v212 = 0uLL;
      *&v213 = 0;
      *(&v213 + 1) = 0xB000000000000000;
      v214 = 0u;
      v215 = 0u;
      goto LABEL_34;
    }

    v125 = v170;
    sub_1CF021034(sub_1CEFED334, 0, v204, &_s9SQLFieldsON_2, v190, v169, v170);
    v126 = v172;
    WitnessTable = swift_getWitnessTable();
    v128 = v203;
    sub_1CF3570D4(v126, WitnessTable, &v207);
    v203 = v128;
    if (!v128)
    {
      (*(v171 + 8))(v125, v126);
      v212 = v207;
      v213 = v208;
      v214 = v209;
      v215 = v210;
      v124 = v192;
LABEL_34:
      LOBYTE(v207) = 0x80;
      v129 = v204;
      v130 = v182;
      v131 = v190;
      sub_1CF0230AC(v204, v182);
      v132 = v203;
      sub_1CF0230B4(&v207, v130, v129, v130, v131);
      if (v132)
      {
        sub_1CEFCCC44(&v212, &unk_1EC4BF260, &unk_1CFA01B60);
        (*(v123 + 8))(v108, v189);
        (*(v124 + 8))(v193, v195);
        (*(v200 + 8))(v202, v52);
      }

      else
      {
        LOBYTE(v207) = -127;
        v133 = v204;
        sub_1CF0230AC(v204, &type metadata for DeletionStatus);
        sub_1CF0230B4(&v207, &type metadata for DeletionStatus, v133, &type metadata for DeletionStatus, v131);
        v188 = v52;
        v134 = v211[2];
        LOBYTE(v207) = -126;
        v135 = v204;
        sub_1CF0230AC(v204, &type metadata for Fields);
        sub_1CF0230B4(&v207, &type metadata for Fields, v135, &type metadata for Fields, v131);
        v136 = v131;
        v211[0] = v211[1];
        LOBYTE(v207) = -125;
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B0, &unk_1CFA03A00);
        v138 = v204;
        sub_1CF0230AC(v204, v137);
        sub_1CF0230B4(&v207, v137, v138, v137, v131);
        v203 = v134;
        LODWORD(v201) = v218[4];
        (*(v123 + 16))(v165, v187, v189);
        LOBYTE(v207) = -124;
        v139 = v204;
        sub_1CF0230AC(v204, &type metadata for ContentStatus);
        sub_1CF0230B4(&v207, &type metadata for ContentStatus, v139, &type metadata for ContentStatus, v131);
        LOBYTE(v137) = v218[3];
        LOBYTE(v207) = -123;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
        v141 = v204;
        sub_1CF0230AC(v204, v140);
        sub_1CF0230B4(&v207, v140, v141, v140, v136);
        LOBYTE(v134) = v218[2];
        LOBYTE(v207) = -122;
        v142 = MEMORY[0x1E69E6370];
        v143 = v204;
        sub_1CF0230AC(v204, MEMORY[0x1E69E6370]);
        sub_1CF0230B4(&v207, v142, v143, v142, v136);
        LOBYTE(v136) = v218[1];
        v144 = v163;
        sub_1CF021034(sub_1CEFEF01C, 0, v204, &_s9SQLFieldsON_0, v190, v161, v163);
        v145 = v164;
        v146 = swift_getWitnessTable();
        v147 = sub_1CF023980(v144, v145, v146);
        v198 = v148;
        v199 = v147;
        LODWORD(v197) = v149;
        (*(v162 + 8))(v163, v164);
        v207 = v212;
        v208 = v213;
        v209 = v214;
        v210 = v215;
        v218[0] = -58;
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v151 = v204;
        v152 = v190;
        sub_1CF0230AC(v204, v150);
        sub_1CF023C28(&v212, v205);
        sub_1CF0230B4(v218, v150, v151, v150, v152);
        sub_1CEFCCC44(&v212, &unk_1EC4BF260, &unk_1CFA01B60);
        v153 = v206;
        (*(v186 + 8))(v187, v189);
        (*(v192 + 8))(v193, v195);
        (*(v200 + 8))(v202, v188);
        return sub_1CF023C98(v177, v203, v211, v201, v165, v137, v134, v136, v160, v199, v198, v197, &v207, v153, 0);
      }

      return result;
    }

    (*(v171 + 8))(v125, v126);
    (*(v123 + 8))(v108, v107);
    (*(v192 + 8))(v193, v195);
LABEL_14:
    (*(v66 + 8))(v202, v52);
    return result;
  }

  v63 = v52;
  LOBYTE(v207) = -121;
  v64 = v203;
  (*(a4 + 32))(&v212, MEMORY[0x1E69E76D8], &v207, MEMORY[0x1E69E76D8], v204, a4);
  if (v64)
  {
    return result;
  }

  v190 = a4;
  v203 = 0;
  if (BYTE8(v212))
  {
    v157 = v46;
    (*(v194 + 56))(v202, 1, 1, v196);
    v66 = v200;
    goto LABEL_7;
  }

  v156 = v212;
  LOBYTE(v212) = -64;
  v75 = MEMORY[0x1E69E7668];
  v76 = v204;
  v77 = v190;
  sub_1CF0230AC(v204, MEMORY[0x1E69E7668]);
  v78 = v203;
  sub_1CF0230B4(&v212, v75, v76, v75, v77);
  if (!v78)
  {
    v79 = v156;
    v155 = v207;
    v205[0] = -63;
    v203 = 0;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
    sub_1CF0230AC(v76, v80);
    v81 = v203;
    sub_1CF0230B4(v205, v80, v76, v80, v190);
    if (!v81)
    {
      v157 = v46;
      v203 = 0;
      v82 = v212;
      v83 = BYTE8(v212);
      *&v212 = v79;
      DWORD2(v212) = v155;
      *&v213 = v82;
      BYTE8(v213) = v83;
      v84 = v196;
      v85 = swift_dynamicCast();
      (*(v194 + 56))(v61, v85 ^ 1u, 1, v84);
      v86 = v61;
      v66 = v200;
      v52 = v63;
      (*(v200 + 32))(v202, v86, v63);
      goto LABEL_7;
    }
  }

  return result;
}

unint64_t sub_1CF022A90()
{
  result = qword_1EDEAD418;
  if (!qword_1EDEAD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD418);
  }

  return result;
}

unint64_t sub_1CF022AE4()
{
  result = qword_1EDEADD08;
  if (!qword_1EDEADD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADD08);
  }

  return result;
}

uint64_t sub_1CF022B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18 = a1;
  v19 = a4;
  v8 = *(a3 + 40);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v18 - v13;
  v15 = v5 + *(a3 + 52);
  v16 = *(v15 + 8);
  (*v15)(a2);
  (*(v8 + 32))(v18, v14, v19, v9, v8);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1CF022CE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = *(a3 + 16);
  return sub_1CF022D10(a1, a2, *(a3 + 24), a4);
}

uint64_t sub_1CF022D10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_1CF9E75D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  v23[0] = a3;
  v13 = *(a3 + 16);
  v23[1] = a1;
  sub_1CF9E6728();
  if (v26)
  {
    sub_1CEFE9EB8(&v25, v27);
    sub_1CEFD1104(v27, &v25);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v27);
      v14 = *(a2 - 8);
      v15 = *(v14 + 56);
      v15(v12, 0, 1, a2);
      (*(v14 + 32))(a4, v12, a2);
      return (v15)(a4, 0, 1, a2);
    }

    else
    {
      (*(*(a2 - 8) + 56))(v12, 1, 1, a2);
      (*(v9 + 8))(v12, v8);
      sub_1CF24CD3C();
      swift_allocError();
      v18 = v17;
      sub_1CEFD1104(v27, v17);
      *&v25 = 0;
      *(&v25 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      v24 = v25;
      MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA362A0);
      v19 = sub_1CF9E82E8();
      MEMORY[0x1D3868CC0](v19);

      MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
      sub_1CEFD1104(v27, &v25);
      v20 = sub_1CF9E6948();
      MEMORY[0x1D3868CC0](v20);

      MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
      v21 = *(v23[0] + 8);
      sub_1CF9E7FE8();
      v22 = *(&v24 + 1);
      *(v18 + 32) = v24;
      *(v18 + 40) = v22;
      *(v18 + 48) = 4;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  else
  {
    sub_1CEFCCC44(&v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }
}

uint64_t sub_1CF0230F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18 = a1;
  v19 = a4;
  v8 = *(a3 + 40);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v18 - v13;
  v15 = v5 + *(a3 + 52);
  v16 = *(v15 + 8);
  (*v15)(a2);
  (*(v8 + 24))(v18, v14, v19, v9, v8);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1CF023298@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v25 = a4;
  v15 = *(a4 + 16);
  v26 = a1;
  v32 = a2;
  sub_1CF9E6728();
  sub_1CEFF95C8(v31, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v31, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = *(a3 - 8);
    (*(v16 + 56))(v14, 0, 1, a3);
    return (*(v16 + 32))(a5, v14, a3);
  }

  else
  {
    (*(*(a3 - 8) + 56))(v14, 1, 1, a3);
    (*(v11 + 8))(v14, v10);
    sub_1CF24CD3C();
    swift_allocError();
    v19 = v18;
    sub_1CEFF95C8(v31, v18);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1CF9E7948();
    v27 = v29;
    v28 = v30;
    MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA362A0);
    v20 = sub_1CF9E82E8();
    MEMORY[0x1D3868CC0](v20);

    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFF95C8(v31, &v29);
    v21 = sub_1CF9E6948();
    MEMORY[0x1D3868CC0](v21);

    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v22 = *(v25 + 8);
    sub_1CF9E7FE8();
    v23 = v28;
    *(v19 + 32) = v27;
    *(v19 + 40) = v23;
    *(v19 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v31, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF0235E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t ItemStateVersion.init(parentID:filename:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ItemStateVersion();
  v8 = (a4 + *(result + 36));
  *v8 = v5;
  v8[1] = v6;
  return result;
}

_DWORD *sub_1CF0236A0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1CF023858(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF023878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v16 = type metadata accessor for FileItemVersion();
  *(a9 + v16[13]) = a2;
  result = (*(*(a8 - 8) + 32))(a9 + v16[14], a3, a8);
  *(a9 + v16[15]) = a4;
  v18 = (a9 + v16[16]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t sub_1CF023980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v14) = 0;
  sub_1CF0230B4(&v14, MEMORY[0x1E69E6530], a2, MEMORY[0x1E69E6530], a3);
  if (!v3)
  {
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:
          sub_1CF1DA62C();
          return swift_allocError();
        case 4:
          return 1;
        case 5:
          return 0;
      }
    }

    else
    {
      switch(v15)
      {
        case 0:
          LOBYTE(v13) = 1;
          sub_1CF0230AC(a2, &type metadata for JobWaitCondition);
          sub_1CF0230B4(&v13, &type metadata for JobWaitCondition, a2, &type metadata for JobWaitCondition, a3);
          v4 = v14;
          v12 = 2;
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
          sub_1CF0230AC(a2, v9);
          sub_1CF0230B4(&v12, v9, a2, v9, a3);
          return v4;
        case 1:
          LOBYTE(v13) = 2;
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
          sub_1CF0230AC(a2, v11);
          sub_1CF0230B4(&v13, v11, a2, v11, a3);
          return v14;
        case 2:
          LOBYTE(v13) = 2;
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
          sub_1CF0230AC(a2, v8);
          sub_1CF0230B4(&v13, v8, a2, v8, a3);
          return v14;
      }
    }

    sub_1CF1DA5D8();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1CF023C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF260, &unk_1CFA01B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1CF023C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __int128 *a13, uint64_t a14, uint64_t a15)
{
  v20 = *a3;
  v31 = *a13;
  v32 = a13[1];
  v33 = a13[2];
  v34 = a13[3];
  swift_getAssociatedTypeWitness();
  v21 = sub_1CF9E75D8();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ItemReconciliationHalf();
  *(a9 + v22[9]) = a2;
  *(a9 + v22[10]) = v20;
  *(a9 + v22[11]) = a4;
  v23 = v22[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v24 = sub_1CF9E75D8();
  (*(*(v24 - 8) + 32))(a9 + v23, a5, v24);
  *(a9 + v22[13]) = a6;
  *(a9 + v22[14]) = a7;
  *(a9 + v22[15]) = a8;
  v25 = a9 + v22[16];
  *v25 = a10;
  *(v25 + 8) = a11;
  *(v25 + 16) = a12;
  v26 = (a9 + v22[17]);
  *v26 = v31;
  v26[1] = v32;
  result = *&v33;
  v26[2] = v33;
  v26[3] = v34;
  *(a9 + v22[18]) = a14;
  *(a9 + v22[19]) = a15;
  return result;
}

uint64_t sub_1CF023F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v9[0]) = 0;
  sub_1CF0230AC(a2, &type metadata for JobSchedulingPriority);
  sub_1CF0230B4(v9, &type metadata for JobSchedulingPriority, a2, &type metadata for JobSchedulingPriority, a3);
  if (!v3)
  {
    v4 = v9[1];
    v8 = 1;
    sub_1CF0230AC(a2, &type metadata for NSecTimestamp);
    sub_1CF0230B4(&v8, &type metadata for NSecTimestamp, a2, &type metadata for NSecTimestamp, a3);
  }

  return v4;
}

uint64_t sub_1CF023FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v16 = *a3;
  v17 = type metadata accessor for ItemReconciliationHalf();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for ItemReconciliation();
  v19 = v18[13];
  v20 = type metadata accessor for ItemReconciliationHalf();
  result = (*(*(v20 - 8) + 32))(a9 + v19, a2, v20);
  *(a9 + v18[14]) = v16;
  *(a9 + v18[15]) = a4;
  v22 = (a9 + v18[16]);
  *v22 = a5;
  v22[1] = a6;
  *(a9 + v18[17]) = a7;
  *(a9 + v18[18]) = a8;
  *(a9 + v18[19]) = a10;
  *(a9 + v18[20]) = a11;
  return result;
}

uint64_t sub_1CF024178(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1CF0241C8(a1, a2);
  return v7;
}

uint64_t sub_1CF0241C8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 112);
  v8 = *(*v2 + 80);
  v9 = *(*v2 + 96);
  v6 = type metadata accessor for ItemReconciliation();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

uint64_t sub_1CF0242A8()
{
  v1 = *v0;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E69C8();
}

uint64_t sub_1CF0242FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1CF9E7728();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1CF024374(v8);

  sub_1CF0248E0(v8);
  return v6 & 1;
}

uint64_t sub_1CF024374(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  sub_1CEFF95C8(a1, v10);
  if (!v11)
  {
    sub_1CF0248E0(v10);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v5 = v4[12];
  v6 = v4[13];
  v7 = sub_1CF024490(v1 + *((*v3 & *v1) + 0x70), v9 + *((*v9 & *v3) + 0x70), v4[10], v4[11]);

  return v7 & 1;
}

uint64_t sub_1CF024490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a1;
  v50 = a2;
  v47 = *(a4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v11;
  v52 = v12;
  v48 = v12;
  v43 = v13;
  v44 = v14;
  v53 = v13;
  v54 = v14;
  v15 = type metadata accessor for ReconciliationID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  v24 = *(v45 + 64);
  v25 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v27 = &v41 - v26;
  v28 = *(v25 + 48);
  v29 = *(v16 + 16);
  v29(&v41 - v26, v49, v15);
  v29(&v27[v28], v50, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29(v22, v27, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = v46;
      v37 = v41;
      (*(v46 + 32))(v41, &v27[v28], a3);
      v38 = *(*(v43 + 40) + 8);
      v34 = sub_1CF9E6868();
      v39 = *(v36 + 8);
      v39(v37, a3);
      v39(v22, a3);
      goto LABEL_9;
    }

    (*(v46 + 8))(v22, a3);
    goto LABEL_7;
  }

  v29(v20, v27, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v47 + 8))(v20, v48);
LABEL_7:
    v34 = 0;
    v16 = v45;
    v15 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v31 = v47;
  v30 = v48;
  v32 = v42;
  (*(v47 + 32))(v42, &v27[v28], v48);
  v33 = *(*(v44 + 40) + 8);
  v34 = sub_1CF9E6868();
  v35 = *(v31 + 8);
  v35(v32, v30);
  v35(v20, v30);
LABEL_9:
  (*(v16 + 8))(v27, v15);
  return v34 & 1;
}

uint64_t sub_1CF0248E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CF02494C(void *a1, char a2, uint64_t (*a3)(void **), uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), void (*a7)(void *, void, uint64_t, uint64_t (*)(void), uint64_t), void (*a8)(void *, uint64_t))
{
  v22 = a1;
  v23 = a2 & 1;
  if ((a2 & 1) == 0)
  {
    return a3(&v22);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;

    a6(a1, 1);
    a7(a1, 0, v15, a3, a4);

    v16 = a1;
    v17 = 1;
  }

  else
  {
    v19 = a1;
    result = FPDomainUnavailableError();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = 1;
    a3(&v20);
    a8(a1, 1);
    v16 = v20;
    v17 = v21;
  }

  return (a8)(v16, v17);
}

uint64_t sub_1CF024B04(void *a1, char a2, uint64_t (*a3)(void *, void *))
{
  if ((a2 & 1) == 0)
  {
    return a3(a1, 0);
  }

  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();
  v6 = a1;
  a3(0, a1);
  sub_1CF2F6594(a1, 1);
  return sub_1CF2F6594(a1, 1);
}

uint64_t sub_1CF024BB4(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v42 = sub_1CF9E53C8();
  v4 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 32);
  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  while (v9)
  {
    v11 = *v10++;
    --v9;
    if (v11 == a1)
    {
      goto LABEL_4;
    }
  }

  v40 = *MEMORY[0x1E696AA08];
  v39 = (v5 + 8);
  v38 = xmmword_1CF9FA450;
  if (*(a2 + 48))
  {
    goto LABEL_8;
  }

LABEL_7:
  if (a1 == *(a2 + 40))
  {
LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

LABEL_8:
  while (1)
  {

    v15 = a2;
    v16 = *(a2 + 16);
    v48 = a1;
    v49 = 0u;
    v50 = 0u;
    v43 = -1;
    v17 = fpfs_openfdbyhandle();
    if (v17 < 0)
    {
      break;
    }

    v18 = v17;

    LOBYTE(v43) = 0;
    if ((fpfs_get_is_ignore_root() & 0x80000000) != 0)
    {
      v19 = MEMORY[0x1D38683F0]();
      v44 = 5;
      v45 = 0u;
      v46 = 0u;
      v47 = 19;
      v41 = v7;
      if (!v19 || (v20 = sub_1CF9E6138(), (v20 & 0x100000000) != 0))
      {
        sub_1CEFDB034();
        v25 = swift_allocError();
        sub_1CF19A730(&v44, v26);
      }

      else
      {
        LODWORD(v48) = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
        inited = swift_initStackObject();
        *(inited + 16) = v38;
        *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *(inited + 40) = v22;
        *(inited + 72) = &type metadata for VFSFileError;
        v23 = swift_allocObject();
        *(inited + 48) = v23;
        sub_1CF19A730(&v44, v23 + 16);
        sub_1CF4E04E8(inited);
        swift_setDeallocating();
        sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
        sub_1CF00BB78(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v24 = v42;
        sub_1CF9E57D8();
        v25 = sub_1CF9E53A8();
        (*v39)(v7, v24);
      }

      sub_1CF1969CC(&v44);
      swift_willThrow();
      v27 = v25;
      LODWORD(v44) = sub_1CF9E52B8();
      sub_1CF196978();
      v28 = sub_1CF9E5658();

      if ((v28 & 1) == 0)
      {
        v29 = v25;
        LODWORD(v44) = sub_1CF9E52C8();
        v30 = sub_1CF9E5658();

        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v7 = v41;
    }

    else if (v43 == 1)
    {
      close(v18);
      v12 = 1;
      goto LABEL_5;
    }

    v48 = 0;
    if ((fpfs_fget_parent_id() & 0x80000000) != 0)
    {
      v37 = MEMORY[0x1D38683F0]();
      v44 = 4;
      v45 = 0u;
      v46 = 0u;
      v47 = 19;
      sub_1CF19BBE4(v37, &v44);
      sub_1CF1969CC(&v44);
      swift_willThrow();
LABEL_30:
      close(v18);
      goto LABEL_5;
    }

    v31 = v48;
    close(v18);
    if (v31 == a1)
    {
      goto LABEL_4;
    }

    v32 = *(v8 + 16);
    v33 = (v8 + 32);
    a2 = v15;
    while (v32)
    {
      v34 = *v33++;
      --v32;
      if (v34 == v31)
      {
        goto LABEL_4;
      }
    }

    a1 = v31;
    if ((*(v15 + 48) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v35 = v43;
  v36 = MEMORY[0x1D38683F0]();
  if (v35 < 0)
  {
    LODWORD(v44) = 0;
    BYTE4(v44) = 1;
  }

  else
  {
    LODWORD(v44) = v43;
    BYTE4(v44) = 0;
  }

  v47 = 0;
  sub_1CF19BBE4(v36, &v44);
  sub_1CF1969CC(&v44);
  swift_willThrow();

LABEL_5:
  v13 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

BOOL sub_1CF0250F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1 == *a2;
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  v7 = v4 == 1 && v2 == v3;
  v9 = v4 == 2 && v3 == 0;
  v11 = v4 == 2 && v3 == 1;
  if (v2)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (*(a1 + 8) == 1)
  {
    v12 = v7;
  }

  if (*(a1 + 8))
  {
    return v12;
  }

  else
  {
    return v5;
  }
}

unint64_t sub_1CF025150(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1CF9E6B58();
  }

  __break(1u);
  return result;
}

unint64_t VFSItemID.init(parsing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1953460082 && a2 == 0xE400000000000000;
  if (v5 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
    v9 = 2;
LABEL_7:
    *a3 = v8;
    *(a3 + 8) = v9;
    return result;
  }

  if (a1 == 0x6873617274 && a2 == 0xE500000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    v9 = 2;
    v8 = 1;
    goto LABEL_7;
  }

  if (sub_1CF4C4044())
  {
    result = sub_1CF9E69F8();
    if (result >= 0x60000)
    {
      v10 = sub_1CF9E6B58();
      v12 = v11;
      v14 = v13;
      v16 = v15;

      if ((v10 ^ v12) >= 0x4000)
      {
        v17 = sub_1CF4C5F04(v10, v12, v14, v16, 10);
        if ((v17 & 0x10000000000) != 0)
        {
          v17 = sub_1CF4C597C(v10, v12, v14, v16, 10);
        }

        v8 = v17;

        if ((v8 & 0x100000000) == 0)
        {
          v9 = 0;
          v8 = v8;
          goto LABEL_7;
        }

LABEL_26:
        v8 = 0;
        v9 = -1;
        goto LABEL_7;
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
    if ((sub_1CF4C4044() & 1) == 0)
    {
      goto LABEL_25;
    }

    result = sub_1CF9E69F8();
    if (result >= 0x70000)
    {
      v18 = sub_1CF9E6B58();
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if ((v18 ^ v20) >= 0x4000)
      {
        v25 = sub_1CF0254A0(v18, v20, v22, v24, 10);
        if ((v26 & 0x100) != 0)
        {
          v8 = sub_1CF4C53EC(v18, v20, v22, v24, 10);
          v29 = v28;

          if (v29)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v8 = v25;
          v27 = v26;

          if (v27)
          {
            goto LABEL_26;
          }
        }

        v9 = 1;
        goto LABEL_7;
      }

LABEL_25:

      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}