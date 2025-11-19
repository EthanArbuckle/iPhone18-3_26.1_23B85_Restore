BOOL sub_1C49F27E4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1C4F02218();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

_BYTE *storeEnumTagSinglePayload for LocationGeoHashBlockingFunction(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C49F2988(uint64_t result, void *a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v20 = v6;
  v21 = result;
  while (1)
  {
    if (v6 == v5)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_1C442E860(v7, v25);
    v9 = sub_1C49F3F04(v25, a2);
    if (v2)
    {
      sub_1C440962C(v25);

LABEL_14:

      return v8;
    }

    if (v9)
    {
      sub_1C441D670(v25, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = *(v8 + 16);
        sub_1C44F4214();
        v8 = v26;
      }

      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1C44F4214();
      }

      v13 = v23;
      v14 = v24;
      v15 = sub_1C4418280(v22, v23);
      v16 = *(*(v13 - 8) + 64);
      MEMORY[0x1EEE9AC00](v15);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18);
      sub_1C44FDC24(v12, v18, &v26, v13, v14);
      result = sub_1C440962C(v22);
      v8 = v26;
      v6 = v20;
      v4 = v21;
    }

    else
    {
      result = sub_1C440962C(v25);
    }

    v7 += 40;
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49F2B98(void *a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_1C4F01108();
    v7 = sub_1C43FBD30();
    v8 = [a3 matchesInString:v3 options:0 range:{0, MEMORY[0x1C69400B0](v7, a2)}];

    sub_1C44DBED0();
    v9 = sub_1C4F01678();

    v38 = sub_1C4428DA0(v9);
    if (v38)
    {
      a2 = 0;
      v39 = MEMORY[0x1E69E7CC8];
      v36 = v9 & 0xFFFFFFFFFFFFFF8;
      v37 = v9 & 0xC000000000000001;
      v34 = v9;
      v35 = v9 + 32;
      while (1)
      {
LABEL_4:
        if (a2 == v38)
        {

          return v39;
        }

        if (v37)
        {
          v10 = MEMORY[0x1C6940F90](a2, v9);
        }

        else
        {
          if (a2 >= *(v36 + 16))
          {
            goto LABEL_32;
          }

          v10 = *(v35 + 8 * a2);
        }

        a1 = v10;
        if (__OFADD__(a2++, 1))
        {
          break;
        }

        v12 = sub_1C49F8758(v10);
        if (v12)
        {
          v13 = v12;
          v14 = v12 + 64;
          v15 = 1 << *(v12 + 32);
          if (v15 < 64)
          {
            v16 = ~(-1 << v15);
          }

          else
          {
            v16 = -1;
          }

          v17 = v16 & *(v12 + 64);
          v18 = (v15 + 63) >> 6;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v19 = 0;
          while (v17)
          {
            v20 = v19;
LABEL_19:
            v21 = __clz(__rbit64(v17));
            v17 &= v17 - 1;
            v22 = v21 | (v20 << 6);
            v23 = *(*(v13 + 48) + 8 * v22);
            v24 = (*(v13 + 56) + 16 * v22);
            v25 = *v24;
            v26 = v24[1];
            v27 = v23;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C49F2ED8(v27, v25, v26, &v39);
          }

          while (1)
          {
            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v20 >= v18)
            {

              v9 = v34;
              goto LABEL_4;
            }

            v17 = *(v14 + 8 * v20);
            ++v19;
            if (v17)
            {
              v19 = v20;
              goto LABEL_19;
            }
          }

          __break(1u);
          break;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  if (qword_1EDDFD028 != -1)
  {
LABEL_33:
    sub_1C43FE9B4();
  }

  v29 = sub_1C4F00978();
  sub_1C442B738(v29, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = sub_1C4F00968();
  v31 = sub_1C4F01CC8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136642819;
    *(v32 + 4) = sub_1C441D828(a1, a2, &v39);
    _os_log_impl(&dword_1C43F8000, v30, v31, "No addresses found in string %{sensitive}s", v32, 0xCu);
    sub_1C440962C(v33);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return 0;
}

void sub_1C49F2ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1C4EFEEF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x1E696A918];
  v12 = sub_1C4F01138();
  v14 = v13;
  if (v12 == sub_1C4F01138() && v14 == v15)
  {

    goto LABEL_36;
  }

  v17 = sub_1C4F02938();

  if (v17)
  {
LABEL_36:
    sub_1C4EFECD8();
LABEL_37:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v61 = *a4;
    swift_isUniquelyReferenced_nonNull_native();
    v64 = *a4;
    sub_1C46612A8();
    *a4 = v64;
    (*(v7 + 8))(v10, v6);
    return;
  }

  v18 = *MEMORY[0x1E696A910];
  v19 = sub_1C4F01138();
  v21 = v20;
  if (v19 == sub_1C4F01138() && v21 == v22)
  {

    goto LABEL_39;
  }

  v24 = sub_1C4F02938();

  if (v24)
  {
LABEL_39:
    sub_1C4EFEDE8();
    goto LABEL_37;
  }

  v25 = *MEMORY[0x1E696A928];
  v26 = sub_1C4F01138();
  v28 = v27;
  if (v26 == sub_1C4F01138() && v28 == v29)
  {

    goto LABEL_41;
  }

  v31 = sub_1C4F02938();

  if (v31)
  {
LABEL_41:
    sub_1C4EFE8D8();
    goto LABEL_37;
  }

  v32 = *MEMORY[0x1E696A930];
  v33 = sub_1C4F01138();
  v35 = v34;
  if (v33 == sub_1C4F01138() && v35 == v36)
  {

    goto LABEL_43;
  }

  v38 = sub_1C4F02938();

  if (v38)
  {
LABEL_43:
    sub_1C4EFE5A8();
    goto LABEL_37;
  }

  v39 = *MEMORY[0x1E696A920];
  v40 = sub_1C4F01138();
  v42 = v41;
  if (v40 == sub_1C4F01138() && v42 == v43)
  {

    goto LABEL_45;
  }

  v45 = sub_1C4F02938();

  if (v45)
  {
LABEL_45:
    sub_1C4EFEBF8();
    goto LABEL_37;
  }

  v46 = *MEMORY[0x1E696A938];
  v47 = sub_1C4F01138();
  v49 = v48;
  if (v47 == sub_1C4F01138() && v49 == v50)
  {

    goto LABEL_47;
  }

  v52 = sub_1C4F02938();

  if (v52)
  {
LABEL_47:
    sub_1C4EFE378();
    goto LABEL_37;
  }

  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v53 = sub_1C4F00978();
  sub_1C442B738(v53, qword_1EDE2DE10);
  v54 = a1;
  v63 = sub_1C4F00968();
  v55 = sub_1C4F01CC8();

  if (os_log_type_enabled(v63, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v64 = v57;
    *v56 = 136315138;
    v58 = sub_1C4F01138();
    v60 = sub_1C441D828(v58, v59, &v64);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_1C43F8000, v63, v55, "Unsupported address type %s", v56, 0xCu);
    sub_1C440962C(v57);
    MEMORY[0x1C6942830](v57, -1, -1);
    MEMORY[0x1C6942830](v56, -1, -1);
  }

  else
  {
    v62 = v63;
  }
}

uint64_t LocationMatcher.stateStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for LocationMatcher() + 28));
}

uint64_t sub_1C49F3460()
{
  v0 = sub_1C4EF9488();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  sub_1C44F9918(v6, qword_1EDE2D570);
  sub_1C442B738(v0, qword_1EDE2D570);
  sub_1C4EF9448();
  sub_1C4EF9438();
  sub_1C4EF9458();
  v9 = *(v1 + 8);
  v9(v5, v0);
  return (v9)(v8, v0);
}

uint64_t sub_1C49F3590()
{
  result = sub_1C4F00F28();
  qword_1EDE2CE98 = result;
  return result;
}

