uint64_t sub_1C4A92C90(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) || !*(a2 + 16))
  {
    return _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
  }

  v2 = sub_1C4A92FE0(a2, a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v8 >= v7 >> 1)
      {
        sub_1C44CD9C0();
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 7;
      --v3;
    }

    while (v3);

    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FDC98();
    sub_1C4401CBC(v10, v11, &unk_1C4F0E870);
    sub_1C4F01048();

    return 1;
  }

  else
  {

    return _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
  }
}

void sub_1C4A92E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  if (a4 == 2)
  {
    if (a8 != 2 && (a5 & 1) != 0)
    {
      v10 = a6;
      v11 = a7;
      v12 = a8;
LABEL_8:
      sub_1C4A9568C(v10, v11, v12);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (a8 != 2)
  {
    if ((a1 & 1) == 0 || (a5 & 1) == 0)
    {
      goto LABEL_15;
    }

    v17 = 0xE000000000000000;
    if (a8 != 1)
    {
      if (a8)
      {
        sub_1C4A9568C(a6, a7, a8);
        v17 = a8;
        goto LABEL_17;
      }

      sub_1C4A95670(a5, a6, a7, 0);
    }

    v9 = 0;
LABEL_17:
    MEMORY[0x1C6940010](v9, v17);

    v18 = sub_1C447F25C();
    MEMORY[0x1C6940010](v18);
    if (a4 != 1)
    {
      if (a4)
      {
        sub_1C4A9568C(a2, a3, a4);
      }

      else
      {
        sub_1C4A95670(a1, a2, a3, 0);
      }
    }

    v19 = sub_1C4404084();
    MEMORY[0x1C6940010](v19);

    sub_1C43FBC98();
    if (sub_1C4F012A8() < 2)
    {
    }

    goto LABEL_15;
  }

  if (a1)
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    goto LABEL_8;
  }

LABEL_15:
  sub_1C441D304();
}

uint64_t sub_1C4A92FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = MEMORY[0x1E69E7CC8];
  if (v2)
  {
    while (1)
    {
      v5 = v3[1];
      v68 = *v3;
      v69 = v5;
      v70 = v3[2];
      v71 = *(v3 + 6);
      v6 = v68;
      sub_1C461B90C(&v68, &v64);
      sub_1C461B90C(&v68, &v64);
      swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v4;
      v7 = sub_1C445FAA8(v6, *(&v6 + 1));
      sub_1C441EAB4(v7, v8);
      if (v11)
      {
        break;
      }

      v12 = v9;
      v13 = v10;
      sub_1C456902C(&qword_1EC0C2610, &unk_1C4F4B430);
      if (sub_1C4F02458())
      {
        v14 = sub_1C445FAA8(v6, *(&v6 + 1));
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_37;
        }

        v12 = v14;
      }

      if (v13)
      {
        v4 = v63[0];
        v16 = *(v63[0] + 56) + 56 * v12;
        v18 = *(v16 + 16);
        v17 = *(v16 + 32);
        v19 = *v16;
        v67 = *(v16 + 48);
        v65 = v18;
        v66 = v17;
        v64 = v19;
        v20 = v68;
        v21 = v69;
        v22 = v70;
        *(v16 + 48) = v71;
        *(v16 + 16) = v21;
        *(v16 + 32) = v22;
        *v16 = v20;
        sub_1C4851A34(&v64);
        sub_1C4851A34(&v68);
      }

      else
      {
        v4 = v63[0];
        *(v63[0] + 8 * (v12 >> 6) + 64) |= 1 << v12;
        *(v4[6] + 16 * v12) = v6;
        v23 = v4[7] + 56 * v12;
        v24 = v71;
        v26 = v69;
        v25 = v70;
        *v23 = v68;
        *(v23 + 16) = v26;
        *(v23 + 32) = v25;
        *(v23 + 48) = v24;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4851A34(&v68);
        v27 = v4[2];
        v11 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v11)
        {
          goto LABEL_36;
        }

        v4[2] = v28;
      }

      v3 = (v3 + 56);
      if (!--v2)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    sub_1C4F029F8();
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_11:
    v29 = *(a1 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = 0;
    v31 = a1 + 32;
    v32 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v33 = (v31 + 56 * v30);
    while (v29 != v30)
    {
      if (v30 >= v29)
      {
        goto LABEL_34;
      }

      v34 = v33[1];
      v68 = *v33;
      v69 = v34;
      v70 = v33[2];
      v71 = *(v33 + 6);
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_35;
      }

      if (v4[2])
      {
        v36 = *(&v68 + 1);
        v3 = v68;
        sub_1C461B90C(&v68, &v64);
        v37 = sub_1C4404084();
        v39 = sub_1C445FAA8(v37, v38);
        if (v40)
        {
          v41 = v4[7] + 56 * v39;
          v43 = *(v41 + 16);
          v42 = *(v41 + 32);
          v44 = *v41;
          v67 = *(v41 + 48);
          v65 = v43;
          v66 = v42;
          v64 = v44;
          v45 = v71;
          v46 = v67;
          v47 = HIDWORD(v67);
          if (v71 < v67 || ((v48 = HIDWORD(v71), v67 == v71) ? (v49 = *(&v71 + 1) < *(&v67 + 1)) : (v49 = 0), v49))
          {
            v60 = *(&v66 + 1);
            v62 = v66;
            v58 = *(&v65 + 1);
            v59 = v65;
            v36 = *(&v64 + 1);
            v3 = v64;
            sub_1C461B90C(&v64, v63);
          }

          else
          {
            v60 = *(&v70 + 1);
            v62 = v70;
            v58 = *(&v69 + 1);
            v59 = v69;
            sub_1C461B90C(&v68, v63);
            v46 = v45;
            v47 = v48;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = *(v32 + 16);
            sub_1C43FCEC0();
            sub_1C458EC60();
            v32 = v55;
          }

          v51 = *(v32 + 16);
          v50 = *(v32 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_1C4413F5C(v50);
            sub_1C458EC60();
            v32 = v56;
          }

          *(v32 + 16) = v51 + 1;
          v52 = v32 + 56 * v51;
          *(v52 + 32) = v3;
          *(v52 + 40) = v36;
          *(v52 + 48) = v59;
          *(v52 + 56) = v58;
          *(v52 + 64) = v62;
          *(v52 + 72) = v60;
          *(v52 + 80) = v46;
          v53 = BYTE2(v63[0]);
          *(v52 + 81) = v63[0];
          *(v52 + 83) = v53;
          *(v52 + 84) = v47;
          sub_1C4851A34(&v68);
          v30 = v35;
          goto LABEL_12;
        }

        sub_1C4851A34(&v68);
      }

      ++v30;
      v33 = (v33 + 56);
    }

    swift_bridgeObjectRelease_n();
    *&v68 = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A8F138(&v68);

    return v68;
  }

  return result;
}