uint64_t sub_1C49F35CC()
{
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v0 = *(sub_1C4EFEEF8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F17D00;
  sub_1C4EFEBF8();
  sub_1C4EFE4C8();
  sub_1C4EFE748();
  sub_1C4EFE5A8();
  sub_1C4EFE4B8();
  sub_1C4EFEDE8();
  sub_1C4EFEA58();
  sub_1C4EFE8D8();
  sub_1C4EFEA78();
  sub_1C4EFE378();
  sub_1C4EFECD8();
  result = sub_1C4EFE688();
  qword_1EDE2CEA0 = v3;
  return result;
}

uint64_t LocationMatcher.stageName.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for LocationMatcher();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t sub_1C49F3784(uint64_t a1)
{
  v2 = sub_1C4EFEEF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v72 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  v73 = v71 - v8;
  sub_1C43FD1D0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v71 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v71 - v13;
  v15 = *(a1 + 16);
  v71[1] = a1;
  v16 = a1 + 32;
  v17 = MEMORY[0x1E69E7CC0];
  v77 = (v18 + 8);
  v74 = a1 + 32;
  for (i = v15; v15; --v15)
  {
    sub_1C442E860(v16, &v85);
    sub_1C4409678(&v85, v86);
    sub_1C4EFF7F8();
    sub_1C4EFE308();
    sub_1C4419F50();
    sub_1C49F87FC(&off_1EDDFCCA8, v19);
    sub_1C444FE94();
    sub_1C444FE94();
    if (v79 == v83 && v80 == v84)
    {
      v23 = *v77;
      (*v77)(v12, v2);
      v23(v14, v2);
    }

    else
    {
      sub_1C43FF3F8();
      v76 = sub_1C4F02938();
      v21 = v17;
      v22 = *v77;
      (*v77)(v12, v2);
      v22(v14, v2);
      v17 = v21;

      if ((v76 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_1C4409678(&v85, v86);
    sub_1C43FBD30();
    if (sub_1C4EFF7D8() == 1145656661 && v24 == 0xE400000000000000)
    {

LABEL_16:
      sub_1C441D670(&v85, &v79);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87[0] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v17 + 16);
        sub_1C44F4214();
        v17 = v87[0];
      }

      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C43FCFE8(v29);
        sub_1C44F4214();
      }

      v31 = v81;
      v32 = v82;
      sub_1C4418280(&v79, v81);
      sub_1C44335A8();
      v34 = *(v33 + 64);
      MEMORY[0x1EEE9AC00](v35);
      sub_1C43FBCC4();
      v38 = v37 - v36;
      (*(v39 + 16))(v37 - v36);
      sub_1C44FDC24(v30, v38, v87, v31, v32);
      sub_1C440962C(&v79);
      v17 = v87[0];
      goto LABEL_21;
    }

    v26 = sub_1C4F02938();

    if (v26)
    {
      goto LABEL_16;
    }

LABEL_14:
    sub_1C440962C(&v85);
LABEL_21:
    v16 += 40;
  }

  v87[0] = v17;
  v40 = v73;
  if (!*(v17 + 16))
  {
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v74;
    v43 = i;
    if (i)
    {
      do
      {
        v44 = v17;
        v74 = v42;
        i = v43;
        sub_1C442E860(v42, &v85);
        sub_1C4409678(&v85, v86);
        sub_1C43FBD30();
        sub_1C4EFF7F8();
        v45 = v72;
        sub_1C4EFE308();
        sub_1C4419F50();
        sub_1C49F87FC(&off_1EDDFCCA8, v46);
        sub_1C444FE94();
        sub_1C444FE94();
        v47 = v79 == v83 && v80 == v84;
        v48 = v40;
        if (v47)
        {
          v51 = *v77;
          (*v77)(v45, v2);
          v51(v48, v2);

          v17 = v44;
        }

        else
        {
          sub_1C43FF3F8();
          v49 = sub_1C4F02938();
          v50 = *v77;
          (*v77)(v45, v2);
          v50(v48, v2);

          v17 = v44;
          if ((v49 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        sub_1C4409678(&v85, v86);
        sub_1C43FBD30();
        if (sub_1C4EFF7D8() == 1145656653 && v52 == 0xE400000000000000)
        {

LABEL_38:
          sub_1C441D670(&v85, &v79);
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v78 = v41;
          if ((v55 & 1) == 0)
          {
            v56 = *(v41 + 16);
            sub_1C44F4214();
            v41 = v78;
          }

          v58 = *(v41 + 16);
          v57 = *(v41 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1C43FCFE8(v57);
            sub_1C44F4214();
          }

          v59 = v81;
          v60 = v82;
          sub_1C4418280(&v79, v81);
          sub_1C44335A8();
          v62 = *(v61 + 64);
          MEMORY[0x1EEE9AC00](v63);
          sub_1C43FBCC4();
          v66 = v65 - v64;
          (*(v67 + 16))(v65 - v64);
          sub_1C44FDC24(v58, v66, &v78, v59, v60);
          sub_1C440962C(&v79);
          v41 = v78;
          goto LABEL_43;
        }

        v54 = sub_1C4F02938();

        if (v54)
        {
          goto LABEL_38;
        }

LABEL_36:
        sub_1C440962C(&v85);
LABEL_43:
        v42 = v74 + 40;
        v43 = i - 1;
        v40 = v73;
      }

      while (i != 1);
    }

    v87[0] = v41;
  }

  sub_1C4409A34();
  v68 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v69 = sub_1C49F2988(v68, v87);
  sub_1C486C278(&v85, v69);

  if (v86)
  {
    sub_1C4409678(&v85, v86);
    sub_1C4EFF7D8();
    sub_1C440962C(&v85);
  }

  else
  {
    sub_1C4420C3C(&v85, &qword_1EC0C0F38, &qword_1C4F41A90);
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C49F3F04(void *a1, void *a2)
{
  v52 = a2;
  v58 = sub_1C4EFF8A8();
  v50 = *(v58 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1C456902C(&qword_1EC0C0F40, &qword_1C4F41A98);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v44 - v6;
  v7 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v15 = sub_1C4EFEEF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v44 - v21;
  v23 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7F8();
  sub_1C4EFE308();
  v24 = sub_1C44DBB50(v22, v20);
  v25 = *(v16 + 8);
  v25(v20, v15);
  v48 = v15;
  v25(v22, v15);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  v45 = v25;
  v26 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7B8();
  v49 = v14;
  sub_1C440BAA8(v14, 0, 1, v58);
  sub_1C486C278(v56, *v52);
  v46 = a1;
  if (v57)
  {
    sub_1C4409678(v56, v57);
    v27 = v54;
    sub_1C4EFF7B8();
    sub_1C440BAA8(v27, 0, 1, v58);
    sub_1C440962C(v56);
  }

  else
  {
    sub_1C4420C3C(v56, &qword_1EC0C0F38, &qword_1C4F41A90);
    v27 = v54;
    sub_1C440BAA8(v54, 1, 1, v58);
  }

  v28 = *(v53 + 48);
  v29 = v49;
  v30 = v55;
  sub_1C446C964(v49, v55, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C446C964(v27, v30 + v28, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (sub_1C44157D4(v30, 1, v58) == 1)
  {
    sub_1C4420C3C(v27, &qword_1EC0B9A10, &qword_1C4F107C0);
    v30 = v55;
    sub_1C4420C3C(v29, &qword_1EC0B9A10, &qword_1C4F107C0);
    if (sub_1C44157D4(v30 + v28, 1, v58) == 1)
    {
      sub_1C4420C3C(v30, &qword_1EC0B9A10, &qword_1C4F107C0);
      v31 = v46;
LABEL_14:
      v41 = v31[4];
      sub_1C4409678(v31, v31[3]);
      sub_1C4EFF7C8();
      sub_1C4EFE558();
      v34 = sub_1C44DBB50(v22, v20);
      v42 = v48;
      v43 = v45;
      v45(v20, v48);
      v43(v22, v42);
      return v34 & 1;
    }

    goto LABEL_10;
  }

  v32 = v51;
  sub_1C446C964(v30, v51, &qword_1EC0B9A10, &qword_1C4F107C0);
  v33 = sub_1C44157D4(v30 + v28, 1, v58);
  v31 = v46;
  if (v33 == 1)
  {
    sub_1C4420C3C(v54, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v49, &qword_1EC0B9A10, &qword_1C4F107C0);
    (*(v50 + 8))(v32, v58);
LABEL_10:
    sub_1C4420C3C(v30, &qword_1EC0C0F40, &qword_1C4F41A98);
    goto LABEL_11;
  }

  v36 = v50;
  v37 = v30 + v28;
  v38 = v47;
  v39 = v58;
  (*(v50 + 32))(v47, v37, v58);
  sub_1C49F87FC(&unk_1EDDFCC80, MEMORY[0x1E69A99E8]);
  LODWORD(v53) = sub_1C4F010B8();
  v40 = *(v36 + 8);
  v40(v38, v39);
  sub_1C4420C3C(v54, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v49, &qword_1EC0B9A10, &qword_1C4F107C0);
  v40(v51, v39);
  sub_1C4420C3C(v55, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (v53)
  {
    goto LABEL_14;
  }

LABEL_11:
  v34 = 0;
  return v34 & 1;
}

id sub_1C49F4560(uint64_t a1)
{
  v2 = sub_1C4EFEEF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  sub_1C4419F50();
  sub_1C49F87FC(v17, v18);
  v41 = sub_1C4F00F28();
  v19 = (a1 + 32);
  v20 = *(a1 + 16) + 1;
  while (--v20)
  {
    v21 = v19 + 5;
    sub_1C49F47D4(&v41, v19);
    v19 = v21;
  }

  v22 = v41;
  sub_1C4EFEDD8();
  sub_1C465C38C(v16, v22);
  v24 = v23;
  v25 = *(v5 + 8);
  v26 = sub_1C43FFE3C();
  v25(v26);
  if (!v24)
  {
    goto LABEL_8;
  }

  v27 = sub_1C43FFE24();
  v29 = sub_1C49F2108(v27, v28);
  if (v30)
  {
    goto LABEL_8;
  }

  v31 = *&v29;
  sub_1C4EFEEB8();
  sub_1C465C38C(v14, v22);
  v33 = v32;
  (v25)(v14, v2);
  if (v33 && (v34 = sub_1C43FFE24(), v36 = sub_1C49F2108(v34, v35), (v37 & 1) == 0))
  {
    v38 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v31 longitude:*&v36];
  }

  else
  {
LABEL_8:
    v38 = 0;
  }

  sub_1C4EFEBF8();
  sub_1C465C38C(v10, v22);
  (v25)(v10, v2);
  return v38;
}

uint64_t sub_1C49F47D4(uint64_t *a1, void *a2)
{
  v46 = a1;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  v11 = a2[4];
  sub_1C4409678(a2, a2[3]);
  v48 = v11;
  sub_1C4EFF7F8();
  sub_1C4EFE2E8();
  v12 = sub_1C44DBB50(v10, v8);
  v13 = *(v4 + 8);
  v13(v8, v3);
  v49 = v13;
  v13(v10, v3);
  v47 = v3;
  if (v12)
  {
    v14 = a2[4];
    sub_1C4409678(a2, a2[3]);
    v3 = v47;
    v15 = sub_1C4EFF7D8();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = a2[4];
      sub_1C4409678(a2, a2[3]);
      v3 = v47;
      v20 = sub_1C4EFF7D8();
      v22 = sub_1C49F2108(v20, v21);
      if ((v23 & 1) != 0 || (v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  sub_1C4EFF7F8();
  sub_1C4EFEBF8();
  v24 = sub_1C44DBB50(v10, v8);
  v25 = v49;
  v49(v8, v3);
  v25(v10, v3);
  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  v26 = a2[4];
  sub_1C4409678(a2, a2[3]);
  v3 = v47;
  v27 = sub_1C4EFF7D8();
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_12:
    sub_1C4EFF7F8();
    sub_1C4EFE378();
    v31 = sub_1C44DBB50(v10, v8);
    v32 = v49;
    v49(v8, v3);
    v32(v10, v3);
    if (v31)
    {
      v33 = a2[4];
      sub_1C4409678(a2, a2[3]);
      v3 = v47;
      v34 = sub_1C4EFF7D8();
      v36 = v35;

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        sub_1C4EFE378();
        goto LABEL_19;
      }
    }

    sub_1C4EFF7F8();
    sub_1C4EFE2D8();
    v38 = sub_1C44DBB50(v10, v8);
    v39 = v49;
    v49(v8, v3);
    result = v39(v10, v3);
    if ((v38 & 1) == 0)
    {
      return result;
    }

LABEL_18:
    v41 = a2[4];
    sub_1C4409678(a2, a2[3]);
    sub_1C4EFF7C8();
    goto LABEL_19;
  }

  sub_1C4EFEBF8();
LABEL_19:
  v42 = a2[4];
  sub_1C4409678(a2, a2[3]);
  sub_1C4EFF7D8();
  v43 = v46;
  v44 = *v46;
  swift_isUniquelyReferenced_nonNull_native();
  v50 = *v43;
  sub_1C46612A8();
  *v43 = v50;
  return (v49)(v10, v3);
}

void sub_1C49F4C08()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  v1 = sub_1C4F01FC8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = v0;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = qword_1EDDE7958;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v7 != -1)
      {
        sub_1C4432660();
        swift_once();
      }

      v8 = qword_1EDE2CE98;
      v9 = sub_1C4F00FF8();
      if (*(v8 + 16))
      {
        v11 = sub_1C445FAA8(v9, v10);
        if (v12)
        {
          v13 = (*(v8 + 56) + 16 * v11);
          v5 = *v13;
          v14 = v13[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v6 = v14;
        }
      }

      v16 = *(v20 + 16);
      v15 = *(v20 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C43FCFE8(v15);
        sub_1C44CD9C0();
      }

      ++v3;
      *(v20 + 16) = v16 + 1;
      v17 = v20 + 16 * v16;
      *(v17 + 32) = v5;
      *(v17 + 40) = v6;
      v4 += 2;
      if (v2 == v3)
      {

        v0 = v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_14:
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C44134BC();
    sub_1C4401CBC(v18, &unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4F01048();

    objc_autoreleasePoolPop(v0);
  }
}

uint64_t sub_1C49F4E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_1C465C38C(a3, a1);
  if (v7)
  {
    sub_1C465C38C(a3, a2);
    if (v8)
    {
      sub_1C4415EA8();
      sub_1C44104C0();

      sub_1C44104C0();

      v9 = sub_1C4F00FF8();
      v11 = v10;

      v12 = sub_1C4F00FF8();
      v14 = v13;

      if (v9 == v12 && v11 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_1C4F02938();
      }

      v19 = v16 & 1;
      goto LABEL_14;
    }
  }

  sub_1C465C38C(a3, a1);
  if (v17 || (sub_1C465C38C(a3, a2), v18))
  {

    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

LABEL_14:
  objc_autoreleasePoolPop(v6);
  return v19;
}

uint64_t sub_1C49F4FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v122 = a2;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v121 = v11 - v12;
  sub_1C43FD1D0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v116 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v116 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v116 - v20;
  sub_1C4EFE5A8();
  v22 = sub_1C465C38C(v21, a1);
  v24 = v23;
  v123 = *(v8 + 8);
  (v123)(v21, v5);
  if (v24)
  {
    v25 = sub_1C4F00FF8();
    v27 = v26;

    v124 = v25;
    v125 = v27;
    sub_1C4415EA8();
    sub_1C4F01FF8();
    sub_1C4426CC8();
  }

  else
  {
    v25 = 0;
  }

  v120 = a3;
  sub_1C4EFE5A8();
  v28 = sub_1C465C38C(v19, v122);
  v30 = v29;
  (v123)(v19, v5);
  if (v30)
  {
    v31 = sub_1C4F00FF8();
    v33 = v32;

    v124 = v31;
    v125 = v33;
    sub_1C4415EA8();
    v28 = sub_1C4F01FF8();
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  sub_1C4EFE748();
  sub_1C465C38C(v16, a1);
  v37 = v36;
  (v123)(v16, v5);
  if (v37)
  {
    v38 = sub_1C4F00FF8();
    v40 = v39;

    v124 = v38;
    v125 = v40;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](32, 0xE100000000000000);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v41 = sub_1C43FE99C();
    MEMORY[0x1C6940010](v41);

    v22 = v124;
    v25 = v125;
  }

  v42 = v121;
  sub_1C4EFE748();
  sub_1C465C38C(v42, v122);
  v44 = v43;
  (v123)(v42, v5);
  if (v44)
  {
    v45 = sub_1C4F00FF8();
    v47 = v46;

    v124 = v45;
    v125 = v47;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](32, 0xE100000000000000);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = sub_1C43FFE24();
    MEMORY[0x1C6940010](v48);

    v28 = v124;
    v35 = v125;
  }

  if (!v25)
  {
    if (!v35)
    {
      return 1;
    }

    goto LABEL_20;
  }

  if (!v35)
  {
LABEL_20:

    return 0;
  }

  if (v22 == v28 && v25 == v35)
  {
    goto LABEL_18;
  }

  sub_1C43FE99C();
  if (sub_1C4F02938())
  {
    goto LABEL_18;
  }

  v124 = v22;
  v125 = v25;
  v128 = 32;
  v129 = 0xE100000000000000;
  sub_1C4415EA8();
  v51 = sub_1C4415B5C();

  v124 = v28;
  v125 = v35;
  v128 = 32;
  v129 = 0xE100000000000000;
  v52 = sub_1C4415B5C();
  v53 = v52;
  if (v51[2] <= 2uLL || (v54 = *(v52 + 16), v54 <= 2))
  {
LABEL_46:

    goto LABEL_20;
  }

  v123 = v51[2];
  v119 = v54;
  v55 = v51[4];
  v118 = v51 + 4;
  v56 = v51[5];
  v124 = v55;
  v125 = v56;
  sub_1C4F01FF8();
  v58 = v57;
  v59 = sub_1C4F00FF8();
  v61 = v60;

  if (v53[2])
  {
    v122 = v53;
    v62 = v53[4];
    v117 = v53 + 4;
    v63 = v53[5];
    v124 = v62;
    v125 = v63;
    sub_1C4F01FF8();
    v121 = sub_1C4F00FF8();
    v58 = v64;

    if (qword_1EDDE7958 == -1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1C4432660();
  swift_once();
LABEL_27:
  v65 = qword_1EDE2CE98;
  v66 = sub_1C4F00FF8();
  v68 = sub_1C44735D4(v66, v67, v65);
  v70 = v69;

  if (v70)
  {

    v61 = v70;
  }

  else
  {
    v68 = v59;
  }

  v71 = v121;
  v72 = sub_1C4F00FF8();
  v74 = sub_1C44735D4(v72, v73, v65);
  v76 = v75;

  if (v76)
  {

    v71 = v74;
    v58 = v76;
  }

  if (v68 == v71 && v61 == v58)
  {
  }

  else
  {
    sub_1C43FF3F8();
    v78 = sub_1C4F02938();

    if ((v78 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v79 = v122;
  if (v123 > v51[2])
  {
    __break(1u);
  }

  else
  {
    v80 = &v118[2 * v123];
    v82 = *(v80 - 2);
    v81 = *(v80 - 1);
    v124 = v82;
    v125 = v81;
    sub_1C4F01FF8();
    v83 = sub_1C4F00FF8();
    v85 = v84;

    if (v119 <= *(v79 + 16))
    {
      v86 = &v117[2 * v119];
      v88 = *(v86 - 2);
      v87 = *(v86 - 1);
      v124 = v88;
      v125 = v87;
      sub_1C4F01FF8();
      v89 = sub_1C4F00FF8();
      v91 = v90;

      if (v83 == v89 && v85 == v91)
      {
      }

      else
      {
        sub_1C43FF3F8();
        v93 = sub_1C4F02938();

        if ((v93 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v94 = sub_1C4499330(1);
      v96 = v95;
      v98 = v97;
      v100 = v99;

      v124 = v94;
      v125 = v96;
      v126 = v98;
      v127 = v100;
      sub_1C456902C(&qword_1EC0C0F30, &qword_1C4F41A88);
      sub_1C4401CBC(&qword_1EDDFCDC8, &qword_1EC0C0F30, &qword_1C4F41A88);
      sub_1C4408DA4();
      v101 = sub_1C4F01048();
      v103 = v102;
      swift_unknownObjectRelease();
      v104 = sub_1C4499330(1);
      v106 = v105;
      v108 = v107;
      v110 = v109;

      v124 = v104;
      v125 = v106;
      v126 = v108;
      v127 = v110;
      sub_1C4408DA4();
      v111 = sub_1C4F01048();
      v113 = v112;
      swift_unknownObjectRelease();
      if (v101 == v111 && v103 == v113)
      {

LABEL_18:

        return 1;
      }

      sub_1C43FF3F8();
      v115 = sub_1C4F02938();

      return (v115 & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

float sub_1C49F5850(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDF6740 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4EF9488();
  v6 = sub_1C442B738(v5, qword_1EDE2D570);
  v7 = objc_autoreleasePoolPush();
  LOBYTE(v6) = sub_1C49F4FD8(a1, a2, v6);
  objc_autoreleasePoolPop(v7);
  v8 = 0.0;
  if (v6)
  {
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    v9 = *(sub_1C4EFEEF8() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
    sub_1C4EFE4C8();
    sub_1C4EFE378();
    sub_1C4D504A4();
    v13 = v12;
    MEMORY[0x1EEE9AC00](v12);
    sub_1C49C0954(sub_1C49F8738, &v34, v13, v14, v15, v16, v17, v18, v34, v35, v36, v37, v38, v2, a1, a2, v39, v40, v41, v42, v43, v44, v45);
    v20 = v19;

    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v21;
      v40 = MEMORY[0x1E69E7CC0];
      sub_1C459D3B0(0, v21, 0);
      v23 = v40;
      v24 = *(v40 + 16);
      v25 = 32;
      do
      {
        if (*(v20 + v25))
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        v40 = v23;
        v27 = *(v23 + 24);
        if (v24 >= v27 >> 1)
        {
          v28 = sub_1C43FCFE8(v27);
          sub_1C459D3B0(v28, v24 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v24 + 1;
        *(v23 + 4 * v24 + 32) = v26;
        ++v25;
        ++v24;
        --v21;
      }

      while (v21);

      v29 = *(v23 + 16);
      if (v29)
      {
        v30 = (v23 + 32);
        v31 = 0.0;
        do
        {
          v32 = *v30++;
          v31 = v31 + v32;
          --v29;
        }

        while (v29);
      }

      else
      {
        v31 = 0.0;
      }

      return v31 / v22;
    }

    else
    {
    }
  }

  return v8;
}

uint64_t sub_1C49F5B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (qword_1EDDF6740 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4EF9488();
  sub_1C442B738(v8, qword_1EDE2D570);
  result = sub_1C49F4E44(a2, a3, a1);
  *a4 = result;
  return result;
}

uint64_t sub_1C49F5BA0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = *(v6 + *(type metadata accessor for LocationMatcher() + 40));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C49F2B98(v9, v10, v11);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C43FFE24();
  v15 = sub_1C49F2B98(v13, v14, v11);

  if (!v12)
  {
    sub_1C4EFEEF8();
    sub_1C4419F50();
    sub_1C49F87FC(v16, v17);
    v12 = sub_1C4F00F28();
  }

  v18 = sub_1C49F5850(v12, a6);

  sub_1C458BE6C();
  v20 = v19;
  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  if (v22 >= v21 >> 1)
  {
    sub_1C43FCFE8(v21);
    sub_1C458BE6C();
    v20 = v32;
  }

  *(v20 + 16) = v22 + 1;
  *(v20 + 4 * v22 + 32) = v18;
  if (!v15)
  {
    sub_1C4EFEEF8();
    sub_1C4419F50();
    sub_1C49F87FC(v23, v24);
    v15 = sub_1C4F00F28();
  }

  v25 = sub_1C49F5850(a3, v15);

  v27 = *(v20 + 16);
  v26 = *(v20 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_1C43FCFE8(v26);
    sub_1C458BE6C();
    v20 = v33;
  }

  *(v20 + 16) = v27 + 1;
  *(v20 + 4 * v27 + 32) = v25;
  v28 = sub_1C49F5850(a3, a6);
  v30 = *(v20 + 16);
  v29 = *(v20 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1C43FCFE8(v29);
    sub_1C4401DCC();
    sub_1C458BE6C();
    v20 = v34;
  }

  *(v20 + 16) = v30 + 1;
  *(v20 + 4 * v30 + 32) = v28;
  sub_1C4613518(v20);
}

uint64_t sub_1C49F5E34(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v10 = objc_autoreleasePoolPush();
  sub_1C49F5EC0(a1, v13, &v12, a2, a3, a4, a2, a5);
  objc_autoreleasePoolPop(v10);
  return v13[0];
}

uint64_t sub_1C49F5EC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), uint64_t a7, void (*a8)(BOOL, uint64_t, uint64_t))
{
  v195 = a8;
  v201 = a7;
  v206 = a6;
  v212 = a5;
  v193 = a2;
  sub_1C43FBE94();
  v197 = sub_1C4EF9488();
  v10 = sub_1C43FCDF8(v197);
  v191 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v196 = v15 - v14;
  v16 = sub_1C4EFEEF8();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v199 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v190 - v36;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v190 - v42;
  v214 = a4(0);
  v44 = sub_1C43FCDF8(v214);
  v203 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBD08();
  v208 = v48 - v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v200 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v190 - v53;
  v55 = 0;
  v202 = v8;
  v204 = *(v8 + 16);
  v220 = (v19 + 16);
  v213 = (v19 + 8);
  v205 = MEMORY[0x1E69E7CC0];
  v207 = v37;
  v211 = v190 - v53;
LABEL_2:
  while (v55 != v204)
  {
    v56 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v209 = *(v203 + 72);
    v210 = v56;
    sub_1C44719E4(v202 + v56 + v209 * v55, v54);
    if (qword_1EDDE7960 != -1)
    {
      swift_once();
    }

    v215 = v55 + 1;
    v57 = qword_1EDE2CEA0;
    (*v220)(v43, v54 + *(v214 + 28), v16);
    v58 = 0;
    v59 = *(v57 + 16);
    do
    {
      if (v59 == v58)
      {
        v72 = sub_1C44252CC();
        v73(v72);
        v54 = v211;
        sub_1C447EA28(v211, v206);
        v37 = v207;
        v55 = v215;
        goto LABEL_2;
      }

      v60 = v58 + 1;
      sub_1C442FF7C();
      v63 = v57 + v61 + *(v19 + 72) * v62;
      sub_1C4419F50();
      sub_1C49F87FC(&qword_1EDDFCCB0, v64);
      v65 = sub_1C4F010B8();
      v58 = v60;
    }

    while ((v65 & 1) == 0);
    v66 = sub_1C44252CC();
    v67(v66);
    sub_1C44DD7A8(v211, v200);
    v68 = v205;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v218 = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v195(0, *(v68 + 16) + 1, 1);
      v68 = v218;
    }

    v71 = *(v68 + 16);
    v70 = *(v68 + 24);
    if (v71 >= v70 >> 1)
    {
      v195(v70 > 1, v71 + 1, 1);
      v68 = v218;
    }

    *(v68 + 16) = v71 + 1;
    v205 = v68;
    sub_1C44DD7A8(v200, v68 + v210 + v71 * v209);
    v37 = v207;
    v54 = v211;
    v55 = v215;
  }

  sub_1C4419F50();
  sub_1C49F87FC(v74, v75);
  v211 = sub_1C4F00F28();
  v209 = *(v205 + 16);
  if (v209)
  {
    v76 = 0;
    v204 = (v205 + ((*(v203 + 80) + 32) & ~*(v203 + 80)));
    v203 = *(v203 + 72);
    v200 = (v191 + 8);
    do
    {
      v54 = v208;
      sub_1C44719E4(&v204[v203 * v76], v208);
      if (qword_1EDDE7960 != -1)
      {
        swift_once();
      }

      v215 = v76 + 1;
      v77 = qword_1EDE2CEA0;
      v78 = *v220;
      v210 = *(v214 + 28);
      v78(v24, v54 + v210, v16);
      v79 = 0;
      v80 = *(v77 + 16);
      while (v80 != v79)
      {
        v81 = (v79 + 1);
        sub_1C442FF7C();
        v84 = v77 + v82 + *(v19 + 72) * v83;
        sub_1C4419F50();
        sub_1C49F87FC(&qword_1EDDFCCB0, v85);
        v86 = sub_1C4F010B8();
        v79 = v81;
        if (v86)
        {
          v87 = sub_1C44051B0();
          v88(v87);
          v89 = v208;
          v90 = (v208 + *(v214 + 32));
          v91 = v90[1];
          v218 = *v90;
          v219 = v91;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v54 = v196;
          sub_1C4EF9448();
          sub_1C4415EA8();
          v92 = sub_1C4F01FF8();
          v201 = v93;
          v202 = v92;
          (*v200)(v54, v197);

          v94 = v211;
          swift_isUniquelyReferenced_nonNull_native();
          v218 = v94;
          sub_1C46612A8();
          sub_1C447EA28(v89, v206);
          v211 = v218;
          goto LABEL_23;
        }
      }

      v95 = sub_1C44051B0();
      v96(v95);
      sub_1C447EA28(v208, v206);
LABEL_23:
      v76 = v215;
    }

    while (v215 != v209);

    v37 = v207;
  }

  else
  {

    v80 = v213;
  }

  if (qword_1EDDE7960 != -1)
  {
    swift_once();
  }

  v97 = *(qword_1EDE2CEA0 + 16);
  v98 = v211;
  if (v97)
  {
    sub_1C442FF7C();
    v101 = v99 + v100;
    v102 = *(v19 + 72);
    v215 = *(v19 + 16);
    v210 = MEMORY[0x1E69E7CC0];
    v212 = MEMORY[0x1E69E7CC0];
    v103 = v198;
    v214 = v102;
    while (1)
    {
      (v215)(v103, v101, v16);
      if (*(v98 + 16))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C457AB64();
        sub_1C441C3A8();
        if (v54)
        {
          break;
        }
      }

      (*v80)(v103, v16);
LABEL_50:
      v101 += v102;
      if (!--v97)
      {
        goto LABEL_72;
      }
    }

    v211 = v98;
    sub_1C4EFECD8();
    sub_1C4419F50();
    sub_1C49F87FC(&off_1EDDFCCA8, v104);
    sub_1C43FFE3C();
    sub_1C4F01578();
    sub_1C43FFE3C();
    sub_1C4F01578();
    if (v218 == v216 && v219 == v217)
    {
      v106 = 1;
    }

    else
    {
      sub_1C43FF3F8();
      v106 = sub_1C4F02938();
    }

    v107 = *v80;
    (*v80)(v199, v16);

    if ((v106 & 1) == 0)
    {
      v108 = v194;
      sub_1C4EFE688();
      sub_1C43FFE3C();
      sub_1C4F01578();
      sub_1C43FFE3C();
      sub_1C4F01578();
      if (v218 == v216 && v219 == v217)
      {
        v116 = v108;
        v80 = v213;
        v107(v116, v16);
      }

      else
      {
        v110 = sub_1C4F02938();
        v111 = v108;
        v80 = v213;
        v107(v111, v16);

        if ((v110 & 1) == 0)
        {
          sub_1C4415B50(&v220);
          sub_1C4EFEBF8();
          sub_1C4419F50();
          sub_1C49F87FC(&qword_1EDDFCCB0, v112);
          sub_1C4409A34();
          v113 = sub_1C4F010B8();
          v107(v110, v16);
          if (v113)
          {
            v115 = v210;
            v114 = v211;
          }

          else
          {
            v115 = v210;
            v117 = v211;
            if (*(v211 + 16) && (sub_1C4409A34(), sub_1C457AB64(), (v119 & 1) != 0))
            {
              v120 = (*(v117 + 56) + 16 * v118);
              v122 = *v120;
              v121 = v120[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              v122 = 0;
              v121 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v138 = *(v212 + 16);
              sub_1C43FCEC0();
              sub_1C443D664();
              v212 = v139;
            }

            v123 = *(v212 + 16);
            if (v123 >= *(v212 + 24) >> 1)
            {
              sub_1C443D664();
              v212 = v140;
            }

            v124 = v212;
            *(v212 + 16) = v123 + 1;
            v125 = v124 + 16 * v123;
            *(v125 + 32) = v122;
            *(v125 + 40) = v121;
            v114 = v211;
          }

          v126 = *(v114 + 16);
          v211 = v114;
          if (v126 && (sub_1C4409A34(), sub_1C457AB64(), (v128 & 1) != 0))
          {
            v129 = (*(v114 + 56) + 16 * v127);
            v54 = v129[1];
            v209 = *v129;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            v209 = 0;
            v54 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = *(v115 + 16);
            sub_1C43FCEC0();
            sub_1C443D664();
            v115 = v136;
          }

          v130 = *(v115 + 16);
          v131 = v107;
          if (v130 >= *(v115 + 24) >> 1)
          {
            sub_1C443D664();
            v210 = v137;
          }

          else
          {
            v210 = v115;
          }

          v103 = v198;
          v80 = v213;
          v131(v198, v16);
          v133 = v209;
          v132 = v210;
          *(v210 + 16) = v130 + 1;
          v134 = v132 + 16 * v130;
          *(v134 + 32) = v133;
          *(v134 + 40) = v54;
          goto LABEL_49;
        }
      }
    }

    v54 = v198;
    v107(v198, v16);
    v103 = v54;
LABEL_49:
    v98 = v211;
    v37 = v207;
    v102 = v214;
    goto LABEL_50;
  }

  v210 = MEMORY[0x1E69E7CC0];
  v212 = MEMORY[0x1E69E7CC0];
LABEL_72:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v141 = v192;
  sub_1C4EFECD8();
  v142 = v98;
  if (*(v98 + 16))
  {
    sub_1C457AB64();
    sub_1C441C3A8();
    v143 = v141;
    v144 = *v80;
    (*v80)(v143, v16);
    if (v54)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v145 = v190[5];
      sub_1C4EFE688();
      if (*(v98 + 16))
      {
        sub_1C457AB64();
        sub_1C441C3A8();
        v144(v145, v16);
        if (v54)
        {
          sub_1C4415B50(&v214);
          sub_1C4EFE688();
          sub_1C465C38C(v37, v98);
          v146 = sub_1C4417528();
          (v144)(v146);
          if (v98)
          {
            v147 = v54;
          }

          else
          {
            v147 = 0;
          }

          if (!v98)
          {
            v98 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v187 = *(v212 + 16);
            sub_1C43FCEC0();
            sub_1C443D664();
            v212 = v188;
          }

          sub_1C441BB44();
          if (v148)
          {
            sub_1C4401DCC();
            sub_1C443D664();
            v212 = v189;
          }

          sub_1C441E5A8();
          v149 = &v215;
LABEL_100:
          sub_1C4415B50(v149);
          sub_1C4EFE688();
          sub_1C465C38C(v147, v142);
          v152 = sub_1C4417528();
          (v144)(v152);
          goto LABEL_112;
        }
      }

      else
      {

        v144(v145, v16);
      }
    }
  }

  else
  {

    v150 = v141;
    v144 = *v80;
    (*v80)(v150, v16);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFE688();
  if (*(v98 + 16))
  {
    sub_1C457AB64();
    sub_1C441C3A8();
    v144(v37, v16);
    if (v54)
    {
      sub_1C4415B50(&v216);
      sub_1C4EFE688();
      sub_1C465C38C(v37, v98);
      v151 = sub_1C4417528();
      (v144)(v151);
      if (v98)
      {
        v147 = v54;
      }

      else
      {
        v147 = 0;
      }

      if (!v98)
      {
        v98 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = *(v212 + 16);
        sub_1C43FCEC0();
        sub_1C443D664();
        v212 = v185;
      }

      sub_1C441BB44();
      if (v148)
      {
        sub_1C4401DCC();
        sub_1C443D664();
        v212 = v186;
      }

      sub_1C441E5A8();
      v149 = &v217;
      goto LABEL_100;
    }
  }

  else
  {

    v144(v37, v16);
  }

  v153 = v190[6];
  sub_1C4EFECD8();
  sub_1C465C38C(v153, v98);
  v154 = sub_1C4404574();
  (v144)(v154);
  if (v98)
  {
    v155 = v54;
  }

  else
  {
    v155 = 0;
  }

  if (!v98)
  {
    v98 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v181 = *(v212 + 16);
    sub_1C43FCEC0();
    sub_1C443D664();
    v212 = v182;
  }

  v156 = *(v212 + 16);
  v54 = v156 + 1;
  if (v156 >= *(v212 + 24) >> 1)
  {
    sub_1C4401DCC();
    sub_1C443D664();
    v212 = v183;
  }

  v157 = v212;
  *(v212 + 16) = v54;
  v158 = v157 + 16 * v156;
  *(v158 + 32) = v155;
  *(v158 + 40) = v98;
  v159 = v190[7];
  sub_1C4EFECD8();
  sub_1C465C38C(v159, v142);
  v160 = sub_1C4404574();
  (v144)(v160);
LABEL_112:
  v161 = v210;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v178 = *(v161 + 16);
    sub_1C43FCEC0();
    sub_1C443D664();
    v161 = v179;
  }

  v162 = *(v161 + 16);
  if (v162 >= *(v161 + 24) >> 1)
  {
    sub_1C4401DCC();
    sub_1C443D664();
    v161 = v180;
  }

  *(v161 + 16) = v162 + 1;
  v163 = v161 + 16 * v162;
  *(v163 + 32) = v54;
  *(v163 + 40) = v98;
  v218 = v161;
  v164 = sub_1C43FBC98();
  sub_1C456902C(v164, v165);
  sub_1C44134BC();
  sub_1C4401CBC(v166, &unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4408DA4();
  v167 = sub_1C4F01048();
  v169 = v168;

  v218 = v212;
  sub_1C4408DA4();
  v170 = sub_1C4F01048();
  v172 = v171;

  v173 = HIBYTE(v172) & 0xF;
  if ((v172 & 0x2000000000000000) == 0)
  {
    v173 = v170 & 0xFFFFFFFFFFFFLL;
  }

  v174 = v193;
  if (!v173)
  {
    v175 = v193[1];
    *v193 = v167;
    v174[1] = v169;
  }

  v176 = v174[1];
  *v174 = v170;
  v174[1] = v172;
}

float sub_1C49F6FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void), void (*a8)(BOOL, uint64_t, uint64_t))
{
  sub_1C44F40EC();
  v14 = sub_1C49F4560(v13);
  v69 = v15;
  v70 = v14;
  v68 = v16;
  v18 = v17;

  v19 = a4(a2);
  v72 = sub_1C49F4560(v19);
  v67 = v20;
  v22 = v21;
  v24 = v23;

  sub_1C44F40EC();
  sub_1C49F3784(v25);
  sub_1C4426CC8();

  v61 = a2;
  v26 = a4(a2);
  v27 = sub_1C49F3784(v26);
  v29 = v28;

  if (v8 && v29)
  {
    v30 = v9 == 48 && v8 == 0xE100000000000000;
    v31 = v72;
    if (!v30)
    {
      sub_1C43FE99C();
      if ((sub_1C4F02938() & 1) == 0)
      {

        if (v9 == v27 && v8 == v29)
        {

          v36 = 1.0;
        }

        else
        {
          sub_1C43FE99C();
          sub_1C43FF3F8();
          v58 = sub_1C4F02938();

          if (v58)
          {
            v36 = 1.0;
          }

          else
          {
            v36 = 0.0;
          }
        }

        return v36;
      }
    }
  }

  else
  {

    v31 = v72;
  }

  if (v70)
  {
    if (v31)
    {
      [v70 distanceFromLocation_];
      if (v32 < 5.0)
      {

        [v70 distanceFromLocation_];
        v34 = v33;

        v35 = v34 / -5.0;
        return v35 + 1.0;
      }
    }
  }

  v38 = v67;
  v37 = v68;
  if (v18 && v22)
  {
    v39 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v39 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v40 = v67 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        sub_1C4F00FF8();
        sub_1C4426CC8();
        if (v9 == sub_1C4F00FF8() && v8 == v41)
        {

          goto LABEL_51;
        }

        sub_1C43FE99C();
        sub_1C43FF3F8();
        v9 = sub_1C4F02938();

        v38 = v67;
        v37 = v68;
        if (v9)
        {

LABEL_51:

          goto LABEL_52;
        }
      }
    }
  }

  sub_1C49F5BA0(v37, v18, v69, v38, v22, v24);
  v36 = v43;

  if (v36 > 0.8)
  {

LABEL_52:
    return 1.0;
  }

  if (!*(v66 + *(type metadata accessor for LocationMatcher() + 36)))
  {

    goto LABEL_42;
  }

  sub_1C49F5E34(a1, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, sub_1C459DCC0);
  sub_1C4426CC8();
  v44 = sub_1C49F5E34(v61, a5, a6, a7, a8);
  v46 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v46 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {
    goto LABEL_40;
  }

  v47 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
LABEL_40:

LABEL_42:
    return 0.0;
  }

  sub_1C43FE99C();
  sub_1C49F4C08();
  v49 = v48;
  v51 = v50;

  sub_1C49F4C08();
  v53 = v52;
  v55 = v54;

  v56 = sub_1C4576D84(v49, v51, v53, v55, a3);
  if (!v71)
  {
    v36 = v56;
  }

  return v36;
}

uint64_t sub_1C49F74EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v83 = a2;
  v85 = a1;
  v79 = a4;
  v78 = sub_1C4EF9CD8();
  v76 = *(v78 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v70 - v12;
  v14 = type metadata accessor for EntityTriple(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v70 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v70 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v70 - v30;
  v32 = v86;
  result = sub_1C44DC054();
  if (!v32)
  {
    v74 = v17;
    v75 = v13;
    v71 = v26;
    v72 = v29;
    v34 = v81;
    v35 = v82;
    v86 = 0;
    v36 = v80;
    v73 = v4;
    if (v83)
    {
      v37 = v83;
      sub_1C44F1938(v83, v21);
      v38 = type metadata accessor for GraphTriple(0);
      v39 = v35;
      v40 = v14;
      if (sub_1C44157D4(v21, 1, v38) == 1)
      {
        sub_1C4420C3C(v21, &unk_1EC0BC900, &unk_1C4F142D0);
        v41 = 1;
      }

      else
      {
        (*(v36 + 16))(v31, v21, v34);
        sub_1C447EA28(v21, type metadata accessor for GraphTriple);
        v41 = 0;
      }
    }

    else
    {
      v37 = 0;
      v41 = 1;
      v39 = v82;
      v40 = v14;
    }

    v42 = v31;
    sub_1C440BAA8(v31, v41, 1, v34);
    v43 = v75;
    sub_1C44D0BD8(v85, v75);
    v44 = sub_1C44157D4(v43, 1, v40);
    v45 = v84;
    if (v44 == 1)
    {
      sub_1C4420C3C(v43, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v46 = sub_1C4F00978();
      sub_1C442B738(v46, qword_1EDE2DE10);
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1C43F8000, v47, v48, "Location Matcher: skipping entityTriples are empty", v49, 2u);
        MEMORY[0x1C6942830](v49, -1, -1);
      }

      sub_1C46828B4();
      v50 = swift_allocError();
      *v51 = 0;
      v86 = v50;
      swift_willThrow();
      return sub_1C4420C3C(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v52 = v43;
    v53 = v74;
    sub_1C44DD7A8(v52, v74);
    if (v37)
    {
      v54 = v86;
      v55 = sub_1C49F6FB8(v85, v37, v39, sub_1C44FE5AC, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, sub_1C459D7C8);
      v56 = v79;
      v86 = v54;
      v57 = v72;
      if (v54)
      {
        sub_1C447EA28(v53, type metadata accessor for EntityTriple);
        return sub_1C4420C3C(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      v59 = 1.0;
      v58 = &unk_1C4F41000;
      if (v55 > 0.88)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v56 = v79;
      v57 = v72;
      v58 = &unk_1C4F41000;
    }

    sub_1C4EFF008();
    sub_1C4420C3C(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v57, 0, 1, v34);
    sub_1C44DDDBC(v57, v42);
    v59 = v58[605];
LABEL_20:
    v60 = v71;
    sub_1C446C964(v42, v71, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v60, 1, v34) == 1)
    {
      sub_1C4420C3C(v60, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      (*(v36 + 32))(v45, v60, v34);
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v61 = type metadata accessor for EntityMatch(0);
      v62 = v45;
      v63 = v34;
      v64 = *(v36 + 16);
      v65 = v74;
      v64(v56 + v61[5], v74, v63);
      v64(v56 + v61[6], v62, v63);
      v66 = v77;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v68 = v67;
      (*(v76 + 8))(v66, v78);
      (*(v36 + 8))(v62, v63);
      sub_1C447EA28(v65, type metadata accessor for EntityTriple);
      sub_1C4420C3C(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = type metadata accessor for LocationMatcher();
      v69 = *(v73 + *(result + 24));
      *(v56 + v61[7]) = v59;
      *(v56 + v61[8]) = v68;
      *(v56 + v61[9]) = v69;
      *(v56 + v61[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C49F7CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v83 = a2;
  v84 = a1;
  v79 = a4;
  v5 = sub_1C4EF9CD8();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFF0C8();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntityTriple(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v70 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v70 - v30;
  v32 = v4;
  v33 = v86;
  result = sub_1C44DC054();
  if (!v33)
  {
    v35 = v19;
    v74 = v14;
    v75 = v11;
    v71 = v29;
    v72 = v26;
    v37 = v81;
    v36 = v82;
    v86 = 0;
    v38 = v80;
    v73 = v32;
    v39 = v83;
    if (v83)
    {
      sub_1C44D0BD8(v83, v21);
      v40 = v38;
      v41 = v36;
      if (sub_1C44157D4(v21, 1, v75) == 1)
      {
        sub_1C4420C3C(v21, &qword_1EC0BA590, &qword_1C4F1F430);
        v42 = 1;
      }

      else
      {
        (*(v40 + 16))(v31, v21, v37);
        sub_1C447EA28(v21, type metadata accessor for EntityTriple);
        v42 = 0;
      }

      v43 = v85;
    }

    else
    {
      v42 = 1;
      v40 = v80;
      v41 = v82;
      v43 = v85;
    }

    v44 = v31;
    sub_1C440BAA8(v31, v42, 1, v37);
    v45 = v84;
    sub_1C44D0BD8(v84, v35);
    if (sub_1C44157D4(v35, 1, v75) == 1)
    {
      sub_1C4420C3C(v35, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v46 = sub_1C4F00978();
      sub_1C442B738(v46, qword_1EDE2DE10);
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1C43F8000, v47, v48, "Location Matcher: skipping entityTriples are empty", v49, 2u);
        MEMORY[0x1C6942830](v49, -1, -1);
      }

      sub_1C46828B4();
      v50 = swift_allocError();
      *v51 = 0;
      v86 = v50;
      swift_willThrow();
      return sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    sub_1C44DD7A8(v35, v74);
    if (v39)
    {
      v52 = v86;
      v53 = sub_1C49F6FB8(v45, v39, v41, sub_1C44F40EC, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, sub_1C459DCC0);
      v54 = v79;
      v86 = v52;
      if (v52)
      {
        sub_1C447EA28(v74, type metadata accessor for EntityTriple);
        return sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      v55 = 1.0;
      if (v53 > 0.88)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v54 = v79;
    }

    v56 = v43;
    v57 = v71;
    sub_1C4EFF008();
    sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v57, 0, 1, v37);
    v58 = v57;
    v43 = v56;
    sub_1C44DDDBC(v58, v44);
    v55 = 0.88;
LABEL_21:
    v59 = v72;
    sub_1C446C964(v44, v72, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v59, 1, v37) == 1)
    {
      sub_1C4420C3C(v59, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      (*(v40 + 32))(v43, v59, v37);
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v60 = type metadata accessor for EntityMatch(0);
      v61 = v40;
      v62 = v40;
      v63 = v37;
      v64 = *(v61 + 16);
      v65 = v74;
      v64(v54 + v60[5], v74, v63);
      v64(v54 + v60[6], v43, v63);
      v66 = v76;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v68 = v67;
      (*(v77 + 8))(v66, v78);
      (*(v62 + 8))(v43, v63);
      sub_1C447EA28(v65, type metadata accessor for EntityTriple);
      sub_1C4420C3C(v44, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = type metadata accessor for LocationMatcher();
      v69 = *(v73 + *(result + 24));
      *(v54 + v60[7]) = v55;
      *(v54 + v60[8]) = v68;
      *(v54 + v60[9]) = v69;
      *(v54 + v60[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C49F852C(uint64_t a1)
{
  result = sub_1C49F87FC(&qword_1EDDF6720, type metadata accessor for LocationMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49F8584(uint64_t a1)
{
  result = sub_1C49F87FC(&unk_1EDDF6730, type metadata accessor for LocationMatcher);
  *(a1 + 8) = result;
  return result;
}

void sub_1C49F8604()
{
  type metadata accessor for PhaseStores();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      type metadata accessor for StateStore();
      if (v2 <= 0x3F)
      {
        sub_1C49F86D0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C49F86D0()
{
  if (!qword_1EDDF4D40)
  {
    type metadata accessor for AddressLinkingModel();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF4D40);
    }
  }
}

uint64_t sub_1C49F8758(void *a1)
{
  v1 = [a1 addressComponents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSTextCheckingKey(0);
  sub_1C49F87FC(&qword_1EDDF0440, type metadata accessor for NSTextCheckingKey);
  v3 = sub_1C4F00ED8();

  return v3;
}

uint64_t sub_1C49F87FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C49F885C(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) >= 9)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CE8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_1C43F8000, v6, v7, "Unknown BMLocationHashedCoordinatesDistanceRange with value: %d", v8, 8u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  *a2 = v3;
}

IntelligencePlatformCore::LocationHashedCoordinatesDistanceRange_optional __swiftcall LocationHashedCoordinatesDistanceRange.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C49F8988()
{
  result = qword_1EC0C0F48;
  if (!qword_1EC0C0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0F48);
  }

  return result;
}

uint64_t sub_1C49F89E4@<X0>(uint64_t *a1@<X8>)
{
  result = LocationHashedCoordinatesDistanceRange.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WalletPassStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationHashedCoordinatesDistanceRange(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C49F8BE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationMetadataEvent();
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C4EF9CD8();
    v15 = *(v14 - 8);
    v42 = a3;
    v16 = v15;
    v17 = *(v15 + 16);
    v17(v11, a2, v14);
    v17(&v11[*(v6 + 20)], a2, v14);
    LODWORD(v17) = [v13 distanceBucketFromHome];
    v18 = [v13 distanceBucketFromWork];
    v19 = a2;
    v20 = [v13 distanceBucketFromGym];
    LODWORD(v13) = [v13 distanceBucketFromSchool];
    sub_1C49F885C(v17, &v46);
    LOBYTE(v17) = v46;
    sub_1C49F885C(v18, &v45);
    LOBYTE(v18) = v45;
    sub_1C49F885C(v20, &v44);
    LOBYTE(v20) = v44;
    sub_1C49F885C(v13, &v43);

    (*(v16 + 8))(v19, v14);
    v21 = v43;
    v22 = &v11[*(v6 + 24)];
    *v22 = v17;
    v22[1] = v18;
    v22[2] = v20;
    v22[3] = v21;
    v23 = v42;
    sub_1C49F90E0(v11, v42);
    return sub_1C440BAA8(v23, 0, 1, v6);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    v26 = a1;
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CE8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315138;
      swift_getObjectType();
      v31 = sub_1C4F02C58();
      v33 = v6;
      v34 = a2;
      v35 = sub_1C441D828(v31, v32, &v47);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Could not create a BMLocationHashedCoordinates event from the provided event - %s", v29, 0xCu);
      sub_1C440962C(v30);
      MEMORY[0x1C6942830](v30, -1, -1);
      MEMORY[0x1C6942830](v29, -1, -1);

      v36 = sub_1C4EF9CD8();
      sub_1C43FBCE0(v36);
      v38 = v34;
      v6 = v33;
      (*(v37 + 8))(v38);
    }

    else
    {

      v39 = sub_1C4EF9CD8();
      sub_1C43FBCE0(v39);
      (*(v40 + 8))(a2);
    }

    return sub_1C440BAA8(a3, 1, 1, v6);
  }
}

void sub_1C49F8FD0()
{
  v0 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v1 = [v0 HashedCoordinates];
  swift_unknownObjectRelease();
  sub_1C4580FF0();
}

uint64_t type metadata accessor for LocationMetadataEvent()
{
  result = qword_1EC0C0F60;
  if (!qword_1EC0C0F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49F90E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationMetadataEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49F916C()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationMetadataContent(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && a1[4])
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0xA;
      v2 = v3 - 10;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for LocationMetadataContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_1C49F9280(unsigned int a1)
{
  if (a1 == 0x7FFFFFFF)
  {
    v1 = 0;
  }

  else
  {
    v1 = 7;
  }

  if (a1 >= 0x28)
  {
    v2 = v1;
  }

  else
  {
    v2 = 6;
  }

  if (a1 >= 0x14)
  {
    v3 = v2;
  }

  else
  {
    v3 = 5;
  }

  if (a1 >= 0xA)
  {
    v4 = v3;
  }

  else
  {
    v4 = 4;
  }

  if (a1 >= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 3;
  }

  if (a1 >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void sub_1C49F9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v37 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = v37;
  do
  {
    v31 = 0xD000000000000014;
    if (byte_1F43D28C0[v29 + 32] == 1)
    {
      v32 = "last_speed_bucket";
    }

    else
    {
      v31 = 0xD000000000000011;
      v32 = "last_altitude_bucket";
    }

    if (byte_1F43D28C0[v29 + 32])
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xD000000000000011;
    }

    if (byte_1F43D28C0[v29 + 32])
    {
      v34 = v32;
    }

    else
    {
      v34 = "locationMetadataSignal";
    }

    v38 = v30;
    v35 = *(v30 + 16);
    if (v35 >= *(v30 + 24) >> 1)
    {
      sub_1C44CD9C0();
      v30 = v38;
    }

    ++v29;
    *(v30 + 16) = v35 + 1;
    v36 = v30 + 16 * v35;
    *(v36 + 32) = v33;
    *(v36 + 40) = v34 | 0x8000000000000000;
  }

  while (v29 != 3);

  sub_1C4499940(v30, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C49F9478(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C49F94CC(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1C49F94CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  v11 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v12 = [v11 HashedCoordinates];
  swift_unknownObjectRelease();
  v13 = sub_1C4EF9CD8();
  sub_1C440BAA8(v10, 1, 1, v13);
  (*(*(v13 - 8) + 16))(v8, a1, v13);
  sub_1C440BAA8(v8, 0, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C457A86C(v10, v8, 1, 1, 0);
  v16 = [v12 publisherWithOptions_];

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v28 = nullsub_1;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C44405F8;
  v27 = &unk_1F43F4378;
  v18 = _Block_copy(&aBlock);
  v28 = sub_1C49FA1EC;
  v29 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C4440590;
  v27 = &unk_1F43F43A0;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 sinkWithCompletion:v18 receiveInput:v19];

  _Block_release(v19);
  _Block_release(v18);

  swift_beginAccess();
  v21 = *(v17 + 16);
  *a2 = v21;
  v22 = v21;
}

void sub_1C49F97F4(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse eventBody from read event in location metadata featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C49F992C(uint64_t a1)
{
  v1 = sub_1C49F9478(a1);
  if (v1)
  {
    v2 = v1;
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0C890;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x80000001C4F91670;
    v4 = [v2 speedBucket];
    v5 = objc_opt_self();
    *(inited + 48) = [v5 featureValueWithInt64_];
    *(inited + 56) = 0xD000000000000014;
    *(inited + 64) = 0x80000001C4F91690;
    *(inited + 72) = [v5 featureValueWithInt64_];
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x80000001C4F916B0;
    *(inited + 96) = [v5 featureValueWithInt64_];
    sub_1C4577DBC();
    v6 = sub_1C4F00F28();

    return v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Unable to fetch most recent locationMetadata event", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C49F9BB0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v39 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v39);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v37 = v17;
  v38 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v34 = a3;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v24 = v41;
    v26 = *(v9 + 16);
    v25 = v9 + 16;
    v27 = a2 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v35 = *(v25 + 56);
    v36 = v26;
    do
    {
      v36(v14, v27, v39);
      v36(v22, v14, v39);
      v28 = sub_1C49F992C(v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = v4;
      v30 = sub_1C49FA1F4(v28, a1);

      sub_1C465CF34(v30);
      v32 = v31;

      (*(v25 - 8))(v14, v39);
      *(v22 + *(v38 + 20)) = v32;
      v33 = *(v41 + 16);
      if (v33 >= *(v41 + 24) >> 1)
      {
        sub_1C459D0A8();
      }

      *(v41 + 16) = v33 + 1;
      sub_1C4586A54(v22, v41 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33);
      v27 += v35;
      --v23;
      v4 = v29;
    }

    while (v23);
    a3 = v34;
  }

  *a3 = v24;
}

uint64_t sub_1C49F9E50()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C49F992C(v8);
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1C49F9F0C(uint64_t a1)
{
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4EF9C88();
  sub_1C49F992C(v10);
  (*(v5 + 8))(v10, v2);
  v11 = sub_1C44F9274(a1);

  return v11;
}

uint64_t sub_1C49FA08C()
{
  v1 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v2 = [v1 HashedCoordinates];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  return v0;
}

unint64_t sub_1C49FA170(uint64_t a1)
{
  result = sub_1C49FA198();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C49FA198()
{
  result = qword_1EC0C0F80;
  if (!qword_1EC0C0F80)
  {
    type metadata accessor for LocationMetadataSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0F80);
  }

  return result;
}

void *sub_1C49FA1F4(_BYTE *a1, uint64_t a2)
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

uint64_t sub_1C49FA3C0()
{
  v1 = *v0;
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C441FEB4();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = sub_1C46655C4();
    v18 = v2;
    v14 = sub_1C441D828(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v8, v9, "<%s: Starting observe notification>", v10, 0xCu);
    sub_1C440962C(v11);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    v15 = (*(v5 + 8))(v0, v18);
  }

  else
  {

    v15 = (*(v5 + 8))(v0, v2);
  }

  v16 = v0[2];
  MEMORY[0x1EEE9AC00](v15);

  os_unfair_lock_lock((v16 + 24));
  sub_1C49FAD54((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
}

void *sub_1C49FA5E0()
{
  type metadata accessor for LocationsOfInterestMonitor();
  v0 = swift_allocObject();
  result = sub_1C49FA61C();
  qword_1EDE2CAD8 = v0;
  return result;
}

void *sub_1C49FA61C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1C4F00978();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FEB4();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = sub_1C46655C4();
    v15 = sub_1C441D828(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v9, v10, "<%s: Init>", v11, 0xCu);
    sub_1C440962C(v12);
    sub_1C4407480();
    sub_1C43FBE2C();
  }

  (*(v6 + 8))(v0, v3);
  type metadata accessor for LocationsOfInterestMonitor.GuardedData();
  v16 = swift_allocObject();
  sub_1C4EF98F8();
  sub_1C4F00BC8();
  sub_1C4695550(&qword_1EDDFFA00, MEMORY[0x1E6968FB0]);
  *(v16 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0C0F90, &qword_1C4F41D58);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v16;
  v1[2] = v17;
  return v1;
}

uint64_t sub_1C49FA8A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = v8;
  v44 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F01D88();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4F01E38();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&unk_1EC0BADE0, &unk_1C4F17660);
  v40 = *(v17 - 8);
  v41 = v17;
  v18 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  v21 = *a1;
  swift_beginAccess();
  if (!*(*(v21 + 16) + 16) || (sub_1C43FE83C(), (v22 & 1) == 0))
  {
    swift_endAccess();
    v23 = [objc_opt_self() defaultCenter];
    v24 = *MEMORY[0x1E69990C8];
    sub_1C4F01E48();

    sub_1C4F01D78();
    sub_1C4665684();
    v25 = sub_1C4F01DA8();
    v36 = a3;
    v26 = v25;
    v45 = v25;
    sub_1C4695550(&qword_1EDDDB8D0, MEMORY[0x1E6969F20]);
    v35 = a2;
    sub_1C4695550(&unk_1EDDDB910, sub_1C4665684);
    sub_1C4F00D08();

    (*(v38 + 8))(v12, v39);
    (*(v37 + 8))(v16, v13);
    v27 = v44;
    sub_1C44098F0(v35, v44);
    v28 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_1C4409954(v27, v30 + v28);
    *(v30 + v29) = v36;
    sub_1C46953BC();
    v31 = v41;
    sub_1C4F00D28();

    (*(v40 + 8))(v20, v31);
    swift_beginAccess();
    v32 = *(v21 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v21 + 16);
    sub_1C4661C18();
    *(v21 + 16) = v46;
  }

  return swift_endAccess();
}

uint64_t sub_1C49FAD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v4 = type metadata accessor for Configuration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1C4F00978();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = os_transaction_create();
  sub_1C4F00198();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = a2;
    v22 = v21;
    v44 = v21;
    *v20 = 136315138;
    v23 = sub_1C46655C4();
    v40 = v7;
    v25 = sub_1C441D828(v23, v24, &v44);
    v38 = v12;
    v26 = v16;
    v27 = v11;
    v28 = v5;
    v29 = v25;
    v7 = v40;

    *(v20 + 4) = v29;
    v5 = v28;
    v11 = v27;
    v16 = v26;
    _os_log_impl(&dword_1C43F8000, v17, v18, "<%s: Received notification>", v20, 0xCu);
    sub_1C440962C(v22);
    v30 = v22;
    a2 = v41;
    MEMORY[0x1C6942830](v30, -1, -1);
    v31 = v20;
    v6 = v39;
    MEMORY[0x1C6942830](v31, -1, -1);

    (*(v42 + 8))(v15, v38);
  }

  else
  {

    (*(v42 + 8))(v15, v12);
  }

  v32 = sub_1C4F018C8();
  sub_1C440BAA8(v11, 1, 1, v32);
  sub_1C44098F0(a2, v7);
  v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v34 = (v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  sub_1C4409954(v7, v35 + v33);
  *(v35 + v34) = v16;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
  sub_1C4785250();
}

uint64_t sub_1C49FB0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v7 = sub_1C4F00978();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C49FB1A8, 0, 0);
}

uint64_t sub_1C49FB1A8()
{
  v20 = v0;
  v1 = v0[8];
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  if (v4)
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_1C46655C4();
    v13 = sub_1C441D828(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, v2, v3, "<%s: Starting delta update>", v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C4407480();
    sub_1C43FBE2C();
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v0[9] = v14;
  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  v15 = v0[3];
  v0[10] = sub_1C4468E90();
  if (qword_1EDDFED08 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Source();
  sub_1C442B738(v16, qword_1EDDFED10);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_1C49FB590;

  return sub_1C4ACB9F0();
}

uint64_t sub_1C49FB590()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C49FB6D8, 0, 0);
  }

  else
  {
    v4 = v2[10];

    v6 = v2[7];
    v5 = v2[8];

    sub_1C43FBDA0();

    return v7();
  }
}

uint64_t sub_1C49FB6D8()
{
  v30 = v0;
  v2 = v0[10];

  v3 = v0[12];
  v4 = v0[7];
  sub_1C4F00198();
  v5 = v3;
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v27 = v0[7];
    v28 = v0[9];
    v10 = v0[4];
    v9 = v0[5];
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_1C46655C4();
    sub_1C441D828(v12, v13, &v29);
    sub_1C4432674();
    *(v11 + 4) = v1;
    *(v11 + 12) = 2080;
    v0[2] = v3;
    v14 = v3;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v15 = sub_1C4F01198();
    sub_1C441D828(v15, v16, &v29);
    sub_1C4432674();
    *(v11 + 14) = v1;
    sub_1C44134D4(&dword_1C43F8000, v17, v18, "<%s: Can't run delta updates for lifeEvents due to: %s>");
    swift_arrayDestroy();
    sub_1C4407480();
    sub_1C43FBE2C();

    v28(v27, v9);
  }

  else
  {
    v19 = v0[9];
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[5];

    v19(v20, v22);
  }

  v24 = v0[7];
  v23 = v0[8];

  sub_1C43FBDA0();

  return v25();
}

uint64_t sub_1C49FB8DC(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C49FAD70(a1, v1 + v8, v9);
}

uint64_t sub_1C49FB970(uint64_t a1)
{
  v4 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1C4665934;

  return sub_1C49FB0DC(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1C49FBAA0()
{
  if (*(v0 + 88) != 1)
  {
    return *(v0 + 80);
  }

  result = sub_1C49FC164(16);
  *(v0 + 80) = result;
  *(v0 + 88) = 0;
  return result;
}

uint64_t sub_1C49FBAE8()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C49FBB34(char a1)
{
  if (!a1)
  {
    return 0x656475746974616CLL;
  }

  if (a1 == 1)
  {
    return 0x64757469676E6F6CLL;
  }

  return 0xD000000000000016;
}

uint64_t sub_1C49FBBB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C49FBAE8();
  *a2 = result;
  return result;
}

uint64_t sub_1C49FBBE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C49FBB34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C49FBC1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C49FBAE8();
  *a1 = result;
  return result;
}

uint64_t sub_1C49FBC44(uint64_t a1)
{
  v2 = sub_1C49FBF54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49FBC80(uint64_t a1)
{
  v2 = sub_1C49FBF54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawLocation.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  RawLocation.init(from:)(a1);
  return v2;
}

uint64_t *RawLocation.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = sub_1C456902C(&qword_1EC0C0FA0, &qword_1C4F41D80);
  v6 = sub_1C43FCDF8(v5);
  v22 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - v10;
  v1[10] = 0;
  *(v1 + 88) = 1;
  v1[12] = 0;
  *(v1 + 104) = 1;
  v1[14] = 0;
  *(v1 + 120) = 1;
  v1[16] = sub_1C4F00F28();
  v12 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C49FBF54();
  sub_1C4F02BC8();
  if (v2)
  {
    v16 = v1[16];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v22;
    LOBYTE(v19) = 0;
    sub_1C4419F68();
    sub_1C4F02698();
    v1[2] = v14;
    LOBYTE(v19) = 1;
    sub_1C4419F68();
    sub_1C4F02698();
    v1[3] = v15;
    LOBYTE(v19) = 2;
    sub_1C4419F68();
    v1[4] = sub_1C4F026B8();
    v20 = &type metadata for GeoHashProvider;
    v21 = &off_1F43F44C8;
    (*(v13 + 8))(v11, v5);
    sub_1C441D670(&v19, (v1 + 5));
  }

  sub_1C440962C(a1);
  return v1;
}

unint64_t sub_1C49FBF54()
{
  result = qword_1EC0C0FA8;
  if (!qword_1EC0C0FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FA8);
  }

  return result;
}

uint64_t RawLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C0FB0, &qword_1C4F41D88);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C49FBF54();
  sub_1C4F02BF8();
  v14 = v3[2];
  v18[15] = 0;
  sub_1C4F027B8();
  if (!v2)
  {
    v15 = v3[3];
    v18[14] = 1;
    sub_1C4F027B8();
    v16 = v3[4];
    v18[13] = 2;
    sub_1C4F027D8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C49FC164(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[16];
  if (*(v4 + 16) && (v5 = sub_1C457B350(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    swift_endAccess();
    v8 = v2[8];
    v9 = v2[9];
    sub_1C4409678(v2 + 5, v8);
    v7 = (*(v9 + 8))(v2, a1, v8, v9);
    swift_beginAccess();
    v10 = v2[16];
    swift_isUniquelyReferenced_nonNull_native();
    v12 = v2[16];
    sub_1C46614F4();
    v2[16] = v12;
  }

  swift_endAccess();
  return v7;
}

uint64_t RawLocation.deinit()
{
  sub_1C440962C((v0 + 40));
  v1 = *(v0 + 128);

  return v0;
}

uint64_t RawLocation.__deallocating_deinit()
{
  sub_1C440962C((v0 + 40));
  v1 = *(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_1C49FC2D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = RawLocation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RawLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C49FC498()
{
  result = qword_1EC0C0FB8;
  if (!qword_1EC0C0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FB8);
  }

  return result;
}

unint64_t sub_1C49FC4F0()
{
  result = qword_1EC0C0FC0;
  if (!qword_1EC0C0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FC0);
  }

  return result;
}

unint64_t sub_1C49FC548()
{
  result = qword_1EC0C0FC8;
  if (!qword_1EC0C0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FC8);
  }

  return result;
}

uint64_t sub_1C49FC59C(uint64_t a1, uint64_t a2)
{
  v8 = CLLocationCoordinate2DMake(*(a1 + 16), *(a1 + 24));
  latitude = v8.latitude;
  longitude = v8.longitude;
  if (!CLLocationCoordinate2DIsValid(v8))
  {
    return 0;
  }

  v7[0] = CLLocationCoordinate2DMake(90.0, -180.0);
  v7[1] = CLLocationCoordinate2DMake(-90.0, 180.0);
  v6 = 0;
  return sub_1C49FC64C(a2, &v6, 0, &v7[0].latitude, latitude, longitude);
}

uint64_t sub_1C49FC64C(uint64_t a1, uint64_t a2, unint64_t a3, double *a4, CLLocationDegrees a5, CLLocationDegrees a6)
{
  if (a1 >= 1)
  {
    v11 = a4 + 1;
    v12 = a4 + 3;
    if (a1 >= 0x20)
    {
      v13 = 32;
    }

    else
    {
      v13 = a1;
    }

    while (1)
    {
      if (a3 >= v13)
      {
        return *a2;
      }

      v14 = CLLocationCoordinate2DMake((*a4 + a4[2]) * 0.5, (a4[1] + a4[3]) * 0.5);
      if (v14.latitude >= a5)
      {
        *a4 = v14.latitude;
        if (v14.longitude < a6)
        {
          v15 = v11;
          v16 = 3;
          goto LABEL_14;
        }

        v16 = 2;
      }

      else
      {
        a4[2] = v14.latitude;
        if (v14.longitude < a6)
        {
          v15 = v11;
          v16 = 1;
          goto LABEL_14;
        }

        v16 = 0;
      }

      v15 = v12;
LABEL_14:
      *v15 = v14.longitude;
      *a2 = v16 | (4 * *a2);
      ++a3;
    }
  }

  return *a2;
}

uint64_t static Logging.mdlog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4F00978();
  v3 = sub_1C442B738(v2, qword_1EDDFECB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for Logging(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_1C49FC9DC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1C4F00978();
  sub_1C44F9918(v5, a2);
  sub_1C442B738(v5, a2);
  result = a3();
  if (result)
  {
    return sub_1C4F00988();
  }

  __break(1u);
  return result;
}

void sub_1C49FCA94()
{
  sub_1C471154C(319, &qword_1EDDF05E0);
  if (v0 <= 0x3F)
  {
    sub_1C49FCB78(319, &qword_1EDDFF9E0, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1C49FCB78(319, &qword_1EDDF67A0, type metadata accessor for LOIBasedSegment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C49FCB78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C49FCC14()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    sub_1C49FCCC0();
    if (v1 <= 0x3F)
    {
      sub_1C471154C(319, &qword_1EDDF4A18);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C49FCCC0()
{
  if (!qword_1EDDF49E0)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF49E0);
    }
  }
}

uint64_t sub_1C49FCD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a2;
  v36 = a1;
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for LOIBasedSegmentProvider(0);
  v13 = *(v12 + 20);
  sub_1C43FCF64();
  sub_1C440BAA8(v14, v15, v16, v6);
  v17 = *(v12 + 24);
  type metadata accessor for LOIBasedSegment(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v18, v19, v20, v21);
  v22 = *(v7 + 16);
  v22(v11, a1, v6);
  v22(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v23 = *(v7 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = (v8 + v23 + v24) & ~v23;
  v26 = v25 + v8;
  v27 = swift_allocObject();
  v28 = *(v7 + 32);
  v28(v27 + v24, v11, v6);
  v28(v27 + v25, v34, v6);
  *(v27 + v26) = 256;
  a3[3] = &_s14descr1F43D0299O27StoredLocationVisitIteratorVN;
  a3[4] = sub_1C49FE2B8();
  v29 = swift_allocObject();
  *a3 = v29;
  v30 = MEMORY[0x1E69E7CC0];
  *(v29 + 16) = &unk_1C4F55BB0;
  *(v29 + 24) = v27;
  *(v29 + 32) = v30;
  *(v29 + 40) = 0;
  *(v29 + 48) = 0;
  v31 = *(v7 + 8);
  v31(v35, v6);
  return (v31)(v36, v6);
}

uint64_t sub_1C49FCF64(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C49FCFA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C49FCF64(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C49FCFCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C49FCF7C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C49FCFF8(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = type metadata accessor for LOIBasedSegment(0);
  v5 = *(v4 + 20);
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = *(v4 + 24);
  sub_1C4460050(a1 + v6, v12, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  sub_1C4460050(a2 + v6, &v14, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!v13)
  {
    if (!*(&v15 + 1))
    {
      sub_1C4420C3C(v12, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_9;
  }

  sub_1C4460050(v12, v11, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!*(&v15 + 1))
  {
    sub_1C46CB91C(v11);
LABEL_9:
    sub_1C4420C3C(v12, &qword_1EC0C0FD0, &unk_1C4F42140);
LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  v9[0] = v14;
  v9[1] = v15;
  v10 = v16;
  v7 = sub_1C4B70C8C(v11, v9);
  sub_1C46CB91C(v9);
  sub_1C46CB91C(v11);
  sub_1C4420C3C(v12, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  return v7 & 1;
}

uint64_t sub_1C49FD16C()
{
  sub_1C43FBCD4();
  v1[20] = v2;
  v1[21] = v0;
  v3 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64);
  v1[22] = sub_1C43FE604();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v1[26] = v4;
  sub_1C43FCF7C(v4);
  v1[27] = v5;
  v7 = *(v6 + 64);
  v1[28] = sub_1C43FE604();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v8 = *(*(sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0) - 8) + 64);
  v1[31] = sub_1C43FE604();
  v1[32] = swift_task_alloc();
  v9 = type metadata accessor for LOIBasedSegment(0);
  v1[33] = v9;
  v10 = *(*(v9 - 8) + 64);
  v1[34] = sub_1C43FE604();
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C49FD2F4, 0, 0);
}

uint64_t sub_1C49FD2F4()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 168);
  v4 = type metadata accessor for LOIBasedSegmentProvider(0);
  *(v0 + 288) = v4;
  v5 = *(v4 + 24);
  *(v0 + 344) = v5;
  sub_1C4460050(v3 + v5, v2, &qword_1EC0B9790, &unk_1C4F0F7C0);
  v6 = sub_1C44157D4(v2, 1, v1);
  v7 = *(v0 + 256);
  if (v6 == 1)
  {
    v8 = *(v0 + 168);
    sub_1C4420C3C(v7, &qword_1EC0B9790, &unk_1C4F0F7C0);
    v9 = *(v8 + 32);
    sub_1C4418280(v8, *(v8 + 24));
    *(v0 + 296) = swift_getAssociatedTypeWitness();
    v10 = sub_1C4F01F48();
    *(v0 + 304) = v10;
    sub_1C43FCF7C(v10);
    *(v0 + 312) = v11;
    v13 = *(v12 + 64) + 15;
    v14 = swift_task_alloc();
    *(v0 + 320) = v14;
    v15 = *(MEMORY[0x1E69E85A8] + 4);
    v16 = swift_task_alloc();
    *(v0 + 328) = v16;
    *v16 = v0;
    v16[1] = sub_1C49FD5FC;

    return MEMORY[0x1EEE6D8C8](v14);
  }

  else
  {
    v17 = *(v0 + 280);
    v18 = *(v0 + 264);
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    sub_1C46CB668(v7, v17);
    v23 = *(v4 + 20);
    sub_1C4420C3C(v22 + v23, &unk_1EC0B84E0, qword_1C4F0D2D0);
    (*(v20 + 16))(v22 + v23, v17 + *(v18 + 20), v19);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v19);
    sub_1C4420C3C(v3 + v5, &qword_1EC0B9790, &unk_1C4F0F7C0);
    sub_1C43FCF64();
    sub_1C440BAA8(v27, v28, v29, v18);
    sub_1C46CB668(v17, v21);
    sub_1C43FBD94();
    sub_1C440BAA8(v30, v31, v32, v18);
    sub_1C4419F7C();

    sub_1C43FBDA0();

    return v33();
  }
}

uint64_t sub_1C49FD5FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 328);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 336) = v0;

  if (v0)
  {
    v7 = sub_1C49FDD7C;
  }

  else
  {
    v7 = sub_1C49FD700;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C49FD700()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    (*(*(v0 + 312) + 8))(v1, *(v0 + 304));

LABEL_10:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_11;
  }

  *(v0 + 120) = v2;
  v3 = sub_1C4422F90((v0 + 96));
  (*(*(v2 - 8) + 32))(v3, v1, v2);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(v0 + 80))
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v6 = (v0 + 200);
    v7 = *(v0 + 72);
    *(v0 + 48) = *(v0 + 88);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v7;
    v8 = *(v0 + 48);
    sub_1C4409678((v0 + 16), *(v0 + 40));
    v9 = *(v8 + 8);
    v10 = sub_1C440749C();
    v11(v10);
    v12 = sub_1C44033D8();
    if (sub_1C44157D4(v12, v13, v5) != 1)
    {
      v6 = (v0 + 192);
      v14 = *(v0 + 192);
      v15 = *(v0 + 208);
      v16 = *(*(v0 + 216) + 32);
      v16(*(v0 + 240), *(v0 + 200), v15);
      v17 = *(v0 + 48);
      sub_1C4409678((v0 + 16), *(v0 + 40));
      v18 = *(v17 + 16);
      v19 = sub_1C440749C();
      v20(v19);
      v21 = sub_1C44033D8();
      if (sub_1C44157D4(v21, v22, v15) != 1)
      {
        v33 = *(v0 + 288);
        v34 = *(v0 + 208);
        v35 = *(v0 + 184);
        v36 = *(v0 + 168);
        v16(*(v0 + 232), *(v0 + 192), v34);
        v73 = *(v33 + 20);
        v74 = v36;
        sub_1C4460050(v36 + v73, v35, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v37 = sub_1C44033D8();
        if (sub_1C44157D4(v37, v38, v34) == 1)
        {
          sub_1C4420C3C(*(v0 + 184), &unk_1EC0B84E0, qword_1C4F0D2D0);
        }

        else
        {
          v39 = *(v0 + 240);
          v16(*(v0 + 224), *(v0 + 184), *(v0 + 208));
          if (sub_1C4EF9C08())
          {
            v29 = *(v0 + 264);
            v40 = *(v0 + 248);
            v41 = *(v0 + 232);
            v69 = *(v0 + 272);
            v42 = *(v0 + 216);
            v67 = *(v0 + 344);
            v68 = *(v0 + 224);
            v43 = *(v0 + 208);
            v44 = *(v0 + 160);
            v66 = *(v0 + 168);
            v70 = v44;
            v71 = *(v0 + 240);
            v45 = *(v42 + 16);
            v45(v40);
            (v45)(v40 + v29[5], v41, v43);
            sub_1C480BC20(v0 + 16, v40 + v29[6]);
            v46 = v40 + v29[7];
            *(v46 + 24) = &type metadata for LOIBasedSegmentType;
            *(v46 + 32) = &off_1F43F4678;
            *v46 = 0;
            sub_1C43FBD94();
            sub_1C440BAA8(v47, v48, v49, v29);
            sub_1C49FE1A8(v40, v66 + v67, &qword_1EC0B9790, &unk_1C4F0F7C0);
            (v45)(v69, v68, v43);
            (v45)(v69 + v29[5], v71, v43);
            v50 = v69 + v29[6];
            *(v50 + 32) = 0;
            *v50 = 0u;
            *(v50 + 16) = 0u;
            v51 = v69 + v29[7];
            *(v51 + 24) = &type metadata for LOIBasedSegmentType;
            *(v51 + 32) = &off_1F43F4678;
            *v51 = 0;
            v52 = *(v42 + 8);
            v52(v68, v43);
            v52(v41, v43);
            sub_1C46CB91C(v0 + 16);
            sub_1C4420C3C(v74 + v73, &unk_1EC0B84E0, qword_1C4F0D2D0);
            v16(v74 + v73, v71, v43);
            sub_1C43FBD94();
            sub_1C440BAA8(v53, v54, v55, v43);
            sub_1C46CB668(v69, v70);
            v26 = v70;
            v27 = 0;
            goto LABEL_12;
          }

          (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        }

        v24 = *(v0 + 264);
        v56 = *(v0 + 232);
        v72 = *(v0 + 240);
        v58 = *(v0 + 208);
        v57 = *(v0 + 216);
        v59 = *(v0 + 176);
        v60 = *(v0 + 160);
        v61 = *(v0 + 40);
        v62 = *(v0 + 48);
        sub_1C4409678((v0 + 16), v61);
        (*(v62 + 16))(v61, v62);
        sub_1C49FE1A8(v59, v74 + v73, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v63 = *(v57 + 16);
        v63(v60, v72, v58);
        v63(v60 + v24[5], v56, v58);
        sub_1C480BC20(v0 + 16, v60 + v24[6]);
        v64 = v60 + v24[7];
        *(v64 + 24) = &type metadata for LOIBasedSegmentType;
        *(v64 + 32) = &off_1F43F4678;
        *v64 = 0;
        v65 = *(v57 + 8);
        v65(v56, v58);
        v65(v72, v58);
        sub_1C46CB91C(v0 + 16);
        v26 = v60;
        v27 = 0;
LABEL_9:
        v28 = v24;
        goto LABEL_13;
      }

      (*(*(v0 + 216) + 8))(*(v0 + 240), *(v0 + 208));
    }

    v23 = *v6;
    v24 = *(v0 + 264);
    v25 = *(v0 + 160);
    sub_1C46CB91C(v0 + 16);
    sub_1C4420C3C(v23, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v26 = v25;
    v27 = 1;
    goto LABEL_9;
  }

LABEL_11:
  v29 = *(v0 + 264);
  v30 = *(v0 + 160);
  sub_1C4420C3C(v0 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  v26 = sub_1C44033D8();
LABEL_12:
  v28 = v29;
LABEL_13:
  sub_1C440BAA8(v26, v27, 1, v28);
  sub_1C4419F7C();

  sub_1C43FBDA0();

  return v31();
}

uint64_t sub_1C49FDD7C()
{
  v26 = v0;
  v1 = v0[40];

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v2 = v0[42];
  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = v2;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[42];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[18];
    v14 = sub_1C4F02A38();
    v16 = sub_1C441D828(v14, v15, &v25);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Error when reading next completed LOI visit event - %s", v9, 0xCu);
    sub_1C440962C(v10);
    MEMORY[0x1C6942830](v10, -1, -1);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[33];
  v18 = v0[20];
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v22);
  sub_1C4419F7C();

  sub_1C43FBDA0();

  return v23();
}

uint64_t sub_1C49FDFC0@<X0>(uint64_t a1@<X8>)
{
  sub_1C49FDFB4(a1);

  return sub_1C49FE1F8(v1);
}

uint64_t sub_1C49FDFEC()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C445229C;

  return sub_1C49FD16C();
}

uint64_t sub_1C49FE080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4582C48;

  return (sub_1C4982BF8)(a1, a2, a3, v3 + 16);
}

unint64_t sub_1C49FE150()
{
  result = qword_1EDDF3658[0];
  if (!qword_1EDDF3658[0])
  {
    type metadata accessor for LOIBasedSegmentProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF3658);
  }

  return result;
}

uint64_t sub_1C49FE1A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1C49FE1F8(uint64_t a1)
{
  v2 = type metadata accessor for LOIBasedSegmentProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C49FE254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSegmentProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C49FE2B8()
{
  result = qword_1EDDF1588[0];
  if (!qword_1EDDF1588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF1588);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LOIBasedSegmentType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C49FE3EC()
{
  result = qword_1EC0C0FD8;
  if (!qword_1EC0C0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FD8);
  }

  return result;
}

void sub_1C49FE488()
{
  sub_1C49FE52C();
  if (v0 <= 0x3F)
  {
    sub_1C4EF9CD8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LOIBasedSegmentProvider(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C49FE52C()
{
  if (!qword_1EDDF67A0)
  {
    type metadata accessor for LOIBasedSegment(255);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF67A0);
    }
  }
}

unint64_t sub_1C49FE588()
{
  result = qword_1EDDF0FE8;
  if (!qword_1EDDF0FE8)
  {
    type metadata accessor for LOIBasedSemanticLocationSegmentProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0FE8);
  }

  return result;
}

BOOL sub_1C49FE5E0(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  v5 = v4[5];
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  sub_1C445FFF0(a1 + v6, v12, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  sub_1C445FFF0(a2 + v6, &v14, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (v13)
  {
    sub_1C445FFF0(v12, v11, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    if (*(&v15 + 1))
    {
      v9[0] = v14;
      v9[1] = v15;
      v10 = v16;
      v7 = sub_1C4B70C8C(v11, v9);
      sub_1C46CB91C(v9);
      sub_1C46CB91C(v11);
      sub_1C4420C3C(v12, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      if ((v7 & 1) == 0)
      {
        return 0;
      }

      return *(a1 + v4[6]) == *(a2 + v4[6]);
    }

    sub_1C46CB91C(v11);
  }

  else if (!*(&v15 + 1))
  {
    sub_1C4420C3C(v12, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    return *(a1 + v4[6]) == *(a2 + v4[6]);
  }

  sub_1C4420C3C(v12, &qword_1EC0C0FD0, &unk_1C4F42140);
  return 0;
}

uint64_t sub_1C49FE76C()
{
  sub_1C43FBCD4();
  v1[37] = v2;
  v1[38] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64) + 15;
  v1[39] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v1[40] = v6;
  v7 = *(v6 - 8);
  v1[41] = v7;
  v8 = *(v7 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v9 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  v1[44] = v9;
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64) + 15;
  v1[45] = swift_task_alloc();
  v12 = type metadata accessor for LOIBasedSegment(0);
  v1[46] = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v15 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v18 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C49FE928()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for LOIBasedSemanticLocationSegmentProvider(0);
  *(v0 + 432) = v2;
  v3 = *(v2 + 24);
  *(v0 + 456) = v3;
  if (*(v1 + v3) == 1)
  {
    sub_1C440BAA8(*(v0 + 296), 1, 1, *(v0 + 352));
    sub_1C442CF20();

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    __asm { BRAA            X1, X16 }
  }

  v6 = v2;
  v7 = *(v0 + 424);
  v8 = *(v0 + 368);
  sub_1C445FFF0(v1, v7, &qword_1EC0B9790, &unk_1C4F0F7C0);
  v9 = sub_1C44157D4(v7, 1, v8);
  sub_1C4420C3C(v7, &qword_1EC0B9790, &unk_1C4F0F7C0);
  if (v9 == 1)
  {
    v10 = *(v0 + 304);
    v11 = *(v6 + 28);
    v12 = swift_task_alloc();
    *(v0 + 440) = v12;
    *v12 = v0;
    v12[1] = sub_1C49FEB54;
    v13 = *(v0 + 416);
  }

  else
  {
    v14 = *(v0 + 432);
    sub_1C445FFF0(*(v0 + 304), *(v0 + 400), &qword_1EC0B9790, &unk_1C4F0F7C0);
    *(v0 + 460) = *(v14 + 28);
    v15 = *(v0 + 304);
    v16 = swift_task_alloc();
    v17 = sub_1C443268C(v16);
    *v17 = v18;
    sub_1C44074B0(v17);
    v19 = *(v0 + 392);
  }

  sub_1C43FEA3C();

  return sub_1C49FD16C();
}

uint64_t sub_1C49FEB54()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 440);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C49FEC38()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  v3 = *(v0 + 304);
  sub_1C49FF830(*(v0 + 416), v3);
  sub_1C445FFF0(v3, v1, &qword_1EC0B9790, &unk_1C4F0F7C0);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 296);
    sub_1C4420C3C(*(v0 + 408), &qword_1EC0B9790, &unk_1C4F0F7C0);
    sub_1C440BAA8(v5, 1, 1, v4);
    sub_1C442CF20();

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 432);
  v9 = *(v0 + 408);
  v10 = *(v0 + 384);
  v11 = *(v0 + 320);
  v12 = *(v0 + 328);
  v13 = *(v0 + 304);
  sub_1C4419F98();
  sub_1C49FF8A0(v14, v10, v15);
  v16 = *(v8 + 20);
  (*(v12 + 8))(v13 + v16, v11);
  (*(v12 + 16))(v13 + v16, v10, v11);
  sub_1C49FF900(v10, type metadata accessor for LOIBasedSegment);
  v17 = *(v0 + 432);
  sub_1C445FFF0(*(v0 + 304), *(v0 + 400), &qword_1EC0B9790, &unk_1C4F0F7C0);
  *(v0 + 460) = *(v17 + 28);
  v18 = *(v0 + 304);
  v19 = swift_task_alloc();
  v20 = sub_1C443268C(v19);
  *v20 = v21;
  sub_1C44074B0(v20);
  v22 = *(v0 + 392);
  sub_1C43FEA3C();

  return sub_1C49FD16C();
}

uint64_t sub_1C49FEE70()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 448);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C49FEF54()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = sub_1C44157D4(v1, 1, v2);
  v4 = *(v0 + 304);
  if (v3 == 1)
  {
    v5 = *(v0 + 456);
    sub_1C4420C3C(v1, &qword_1EC0B9790, &unk_1C4F0F7C0);
    *(v4 + v5) = 1;
    goto LABEL_22;
  }

  v6 = *(v0 + 376);
  sub_1C4419F98();
  sub_1C49FF8A0(v1, v7, v8);
  if (sub_1C44157D4(v4, 1, v2))
  {
    v9 = 0;
    goto LABEL_11;
  }

  sub_1C445FFF0(*(v0 + 304) + *(*(v0 + 368) + 24), v0 + 176, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  v9 = *(v0 + 200);
  if (v9)
  {
    v10 = *(v0 + 208);
    sub_1C4409678((v0 + 176), *(v0 + 200));
    (*(v10 + 32))(v9, v10);
    sub_1C46CB91C(v0 + 176);
    v9 = *(v0 + 160);
    if (v9)
    {
      v11 = *(v0 + 168);
      sub_1C4409678((v0 + 136), *(v0 + 160));
      v9 = (*(v11 + 24))(v9, v11);
      sub_1C440962C((v0 + 136));
      goto LABEL_11;
    }

    v12 = &qword_1EC0BB380;
    v13 = &unk_1C4F1F2E0;
    v14 = v0 + 136;
  }

  else
  {
    v12 = &qword_1EC0B97A0;
    v13 = &qword_1C4F0F7D0;
    v14 = v0 + 176;
  }

  sub_1C4420C3C(v14, v12, v13);
LABEL_11:
  sub_1C445FFF0(*(v0 + 376) + *(*(v0 + 368) + 24), v0 + 256, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (*(v0 + 280))
  {
    v15 = *(v0 + 288);
    sub_1C4409678((v0 + 256), *(v0 + 280));
    v16 = *(v15 + 32);
    v17 = sub_1C43FD074();
    v18(v17);
    sub_1C46CB91C(v0 + 256);
    if (*(v0 + 240))
    {
      v19 = *(v0 + 248);
      sub_1C4409678((v0 + 216), *(v0 + 240));
      v20 = *(v19 + 24);
      v21 = sub_1C43FD074();
      v23 = v22(v21);
      sub_1C440962C((v0 + 216));
      goto LABEL_17;
    }

    v24 = &qword_1EC0BB380;
    v25 = &unk_1C4F1F2E0;
    v26 = v0 + 216;
  }

  else
  {
    v24 = &qword_1EC0B97A0;
    v25 = &qword_1C4F0F7D0;
    v26 = v0 + 256;
  }

  sub_1C4420C3C(v26, v24, v25);
  v23 = 0;
LABEL_17:
  if (v9 != v23)
  {
    v41 = *(v0 + 400);
    v43 = *(v0 + 368);
    v42 = *(v0 + 376);
    sub_1C4420C3C(v41, &qword_1EC0B9790, &unk_1C4F0F7C0);
    sub_1C4419F98();
    sub_1C49FF8A0(v42, v41, v44);
    sub_1C43FBD94();
    sub_1C440BAA8(v45, v46, v47, v43);
LABEL_22:
    v48 = *(v0 + 368);
    v49 = *(v0 + 304);
    v50 = *(*(v0 + 328) + 16);
    v96 = *(*(v0 + 432) + 20);
    v50(*(v0 + 344), v49 + v96, *(v0 + 320));
    if (sub_1C44157D4(v49, 1, v48))
    {
      v51 = *(v0 + 336);
      v53 = *(v0 + 312);
      v52 = *(v0 + 320);
      sub_1C440BAA8(v53, 1, 1, v52);
      sub_1C4EF9CC8();
      if (sub_1C44157D4(v53, 1, v52) != 1)
      {
        sub_1C4420C3C(*(v0 + 312), &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    else
    {
      v55 = *(v0 + 328);
      v54 = *(v0 + 336);
      v57 = *(v0 + 312);
      v56 = *(v0 + 320);
      v50(v57, *(v0 + 304) + *(*(v0 + 368) + 20), v56);
      sub_1C43FBD94();
      sub_1C440BAA8(v58, v59, v60, v56);
      (*(v55 + 32))(v54, v57, v56);
    }

    v61 = *(v0 + 368);
    v62 = *(v0 + 304);
    if (!sub_1C44157D4(v62, 1, v61))
    {
      sub_1C445FFF0(v62 + *(v61 + 24), v0 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      if (*(v0 + 80))
      {
        v63 = *(v0 + 88);
        sub_1C4409678((v0 + 56), *(v0 + 80));
        v64 = *(v63 + 32);
        v65 = sub_1C43FD074();
        v66(v65);
        sub_1C46CB91C(v0 + 56);
        if (*(v0 + 40))
        {
          v67 = *(v0 + 48);
          sub_1C4409678((v0 + 16), *(v0 + 40));
          v68 = *(v67 + 24);
          v69 = sub_1C43FD074();
          v95 = v70(v69);
          sub_1C440962C((v0 + 16));
LABEL_34:
          v74 = *(v0 + 368);
          v75 = *(v0 + 304);
          if (sub_1C44157D4(v75, 1, v74))
          {
            *(v0 + 128) = 0;
            *(v0 + 96) = 0u;
            *(v0 + 112) = 0u;
            v94 = v75;
          }

          else
          {
            sub_1C445FFF0(v75 + *(v74 + 24), v0 + 96, &qword_1EC0B97A0, &qword_1C4F0F7D0);
            v94 = *(v0 + 304);
          }

          v93 = *(v0 + 400);
          v76 = *(v0 + 352);
          v77 = *(v0 + 360);
          v79 = *(v0 + 336);
          v78 = *(v0 + 344);
          v81 = *(v0 + 320);
          v80 = *(v0 + 328);
          v82 = *(v0 + 296);
          v83 = v77 + v76[8];
          *(v83 + 24) = &type metadata for LOIBasedSegmentType;
          *(v83 + 32) = &off_1F43F4678;
          *v83 = 1;
          v84 = *(v80 + 32);
          v84(v77, v78, v81);
          v85 = v76[5];
          v84(v77 + v85, v79, v81);
          *(v77 + v76[6]) = v95;
          v86 = v77 + v76[7];
          v87 = *(v0 + 128);
          v88 = *(v0 + 112);
          *v86 = *(v0 + 96);
          *(v86 + 16) = v88;
          *(v86 + 32) = v87;
          (*(v80 + 24))(v49 + v96, v77 + v85, v81);
          sub_1C49FF830(v93, v94);
          sub_1C49FF8A0(v77, v82, type metadata accessor for LOIBasedSemanticLocationSegment);
          sub_1C43FBD94();
          sub_1C440BAA8(v89, v90, v91, v76);
          sub_1C442CF20();

          sub_1C43FBDA0();

          return v92();
        }

        v71 = &qword_1EC0BB380;
        v72 = &unk_1C4F1F2E0;
        v73 = v0 + 16;
      }

      else
      {
        v71 = &qword_1EC0B97A0;
        v72 = &qword_1C4F0F7D0;
        v73 = v0 + 56;
      }

      sub_1C4420C3C(v73, v71, v72);
    }

    v95 = 0;
    goto LABEL_34;
  }

  v27 = *(v0 + 368);
  v28 = *(v0 + 376);
  v29 = *(v0 + 304);
  sub_1C4420C3C(v29, &qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C4419F98();
  sub_1C49FF8A0(v28, v29, v30);
  sub_1C43FBD94();
  sub_1C440BAA8(v31, v32, v33, v27);
  v34 = *(v0 + 460);
  v35 = *(v0 + 304);
  v36 = swift_task_alloc();
  v37 = sub_1C443268C(v36);
  *v37 = v38;
  sub_1C44074B0();
  v39 = *(v0 + 392);

  return sub_1C49FD16C();
}

uint64_t sub_1C49FF6B0()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C445229C;

  return sub_1C49FE76C();
}

uint64_t sub_1C49FF744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4582C48;

  return (sub_1C4981CDC)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C49FF830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49FF8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C49FF900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C49FF958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSemanticLocationSegmentProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C49FF9E4()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RTPlaceInferenceUserSpecificPlaceType(319);
    if (v1 <= 0x3F)
    {
      sub_1C49FCCC0();
      if (v2 <= 0x3F)
      {
        sub_1C49FFA98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C49FFA98()
{
  result = qword_1EDDF4A18;
  if (!qword_1EDDF4A18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDDF4A18);
  }

  return result;
}

uint64_t sub_1C49FFB3C()
{
  result = type metadata accessor for LOIBasedSegmentProvider(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C49FFBA8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  v20 = *(v6 + 16);
  v20(&v24 - v18, a1, v3);
  v21 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v20(v17, &a1[*(v21 + 36)], v3);
  v20(v14, v19, v3);
  v20(v11, v17, v3);
  sub_1C49FCD10(v14, v11, v25);
  v22 = *(v6 + 8);
  v22(v17, v3);
  return (v22)(v19, v3);
}

void *sub_1C49FFD84()
{
  v1 = v0;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000001C4F9B280;
  v3 = type metadata accessor for LOIEventData(0);
  v4 = *(v1 + v3[7]);
  v5 = objc_opt_self();
  *(inited + 48) = [v5 featureValueWithInt64_];
  sub_1C4577DBC();
  v6 = sub_1C4F00F28();
  v7 = (v1 + v3[10]);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = v7[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4AD5C68(v9, v8);
    sub_1C465BEF8();
    if ((v12 & 1) == 0)
    {
      v13 = sub_1C4B744F4(v11, &unk_1F43D27E8);
      if (v14)
      {
        v15 = -1;
      }

      else
      {
        v15 = v13;
      }

      if ([v5 featureValueWithInt64_])
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4660314();
      }

      else
      {
        v16 = sub_1C445FAA8(0xD000000000000010, 0x80000001C4F9B2B0);
        if (v17)
        {
          v18 = v16;
          swift_isUniquelyReferenced_nonNull_native();
          v19 = v6[3];
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02458();
          v20 = *(v6[6] + 16 * v18 + 8);

          v21 = *(v6[7] + 8 * v18);
          sub_1C4F02478();
        }
      }
    }
  }

  v22 = v1 + v3[11];
  if ((*(v22 + 8) & 1) == 0)
  {
    if ([v5 featureValueWithDouble_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v23 = sub_1C445FAA8(0xD000000000000017, 0x80000001C4F9B2D0);
      if (v24)
      {
        v25 = v23;
        swift_isUniquelyReferenced_nonNull_native();
        v26 = v6[3];
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v27 = *(v6[6] + 16 * v25 + 8);

        v28 = *(v6[7] + 8 * v25);
        sub_1C4F02478();
      }
    }
  }

  return v6;
}

uint64_t sub_1C4A000C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C4F9B000 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 6909808 && a2 == 0xE300000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F437469736976 && a2 == 0xEF65636E65646966;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001C4FAC5D0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x80000001C4FAC5F0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C4F02938();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1C4A003F4(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6954646E65;
      break;
    case 2:
      result = 0x6E656469666E6F63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x656475746974616CLL;
      break;
    case 5:
      result = 0x64757469676E6F6CLL;
      break;
    case 6:
      result = 6909808;
      break;
    case 7:
      result = 0x6E6F437469736976;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A00524(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C1008, &qword_1C4F425D8);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A02208();
  sub_1C4F02BF8();
  v22[31] = 0;
  sub_1C4EF9CD8();
  sub_1C441210C();
  sub_1C4A01EA8(v14, v15);
  sub_1C440E594();
  if (!v2)
  {
    v16 = type metadata accessor for LOIEventData(0);
    v17 = v16[5];
    v22[30] = 1;
    sub_1C440E594();
    sub_1C441FEDC(v16[6]);
    v22[29] = 2;
    sub_1C44074D0();
    sub_1C4F02758();
    v22[28] = *(v3 + v16[7]);
    v22[27] = 3;
    sub_1C4A02310();
    sub_1C4F027E8();
    sub_1C441FEDC(v16[8]);
    v22[26] = 4;
    sub_1C44074D0();
    sub_1C4F02758();
    sub_1C441FEDC(v16[9]);
    v22[25] = 5;
    sub_1C44074D0();
    sub_1C4F02758();
    v18 = (v3 + v16[10]);
    v19 = *v18;
    v20 = v18[1];
    v22[24] = 6;
    sub_1C44074D0();
    sub_1C4F02738();
    sub_1C441FEDC(v16[11]);
    v22[15] = 7;
    sub_1C44074D0();
    sub_1C4F02758();
    sub_1C441FEDC(v16[12]);
    v22[14] = 8;
    sub_1C44074D0();
    sub_1C4F02758();
    sub_1C441FEDC(v16[13]);
    v22[13] = 9;
    sub_1C44074D0();
    sub_1C4F02758();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4A007F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v58 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  v54 = sub_1C456902C(&qword_1EC0C0FF0, &qword_1C4F425D0);
  v14 = sub_1C43FCDF8(v54);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v50 - v19;
  v55 = type metadata accessor for LOIEventData(0);
  v21 = sub_1C43FBCE0(v55);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v56 = a1;
  v57 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A02208();
  v53 = v20;
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(v56);
  }

  v51 = v16;
  v69 = 0;
  sub_1C441210C();
  sub_1C4A01EA8(v26, v27);
  sub_1C4408DB4();
  v28 = v57;
  v29 = v13;
  v30 = *(v58 + 32);
  v30(v57, v29, v4);
  v68 = 1;
  sub_1C4408DB4();
  v31 = v55;
  v30(&v28[v55[5]], v11, v4);
  v67 = 2;
  sub_1C443269C();
  v32 = sub_1C4F02638();
  sub_1C4419FB0(v32, v33, v31[6]);
  v65 = 3;
  sub_1C4A0225C();
  sub_1C4F026C8();
  v28[v31[7]] = v66;
  v64 = 4;
  sub_1C443269C();
  v34 = sub_1C4F02638();
  sub_1C4419FB0(v34, v35, v31[8]);
  v63 = 5;
  sub_1C443269C();
  v36 = sub_1C4F02638();
  sub_1C4419FB0(v36, v37, v31[9]);
  v62 = 6;
  sub_1C443269C();
  v38 = sub_1C4F02618();
  v39 = &v28[v31[10]];
  *v39 = v38;
  v39[1] = v40;
  v61 = 7;
  sub_1C443269C();
  v41 = sub_1C4F02638();
  sub_1C4419FB0(v41, v42, v55[11]);
  v60 = 8;
  sub_1C443269C();
  v43 = sub_1C4F02638();
  sub_1C4419FB0(v43, v44, v55[12]);
  v59 = 9;
  sub_1C443269C();
  v45 = sub_1C4F02638();
  LOBYTE(v31) = v46;
  (*(v51 + 8))(v53, v54);
  v47 = v57;
  v48 = &v57[v55[13]];
  *v48 = v45;
  v48[8] = v31 & 1;
  sub_1C4A022B0(v47, v52, type metadata accessor for LOIEventData);
  sub_1C440962C(v56);
  return sub_1C4A01F10(v47, type metadata accessor for LOIEventData);
}

uint64_t sub_1C4A00D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A000C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A00DBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4617B98();
  *a1 = result;
  return result;
}

uint64_t sub_1C4A00DE4(uint64_t a1)
{
  v2 = sub_1C4A02208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A00E20(uint64_t a1)
{
  v2 = sub_1C4A02208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A00F40()
{
  sub_1C43FBCD4();
  v0[62] = v1;
  v2 = sub_1C4EF9CD8();
  v0[63] = v2;
  v3 = *(v2 - 8);
  v0[64] = v3;
  v4 = *(v3 + 64) + 15;
  v0[65] = swift_task_alloc();
  v0[66] = swift_task_alloc();
  v0[67] = swift_task_alloc();
  v0[68] = swift_task_alloc();
  v5 = type metadata accessor for LOIEventData(0);
  v0[69] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v0[70] = swift_task_alloc();
  v7 = *(*(sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0) - 8) + 64) + 15;
  v0[71] = swift_task_alloc();
  v8 = type metadata accessor for LOIBasedSegment(0);
  v0[72] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v0[73] = swift_task_alloc();
  v10 = swift_task_alloc();
  v0[74] = v10;
  *v10 = v0;
  v10[1] = sub_1C4A010F0;

  return sub_1C49FD16C();
}

uint64_t sub_1C4A010F0()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 592);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C4A011E0, 0, 0);
}

uint64_t sub_1C4A011E0()
{
  v1 = v0[72];
  v2 = v0[71];
  if (sub_1C44157D4(v2, 1, v1) != 1)
  {
    v7 = v0[73];
    sub_1C4A01F68(v2, v7, type metadata accessor for LOIBasedSegment);
    v8 = *(v1 + 24);
    sub_1C46CB6CC(v7 + v8, (v0 + 7));
    v9 = v0[10];
    if (v9)
    {
      v10 = v0[11];
      sub_1C4409678(v0 + 7, v0[10]);
      (*(v10 + 32))(v9, v10);
      sub_1C46CB91C((v0 + 7));
      v11 = v0[5];
      if (v11)
      {
        v12 = v0[6];
        sub_1C4409678(v0 + 2, v0[5]);
        v13 = (*(v12 + 24))(v11, v12);
        sub_1C440962C(v0 + 2);
        goto LABEL_9;
      }

      v14 = &qword_1EC0BB380;
      v15 = &unk_1C4F1F2E0;
      v16 = (v0 + 2);
    }

    else
    {
      v14 = &qword_1EC0B97A0;
      v15 = &qword_1C4F0F7D0;
      v16 = (v0 + 7);
    }

    sub_1C4420C3C(v16, v14, v15);
    v13 = 0;
LABEL_9:
    v17 = v0[73];
    v18 = v0[72];
    v19 = v0[68];
    v20 = v0[67];
    v21 = v0[63];
    v22 = v0[64];
    v23 = sub_1C4442C70(v13);
    if (v23 == 5)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v109 = v24;
    v25 = *(v22 + 16);
    v25(v19, v17, v21);
    v112 = v17;
    v110 = *(v18 + 20);
    v111 = v25;
    v25(v20, v17 + v110, v21);
    sub_1C46CB6CC(v7 + v8, (v0 + 17));
    if (v0[20])
    {
      v26 = v0[21];
      sub_1C43FF418(v0 + 17);
      v28 = *(v27 + 24);
      v29 = sub_1C442CF40();
      v30(v29);
      sub_1C46CB91C((v0 + 17));
      if (v0[15])
      {
        v31 = v0[16];
        sub_1C4409678(v0 + 12, v0[15]);
        v32 = *(v31 + 8);
        v33 = sub_1C442CF40();
        v35 = v34(v33);
        sub_1C440962C(v0 + 12);
        v108 = 0;
        goto LABEL_18;
      }

      v36 = &qword_1EC0BDA78;
      v37 = &qword_1C4F30788;
      v38 = (v0 + 12);
    }

    else
    {
      v36 = &qword_1EC0B97A0;
      v37 = &qword_1C4F0F7D0;
      v38 = (v0 + 17);
    }

    sub_1C4420C3C(v38, v36, v37);
    v108 = 1;
    v35 = 0.0;
LABEL_18:
    sub_1C46CB6CC(v7 + v8, (v0 + 27));
    if (v0[30])
    {
      v39 = v0[31];
      sub_1C43FF418(v0 + 27);
      v41 = *(v40 + 24);
      v42 = sub_1C442CF40();
      v43(v42);
      sub_1C46CB91C((v0 + 27));
      if (v0[25])
      {
        v44 = v0[26];
        sub_1C4409678(v0 + 22, v0[25]);
        v45 = *(v44 + 16);
        v46 = sub_1C442CF40();
        v48 = v47(v46);
        sub_1C440962C(v0 + 22);
        v107 = 0;
        goto LABEL_24;
      }

      v49 = &qword_1EC0BDA78;
      v50 = &qword_1C4F30788;
      v51 = (v0 + 22);
    }

    else
    {
      v49 = &qword_1EC0B97A0;
      v50 = &qword_1C4F0F7D0;
      v51 = (v0 + 27);
    }

    sub_1C4420C3C(v51, v49, v50);
    v107 = 1;
    v48 = 0.0;
LABEL_24:
    sub_1C46CB6CC(v7 + v8, (v0 + 42));
    if (v0[45])
    {
      v52 = v0[46];
      sub_1C43FF418(v0 + 42);
      v54 = *(v53 + 32);
      v55 = sub_1C442CF40();
      v56(v55);
      sub_1C46CB91C((v0 + 42));
      if (v0[40])
      {
        v57 = v0[41];
        sub_1C43FF418(v0 + 37);
        v59 = *(v58 + 16);
        v60 = sub_1C442CF40();
        v61(v60);
        if (v0[35])
        {
          v62 = v0[36];
          sub_1C4409678(v0 + 32, v0[35]);
          v63 = *(v62 + 32);
          v64 = sub_1C442CF40();
          v66 = v65(v64);
          v105 = v67;
          v106 = v66;
          sub_1C440962C(v0 + 32);
          sub_1C440962C(v0 + 37);
LABEL_32:
          sub_1C46CB6CC(v7 + v8, (v0 + 47));
          v71 = v0[50];
          if (v71)
          {
            sub_1C442E860((v0 + 47), (v0 + 57));
            sub_1C46CB91C((v0 + 47));
            v72 = v0[60];
            v73 = v0[61];
            sub_1C4409678(v0 + 57, v72);
            v74 = (*(v73 + 40))(v72, v73);
            sub_1C440962C(v0 + 57);
          }

          else
          {
            sub_1C4420C3C((v0 + 47), &qword_1EC0B97A0, &qword_1C4F0F7D0);
            v74 = 0.0;
          }

          sub_1C46CB6CC(v7 + v8, (v0 + 52));
          v75 = v0[55];
          if (v75)
          {
            v76 = sub_1C4B70BBC();
            sub_1C46CB91C((v0 + 52));
          }

          else
          {
            sub_1C4420C3C((v0 + 52), &qword_1EC0B97A0, &qword_1C4F0F7D0);
            v76 = 0.0;
          }

          v102 = v71 == 0;
          v103 = v75 == 0;
          v77 = v0[73];
          v78 = v0[70];
          v79 = v0[69];
          v80 = v0[67];
          v81 = v0[66];
          v82 = v0[65];
          v83 = v0[63];
          v104 = v0[62];
          v84 = *(v0[64] + 32);
          v84(v78, v0[68], v83);
          v84(v78 + v79[5], v80, v83);
          v85 = v78 + v79[6];
          *v85 = 0;
          *(v85 + 8) = 1;
          *(v78 + v79[7]) = v109;
          v86 = v78 + v79[8];
          *v86 = v35;
          *(v86 + 8) = v108;
          v87 = v78 + v79[9];
          *v87 = v48;
          *(v87 + 8) = v107;
          v88 = (v78 + v79[10]);
          *v88 = v106;
          v88[1] = v105;
          v89 = v78 + v79[11];
          *v89 = 0;
          *(v89 + 8) = 1;
          v90 = v78 + v79[12];
          *v90 = v74;
          *(v90 + 8) = v102;
          v91 = v78 + v79[13];
          *v91 = v76;
          *(v91 + 8) = v103;
          v111(v81, v77, v83);
          v111(v82, v112 + v110, v83);
          sub_1C4A01F10(v77, type metadata accessor for LOIBasedSegment);
          v84(v104, v81, v83);
          v92 = sub_1C456902C(&qword_1EC0BFE98, qword_1C4F42410);
          v84(v104 + *(v92 + 28), v82, v83);
          sub_1C4A01F68(v78, v104 + *(v92 + 32), type metadata accessor for LOIEventData);
          v5 = v104;
          v6 = 0;
          v4 = v92;
          goto LABEL_39;
        }

        sub_1C440962C(v0 + 37);
        v68 = &unk_1EC0BB388;
        v69 = &unk_1C4F1F2F0;
        v70 = (v0 + 32);
      }

      else
      {
        v68 = &qword_1EC0BB380;
        v69 = &unk_1C4F1F2E0;
        v70 = (v0 + 37);
      }
    }

    else
    {
      v68 = &qword_1EC0B97A0;
      v69 = &qword_1C4F0F7D0;
      v70 = (v0 + 42);
    }

    sub_1C4420C3C(v70, v68, v69);
    v105 = 0;
    v106 = 0;
    goto LABEL_32;
  }

  v3 = v0[62];
  sub_1C4420C3C(v2, &qword_1EC0B9790, &unk_1C4F0F7C0);
  v4 = sub_1C456902C(&qword_1EC0BFE98, qword_1C4F42410);
  v5 = v3;
  v6 = 1;
LABEL_39:
  sub_1C440BAA8(v5, v6, 1, v4);
  v93 = v0[73];
  v94 = v0[71];
  v95 = v0[70];
  v96 = v0[68];
  v97 = v0[67];
  v98 = v0[66];
  v99 = v0[65];

  v100 = v0[1];

  return v100();
}

uint64_t sub_1C4A01A10()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A01AA4;

  return sub_1C4A00F40();
}

uint64_t sub_1C4A01AA4()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1C4A01B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A01C5C;

  return (sub_1C498271C)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A01C5C()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_1C4A01D94()
{
  result = qword_1EC0C0FE0;
  if (!qword_1EC0C0FE0)
  {
    sub_1C4572308(&qword_1EC0BFE98, qword_1C4F42410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FE0);
  }

  return result;
}

uint64_t sub_1C4A01DF8(uint64_t a1)
{
  result = sub_1C4A01EA8(qword_1EDDE0698, type metadata accessor for LOISessionDataAsyncSequence);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A01E50(uint64_t a1)
{
  result = sub_1C4A01EA8(&qword_1EDDE0690, type metadata accessor for LOISessionDataAsyncSequence);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A01EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4A01F10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4A01F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4A01FF0()
{
  v0 = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDF05D8);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEAB0);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

_BYTE *storeEnumTagSinglePayload for LOIType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A021B4()
{
  result = qword_1EC0C0FE8;
  if (!qword_1EC0C0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FE8);
  }

  return result;
}

unint64_t sub_1C4A02208()
{
  result = qword_1EC0C0FF8;
  if (!qword_1EC0C0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FF8);
  }

  return result;
}

unint64_t sub_1C4A0225C()
{
  result = qword_1EC0C1000;
  if (!qword_1EC0C1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1000);
  }

  return result;
}

uint64_t sub_1C4A022B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C4A02310()
{
  result = qword_1EC0C1010;
  if (!qword_1EC0C1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1010);
  }

  return result;
}

unint64_t sub_1C4A0237C()
{
  result = qword_1EC0C1018;
  if (!qword_1EC0C1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1018);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LOIEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A024C0()
{
  result = qword_1EC0C1020;
  if (!qword_1EC0C1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1020);
  }

  return result;
}

unint64_t sub_1C4A02518()
{
  result = qword_1EC0C1028;
  if (!qword_1EC0C1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1028);
  }

  return result;
}

unint64_t sub_1C4A02570()
{
  result = qword_1EC0C1030;
  if (!qword_1EC0C1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1030);
  }

  return result;
}

void sub_1C4A02610(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for LongitudinalDataCollection(0);
  v3 = a1 + v2[5];
  sub_1C4F00318();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  sub_1C445A9C8(v2[7]);
}

uint64_t sub_1C4A02668@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  v2 = type metadata accessor for LongitudinalEvent(0);
  sub_1C445A9C8(*(v2 + 20));
  v4 = a1 + *(v3 + 24);
  *v4 = 0;
  *(v4 + 8) = v5;
  v6 = *(v3 + 28);
  type metadata accessor for LongitudinalEventData(0);
  sub_1C43FCF64();

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C4A026D4()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1880, &unk_1C4F44880);
  }

  return result;
}

uint64_t sub_1C4A027B4()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1880, &unk_1C4F44880);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.MotionState(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A02890()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1870, &qword_1C4F44870);
  }

  return result;
}

uint64_t sub_1C4A02970(uint64_t (*a1)(void))
{
  sub_1C4F00318();
  v2 = a1(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v5, v6, v7, v4);
  v8 = *(v2 + 24);
  sub_1C43FCF64();

  return sub_1C440BAA8(v9, v10, v11, v4);
}

uint64_t sub_1C4A029F0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1870, &qword_1C4F44870);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.InferredMode(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A02ACC()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1860, &qword_1C4F44860);
  }

  return result;
}

uint64_t sub_1C4A02BAC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1860, &qword_1C4F44860);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.LocalAppLaunch(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A02C88()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1850, &qword_1C4F44850);
  }

  return result;
}

uint64_t sub_1C4A02D68()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1850, &qword_1C4F44850);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.LocalAppIntent(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A02E64()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A02F38()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1840, &unk_1C4F44838);
  }

  return result;
}

uint64_t sub_1C4A03018()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1840, &unk_1C4F44838);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.Wifi(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03114()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03208()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A032DC@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6EE0 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0C1830, &qword_1C4F44828);
    }
  }

  else
  {
    sub_1C441EE00();
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A033FC()
{
  sub_1C4405A6C();
  v4 = v3;
  sub_1C4F00318();
  v5 = *(v2(0) + 20);
  if (*v1 != -1)
  {
    swift_once();
  }

  *(v4 + v5) = *v0;
}

uint64_t sub_1C4A0347C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1830, &qword_1C4F44828);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441EE00();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for LongitudinalEventData.VirtualInteractions(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03570()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03644@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6F08 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0C1820, &qword_1C4F44818);
    }
  }

  else
  {
    sub_1C4404588();
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A03764()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1820, &qword_1C4F44818);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4404588();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for LongitudinalEventData.AmbientLight(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03838@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6EB0 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0C1810, &qword_1C4F44808);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A03968()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1810, &qword_1C4F44808);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.LocationVisit(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03A44()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C1800, &qword_1C4F447F8);
  }

  return result;
}

uint64_t sub_1C4A03B24()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1800, &qword_1C4F447F8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.UserComputedFocusMode(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03C00()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C17F0, &qword_1C4F447E8);
  }

  return result;
}

uint64_t sub_1C4A03CE0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C17F0, &qword_1C4F447E8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.NowPlayingState(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03DBC()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C17E0, &qword_1C4F447D8);
  }

  return result;
}