uint64_t sub_1C4A933E4(uint64_t a1)
{
  v2 = a1 + 56;
  v1 = *(a1 + 56);
  v3 = *(a1 + 32);
  sub_1C43FEC90();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v42 = v9;
  v10 = v9 + 56;
  v37 = v11;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v35 = v8;
  v36 = v2;
  v39 = v10;
  if (v6)
  {
LABEL_2:
    v14 = v13;
LABEL_6:
    v38 = (v6 - 1) & v6;
    v15 = *(v37 + 48);
    sub_1C4416844();
    v40 = *v16;
    v41 = v16[1];
    v17 = 1 << *(v42 + 32);
    v18 = *(v42 + 56);
    sub_1C4459BCC();
    v21 = v20 & v19;
    v23 = (v22 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = 0;
    if (!v21)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v25 = v24;
LABEL_11:
      v26 = *(v42 + 48);
      sub_1C4416844();
      v28 = *v27;
      v29 = v27[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = sub_1C4A938F4(v40, v41, v28, v29);
      v32 = v31;

      if (v30)
      {
        break;
      }

      v21 &= v21 - 1;
      v33 = sub_1C43FFE24();
      result = sub_1C47023EC(v33, v34, v32);
      v24 = v25;
      v10 = v39;
      if (!v21)
      {
        while (1)
        {
LABEL_8:
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            goto LABEL_19;
          }

          if (v25 >= v23)
          {
            break;
          }

          v21 = *(v10 + 8 * v25);
          ++v24;
          if (v21)
          {
            goto LABEL_11;
          }
        }

        v13 = v14;
        v8 = v35;
        v2 = v36;
        v6 = v38;
        if (!v38)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    return 1;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v8)
      {

        return 0;
      }

      v6 = *(v2 + 8 * v14);
      ++v13;
      if (v6)
      {
        goto LABEL_6;
      }
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4A935F4(uint64_t a1, uint64_t a2)
{
  v51 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  sub_1C43FEC90();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v55 = a2;
  v12 = a2 + 56;
  v49 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  v47 = v11;
  for (i = a1 + 56; v9; v5 = i)
  {
    v15 = v14;
LABEL_6:
    v9 &= v9 - 1;
    v16 = *(v49 + 48);
    sub_1C4416844();
    v19 = *v17;
    v18 = v17[1];
    v20 = 1 << *(v55 + 32);
    v21 = *(v55 + 56);
    sub_1C4459BCC();
    v26 = v25 & v24;
    v28 = (v27 + 63) >> 6;
    v29 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v29 = v23 & 0xFFFFFFFFFFFFLL;
    }

    v52 = v23;
    v53 = v29;
    v54 = v22;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = 0;
    if (v26)
    {
      while (1)
      {
LABEL_13:
        v32 = *(v55 + 48);
        sub_1C4416844();
        v35 = *v33;
        v34 = v33[1];
        if (v53)
        {
          goto LABEL_17;
        }

        v36 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v36 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
LABEL_17:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v37 = sub_1C4A93D4C(v51, v52, v54);
          v50 = v35;
          v38 = sub_1C4A93D4C(v51, v35, v34);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4417658();
          v41 = *(sub_1C4A954A4(v38, v37, v39, v40) + 2);

          v42 = v41;
          sub_1C44999E0(v38, v37);
          v44 = *(v43 + 16);

          if ((v42 / v44) > 0.5)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            MEMORY[0x1C6940010](8236, 0xE200000000000000);
            MEMORY[0x1C6940010](v50, v34);

            return 1;
          }
        }

        v26 &= v26 - 1;
        v45 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
        result = sub_1C47023EC(v45, v46, 1);
        if (!v26)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v31 >= v28)
      {
        break;
      }

      v26 = *(v12 + 8 * v31);
      ++v30;
      if (v26)
      {
        v30 = v31;
        goto LABEL_13;
      }
    }

    v14 = v15;
    v11 = v47;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return 0;
    }

    v9 = *(v5 + 8 * v15);
    ++v14;
    if (v9)
    {
      goto LABEL_6;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C4A938F4(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      return 0;
    }
  }

  if (a1 != a3 || a2 != a4)
  {
    sub_1C4418B70();
    if ((sub_1C4F02938() & 1) == 0)
    {
      sub_1C4415EA8();
      v14 = sub_1C4440D8C();
      v61 = a4;
      v64 = 32;
      v65 = 0xE100000000000000;
      v15 = sub_1C4440D8C();
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C43FDC98();
      sub_1C4401CBC(v16, v17, &unk_1C4F0E870);
      sub_1C44184F4();
      v18 = sub_1C4F01048();
      v20 = v19;
      v60 = v15;
      v22 = sub_1C4F01048();
      v23 = v21;
      v24 = v18 == v22 && v20 == v21;
      if (v24 || (sub_1C4F02938() & 1) != 0)
      {

        v60 = v18;
        v61 = v20;
        v25 = sub_1C447F25C();
        MEMORY[0x1C6940010](v25);
        MEMORY[0x1C6940010](v22, v23);
LABEL_19:

        return 1;
      }

      v27 = v14[2];
      if (v27 > 1)
      {
        goto LABEL_26;
      }

      if (v15[2] <= 1uLL)
      {

LABEL_36:

        return 0;
      }

      if (v27)
      {
LABEL_26:
        v28 = v14[5];
        v59 = v14[4];
        v29 = sub_1C4499330(1);
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v58 = v28;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v60 = v29;
        v61 = v31;
        v62 = v33;
        v63 = v35;
        v36 = sub_1C440A9B8();
        sub_1C456902C(v36, v37);
        sub_1C4401CBC(&qword_1EDDFCDC8, &qword_1EC0C0F30, &qword_1C4F41A88);
        sub_1C44184F4();
        v56 = sub_1C4F01048();
        v57 = v38;
        result = swift_unknownObjectRelease();
        if (v15[2])
        {
          v40 = v15[4];
          v39 = v15[5];
          v41 = sub_1C4499330(1);
          v43 = v42;
          v45 = v44;
          v47 = v46;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v60 = v41;
          v61 = v43;
          v62 = v45;
          v63 = v47;
          sub_1C44184F4();
          v48 = sub_1C4F01048();
          v50 = v49;
          swift_unknownObjectRelease();
          v51 = type metadata accessor for PeopleMatcher();
          v52 = *(*(v5 + *(v51 + 36)) + 16);
          MEMORY[0x1EEE9AC00](v51);
          os_unfair_lock_lock(v52 + 6);
          sub_1C4A956A0(&v52[4], &v60);
          os_unfair_lock_unlock(v52 + 6);
          if (v60 == 1)
          {
            if (v56 == v48 && v57 == v50)
            {

LABEL_39:
              v60 = v59;
              v61 = v58;
              v55 = sub_1C447F25C();
              MEMORY[0x1C6940010](v55);
              MEMORY[0x1C6940010](v40, v39);
              goto LABEL_19;
            }

            v54 = sub_1C4F02938();

            if (v54)
            {
              goto LABEL_39;
            }
          }

          else
          {
          }

          goto LABEL_36;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v60 = a1;
  v61 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C447F25C();
  MEMORY[0x1C6940010](v13);
  MEMORY[0x1C6940010](a3, a4);
  return 1;
}

uint64_t sub_1C4A93D4C(void *a1, uint64_t a2, unint64_t a3)
{
  v64 = a1;
  v5 = sub_1C4EF9788();
  v6 = sub_1C43FCDF8(v5);
  v63 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v62 = v11 - v10;
  v12 = sub_1C456902C(&qword_1EC0BB2A8, &qword_1C4F1E978);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v65 = v16;
  sub_1C43FD1D0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v61 - v21;
  v22 = sub_1C4EF9488();
  v23 = sub_1C43FCDF8(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  v70 = MEMORY[0x1E69E7CD0];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v31 = sub_1C4F00978();
  sub_1C442B738(v31, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CF8();

  v34 = os_log_type_enabled(v32, v33);
  v67 = v5;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68 = v36;
    *v35 = 136380675;
    *(v35 + 4) = sub_1C441D828(a2, a3, &v68);
    _os_log_impl(&dword_1C43F8000, v32, v33, "Person Name components for %{private}s", v35, 0xCu);
    sub_1C440962C(v36);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v68 = a2;
  v69 = a3;
  sub_1C4EF9448();
  sub_1C4415EA8();
  v37 = sub_1C4F01FF8();
  v39 = v38;
  v40 = *(v25 + 8);
  v40(v30, v22);
  v41 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v41 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v68 = v37;
  v69 = v39;
  sub_1C4EF9468();
  sub_1C4F01FE8();
  v43 = v42;
  v40(v30, v22);

  if (v43)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v44 = sub_1C4F01108();
  v45 = [v64 personNameComponentsFromString_];

  if (v45)
  {
    sub_1C4EF9768();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v48 = v66;
  v47 = v67;
  v49 = v65;
  sub_1C440BAA8(v20, v46, 1, v67);
  sub_1C441D304();
  sub_1C44CDA7C();
  sub_1C43FD2BC();
  sub_1C441D304();
  sub_1C44DDE2C();
  if (sub_1C44157D4(v49, 1, v47) == 1)
  {
    sub_1C4420C3C(v48, &qword_1EC0BB2A8, &qword_1C4F1E978);
    sub_1C4420C3C(v49, &qword_1EC0BB2A8, &qword_1C4F1E978);
    return MEMORY[0x1E69E7CD0];
  }

  v52 = v62;
  v51 = v63;
  (*(v63 + 32))(v62, v49, v47);
  v53 = sub_1C4EF9708();
  if (v54)
  {
    sub_1C4411100(v53, v54);
  }

  v55 = sub_1C4EF9728();
  if (v56)
  {
    sub_1C4411100(v55, v56);
  }

  v57 = sub_1C4EF9718();
  if (v58)
  {
    sub_1C4411100(v57, v58);
  }

  v59 = sub_1C4EF9778();
  if (v60)
  {
    sub_1C4411100(v59, v60);
  }

  (*(v51 + 8))(v52, v47);
  sub_1C4420C3C(v48, &qword_1EC0BB2A8, &qword_1C4F1E978);
  return v70;
}

uint64_t sub_1C4A9424C()
{
  if (v0[5])
  {
    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[4];
    sub_1C4F01298();
  }

  else
  {
    v4 = *v0;
    v5 = v0[1];
  }

  return sub_1C4F01298();
}

uint64_t sub_1C4A942B4()
{
  sub_1C4404078();
  if (*v2 == *v0 && v1[1] == v0[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C4F02938();
  }

  v5 = v1[5];
  if (!v5)
  {
    return v4 & 1;
  }

  v6 = v0[5];
  if ((v6 == 0) | v4 & 1)
  {
    v4 |= v6 != 0;
    return v4 & 1;
  }

  v7 = v1[4];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v0[4];
  v12 = v0[6];
  v11 = v0[7];
  if (v7 != v10 || v5 != v6)
  {
    v14 = sub_1C4F02938();
    v4 = 0;
    if ((v14 & 1) == 0)
    {
      return v4 & 1;
    }
  }

  if (v9 == v12 && v8 == v11)
  {
    v4 = 1;
    return v4 & 1;
  }

  sub_1C4418B70();

  return sub_1C4F02938();
}

uint64_t sub_1C4A943A0()
{
  sub_1C4F02AF8();
  if (v0[5])
  {
    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[4];
    sub_1C4F01298();
  }

  else
  {
    v4 = *v0;
    v5 = v0[1];
  }

  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A94420()
{
  sub_1C4F02AF8();
  sub_1C4A9424C();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A946B8(uint64_t a1)
{
  result = sub_1C4487240(&qword_1EDDF7F88, type metadata accessor for PeopleMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A94710(uint64_t a1)
{
  result = sub_1C4487240(qword_1EDDF7F98, type metadata accessor for PeopleMatcher);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4A94790()
{
  type metadata accessor for PhaseStores();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Nicknames();
        if (v3 <= 0x3F)
        {
          sub_1C4A94874();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C4A94874()
{
  if (!qword_1EDDFA178)
  {
    sub_1C4572308(&qword_1EC0C2608, &qword_1C4F4B418);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFA178);
    }
  }
}

uint64_t sub_1C4A948D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityTriple(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1C4A94950(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C441D304();
    v6 = a5();

    return v6;
  }

  return result;
}

uint64_t sub_1C4A949E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4A94B8C(v7, v8, a1, v4);
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
    return sub_1C4A94AD8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4A94AD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 104);
        v10 = *(v8 + 48);
        if (v10 >= v9 && (v9 != v10 || *(v8 + 52) >= *(v8 + 108)))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = *(v8 + 104);
        v13 = *(v8 + 88);
        v14 = *(v8 + 56);
        v15 = *(v8 + 16);
        *(v8 + 56) = *v8;
        v16 = *(v8 + 72);
        *(v8 + 72) = v15;
        *(v8 + 88) = *(v8 + 32);
        *(v8 + 104) = *(v8 + 48);
        *v8 = v14;
        *(v8 + 16) = v16;
        *(v8 + 32) = v13;
        *(v8 + 48) = v12;
        v8 -= 56;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 56;
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

void sub_1C4A94B8C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v92 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_35;
      }

      v9 = *a3 + 56 * v8;
      v10 = *(v9 + 48);
      v11 = *a3 + 56 * v6;
      v12 = *(v11 + 48);
      v13 = v12 < v10 || *(v11 + 52) < *(v9 + 52) && v10 == v12;
      v15 = v6 + 2;
      if (v5 <= v6 + 2)
      {
        v8 = v6 + 2;
      }

      else
      {
        v8 = v5;
      }

      v16 = 56 * v6;
      for (i = (*a3 + 56 * v6 + 164); ; i += 14)
      {
        if (v15 >= v5)
        {
          goto LABEL_26;
        }

        v18 = *(i - 4);
        if (v10 >= v18)
        {
          break;
        }

        if (!v13)
        {
          v8 = v15;
          goto LABEL_35;
        }

LABEL_24:
        ++v15;
        v10 = v18;
      }

      if (v18 != v10)
      {
        if (v13)
        {
          v8 = v15;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      if ((v13 ^ (*(i - 14) >= *i)))
      {
        goto LABEL_24;
      }

      v8 = v15;
LABEL_26:
      if (v13)
      {
LABEL_27:
        if (v8 >= v6)
        {
          if (v6 < v8)
          {
            v19 = 56 * v8 - 56;
            v20 = v8;
            v21 = v6;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_133;
                }

                v23 = (v22 + v16);
                v24 = *(v22 + v16 + 48);
                v25 = (v22 + v19);
                v27 = v23[1];
                v26 = v23[2];
                v28 = *v23;
                v30 = v25[1];
                v29 = v25[2];
                v31 = *v25;
                *(v23 + 6) = *(v25 + 6);
                v23[1] = v30;
                v23[2] = v29;
                *v23 = v31;
                *v25 = v28;
                v25[1] = v27;
                v25[2] = v26;
                *(v25 + 6) = v24;
              }

              ++v21;
              v19 -= 56;
              v16 += 56;
            }

            while (v21 < v20);
            v5 = a3[1];
          }

          goto LABEL_35;
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        break;
      }

LABEL_35:
      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_127;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_128;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (v8 != v5)
          {
            v32 = *a3;
            v33 = *a3 + 56 * v8 - 56;
            v34 = v6 - v8;
            do
            {
              v35 = v34;
              v36 = v33;
              do
              {
                v37 = *(v36 + 104);
                v38 = *(v36 + 48);
                if (v38 >= v37 && (v37 != v38 || *(v36 + 52) >= *(v36 + 108)))
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_131;
                }

                v40 = *(v36 + 104);
                v41 = *(v36 + 88);
                v42 = *(v36 + 56);
                v43 = *(v36 + 16);
                *(v36 + 56) = *v36;
                v44 = *(v36 + 72);
                *(v36 + 72) = v43;
                *(v36 + 88) = *(v36 + 32);
                *(v36 + 104) = *(v36 + 48);
                *v36 = v42;
                *(v36 + 16) = v44;
                *(v36 + 32) = v41;
                *(v36 + 48) = v40;
                v36 -= 56;
              }

              while (!__CFADD__(v35++, 1));
              ++v8;
              v33 += 56;
              --v34;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_126;
      }

      v94 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = v7[2];
        sub_1C43FCEC0();
        sub_1C458A358();
        v7 = v90;
      }

      v46 = v7[2];
      v47 = v46 + 1;
      if (v46 >= v7[3] >> 1)
      {
        sub_1C458A358();
        v7 = v91;
      }

      v7[2] = v47;
      v48 = v7 + 4;
      v49 = &v7[2 * v46 + 4];
      *v49 = v6;
      v49[1] = v94;
      v95 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v46)
      {
        while (1)
        {
          v50 = v47 - 1;
          v51 = &v48[2 * v47 - 2];
          v52 = &v7[2 * v47];
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v53 = v7[4];
            v54 = v7[5];
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_76:
            if (v56)
            {
              goto LABEL_116;
            }

            v68 = *v52;
            v67 = v52[1];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_119;
            }

            v72 = v51[1];
            v73 = v72 - *v51;
            if (__OFSUB__(v72, *v51))
            {
              goto LABEL_122;
            }

            if (__OFADD__(v70, v73))
            {
              goto LABEL_124;
            }

            if (v70 + v73 >= v55)
            {
              if (v55 < v73)
              {
                v50 = v47 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v47 < 2)
          {
            goto LABEL_118;
          }

          v75 = *v52;
          v74 = v52[1];
          v63 = __OFSUB__(v74, v75);
          v70 = v74 - v75;
          v71 = v63;
LABEL_91:
          if (v71)
          {
            goto LABEL_121;
          }

          v77 = *v51;
          v76 = v51[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_123;
          }

          if (v78 < v70)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v50 - 1 >= v47)
          {
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
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          if (!*a3)
          {
            goto LABEL_132;
          }

          v82 = &v48[2 * v50 - 2];
          v83 = *v82;
          v84 = &v48[2 * v50];
          v85 = *(v84 + 1);
          sub_1C4A95248((*a3 + 56 * *v82), (*a3 + 56 * *v84), *a3 + 56 * v85, v95);
          if (v4)
          {
            goto LABEL_109;
          }

          if (v85 < v83)
          {
            goto LABEL_111;
          }

          v86 = v7;
          v87 = v7[2];
          if (v50 > v87)
          {
            goto LABEL_112;
          }

          *v82 = v83;
          v82[1] = v85;
          if (v50 >= v87)
          {
            goto LABEL_113;
          }

          v47 = v87 - 1;
          sub_1C461950C(v84 + 16, v87 - 1 - v50, &v48[2 * v50]);
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v7 = v86;
          if (!v88)
          {
            goto LABEL_105;
          }
        }

        v57 = &v48[2 * v47];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_114;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_115;
        }

        v64 = v52[1];
        v65 = v64 - *v52;
        if (__OFSUB__(v64, *v52))
        {
          goto LABEL_117;
        }

        v63 = __OFADD__(v55, v65);
        v66 = v55 + v65;
        if (v63)
        {
          goto LABEL_120;
        }

        if (v66 >= v60)
        {
          v80 = *v51;
          v79 = v51[1];
          v63 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v63)
          {
            goto LABEL_125;
          }

          if (v55 < v81)
          {
            v50 = v47 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = a3[1];
      v6 = v94;
      a4 = v92;
      if (v94 >= v5)
      {
        v97 = v7;
        goto LABEL_107;
      }
    }

    __break(1u);
    goto LABEL_135;
  }

LABEL_107:
  if (!*a1)
  {
LABEL_135:
    __break(1u);
    return;
  }

  sub_1C4A95110(&v97, *a1, a3);
LABEL_109:
}

uint64_t sub_1C4A95110(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4(v15);
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
    sub_1C4A95248((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
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

uint64_t sub_1C4A95248(_OWORD *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    v10 = sub_1C44000C4();
    sub_1C459C934(v10, v11, v4);
    v12 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v12 || v6 >= v5)
      {
        v24 = v7;
        goto LABEL_36;
      }

      v14 = v6[48];
      v15 = v4[48];
      if (v15 < v14)
      {
        break;
      }

      if (v14 == v15 && *(v4 + 13) < *(v6 + 13))
      {
        break;
      }

      v17 = v4;
      v18 = v7 == v4;
      v4 += 56;
      if (!v18)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 = (v7 + 56);
    }

    v17 = v6;
    v18 = v7 == v6;
    v6 += 56;
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_16:
    v19 = *v17;
    v20 = *(v17 + 1);
    v21 = *(v17 + 2);
    *(v7 + 6) = *(v17 + 6);
    v7[1] = v20;
    v7[2] = v21;
    *v7 = v19;
    goto LABEL_17;
  }

  sub_1C459C934(a2, (a3 - a2) / 56, a4);
  v22 = &v4[56 * v9];
LABEL_19:
  v23 = 0;
  v24 = v6;
  while (1)
  {
    v12 = &v22[v23];
    if (&v22[v23] <= v4 || v6 <= v7)
    {
      break;
    }

    v26 = *(v12 - 8);
    v27 = *(v6 - 8);
    if (v27 < v26 || (v26 == v27 ? (v28 = *(v6 - 1) < *&v22[v23 - 4]) : (v28 = 0), v28))
    {
      v6 -= 56;
      v34 = (v5 + v23);
      v5 = v5 + v23 - 56;
      v22 += v23;
      if (v34 != v24)
      {
        v35 = *v6;
        v36 = *(v24 - 40);
        v37 = *(v24 - 24);
        *(v5 + 48) = *(v24 - 1);
        *(v5 + 16) = v36;
        *(v5 + 32) = v37;
        *v5 = v35;
      }

      goto LABEL_19;
    }

    if (v12 != (v5 + v23))
    {
      v29 = v5 + v23 - 56;
      v30 = v12 - 56;
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = *(v30 + 2);
      *(v29 + 48) = *(v30 + 6);
      *(v29 + 16) = v32;
      *(v29 + 32) = v33;
      *v29 = v31;
    }

    v23 -= 56;
  }

LABEL_36:
  v38 = (v12 - v4) / 56;
  if (v24 != v4 || v24 >= &v4[56 * v38])
  {
    memmove(v24, v4, 56 * v38);
  }

  return 1;
}

void *sub_1C4A95434(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C4A954A4(a1, a2, sub_1C4A69E28, sub_1C4A69E28);
}

void *sub_1C4A954A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_1C4404078();
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = *(v6 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;

  if (v8 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1C4501018(0, v9, v18 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1C441D304();
    v11 = a3();
  }

  else
  {
    swift_slowAlloc();

    sub_1C441D304();
    v11 = sub_1C4A94950(v14, v15, v16, v17, a4);

    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1C4A95670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 2)
  {
    return sub_1C47023EC(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C4A9568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonMatchReasonType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A957C0()
{
  result = qword_1EC0C2628;
  if (!qword_1EC0C2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2628);
  }

  return result;
}

unint64_t sub_1C4A95818()
{
  result = qword_1EDDF8AA8[0];
  if (!qword_1EDDF8AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF8AA8);
  }

  return result;
}

unint64_t sub_1C4A9586C()
{
  result = qword_1EC0C2630;
  if (!qword_1EC0C2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2630);
  }

  return result;
}

unint64_t sub_1C4A958D4()
{
  result = qword_1EC0C2638;
  if (!qword_1EC0C2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2638);
  }

  return result;
}

uint64_t sub_1C4A9594C(uint64_t a1)
{
  v3 = *(v1 + 144);

  return sub_1C4A8F1A4(a1);
}

uint64_t sub_1C4A95A30()
{
  result = sub_1C4F00F28();
  qword_1EC152B68 = result;
  return result;
}

uint64_t sub_1C4A95A6C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1C4F00978();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = type metadata accessor for Configuration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v36 = *a1;
  v35 = *(a1 + 2);
  v16 = OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_localizedRelationshipTopicMap;
  sub_1C456902C(&qword_1EC0C2660, &qword_1C4F4B7C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F17CF0;
  *(inited + 32) = 0x30333838383151;
  *(inited + 40) = 0xE700000000000000;
  sub_1C448DE08(&unk_1F43DA650);
  *(inited + 48) = v18;
  *(inited + 56) = 0x38373832313251;
  *(inited + 64) = 0xE700000000000000;
  sub_1C448DE08(&unk_1F43DA680);
  *(inited + 72) = v19;
  *(inited + 80) = 0x3036353751;
  *(inited + 88) = 0xE500000000000000;
  sub_1C448DE08(&unk_1F43DA6B0);
  *(inited + 96) = v20;
  *(inited + 104) = 0x3536353751;
  *(inited + 112) = 0xE500000000000000;
  sub_1C448DE08(&unk_1F43DA700);
  *(inited + 120) = v21;
  *(inited + 128) = 0x32333237373151;
  *(inited + 136) = 0xE700000000000000;
  sub_1C448DE08(&unk_1F43DA750);
  *(inited + 144) = v22;
  *(inited + 152) = 0x34393138303351;
  *(inited + 160) = 0xE700000000000000;
  sub_1C448DE08(&unk_1F43DA780);
  *(inited + 168) = v23;
  *(inited + 176) = 0x3634313638303151;
  *(inited + 184) = 0xE900000000000035;
  sub_1C448DE08(&unk_1F43DA7B0);
  *(inited + 192) = v24;
  *(inited + 200) = 0x34393035393551;
  *(inited + 208) = 0xE700000000000000;
  sub_1C448DE08(&unk_1F43DA7E0);
  *(inited + 216) = v25;
  *(inited + 224) = 0x3434333833323951;
  *(inited + 232) = 0xE800000000000000;
  sub_1C448DE08(&unk_1F43DA810);
  *(inited + 240) = v26;
  *(inited + 248) = 0x3835373533323951;
  *(inited + 256) = 0xE800000000000000;
  sub_1C448DE08(&unk_1F43DA850);
  *(inited + 264) = v27;
  *(inited + 272) = 0x373035363751;
  *(inited + 280) = 0xE600000000000000;
  sub_1C448DE08(&unk_1F43DA890);
  *(inited + 288) = v28;
  *(inited + 296) = 0x373535363751;
  *(inited + 304) = 0xE600000000000000;
  sub_1C448DE08(&unk_1F43DA8C0);
  *(inited + 312) = v29;
  *(inited + 320) = 0x3738393030333251;
  *(inited + 328) = 0xE900000000000030;
  sub_1C448DE08(&unk_1F43DA8F0);
  *(inited + 336) = v30;
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  *(v4 + v16) = sub_1C4F00F28();
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames) = 0;
  *(v4 + 16) = v36;
  *(v4 + 32) = v35;
  *(v4 + 40) = *(a1 + 24);
  sub_1C449F008(a2, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_config, _s10ViewConfigVMa);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_store) = a3;
  type metadata accessor for GlobalKnowledgeStore(0);
  sub_1C449F008(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v15, type metadata accessor for Configuration);

  sub_1C48300AC(v15);

  v31 = sub_1C482DA4C();
  v32 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_localizedRelationshipTopicMap);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_localizedRelationshipTopicMap) = v31;

  sub_1C4A95964();

  sub_1C4400AEC();
  sub_1C449F280(a2, v33);
  return v4;
}

uint64_t sub_1C4A95F64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v5 + 16);
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v1;
  v8[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C4A98990, v8);
}

uint64_t sub_1C4A95FF8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames);
  }

  else
  {
    sub_1C448DE08(&unk_1F43DA9B8);
    v2 = v3;
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C4A96064()
{
  v496 = sub_1C4EFEEF8();
  v2 = sub_1C43FCDF8(v496);
  v469 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v447 - v8;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  sub_1C43FD2C8(v10);
  v464 = sub_1C4EFDE88();
  v11 = sub_1C43FCDF8(v464);
  v486 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  v20 = sub_1C43FD2C8(v19);
  v503 = type metadata accessor for GraphTriple(v20);
  v21 = sub_1C43FCDF8(v503);
  v500 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  sub_1C43FD2C8(v32);
  v508 = sub_1C4EFF0C8();
  v33 = sub_1C43FCDF8(v508);
  v488 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v447 - v41;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  v507 = v43;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  v495 = v45;
  v46 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v447 - v48;
  v506 = sub_1C4EFD548();
  v50 = sub_1C43FCDF8(v506);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v57 = v56 - v55;
  v58 = sub_1C4EFDE98();
  v59 = sub_1C43FCDF8(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v447 - v65;
  v514 = MEMORY[0x1E69E7CC0];
  v480 = v0;
  v67 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_store);
  sub_1C4EFD4C8();
  sub_1C4EFDCC8();
  (*(v52 + 8))(v57, v506);
  v458 = sub_1C4EFF8F8();
  sub_1C440BAA8(v49, 1, 1, v458);
  v68 = sub_1C498DB80();
  v460 = v49;
  v69 = v49;
  v70 = v500;
  sub_1C482ADC8(v69);
  v71 = *(v61 + 8);
  *(&v453 + 1) = v58;
  *&v453 = v61 + 8;
  v452 = v71;
  v71(v66, v58);
  v72 = v488;
  v459 = v67;
  sub_1C486DFC0();
  v73 = *(v68 + 16);
  v502 = v9;
  v505 = v74;
  v447 = v68;
  if (v73)
  {
    v509 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v75 = v509;
    v76 = *(v70 + 80);
    sub_1C43FC354();
    v78 = v68 + v77;
    v506 = *(v70 + 72);
    v504 = (v72 + 16);
    v501 = (v72 + 32);
    v79 = v508;
    v80 = i;
    v9 = v495;
    do
    {
      sub_1C44077E0();
      sub_1C449F008(v78, v80, v81);
      (*v504)(v9, v80, v79);
      sub_1C440F95C();
      sub_1C449F280(v80, v82);
      v509 = v75;
      v84 = *(v75 + 16);
      v83 = *(v75 + 24);
      v72 = v84 + 1;
      if (v84 >= v83 >> 1)
      {
        sub_1C43FCFE8(v83);
        sub_1C459D178();
        v80 = i;
        v75 = v509;
      }

      *(v75 + 16) = v72;
      sub_1C440460C();
      v86 = *(v85 + 80);
      sub_1C43FC354();
      (*(v88 + 32))(v75 + v87 + *(v88 + 72) * v84, v9, v79);
      v78 += v506;
      --v73;
    }

    while (v73);
    sub_1C4408F20();
  }

  else
  {
    v75 = MEMORY[0x1E69E7CC0];
  }

  v89 = 0;
  sub_1C440BEC0(*(v75 + 16));
  sub_1C440460C();
  v506 = v90 + 16;
  v92 = v91 + 56;
  v504 = (v90 + 8);
  v485 = (v90 + 32);
  v495 = MEMORY[0x1E69E7CC0];
  sub_1C440D73C();
  v489 = v75;
LABEL_9:
  while (v89 != v492)
  {
    if (v89 >= *(v75 + 16))
    {
      goto LABEL_230;
    }

    v94 = *(v93 + 80);
    sub_1C43FC354();
    i = v95;
    v97 = *(v96 + 72);
    v98 = *(v96 + 16);
    v100 = v507;
    v99 = v508;
    v98(v507, v75 + v95 + v97 * v89++, v508);
    v101 = v505;
    if (v505[2])
    {
      v501 = v89;
      v102 = v505[5];
      sub_1C4417670();
      sub_1C4502370(&qword_1EDDFE820, v103);
      v104 = sub_1C4F00FD8();
      v72 = ~(-1 << *(v101 + 32));
      while (1)
      {
        v9 = v104 & v72;
        if (((*(v92 + (((v104 & v72) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v104 & v72)) & 1) == 0)
        {
          break;
        }

        v105 = v508;
        v98(v42, v505[6] + v9 * v97, v508);
        sub_1C4417670();
        sub_1C4502370(&qword_1EDDFCC98, v106);
        v101 = sub_1C4F010B8();
        v107 = *v504;
        (*v504)(v42, v105);
        v104 = v9 + 1;
        if (v101)
        {
          v107(v507, v508);
          sub_1C4408F20();
          sub_1C440D73C();
          sub_1C440460C();
          v75 = v489;
          v89 = v501;
          goto LABEL_9;
        }
      }

      sub_1C4408F20();
      v100 = v507;
      v99 = v508;
      v89 = v501;
    }

    v108 = v99;
    v109 = *v485;
    (*v485)(v493, v100, v108);
    sub_1C4410278(&v514);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v101;
    v509 = v101;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v112 = *(v101 + 16);
      sub_1C4408714();
      sub_1C459D178();
      v111 = v509;
    }

    v75 = v489;
    v72 = *(v111 + 16);
    v113 = *(v111 + 24);
    if (v72 >= v113 >> 1)
    {
      sub_1C43FCFE8(v113);
      v501 = v109;
      sub_1C459D178();
      v109 = v501;
      v111 = v509;
    }

    *(v111 + 16) = v72 + 1;
    v495 = v111;
    v109(i + v111 + v72 * v97, v493, v508);
    sub_1C440D73C();
    sub_1C440460C();
  }

  sub_1C443F1AC();
  sub_1C45972E0();
  v116 = v114 + 56;
  v115 = *(v114 + 56);
  v117 = *(v114 + 32);
  sub_1C43FEC90();
  v120 = v119 & v118;
  v476 = OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_localizedRelationshipTopicMap;
  v449 = (v480 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_config);
  v122 = (v121 + 63) >> 6;
  v457 = *MEMORY[0x1E69A95C0];
  v456 = (v486 + 104);
  v455 = (v486 + 8);
  v501 = (v469 + 8);
  v479 = "entity_popularity_hour_of_day";
  v467 = v123;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v468 = xmmword_1C4F0D130;
  v454 = xmmword_1C4F0C890;
  v124 = v496;
  v451 = v116;
  v450 = v122;
LABEL_23:
  sub_1C440460C();
  if (v120)
  {
LABEL_28:
    v466 = (v120 - 1) & v120;
    v465 = v126;
    v128 = *(v467 + 48) + *(v125 + 72) * (__clz(__rbit64(v120)) | (v126 << 6));
    v507 = *(v125 + 16);
    v129 = v461;
    v130 = v508;
    v131 = v125;
    (v507)(v461, v128, v508);
    v132 = v481;
    (*(v131 + 32))(v481, v129, v130);
    sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
    v133 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v134 = swift_allocObject();
    *(v134 + 16) = v468;
    (v507)(v134 + v133, v132, v130);
    sub_1C4D51ABC();
    v507 = v135;
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    v136 = *(v469 + 72);
    v137 = (*(v469 + 80) + 32) & ~*(v469 + 80);
    *(swift_allocObject() + 16) = v454;
    sub_1C4EFEBF8();
    sub_1C4EFEE68();
    sub_1C4EFE2C8();
    sub_1C4D504A4();
    i = v138;
    v139 = *v456;
    v140 = v464;
    (*v456)(v471, v457, v464);
    sub_1C4426BC8();
    v139(v141);
    sub_1C4426BC8();
    v139(v142);
    v143 = v462;
    sub_1C4426BC8();
    v139(v144);
    v145 = v463;
    sub_1C4426BC8();
    v139(v146);
    v445 = v145;
    v446 = 0;
    v147 = v470;
    sub_1C4EFDCD8();

    v148 = *v455;
    (*v455)(v145, v140);
    v148(v143, v140);
    v148(v147, v140);
    v148(v472, v140);
    v148(v471, v140);
    v149 = sub_1C4410278(&v489);
    sub_1C440BAA8(v149, 1, 1, v458);
    v150 = sub_1C498DB80();
    sub_1C482ADC8(v148);
    v151 = 0;
    v507 = v150[2];
    v493 = MEMORY[0x1E69E7CC0];
    i = v150;
    while (v507 != v151)
    {
      if (v151 >= v150[2])
      {
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        swift_once();
        goto LABEL_219;
      }

      v152 = (*(v500 + 80) + 32) & ~*(v500 + 80);
      v143 = *(v500 + 72);
      sub_1C44077E0();
      sub_1C449F008(v153, v498, v154);
      sub_1C44352CC();
      sub_1C4EFEE68();
      sub_1C440B0B0();
      sub_1C4502370(&off_1EDDFCCA8, v155);
      sub_1C443FF00();
      sub_1C4F01578();
      v156 = v510;
      v157 = v509 == v511 && v510 == v512;
      if (v157)
      {
        sub_1C43FDCB4();
        v160(v72, v124);
      }

      else
      {
        v147 = sub_1C4F02938();
        sub_1C43FDCB4();
        v158(v72, v124);

        if ((v147 & 1) == 0)
        {
          sub_1C440F95C();
          sub_1C449F280(v498, v159);
          ++v151;
          goto LABEL_37;
        }
      }

      sub_1C45B1EE4(v498, v474);
      sub_1C442537C();
      v161 = swift_isUniquelyReferenced_nonNull_native();
      v513 = v156;
      if ((v161 & 1) == 0)
      {
        v162 = *(v156 + 16);
        sub_1C4408714();
        sub_1C459D7C8();
        v156 = v513;
      }

      v147 = *(v156 + 16);
      v163 = *(v156 + 24);
      if (v147 >= v163 >> 1)
      {
        sub_1C43FCFE8(v163);
        sub_1C459D7C8();
        v156 = v513;
      }

      ++v151;
      *(v156 + 16) = v147 + 1;
      v493 = v156;
      sub_1C45B1EE4(v474, v156 + v152 + v147 * v143);
LABEL_37:
      v150 = i;
    }

    sub_1C442537C();
    sub_1C440BEC0(v150[2]);
    if (v164)
    {
      sub_1C44336BC();
      sub_1C4411128(v165);
      v166 = v500;
      v167 = *(v500 + 80);
      sub_1C43FC354();
      v483 = v150 + v168;
      v169 = MEMORY[0x1E69E7CC8];
      do
      {
        if (v151 >= v150[2])
        {
          goto LABEL_226;
        }

        v170 = *(v166 + 72);
        sub_1C44077E0();
        sub_1C449F008(v171, v491, v172);
        v173 = sub_1C442BE24();
        sub_1C4405FD4(v173, v174);
        v509 = v169;
        sub_1C4418B7C();
        sub_1C43FC438();
        v9 = v177 + v178;
        if (__OFADD__(v177, v178))
        {
          goto LABEL_227;
        }

        v179 = v175;
        v180 = v176;
        sub_1C456902C(&qword_1EC0C2658, &qword_1C4F4B7C0);
        v150 = &v509;
        if (sub_1C4F02458())
        {
          v150 = v509;
          v181 = sub_1C4418B7C();
          v9 = v502;
          v166 = v500;
          if ((v180 & 1) != (v182 & 1))
          {
            goto LABEL_246;
          }

          v179 = v181;
        }

        else
        {
          sub_1C4408F20();
          v166 = v500;
        }

        sub_1C442537C();
        v183 = v509;
        if (v180)
        {
          v169 = v509;
          v184 = *(v509[7] + 24 * v179 + 8);
          sub_1C441C434();
          *v185 = v173;
          *(v185 + 8) = v186;
          *(v185 + 16) = v1;
        }

        else
        {
          v509[(v179 >> 6) + 8] |= 1 << v179;
          v187 = (*(v183 + 48) + 16 * v179);
          *v187 = v143;
          v187[1] = v147;
          v188 = *(v183 + 56) + 24 * v179;
          sub_1C441C434();
          *v190 = v173;
          *(v190 + 8) = v191;
          *(v190 + 16) = v1;
          v192 = *(v189 + 16);
          v193 = __OFADD__(v192, 1);
          v194 = v192 + 1;
          if (v193)
          {
            goto LABEL_238;
          }

          v169 = v189;
          *(v189 + 16) = v194;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        ++v151;
        sub_1C440F95C();
        sub_1C449F280(v491, v195);
        sub_1C444FF20();
        v124 = *(v196 - 256);
      }

      while (!v157);
    }

    else
    {
      v169 = MEMORY[0x1E69E7CC8];
      v166 = v500;
    }

    v478 = v169;

    v197 = 0;
    v493 = MEMORY[0x1E69E7CC0];
    while (v507 != v197)
    {
      if (v197 >= i[2])
      {
        goto LABEL_223;
      }

      v198 = (*(v166 + 80) + 32) & ~*(v166 + 80);
      v143 = *(v166 + 72);
      sub_1C44077E0();
      sub_1C449F008(v199, v497, v200);
      sub_1C44352CC();
      sub_1C4EFE2C8();
      sub_1C440B0B0();
      sub_1C4502370(&off_1EDDFCCA8, v201);
      sub_1C443FF00();
      sub_1C4F01578();
      v202 = v512;
      if (v509 == v511 && v510 == v512)
      {
        sub_1C43FDCB4();
        v206(v9, v124);
      }

      else
      {
        v147 = sub_1C4F02938();
        sub_1C43FDCB4();
        v204(v9, v124);

        if ((v147 & 1) == 0)
        {
          sub_1C440F95C();
          sub_1C449F280(v497, v205);
          v197 = (v197 + 1);
          continue;
        }
      }

      sub_1C45B1EE4(v497, v473);
      sub_1C4410278(&v512);
      v207 = swift_isUniquelyReferenced_nonNull_native();
      v208 = v202;
      v513 = v202;
      if ((v207 & 1) == 0)
      {
        v209 = *(v202 + 16);
        sub_1C4408714();
        sub_1C459D7C8();
        v208 = v513;
      }

      v147 = *(v208 + 16);
      v210 = *(v208 + 24);
      if (v147 >= v210 >> 1)
      {
        sub_1C43FCFE8(v210);
        sub_1C459D7C8();
        v208 = v513;
      }

      v197 = (v197 + 1);
      *(v208 + 16) = v147 + 1;
      v493 = v208;
      sub_1C45B1EE4(v473, v208 + v198 + v147 * v143);
    }

    sub_1C440BEC0(*(v493 + 16));
    if (v211)
    {
      sub_1C44336BC();
      sub_1C4411128(v212);
      v213 = *(v166 + 80);
      sub_1C43FC354();
      v483 = (v214 + v215);
      v216 = MEMORY[0x1E69E7CC8];
      do
      {
        if (v197 >= *(v214 + 16))
        {
          goto LABEL_228;
        }

        v217 = *(v166 + 72);
        sub_1C44077E0();
        sub_1C449F008(v218, v490, v219);
        v220 = sub_1C442BE24();
        sub_1C4405FD4(v220, v221);
        v509 = v216;
        sub_1C4418B7C();
        sub_1C43FC438();
        v9 = v224 + v225;
        if (__OFADD__(v224, v225))
        {
          goto LABEL_229;
        }

        v226 = v222;
        v227 = v223;
        sub_1C456902C(&qword_1EC0C2658, &qword_1C4F4B7C0);
        if (sub_1C4F02458())
        {
          v228 = sub_1C4418B7C();
          v9 = v502;
          if ((v227 & 1) != (v229 & 1))
          {
            goto LABEL_246;
          }

          v226 = v228;
        }

        else
        {
          sub_1C4408F20();
        }

        v216 = v509;
        if (v227)
        {
          v230 = *(v509[7] + 24 * v226 + 8);
          sub_1C441C434();
          *v231 = v220;
          *(v231 + 8) = v232;
          *(v231 + 16) = v1;
        }

        else
        {
          v509[(v226 >> 6) + 8] |= 1 << v226;
          v233 = (*(v216 + 48) + 16 * v226);
          *v233 = v143;
          v233[1] = v147;
          v234 = *(v216 + 56) + 24 * v226;
          sub_1C441C434();
          *v235 = v220;
          *(v235 + 8) = v236;
          *(v235 + 16) = v1;
          v237 = *(v216 + 16);
          v193 = __OFADD__(v237, 1);
          v238 = v237 + 1;
          if (v193)
          {
            goto LABEL_239;
          }

          *(v216 + 16) = v238;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v197 = (v197 + 1);
        sub_1C440F95C();
        sub_1C449F280(v490, v239);
        sub_1C444FF20();
        v124 = *(v240 - 256);
        v166 = v500;
        v214 = v493;
      }

      while (!v157);
    }

    else
    {
      v216 = MEMORY[0x1E69E7CC8];
    }

    v242 = *(v478 + 64);
    v241 = v478 + 64;
    v243 = *(v478 + 32);
    sub_1C43FEC90();
    v246 = v245 & v244;
    v248 = (v247 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v249 = 0;
    v495 = MEMORY[0x1E69E7CC0];
    v493 = v216;
    if (v246)
    {
      while (2)
      {
        v250 = v249;
        v251 = v478;
LABEL_97:
        v252 = __clz(__rbit64(v246));
        v246 &= v246 - 1;
        v253 = v252 | (v250 << 6);
        v254 = *(v251 + 56) + 24 * v253;
        v255 = *(v254 + 8);
        v492 = *v254;
        v1 = *(v254 + 16);
        if (*(v216 + 16))
        {
          v256 = (*(v251 + 48) + 16 * v253);
          v257 = *v256;
          v258 = v256[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C445FAA8(v257, v258);
          v260 = v259;

          if (v260)
          {

            goto LABEL_100;
          }
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        sub_1C443F1AC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C4409FB4();
          v265 = *(v264 + 16);
          sub_1C4408714();
          sub_1C458B680();
          sub_1C441BC04(v266);
        }

        sub_1C441E624();
        if (v262)
        {
          sub_1C43FCFE8(v261);
          sub_1C4409FB4();
          sub_1C458B680();
          sub_1C441BC04(v267);
        }

        sub_1C4414E44();
        *(v263 + 32) = v492;
        *(v263 + 40) = v255;
        *(v263 + 48) = v1;
LABEL_100:
        v249 = v250;
        v124 = v496;
        v216 = v493;
        if (!v246)
        {
          break;
        }

        continue;
      }
    }

    v251 = v478;
    while (1)
    {
      v250 = v249 + 1;
      if (__OFADD__(v249, 1))
      {
        goto LABEL_224;
      }

      if (v250 >= v248)
      {
        break;
      }

      v246 = *(v241 + 8 * v250);
      ++v249;
      if (v246)
      {
        goto LABEL_97;
      }
    }

    v268 = 0;
    v270 = v216 + 64;
    v269 = *(v216 + 64);
    v271 = *(v216 + 32);
    sub_1C43FEC90();
    v72 = v273 & v272;
    v275 = (v274 + 63) >> 6;
    while (1)
    {
      v276 = v268;
      if (!v72)
      {
        break;
      }

      while (1)
      {
        v268 = v276;
LABEL_114:
        sub_1C4410218();
        v279 = v278 | (v268 << 6);
        v280 = *(v216 + 56) + 24 * v279;
        v282 = *v280;
        v281 = *(v280 + 8);
        v1 = *(v280 + 16);
        if (!*(v277 + 16))
        {
          break;
        }

        v283 = (*(v216 + 48) + 16 * v279);
        v284 = *v283;
        v285 = v283[1];
        v216 = v277;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C445FAA8(v284, v285);
        v9 = v286;
        sub_1C442537C();

        if ((v9 & 1) == 0)
        {
          goto LABEL_118;
        }

        v276 = v268;
        v9 = v502;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_118:
      sub_1C443F1AC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4409FB4();
        v290 = *(v289 + 16);
        sub_1C4408714();
        sub_1C458B680();
        sub_1C441BC04(v291);
      }

      sub_1C4408F20();
      sub_1C441E624();
      if (v262)
      {
        sub_1C43FCFE8(v287);
        sub_1C4409FB4();
        sub_1C458B680();
        sub_1C441BC04(v292);
      }

      sub_1C4414E44();
      *(v288 + 32) = v282;
      *(v288 + 40) = v281;
      *(v288 + 48) = v1;
      v124 = v496;
      sub_1C442537C();
    }

    while (1)
    {
      v268 = v276 + 1;
      if (__OFADD__(v276, 1))
      {
        goto LABEL_225;
      }

      if (v268 >= v275)
      {
        break;
      }

      v72 = *(v270 + 8 * v268);
      ++v276;
      if (v72)
      {
        goto LABEL_114;
      }
    }

    if (v507)
    {
      v293 = *(v500 + 80);
      sub_1C43FC354();
      v295 = i + v294;
      v297 = *(v296 + 72);
      v298 = v482;
      sub_1C440D73C();
      v299 = v487;
      while (1)
      {
        sub_1C44077E0();
        sub_1C449F008(v295, v299, v300);
        sub_1C44352CC();
        sub_1C4EFEBF8();
        sub_1C440B0B0();
        sub_1C4502370(&off_1EDDFCCA8, v301);
        sub_1C4F01578();
        sub_1C4F01578();
        if (v509 == v511 && v510 == v512)
        {
          break;
        }

        v303 = sub_1C4F02938();
        v304 = v298;
        v305 = v303;
        (*v501)(v304, v124);

        if (v305)
        {
          goto LABEL_132;
        }

LABEL_137:
        sub_1C440F95C();
        v299 = v487;
        sub_1C449F280(v487, v320);
        v295 += v297;
        v157 = v507 == 1;
        v507 = (v507 - 1);
        v298 = v482;
        if (v157)
        {
          goto LABEL_141;
        }
      }

      sub_1C43FDCB4();
      v306(v298, v124);

LABEL_132:
      v307 = v503;
      v308 = v487;
      v309 = (v487 + *(v503 + 32));
      v310 = *v309;
      v311 = v309[1];
      v312 = sub_1C4F00FF8();
      v314 = v313;
      v1 = *(v308 + *(v307 + 40));
      v315 = v495;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v321 = *(v315 + 16);
        sub_1C4408714();
        sub_1C458B680();
        v315 = v322;
      }

      v495 = v315;
      v317 = *(v315 + 16);
      v316 = *(v315 + 24);
      if (v317 >= v316 >> 1)
      {
        sub_1C43FCFE8(v316);
        sub_1C4409FB4();
        sub_1C458B680();
        sub_1C441BC04(v323);
      }

      v318 = v495;
      *(v495 + 16) = v317 + 1;
      v319 = v318 + 24 * v317;
      *(v319 + 32) = v312;
      *(v319 + 40) = v314;
      *(v319 + 48) = v1;
      goto LABEL_137;
    }

    sub_1C440D73C();
LABEL_141:

    v324 = sub_1C4F00F28();
    v484 = *(v495 + 16);
    if (!v484)
    {
      goto LABEL_193;
    }

    v325 = 0;
    v483 = (v495 + 32);
    v326 = v480;
LABEL_143:
    if (v325 >= *(v495 + 16))
    {
      goto LABEL_237;
    }

    v492 = v324;
    v327 = &v483[24 * v325];
    v329 = *v327;
    v328 = *(v327 + 1);
    v1 = *(v327 + 2);
    v330 = *(v326 + v476);
    v486 = v325 + 1;
    v331 = v330 + 64;
    v332 = 1 << *(v330 + 32);
    if (v332 < 64)
    {
      v333 = ~(-1 << v332);
    }

    else
    {
      v333 = -1;
    }

    v334 = v333 & *(v330 + 64);
    v489 = (v332 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v335 = 0;
    for (i = v330; ; v330 = i)
    {
      do
      {
LABEL_148:
        if (!v334)
        {
          v324 = v492;
          while (1)
          {
            v336 = v335 + 1;
            if (__OFADD__(v335, 1))
            {
              __break(1u);
              goto LABEL_218;
            }

            if (v336 >= v489)
            {
              break;
            }

            v334 = *(v331 + 8 * v336);
            ++v335;
            if (v334)
            {
              v335 = v336;
              goto LABEL_154;
            }
          }

          v325 = v486;
          v326 = v480;
          v124 = v496;
          v72 = v494;
          if (v486 == v484)
          {
LABEL_193:
            v376 = *(v324 + 16);
            if (v376)
            {
              v509 = MEMORY[0x1E69E7CC0];
              sub_1C459D7A8(0, v376, 0);
              v507 = v509;
              v377 = sub_1C4703354(v324);
              v379 = v378;
              v381 = v380;
              v9 = v324 + 64;
              v382 = sub_1C4577DBC();
              v383 = v379;
              v489 = v382;
              v384 = 0;
              v385 = v449[1];
              v486 = *v449;
              v484 = v385;
              v477 = v379;
              v475 = v324 + 72;
              v478 = v376;
              v483 = (v324 + 64);
              do
              {
                if (v377 < 0 || v377 >= 1 << *(v324 + 32))
                {
                  goto LABEL_231;
                }

                v386 = v377 >> 6;
                if ((*(v9 + 8 * (v377 >> 6)) & (1 << v377)) == 0)
                {
                  goto LABEL_232;
                }

                if (*(v324 + 36) != v383)
                {
                  goto LABEL_233;
                }

                i = v383;
                LODWORD(v492) = v381;
                v493 = v384;
                v387 = (*(v324 + 48) + 16 * v377);
                v388 = *v387;
                v389 = v387[1];
                v1 = *(*(v324 + 56) + 8 * v377);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v390 = v484;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v391 = sub_1C4EFF048();
                v392 = v324;
                v394 = v393;
                v395 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
                v396 = sub_1C4673B1C(v486, v390, 0xD000000000000012, v479 | 0x8000000000000000, v391, v394);
                v397 = sub_1C4594E18();
                v398 = v397;
                v399 = v507;
                v509 = v507;
                v401 = v507[2];
                v400 = v507[3];
                v72 = v401 + 1;
                if (v401 >= v400 >> 1)
                {
                  v411 = sub_1C43FCFE8(v400);
                  v397 = sub_1C459D7A8(v411, v401 + 1, 1);
                  v399 = v509;
                }

                *(v399 + 16) = v72;
                v402 = v399 + 24 * v401;
                *(v402 + 32) = v396;
                *(v402 + 40) = v398;
                *(v402 + 48) = v1;
                v403 = 1 << *(v392 + 32);
                if (v377 >= v403)
                {
                  goto LABEL_234;
                }

                v324 = v392;
                v9 = v483;
                v404 = *&v483[8 * v386];
                if ((v404 & (1 << v377)) == 0)
                {
                  goto LABEL_235;
                }

                if (*(v324 + 36) != i)
                {
                  goto LABEL_236;
                }

                v507 = v399;
                v405 = v404 & (-2 << (v377 & 0x3F));
                if (v405)
                {
                  v403 = __clz(__rbit64(v405)) | v377 & 0x7FFFFFFFFFFFFFC0;
                  sub_1C440D73C();
                }

                else
                {
                  v406 = v386 << 6;
                  v407 = v386 + 1;
                  v408 = (v475 + 8 * v386);
                  v72 = v494;
                  while (v407 < (v403 + 63) >> 6)
                  {
                    v410 = *v408++;
                    v409 = v410;
                    v406 += 64;
                    ++v407;
                    if (v410)
                    {
                      sub_1C445E950(v397, i);
                      v403 = __clz(__rbit64(v409)) + v406;
                      goto LABEL_211;
                    }
                  }

                  sub_1C445E950(v397, i);
                }

LABEL_211:
                v381 = 0;
                v384 = v493 + 1;
                v377 = v403;
                v383 = v477;
              }

              while (v493 + 1 != v478);
              sub_1C443F1AC();

              sub_1C49D3924(v507);
              v412 = sub_1C440FA40();
              v413(v412);
              v124 = v496;
              sub_1C4408F20();
            }

            else
            {
              v414 = sub_1C440FA40();
              v415(v414);
            }

            (*v504)(v481, v508);
            v116 = v451;
            v122 = v450;
            v120 = v466;
            goto LABEL_23;
          }

          goto LABEL_143;
        }

LABEL_154:
        sub_1C4410218();
        v338 = v337 | (v335 << 6);
        v339 = *(*(v330 + 56) + 8 * v338);
      }

      while (!*(v339 + 16));
      v340 = (*(v330 + 48) + 16 * v338);
      v341 = v340[1];
      v493 = *v340;
      v342 = *(v339 + 40);
      sub_1C4F02AF8();
      v507 = v341;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v343 = sub_1C4F02B68();
      v344 = ~(-1 << *(v339 + 32));
      do
      {
        v9 = v343 & v344;
        if (((*(v339 + 56 + (((v343 & v344) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v343 & v344)) & 1) == 0)
        {

          sub_1C4408F20();
LABEL_176:

          goto LABEL_177;
        }

        v345 = (*(v339 + 48) + 16 * v9);
        if (*v345 == v329 && v345[1] == v328)
        {
          break;
        }

        v347 = sub_1C4F02938();
        v343 = v9 + 1;
      }

      while ((v347 & 1) == 0);

      if (qword_1EC0B7038 != -1)
      {
        swift_once();
      }

      v348 = qword_1EC152B68;
      v9 = v502;
      if (!*(qword_1EC152B68 + 16))
      {
        goto LABEL_176;
      }

      v349 = sub_1C445FAA8(v493, v507);
      v351 = v350;

      v330 = i;
      if ((v351 & 1) == 0)
      {
        goto LABEL_148;
      }

      v352 = (*(v348 + 56) + 16 * v349);
      v353 = *v352;
      v354 = v352[1];
      v355 = v492;
      v356 = *(v492 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v356 && (v357 = sub_1C445FAA8(v353, v354), (v358 & 1) != 0))
      {
        if (*(*(v355 + 56) + 8 * v357) >= v1)
        {
          goto LABEL_176;
        }

        v359 = swift_isUniquelyReferenced_nonNull_native();
        v478 = sub_1C442E4B8(v359);
        sub_1C43FC438();
        if (__OFADD__(v361, v362))
        {
          goto LABEL_243;
        }

        LODWORD(v492) = v360;
        sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        if (sub_1C4416334())
        {
          sub_1C447F268();
          sub_1C441EE60();
          if (!v157)
          {
            goto LABEL_246;
          }

          v355 = v363;
          if (v364)
          {
            goto LABEL_189;
          }
        }

        else
        {
          sub_1C440523C();
          if (v374)
          {
            goto LABEL_189;
          }
        }

        sub_1C4432824();
        if (v193)
        {
          goto LABEL_244;
        }
      }

      else
      {
        v365 = swift_isUniquelyReferenced_nonNull_native();
        v478 = sub_1C442E4B8(v365);
        sub_1C43FC438();
        if (__OFADD__(v367, v368))
        {
          goto LABEL_241;
        }

        LODWORD(v492) = v366;
        sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        if (sub_1C4416334())
        {
          sub_1C447F268();
          sub_1C441EE60();
          if (!v157)
          {
LABEL_246:
            sub_1C4F029F8();
            __break(1u);
            return;
          }

          v355 = v369;
          if (v370)
          {
LABEL_189:

            sub_1C440BEC0(v509);
            *(*(v375 + 56) + 8 * v355) = v1;
            continue;
          }
        }

        else
        {
          sub_1C440523C();
          if (v371)
          {
            goto LABEL_189;
          }
        }

        sub_1C4432824();
        if (v193)
        {
          goto LABEL_242;
        }
      }

      v492 = v373;
      *(v373 + 16) = v372;
LABEL_177:
      ;
    }
  }

  while (1)
  {
    v127 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      goto LABEL_240;
    }

    if (v127 >= v122)
    {
      break;
    }

    v120 = *(v116 + 8 * v127);
    ++v126;
    if (v120)
    {
      v126 = v127;
      goto LABEL_28;
    }
  }

  sub_1C4410278(&v496);

  v416 = v480[2];
  v417 = v480[3];
  v419 = v480[4];
  v418 = v480[5];
  v420 = v480[6];
  v421 = v514;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4811A54(v421, v422, v423, v424, v425, v426, v427, v428, v447, v448, v449, v450, v451, v452, v453, v454, SBYTE8(v454));
  v430 = v429;

  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = v468;
  *(inited + 32) = v416;
  *(inited + 40) = v417;
  v432 = *(v420 + 16);
  *(&v447 - 6) = MEMORY[0x1EEE9AC00](inited);
  *(&v447 - 5) = v419;
  *(&v447 - 4) = v418;
  *(&v447 - 3) = v420;
  v445 = v430;
  v433 = v448;
  sub_1C4418704(sub_1C4A989BC, (&v447 - 8), v434, v435, v436, v437, v438, v439, v447, v448);
  if (v433)
  {

    swift_setDeallocating();
    sub_1C44DEE40();

    return;
  }

LABEL_218:

  swift_setDeallocating();
  sub_1C44DEE40();

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_245;
  }

LABEL_219:
  v440 = sub_1C4F00978();
  sub_1C442B738(v440, qword_1EDE2DF70);

  v441 = sub_1C4F00968();
  v442 = sub_1C4F01CB8();

  if (os_log_type_enabled(v441, v442))
  {
    v443 = swift_slowAlloc();
    v444 = swift_slowAlloc();
    v509 = v444;
    *v443 = 136315138;
    *(v443 + 4) = sub_1C441D828(*v449, v449[1], &v509);
    _os_log_impl(&dword_1C43F8000, v441, v442, "SignalView %s: Wrote features", v443, 0xCu);
    sub_1C440962C(v444);
    MEMORY[0x1C6942830](v444, -1, -1);
    MEMORY[0x1C6942830](v443, -1, -1);
  }
}

void *sub_1C4A98664()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C4400AEC();
  sub_1C449F280(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_store);

  v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_localizedRelationshipTopicMap);

  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C4A986EC()
{
  sub_1C4A98664();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeopleNameSignal()
{
  result = qword_1EC0C2648;
  if (!qword_1EC0C2648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A98798()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4A98858()
{
  sub_1C4A96064();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4A988D0()
{
  sub_1C4A95F64();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Person.mapLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4A98A44()
{
  if (qword_1EC0B70C0 != -1)
  {
    swift_once();
  }

  qword_1EC0C2668 = qword_1EC0C3708;
  *algn_1EC0C2670 = *&qword_1EC0C3710;
  qword_1EC0C2680 = qword_1EC0C3720;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static Person.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7040 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0C2680;
  *a1 = qword_1EC0C2668;
  *(a1 + 8) = *algn_1EC0C2670;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t Person.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4A9954C(uint64_t a1)
{
  v2 = sub_1C4A99B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A99588(uint64_t a1)
{
  v2 = sub_1C4A99B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Person.encode(to:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C2688, &unk_1C4F4B7D0);
  v5 = sub_1C43FFC58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v18 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v18[2] = v1[3];
  v19 = v14;
  v18[1] = v1[4];
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A99B14();
  sub_1C4F02BF8();
  v24 = 0;
  v16 = v20;
  sub_1C4F02798();
  if (!v16)
  {
    v21 = v19;
    v23 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
    v22 = 2;
    sub_1C4F02738();
  }

  return (*(v7 + 8))(v11, v2);
}

uint64_t Person.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0C2698, &qword_1C4F4B7E0);
  v7 = sub_1C43FFC58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v23 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A99B14();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v29 = 0;
  v15 = sub_1C4F02678();
  v25 = v16;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v28 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v24 = v26;
  v27 = 2;
  v17 = sub_1C4F02618();
  v19 = v18;
  v20 = v17;
  (*(v9 + 8))(v13, v3);
  v21 = v25;
  *a2 = v15;
  a2[1] = v21;
  a2[2] = v24;
  a2[3] = v20;
  a2[4] = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t sub_1C4A99AB0(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

unint64_t sub_1C4A99B14()
{
  result = qword_1EC0C2690;
  if (!qword_1EC0C2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2690);
  }

  return result;
}

unint64_t sub_1C4A99B68(uint64_t a1)
{
  result = sub_1C4A99B90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4A99B90()
{
  result = qword_1EC0C26A0;
  if (!qword_1EC0C26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26A0);
  }

  return result;
}

unint64_t sub_1C4A99BE4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4A99C14();
  result = sub_1C4A99C68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4A99C14()
{
  result = qword_1EC0C26A8;
  if (!qword_1EC0C26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26A8);
  }

  return result;
}

unint64_t sub_1C4A99C68()
{
  result = qword_1EC0C26B0;
  if (!qword_1EC0C26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A99DAC()
{
  result = qword_1EC0C26B8;
  if (!qword_1EC0C26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26B8);
  }

  return result;
}

unint64_t sub_1C4A99E04()
{
  result = qword_1EC0C26C0;
  if (!qword_1EC0C26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26C0);
  }

  return result;
}

unint64_t sub_1C4A99E5C()
{
  result = qword_1EC0C26C8;
  if (!qword_1EC0C26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26C8);
  }

  return result;
}

uint64_t sub_1C4A99EB0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v2)
        {
          if (v2 != 1)
          {
            sub_1C44237C4();
            while (1)
            {
              sub_1C4401E84();
              if (!v7 & v9)
              {
                break;
              }

              sub_1C44035F0();
              if (!v7)
              {
                break;
              }

              v8 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              sub_1C4414AC0();
              if (v7)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          while (1)
          {
            sub_1C4401E84();
            if (!v7 & v9)
            {
              break;
            }

            sub_1C44035F0();
            if (!v7)
            {
              break;
            }

            v8 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            sub_1C4414AC0();
            if (v7)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if (v2)
      {
        if (v2 != 1)
        {
          sub_1C44237C4();
          while (1)
          {
            sub_1C4401E84();
            if (!v7 & v9)
            {
              break;
            }

            sub_1C44035F0();
            if (!v7)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            sub_1C4414AC0();
            if (v7)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v4 = sub_1C4F022F8();
      }

      result = sub_1C444151C(v4);
      if (v7)
      {
        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v8 = 0;
            if (result)
            {
              sub_1C441DDEC();
              while (1)
              {
                sub_1C4401E84();
                if (!v7 & v9)
                {
                  goto LABEL_72;
                }

                sub_1C44035F0();
                if (!v7)
                {
                  goto LABEL_72;
                }

                v8 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_72;
                }

                sub_1C4414AC0();
                if (v7)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_72;
        }

        goto LABEL_83;
      }

      if (v6 != 45)
      {
        if (v5)
        {
          v8 = 0;
          if (result)
          {
            v19 = 10;
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_72;
              }

              v21 = 10 * v8;
              if ((v8 * v19) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_72;
              }

              v8 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_72;
              }

              result = sub_1C441AFD4(result);
              if (v7)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_72:
        v8 = 0;
        v12 = 1;
        goto LABEL_73;
      }

      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            sub_1C441DDEC();
            while (1)
            {
              sub_1C4401E84();
              if (!v7 & v9)
              {
                goto LABEL_72;
              }

              sub_1C44035F0();
              if (!v7)
              {
                goto LABEL_72;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_72;
              }

              sub_1C4414AC0();
              if (v7)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_63:
          v12 = 0;
LABEL_73:
          v24 = v12;
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_1C4AA09B0(result, a2, 10);
  v8 = v25;
  v24 = v26;
LABEL_74:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1C4A9A108()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1C4EF97C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1C4EF92B8();
  sub_1C44F9918(v6, qword_1EC0C26D0);
  sub_1C442B738(v6, qword_1EC0C26D0);
  sub_1C4EF97B8();
  sub_1C440BAA8(v3, 1, 1, v4);
  return sub_1C4EF92A8();
}

uint64_t static PersonalKnowledgeResult.typeDisplayRepresentation.modify()
{
  if (qword_1EC0B7048 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4EF92B8();
  sub_1C442B738(v0, qword_1EC0C26D0);
  sub_1C4404618();
  return sub_1C443598C();
}

void *sub_1C4A9A30C(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1C4A9A344(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v6, a2, sizeof(v6));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4813DCC(v6, __dst);
  PersonalKnowledgeResult.answerValue.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C4AA127C(__dst);
}

uint64_t (*PersonalKnowledgeResult.answerValue.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *v0;
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4A9A440;
}

uint64_t PersonalKnowledgeResult.answerValueInteger.getter()
{
  v1 = *(v0 + 8);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.answerValueInteger.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.answerValueDouble.getter()
{
  v1 = *(v0 + 16);
  sub_1C4EF9138();
  return v3;
}

uint64_t sub_1C4A9A580(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  memcpy(v10, a2, sizeof(v10));
  sub_1C4813DCC(v10, __dst);
  a5(v7, v8);
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C4AA127C(__dst);
}

uint64_t (*PersonalKnowledgeResult.answerValueDouble.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.answerValueDate.setter()
{
  v1 = sub_1C4404084();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4401780();
  v7 = *(v0 + 24);
  sub_1C4405254();
  sub_1C4EF9148();
  return sub_1C445E970();
}

uint64_t (*PersonalKnowledgeResult.answerValueDate.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t sub_1C4A9A7F8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(_BYTE *))
{
  v12 = sub_1C456902C(a5, a6);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19[-v16];
  sub_1C445FFF0(a1, &v19[-v16], a5, a6);
  memcpy(v19, a2, sizeof(v19));
  sub_1C4813DCC(v19, v20);
  a7(v17);
  memcpy(v20, a2, sizeof(v20));
  return sub_1C4AA127C(v20);
}

uint64_t PersonalKnowledgeResult.answerValueDuration.setter()
{
  v1 = sub_1C4404084();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4401780();
  v7 = *(v0 + 32);
  sub_1C4405254();
  sub_1C4EF9148();
  return sub_1C445E970();
}

uint64_t (*PersonalKnowledgeResult.answerValueDuration.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t sub_1C4A9AA08@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalKnowledgeResult.answerValueType.getter();
  *a1 = v3;
  return result;
}

uint64_t PersonalKnowledgeResult.answerValueType.setter(char *a1)
{
  v2 = *(v1 + 40);
  v4 = *a1;
  return sub_1C4EF9148();
}

uint64_t (*PersonalKnowledgeResult.answerValueType.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t sub_1C4A9AB1C@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalKnowledgeResult.answerAttribute.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1C4A9AB58(char *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v9 = v7;
  sub_1C4813DCC(__dst, v11);
  a5(&v9);
  memcpy(v11, a2, sizeof(v11));
  return sub_1C4AA127C(v11);
}

uint64_t PersonalKnowledgeResult.answerAttribute.setter(char *a1)
{
  v2 = *(v1 + 48);
  v4 = *a1;
  return sub_1C4EF9148();
}

uint64_t (*PersonalKnowledgeResult.answerAttribute.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t sub_1C4A9ACA8@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalKnowledgeResult.answerComputation.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1C4A9ACE4(char *a1, const void *a2)
{
  v3 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v5 = v3;
  sub_1C4813DCC(__dst, v7);
  PersonalKnowledgeResult.answerComputation.setter(&v5);
  memcpy(v7, a2, sizeof(v7));
  return sub_1C4AA127C(v7);
}

uint64_t PersonalKnowledgeResult.answerComputation.setter(char *a1)
{
  v2 = *(v1 + 56);
  v4 = *a1;
  return sub_1C4EF9148();
}

uint64_t (*PersonalKnowledgeResult.answerComputation.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.answerSource.getter()
{
  v1 = *(v0 + 64);
  sub_1C4EF9138();
  return v3;
}

uint64_t sub_1C4A9AE3C(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4813DCC(v5, __dst);
  PersonalKnowledgeResult.answerSource.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C4AA127C(__dst);
}

uint64_t (*PersonalKnowledgeResult.answerSource.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.displayRepresentation.getter()
{
  v1 = *v0;
  sub_1C4EF9138();
  return sub_1C4EF9228();
}

uint64_t _s24IntelligencePlatformCore23PersonalKnowledgeResultV11answerValueSSvg_0()
{
  v1 = *v0;
  sub_1C4EF9138();
  return v3;
}

uint64_t PersonalKnowledgeResult.name.getter()
{
  v1 = *(v0 + 72);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.name.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.firstName.getter()
{
  v1 = *(v0 + 80);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.firstName.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.lastName.getter()
{
  v1 = *(v0 + 88);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.lastName.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.phoneNumber.getter()
{
  v1 = *(v0 + 96);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.phoneNumber.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.emailAddress.getter()
{
  v1 = *(v0 + 104);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.emailAddress.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 104);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.to.getter()
{
  v1 = *(v0 + 112);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.to.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 112);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.from.getter()
{
  v1 = *(v0 + 120);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.from.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 120);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.relationshipName.getter()
{
  v1 = *(v0 + 128);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.relationshipName.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 128);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.address.getter()
{
  v1 = *(v0 + 136);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.address.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 136);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.startDate.setter()
{
  v1 = sub_1C4404084();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4401780();
  v7 = *(v0 + 144);
  sub_1C4405254();
  sub_1C4EF9148();
  return sub_1C445E970();
}

uint64_t (*PersonalKnowledgeResult.startDate.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 144);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.endDate.setter()
{
  v1 = sub_1C4404084();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4401780();
  v7 = *(v0 + 152);
  sub_1C4405254();
  sub_1C4EF9148();
  return sub_1C445E970();
}

uint64_t (*PersonalKnowledgeResult.endDate.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 152);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.app.getter()
{
  v1 = *(v0 + 160);
  sub_1C4EF9138();
  return v3;
}

uint64_t (*PersonalKnowledgeResult.app.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 160);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.interest.getter()
{
  v1 = *(v0 + 168);
  sub_1C4EF9138();
  return v3;
}

uint64_t sub_1C4A9BAF0(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  memcpy(v11, a2, sizeof(v11));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4813DCC(v11, __dst);
  v9 = sub_1C4404084();
  a5(v9);
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C4AA127C(__dst);
}

uint64_t (*PersonalKnowledgeResult.interest.modify())()
{
  v2 = sub_1C43FF4CC();
  v3 = sub_1C4A9A30C(v2);
  sub_1C4408F2C(v3);
  v4 = *(v0 + 168);
  *(v1 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

void sub_1C4A9BBF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t PersonalKnowledgeResult.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C4EF97C8();
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C456902C(&qword_1EC0C2738, &qword_1C4F4B9E0);
  sub_1C442D148();
  sub_1C4EF97B8();
  *a1 = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2740, &qword_1C4F4B9E8);
  v9 = sub_1C442D148();
  sub_1C441CCDC(v9);
  sub_1C4EF97B8();
  a1[1] = sub_1C4EF91B8();
  sub_1C456902C(&qword_1EC0C2748, &qword_1C4F4B9F0);
  sub_1C4409FC0();
  sub_1C4EF97B8();
  a1[2] = sub_1C4EF91A8();
  sub_1C456902C(&qword_1EC0C2750, &qword_1C4F4B9F8);
  sub_1C4EF97B8();
  a1[3] = sub_1C4EF9188();
  sub_1C456902C(&qword_1EC0C2758, &qword_1C4F4BA00);
  sub_1C44352DC();
  sub_1C4EF97B8();
  a1[4] = MEMORY[0x1C6937E60](v8);
  sub_1C456902C(&qword_1EC0C2760, &qword_1C4F4BA08);
  sub_1C442D148();
  sub_1C4EF97B8();
  sub_1C4A9C0DC();
  a1[5] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2770, &qword_1C4F4BA10);
  sub_1C4430078();
  sub_1C4EF97B8();
  sub_1C4A9C130();
  a1[6] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2780, &qword_1C4F4BA18);
  sub_1C4430078();
  sub_1C4EF97B8();
  sub_1C4A9C184();
  a1[7] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2790, &qword_1C4F4BA20);
  v10 = sub_1C442D148();
  sub_1C44336D8(v10);
  sub_1C4EF97B8();
  a1[8] = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2798, &qword_1C4F4BA28);
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[9] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[10] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[11] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[12] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[13] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[14] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[15] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[16] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[17] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[18] = sub_1C4EF9188();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[19] = sub_1C4EF9188();
  sub_1C4430078();
  sub_1C4460344();
  a1[20] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4460344();
  result = sub_1C4EF9198();
  a1[21] = result;
  return result;
}

unint64_t sub_1C4A9C0DC()
{
  result = qword_1EC0C2768;
  if (!qword_1EC0C2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2768);
  }

  return result;
}

unint64_t sub_1C4A9C130()
{
  result = qword_1EC0C2778;
  if (!qword_1EC0C2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2778);
  }

  return result;
}

unint64_t sub_1C4A9C184()
{
  result = qword_1EC0C2788;
  if (!qword_1EC0C2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2788);
  }

  return result;
}

void PersonalKnowledgeResult.init(answerValue:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C4EF97C8();
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C456902C(&qword_1EC0C2738, &qword_1C4F4B9E0);
  sub_1C442D148();
  sub_1C4EF97B8();
  *v1 = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2740, &qword_1C4F4B9E8);
  v9 = sub_1C442D148();
  sub_1C441CCDC(v9);
  sub_1C4EF97B8();
  v1[1] = sub_1C4EF91B8();
  sub_1C456902C(&qword_1EC0C2748, &qword_1C4F4B9F0);
  sub_1C4409FC0();
  sub_1C4EF97B8();
  v1[2] = sub_1C4EF91A8();
  sub_1C456902C(&qword_1EC0C2750, &qword_1C4F4B9F8);
  sub_1C4EF97B8();
  v1[3] = sub_1C4EF9188();
  sub_1C456902C(&qword_1EC0C2758, &qword_1C4F4BA00);
  sub_1C44352DC();
  sub_1C4EF97B8();
  v1[4] = MEMORY[0x1C6937E60](v8);
  sub_1C456902C(&qword_1EC0C2760, &qword_1C4F4BA08);
  sub_1C442D148();
  sub_1C4EF97B8();
  sub_1C4A9C0DC();
  v1[5] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2770, &qword_1C4F4BA10);
  sub_1C4425F0C();
  sub_1C4EF97B8();
  sub_1C4A9C130();
  v1[6] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2780, &qword_1C4F4BA18);
  sub_1C4425F0C();
  sub_1C4EF97B8();
  sub_1C4A9C184();
  v1[7] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2790, &qword_1C4F4BA20);
  v10 = sub_1C442D148();
  sub_1C44336D8(v10);
  sub_1C4EF97B8();
  v1[8] = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2798, &qword_1C4F4BA28);
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[9] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[10] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[11] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[12] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[13] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[14] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[15] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[16] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[17] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[18] = sub_1C4EF9188();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[19] = sub_1C4EF9188();
  sub_1C4425F0C();
  sub_1C4460344();
  v1[20] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4460344();
  v1[21] = sub_1C4EF9198();
  sub_1C4EF9148();
  sub_1C43FE9F0();
}

void *static PersonalKnowledgeResult.buildBasedOnKnosisAnswer(answer:resultAttribute:dateComponentsFormatter:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0C27A0, &unk_1C4F4BA30);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4401780();
  v11 = sub_1C4EFDB88();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_1C445FFF0(a1, v3, &qword_1EC0C27A0, &unk_1C4F4BA30);
    PersonalKnowledgeResult.init(_:resultAttribute:dateComponentsFormatter:)(v13, v14, v3, a2, __src);
    nullsub_1(__src);
  }

  else
  {
    sub_1C4A9C758(__src);
  }

  return memcpy(a3, __src, 0xB0uLL);
}

unsigned __int8 *PersonalKnowledgeResult.init(_:resultAttribute:dateComponentsFormatter:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v168 = a2;
  v169 = a4;
  v166 = a3;
  v167 = a1;
  v7 = sub_1C456902C(&qword_1EC0C2730, &qword_1C4F4B9D8);
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v142 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v139 - v13;
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = sub_1C43FBD18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v140 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v141 = &v139 - v20;
  v149 = sub_1C4F00088();
  v21 = sub_1C43FCDF8(v149);
  v148 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v147 = v26 - v25;
  v146 = sub_1C4F000A8();
  v27 = sub_1C43FCDF8(v146);
  v145 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  v34 = sub_1C456902C(&qword_1EC0C27A0, &unk_1C4F4BA30);
  sub_1C43FBD18(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v139 - v38;
  v40 = sub_1C4F00038();
  v41 = sub_1C43FCDF8(v40);
  v144 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v45 = sub_1C4EF97C8();
  v46 = sub_1C43FBD18(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v51 = v50 - v49;
  sub_1C456902C(&qword_1EC0C2738, &qword_1C4F4B9E0);
  sub_1C442D148();
  sub_1C4EF97B8();
  v165 = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2740, &qword_1C4F4B9E8);
  v52 = sub_1C442D148();
  sub_1C441CCDC(v52);
  sub_1C4EF97B8();
  v164 = sub_1C4EF91B8();
  sub_1C456902C(&qword_1EC0C2748, &qword_1C4F4B9F0);
  sub_1C4409FC0();
  sub_1C4EF97B8();
  v172 = sub_1C4EF91A8();
  sub_1C456902C(&qword_1EC0C2750, &qword_1C4F4B9F8);
  sub_1C4EF97B8();
  v171 = sub_1C4EF9188();
  sub_1C456902C(&qword_1EC0C2758, &qword_1C4F4BA00);
  sub_1C44352DC();
  sub_1C4EF97B8();
  v170 = MEMORY[0x1C6937E60](v51);
  sub_1C456902C(&qword_1EC0C2760, &qword_1C4F4BA08);
  sub_1C442D148();
  sub_1C4EF97B8();
  sub_1C4A9C0DC();
  v173 = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2770, &qword_1C4F4BA10);
  sub_1C43FC778();
  sub_1C4EF97B8();
  sub_1C4A9C130();
  v174 = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2780, &qword_1C4F4BA18);
  sub_1C43FC778();
  sub_1C4EF97B8();
  sub_1C4A9C184();
  v163 = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2790, &qword_1C4F4BA20);
  v53 = sub_1C442D148();
  sub_1C44336D8(v53);
  sub_1C4EF97B8();
  v162 = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2798, &qword_1C4F4BA28);
  sub_1C43FC778();
  sub_1C4EF97B8();
  v161 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v160 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v159 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v158 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v157 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v156 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v155 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v154 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v153 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v152 = sub_1C4EF9188();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v54 = v40;
  v55 = sub_1C4EF9188();
  sub_1C43FC778();
  sub_1C4460344();
  v151 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4460344();
  v57 = v165;
  v56 = v166;
  v150 = sub_1C4EF9198();
  v176 = v167;
  v177 = v168;
  sub_1C4EF9148();
  sub_1C445FFF0(v56, v39, &qword_1EC0C27A0, &unk_1C4F4BA30);
  if (sub_1C44157D4(v39, 1, v54) != 1)
  {
    v168 = v55;
    (*(v144 + 32))(v5, v39, v54);
    sub_1C4F00018();
    v72 = sub_1C4F00098();
    v74 = v73;
    (*(v145 + 8))(v33, v146);
    v75._countAndFlagsBits = v72;
    v75._object = v74;
    PersonalKnowledgeResult.AnswerAttribute.init(rawValue:)(v75);
    v76 = v176;
    v77 = v169;
    if (v176 != 18)
    {
      sub_1C4EF9148();
      if (v76 == 15)
      {
        sub_1C446BFD8();
        v78 = sub_1C49F2108(v176, v177);
        if ((v79 & 1) == 0)
        {
          v80 = [v77 stringFromTimeInterval_];
          if (v80)
          {
            v81 = v80;
            v82 = sub_1C4F01138();
            v84 = v83;

            v176 = v82;
            v177 = v84;
            sub_1C4EF9148();
          }
        }
      }
    }

    v85 = v147;
    sub_1C4F00028();
    v86 = sub_1C4F00078();
    v88 = v87;
    (*(v148 + 8))(v85, v149);
    v89._countAndFlagsBits = v86;
    v89._object = v88;
    PersonalKnowledgeResult.AnswerValueType.init(rawValue:)(v89);
    v90 = v176;
    if (v176 == 5)
    {
LABEL_9:

      sub_1C4420C3C(v56, &qword_1EC0C27A0, &unk_1C4F4BA30);
      v91 = sub_1C443FF24();
      v92(v91);
      v58 = v164;
LABEL_10:
      v59 = v173;
LABEL_43:
      sub_1C447F288();
      v68 = v155;
      result = v154;
      v70 = v153;
      v71 = v152;
      v55 = v168;
      goto LABEL_44;
    }

    v59 = v173;
    sub_1C4EF9148();
    switch(v90)
    {
      case 1:
        sub_1C446BFD8();
        result = v176;
        v93 = HIBYTE(v177) & 0xF;
        if ((v177 & 0x2000000000000000) != 0)
        {
          v94 = HIBYTE(v177) & 0xF;
        }

        else
        {
          v94 = v176 & 0xFFFFFFFFFFFFLL;
        }

        if (!v94)
        {

          goto LABEL_9;
        }

        if ((v177 & 0x1000000000000000) != 0)
        {
          sub_1C4AA09B0(v176, v177, 10);
          v99 = v137;
          v134 = v138;
          goto LABEL_97;
        }

        if ((v177 & 0x2000000000000000) != 0)
        {
          v177 &= 0xFFFFFFFFFFFFFFuLL;
          if (v176 == 43)
          {
            if (v93)
            {
              if (v93 != 1)
              {
                sub_1C443F6F4();
                while (1)
                {
                  sub_1C4401E84();
                  if (!v98 & v100)
                  {
                    break;
                  }

                  sub_1C43FDCC4();
                  if (!v98)
                  {
                    break;
                  }

                  v99 = v128 + v127;
                  if (__OFADD__(v128, v127))
                  {
                    break;
                  }

                  sub_1C4414AC0();
                  if (v98)
                  {
                    goto LABEL_96;
                  }
                }
              }

              goto LABEL_95;
            }

LABEL_105:
            __break(1u);
            return result;
          }

          if (v176 != 45)
          {
            if (v93)
            {
              while (1)
              {
                sub_1C4401E84();
                if (!v98 & v100)
                {
                  break;
                }

                sub_1C43FDCC4();
                if (!v98)
                {
                  break;
                }

                v99 = v133 + v132;
                if (__OFADD__(v133, v132))
                {
                  break;
                }

                sub_1C4414AC0();
                if (v98)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_95;
          }

          if (v93)
          {
            if (v93 != 1)
            {
              sub_1C443F6F4();
              while (1)
              {
                sub_1C4401E84();
                if (!v98 & v100)
                {
                  break;
                }

                sub_1C43FDCC4();
                if (!v98)
                {
                  break;
                }

                v99 = v124 - v123;
                if (__OFSUB__(v124, v123))
                {
                  break;
                }

                sub_1C4414AC0();
                if (v98)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_95;
          }
        }

        else
        {
          if ((v176 & 0x1000000000000000) != 0)
          {
            v95 = ((v177 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v95 = sub_1C4F022F8();
          }

          result = sub_1C444151C(v95);
          if (v98)
          {
            if (v96 >= 1)
            {
              if (v96 != 1)
              {
                v99 = 0;
                if (result)
                {
                  sub_1C441DDEC();
                  while (1)
                  {
                    sub_1C4401E84();
                    if (!v98 & v100)
                    {
                      goto LABEL_95;
                    }

                    sub_1C43FDCC4();
                    if (!v98)
                    {
                      goto LABEL_95;
                    }

                    v99 = v126 + v125;
                    if (__OFADD__(v126, v125))
                    {
                      goto LABEL_95;
                    }

                    sub_1C4414AC0();
                    if (v98)
                    {
                      goto LABEL_96;
                    }
                  }
                }

                goto LABEL_86;
              }

              goto LABEL_95;
            }

            goto LABEL_104;
          }

          if (v97 != 45)
          {
            if (v96)
            {
              v99 = 0;
              if (result)
              {
                v129 = 10;
                while (1)
                {
                  v130 = *result - 48;
                  if (v130 > 9)
                  {
                    goto LABEL_95;
                  }

                  v131 = 10 * v99;
                  if ((v99 * v129) >> 64 != (10 * v99) >> 63)
                  {
                    goto LABEL_95;
                  }

                  v99 = v131 + v130;
                  if (__OFADD__(v131, v130))
                  {
                    goto LABEL_95;
                  }

                  result = sub_1C441AFD4(result);
                  if (v98)
                  {
                    goto LABEL_86;
                  }
                }
              }

              goto LABEL_86;
            }

LABEL_95:
            v99 = 0;
            v103 = 1;
            goto LABEL_96;
          }

          if (v96 >= 1)
          {
            if (v96 != 1)
            {
              v99 = 0;
              if (result)
              {
                sub_1C441DDEC();
                while (1)
                {
                  sub_1C4401E84();
                  if (!v98 & v100)
                  {
                    goto LABEL_95;
                  }

                  sub_1C43FDCC4();
                  if (!v98)
                  {
                    goto LABEL_95;
                  }

                  v99 = v102 - v101;
                  if (__OFSUB__(v102, v101))
                  {
                    goto LABEL_95;
                  }

                  sub_1C4414AC0();
                  if (v98)
                  {
                    goto LABEL_96;
                  }
                }
              }

LABEL_86:
              v103 = 0;
LABEL_96:
              v175 = v103;
              v134 = v103;
LABEL_97:

              if (v134)
              {
                goto LABEL_9;
              }

              v176 = v99;
              LOBYTE(v177) = 0;
              v58 = v164;
              sub_1C4EF9148();

              sub_1C4420C3C(v56, &qword_1EC0C27A0, &unk_1C4F4BA30);
              v135 = sub_1C443FF24();
              v136(v135);
              goto LABEL_10;
            }

            goto LABEL_95;
          }

          __break(1u);
        }

        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      case 2:
        sub_1C446BFD8();
        v110 = sub_1C49F2108(v176, v177);
        v58 = v164;
        if ((v111 & 1) == 0)
        {
          v176 = v110;
          LOBYTE(v177) = 0;
          sub_1C4EF9148();
        }

        sub_1C4420C3C(v56, &qword_1EC0C27A0, &unk_1C4F4BA30);
        v112 = sub_1C443FF24();
        v113(v112);
        goto LABEL_43;
      case 3:
        sub_1C446BFD8();
        sub_1C49F2108(v176, v177);
        if (v114)
        {
          goto LABEL_39;
        }

        v116 = [objc_opt_self() seconds];
        sub_1C4A9D6B4();
        v117 = v143;
        sub_1C4EF93F8();
        v118 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
        sub_1C447F9DC(v118);
        v107 = &qword_1C4F4B9D8;
        sub_1C445FFF0(v117, v142, &qword_1EC0C2730, &qword_1C4F4B9D8);
        sub_1C4EF9148();

        sub_1C4420C3C(v56, &qword_1EC0C27A0, &unk_1C4F4BA30);
        v108 = v117;
        v109 = &qword_1EC0C2730;
        goto LABEL_41;
      case 4:
        sub_1C446BFD8();
        sub_1C49F2108(v176, v177);
        if (v104)
        {
          goto LABEL_39;
        }

        v105 = v141;
        sub_1C4EF9AC8();
        v106 = sub_1C4EF9CD8();
        sub_1C447F9DC(v106);
        v107 = qword_1C4F0D2D0;
        sub_1C445FFF0(v105, v140, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C4EF9148();

        sub_1C4420C3C(v56, &qword_1EC0C27A0, &unk_1C4F4BA30);
        v108 = v105;
        v109 = &unk_1EC0B84E0;
LABEL_41:
        v115 = v107;
        v59 = v173;
        goto LABEL_42;
      default:
LABEL_39:

        v109 = &qword_1EC0C27A0;
        v115 = &unk_1C4F4BA30;
        v108 = v56;
LABEL_42:
        sub_1C4420C3C(v108, v109, v115);
        v119 = sub_1C443FF24();
        v120(v119);
        v58 = v164;
        goto LABEL_43;
    }
  }

  sub_1C4420C3C(v56, &qword_1EC0C27A0, &unk_1C4F4BA30);

  sub_1C4420C3C(v39, &qword_1EC0C27A0, &unk_1C4F4BA30);
  v58 = v164;
  v59 = v173;
  sub_1C447F288();
  v68 = v155;
  result = v154;
  v70 = v153;
  v71 = v152;
LABEL_44:
  v121 = v151;
  v122 = v150;
  *a5 = v57;
  a5[1] = v58;
  a5[2] = v172;
  a5[3] = v171;
  a5[4] = v170;
  a5[5] = v59;
  a5[6] = v174;
  a5[7] = v60;
  a5[8] = v61;
  a5[9] = v62;
  a5[10] = v63;
  a5[11] = v64;
  a5[12] = v65;
  a5[13] = v66;
  a5[14] = v67;
  a5[15] = v68;
  a5[16] = result;
  a5[17] = v70;
  a5[18] = v71;
  a5[19] = v55;
  a5[20] = v121;
  a5[21] = v122;
  return result;
}

IntelligencePlatformCore::PersonalKnowledgeResult::AnswerAttribute_optional __swiftcall PersonalKnowledgeResult.AnswerAttribute.init(rawValue:)(Swift::String rawValue)
{
  sub_1C440245C();
  v2 = sub_1C4F029A8();

  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

IntelligencePlatformCore::PersonalKnowledgeResult::AnswerValueType_optional __swiftcall PersonalKnowledgeResult.AnswerValueType.init(rawValue:)(Swift::String rawValue)
{
  sub_1C440245C();
  v2 = sub_1C4F025D8();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1C4A9D6B4()
{
  result = qword_1EC0C27A8;
  if (!qword_1EC0C27A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C27A8);
  }

  return result;
}

uint64_t sub_1C4A9D700()
{
  sub_1C4AA12AC();

  return sub_1C4EF9058();
}

uint64_t sub_1C4A9D74C(uint64_t a1)
{
  v2 = sub_1C4AA12AC();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

uint64_t sub_1C4A9D79C(uint64_t a1)
{
  v2 = sub_1C4813E28();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1C4A9D7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E695A5F8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C44A7DA0;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1C4A9D8B0(uint64_t a1)
{
  v2 = sub_1C4A9F510();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1C4A9D8FC()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1C4EF97C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1C4EF92B8();
  sub_1C44F9918(v6, qword_1EC0C26E8);
  sub_1C442B738(v6, qword_1EC0C26E8);
  sub_1C4EF97B8();
  sub_1C440BAA8(v3, 1, 1, v4);
  return sub_1C4EF92A8();
}

uint64_t static PersonalKnowledgeResult.AnswerAttribute.typeDisplayRepresentation.modify()
{
  if (qword_1EC0B7050 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4EF92B8();
  sub_1C442B738(v0, qword_1EC0C26E8);
  sub_1C4404618();
  return sub_1C443598C();
}

uint64_t sub_1C4A9DB00@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  sub_1C4A9EA98(a1, a2);
  sub_1C4418504();
  swift_beginAccess();
  v5 = sub_1C4EF92B8();
  sub_1C43FBCE0(v5);
  return (*(v6 + 16))(a3, v3);
}

uint64_t sub_1C4A9DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1C4A9EA98(a5, a6);
  sub_1C4418504();
  swift_beginAccess();
  v8 = sub_1C4EF92B8();
  sub_1C43FBCE0(v8);
  (*(v9 + 24))(v6, a1);
  return swift_endAccess();
}

void static PersonalKnowledgeResult.AnswerAttribute.caseDisplayRepresentations.getter()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0C27B8, &unk_1C4F4BA40);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4418964();
  v6 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C444FF34();
  v11 = sub_1C43FBCE0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v14 = sub_1C456902C(&qword_1EC0C27C8, &qword_1C4F4BA50);
  v15 = sub_1C456902C(&qword_1EC0C27D0, &qword_1C4F4BA58);
  sub_1C441E63C(v15);
  v17 = *(v16 + 72);
  sub_1C444B23C();
  v18 = swift_allocObject();
  sub_1C442BE4C(v18, xmmword_1C4F17CE0);
  sub_1C4EF97B8();
  sub_1C4400B14();
  sub_1C4EF9238();
  sub_1C440B0C8();
  sub_1C440E674();
  sub_1C4425388();
  sub_1C4434688();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C441BC10();
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C443F320();
  *v14 = 3;
  sub_1C4EF97B8();
  sub_1C441A1F0();
  v19 = (v1 + 4 * v17);
  v20 = *(v0 + 56);
  *v19 = 4;
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C443F320();
  *v19 = 5;
  sub_1C4422434();
  sub_1C441A1F0();
  sub_1C440FA64(6);
  sub_1C4422434();
  sub_1C441A1F0();
  sub_1C443F320();
  *v19 = 7;
  sub_1C4434688();
  sub_1C441A1F0();
  v21 = (v1 + 8 * v17);
  v22 = *(v0 + 56);
  *v21 = 8;
  sub_1C4434688();
  sub_1C441A1F0();
  sub_1C443F320();
  *v21 = 9;
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C440FA64(10);
  sub_1C441C440();
  sub_1C441A1F0();
  sub_1C440FA64(11);
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C440FA64(12);
  sub_1C4422434();
  sub_1C441A1F0();
  sub_1C440FA64(13);
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C440FA64(14);
  sub_1C4422434();
  sub_1C441A1F0();
  sub_1C443F320();
  *v21 = 15;
  sub_1C441C440();
  sub_1C441A1F0();
  v23 = *(v0 + 56);
  *(v1 + 16 * v17) = 16;
  sub_1C4EF97B8();
  sub_1C441A1F0();
  v24 = *(v0 + 56);
  *(v1 + 17 * v17) = 17;
  sub_1C4434688();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C4EF9258();
  sub_1C4A9F158();
  sub_1C4F00F28();
  sub_1C43FE9F0();
}

uint64_t PersonalKnowledgeResult.AnswerAttribute.rawValue.getter()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x746E657665;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6D614E7473726966;
      break;
    case 5:
      result = 0x656D614E7473616CLL;
      break;
    case 6:
      result = 0x7961646874726962;
      break;
    case 7:
      result = 0x6D754E656E6F6870;
      break;
    case 8:
      result = sub_1C44691F4(0x616C6572u);
      break;
    case 9:
      result = 0x746361746E6F63;
      break;
    case 0xA:
      result = sub_1C44691F4(0x61636F6Cu);
      break;
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0x7473657265746E69;
      break;
    case 0xD:
      result = 0x7461447472617473;
      break;
    case 0xE:
      result = 0x65746144646E65;
      break;
    case 0xF:
      result = sub_1C44691F4(0x61727564u);
      break;
    case 0x10:
      result = 0x69746E6565726373;
      break;
    case 0x11:
      result = 0x6765746143707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A9E298@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeResult.AnswerAttribute.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4A9E2C4(uint64_t a1)
{
  v2 = sub_1C4A9C130();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C4A9E314(uint64_t a1)
{
  v2 = sub_1C4A9F870();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t sub_1C4A9E370()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1C4EF97C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1C4EF92B8();
  sub_1C44F9918(v6, qword_1EC0C2700);
  sub_1C442B738(v6, qword_1EC0C2700);
  sub_1C4EF97B8();
  sub_1C440BAA8(v3, 1, 1, v4);
  return sub_1C4EF92A8();
}

uint64_t static PersonalKnowledgeResult.AnswerValueType.typeDisplayRepresentation.modify()
{
  if (qword_1EC0B7058 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4EF92B8();
  sub_1C442B738(v0, qword_1EC0C2700);
  sub_1C4404618();
  return sub_1C443598C();
}

void static PersonalKnowledgeResult.AnswerValueType.caseDisplayRepresentations.getter()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0C27B8, &unk_1C4F4BA40);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4418964();
  v6 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C444FF34();
  v11 = sub_1C43FBCE0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v14 = sub_1C456902C(&qword_1EC0C27E0, &qword_1C4F4BA60);
  v15 = sub_1C456902C(&qword_1EC0C27E8, &qword_1C4F4BA68);
  sub_1C441E63C(v15);
  v17 = *(v16 + 72);
  sub_1C444B23C();
  v18 = swift_allocObject();
  sub_1C442BE4C(v18, xmmword_1C4F13950);
  sub_1C4EF97B8();
  sub_1C4400B14();
  sub_1C4EF9238();
  sub_1C440B0C8();
  sub_1C440E674();
  sub_1C4425388();
  sub_1C4EF97B8();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C441BC10();
  sub_1C4EF97B8();
  sub_1C441A1F0();
  sub_1C443F320();
  *v14 = 3;
  sub_1C441C440();
  sub_1C441A1F0();
  v19 = *(v0 + 56);
  *(v1 + 4 * v17) = 4;
  sub_1C4EF97B8();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C4EF9258();
  sub_1C4A9F1AC();
  sub_1C4F00F28();
  sub_1C43FE9F0();
}

uint64_t PersonalKnowledgeResult.AnswerValueType.rawValue.getter()
{
  result = 0x676E69727473;
  switch(*v0)
  {
    case 1:
      result = 0x72656765746E69;
      break;
    case 2:
      result = 0x656C62756F64;
      break;
    case 3:
      result = sub_1C44691F4(0x61727564u);
      break;
    case 4:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A9E888@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeResult.AnswerValueType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4A9E8B4(uint64_t a1)
{
  v2 = sub_1C4A9C0DC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C4A9E904(uint64_t a1)
{
  v2 = sub_1C4A9FC38();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t sub_1C4A9E960()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1C4EF97C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1C4EF92B8();
  sub_1C44F9918(v6, qword_1EC0C2718);
  sub_1C442B738(v6, qword_1EC0C2718);
  sub_1C4EF97B8();
  sub_1C440BAA8(v3, 1, 1, v4);
  return sub_1C4EF92A8();
}

uint64_t sub_1C4A9EA98(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4EF92B8();

  return sub_1C442B738(v3, a2);
}

uint64_t sub_1C4A9EB14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4EF92B8();
  sub_1C442B738(v5, a2);
  sub_1C4418504();
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, a2, v5);
}

uint64_t sub_1C4A9EBDC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4EF92B8();
  sub_1C442B738(v5, a3);
  sub_1C4418504();
  swift_beginAccess();
  v6 = *(v5 - 8);
  (*(v6 + 24))(a3, a1, v5);
  swift_endAccess();
  return (*(v6 + 8))(a1, v5);
}

uint64_t static PersonalKnowledgeResult.AnswerComputation.typeDisplayRepresentation.modify()
{
  if (qword_1EC0B7060 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4EF92B8();
  sub_1C442B738(v0, qword_1EC0C2718);
  sub_1C4404618();
  return sub_1C443598C();
}

void static PersonalKnowledgeResult.AnswerComputation.caseDisplayRepresentations.getter()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0C27B8, &unk_1C4F4BA40);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4418964();
  v6 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C444FF34();
  v11 = sub_1C43FBCE0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C456902C(&qword_1EC0C27F8, &qword_1C4F4BA70);
  v14 = sub_1C456902C(&qword_1EC0C2800, &qword_1C4F4BA78);
  sub_1C441E63C(v14);
  v16 = *(v15 + 72);
  sub_1C444B23C();
  v17 = swift_allocObject();
  sub_1C442BE4C(v17, xmmword_1C4F0D480);
  sub_1C4EF97B8();
  sub_1C4400B14();
  sub_1C4EF9238();
  sub_1C440B0C8();
  sub_1C440E674();
  sub_1C4425388();
  sub_1C4EF97B8();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C441BC10();
  sub_1C4EF97B8();
  sub_1C441A1F0();
  v18 = *(v0 + 56);
  *(v1 + 3 * v16) = 3;
  sub_1C4434688();
  sub_1C44077F8();
  sub_1C440E674();
  sub_1C4EF9258();
  sub_1C4A9F200();
  sub_1C4F00F28();
  sub_1C43FE9F0();
}

IntelligencePlatformCore::PersonalKnowledgeResult::AnswerComputation_optional __swiftcall PersonalKnowledgeResult.AnswerComputation.init(rawValue:)(Swift::String rawValue)
{
  sub_1C440245C();
  v2 = sub_1C4F025D8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t PersonalKnowledgeResult.AnswerComputation.rawValue.getter()
{
  result = 7173491;
  switch(*v0)
  {
    case 1:
      result = 6780513;
      break;
    case 2:
      result = 0x746E756F63;
      break;
    case 3:
      result = 0x756F635F71696E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A9F080@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalKnowledgeResult.AnswerComputation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4A9F0AC(uint64_t a1)
{
  v2 = sub_1C4A9C184();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C4A9F0FC(uint64_t a1)
{
  v2 = sub_1C4AA0000();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1C4A9F158()
{
  result = qword_1EC0C27D8;
  if (!qword_1EC0C27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C27D8);
  }

  return result;
}

unint64_t sub_1C4A9F1AC()
{
  result = qword_1EC0C27F0;
  if (!qword_1EC0C27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C27F0);
  }

  return result;
}

unint64_t sub_1C4A9F200()
{
  result = qword_1EC0C2808;
  if (!qword_1EC0C2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2808);
  }

  return result;
}

unint64_t sub_1C4A9F25C()
{
  result = qword_1EC0C2810;
  if (!qword_1EC0C2810)
  {
    sub_1C4EF9D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2810);
  }

  return result;
}

unint64_t sub_1C4A9F2B8()
{
  result = qword_1EC0C2818;
  if (!qword_1EC0C2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2818);
  }

  return result;
}

unint64_t sub_1C4A9F310()
{
  result = qword_1EC0C2820;
  if (!qword_1EC0C2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2820);
  }

  return result;
}

unint64_t sub_1C4A9F368()
{
  result = qword_1EC0C2828;
  if (!qword_1EC0C2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2828);
  }

  return result;
}

unint64_t sub_1C4A9F410()
{
  result = qword_1EC0C2840;
  if (!qword_1EC0C2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2840);
  }

  return result;
}

unint64_t sub_1C4A9F464()
{
  result = qword_1EC0C2848;
  if (!qword_1EC0C2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2848);
  }

  return result;
}

unint64_t sub_1C4A9F4B8()
{
  result = qword_1EC0C2850;
  if (!qword_1EC0C2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2850);
  }

  return result;
}

unint64_t sub_1C4A9F510()
{
  result = qword_1EC0C2858;
  if (!qword_1EC0C2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2858);
  }

  return result;
}

unint64_t sub_1C4A9F5AC()
{
  result = qword_1EC0C2870;
  if (!qword_1EC0C2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2870);
  }

  return result;
}

unint64_t sub_1C4A9F604()
{
  result = qword_1EC0C2878;
  if (!qword_1EC0C2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2878);
  }

  return result;
}

unint64_t sub_1C4A9F65C()
{
  result = qword_1EC0C2880;
  if (!qword_1EC0C2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2880);
  }

  return result;
}

unint64_t sub_1C4A9F6B4()
{
  result = qword_1EC0C2888;
  if (!qword_1EC0C2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2888);
  }

  return result;
}

unint64_t sub_1C4A9F70C()
{
  result = qword_1EC0C2890;
  if (!qword_1EC0C2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2890);
  }

  return result;
}

unint64_t sub_1C4A9F770()
{
  result = qword_1EC0C2898;
  if (!qword_1EC0C2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2898);
  }

  return result;
}

unint64_t sub_1C4A9F7C4()
{
  result = qword_1EC0C28A0;
  if (!qword_1EC0C28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28A0);
  }

  return result;
}

unint64_t sub_1C4A9F818()
{
  result = qword_1EC0C28A8;
  if (!qword_1EC0C28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28A8);
  }

  return result;
}