uint64_t sub_1C4A03E9C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C17E0, &qword_1C4F447D8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.Wallet(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A03F78()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C17D0, &qword_1C4F447C8);
  }

  return result;
}

uint64_t sub_1C4A04058()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C17D0, &qword_1C4F447C8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.Carplay(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A04154()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A04248()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A0433C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A04410@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6EC8 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0C17C0, &qword_1C4F447B8);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A04540()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C17C0, &qword_1C4F447B8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.SemanticLocation(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A0461C@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6F48 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0C17B0, &qword_1C4F447A8);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A0474C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C17B0, &qword_1C4F447A8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.Bluetooth(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A04848()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A0491C()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C441BB58(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C441B484();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0C17A0, &qword_1C4F44798);
  }

  return result;
}

uint64_t sub_1C4A049FC()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C17A0, &qword_1C4F44798);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.Microlocation(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A04AD8@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C4410FFC();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6F20 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0C1790, &qword_1C4F44788);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C4A26040();
  }

  return result;
}

uint64_t sub_1C4A04C08()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0C1790, &qword_1C4F44788);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C447F1E8();
  v11 = type metadata accessor for LongitudinalEventData.Calendar(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A04D04()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C446BF9C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C442E3C8();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C4A08F28(v9);
    sub_1C44222F4(v10);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C4A050F8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.LocationVisit(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.LocationVisit._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05218()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.LocationVisit(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.LocationVisit._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05338()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.SemanticLocation(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05458()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.SemanticLocation(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05578()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.SemanticLocation(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05698()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A057C0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A058E8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05A38(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = a1(v7);
  sub_1C4417FEC(*(v8 + 24));
  v9 = type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v10)
  {
    return sub_1C4A26040();
  }

  sub_1C444ACD8(MEMORY[0x1E69E7CC0]);
  v11 = *(v9 + 32);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v12, v13, v14, v15);
  result = sub_1C4400334();
  if (!v10)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4A05B5C()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C4420C3C(v0 + *(v3 + 24), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419FC4();
  sub_1C44022A0();
  sub_1C4A26040();
  type metadata accessor for FeatureValue(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C4A05BF0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.AmbientLight(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05D18()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.AmbientLight(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05E40()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.AmbientLight(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A05F68()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.AmbientLight(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A06090()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.Calendar(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A061B8()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.Calendar(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A062E0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.Calendar(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A06408()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.Calendar(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A06528(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C44042B0();
  v8 = a1(v7);
  sub_1C4417FEC(*(v8 + 20));
  v9 = type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v10)
  {
    return sub_1C4A26040();
  }

  sub_1C444ACD8(MEMORY[0x1E69E7CC0]);
  v11 = *(v9 + 32);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v12, v13, v14, v15);
  result = sub_1C4400334();
  if (!v10)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4A0664C()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C4420C3C(v0 + *(v3 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4419FC4();
  sub_1C44022A0();
  sub_1C4A26040();
  type metadata accessor for FeatureValue(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C4A066E0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.Bluetooth(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A06800()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.Bluetooth(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A06920@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C44042B0();
  v13 = *(v4 + *(a1(v12) + 20));
  v14 = *a2;
  sub_1C440D164();
  sub_1C4460108(v13 + v14, v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v16)
  {
    return sub_1C4A26040();
  }

  v17 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v17;
  a3[2] = v17;
  v18 = a3 + *(v15 + 28);
  sub_1C4F00318();
  v19 = *(v15 + 32);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v20, v21, v22, v23);
  result = sub_1C4400334();
  if (!v16)
  {
    return sub_1C4420C3C(v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4A06A70()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for LongitudinalEventData.Bluetooth(v6);
  v8 = sub_1C4423B64(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
    sub_1C43FD23C(v10);
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C44222F4(v11);
  }

  sub_1C4419FC4();
  sub_1C4404C28();
  sub_1C4A26040();
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v12);
  sub_1C43FC29C();
  v13 = sub_1C44022A0();
  sub_1C44408D4(v13, v14, v15, v16);
  return swift_endAccess();
}

uint64_t sub_1C4A06B70()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152650);
  sub_1C442B738(v0, qword_1EC152650);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rotating60DayUUID";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "event";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "protoVersion";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A06DDC()
{
  type metadata accessor for LongitudinalEvent(0);
  sub_1C4A24734(&qword_1EC0C1718, type metadata accessor for LongitudinalEvent);
  return sub_1C4F003E8();
}

void sub_1C4A06EE0()
{
  sub_1C441800C();
  v2 = v0;
  sub_1C448E07C();
  sub_1C4A06FF8(v0);
  if (!v1)
  {
    v3 = *v0;
    if (*(*v2 + 16))
    {
      type metadata accessor for LongitudinalEvent(0);
      sub_1C4A24734(&qword_1EC0C1718, type metadata accessor for LongitudinalEvent);
      sub_1C43FD5B4();
      sub_1C4F004A8();
    }

    sub_1C4A07070(v2);
    v4 = v2 + *(type metadata accessor for LongitudinalDataCollection(0) + 20);
    sub_1C4F00308();
  }

  sub_1C44512DC();
}

uint64_t sub_1C4A06FF8(uint64_t a1)
{
  result = type metadata accessor for LongitudinalDataCollection(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C4A07070(uint64_t a1)
{
  result = type metadata accessor for LongitudinalDataCollection(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C4A070E8()
{
  v2 = sub_1C43FECE0();
  v3 = type metadata accessor for LongitudinalDataCollection(v2);
  v4 = v3[6];
  v5 = (v1 + v4);
  v6 = *(v1 + v4 + 8);
  v7 = (v0 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *v1;
  v11 = *v0;
  sub_1C47E63BC();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_1C44C12A8(v3[7]);
  if (v14)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v16)
    {
      return 0;
    }
  }

  v17 = v3[5];
  sub_1C4F00328();
  sub_1C442CF50();
  sub_1C4A24734(v18, v19);
  return sub_1C4F010B8() & 1;
}

uint64_t sub_1C4A0726C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1750, type metadata accessor for LongitudinalDataCollection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A0730C()
{
  sub_1C4A24734(&qword_1EC0C1738, type metadata accessor for LongitudinalDataCollection);

  return sub_1C4F00428();
}

uint64_t sub_1C4A073D4()
{
  sub_1C4A24734(&qword_1EC0C1738, type metadata accessor for LongitudinalDataCollection);

  return sub_1C4F00438();
}

uint64_t sub_1C4A07454()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152668);
  sub_1C442B738(v0, qword_1EC152668);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startDate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endDate";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "eventData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C4A0765C()
{
  sub_1C441800C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  while (1)
  {
    sub_1C43FD018();
    v7 = sub_1C4F00378();
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 3:
        v11 = sub_1C43FC1C0();
        v2(v11);
        break;
      case 2:
        v10 = sub_1C43FC1C0();
        v4(v10);
        break;
      case 1:
        v9 = sub_1C43FC1C0();
        v6(v9);
        break;
    }
  }

  sub_1C44512DC();
}

uint64_t sub_1C4A077E4()
{
  v0 = *(type metadata accessor for LongitudinalEvent(0) + 28);
  type metadata accessor for LongitudinalEventData(0);
  sub_1C4A24734(&qword_1EC0C16F8, type metadata accessor for LongitudinalEventData);
  return sub_1C4F003F8();
}

uint64_t sub_1C4A07898()
{
  sub_1C4405A6C();
  sub_1C43FEE74();
  result = sub_1C4A078FC(v1);
  if (!v0)
  {
    sub_1C43FEE74();
    sub_1C4A07974(v3);
    sub_1C43FEE74();
    sub_1C4A079EC(v4, v5, v6, v7);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A078FC(uint64_t a1)
{
  result = type metadata accessor for LongitudinalEvent(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00478();
  }

  return result;
}