unint64_t sub_1C4A9F870()
{
  result = qword_1EC0C28B0;
  if (!qword_1EC0C28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28B0);
  }

  return result;
}

unint64_t sub_1C4A9F8E0()
{
  result = qword_1EC0C28B8;
  if (!qword_1EC0C28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28B8);
  }

  return result;
}

unint64_t sub_1C4A9F938()
{
  result = qword_1EC0C28C0;
  if (!qword_1EC0C28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28C0);
  }

  return result;
}

unint64_t sub_1C4A9F9D8()
{
  result = qword_1EC0C28D8;
  if (!qword_1EC0C28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28D8);
  }

  return result;
}

unint64_t sub_1C4A9FA30()
{
  result = qword_1EC0C28E0;
  if (!qword_1EC0C28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28E0);
  }

  return result;
}

unint64_t sub_1C4A9FA88()
{
  result = qword_1EC0C28E8;
  if (!qword_1EC0C28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28E8);
  }

  return result;
}

unint64_t sub_1C4A9FAE0()
{
  result = qword_1EC0C28F0;
  if (!qword_1EC0C28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28F0);
  }

  return result;
}

unint64_t sub_1C4A9FB38()
{
  result = qword_1EC0C28F8;
  if (!qword_1EC0C28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C28F8);
  }

  return result;
}

unint64_t sub_1C4A9FB8C()
{
  result = qword_1EC0C2900;
  if (!qword_1EC0C2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2900);
  }

  return result;
}

unint64_t sub_1C4A9FBE0()
{
  result = qword_1EC0C2908;
  if (!qword_1EC0C2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2908);
  }

  return result;
}

unint64_t sub_1C4A9FC38()
{
  result = qword_1EC0C2910;
  if (!qword_1EC0C2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2910);
  }

  return result;
}

unint64_t sub_1C4A9FCA8()
{
  result = qword_1EC0C2918;
  if (!qword_1EC0C2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2918);
  }

  return result;
}

unint64_t sub_1C4A9FD00()
{
  result = qword_1EC0C2920;
  if (!qword_1EC0C2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2920);
  }

  return result;
}

unint64_t sub_1C4A9FDA0()
{
  result = qword_1EC0C2938;
  if (!qword_1EC0C2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2938);
  }

  return result;
}

unint64_t sub_1C4A9FDF8()
{
  result = qword_1EC0C2940;
  if (!qword_1EC0C2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2940);
  }

  return result;
}

unint64_t sub_1C4A9FE50()
{
  result = qword_1EC0C2948;
  if (!qword_1EC0C2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2948);
  }

  return result;
}

unint64_t sub_1C4A9FEA8()
{
  result = qword_1EC0C2950;
  if (!qword_1EC0C2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2950);
  }

  return result;
}

unint64_t sub_1C4A9FF00()
{
  result = qword_1EC0C2958;
  if (!qword_1EC0C2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2958);
  }

  return result;
}

unint64_t sub_1C4A9FF54()
{
  result = qword_1EC0C2960;
  if (!qword_1EC0C2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2960);
  }

  return result;
}

unint64_t sub_1C4A9FFA8()
{
  result = qword_1EC0C2968;
  if (!qword_1EC0C2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2968);
  }

  return result;
}

unint64_t sub_1C4AA0000()
{
  result = qword_1EC0C2970;
  if (!qword_1EC0C2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2970);
  }

  return result;
}

unint64_t sub_1C4AA00C4()
{
  result = qword_1EC0C2978;
  if (!qword_1EC0C2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2978);
  }

  return result;
}

unint64_t sub_1C4AA011C()
{
  result = qword_1EC0C2980;
  if (!qword_1EC0C2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2980);
  }

  return result;
}

uint64_t sub_1C4AA01C0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1C4AA0200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeResult.AnswerAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeResult.AnswerValueType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalKnowledgeResult.AnswerComputation(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C4AA0500(uint64_t a1, uint64_t a2, unint64_t a3)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F01438();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_1C4404C28();
    v5 = sub_1C4AA0E70();
    v37 = v36;

    v6 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      sub_1C4404C28();
      v7 = sub_1C4F022F8();
    }

    sub_1C444151C(v7);
    if (v25)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_1C4432864();
          if (v18)
          {
            while (1)
            {
              sub_1C4415BC4();
              if (v15 && v22 < v20)
              {
                v23 = -48;
              }

              else if (v22 < 0x41 || v22 >= v19)
              {
                sub_1C441EE78();
                if (!v15 || v22 >= v24)
                {
                  goto LABEL_129;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }

              if (is_mul_ok(v21, a3) && !__CFADD__(v21 * a3, (v22 + v23)))
              {
                sub_1C4410514();
                if (!v25)
                {
                  continue;
                }
              }

              goto LABEL_129;
            }
          }
        }

        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        sub_1C44365E8();
        if (v26 ^ v27 | v25)
        {
          v29 = v32;
        }

        if (v26 ^ v27 | v25)
        {
          v30 = 65;
        }

        if (!(v26 ^ v27 | v25))
        {
          v31 = 58;
        }

        if (v28)
        {
          v33 = 0;
          while (1)
          {
            v34 = *v28;
            if (v34 < 0x30 || v34 >= v31)
            {
              if (v34 < 0x41 || v34 >= v30)
              {
                if (v34 < 0x61 || v34 >= v29)
                {
                  goto LABEL_129;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            if (is_mul_ok(v33, a3) && !__CFADD__(v33 * a3, (v34 + v35)))
            {
              v28 = sub_1C441AFD4(v28);
              if (!v25)
              {
                continue;
              }
            }

            goto LABEL_129;
          }
        }
      }

      goto LABEL_129;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_1C4432864();
        if (v10)
        {
          while (1)
          {
            sub_1C4415BC4();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              sub_1C441EE78();
              if (!v15 || v14 >= v17)
              {
                break;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            if (is_mul_ok(v13, a3) && v13 * a3 >= (v14 + v16))
            {
              sub_1C4410514();
              if (!v25)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_129:

      return;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sub_1C4441178();
  if (!v25)
  {
    if (v39 != 45)
    {
      if (v38)
      {
        sub_1C44200A0();
        while (1)
        {
          sub_1C4415BC4();
          if (v15 && v55 < v54)
          {
            v56 = -48;
          }

          else if (v55 < 0x41 || v55 >= v53)
          {
            sub_1C441EE78();
            if (!v15 || v55 >= v57)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }

          if (is_mul_ok(v52, a3) && !__CFADD__(v52 * a3, (v55 + v56)))
          {
            sub_1C4410514();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    if (v38)
    {
      if (v38 != 1)
      {
        sub_1C44200A0();
        sub_1C4416358();
        while (1)
        {
          sub_1C4415BC4();
          if (v15 && v43 < v42)
          {
            v44 = -48;
          }

          else if (v43 < 0x41 || v43 >= v41)
          {
            sub_1C441EE78();
            if (!v15 || v43 >= v45)
            {
              goto LABEL_129;
            }

            v44 = -87;
          }

          else
          {
            v44 = -55;
          }

          if (is_mul_ok(v40, a3) && v40 * a3 >= (v43 + v44))
          {
            sub_1C4410514();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    goto LABEL_132;
  }

  if (v38)
  {
    if (v38 != 1)
    {
      sub_1C44200A0();
      sub_1C4416358();
      while (1)
      {
        sub_1C4415BC4();
        if (v15 && v49 < v48)
        {
          v50 = -48;
        }

        else if (v49 < 0x41 || v49 >= v47)
        {
          sub_1C441EE78();
          if (!v15 || v49 >= v51)
          {
            goto LABEL_129;
          }

          v50 = -87;
        }

        else
        {
          v50 = -55;
        }

        if (is_mul_ok(v46, a3) && !__CFADD__(v46 * a3, (v49 + v50)))
        {
          sub_1C4410514();
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_129;
      }
    }

    goto LABEL_129;
  }

LABEL_134:
  __break(1u);
}

void sub_1C4AA09B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F01438();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_1C4404C28();
    v5 = sub_1C4AA0E70();
    v49 = v48;

    v6 = v49;
    if ((v49 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      sub_1C4404C28();
      v7 = sub_1C4F022F8();
    }

    sub_1C444151C(v7);
    if (v10)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_1C4432864();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v31 = 0;
            v32 = (v27 + 1);
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v30)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  sub_1C441EE78();
                  if (!v22 || v33 >= v35)
                  {
                    goto LABEL_137;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v31 * a3;
              if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
              {
                v31 = v36 + (v33 + v34);
                if (!__OFADD__(v36, (v33 + v34)))
                {
                  ++v32;
                  if (--v28)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_137;
            }
          }
        }

        goto LABEL_137;
      }

      goto LABEL_141;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        sub_1C44365E8();
        if (v38 ^ v39 | v37)
        {
          v41 = v44;
        }

        if (v38 ^ v39 | v37)
        {
          v42 = 65;
        }

        if (!(v38 ^ v39 | v37))
        {
          v43 = 58;
        }

        if (v40)
        {
          v45 = 0;
          while (1)
          {
            v46 = *v40;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                if (v46 < 0x61 || v46 >= v41)
                {
                  goto LABEL_137;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if ((v45 * a3) >> 64 == (v45 * a3) >> 63 && !__OFADD__(v45 * a3, (v46 + v47)))
            {
              v40 = sub_1C441AFD4(v40);
              if (!v10)
              {
                continue;
              }
            }

            goto LABEL_137;
          }
        }
      }

      goto LABEL_137;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_1C4432864();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_1C441EE78();
                if (!v22 || v19 >= v21)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 == (v17 * a3) >> 63)
            {
              v17 = v23 - (v19 + v20);
              if (!__OFSUB__(v23, (v19 + v20)))
              {
                ++v18;
                if (--v14)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_137:

      return;
    }

    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  sub_1C4441178();
  if (!v10)
  {
    if (v51 != 45)
    {
      if (v50)
      {
        sub_1C44200A0();
        while (1)
        {
          sub_1C4415BC4();
          if (v22 && v67 < v66)
          {
            v68 = -48;
          }

          else if (v67 < 0x41 || v67 >= v65)
          {
            sub_1C441EE78();
            if (!v22 || v67 >= v69)
            {
              goto LABEL_137;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }

          if ((v64 * a3) >> 64 == (v64 * a3) >> 63 && !__OFADD__(v64 * a3, (v67 + v68)))
          {
            sub_1C4410514();
            if (!v10)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    if (v50)
    {
      if (v50 != 1)
      {
        sub_1C44200A0();
        sub_1C4416358();
        while (1)
        {
          sub_1C4415BC4();
          if (v22 && v55 < v54)
          {
            v56 = -48;
          }

          else if (v55 < 0x41 || v55 >= v53)
          {
            sub_1C441EE78();
            if (!v22 || v55 >= v57)
            {
              goto LABEL_137;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }

          if ((v52 * a3) >> 64 == (v52 * a3) >> 63 && !__OFSUB__(v52 * a3, (v55 + v56)))
          {
            sub_1C4410514();
            if (!v10)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_140;
  }

  if (v50)
  {
    if (v50 != 1)
    {
      sub_1C44200A0();
      sub_1C4416358();
      while (1)
      {
        sub_1C4415BC4();
        if (v22 && v61 < v60)
        {
          v62 = -48;
        }

        else if (v61 < 0x41 || v61 >= v59)
        {
          sub_1C441EE78();
          if (!v22 || v61 >= v63)
          {
            goto LABEL_137;
          }

          v62 = -87;
        }

        else
        {
          v62 = -55;
        }

        if ((v58 * a3) >> 64 == (v58 * a3) >> 63 && !__OFADD__(v58 * a3, (v61 + v62)))
        {
          sub_1C4410514();
          if (!v10)
          {
            continue;
          }
        }

        goto LABEL_137;
      }
    }

    goto LABEL_137;
  }

LABEL_142:
  __break(1u);
}

uint64_t sub_1C4AA0E70()
{
  v0 = sub_1C4AA0ED8();
  v4 = sub_1C4AA0F0C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C4AA0F0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C4F01268();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C4F01F78();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C4434A7C(v9, 0);
  v12 = sub_1C4AA106C(v15, (v11 + 4), v10, a1, a2, a3, a4);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C4F01268();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C4F022F8();
LABEL_4:

  return sub_1C4F01268();
}

unint64_t sub_1C4AA106C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1C4B9AAA8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C4F01398();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C4F022F8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1C4B9AAA8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1C4F01368();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1C4AA12AC()
{
  result = qword_1EC0C2998;
  if (!qword_1EC0C2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2998);
  }

  return result;
}

uint64_t sub_1C4AA1334()
{
  v0 = sub_1C4EF97C8();
  sub_1C44F9918(v0, qword_1EC0C29A0);
  sub_1C442B738(v0, qword_1EC0C29A0);
  return sub_1C4EF97B8();
}

uint64_t sub_1C4AA1398()
{
  if (qword_1EC0B7068 != -1)
  {
    sub_1C441A248();
  }

  v0 = sub_1C4EF97C8();

  return sub_1C442B738(v0, qword_1EC0C29A0);
}

uint64_t static PersonalKnowledgeTool.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7068 != -1)
  {
    sub_1C441A248();
  }

  v2 = sub_1C4EF97C8();
  v3 = sub_1C442B738(v2, qword_1EC0C29A0);
  swift_beginAccess();
  sub_1C440A6B8(v2);
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static PersonalKnowledgeTool.title.setter(uint64_t a1)
{
  if (qword_1EC0B7068 != -1)
  {
    sub_1C441A248();
  }

  v2 = sub_1C4EF97C8();
  v3 = sub_1C442B738(v2, qword_1EC0C29A0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PersonalKnowledgeTool.title.modify())()
{
  if (qword_1EC0B7068 != -1)
  {
    sub_1C441A248();
  }

  v0 = sub_1C4EF97C8();
  sub_1C442B738(v0, qword_1EC0C29A0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1C4AA1600@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4AA1398();
  swift_beginAccess();
  v3 = sub_1C4EF97C8();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C4AA167C(uint64_t a1)
{
  v2 = sub_1C4AA1398();
  swift_beginAccess();
  v3 = sub_1C4EF97C8();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static PersonalKnowledgeTool.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC0C29B8 = a1;
  return result;
}

uint64_t sub_1C4AA17E4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC0C29B8;
  return result;
}

uint64_t sub_1C4AA1830(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC0C29B8 = v1;
  return result;
}

uint64_t static PersonalKnowledgeTool.description.getter()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  v1 = sub_1C43FBD18(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C4EF97C8();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C4EF97B8();
  sub_1C4EF97B8();
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v5);
  sub_1C4EF97B8();
  sub_1C43FBD94();
  sub_1C440BAA8(v12, v13, v14, v5);
  sub_1C4EF91F8();
  sub_1C4EF91E8();
  sub_1C43FBD94();
  return sub_1C440BAA8(v15, v16, v17, v18);
}

uint64_t PersonalKnowledgeTool.init()@<X0>(uint64_t *a1@<X8>)
{
  v47 = sub_1C4EF9268();
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  v6 = sub_1C456902C(&qword_1EC0C29C0, &qword_1C4F4C668);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = sub_1C456902C(&qword_1EC0C29C8, &qword_1C4F4C670);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  v15 = sub_1C43FBD18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v45 = sub_1C4EF97C8();
  sub_1C440A6B8(v45);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C456902C(&qword_1EC0C29D0, &qword_1C4F4C678);
  sub_1C4EF97B8();
  sub_1C4EF97B8();
  sub_1C43FBD94();
  sub_1C440BAA8(v21, v22, v23, v45);
  v44 = sub_1C4F010C8();
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v27);
  v28 = sub_1C4EF9108();
  sub_1C43FCF64();
  sub_1C440BAA8(v29, v30, v31, v28);
  v32 = *MEMORY[0x1E695A500];
  v33 = *(v1 + 104);
  v33(v5, v32, v47);
  sub_1C440FA74();
  *a1 = sub_1C4EF91D8();
  sub_1C456902C(&qword_1EC0C29D8, &qword_1C4F4C680);
  sub_1C4EF97B8();
  sub_1C4EF97B8();
  sub_1C43FBD94();
  sub_1C440BAA8(v34, v35, v36, v45);
  sub_1C43FCF64();
  sub_1C440BAA8(v37, v38, v39, v44);
  sub_1C43FCF64();
  sub_1C440BAA8(v40, v41, v42, v28);
  v33(v5, v32, v47);
  sub_1C440FA74();
  result = sub_1C4EF91D8();
  a1[1] = result;
  return result;
}

uint64_t PersonalKnowledgeTool.perform()()
{
  sub_1C43FBCD4();
  *(v1 + 160) = v2;
  v3 = sub_1C456902C(&qword_1EC0C29E0, &qword_1C4F4C690);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  *(v1 + 168) = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0C29E8, &qword_1C4F4C698);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  *(v1 + 176) = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0C29F0, &unk_1C4F4C6A0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  *(v1 + 184) = sub_1C43FBE7C();
  v12 = sub_1C4EF9108();
  *(v1 + 192) = v12;
  sub_1C43FCF7C(v12);
  *(v1 + 200) = v13;
  v15 = *(v14 + 64);
  *(v1 + 208) = sub_1C43FBE7C();
  *(v1 + 216) = *v0;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C4AA1EBC()
{
  if (qword_1EDDDBE08 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE2C930;
  *(v0 + 232) = qword_1EDE2C930;
  if (v1)
  {
    v2 = qword_1EDDE5510;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1C445FFF0(&xmmword_1EDE2CCE8, v0 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
    if (*(v0 + 80))
    {
      v4 = *(v0 + 216);
      v5 = *(v0 + 224);
      sub_1C441D670((v0 + 56), v0 + 16);
      sub_1C4EF91C8();
      v6 = *(v0 + 120);
      *(v0 + 240) = *(v0 + 128);
      sub_1C4EF91C8();
      v7 = *(v0 + 136);
      *(v0 + 248) = *(v0 + 144);
      v8 = swift_task_alloc();
      *(v0 + 256) = v8;
      *v8 = v0;
      v8[1] = sub_1C4AA230C;

      return static PersonalKnowledgeTool.perform(knosisServer:ecrServer:kgq:nlQuery:)();
    }

    sub_1C4420C3C(v0 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
    if (qword_1EC0B6DE0 != -1)
    {
      sub_1C442D15C();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EC152620);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C43F8000, v20, v21, "ECR server not initialized", v22, 2u);
      sub_1C43FEA20();
    }

    v23 = sub_1C4EFFB68();
    sub_1C440783C();
    sub_1C4AA38CC(v24, v25);
    sub_1C440E690();
    v26 = *MEMORY[0x1E69A9B20];
    sub_1C440A6B8(v23);
    (*(v27 + 104))();
    swift_willThrow();
  }

  else
  {
    if (qword_1EC0B6DE0 != -1)
    {
      sub_1C442D15C();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EC152620);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Knosis server not initialized", v13, 2u);
      sub_1C43FBE2C();
    }

    v14 = sub_1C4EFFB68();
    sub_1C440783C();
    sub_1C4AA38CC(v15, v16);
    swift_allocError();
    v17 = *MEMORY[0x1E69A9B20];
    sub_1C440A6B8(v14);
    (*(v18 + 104))();
    swift_willThrow();
  }

  v28 = *(v0 + 208);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v31 = *(v0 + 168);

  sub_1C43FBDA0();

  return v32();
}

uint64_t sub_1C4AA230C()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = v2[32];
  v6 = *v1;
  sub_1C43FBE64();
  *v7 = v6;
  *(v9 + 264) = v8;
  *(v9 + 272) = v0;

  v10 = v2[31];
  v11 = v2[30];
  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4AA2480()
{
  v1 = v0[33];
  v2 = v0[26];
  if (*(v1 + 16))
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[21];
    v6 = swift_task_alloc();
    *(v6 + 16) = v1;
    sub_1C4EF9298();
    sub_1C43FCF64();
    sub_1C440BAA8(v7, v8, v9, v10);
    sub_1C4EF92C8();
    sub_1C43FCF64();
    sub_1C440BAA8(v11, v12, v13, v14);
    v15 = sub_1C456902C(&qword_1EC0C2A00, &qword_1C4F4C6B8);
    v16 = sub_1C4AA37F4();
    v17 = sub_1C4AA3848();
    MEMORY[0x1C6937DC0](sub_1C4AA37EC, v6, v4, v5, &type metadata for PersonalKnowledgeTool, v15, v16, v17);

    sub_1C4EF90F8();
  }

  else
  {
    v18 = v0[26];
    sub_1C4EF90E8();
  }

  v19 = v0[29];
  v21 = v0[25];
  v20 = v0[26];
  v23 = v0[23];
  v22 = v0[24];
  v27 = v0[22];
  v28 = v0[21];
  v24 = v0[20];
  v0[19] = v0[33];
  sub_1C456902C(&qword_1EC0C2A00, &qword_1C4F4C6B8);
  sub_1C4AA3848();
  sub_1C4EF9118();

  (*(v21 + 8))(v20, v22);
  sub_1C440962C(v0 + 2);

  sub_1C43FBDA0();

  return v25();
}

uint64_t sub_1C4AA26A4()
{
  sub_1C440962C((v0 + 16));
  v1 = *(v0 + 272);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);

  sub_1C43FBDA0();

  return v6();
}

uint64_t static PersonalKnowledgeTool.perform(knosisServer:ecrServer:kgq:nlQuery:)()
{
  sub_1C43FBCD4();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[7] = v5;
  v0[8] = v6;
  v7 = sub_1C456902C(&qword_1EC0C2A18, &qword_1C4F4C6C0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  v0[13] = sub_1C43FBE7C();
  v10 = sub_1C4EFDBD8();
  v0[14] = v10;
  sub_1C43FCF7C(v10);
  v0[15] = v11;
  v13 = *(v12 + 64);
  v0[16] = sub_1C43FBE7C();
  v14 = sub_1C456902C(&qword_1EC0C2A20, qword_1C4F4C6C8);
  v0[17] = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v17 = sub_1C4EFFE38();
  v0[23] = v17;
  sub_1C43FCF7C(v17);
  v0[24] = v18;
  v20 = *(v19 + 64);
  v0[25] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1C4AA28CC()
{
  v28 = v0;
  if (qword_1EC0B6DE0 != -1)
  {
    sub_1C442D15C();
  }

  v1 = v0[12];
  v2 = v0[10];
  v3 = sub_1C4F00978();
  v0[26] = sub_1C442B738(v3, qword_1EC152620);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CC8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[11];
    v6 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1C441D828(v9, v8, &v27);
    *(v10 + 12) = 2080;
    if (v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4271950;
    }

    if (v6)
    {
      v12 = v1;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C441D828(v11, v12, &v27);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_1C43F8000, v4, v5, "kgq: %s, nlQuery: %s", v10, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[17];
  v17 = v0[7];
  sub_1C442E860(v0[8], (v0 + 2));
  v18 = v17;
  sub_1C4EFFE18();
  v19 = *(v16 + 48);
  v20 = *(MEMORY[0x1E69A9BE8] + 4);
  v21 = swift_task_alloc();
  v0[27] = v21;
  *v21 = v0;
  v21[1] = sub_1C4AA2B20;
  v22 = v0[25];
  v23 = v0[22];
  v24 = v0[9];
  v25 = v0[10];

  return MEMORY[0x1EEE13C60](v23, v15 + v19, v24, v25);
}

uint64_t sub_1C4AA2B20()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  sub_1C43FBE64();
  *v8 = v7;
  *(v9 + 224) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4AA2C24()
{
  v84 = v0;
  v1 = v0[26];
  sub_1C445FFF0(v0[22], v0[21], &qword_1EC0C2A20, qword_1C4F4C6C8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  if (v4)
  {
    v6 = v0[20];
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v83[0] = v9;
    *v8 = 136315138;
    v10 = sub_1C445FFF0(v5, v6, &qword_1EC0C2A20, qword_1C4F4C6C8);
    v11 = *(v7 + 48);
    v12 = MEMORY[0x1C693C8E0](v10);
    v13 = sub_1C4EFDC08();
    sub_1C43FBCE0(v13);
    (*(v14 + 8))(v6);
    sub_1C4420C3C(v6 + v11, &qword_1EC0C27A0, &unk_1C4F4BA30);
    v15 = sub_1C4EFDB98();
    v16 = MEMORY[0x1C6940380](v12, v15);
    v18 = v17;

    sub_1C4420C3C(v5, &qword_1EC0C2A20, qword_1C4F4C6C8);
    v19 = sub_1C441D828(v16, v18, v83);

    *(v8 + 4) = v19;
    _os_log_impl(&dword_1C43F8000, v2, v3, "knosis result: %s", v8, 0xCu);
    sub_1C440962C(v9);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {

    sub_1C4420C3C(v5, &qword_1EC0C2A20, qword_1C4F4C6C8);
  }

  v20 = v0[22];
  v21 = v0[19];
  v23 = v0[16];
  v22 = v0[17];
  v24 = v0[14];
  v25 = v0[15];
  v26 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v26 setUnitsStyle_];
  [v26 setMaximumUnitCount_];
  sub_1C445FFF0(v20, v21, &qword_1EC0C2A20, qword_1C4F4C6C8);
  v80 = *(v22 + 48);
  sub_1C4EFDBE8();
  v27 = sub_1C4EFDC08();
  sub_1C43FBCE0(v27);
  v29 = *(v28 + 8);
  v29(v21, v27);
  v30 = (*(v25 + 88))(v23, v24);
  if (v30 == *MEMORY[0x1E69A94E0])
  {
    v31 = v0[28];
    v32 = v0[22];
    v33 = v0[20];
    v34 = v0[17];
    v35 = sub_1C445FFF0(v32, v33, &qword_1EC0C2A20, qword_1C4F4C6C8);
    v77 = *(v34 + 48);
    MEMORY[0x1C693C8E0](v35);
    v29(v33, v27);
    v36 = swift_task_alloc();
    *(v36 + 16) = v32;
    *(v36 + 24) = v26;
    v79 = v26;
    sub_1C49C0B9C();
    v82 = v37;

    sub_1C4420C3C(v33 + v77, &qword_1EC0C27A0, &unk_1C4F4BA30);
LABEL_9:
    v38 = v0[22];
    v39 = v0[17];
    v40 = v0[18];
    v41 = v0[13];
    sub_1C4420C3C(v21 + v80, &qword_1EC0C27A0, &unk_1C4F4BA30);
    sub_1C445FFF0(v38, v40, &qword_1EC0C2A20, qword_1C4F4C6C8);
    v42 = *(v39 + 48);
    sub_1C4EFDBC8();
    v29(v40, v27);
    v43 = sub_1C4F00128();
    v44 = sub_1C44157D4(v41, 1, v43);
    v45 = v0[13];
    if (v44 == 1)
    {
      sub_1C4420C3C(v40 + v42, &qword_1EC0C27A0, &unk_1C4F4BA30);
      sub_1C4420C3C(v45, &qword_1EC0C2A18, &qword_1C4F4C6C0);
      v46 = 0;
      v81 = 0xE000000000000000;
    }

    else
    {
      sub_1C4AA38CC(&qword_1EC0C2A28, MEMORY[0x1E69A9C88]);
      v46 = sub_1C4F00FB8();
      v81 = v47;
      sub_1C440A6B8(v43);
      (*(v48 + 8))(v45, v43);
      sub_1C4420C3C(v40 + v42, &qword_1EC0C27A0, &unk_1C4F4BA30);
    }

    v49 = v0[26];
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CC8();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[24];
    v54 = v0[25];
    v55 = v0[23];
    if (v52)
    {
      v78 = v46;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v83[0] = v57;
      *v56 = 136315138;
      v58 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v59 = MEMORY[0x1C6940380](v58, &type metadata for PersonalKnowledgeResult);
      v61 = v60;

      v62 = sub_1C441D828(v59, v61, v83);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_1C43F8000, v50, v51, "final result: %s", v56, 0xCu);
      sub_1C440962C(v57);
      sub_1C43FEA20();
      v46 = v78;
      sub_1C43FBE2C();
    }

    (*(v53 + 8))(v54, v55);
    v63 = v0[25];
    sub_1C4400B34();
    sub_1C4420C3C(v53 + 8, &qword_1EC0C2A20, qword_1C4F4C6C8);

    v64 = v0[1];

    return v64(v82, v46, v81);
  }

  if (v30 == *MEMORY[0x1E69A94D0])
  {
    v79 = v26;
LABEL_8:
    v82 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  if (v30 != *MEMORY[0x1E69A94D8])
  {
    v79 = v26;
    if (v30 != *MEMORY[0x1E69A94E8])
    {
      (*(v0[15] + 8))(v0[16], v0[14]);
    }

    goto LABEL_8;
  }

  v66 = v0[24];
  v67 = v0[25];
  v68 = v0[22];
  v69 = v0[23];
  v70 = sub_1C4EFFB68();
  sub_1C440783C();
  sub_1C4AA38CC(v71, v72);
  sub_1C440E690();
  v73 = *MEMORY[0x1E69A9B18];
  sub_1C440A6B8(v70);
  (*(v74 + 104))();
  swift_willThrow();

  (*(v66 + 8))(v67, v69);
  sub_1C4420C3C(v21 + v80, &qword_1EC0C27A0, &unk_1C4F4BA30);
  sub_1C4420C3C(v68, &qword_1EC0C2A20, qword_1C4F4C6C8);
  v75 = v0[25];
  sub_1C4400B34();

  sub_1C43FBDA0();

  return v76();
}

uint64_t sub_1C4AA346C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[28];
  v2 = v0[25];
  sub_1C4400B34();

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4AA3538(uint64_t a1)
{
  sub_1C4812F0C(a1);
  sub_1C456902C(&qword_1EC0C2A00, &qword_1C4F4C6B8);
  sub_1C4AA3848();
  sub_1C4EF9218();

  sub_1C4EF9208();
}

void *sub_1C4AA35D4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0C27A0, &unk_1C4F4BA30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __src - v8;
  v10 = *(sub_1C456902C(&qword_1EC0C2A20, qword_1C4F4C6C8) + 48);
  v11 = sub_1C4EFDB88();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_1C445FFF0(a1 + v10, v9, &qword_1EC0C27A0, &unk_1C4F4BA30);
    PersonalKnowledgeResult.init(_:resultAttribute:dateComponentsFormatter:)(v13, v14, v9, a2, __src);
    nullsub_1(__src);
  }

  else
  {
    sub_1C4A9C758(__src);
  }

  return memcpy(a3, __src, 0xB0uLL);
}

uint64_t sub_1C4AA3714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C46F1200;

  return PersonalKnowledgeTool.perform()();
}

uint64_t sub_1C4AA37B0(uint64_t a1)
{
  v2 = sub_1C4AA37F4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1C4AA37F4()
{
  result = qword_1EC0C2A08;
  if (!qword_1EC0C2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A08);
  }

  return result;
}

unint64_t sub_1C4AA3848()
{
  result = qword_1EC0C2A10;
  if (!qword_1EC0C2A10)
  {
    sub_1C4572308(&qword_1EC0C2A00, &qword_1C4F4C6B8);
    sub_1C4A9F4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A10);
  }

  return result;
}

uint64_t sub_1C4AA38CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4AA3934()
{
  result = qword_1EC0C2A30;
  if (!qword_1EC0C2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A30);
  }

  return result;
}

unint64_t sub_1C4AA398C()
{
  result = qword_1EC0C2A38;
  if (!qword_1EC0C2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2A38);
  }

  return result;
}

uint64_t sub_1C4AA3A74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C2A48, &qword_1C4F4C808);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AA3AC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDE7308, &qword_1EDE2CE60, sub_1C4ABF81C);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3B24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF248, &qword_1EDE2DFF8, sub_1C4ABF944);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3B84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, qword_1EDDFF168, &qword_1EDE2DFC8, sub_1C44FD0B8);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, qword_1EDDFEE20, &qword_1EDE2DFB0, sub_1C4ABF8B0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3C44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF500, &qword_1EDE2E048, sub_1C4ABF788);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4AA3CA4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v5[2] = *(*v1 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = a1;
  v4 = type metadata accessor for PerURLSingletonLockBox.GuardedData();
  sub_1C4AA4060(sub_1C4AA4040, v5, v3, v4, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C4AA3D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  sub_1C4AA3CA4(a1);
}

uint64_t sub_1C4AA3DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EDDFF220, &qword_1EDE2DFD8, sub_1C44F7F70);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA3E00()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1C4AA3E20()
{
  sub_1C4AA3E00();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AA3E54(uint64_t *a1)
{
  v2 = sub_1C4F01F48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = *a1;
  swift_beginAccess();
  sub_1C4EF98F8();
  sub_1C44F8A78();
  sub_1C4F00FA8();
  sub_1C4F00EF8();
  swift_endAccess();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C4AA3F8C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1C4AA3FAC()
{
  sub_1C4AA3F8C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AA3FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C44F885C(a1, &qword_1EC0B7088, &qword_1EC152B90, sub_1C4ABFC28);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4AA4040(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C4AA3E54(a1);
}

void sub_1C4AA40EC(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

id sub_1C4AA4174(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotoRelationshipSet();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1C4AA4208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoRelationshipSet();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C4AA4264(char *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  sub_1C4482F3C(a2, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore20PGRelationshipEntity_tokenizer);
  return v2;
}

void sub_1C4AA42A8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C4F00978();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4400B4C();
  sub_1C4F00158();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CB8();
  if (os_log_type_enabled(v17, v18))
  {
    sub_1C43FD1A8();
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C43F8000, v17, v18, "PGRelationship.completionHandler", v19, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v20 = *(v8 + 8);
  v20(v0, v5);
  sub_1C4F00158();
  v21 = v4;
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CB8();

  if (os_log_type_enabled(v22, v23))
  {
    sub_1C43FECF0();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39 = v20;
    v26 = v13;
    v27 = v2;
    v28 = v5;
    v29 = v25;
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v30 = v21;
    _os_log_impl(&dword_1C43F8000, v22, v23, "PGRelationship.completionHandler.completion %@", v24, 0xCu);
    sub_1C4420C3C(v29, &qword_1EC0BDA00, &qword_1C4F10D30);
    v5 = v28;
    v2 = v27;
    v13 = v26;
    v20 = v39;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v20(v16, v5);
  sub_1C4F00158();
  swift_unknownObjectRetain();
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v31, v32))
  {
    sub_1C43FECF0();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v2;
    v41 = v34;
    *v33 = 136315138;
    swift_unknownObjectRetain();
    sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
    v35 = sub_1C4F01198();
    v37 = sub_1C441D828(v35, v36, &v41);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1C43F8000, v31, v32, "PGRelationship.completionHandler.bookmark %s", v33, 0xCu);
    sub_1C440962C(v34);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v20(v13, v5);
  sub_1C43FE9F0();
}

void sub_1C4AA4610()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = *v0;
  v124 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C2A60, &qword_1C4F4C970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v114 - v7;
  v9 = type metadata accessor for PGRelationshipStructs.IdentifierRelationshipType(0);
  v10 = sub_1C43FBCE0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C456902C(&qword_1EC0C2A68, &qword_1C4F4C978);
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v122 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v123 = v22;
  v23 = sub_1C43FBE44();
  v126 = type metadata accessor for PGRelationshipStructs.Person(v23);
  v24 = sub_1C43FBCE0(v126);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v127 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  v132 = v29;
  sub_1C43FBE44();
  v134 = sub_1C4F00978();
  v30 = sub_1C43FCDF8(v134);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v128 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v135 = v37;
  v38 = [v2 sharedItem];
  v39 = [v38 content];

  if (v39)
  {
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();

    if (v40)
    {
      if (![v2 sharedItemChangeType])
      {
        v116 = v16;
        v121 = v15;
        v117 = v9;
        v118 = v8;
        v119 = v4;
        v120 = v2;
        v41 = [v2 allLocalInstances];
        sub_1C456902C(&unk_1EC0C2A70, &qword_1C4F4C980);
        v42 = sub_1C4F01678();

        v43 = v42;
        v44 = sub_1C4428DA0();
        v45 = 0;
        v130 = v42 & 0xC000000000000001;
        v131 = v44;
        v129 = v42 & 0xFFFFFFFFFFFFFF8;
        v133 = (v32 + 8);
        v46 = MEMORY[0x1E69E7CC0];
        *&v47 = 136315138;
        v125 = v47;
        while (1)
        {
          if (v131 == v45)
          {

            if (qword_1EDDF7958 != -1)
            {
              goto LABEL_40;
            }

            goto LABEL_21;
          }

          if (v130)
          {
            v48 = MEMORY[0x1C6940F90](v45, v43);
          }

          else
          {
            if (v45 >= *(v129 + 16))
            {
              goto LABEL_38;
            }

            v48 = *(v43 + 8 * v45 + 32);
          }

          v49 = v48;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          v50 = [v48 metaContent];
          if (!v50)
          {
            __break(1u);
LABEL_42:
            __break(1u);
            return;
          }

          v51 = v50;
          v52 = [v50 sourceItemIdentifier];

          v53 = sub_1C4F01138();
          v55 = v54;

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = v46[2];
            sub_1C443D664();
            v46 = v66;
          }

          v56 = v46[2];
          if (v56 >= v46[3] >> 1)
          {
            sub_1C443D664();
            v46 = v67;
          }

          v46[2] = v56 + 1;
          v57 = &v46[2 * v56];
          v57[4] = v53;
          v57[5] = v55;
          sub_1C4F00158();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v58 = sub_1C4F00968();
          v59 = sub_1C4F01CB8();

          if (os_log_type_enabled(v58, v59))
          {
            sub_1C43FECF0();
            v60 = v46;
            v61 = v43;
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v136 = v63;
            *v62 = v125;
            v64 = sub_1C441D828(v53, v55, &v136);

            *(v62 + 4) = v64;
            _os_log_impl(&dword_1C43F8000, v58, v59, "PGRelationship.itemField.sourceIdentifier %s", v62, 0xCu);
            sub_1C440962C(v63);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v43 = v61;
            v46 = v60;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {
          }

          (*v133)(v135, v134);
          ++v45;
        }

        __break(1u);
LABEL_38:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_40:
          swift_once();
LABEL_21:
          v129 = type metadata accessor for SourceIdPrefix();
          sub_1C442B738(v129, qword_1EDE2D6E0);
          String.base64EncodedSHA(withPrefix:)();
          v135 = v68;
          v130 = v46[2];
          v131 = v69;
          if (!v130)
          {
            break;
          }

          v70 = 0;
          v115 = OBJC_IVAR____TtC24IntelligencePlatformCore20PGRelationshipEntity_tokenizer;
          v71 = v46 + 5;
          v125 = xmmword_1C4F17530;
          v114 = xmmword_1C4F4C8D0;
          while (v70 < v46[2])
          {
            v72 = *(v71 - 1);
            v73 = *v71;
            v136 = v72;
            v137 = v73;
            v138 = 47;
            v139 = 0xE100000000000000;
            sub_1C4415EA8();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if ((sub_1C4F02048() & 1) == 0)
            {
              sub_1C4AA6784();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v75 = sub_1C4AA67C8(v72, v73, ObjCClassFromMetadata);
              if (!v76)
              {
                goto LABEL_42;
              }

              v72 = v75;
              v77 = v76;

              v73 = v77;
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v78 = v132;
            sub_1C4E33870();
            v79 = v78 + *(v126 + 36);
            v80 = *(v79 + 8);

            *v79 = v125;
            if (qword_1EDDF78B8 != -1)
            {
              swift_once();
            }

            v81 = sub_1C442B738(v129, &qword_1EDE2D5F0);
            v83 = *v81;
            v82 = v81[1];
            v136 = v83;
            v137 = v82;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            MEMORY[0x1C6940010](58, 0xE100000000000000);
            MEMORY[0x1C6940010](v72, v73);
            sub_1C4E33870();
            v84 = v116;
            v85 = v123;
            v86 = v123 + *(v116 + 48);
            sub_1C4AA51A8();
            *v85 = v87;
            v88 = v122;
            sub_1C445FFF0(v85, v122, &qword_1EC0C2A68, &qword_1C4F4C978);
            v89 = *v88;

            sub_1C4E34208(v88 + *(v84 + 48));
            v90 = v85;
            v91 = v127;
            sub_1C445FFF0(v90, v88, &qword_1EC0C2A68, &qword_1C4F4C978);
            v92 = *v88;
            sub_1C4420C3C(v88 + *(v84 + 48), &qword_1EC0C2A88, &qword_1C4F4C988);
            v93 = *(v126 + 48);
            v94 = *(v91 + v93);

            *(v91 + v93) = v92;
            sub_1C4E37FA4();
            sub_1C4EFEEF8();
            v95 = v121;
            sub_1C43FCF64();
            sub_1C440BAA8(v96, v97, v98, v99);
            v100 = v117;
            v101 = v95 + v117[5];
            sub_1C4EFD258();
            v102 = v100[6];
            if (qword_1EDDFD2C8 != -1)
            {
              sub_1C44072C0();
              swift_once();
            }

            v103 = type metadata accessor for Source();
            sub_1C442B738(v103, qword_1EDDFD2D0);
            sub_1C441A268();
            sub_1C448CF6C(v104, v95 + v102, v105);
            v106 = v95 + v100[7];
            sub_1C4EFE558();
            v107 = v100[9];
            v108 = (v95 + v100[8]);
            sub_1C4EFE658();
            v109 = v100[10];
            *v108 = v72;
            v108[1] = v73;
            *(v95 + v109) = v114;
            v110 = v118;
            sub_1C448CF6C(v95, v118, type metadata accessor for PGRelationshipStructs.IdentifierRelationshipType);
            sub_1C440BAA8(v110, 0, 1, v100);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4E34314(v110);
            v111 = v124;
            LOBYTE(v136) = *(v124 + 24);
            v112 = sub_1C4E34420(v131, v135, &v136);
            swift_beginAccess();
            sub_1C49D3614(v112);
            swift_endAccess();
            LOBYTE(v136) = *(v111 + 24);
            v113 = sub_1C4E34420(v72, v73, &v136);

            swift_beginAccess();
            sub_1C49D3614(v113);
            swift_endAccess();
            sub_1C4420C3C(v123, &qword_1EC0C2A68, &qword_1C4F4C978);
            sub_1C4AA6848(v127, type metadata accessor for PGRelationshipStructs.Person);
            sub_1C4AA6848(v121, type metadata accessor for PGRelationshipStructs.IdentifierRelationshipType);
            sub_1C4AA6848(v132, type metadata accessor for PGRelationshipStructs.Person);
            ++v70;
            v71 += 2;
            if (v130 == v70)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_35:
      }
    }
  }

  sub_1C43FE9F0();
}