uint64_t sub_1C44E1D20(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + *(type metadata accessor for PhaseStores() + 32));
  v7 = VisionKeyValueStore.fetchVisualIdentifiers(for:)();
  sub_1C44E20E4(v7, a3);
}

uint64_t sub_1C44E1D98(uint64_t a1)
{
  v39 = MEMORY[0x1E69E7CC8];
  v28[3] = &v39;
  sub_1C44E1FA4(sub_1C44E20C8, v28, a1);
  v1 = v39;
  v2 = v39 + 64;
  v3 = 1 << *(v39 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v39 + 64);
  v6 = (v3 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v5)) | (v8 << 6);
        v12 = (*(v1 + 48) + 16 * v11);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(v1 + 56) + 56 * v11;
        v17 = *(v15 + 16);
        v16 = *(v15 + 32);
        v18 = *v15;
        v33 = *(v15 + 48);
        v31 = v17;
        v32 = v16;
        v30 = v18;
        v34[0] = v14;
        v34[1] = v13;
        v35 = v18;
        v36 = v17;
        v37 = v16;
        v38 = v33;
        sub_1C461B90C(&v30, v29);
        sub_1C44DDE2C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = *(v9 + 16);
          sub_1C43FCEC0();
          sub_1C458EC60();
          v9 = v26;
        }

        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1C4413F5C(v19);
          sub_1C458EC60();
          v9 = v27;
        }

        v5 &= v5 - 1;
        result = sub_1C4420C3C(v34, &qword_1EC0C2618, qword_1C4F4B440);
        *(v9 + 16) = v20 + 1;
        v21 = v9 + 56 * v20;
        v23 = v31;
        v22 = v32;
        v24 = v30;
        *(v21 + 80) = v33;
        *(v21 + 48) = v23;
        *(v21 + 64) = v22;
        *(v21 + 32) = v24;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C44E1FA4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v7 = a3 + 56;
  v6 = *(a3 + 56);
  v8 = *(a3 + 32);
  sub_1C43FD030();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  if (v11)
  {
    while (1)
    {
      v16 = v15;
LABEL_6:
      v17 = (*(a3 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v11)))));
      v18 = v17[1];
      v19[0] = *v17;
      v19[1] = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a1(v19);
      if (v3)
      {
        break;
      }

      v11 &= v11 - 1;

      v15 = v16;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
      }

      v11 = *(v7 + 8 * v16);
      ++v15;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C44E20E4(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v44 = v7;
  v45 = v3;
  v43 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = *(a1 + 48) + 56 * (__clz(__rbit64(v6)) | (v8 << 6));
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v13 = *(v10 + 48);
      v59 = *v10;
      v62 = v13;
      v60 = v12;
      v61 = v11;
      v14 = v59;
      v15 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      sub_1C461B90C(&v59, &v55);
      sub_1C461B90C(&v59, &v55);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = sub_1C445FAA8(v14, *(&v14 + 1));
      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }

      v18 = *(v15 + 56) + 56 * v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v21 = *v18;
      v22 = *(v18 + 48);
      v58 = v22;
      v56 = v20;
      v57 = v19;
      v55 = v21;
      v23 = v22;
      v24 = HIDWORD(v22);
      if (v62 < v22)
      {
        sub_1C461B90C(&v55, v54);
        sub_1C4851A34(&v59);
        v51 = *(&v57 + 1);
        v52 = v57;
        v48 = *(&v56 + 1);
        v50 = v56;
        v53 = v23;
LABEL_12:
        v47 = *(&v55 + 1);
        v49 = v55;
        goto LABEL_16;
      }

      v53 = v62;
      if (v22 == v62 && *(&v62 + 1) < *(&v22 + 1))
      {
        sub_1C461B90C(&v55, v54);
        sub_1C4851A34(&v59);
        v51 = *(&v57 + 1);
        v52 = v57;
        v48 = *(&v56 + 1);
        v50 = v56;
        goto LABEL_12;
      }

      v51 = *(&v61 + 1);
      v52 = v61;
      v47 = *(&v14 + 1);
      v49 = v14;
      v24 = HIDWORD(v62);
LABEL_15:
      v48 = *(&v60 + 1);
      v50 = v60;
LABEL_16:
      v25 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v54[0] = *a2;
      v26 = v54[0];
      v27 = sub_1C445FAA8(v14, *(&v14 + 1));
      if (__OFADD__(*(v26 + 16), (v28 & 1) == 0))
      {
        goto LABEL_32;
      }

      v29 = v27;
      v30 = v28;
      sub_1C456902C(&qword_1EC0C2610, &unk_1C4F4B430);
      if (sub_1C4F02458())
      {
        v31 = sub_1C445FAA8(v14, *(&v14 + 1));
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_34;
        }

        v29 = v31;
      }

      if (v30)
      {
        v33 = v54[0];
        v34 = *(v54[0] + 56) + 56 * v29;
        v36 = *(v34 + 16);
        v35 = *(v34 + 32);
        v37 = *v34;
        v58 = *(v34 + 48);
        v56 = v36;
        v57 = v35;
        v55 = v37;
        *v34 = v49;
        *(v34 + 8) = v47;
        *(v34 + 16) = v50;
        *(v34 + 24) = v48;
        *(v34 + 32) = v52;
        *(v34 + 40) = v51;
        *(v34 + 48) = v53;
        *(v34 + 52) = v24;
        sub_1C4851A34(&v55);
      }

      else
      {
        v33 = v54[0];
        *(v54[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
        *(v33[6] + 16 * v14) = v14;
        v38 = v33[7] + 56 * v14;
        *v38 = v49;
        *(v38 + 8) = v47;
        *(v38 + 16) = v50;
        *(v38 + 24) = v48;
        *(v38 + 32) = v52;
        *(v38 + 40) = v51;
        *(v38 + 48) = v53;
        *(v38 + 52) = v24;
        v39 = v33[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_33;
        }

        v33[2] = v41;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v6 &= v6 - 1;
      a2 = v43;
      *v43 = v33;

      sub_1C4851A34(&v59);
      v7 = v44;
      v3 = v45;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    sub_1C461B90C(&v59, &v55);
    sub_1C461B90C(&v59, &v55);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_14:
    v24 = HIDWORD(v62);
    v53 = v62;
    v51 = *(&v61 + 1);
    v52 = v61;
    v47 = *(&v14 + 1);
    v49 = v14;
    goto LABEL_15;
  }

LABEL_4:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C44E24F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1C445FAA8(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C44E2534(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1C44E254C()
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
  v20 = type metadata accessor for PeopleMatcher();
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
          sub_1C447E868(v4, type metadata accessor for PeopleMatcher);
          sub_1C44D8B38();
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
  sub_1C44E2A2C(v42);
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
  switch(*(v0 + v5[8]))
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
        sub_1C445AABC(v5[7]);
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
        v63 = *(v0 + v5[7]);
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

uint64_t sub_1C44E2A2C@<X0>(uint64_t a1@<X8>)
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
  v19 = type metadata accessor for PeopleMatcher();
  switch(*(v2 + *(v19 + 32)))
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
        v38 = sub_1C447CB3C(&qword_1EDDF7F90, type metadata accessor for PeopleMatcher);
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
        v38 = sub_1C447CB3C(&qword_1EDDF7F90, type metadata accessor for PeopleMatcher);
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

uint64_t sub_1C44E2E7C()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C44E2F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF91B8, type metadata accessor for EntityMatch);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void EntityMatch.init(from:)()
{
  sub_1C43FE96C();
  v65 = v0;
  v4 = v3;
  v60 = v5;
  v69 = sub_1C4EFF0C8();
  v6 = sub_1C43FCDF8(v69);
  v67 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = sub_1C4EFD548();
  v17 = sub_1C43FCDF8(v16);
  v63 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v21 = sub_1C456902C(&qword_1EC0BE138, &qword_1C4F32670);
  v22 = sub_1C43FCDF8(v21);
  v61 = v23;
  v62 = v22;
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v27 = sub_1C4402274();
  v68 = type metadata accessor for EntityMatch(v27);
  v28 = sub_1C43FBCE0(v68);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v32 = v31;
  v33 = v4[3];
  v34 = v4[4];
  v66 = v4;
  sub_1C4417F50(v4, v33);
  sub_1C44DE3A4();
  v64 = v2;
  sub_1C44BBC60();
  v35 = v65;
  sub_1C4F02BC8();
  if (v35)
  {
    sub_1C441D6F0();
    v36 = v32;
    v37 = v68;
    v38 = v16;
    sub_1C440962C(v66);
    if (v4)
    {
      v50 = v69;
      v51 = v67;
      (*(v63 + 8))(v36, v38);
      if ((v15 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v50 = v69;
    v51 = v67;
    if (v15)
    {
LABEL_8:
      (*(v51 + 8))(v36 + *(v37 + 20), v50);
    }
  }

  else
  {
    v65 = v15;
    LOBYTE(v70) = 0;
    sub_1C44004E0();
    sub_1C4490F60(v39, v40);
    sub_1C44E76EC();
    sub_1C443EF1C();
    sub_1C4F026C8();
    v41 = *(v63 + 32);
    v42 = v32;
    v59 = v16;
    v41(v32, v1, v16);
    LOBYTE(v70) = 1;
    sub_1C4419854();
    sub_1C4490F60(v43, v44);
    v45 = v65;
    v46 = v69;
    sub_1C440EDF8();
    sub_1C4F026C8();
    v47 = v68[5];
    v48 = *(v67 + 32);
    v58 = v42;
    v65 = v48;
    v48(v42 + v47, v45, v46);
    sub_1C4471CBC(2);
    v49 = v12;
    sub_1C440EDF8();
    sub_1C443EF1C();
    sub_1C4F026C8();
    v52 = v68;
    v53 = v58;
    v65(v58 + v68[6], v49, v46);
    LOBYTE(v70) = 3;
    sub_1C443EF1C();
    sub_1C4F026A8();
    *(v53 + v52[7]) = v54;
    LOBYTE(v70) = 4;
    sub_1C443EF1C();
    sub_1C4F02698();
    v55 = v61;
    *(v53 + v52[8]) = v56;
    sub_1C44C8A04();
    sub_1C443EF1C();
    sub_1C4F026C8();
    *(v53 + v52[9]) = v70;
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4473454(&qword_1EDDFCEF0);
    sub_1C443EF1C();
    sub_1C4F02658();
    (*(v55 + 8))(v64, v62);
    *(v53 + v52[10]) = v70;
    sub_1C449EEE8();
    sub_1C440962C(v66);
    sub_1C449F22C();
  }

LABEL_9:
  sub_1C43FBC80();
}

void sub_1C44E3664()
{
  sub_1C43FFB60();
  sub_1C4EFF0C8();
  sub_1C4403D08(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

uint64_t sub_1C44E3714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C44E37D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityMatch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C44E383C(uint64_t a1)
{
  v2 = type metadata accessor for EntityMatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C44E3898(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v104 = a5;
  v98 = a4;
  v96 = a3;
  v99 = a1;
  v8 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v95 - v10;
  v113 = type metadata accessor for EntityMatch(0);
  v111 = *(v113 - 8);
  v12 = *(v111 + 64);
  v13 = MEMORY[0x1EEE9AC00](v113);
  v114 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v95 - v15;
  v102 = sub_1C456902C(&qword_1EC0BE530, &qword_1C4F37358);
  v105 = *(v102 - 8);
  v16 = *(v105 + 64);
  v17 = MEMORY[0x1EEE9AC00](v102);
  v95 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v106 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v95 - v21;
  v22 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v95 - v24;
  v116 = sub_1C4EFF0C8();
  v26 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v108 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v103 = *a2;
  v29 = *(a6 + 16);
  v110 = v30;
  v107 = (v30 + 32);
  v31 = (a6 + 40);
  v109 = MEMORY[0x1E69E7CC0];
  v112 = v11;
  for (i = (a6 + 40); ; v31 = i)
  {
    v32 = ~v28;
    v33 = &v31[16 * v28];
    v34 = v29 - v28;
    if (!v34)
    {
      break;
    }

    while (1)
    {
      v35 = *(v33 - 1);
      v36 = *v33;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF0D8();
      if (sub_1C44157D4(v25, 1, v116) != 1)
      {
        break;
      }

      sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
      --v32;
      v33 += 16;
      if (!--v34)
      {
        goto LABEL_11;
      }
    }

    v37 = *v107;
    (*v107)(v108, v25, v116);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C44D45E4(0, *(v109 + 16) + 1, 1, v109);
      v109 = v41;
    }

    v39 = *(v109 + 16);
    v38 = *(v109 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1C44D45E4(v38 > 1, v39 + 1, 1, v109);
      v109 = v42;
    }

    v28 = -v32;
    v40 = v109;
    *(v109 + 16) = v39 + 1;
    v37((v40 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v39), v108, v116);
  }

LABEL_11:
  if (qword_1EDDF91F0 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v43 = sub_1C4EFBD38();
    v44 = sub_1C442B738(v43, qword_1EDE2DAD0);
    v45 = MEMORY[0x1E69A0050];
    v124 = v43;
    v125 = MEMORY[0x1E69A0050];
    v46 = sub_1C4422F90(&v123);
    v47 = *(v43 - 1);
    v48 = *(v47 + 16);
    v49 = v47 + 16;
    (v48)(v46, v44, v43);
    v50 = v116;
    v118 = v116;
    v119 = sub_1C4490890(&qword_1EDDFCCA0, MEMORY[0x1E69A9810]);
    v51 = sub_1C4422F90(v117);
    v52 = *(v110 + 16);
    v108 = (v110 + 16);
    v107 = v52;
    (v52)(v51, v104, v50);
    v53 = sub_1C4EFB298();
    v54 = MEMORY[0x1E699FE60];
    v121 = v53;
    v122 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v120);
    sub_1C4EFBB28();
    sub_1C4420C3C(v117, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v123);
    v126 = v109;
    v124 = v43;
    v125 = v45;
    v55 = sub_1C4422F90(&v123);
    i = v48;
    v104 = v49;
    (v48)(v55, v44, v43);
    v118 = v53;
    v119 = v54;
    sub_1C4422F90(v117);
    sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4F01458();
    sub_1C440962C(&v123);

    v109 = v53;
    v124 = v53;
    v125 = v54;
    sub_1C4422F90(&v123);
    sub_1C4EFBB78();
    sub_1C440962C(v117);
    sub_1C440962C(v120);
    sub_1C4490890(&qword_1EDDF91E8, type metadata accessor for EntityMatch);
    v56 = v113;
    sub_1C4EFAE28();
    sub_1C440962C(&v123);
    if (qword_1EDDF9200 != -1)
    {
      swift_once();
    }

    v57 = sub_1C442B738(v43, qword_1EDE2DAE8);
    v121 = v43;
    v122 = MEMORY[0x1E69A0050];
    v58 = sub_1C4422F90(v120);
    v59 = v57;
    v60 = i;
    (i)(v58, v59, v43);
    v61 = 0xE700000000000000;
    v62 = 0x6E776F6E6B6E75;
    v63 = v102;
    v64 = v101;
    switch(v103)
    {
      case 1uLL:
        v61 = 0xE400000000000000;
        v62 = 1819047270;
        break;
      case 2uLL:
        v61 = 0xE500000000000000;
        v62 = 0x61746C6564;
        break;
      case 3uLL:
        v61 = 0xEA0000000000676ELL;
        v62 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v118 = MEMORY[0x1E69E6158];
    v119 = MEMORY[0x1E69A0130];
    v117[0] = v62;
    v117[1] = v61;
    v124 = v109;
    v125 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v123);
    sub_1C4EFBB28();
    sub_1C4420C3C(v117, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v120);
    sub_1C4401CBC(&qword_1EDDFA2E0, &qword_1EC0BE530, &qword_1C4F37358);
    v65 = v106;
    sub_1C4EFB438();
    v66 = *(v105 + 8);
    v106 = (v105 + 8);
    v103 = v66;
    v66(v65, v63);
    sub_1C440962C(&v123);
    if ((v98 & 1) == 0)
    {
      v67 = v60;
      if (qword_1EC0B6BC8 != -1)
      {
        swift_once();
      }

      v68 = sub_1C442B738(v43, qword_1EC1521F8);
      v121 = v43;
      v122 = MEMORY[0x1E69A0050];
      v69 = sub_1C4422F90(v120);
      (v67)(v69, v68, v43);
      v118 = MEMORY[0x1E69E63B0];
      v119 = MEMORY[0x1E69A0160];
      v117[0] = v96;
      v124 = v109;
      v125 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v123);
      sub_1C4EFB808();
      sub_1C440962C(v117);
      sub_1C440962C(v120);
      v70 = v95;
      sub_1C4EFB438();
      v103(v64, v63);
      sub_1C440962C(&v123);
      (*(v105 + 32))(v64, v70, v63);
    }

    sub_1C4401CBC(&qword_1EDDFA2E8, &qword_1EC0BE530, &qword_1C4F37358);
    sub_1C4490890(&qword_1EDDF91D8, type metadata accessor for EntityMatch);
    v71 = v100;
    sub_1C4EFAFD8();
    if (v71)
    {
      break;
    }

    v72 = 0;
    v43 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v73 = v112;
      sub_1C44E4768();
      if (sub_1C44157D4(v73, 1, v56) == 1)
      {
        v103(v101, v102);

        sub_1C4420C3C(v73, &qword_1EC0BB248, &qword_1C4F1E7C8);
        sub_1C44239FC(v72);
        return v43;
      }

      v74 = v115;
      sub_1C44D1B5C(v73, v115, type metadata accessor for EntityMatch);
      v75 = *(v56 + 20);
      sub_1C4490938(v74, v114, type metadata accessor for EntityMatch);
      sub_1C44239FC(v72);
      swift_isUniquelyReferenced_nonNull_native();
      v123 = v43;
      sub_1C44E3664();
      if (__OFADD__(v43[2], (v77 & 1) == 0))
      {
        break;
      }

      v78 = v76;
      v79 = v77;
      sub_1C456902C(&qword_1EC0BA848, &unk_1C4F4F970);
      v80 = sub_1C4F02458();
      v43 = v123;
      if (v80)
      {
        sub_1C44E3664();
        if ((v79 & 1) != (v82 & 1))
        {
          sub_1C4F029F8();
          __break(1u);
          JUMPOUT(0x1C44E4758);
        }

        v78 = v81;
      }

      if ((v79 & 1) == 0)
      {
        v43[(v78 >> 6) + 8] |= 1 << v78;
        (v107)(v43[6] + *(v110 + 72) * v78, v115 + v75, v116);
        *(v43[7] + 8 * v78) = MEMORY[0x1E69E7CC0];
        v83 = v43[2];
        v84 = __OFADD__(v83, 1);
        v85 = v83 + 1;
        if (v84)
        {
          goto LABEL_41;
        }

        v43[2] = v85;
      }

      v86 = v43[7];
      v87 = *(v86 + 8 * v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v86 + 8 * v78) = v87;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44E3770(0, *(v87 + 16) + 1, 1, v87);
        v87 = v92;
        *(v86 + 8 * v78) = v92;
      }

      v90 = *(v87 + 16);
      v89 = *(v87 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_1C44E3770(v89 > 1, v90 + 1, 1, v87);
        *(v86 + 8 * v78) = v93;
      }

      sub_1C4491300(v115, type metadata accessor for EntityMatch);
      v91 = *(v86 + 8 * v78);
      *(v91 + 16) = v90 + 1;
      sub_1C44D1B5C(v114, v91 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v90, type metadata accessor for EntityMatch);
      v72 = sub_1C455B584;
      v56 = v113;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v103(v64, v63);
  return v43;
}

void sub_1C44E4768()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  sub_1C442C998(&unk_1EDDFA390, &unk_1EC0BC9E8, &unk_1C4F29B70);
  if (sub_1C440C4B0())
  {
    type metadata accessor for EntityMatch(0);
    v6 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v6, v7, v8, v9);
    goto LABEL_9;
  }

  sub_1C4406CA4(&unk_1EDDFA3A0, &unk_1EC0BC9E8, &unk_1C4F29B70);
  sub_1C444FD58();
  v10 = sub_1C43FBE94();
  type metadata accessor for EntityMatch(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &qword_1EC0BB248, &qword_1C4F1E7C8);
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

uint64_t sub_1C44E4944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v116 = a8;
  v117 = a7;
  v122 = a6;
  v123 = a4;
  v121 = a1;
  v12 = sub_1C4EFD548();
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v108 - v17;
  v19 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v108 - v21;
  v23 = type metadata accessor for EntityMatch(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C4EFF0C8();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v108 - v35;
  result = MEMORY[0x1E69E7CC0];
  v129 = MEMORY[0x1E69E7CC0];
  if (*(a2 + 16))
  {
    v114 = v34;
    v115 = v26;
    v113 = a5;
    v38 = v33;
    v39 = type metadata accessor for EntityTriple(0);
    v126 = v38;
    v127 = v36;
    v40 = a2;
    v41 = v39 - 8;
    v42 = *(*(v39 - 8) + 80);
    v112 = v40;
    v43 = v40 + ((v42 + 32) & ~v42);
    v124 = *(v38 + 16);
    v125 = v38 + 16;
    v124(v36, v43, v27);
    v44 = *(v41 + 48);
    v45 = v127;
    v46 = (v43 + v44);
    v47 = *v46;
    v111 = v46[1];
    v48 = sub_1C44E5514(v127, a3);
    v49 = v27;
    if (v48)
    {
      v50 = v48;
      sub_1C44E5530(v48, v22);
      if (sub_1C44157D4(v22, 1, v23) == 1)
      {

        v51 = &qword_1EC0BB248;
        v52 = &qword_1C4F1E7C8;
        v53 = v22;
      }

      else
      {
        v110 = v47;
        v54 = v115;
        sub_1C44E3714(v22, v115);
        sub_1C44E555C(v54 + *(v23 + 24), v123);
        if (sub_1C44157D4(v18, 1, v27) != 1)
        {
          v123 = v50;
          (*(v126 + 32))(v114, v18, v27);
          v66 = type metadata accessor for Resolver();
          v67 = *(v66 + 28);
          v68 = v113;
          v69 = *(v113 + v67);
          v70 = v122;
          v109 = v66;
          switch(v69)
          {
            case 1:

              goto LABEL_16;
            default:
              v71 = sub_1C4F02938();

              if ((v71 & 1) == 0)
              {
                goto LABEL_29;
              }

LABEL_16:
              v73 = (v68 + *(v66 + 20));
              if (qword_1EDDFED28 != -1)
              {
                swift_once();
              }

              v74 = type metadata accessor for Source();
              v75 = sub_1C442B738(v74, &unk_1EDDFD088);
              if (*v73 != *v75 || v73[1] != v75[1])
              {
                v72 = sub_1C4F02938();
                if ((v72 & 1) == 0)
                {
                  goto LABEL_26;
                }
              }

              v77 = v118;
              sub_1C4EFD4C8();
              v78 = sub_1C44E560C(v70, v77);
              v72 = (*(v119 + 8))(v77, v120);
              if ((v78 & 1) == 0)
              {
                goto LABEL_26;
              }

              sub_1C4EFF048();
              sub_1C4EFF048();
              v79 = v117;
              v80 = *v117;
              swift_isUniquelyReferenced_nonNull_native();
              v128 = *v79;
              sub_1C44E737C();
              *v79 = v128;

              v72 = *v79;
              if (*(*v79 + 16) == v116)
              {
                v81 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v82 = sub_1C449C4C8(v81);
                sub_1C449BB14(v82, sub_1C449C8B8);

                sub_1C456902C(&qword_1EC0C3200, &qword_1C4F4F968);
                v72 = sub_1C4F00F88();
LABEL_26:
                v68 = v113;
              }

              else
              {
                v68 = v113;
              }

LABEL_29:
              MEMORY[0x1EEE9AC00](v72);
              v83 = v121;
              *(&v108 - 6) = v68;
              *(&v108 - 5) = v83;
              *(&v108 - 4) = v70;
              *(&v108 - 3) = a9;
              v84 = v114;
              *(&v108 - 2) = v114;
              sub_1C44E5654(sub_1C44E5830, (&v108 - 8), v112, v85, v86, v87, v88, v89, v108, v109);
              v91 = v90;
              sub_1C456902C(&qword_1EC0B91A8, &qword_1C4F0ECB0);
              v92 = (type metadata accessor for TranslatedEntityTriple(0) - 8);
              v93 = *(*v92 + 72);
              v94 = (*(*v92 + 80) + 32) & ~*(*v92 + 80);
              v95 = swift_allocObject();
              *(v95 + 16) = xmmword_1C4F0D130;
              v96 = v95 + v94;
              v124((v95 + v94), v84, v49);
              v97 = v95 + v94 + v92[7];
              sub_1C4EFECB8();
              v98 = v95 + v94 + v92[8];
              sub_1C4EFF888();
              v99 = v95 + v94 + v92[9];
              sub_1C4EFEC38();
              sub_1C4471AF0(v68 + *(v109 + 20), v95 + v94 + v92[11]);
              v100 = v111;
              swift_bridgeObjectRetain_n();
              sub_1C4EF9AE8();
              v101 = *(v68 + v67);
              v102 = (v96 + v92[10]);
              v103 = v110;
              *v102 = v110;
              v102[1] = v100;
              v104 = (v96 + v92[12]);
              *v104 = v103;
              v104[1] = v100;
              *(v96 + v92[13]) = v105;
              *(v96 + v92[14]) = v101;
              v128 = v91;
              v106 = sub_1C44E6444(v95);
              v129 = v128;
              MEMORY[0x1EEE9AC00](v106);
              *(&v108 - 6) = &v129;
              *(&v108 - 5) = v68;
              *(&v108 - 4) = v84;
              *(&v108 - 3) = v103;
              *(&v108 - 2) = v100;
              sub_1C44E6508(sub_1C44E6F64, (&v108 - 8), v123);

              sub_1C447EB38(v115, type metadata accessor for EntityMatch);
              v107 = *(v126 + 8);
              v107(v127, v49);
              v107(v84, v49);
              break;
          }

          return v129;
        }

        sub_1C447EB38(v54, type metadata accessor for EntityMatch);

        v51 = &unk_1EC0BA0E0;
        v52 = &qword_1C4F105A0;
        v53 = v18;
      }

      sub_1C4420C3C(v53, v51, v52);
    }

    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v55 = sub_1C4F00978();
    sub_1C442B738(v55, qword_1EDE2DE10);
    v124(v31, v45, v27);
    v56 = sub_1C4F00968();
    v57 = sub_1C4F01CD8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v128 = v59;
      *v58 = 136380675;
      sub_1C4AE2EAC(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
      v60 = sub_1C4F02858();
      v62 = v61;
      v63 = *(v126 + 8);
      v63(v31, v49);
      v64 = sub_1C441D828(v60, v62, &v128);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_1C43F8000, v56, v57, "Resolver: No match found for entity %{private}s. Not translating", v58, 0xCu);
      sub_1C440962C(v59);
      MEMORY[0x1C6942830](v59, -1, -1);
      MEMORY[0x1C6942830](v58, -1, -1);

      v63(v127, v49);
    }

    else
    {

      v65 = *(v126 + 8);
      v65(v31, v27);
      v65(v45, v27);
    }

    return v129;
  }

  return result;
}

uint64_t sub_1C44E54C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C4414964(v3);
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44E555C(uint64_t a1, uint64_t a2)
{
  sub_1C446BE60(a1, a2);
  if (v4 && (v5 = v3, sub_1C44E3664(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1C4EFF0C8();
    sub_1C43FBCE0(v10);
    (*(v11 + 16))(v2, v9 + *(v11 + 72) * v8, v10);
    v12 = v2;
    v13 = 0;
    v14 = 1;
    v15 = v10;
  }

  else
  {
    sub_1C4EFF0C8();
    v12 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v12, v13, v14, v15);
}

void sub_1C44E5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v26 = v14;
  v15 = type metadata accessor for TranslatedEntityTriple(0);
  v16 = sub_1C43FCF7C(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C44E57E8();
    v19 = type metadata accessor for EntityTriple(0);
    sub_1C43FCF7C(v19);
    v21 = v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v25 = *(v22 + 72);
    while (1)
    {
      v26(v21);
      if (v10)
      {
        break;
      }

      v10 = 0;
      v23 = *(a10 + 16);
      if (v23 >= *(a10 + 24) >> 1)
      {
        sub_1C44148DC();
        sub_1C44E57E8();
      }

      *(a10 + 16) = v23 + 1;
      sub_1C442C4C8();
      sub_1C44DD748(v11, v24, type metadata accessor for TranslatedEntityTriple);
      v21 += v25;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

void sub_1C44E57E8()
{
  v1 = *v0;
  sub_1C444AFF8();
  sub_1C44D48B8();
  *v0 = v2;
}

uint64_t sub_1C44E5858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v103 = a6;
  v94[1] = a5;
  v98 = a4;
  v99 = a3;
  v106 = a2;
  v100 = a7;
  v8 = sub_1C4EFD548();
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v95 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v94 - v13;
  v15 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v94 - v17;
  v19 = sub_1C4EFF0C8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v94[0] = v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v94 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v94 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = v94 - v30;
  v101 = type metadata accessor for EntityTriple(0);
  v102 = a1;
  v32 = (a1 + *(v101 + 32));
  v34 = *v32;
  v33 = v32[1];
  swift_bridgeObjectRetain_n();
  v105 = v34;
  v107 = v33;
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v18, 1, v19) == 1)
  {
    sub_1C4420C3C(v18, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v35 = v20;
    v36 = v103;
  }

  else
  {
    v37 = *(v20 + 32);
    v37(v31, v18, v19);
    v38 = sub_1C44E5514(v31, v99);
    sub_1C44E618C(v38);

    v39 = type metadata accessor for EntityMatch(0);
    if (sub_1C44157D4(v14, 1, v39) == 1)
    {
      v40 = v31;
      v41 = v20;
      sub_1C4420C3C(v14, &qword_1EC0BB248, &qword_1C4F1E7C8);
      v42 = type metadata accessor for Resolver();
      v43 = v103;
      v35 = v20;
      switch(*(v106 + *(v42 + 28)))
      {
        case 2:

          goto LABEL_8;
        default:
          v47 = sub_1C4F02938();

          if ((v47 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_8:
          v48 = (v106 + *(v42 + 20));
          if (qword_1EDDFED28 != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Source();
          v50 = sub_1C442B738(v49, &unk_1EDDFD088);
          v51 = *v48 == *v50 && v48[1] == v50[1];
          if (v51 || (sub_1C4F02938()) && (v52 = v95, sub_1C4EFD4C8(), v53 = sub_1C44E560C(v98, v52), (*(v96 + 8))(v52, v97), (v53))
          {
            sub_1C4EFF048();
            v54 = v104;
            v55 = sub_1C446B0A0();
            v104 = v54;
            if (v54)
            {

              if (qword_1EDDFD028 != -1)
              {
                swift_once();
              }

              v57 = sub_1C4F00978();
              sub_1C442B738(v57, qword_1EDE2DE10);
              v58 = v94[0];
              (*(v20 + 16))(v94[0], v40, v19);
              v59 = sub_1C4F00968();
              v60 = v19;
              v61 = sub_1C4F01CD8();
              if (os_log_type_enabled(v59, v61))
              {
                v62 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                v108 = v63;
                *v62 = 136315138;
                v98 = v59;
                v97 = sub_1C4EFF048();
                v65 = v64;
                v99 = v40;
                v66 = *(v35 + 8);
                v66(v58, v60);
                v67 = sub_1C441D828(v97, v65, &v108);

                *(v62 + 4) = v67;
                v68 = v98;
                _os_log_impl(&dword_1C43F8000, v98, v61, "Unable to fetch value for key %s from Resolver KVStore", v62, 0xCu);
                sub_1C440962C(v63);
                MEMORY[0x1C6942830](v63, -1, -1);
                MEMORY[0x1C6942830](v62, -1, -1);

                v66(v99, v60);
                v35 = v41;
                v36 = v103;
                v104 = 0;
                v19 = v60;
                break;
              }

              v92 = v58;
              v93 = *(v35 + 8);
              v93(v92, v60);
              v93(v40, v60);
              v104 = 0;
              v19 = v60;
            }

            else
            {
              v90 = v55;
              v91 = v56;
              (*(v20 + 8))(v40, v19);

              if (v91)
              {

                v105 = v90;
                v107 = v91;
              }
            }
          }

          else
          {
LABEL_21:
            (*(v20 + 8))(v40, v19);
          }

          v36 = v43;
          break;
      }
    }

    else
    {
      (*(v20 + 16))(v26, &v14[*(v39 + 24)], v19);
      sub_1C447EB38(v14, type metadata accessor for EntityMatch);
      v37(v29, v26, v19);
      v105 = sub_1C4EFF048();
      v45 = v44;

      v46 = *(v20 + 8);
      v46(v29, v19);
      v46(v31, v19);
      v107 = v45;
      v36 = v103;
      v35 = v20;
    }
  }

  v69 = v100;
  (*(v35 + 16))(v100, v36, v19);
  v70 = v101;
  v71 = *(v101 + 20);
  v72 = type metadata accessor for TranslatedEntityTriple(0);
  v73 = v72[5];
  v74 = sub_1C4EFEEF8();
  v75 = *(*(v74 - 8) + 16);
  v76 = v102;
  v75(v69 + v73, v102 + v71, v74);
  v77 = v70[6];
  v78 = v72[6];
  v79 = sub_1C4EFF8A8();
  (*(*(v79 - 8) + 16))(v69 + v78, v76 + v77, v79);
  v75(v69 + v72[7], v76 + v70[7], v74);
  sub_1C4471AF0(v76 + v70[9], v69 + v72[9]);
  v80 = (v76 + v70[10]);
  v82 = *v80;
  v81 = v80[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v84 = v83;
  result = type metadata accessor for Resolver();
  v86 = *(v106 + *(result + 28));
  v87 = (v69 + v72[8]);
  v88 = v107;
  *v87 = v105;
  v87[1] = v88;
  v89 = (v69 + v72[10]);
  *v89 = v82;
  v89[1] = v81;
  *(v69 + v72[11]) = v84;
  *(v69 + v72[12]) = v86;
  return result;
}

uint64_t sub_1C44E618C(uint64_t a1)
{
  v3 = sub_1C44059B8();
  v4 = type metadata accessor for EntityMatch(v3);
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  result = sub_1C440BAA8(v1, 1, 1, v4);
  if (!a1)
  {
    return result;
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    return result;
  }

  v15 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v7 + 72);
  v17 = 0.0;
  while (1)
  {
    sub_1C4471AF0(v15, v12);
    v18 = v12 + v4[6];
    if ((sub_1C4EFEFF8() & 1) == 0)
    {
LABEL_21:
      v28 = v17;
      goto LABEL_22;
    }

    v19 = *(v12 + v4[10]);
    if (v19)
    {
      if (*(v19 + 16) && (v20 = sub_1C4402490(), (v21 & 1) != 0))
      {
        v22 = (*(v19 + 56) + 16 * v20);
        v23 = *v22;
        v19 = v22[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v23 = 0;
        v19 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    sub_1C441DDD8();
    v36[0] = v24;
    sub_1C4415BB0();
    v36[1] = v25;
    v36[2] = 1702195828;
    v36[3] = 0xE400000000000000;
    memset(&v36[4], 0, 24);
    v37 = 1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44E3634(v36);
    if (!v19)
    {

      goto LABEL_19;
    }

    if (v23 == 1702195828 && v19 == 0xE400000000000000)
    {
      break;
    }

    v27 = sub_1C443F720();

    if (v27)
    {
      goto LABEL_25;
    }

LABEL_19:
    v28 = *(v12 + v4[7]);
    if (v17 >= v28)
    {
      goto LABEL_21;
    }

    sub_1C4420C3C(v1, &qword_1EC0BB248, &qword_1C4F1E7C8);
    sub_1C4407970();
    sub_1C4471AF0(v12, v1);
    v29 = sub_1C43FC024();
    sub_1C440BAA8(v29, v30, v31, v4);
LABEL_22:
    result = sub_1C447EB38(v12, type metadata accessor for EntityMatch);
    v15 += v16;
    v17 = v28;
    if (!--v14)
    {
      return result;
    }
  }

LABEL_25:
  sub_1C4420C3C(v1, &qword_1EC0BB248, &qword_1C4F1E7C8);
  sub_1C4407970();
  sub_1C4471AF0(v12, v1);
  v32 = sub_1C43FC024();
  sub_1C440BAA8(v32, v33, v34, v4);
  sub_1C44123A0();
  return sub_1C447EB38(v12, v35);
}

uint64_t sub_1C44E6534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    if (v9 == v8)
    {
      break;
    }

    v10 = *(a4(0) - 8);
    result = v7(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++);
  }

  while (!v4);
  return result;
}

uint64_t sub_1C44E6654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFD548();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EFF8A8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v140 = MEMORY[0x1E69E7CC0];
  v24 = *(v4 + *(type metadata accessor for EntityMatch(0) + 40));
  if (v24)
  {
    if (*(v24 + 16))
    {
      v25 = sub_1C445FAA8(0xD000000000000010, 0x80000001C4FAED80);
      if (v26)
      {
        v127 = v18;
        v27 = (*(v24 + 56) + 16 * v25);
        v28 = v27[1];
        v120 = *v27;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v122 = sub_1C44735D4(0xD000000000000011, 0x80000001C4FAEDA0, v24);
        v125 = v29;
        if (v29)
        {
          sub_1C4EFD338();
          v30 = v23;
          sub_1C4EFF838();
          sub_1C456902C(&qword_1EC0B91A8, &qword_1C4F0ECB0);
          v115 = v28;
          v31 = sub_1C43FBE94();
          v32 = v15;
          v124 = v15;
          v33 = type metadata accessor for TranslatedEntityTriple(v31);
          v34 = *(v33 - 1);
          v132 = *(v34 + 72);
          v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v117 = *(v34 + 80);
          v119 = v28;
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_1C4F0C890;
          v129 = a3;
          v118 = v35;
          v36 = v116 + v35;
          v134 = sub_1C4EFF0C8();
          v128 = *(*(v134 - 8) + 16);
          v133 = v30;
          v128(v116 + v35, a2, v134);
          v37 = v116 + v35 + v33[5];
          sub_1C4EFE968();
          v131 = *(v127 + 16);
          v131(v116 + v35 + v33[6], v30, v32);
          v38 = v116 + v35 + v33[7];
          sub_1C4EFEBB8();
          sub_1C4EFD338();
          v39 = sub_1C4EFD2F8();
          v41 = v40;
          (*(v9 + 8))(v14, v6);
          v42 = type metadata accessor for Resolver();
          v130 = *(v42 + 20);
          v43 = v33[9];
          sub_1C44201A8();
          v121 = v44;
          sub_1C4471AF0(v135 + v45, v116 + v35 + v46);
          sub_1C4EF9AE8();
          v114 = v42;
          v47 = *(v42 + 28);
          v48 = *(v135 + v47);
          v49 = (v116 + v35 + v33[8]);
          *v49 = v39;
          v49[1] = v41;
          v50 = (v116 + v35 + v33[10]);
          *v50 = v129;
          v50[1] = a4;
          *(v36 + v33[11]) = v51;
          *(v36 + v33[12]) = v48;
          v128(v116 + v35 + v132, a2, v134);
          v52 = v33[5];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFE968();
          v53 = sub_1C4422470();
          (v131)(v53);
          sub_1C44346C4();
          sub_1C4EFE828();
          v54 = v33[9];
          v55 = sub_1C4436634();
          sub_1C4471AF0(v55, v56);
          sub_1C4EF9AE8();
          v57 = *(v135 + v47);
          sub_1C446C020();
          *v58 = v120;
          v58[1] = v115;
          sub_1C446038C();
          *v59 = v129;
          v59[1] = a4;
          sub_1C4403650(v60, v61);
          v128(v116 + v35 + 2 * v132, a2, v134);
          v62 = v33[5];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFE968();
          v63 = sub_1C4422470();
          (v131)(v63);
          sub_1C44346C4();
          sub_1C4EFE838();
          v64 = v33[9];
          v65 = sub_1C4436634();
          sub_1C4471AF0(v65, v66);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EF9AE8();
          v67 = *(v135 + v47);
          sub_1C446C020();
          *v68 = v122;
          v68[1] = v125;
          sub_1C446038C();
          *v69 = v129;
          v69[1] = a4;
          sub_1C4403650(v70, v71);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E6444(v116);
          v72 = sub_1C44735D4(0x6574736567677573, 0xED0000656D614E64, v24);
          v113 = v47;
          if (v73)
          {
            v74 = v72;
            v75 = v73;
            v76 = v47;
            v77 = swift_allocObject();
            *(v77 + 16) = xmmword_1C4F0D130;
            v128(v77 + v118, a2, v134);
            v78 = v77 + v118 + v33[5];
            sub_1C4EFE968();
            v79 = sub_1C4422470();
            (v131)(v79);
            sub_1C44346C4();
            sub_1C4EFE5F8();
            v80 = v33[9];
            sub_1C44201A8();
            v81 = sub_1C4436634();
            sub_1C4471AF0(v81, v82);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EF9AE8();
            v83 = *(v135 + v76);
            sub_1C446C020();
            *v84 = v74;
            v84[1] = v75;
            sub_1C446038C();
            *v85 = v129;
            v85[1] = a4;
            sub_1C4403650(v86, v87);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44E6444(v77);
            v88 = *(v114 + 32);
            v139 = *(v135 + v76);
            sub_1C4578A14(v74, v75, v122, v125, 3485232, 0xE300000000000000, a2, v135 + v88, v129, a4, &v139, v111, v112, v113, v114, v115, v116, v117, v118, v119, v127 + 16, v121, v122);
            v90 = v89;

            sub_1C44E6444(v90);
          }

          else
          {
          }

          v91 = a2;
          v92 = sub_1C44735D4(0xD000000000000015, 0x80000001C4FAEE00, v24);
          if (!v93)
          {
            (*(v127 + 8))(v133, v124);
            return v140;
          }

          v94 = v92;
          v95 = v93;
          v138 = sub_1C44735D4(0xD00000000000001FLL, 0x80000001C4FAEE20, v24);
          v126 = v96;
          if (v96)
          {
            v123 = swift_allocObject();
            *(v123 + 16) = xmmword_1C4F0CE60;
            v128(v123 + v118, v91, v134);
            v97 = v123 + v118 + v33[5];
            sub_1C4EFE968();
            v131(v123 + v118 + v33[6], v133, v124);
            sub_1C44346C4();
            sub_1C4EFEB98();
            sub_1C4471AF0(v135 + v130, v123 + v118 + v33[9]);
            sub_1C4EF9AE8();
            v98 = *(v135 + v113);
            sub_1C446C020();
            *v99 = v94;
            v99[1] = v95;
            sub_1C446038C();
            *v100 = v129;
            v100[1] = a4;
            sub_1C4403650(v101, v102);
            v103 = v123 + v118 + v132;
            v128(v103, v91, v134);
            v104 = v33[5];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EFE968();
            v131(v103 + v33[6], v133, v124);
            sub_1C44346C4();
            sub_1C4EFEB88();
            sub_1C4471AF0(v135 + v130, v103 + v33[9]);
            sub_1C4EF9AE8();
            v105 = *(v135 + v113);
            sub_1C446C020();
            *v106 = v138;
            v106[1] = v126;
            sub_1C446038C();
            *v107 = v129;
            v107[1] = a4;
            sub_1C4403650(v108, v109);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44E6444(v123);
            (*(v127 + 8))(v133, v124);
            return v140;
          }

          (*(v127 + 8))(v133, v124);
        }
      }
    }
  }

  return v140;
}

uint64_t sub_1C44E6FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF3A20, type metadata accessor for TranslatedEntityTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void TranslatedEntityTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v3 = sub_1C456902C(&qword_1EC0BE0C8, &qword_1C4F32600);
  sub_1C4403200(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C44E7310();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v7, v8);
  sub_1C43FE6CC();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v9 = type metadata accessor for TranslatedEntityTriple(0);
    sub_1C4404F64(v9);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v10, v11);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    v24 = v2;
    v12 = v2[6];
    sub_1C4401670();
    sub_1C4EFF8A8();
    sub_1C4406FE8();
    sub_1C4490F60(v13, v14);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v15 = v24[7];
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C43FF10C();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C44A1D74();
    sub_1C441FBB8();
    sub_1C4490F60(v16, v17);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v18 = (v1 + v24[10]);
    v19 = *v18;
    v20 = v18[1];
    sub_1C43FBF44();
    sub_1C4F02798();
    v21 = *(v1 + v24[11]);
    sub_1C449DAB8();
    sub_1C442FDD8();
    sub_1C4F027B8();
    sub_1C443E19C();
    sub_1C43FBF44();
    sub_1C4F027E8();
  }

  v22 = sub_1C440231C();
  v23(v22);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C44E7310()
{
  result = qword_1EDDF3A90;
  if (!qword_1EDDF3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3A90);
  }

  return result;
}

uint64_t sub_1C44E737C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1C445FAA8(v4, v2);
  sub_1C442C5D8(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    v18 = *v1;
    sub_1C445FAA8(v5, v3);
    sub_1C4410A40();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  v21 = *v1;
  if (v17)
  {
    v22 = (*(v21 + 56) + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    sub_1C43FE9F0();
  }

  else
  {
    sub_1C44E749C(v16, v5, v3, v9, v7, v21);
    sub_1C43FE9F0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C44E749C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1C4411708(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1C44E751C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF3A18, type metadata accessor for TranslatedEntityTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C44E7634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = objc_autoreleasePoolPush();
  v14 = sub_1C44E76F8();
  a7(v14, a6, a3, a4, a1);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1C44E76B8()
{
  v2 = *(v0 - 200);
}

uint64_t sub_1C44E7704()
{
  v2 = *(v0 - 216);

  return sub_1C4EFB688();
}

uint64_t sub_1C44E7728@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 16) = v2;
  *(a2 - 8) = 0;

  return sqlite3_column_type(a1, 0);
}

uint64_t sub_1C44E7778()
{

  return swift_beginAccess();
}

uint64_t sub_1C44E77A4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = type metadata accessor for ConstructionGraphTriple(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  result = a1(a3, a4);
  if (!v5)
  {
    v20 = result;
    v21 = v19;
    v28 = v9;
    if (v18)
    {
    }

    v27 = v20;
    if (v21)
    {
      v22 = 0;
      v23 = *(v21 + 16);
      while (1)
      {
        if (v23 == v22)
        {

          v20 = v27;
          goto LABEL_10;
        }

        if (v22 >= *(v21 + 16))
        {
          break;
        }

        sub_1C4471BAC(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v16);
        sub_1C44B95C0(&qword_1EDDE2650, type metadata accessor for ConstructionGraphTriple);
        sub_1C4EFBA58();
        ++v22;
        result = sub_1C44BCC4C(v16, type metadata accessor for ConstructionGraphTriple);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
LABEL_10:
      if (v20)
      {
        v24 = 0;
        v25 = *(v20 + 16);
        while (v25 != v24)
        {
          if (v24 >= *(v27 + 16))
          {
            goto LABEL_18;
          }

          sub_1C4471BAC(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v14);
          sub_1C44B95C0(&qword_1EDDE2658, type metadata accessor for ConstructionGraphTriple);
          sub_1C4EFB6A8();
          ++v24;
          result = sub_1C44BCC4C(v14, type metadata accessor for ConstructionGraphTriple);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C44E7ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a9)(uint64_t), uint64_t (*a10)(uint64_t, uint64_t))
{
  sub_1C44B8118();
  if (v10)
  {
    return a3;
  }

  v37 = a6;
  v38 = a7;
  v19 = *(a3 + *(type metadata accessor for StandardEntityFusion() + 28));
  v20 = sub_1C44E7D44();
  swift_beginAccess();
  v21 = *a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = a8(a1, a2, v19, v20, v21);
  v24 = v23;

  a9(v24);

  a3 = a10(v22, a2);
  v27 = v26;
  v29 = v28;

  if (a3)
  {
    v30 = *(a3 + 16);
  }

  else
  {
    v30 = 0;
  }

  v31 = __OFADD__(*a5, v30);
  v32 = *a5 + v30;
  if (v31)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *a5 = v32;
  if (v27)
  {
    v33 = *(v27 + 16);
  }

  else
  {
    v33 = 0;
  }

  v31 = __OFADD__(*v37, v33);
  v34 = *v37 + v33;
  if (v31)
  {
    goto LABEL_18;
  }

  *v37 = v34;
  if (v29)
  {
    v35 = *(v29 + 16);
  }

  else
  {
    v35 = 0;
  }

  v31 = __OFADD__(*v38, v35);
  v36 = *v38 + v35;
  if (!v31)
  {
    *v38 = v36;
    return a3;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C44E7D44()
{
  v1 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1C4EFD9C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v8 = *(sub_1C44E7FAC() + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4EFD9D8();
  v9 = (v0 + *(type metadata accessor for StandardEntityFusion() + 24));
  v10 = *v9;
  v11 = v9[1];
  v13 = sub_1C4EFD9B8();
  (*(v4 + 8))(v7, v3);

  return v13;
}

uint64_t sub_1C44E7FAC()
{
  sub_1C43FC784();
  v1 = sub_1C43FDCD8();
  sub_1C44E80BC(v1, v2);
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

uint64_t sub_1C44E8040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4415624(a1, a2, sub_1C44019F8, type metadata accessor for ViewGeneration.ViewClients, sub_1C4C87E58, sub_1C4661D6C);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C44E81B8(uint64_t a1, id a2)
{
  v6 = sub_1C4EF98F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessRequester_viewDb);
  sub_1C44E8494(&v30);
  if (!v3)
  {
    v11 = *v31;
    v12 = v33;
    if (v33)
    {
LABEL_3:
      v28[1] = v32;
      v29 = v34;
      v36 = v35;
      v28[0] = *&v31[8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9888();

      v13 = objc_allocWithZone(type metadata accessor for ViewAccessAssertion(0));
      a2 = sub_1C44E8EC8(a1, a2, v9, v11, v28[0], v12 & 1);

      sub_1C441DFEC(v29, v36);
      return a2;
    }

    v15 = v31[24];
    if (v31[24])
    {
      v16 = v34;
      v17 = v35;

      sub_1C450B034();
      swift_allocError();
      *v18 = a1;
      *(v18 + 8) = a2;
      *(v18 + 16) = v15;
      v19 = *&v31[15];
      v20 = *v31;
      *(v18 + 17) = v30;
      *(v18 + 33) = v20;
      *(v18 + 48) = v19;
      *(v18 + 64) = 11;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v21 = v16;
      v22 = v17;
    }

    else
    {
      if (v35 >> 60 != 15)
      {
        goto LABEL_3;
      }

      v23 = v34;
      v24 = v35;

      sub_1C450B034();
      swift_allocError();
      *v25 = a1;
      *(v25 + 8) = a2;
      v26 = *&v31[16];
      v27 = *v31;
      *(v25 + 16) = v30;
      *(v25 + 32) = v27;
      *(v25 + 48) = v26;
      *(v25 + 64) = 12;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v21 = v23;
      v22 = v24;
    }

    sub_1C441DFEC(v21, v22);
  }

  return a2;
}

void sub_1C44E843C()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v2 = sub_1C440CABC();
  sub_1C44E8530(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

__n128 sub_1C44E8494@<Q0>(uint64_t a1@<X8>)
{
  sub_1C44E843C();
  if (!v1)
  {
    result = v9;
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
    *(a1 + 80) = v11 & 1;
    *(a1 + 81) = v12 & 1;
    *(a1 + 88) = v13;
  }

  return result;
}

void sub_1C44E8530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4432434(v12);
  v36[2] = *v10;
  v37 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v37);
  v36[1] = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v36[0] = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v36[3] = v36 - v19;
  v20 = sub_1C4EFAD98();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BE5B0, &unk_1C4F376B0);
  sub_1C4EFB2C8();
  if (!v11)
  {
    sub_1C443137C();
    memcpy(a10, v38, 0x68uLL);
    goto LABEL_8;
  }

  v26 = v11;
  sub_1C4EFA798();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v27 = *(v23 + 8);
  v28 = sub_1C4409D0C();
  v27(v28);
  if (v10)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v29 = v11;
  sub_1C4EFAAC8();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v30 = sub_1C4409D0C();
  v27(v30);
  v38[0] = v11;
  v31 = v11;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442DFA8())
  {

    goto LABEL_8;
  }

  v32 = sub_1C4400510();
  v33(v32);
  v34 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v34, v35);
  __break(1u);
}

void *sub_1C44E87DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v41 = a3;
  v37 = a2;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_1C4EFB768();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v16 = sub_1C444A7BC(a1);

  if (v4)
  {
    return result;
  }

  v36 = a1;
  v18 = *(v16 + 16);

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C4F0D130;
  v20 = MEMORY[0x1E69A0138];
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = v20;
  *(v19 + 32) = v37;
  *(v19 + 40) = v41;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  (*(v12 + 8))(v15, v11);
  sub_1C4EFBC58();
  sub_1C440BAA8(v10, 1, 1, v11);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v21 = sub_1C4EFBC48();
  v22 = v37;
  v23 = v41;
  sub_1C4420C3C(v38, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v21)
  {
    sub_1C450B034();
    swift_allocError();
    *v27 = v22;
    *(v27 + 8) = v23;
    *(v27 + 16) = 0xD000000000000014;
    *(v27 + 24) = 0x80000001C4FB5140;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0xE000000000000000;
    *(v27 + 48) = v38[0];
    *(v27 + 64) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  sub_1C4EFBBA8();
  v24 = sub_1C4EFBBE8();
  if (v24)
  {
    v25 = MEMORY[0x1EEE9AC00](v24);
    *(&v36 - 2) = v21;
    *(&v36 - 1) = 0;
    v26 = sqlite3_column_type(v25, 0);
    if (v26 == 5)
    {
      goto LABEL_19;
    }

    sub_1C4F02AA8();
  }

  else
  {
    sub_1C4EFBB98();
  }

  sub_1C4449828();
  sub_1C4EFBBA8();
  v28 = sub_1C4EFBBE8();
  if (!v28)
  {
    sub_1C4EFBB98();
    v31 = *(&v38[0] + 1);
    v30 = *&v38[0];
    goto LABEL_12;
  }

  v29 = MEMORY[0x1EEE9AC00](v28);
  *(&v36 - 2) = v21;
  *(&v36 - 1) = 1;
  v26 = sqlite3_column_type(v29, 1);
  if (v26 == 5)
  {
LABEL_19:
    MEMORY[0x1EEE9AC00](v26);
    *(&v36 - 2) = sub_1C487BF24;
    *(&v36 - 1) = (&v36 - 4);
    sub_1C4EFB968();
    while (1)
    {
      swift_unexpectedError();
      __break(1u);
    }
  }

  v30 = sub_1C4F011E8();
  *&v38[0] = v30;
LABEL_12:
  *a4 = v30;
  a4[1] = v31;
  sub_1C4EFBBA8();
  v32 = sub_1C4EFBBE8();
  if (v32)
  {
    if (sqlite3_column_type(v32, 2) == 5)
    {

      v33 = 0;
      v34 = 0;
    }

    else
    {
      v34 = sub_1C4F011E8();
      v33 = v35;
    }
  }

  else
  {
    sub_1C4EFBBF8();

    v33 = *(&v38[0] + 1);
    v34 = *&v38[0];
  }

  a4[2] = v34;
  a4[3] = v33;
  return memcpy(a4 + 4, __src, 0x48uLL);
}

id sub_1C44E8EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewName];
  *v14 = a1;
  v14[1] = a2;
  v15 = OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactURL;
  v16 = sub_1C4EF98F8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v6[v15], a3, v16);
  v18 = &v6[OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewArtifactTableName];
  *v18 = a4;
  v18[1] = a5;
  v6[OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_alwaysAvailable] = a6;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v17 + 8))(a3, v16);
  return v19;
}

uint64_t sub_1C44E8FEC()
{
  v2 = *(v0 + 16);
  sub_1C456902C(&qword_1EC0C5470, &unk_1C4F61388);
  result = sub_1C4EFFA58();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1C44E90A4@<X0>(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v5 = *(*a2 + 32);
  v6 = [a1 viewName];
  sub_1C4F01138();

  sub_1C44E9220();
  if (v3)
  {
  }

  v9 = v7;

  v10 = *(v9 + 16);

  v11 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);

  v12 = MEMORY[0x1E699FDC0];
  *a3 = v11;
  a3[1] = v12;
  return result;
}

uint64_t sub_1C44E91E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewName);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19ViewAccessAssertion_viewName + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void sub_1C44E9220()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = _s6ConfigVMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = _s10ViewConfigVMa(0);
  v15 = sub_1C43FBCE0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = *v4;
  v22 = v4[1];
  v23 = *(v2 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_viewDb);
  sub_1C443A738(v8, v6, v24, v25, v26, v27, v28, v29);
  if (!v1)
  {
    v30 = (v20 + *(v14 + 76));
    if (v30[1])
    {
      v31 = v30[4];
      v32 = v30[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4432BE8();
      sub_1C4C82F48();
    }

    else
    {
      sub_1C4438D00(v13);
      v33 = *(v13 + 8);
      v34 = *(v13 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443CE28(v13, _s6ConfigVMa);
      sub_1C4432BE8();
      sub_1C44E94B0();
    }

    sub_1C443CE28(v20, _s10ViewConfigVMa);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C44E93C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C44E9424(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
    v8 = v5 + *(a4 + 44);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

void sub_1C44E94B0()
{
  sub_1C43FE96C();
  v73 = v0;
  v69 = v1;
  v70 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v82 = *MEMORY[0x1E69E9840];
  v11 = sub_1C4EF98F8();
  v12 = sub_1C43FCDF8(v11);
  v71 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v68 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v74 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v75 = v20;
  v21 = sub_1C456902C(&qword_1EC0C5448, &unk_1C4F61348);
  v22 = sub_1C43FBD18(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  v67 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  v29 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  v30 = sub_1C43FBCE0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBD08();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v72 = v11;
  if (v6)
  {
    v80 = v10;
    v81 = v8;
    v78 = 6448174;
    v79 = 0xE300000000000000;
    v76 = 0x6265526C6C75662DLL;
    v77 = 0xEF62642E646C6975;
    sub_1C4415EA8();
    v10 = sub_1C446047C();
    v8 = v37;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v38 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts;
  sub_1C4441A18();
  v39 = *(v4 + v38);
  v40 = sub_1C43FD388();
  sub_1C44E9A8C(v40, v41, v42);

  if (sub_1C44157D4(v28, 1, v29) == 1)
  {
    sub_1C446F170(v28, &qword_1EC0C5448, &unk_1C4F61348);
    swift_endAccess();
    v43 = v75;
    sub_1C43FD388();
    sub_1C4EF9888();
    sub_1C4EF98A8();
    v44 = [objc_opt_self() defaultManager];
    v45 = sub_1C4EF9868();
    v80 = 0;
    v46 = sub_1C446934C(v44, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_);

    v47 = v80;
    if (v46)
    {
      v66 = v44;
      (*(v71 + 16))(v68, v43, v72);
      v80 = v69;
      v81 = v70;
      type metadata accessor for ViewDatabaseArtifact();
      sub_1C43FBDBC();
      swift_allocObject();
      v48 = v47;
      v49 = v73;
      sub_1C4BC40B8();
      if (!v49)
      {
        v56 = v50;
        v57 = *(v29 + 48);
        v58 = sub_1C4EFA608();
        v59 = v67;
        sub_1C440BAA8(v67, 1, 1, v58);
        *(v59 + v57) = v56;
        sub_1C4401E28();
        sub_1C440BAA8(v60, v61, v62, v63);
        sub_1C4403138();

        sub_1C4C8107C(v59, v10, v8);
        swift_endAccess();

        v64 = v72;
        v65 = *(v71 + 8);
        v65(v74, v72);
        v65(v75, v64);
        goto LABEL_11;
      }
    }

    else
    {
      v52 = v80;

      sub_1C4EF97A8();

      swift_willThrow();
    }

    v53 = v72;
    v54 = *(v71 + 8);
    v54(v74, v72);
    v54(v75, v53);
  }

  else
  {
    sub_1C4422530();
    sub_1C44CDA7C();
    swift_endAccess();

    sub_1C4422530();
    sub_1C44CDA7C();
    v51 = *(v35 + *(v29 + 48));
    sub_1C446F170(v35, &qword_1EC0C4FF8, &qword_1C4F5E680);
  }

LABEL_11:
  v55 = *MEMORY[0x1E69E9840];
  sub_1C43FBC80();
}

uint64_t sub_1C44E99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1C441DC98(a1, a2, a3);
  if (v11 && (v12 = v10, v13 = sub_1C445FAA8(v8, v9), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = sub_1C4405814();
    v19 = sub_1C456902C(v17, v18);
    sub_1C43FBCE0(v19);
    sub_1C4460108(v16 + *(v20 + 72) * v15, v5, a4, a5);
    v21 = sub_1C442DDD0();
  }

  else
  {
    v25 = sub_1C4405814();
    sub_1C456902C(v25, v26);
    v21 = sub_1C4412BF8();
  }

  return sub_1C440BAA8(v21, v22, v23, v24);
}

uint64_t sub_1C44E9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v210 = &v188 - v14;
  v15 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v215 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v188 - v19;
  v20 = type metadata accessor for ConstructionGraphTriple(0);
  v229 = *(v20 - 8);
  v21 = *(v229 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v231 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v230 = &v188 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v188 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v223 = &v188 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v222 = &v188 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v221 = &v188 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v213 = &v188 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v212 = &v188 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v214 = &v188 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v227 = &v188 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v226 = &v188 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v225 = &v188 - v45;
  v209 = type metadata accessor for TranslatedEntityTriple(0);
  v216 = *(v209 - 8);
  v46 = *(v216 + 64);
  v47 = MEMORY[0x1EEE9AC00](v209);
  v232 = &v188 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v211 = &v188 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v233 = &v188 - v51;
  v52 = sub_1C456902C(&qword_1EC0C3B48, &qword_1C4F54078);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v219 = &v188 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v228 = &v188 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v220 = &v188 - v58;
  v59 = sub_1C4EFEEF8();
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  if (!*(a2 + 16))
  {
    sub_1C44EB5BC(a4, a1, sub_1C44EC054, sub_1C44EE8C8, type metadata accessor for ConstructionGraphTriple);
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a1 + 16))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return MEMORY[0x1E69E7CC0];
  }

  v217 = v63;
  v205 = &v188 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v61;
  v203 = a5;
  v235 = a4;
  v204 = a3;
  v202 = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598A84();
  v234 = v64;
  v239 = v64;
  v218 = v6;
  sub_1C4B54800();
  v208 = v65;
  sub_1C4B54E88();
  v67 = v66;
  p_isa = a1;
  MEMORY[0x1EEE9AC00](v66);
  sub_1C456902C(&qword_1EC0C3B50, &qword_1C4F54080);
  v68 = sub_1C4401CBC(&qword_1EDDF0640, &qword_1EC0C3B50, &qword_1C4F54080);
  sub_1C44B95C0(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple);
  v69 = v218;
  v70 = sub_1C4F014A8();
  if (v69)
  {

LABEL_9:

    return v68;
  }

  v207 = v70;
  v200 = v67;
  p_isa = v234;
  MEMORY[0x1EEE9AC00](v70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C3B88, &qword_1C4F540C0);
  sub_1C4401CBC(&qword_1EDDDBB50, &qword_1EC0C3B88, &qword_1C4F540C0);
  sub_1C44B95C0(&qword_1EDDE2668, type metadata accessor for ConstructionGraphTriple);
  v71 = 0;
  v72 = 0;
  v201 = sub_1C4F014A8();
  v198 = v5;
  v218 = 0;
  v193 = 0x6E776F6E6B6E75;

  v68 = v207;
  v74 = *(v207 + 64);
  v195 = v207 + 64;
  v75 = 1 << *(v207 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v74;
  v194 = (v75 + 63) >> 6;
  v196 = (v217 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v234 = MEMORY[0x1E69E7CC0];
  v79 = v230;
  v78 = v231;
LABEL_14:
  if (v77)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v80 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
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
      sub_1C4F024A8();
      __break(1u);
LABEL_113:

      __break(1u);
      JUMPOUT(0x1C44EB59CLL);
    }

    if (v80 >= v194)
    {
      break;
    }

    v77 = *(v195 + 8 * v80);
    ++v72;
    if (v77)
    {
      v72 = v80;
LABEL_19:
      v81 = (v72 << 9) | (8 * __clz(__rbit64(v77)));
      v82 = v68[7];
      v199 = *(v68[6] + v81);
      v83 = *(v82 + v81);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v71 = v218;
      sub_1C44B8118();
      v218 = v71;
      if (v71)
      {

        goto LABEL_9;
      }

      v77 &= v77 - 1;
      if (sub_1C4B56DC0(v83))
      {
        v84 = v205;
        sub_1C4EFE828();
        v85 = sub_1C4B57000(v84, v83);
        v87 = v86;
        (*v196)(v84, v206);
        if (v87)
        {
          v88 = *(v198 + *(type metadata accessor for PhaseStores() + 32));
          v89 = VisionKeyValueStore.needToInsertVisualIdentifierTriple(for:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(v85, v87, v208, v200, v203);
          v90 = sub_1C4663240(v199, v201);
          if (v90)
          {
            v68 = v207;
            if (v89)
            {
              v199 = v90;
              p_isa = v83;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v71 = v218;
              sub_1C4B4A62C(&p_isa);
              if (v71)
              {
                goto LABEL_113;
              }

              v191 = v87;
              v192 = v83;
              v197 = v77;
              v91 = p_isa;
              p_isa = v199;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4B4A9BC(&p_isa);
              v218 = 0;
              v217 = p_isa;
              p_isa = v91;
              v237 = 0;
              v238 = 0;
              v190 = v91;

              while (1)
              {
                v96 = v220;
                v97 = v228;
                sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v92, v93, v94, v95, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
                sub_1C4B58D70(v97, v96, &qword_1EC0C3B48, &qword_1C4F54078);
                v98 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
                if (sub_1C44157D4(v96, 1, v98) == 1)
                {
                  break;
                }

                v99 = *v96;
                sub_1C44856C8(v96 + *(v98 + 48), v233);
                if (v99 >= *(v217 + 16))
                {
                  goto LABEL_112;
                }

                if (v99 < 0)
                {
                  goto LABEL_106;
                }

                v100 = (*(v229 + 80) + 32) & ~*(v229 + 80);
                v101 = *(v229 + 72);
                sub_1C4471BAC(v217 + v100 + v101 * v99, v225);
                v102 = v224;
                sub_1C4A7F458();
                sub_1C4420C3C(v102, &unk_1EC0BCAE0, &unk_1C4F142A0);
                v103 = v226;
                sub_1C4B5722C();
                sub_1C4471BAC(v103, v227);
                v104 = v234;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C44EE8C8(0, *(v104 + 16) + 1, 1, v104);
                  v104 = v108;
                }

                v106 = *(v104 + 16);
                v105 = *(v104 + 24);
                v234 = v104;
                if (v106 >= v105 >> 1)
                {
                  sub_1C44EE8C8(v105 > 1, v106 + 1, 1, v234);
                  v234 = v109;
                }

                sub_1C44BCC4C(v226, type metadata accessor for ConstructionGraphTriple);
                sub_1C44BCC4C(v225, type metadata accessor for ConstructionGraphTriple);
                sub_1C44BCC4C(v233, type metadata accessor for TranslatedEntityTriple);
                v107 = v234;
                v234[2] = v106 + 1;
                sub_1C44856C8(v227, v107 + v100 + v106 * v101);
                v79 = v230;
                v78 = v231;
              }

LABEL_44:

              v68 = v207;
              v77 = v197;
              goto LABEL_14;
            }
          }

          else
          {

            v68 = v207;
            if (v89)
            {
              v126 = v235;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v127 = v126;
              v71 = v218;
              sub_1C4B4A45C(v83, v127);
              v218 = v71;
            }
          }

          goto LABEL_14;
        }
      }

      v110 = v201;
      v111 = *(v201 + 16);
      v197 = v77;
      if (!v111 || (v112 = sub_1C457B350(v199), (v113 & 1) == 0) || (v114 = *(*(v110 + 56) + 8 * v112), v115 = *(v114 + 16), v115 != *(v83 + 16)))
      {
        v121 = 0;
        v122 = *(v83 + 16);
        v123 = v216;
        while (v122 != v121)
        {
          v124 = v121 + 1;
          v125 = v83 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v121;
          sub_1C44EC3C8(v235, type metadata accessor for ConstructionGraphTriple);
          sub_1C4471BAC(v28, v78);
          sub_1C483D418();
          sub_1C44BCC4C(v79, type metadata accessor for ConstructionGraphTriple);
          sub_1C44BCC4C(v28, type metadata accessor for ConstructionGraphTriple);
          v121 = v124;
        }

        goto LABEL_44;
      }

      v191 = *(*(v110 + 56) + 8 * v112);
      if (v115 != 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v128 = v219;
        goto LABEL_53;
      }

      v116 = v215;
      sub_1C486854C(v114, v215);
      v117 = sub_1C44157D4(v116, 1, v202);
      v128 = v219;
      if (v117 == 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v118 = v116;
        v119 = &unk_1EC0BCAE0;
        v120 = &unk_1C4F142A0;
LABEL_52:
        sub_1C4420C3C(v118, v119, v120);
LABEL_53:
        p_isa = v83;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v71 = v218;
        sub_1C4B4A62C(&p_isa);
        if (v71)
        {
          goto LABEL_113;
        }

        v192 = v83;
        v131 = p_isa;
        p_isa = &v191->isa;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4B4A9BC(&p_isa);
        v218 = 0;
        v190 = v28;
        v217 = p_isa;
        p_isa = v131;
        v237 = 0;
        v238 = 0;
        v189 = v131;

        while (1)
        {
          v136 = v228;
          sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v132, v133, v134, v135, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
          sub_1C4B58D70(v136, v128, &qword_1EC0C3B48, &qword_1C4F54078);
          v137 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
          if (sub_1C44157D4(v128, 1, v137) == 1)
          {
            break;
          }

          v138 = v128;
          v139 = *v128;
          sub_1C44856C8(v138 + *(v137 + 48), v232);
          if (v139 >= *(v217 + 16))
          {
            goto LABEL_112;
          }

          if (v139 < 0)
          {
            goto LABEL_108;
          }

          v140 = (*(v229 + 80) + 32) & ~*(v229 + 80);
          v141 = *(v229 + 72);
          sub_1C4471BAC(v217 + v140 + v141 * v139, v221);
          v142 = v224;
          sub_1C4A7F458();
          sub_1C4420C3C(v142, &unk_1EC0BCAE0, &unk_1C4F142A0);
          v143 = v222;
          sub_1C4B5722C();
          sub_1C4471BAC(v143, v223);
          v144 = v234;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C44EE8C8(0, *(v144 + 16) + 1, 1, v144);
            v144 = v148;
          }

          v146 = *(v144 + 16);
          v145 = *(v144 + 24);
          v234 = v144;
          if (v146 >= v145 >> 1)
          {
            sub_1C44EE8C8(v145 > 1, v146 + 1, 1, v234);
            v234 = v149;
          }

          sub_1C44BCC4C(v222, type metadata accessor for ConstructionGraphTriple);
          sub_1C44BCC4C(v221, type metadata accessor for ConstructionGraphTriple);
          sub_1C44BCC4C(v232, type metadata accessor for TranslatedEntityTriple);
          v147 = v234;
          v234[2] = v146 + 1;
          sub_1C44856C8(v223, v147 + v140 + v146 * v141);
          v79 = v230;
          v78 = v231;
          v128 = v219;
        }

        v77 = v197;
        v28 = v190;
      }

      else
      {
        v129 = v214;
        sub_1C44856C8(v116, v214);
        v130 = v210;
        sub_1C450B008(v83, v210);
        if (sub_1C44157D4(v130, 1, v209) == 1)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BCC4C(v129, type metadata accessor for ConstructionGraphTriple);
          v118 = v130;
          v119 = &unk_1EC0BC9C8;
          v120 = &qword_1C4F29B58;
          goto LABEL_52;
        }

        sub_1C44856C8(v130, v211);
        v158 = v224;
        sub_1C4A7F458();
        sub_1C4420C3C(v158, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v159 = v212;
        sub_1C4B5722C();
        sub_1C4471BAC(v159, v213);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44EE8C8(0, v234[2] + 1, 1, v234);
          v234 = v163;
        }

        v161 = v234[2];
        v160 = v234[3];
        if (v161 >= v160 >> 1)
        {
          sub_1C44EE8C8(v160 > 1, v161 + 1, 1, v234);
          v234 = v164;
        }

        sub_1C44BCC4C(v212, type metadata accessor for ConstructionGraphTriple);
        sub_1C44BCC4C(v211, type metadata accessor for TranslatedEntityTriple);
        sub_1C44BCC4C(v214, type metadata accessor for ConstructionGraphTriple);
        v162 = v234;
        v234[2] = v161 + 1;
        sub_1C44856C8(v213, v162 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v161);
      }

      v68 = v207;
      switch(v204)
      {
        case 2:

          goto LABEL_67;
        default:
          v150 = sub_1C4F02938();

          if (v150)
          {
LABEL_67:
            v151 = sub_1C457B350(v199);
            if (v152)
            {
              v153 = v151;
              v154 = v201;
              swift_isUniquelyReferenced_nonNull_native();
              p_isa = v154;
              v155 = *(v154 + 24);
              sub_1C456902C(&qword_1EC0C3B90, &unk_1C4F540C8);
              v77 = v197;
              sub_1C4F02458();
              v156 = p_isa;
              v157 = *(p_isa[7] + 8 * v153);
              sub_1C456902C(&qword_1EC0BD3C0, &unk_1C4F2DB90);
              v201 = v156;
              v68 = v207;
              sub_1C4F02478();
            }
          }

          break;
      }

      goto LABEL_14;
    }
  }

  v165 = v201;
  v68 = v234;
  switch(v204)
  {
    case 1:
      v193 = 1819047270;
      goto LABEL_78;
    case 2:

      goto LABEL_79;
    case 3:
      v193 = 0x69686374614D6F74;
      goto LABEL_78;
    default:
LABEL_78:
      v166 = sub_1C4F02938();

      if ((v166 & 1) == 0)
      {
        goto LABEL_102;
      }

LABEL_79:
      if (!*(v165 + 16))
      {
        goto LABEL_102;
      }

      v167 = v165 + 64;
      v168 = 1 << *(v165 + 32);
      v169 = -1;
      if (v168 < 64)
      {
        v169 = ~(-1 << v168);
      }

      v170 = v169 & *(v165 + 64);
      v171 = (v168 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v172 = 0;
      v173 = MEMORY[0x1E69E7CC0];
      break;
  }

  while (1)
  {
LABEL_83:
    if (v170)
    {
      goto LABEL_88;
    }

    do
    {
      v174 = v172 + 1;
      if (__OFADD__(v172, 1))
      {
        goto LABEL_107;
      }

      if (v174 >= v171)
      {

        v187 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C482FF08(v187);

        return v234;
      }

      v170 = *(v167 + 8 * v174);
      ++v172;
    }

    while (!v170);
    v172 = v174;
LABEL_88:
    v68 = *(*(v165 + 56) + ((v172 << 9) | (8 * __clz(__rbit64(v170)))));
    v175 = v68[2];
    v176 = *(v173 + 16);
    v177 = v176 + v175;
    if (__OFADD__(v176, v175))
    {
      goto LABEL_109;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v177 > *(v173 + 24) >> 1)
    {
      if (v176 <= v177)
      {
        v179 = v176 + v175;
      }

      else
      {
        v179 = v176;
      }

      sub_1C44EE8C8(isUniquelyReferenced_nonNull_native, v179, 1, v173);
      v173 = v180;
    }

    v165 = v201;
    v170 &= v170 - 1;
    if (!v68[2])
    {
      break;
    }

    v181 = *(v173 + 16);
    if ((*(v173 + 24) >> 1) - v181 < v175)
    {
      goto LABEL_110;
    }

    v182 = v173 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v181;
    swift_arrayInitWithCopy();

    if (v175)
    {
      v183 = *(v173 + 16);
      v184 = __OFADD__(v183, v175);
      v185 = v183 + v175;
      if (v184)
      {
        goto LABEL_111;
      }

      *(v173 + 16) = v185;
    }
  }

  if (!v175)
  {
    goto LABEL_83;
  }

  __break(1u);
LABEL_102:
  v186 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C482FF08(v186);

  return v68;
}

uint64_t sub_1C44EB5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_1C456902C(&qword_1EC0C3B50, &qword_1C4F54080);
  sub_1C4400184();
  sub_1C4401CBC(v5, &qword_1EC0C3B50, &qword_1C4F54080);
  sub_1C441A560();
  sub_1C44B95C0(v6, v7);
  v8 = sub_1C4F014A8();
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v34 = v8;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v13)
          {
            goto LABEL_20;
          }

          v12 = *(v9 + 8 * v17);
          ++v15;
          if (v12)
          {
            v15 = v17;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

LABEL_9:
      v18 = *(*(v34 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v12)))));
      v19 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = a3(v19, a1);

      v21 = *(v20 + 16);
      v22 = *(v16 + 16);
      if (__OFADD__(v22, v21))
      {
        goto LABEL_22;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v22 + v21 > *(v16 + 24) >> 1)
      {
        v16 = a4();
      }

      v12 &= v12 - 1;
      if (!*(v20 + 16))
      {
        break;
      }

      v23 = (*(v16 + 24) >> 1) - *(v16 + 16);
      result = a5(0);
      v24 = *(result - 8);
      if (v23 < v21)
      {
        goto LABEL_23;
      }

      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = *(v24 + 72);
      swift_arrayInitWithCopy();

      if (v21)
      {
        v27 = *(v16 + 16);
        v28 = __OFADD__(v27, v21);
        v29 = v27 + v21;
        if (v28)
        {
          goto LABEL_24;
        }

        *(v16 + 16) = v29;
      }
    }
  }

  while (!v21);
  __break(1u);
LABEL_20:

  return v16;
}

uint64_t sub_1C44EB86C()
{
  result = *(v0 - 96);
  v2 = *(v0 - 88);
  return result;
}

double sub_1C44EB878()
{
  result = v1;
  v3 = *(v0 - 104);
  return result;
}

uint64_t sub_1C44EB888()
{

  return MEMORY[0x1EEDC59A8]();
}

uint64_t sub_1C44EB8A0()
{
  v2 = *(v0 - 560);
  v3 = *(v0 - 568);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C44EB8CC()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_1C44EB91C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_1C44EB970()
{
  v0 = sub_1C44059B8();
  v2 = *(v1(v0) + 24);
  v3 = sub_1C4EFF8A8();
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C448F13C();

  return v7(v6);
}

uint64_t _s24IntelligencePlatformCore11EventTripleV7subject0aB016EntityIdentifierVvg_0()
{
  sub_1C44059B8();
  v1 = sub_1C4EFF0C8();
  sub_1C43FBCE0(v1);
  v3 = *(v2 + 16);
  v4 = sub_1C448F13C();

  return v5(v4, v0);
}

uint64_t sub_1C44EBAB8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44EBB10(a1, &v5, a2, &v6);
  return v6;
}

uint64_t sub_1C44EBB10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(type metadata accessor for TranslatedEntityTriple(0) - 8);
    sub_1C44EBBF0(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
}

uint64_t sub_1C44EBBF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v45 = a4;
  v8 = type metadata accessor for TranslatedEntityTriple(0);
  v51 = *(v8 - 1);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(v10 + 40));
  v14 = v13[1];
  v49 = *v13;
  v50 = v14;
  v15 = *(a3 + 16);
  v16 = *a2 < v15;
  v46 = v4;
  if (!v16)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_8:
    v25 = sub_1C4EFF0C8();
    (*(*(v25 - 8) + 16))(v12, a1, v25);
    v26 = v8[5];
    v27 = sub_1C4EFEEF8();
    v28 = *(*(v27 - 8) + 16);
    v28(&v12[v26], a1 + v26, v27);
    v29 = v8[6];
    v30 = sub_1C4EFF8A8();
    (*(*(v30 - 8) + 16))(&v12[v29], a1 + v29, v30);
    v28(&v12[v8[7]], a1 + v8[7], v27);
    v31 = (a1 + v8[8]);
    v33 = *v31;
    v32 = v31[1];
    sub_1C4471BAC(a1 + v8[9], &v12[v8[9]]);
    v34 = *(a1 + v8[11]);
    v35 = v49;
    v36 = v50;
    v37 = *(a1 + v8[12]);
    v38 = &v12[v8[8]];
    *v38 = v33;
    *(v38 + 1) = v32;
    v39 = &v12[v8[10]];
    *v39 = v35;
    *(v39 + 1) = v36;
    *&v12[v8[11]] = v34;
    v12[v8[12]] = v37;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v40 = v45;
    sub_1C44EBFAC();
    v41 = *(*v40 + 16);
    sub_1C44EC000();
    v42 = *v40;
    *(v42 + 16) = v41 + 1;
    return sub_1C44856C8(v12, v42 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v41);
  }

  sub_1C44B95C0(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4EFF808();
  v44 = a2;
  if (*a2 >= v15)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  v19 = a3 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v20 = *(v51 + 72);
  result = sub_1C4EFF808();
  if (v18 != result)
  {
    goto LABEL_8;
  }

  v21 = v44;
  if (*v44 >= v15)
  {
    goto LABEL_10;
  }

  v22 = (v19 + *v44 * v20 + v8[10]);
  v24 = *v22;
  v23 = v22[1];
  v47 = 30;
  v48 = 0xE100000000000000;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v24, v23);

  MEMORY[0x1C6940010](v47, v48);

  if (!__OFADD__(*v21, 1))
  {
    ++*v21;
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C44EC054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for ConstructionGraphTriple(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v35 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v30 - v14;
  v15 = type metadata accessor for TranslatedEntityTriple(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = *(a1 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  while (v21 != v20)
  {
    sub_1C4471BAC(a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v19);
    sub_1C44EC3C8(a2, type metadata accessor for ConstructionGraphTriple);
    sub_1C440BAA8(v9, 0, 1, v10);
    sub_1C44BCC4C(v19, type metadata accessor for TranslatedEntityTriple);
    if (sub_1C44157D4(v9, 1, v10) == 1)
    {
      sub_1C4420C3C(v9, &unk_1EC0BCAE0, &unk_1C4F142A0);
      ++v20;
    }

    else
    {
      v31 = type metadata accessor for ConstructionGraphTriple;
      v32 = v3;
      v22 = v33;
      sub_1C44856C8(v9, v33);
      sub_1C44856C8(v22, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44EE8C8(0, *(v36 + 16) + 1, 1, v36);
        v36 = v27;
      }

      v24 = *(v36 + 16);
      v23 = *(v36 + 24);
      v25 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v31 = (v24 + 1);
        sub_1C44EE8C8(v23 > 1, v24 + 1, 1, v36);
        v25 = v31;
        v36 = v28;
      }

      ++v20;
      v26 = v36;
      *(v36 + 16) = v25;
      sub_1C44856C8(v35, v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24);
      v3 = v32;
    }
  }

  return v36;
}

uint64_t sub_1C44EC814@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v2 + v1, v3 + a1);
}

uint64_t sub_1C44EC838()
{
  v2 = *(v0 - 416);

  return swift_dynamicCast();
}

uint64_t sub_1C44EC878(uint64_t result, double a2)
{
  *(v2 + 328) = a2;
  *(v2 + 336) = result;
  v3 = *(result + 16);
  return result;
}

uint64_t sub_1C44EC888()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C44EC8A0()
{

  return sub_1C4F027E8();
}

uint64_t sub_1C44EC8CC@<X0>(uint64_t a1@<X8>)
{
  result = v2;
  v5 = *(v3 - 72);
  *(v3 - 312) = a1;
  *(v3 - 320) = v1;
  return result;
}

void sub_1C44EC90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v26;
  a26 = v28;
  v29 = *(v27 + 16);
  if (!v29)
  {
    goto LABEL_4;
  }

  v30 = *(v27 + 16);
  v31 = sub_1C44EC9D4();
  sub_1C440BBC0();
  sub_1C44ECA38();
  v33 = v32;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C449BB0C();
  if (v33 != v29)
  {
    __break(1u);
LABEL_4:
    v31 = MEMORY[0x1E69E7CC0];
  }

  a10 = v31;
  sub_1C44ECB2C(&a10);
  sub_1C4405950();
}

uint64_t sub_1C44EC9D4()
{
  sub_1C4408C40();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v1 = sub_1C44182F4();
  sub_1C4411F38(v1);
  sub_1C43FDA58(v2 / 16);
  return v0;
}

void sub_1C44ECA38()
{
  sub_1C43FBD3C();
  sub_1C44BBDA4();
  v2 = *(v0 + 56);
  v1 = v0 + 56;
  v3 = -1 << *(v1 - 24);
  sub_1C440D0F0();
  v8 = v7 & v6;
  if (!v4)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C441EA9C(v18);
    sub_1C43FE9F0();
    return;
  }

  v9 = v5;
  if (!v5)
  {
    v18 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = v4;
    sub_1C443315C();
    v14 = (v13 - v3) >> 6;
    while (v12 < v9)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            sub_1C446BC0C();
            goto LABEL_17;
          }

          v8 = *(v1 + 8 * v16);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      sub_1C4415870();
      if (v17)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v18 = v16;
        goto LABEL_17;
      }

      v10 += 16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C44ECB2C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C44F69AC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C44ECB98(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C44ECB98(uint64_t *a1)
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
      sub_1C4600638(v7, v8, a1, v4);
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
    return sub_1C44ECC8C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C44ECC8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1C4F02938();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C44ECD54(uint64_t a1@<X8>)
{
  v2 = sub_1C4EF9488();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4415EA8();
  if (sub_1C4F02048())
  {
    sub_1C44CD280(&qword_1EDDFCD90, MEMORY[0x1E69680B8]);
    sub_1C456902C(&qword_1EC0C3978, &unk_1C4F540A0);
    sub_1C44ECF58();
    sub_1C4F020C8();
    v11 = sub_1C4F01FB8();
    (*(v5 + 8))(v10, v2);
    if (v11[2])
    {
      v12 = v11[4];
      v13 = v11[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      SourceIdPrefix.init(rawValue:)();
      return;
    }
  }

  v14 = type metadata accessor for SourceIdPrefix();
  sub_1C440BAA8(a1, 1, 1, v14);
}

unint64_t sub_1C44ECF58()
{
  result = qword_1EDDFA558;
  if (!qword_1EDDFA558)
  {
    sub_1C4572308(&qword_1EC0C3978, &unk_1C4F540A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA558);
  }

  return result;
}

void SourceIdPrefix.init(rawValue:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C3960, &qword_1C4F52CC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v110 - v8;
  v10 = type metadata accessor for SourceIdPrefix();
  v11 = sub_1C43FBCE0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v3 == 0x6361746E6F436E63 && v1 == 0xE900000000000074;
  if (v14 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7890 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDDF7898;
LABEL_9:
    sub_1C442B738(v10, v15);
    sub_1C4407B2C();
    sub_1C44EE574();
    goto LABEL_10;
  }

  v17 = v3 == 0x696E6167724F6E63 && v1 == 0xEE006E6F6974617ALL;
  if (v17 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7978 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDDF7980;
    goto LABEL_9;
  }

  v18 = v3 == 0x6C6174736F506E63 && v1 == 0xEF73736572646441;
  if (v18 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9320 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDDE9328;
    goto LABEL_9;
  }

  sub_1C443FF7C();
  v19 = v14 && v1 == 0xE800000000000000;
  if (v19 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF78C8 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDDF78D0;
    goto LABEL_9;
  }

  sub_1C443FF7C();
  v21 = v14 && v1 == v20;
  if (v21 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF79A0 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDDF79A8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v24 = v3 == v23 - 1 && v22 == v1;
  if (v24 || (sub_1C4400DC8(), v111 = v25, (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92C8 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDDE92D0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v28 = v3 == v27 + 3 && v26 == v1;
  if (v28 || (sub_1C4400DC8(), v110 = v29, (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9280 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDDE9288;
    goto LABEL_9;
  }

  v30 = v3 == 0x6C6174736F506773 && v1 == 0xEF73736572646441;
  if (v30 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9300 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D050;
    goto LABEL_9;
  }

  v31 = v3 == 0x6361746E6F436773 && v1 == 0xE900000000000074;
  if (v31 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9358 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D098;
    goto LABEL_9;
  }

  v32 = v3 == 0x746E6576456773 && v1 == 0xE700000000000000;
  if (v32 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9240 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2CF18;
    goto LABEL_9;
  }

  v33 = v3 == 0x697461636F4C6773 && v1 == 0xEA00000000006E6FLL;
  if (v33 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9368 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2D0C8;
    goto LABEL_9;
  }

  sub_1C440FBD0();
  v35 = v3 == v34 + 1274 && v1 == 0xE800000000000000;
  if (v35 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9230 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2CF00;
    goto LABEL_9;
  }

  v36 = v3 == 0x6E6576456566696CLL && v1 == 0xE900000000000074;
  if (v36 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7888 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2D5D8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v38 = v3 == v111 && v37 == v1;
  if (v38 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7950 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D6C8;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v41 = v40 + 2;
  v42 = v3 == v40 + 2 && v39 == v1;
  if (v42 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7920 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D668;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v44 = v3 == v110 && v43 == v1;
  if (v44 || (sub_1C4408FE4(), sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9278 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2CFA8;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v47 = v46 + 4;
  v48 = v3 == v46 + 4 && v45 == v1;
  if (v48 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7918 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D650;
    goto LABEL_9;
  }

  v49 = v3 == 0x694C657275747566 && v1 == 0xEF746E6576456566;
  if (v49 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9310 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D068;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v52 = v3 == v51 + 5 && v50 == v1;
  if (v52 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9268 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2CF78;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v55 = v3 == v54 + 9 && v53 == v1;
  if (v55 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9260 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2CF60;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v58 = v3 == v57 + 10 && v56 == v1;
  if (v58 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9258 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2CF48;
    goto LABEL_9;
  }

  v59 = v3 == (sub_1C441BCE4() & 0xFFFFFFFFFFFFLL | 0x70000000000000) && v1 == 0xE700000000000000;
  if (v59 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF78F0 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2D608;
    goto LABEL_9;
  }

  v60 = v3 == (sub_1C441BCE4() & 0xFFFFFFFFFFFFLL | 0x4170000000000000) && v1 == 0xEA00000000007070;
  if (v60 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF79C0 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2D740;
    goto LABEL_9;
  }

  v62 = v3 == (sub_1C441BCE4() & 0xFFFFFFFFFFFFLL | 0x5070000000000000) && v1 == v61;
  if (v62 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7998 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2D728;
    goto LABEL_9;
  }

  sub_1C440FBD0();
  v64 = v3 == v63 - 1529 && v1 == 0xE800000000000000;
  if (v64 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF78B8 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2D5F0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v67 = v3 == v66 + 12 && v65 == v1;
  if (v67 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7900 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D620;
    goto LABEL_9;
  }

  v68 = v3 == 0x796C696D61466166 && v1 == 0xEE007265626D654DLL;
  if (v68 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9348 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D080;
    goto LABEL_9;
  }

  v69 = v3 == 0x796C696D61466166 && v1 == 0xEE00656C63726943;
  if (v69 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7970 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D710;
    goto LABEL_9;
  }

  v70 = v3 == 0x746E6576456B65 && v1 == 0xE700000000000000;
  if (v70 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDFBC98 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2DD40;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v72 = v3 == v41 && v71 == v1;
  if (v72 || (sub_1C4408FE4(), sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7930 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D680;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v75 = v3 == v74 && v73 == v1;
  if (v75 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7948 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2D6B0;
    goto LABEL_9;
  }

  v76 = v3 == 0x656C646E7542736CLL && v1 == 0xEE0064726F636552;
  if (v76 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7960 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D6F8;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v79 = v3 == v78 + 1 && v77 == v1;
  if (v79 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7938 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D698;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v82 = v3 == v81 && v80 == v1;
  if (v82 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDFBCA0 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2DD58;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v85 = v3 == v84 + 6 && v83 == v1;
  if (v85 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7908 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D638;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v88 = v3 == v87 && v86 == v1;
  if (v88 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92C0 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2CFF0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v91 = v3 == v90 + 11 && v89 == v1;
  if (v91 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9248 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2CF30;
    goto LABEL_9;
  }

  v92 = v3 == 0x6E6F6974616C6572 && v1 == 0xEC00000070696873;
  if (v92 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9360 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D0B0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v95 = v94 - 2;
  v96 = v3 == v94 - 2 && v93 == v1;
  if (v96 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92F0 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D020;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v98 = v3 == v95 && v97 == v1;
  if (v98 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92F8 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D038;
    goto LABEL_9;
  }

  v99 = v3 == 0x6974616C65526770 && v1 == 0xEE00706968736E6FLL;
  if (v99 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDF7958 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D6E0;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v102 = v3 == v101 && v100 == v1;
  if (v102 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92B0 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2CFD8;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v104 = v3 == v95 && v103 == v1;
  if (v104 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92E8 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2D008;
    goto LABEL_9;
  }

  sub_1C43FE984();
  v106 = v3 == v47 && v105 == v1;
  if (v106 || (sub_1C4408FE4(), sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE9270 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDE2CF90;
    goto LABEL_9;
  }

  sub_1C4408FD0();
  v109 = v3 == v108 && v107 == v1;
  if (v109 || (sub_1C4400DC8(), (sub_1C4F02938() & 1) != 0))
  {

    if (qword_1EDDE92A8 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDE2CFC0;
    goto LABEL_9;
  }

  sub_1C4B3FC54(v3, v1, v9);

  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    sub_1C4420C3C(v9, &qword_1EC0C3960, &qword_1C4F52CC0);
    v16 = 1;
    goto LABEL_11;
  }

  sub_1C4407B2C();
  sub_1C44EE62C();
LABEL_10:
  sub_1C4407B2C();
  sub_1C44EE62C();
  v16 = 0;
LABEL_11:
  sub_1C440BAA8(v5, v16, 1, v10);
  sub_1C43FE9F0();
}

uint64_t sub_1C44EE4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44EE514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44EE574()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C44EE5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C44EE62C()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C44EE698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Source();
    v8 = v5 + *(a4 + 20);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C44EE72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Source();
    v9 = a1 + *(a3 + 20);

    return sub_1C44157D4(v9, a2, v8);
  }
}

void sub_1C44EE7B4()
{
  sub_1C43FFB60();
  sub_1C4EFFB98();
  sub_1C4403D08(&qword_1EDDFA190, MEMORY[0x1E69A9B38]);
  sub_1C4402AB4();
  sub_1C43FCF00();
}

uint64_t sub_1C44EE864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return sub_1C4462378();
  }

  v3 = a3();
  if (v4)
  {
    return sub_1C4434EAC(v3);
  }

  else
  {
    return 0;
  }
}

void sub_1C44EE948(uint64_t a1, void *a2)
{
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v3 = sub_1C4F01658();

  [a2 setIncludedDetectionTypes_];
}

uint64_t sub_1C44EE9CC()
{
  v82 = *MEMORY[0x1E69E9840];
  v1 = sub_1C4F01108();
  v2 = sub_1C44C1028(v1);

  if ((v2 & 1) == 0)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v32 = sub_1C4F00978();
    sub_1C442B738(v32, qword_1EDE2DE10);
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CF8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C43F8000, v33, v34, "Siri Toggle: Pipeline is blocked from sourcing Photos", v35, 2u);
      sub_1C43FBE2C();
    }

    v36 = v0[6];

    sub_1C4EF9AE8();
    sub_1C4420114();
    sub_1C464578C();
    goto LABEL_25;
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  sub_1C43FBDBC();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v80 = (v7 + 16);
  sub_1C43FBDBC();
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v79 = (v81 + 16);
  v8 = objc_opt_self();
  v9 = [v8 systemPhotoLibraryURL];
  sub_1C4EF98C8();

  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  (*(v6 + 16))(v4, v3, v5);
  v10 = sub_1C44B90E0(v4);
  v0[5] = 0;
  v11 = [v10 openAndWaitWithUpgrade:0 error:v0 + 5];
  v12 = v0[5];
  if (v11)
  {
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 fetchOptionsWithInclusiveDefaultsForPhotoLibrary_];
    if (v15)
    {
      v16 = v15;
      v78 = v10;
      v17 = v0[6];
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C4F10430;
      sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
      v19 = v16;
      *(v18 + 32) = sub_1C4F01EC8();
      *(v18 + 40) = sub_1C4F01EC8();
      sub_1C44EE948(v18, v19);
      [v19 setPersonContext_];
      v77 = v19;
      v20 = [objc_opt_self() fetchPersonsWithOptions_];
      sub_1C43FBDBC();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      v22 = [BiomeLibrary() Autonaming];
      swift_unknownObjectRelease();
      v23 = [v22 Messages];
      swift_unknownObjectRelease();
      v24 = [v23 Inferences];
      swift_unknownObjectRelease();
      *(v21 + 16) = v24;
      sub_1C43FBDBC();
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v26 = v7;
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      v28 = *(v17 + *(type metadata accessor for PhaseStores() + 24));
      v29 = swift_task_alloc();
      v29[2] = v20;
      v29[3] = v17;
      v29[4] = v25;
      v29[5] = v27;
      v30 = MEMORY[0x1E69E7CC0];
      v29[6] = v26;
      v29[7] = v30;
      v29[8] = v21;
      v29[9] = v81;
      GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4ABA118, v29);
      v31 = v0[10];

      v57 = sub_1C4EF9868();
      [v8 unsafeShutdownLibraryWithPhotoLibraryURL_];

      swift_beginAccess();
      v58 = *(v25 + 16);
      v59 = v0[10];
      v61 = v0[7];
      v60 = v0[8];
      if (v58)
      {
        swift_willThrow();
        v62 = v58;

        (*(v60 + 8))(v59, v61);

        v64 = v0[9];
        v63 = v0[10];
        v65 = v0[6];

        sub_1C44EF32C(v65, v79, v80);

        v66 = v0[1];
        v67 = *MEMORY[0x1E69E9840];
        goto LABEL_26;
      }

      v76 = v0[6];
      sub_1C4EF9AE8();
      sub_1C4420114();
      sub_1C464578C();

      (*(v60 + 8))(v59, v61);

      sub_1C44EF32C(v76, v79, v80);

      goto LABEL_24;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDDFECB8);
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CF8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1C43F8000, v53, v54, "Couldn't fetch option for PHPersonSourceIngestor", v55, 2u);
      sub_1C43FBE2C();
      v56 = v10;
    }

    else
    {
      v56 = v53;
      v53 = v10;
    }

    v68 = v0[10];
    v69 = v0[7];
    v70 = v0[8];
    v71 = v0[6];

    (*(v70 + 8))(v68, v69);
    v51 = v71;
  }

  else
  {
    v37 = v12;
    v38 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v39 = sub_1C4F00978();
    sub_1C442B738(v39, qword_1EDE2DE10);
    v40 = v38;
    v41 = sub_1C4F00968();
    v42 = sub_1C4F01CB8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v38;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_1C43F8000, v41, v42, "PHPersonSourceIngestor couldn't open Photo Library due to %@", v43, 0xCu);
      sub_1C4420C3C(v44, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v47 = v0[10];
    v48 = v0[7];
    v49 = v0[8];
    v50 = v0[6];

    sub_1C4EF9AE8();
    sub_1C4420114();
    sub_1C464578C();

    (*(v49 + 8))(v47, v48);
    v51 = v50;
  }

  sub_1C44EF32C(v51, v79, v80);

LABEL_24:

LABEL_25:
  v73 = v0[9];
  v72 = v0[10];

  v66 = v0[1];
  v74 = *MEMORY[0x1E69E9840];
LABEL_26:

  return v66();
}

uint64_t sub_1C44EF2B4()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C44EF2F4()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C44EF32C(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44EF7D0(a1, v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44EF5EC(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v14 = *a3;
  swift_beginAccess();
  result = v14 - *a2;
  if (__OFSUB__(v14, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C44EF5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C44EF644()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1C44A1E40();
  v7 = sub_1C4EFD548();
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4433190();
  v11 = type metadata accessor for Source();
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4414930();
  sub_1C4440948();
  v15 = (v6)(0);
  sub_1C4429020(v15);
  sub_1C456902C(v4, v2);
  v16 = sub_1C445BBF0();
  MEMORY[0x1C6940010](v16);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  v17 = *(v6 + 20);
  sub_1C441925C();
  sub_1C447F6A4(v18);
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4411930();
  sub_1C447E868(v0, v19);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v20 = sub_1C441B798();
  v21(v20);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C4656CA4();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C44EF7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44EF8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE2630, type metadata accessor for ConstructionGraphTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C44EF9E8@<X0>(uint64_t (*a1)(void)@<X3>, void (*a2)(void *)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v74[1] = a5;
  v74[2] = a4;
  v83 = a3;
  v81 = a2;
  sub_1C440EDE4();
  v8 = sub_1C4EFF8A8();
  v9 = sub_1C43FCDF8(v8);
  v78 = v10;
  v79 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v75 = v13;
  v86 = sub_1C4EFEEF8();
  v14 = sub_1C43FCDF8(v86);
  v88 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v74 - v22;
  v24 = sub_1C4EFF0C8();
  v25 = sub_1C43FCDF8(v24);
  v80 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v76 = sub_1C447F834();
  sub_1C43FCDF8(v76);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v74 - v34;
  v85 = a1(0);
  sub_1C43FBCE0(v85);
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v87 = v74 - v39;
  v41 = v6[3];
  v40 = v6[4];
  v84 = v6;
  v42 = sub_1C4417F50(v6, v41);
  v81(v42);
  v81 = v35;
  v43 = v82;
  sub_1C4F02BC8();
  v77 = v24;
  if (!v43)
  {
    v44 = v23;
    v45 = v75;
    v82 = v20;
    v83 = v30;
    LOBYTE(v89) = 0;
    sub_1C4419854();
    sub_1C4490F60(v46, v47);
    sub_1C442A70C();
    sub_1C4F026C8();
    v51 = v87;
    (*(v80 + 32))(v87, v5, v24);
    LOBYTE(v89) = 1;
    sub_1C442CB58();
    sub_1C4490F60(v52, v53);
    v54 = v86;
    sub_1C442A70C();
    sub_1C4F026C8();
    v55 = v85;
    v56 = &v51[v85[5]];
    v74[0] = *(v88 + 32);
    (v74[0])(v56, v44, v54);
    LOBYTE(v89) = 2;
    sub_1C4406FE8();
    sub_1C4490F60(v57, v58);
    v59 = v54;
    v60 = v79;
    sub_1C442A70C();
    sub_1C4F026C8();
    (*(v78 + 32))(&v87[v55[6]], v45, v60);
    LOBYTE(v89) = 3;
    v61 = v82;
    sub_1C4F026C8();
    (v74[0])(&v87[v55[7]], v61, v59);
    sub_1C442EB78(4);
    v62 = sub_1C4F02678();
    v63 = v87;
    v64 = &v87[v55[8]];
    *v64 = v62;
    v64[1] = v65;
    v91 = 5;
    sub_1C44F02DC();
    sub_1C4475AFC();
    sub_1C4F026C8();
    *&v63[v55[9]] = v89;
    sub_1C442EB78(6);
    sub_1C4F02698();
    *&v63[v55[10]] = v66;
    v91 = 7;
    sub_1C44F0578();
    sub_1C4475AFC();
    sub_1C4F026C8();
    v67 = v90;
    v68 = &v63[v55[11]];
    *v68 = v89;
    *(v68 + 1) = v67;
    sub_1C442EB78(8);
    sub_1C4F02698();
    v70 = v69;
    v71 = sub_1C44A1EAC();
    v72(v71);
    *&v63[v55[12]] = v70;
    sub_1C449EEE8();
    sub_1C440962C(v84);
    return sub_1C449F22C();
  }

  sub_1C44B8F90();
  v49 = v86;
  v48 = v87;
  v50 = v85;
  result = sub_1C440962C(v84);
  if (!v30)
  {
    if (!v6)
    {
      return result;
    }

    return (*(v88 + 8))(&v48[*(v50 + 28)], v49);
  }

  result = (*(v78 + 8))(&v48[*(v50 + 24)], v79);
  if (v6)
  {
    return (*(v88 + 8))(&v48[*(v50 + 28)], v49);
  }

  return result;
}

unint64_t sub_1C44F0158()
{
  result = qword_1EDDE2680[0];
  if (!qword_1EDDE2680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE2680);
  }

  return result;
}

uint64_t sub_1C44F01CC(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = sub_1C441DD30();
      break;
    case 2:
      result = sub_1C440C564();
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = sub_1C44017E8();
      break;
    case 5:
      result = 0x73656372756F73;
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C44F02DC()
{
  result = qword_1EDDFCF10;
  if (!qword_1EDDFCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCF10);
  }

  return result;
}

void static SourceSet.fromDatabaseValue(_:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EFB258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4F02AB8();
  v12 = v11;
  if (v11)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DE10);
    (*(v5 + 16))(v9, v1, v4);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v16 = 136380675;
      sub_1C4B35A40();
      v17 = sub_1C4F02858();
      v19 = v18;
      v20 = *(v5 + 8);
      v21 = sub_1C43FE99C();
      v22(v21);
      v23 = sub_1C441D828(v17, v19, &v28);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_1C43F8000, v14, v15, "SourceSet: failed to initialize from database value: %{private}s", v16, 0xCu);
      sub_1C440962C(v27);
      MEMORY[0x1C6942830](v27, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    else
    {

      v24 = *(v5 + 8);
      v25 = sub_1C43FE99C();
      v26(v25);
    }

    v10 = 0;
  }

  *v3 = v10;
  *(v3 + 8) = v12 & 1;
  sub_1C43FE9F0();
}

unint64_t sub_1C44F0578()
{
  result = qword_1EDDFD868;
  if (!qword_1EDDFD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD868);
  }

  return result;
}

void static SourceDuplicates.fromDatabaseValue(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C4EFB258();
  sub_1C43FCE64();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4F011F8();
  if (v14)
  {
    *a2 = v13;
    a2[1] = v14;
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DE10);
    (*(v6 + 16))(v12, a1, v4);
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136380675;
      sub_1C4B35A40();
      v20 = sub_1C4F02858();
      v22 = v21;
      (*(v6 + 8))(v12, v4);
      v23 = sub_1C441D828(v20, v22, &v24);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1C43F8000, v16, v17, "SourceDuplicates: failed to initialize from database value: %{private}s", v18, 0xCu);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v12, v4);
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

__n128 initializeBufferWithCopyOfBuffer for Options.OptionsValue(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C44F090C@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4430900(v1 + a1, v2);
}

__n128 *sub_1C44F0930(__n128 *result, __n128 a2)
{
  *(v2 - 288) = a2;
  result[1] = a2;
  return result;
}

void sub_1C44F0964(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1C44F099C()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t sub_1C44F09B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C456902C(&qword_1EC0BA468, &qword_1C4F13FB8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1C4F00248();
  sub_1C456902C(&qword_1EC0BA470, qword_1C4F13FC0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v5;
  *a1 = result;
  return result;
}

void sub_1C44F0A34(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_1C4409528(a1);
  v13 = v12;
  v15 = v14;
  sub_1C4409528(a5);
  if (v13 == v17 && v15 == v16)
  {
  }

  else
  {
    v19 = sub_1C4F02938();

    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_1C43FE9F0();
      return;
    }
  }

  v20 = a2 == a6 && a3 == a7;
  if (!v20 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1C43FE9F0();

  sub_1C44F0B64(v21, v22);
}

uint64_t sub_1C44F0B64(char a1, char a2)
{
  v2 = 0x6C616D726F6ELL;
  if (a1)
  {
    sub_1C444FD08();
    if (v3)
    {
      v5 = 0x6E6F6974656C6564;
    }

    else
    {
      v5 = 0x646574736F70;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x6C616D726F6ELL;
  }

  if (a2)
  {
    sub_1C444FD08();
    if (v7)
    {
      v2 = 0x6E6F6974656C6564;
    }

    else
    {
      v2 = 0x646574736F70;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FFF90();
  }

  return v11 & 1;
}

uint64_t sub_1C44F0C40(uint64_t a1)
{

  return sub_1C4471988(a1, v1);
}

uint64_t sub_1C44F0C58()
{

  return type metadata accessor for Source();
}

void sub_1C44F0C78(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1C44F0CE4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 216) = a1;
  v4 = v1[1];
  *(v2 - 160) = *v1;
  *(v2 - 152) = v4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44F0D08()
{

  return sub_1C44BCC4C(v1, v0);
}

uint64_t sub_1C44F0D20()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C44F0D40()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44F0D58@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C44CC80C(v4 + a2, v3 + v2, a1);
}

uint64_t sub_1C44F0D9C@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;
  v4 = *(v2 - 72);

  return sub_1C4F02858();
}

uint64_t sub_1C44F0DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFE200, type metadata accessor for GraphTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C44F0EF8()
{
  result = qword_1EDDFE230[0];
  if (!qword_1EDDFE230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFE230);
  }

  return result;
}

uint64_t sub_1C44F0F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v66 = a2;
  v62 = a4;
  v63 = a3;
  v64 = sub_1C4EFF0C8();
  v60 = *(v64 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v12;
  v13 = type metadata accessor for GraphTriple(0);
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v23 = a1;
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C447CB3C(&qword_1EDDFE208, type metadata accessor for GraphTriple);
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
    sub_1C44F1798();
    if (sub_1C44157D4(v28, 1, v66) == 1)
    {
      sub_1C4420C3C(v28, &unk_1EC0BC900, &unk_1C4F142D0);
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
      sub_1C456902C(&unk_1EC0BE470, &unk_1C4F371E0);
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
        sub_1C44F1798();
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
          sub_1C44F1730(0, *(v37 + 16) + 1, 1, v37);
          v37 = v49;
        }

        v48 = *(v37 + 16);
        v47 = *(v37 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1C44F1730(v47 > 1, v48 + 1, 1, v37);
          v37 = v50;
        }

        sub_1C447E868(v27, type metadata accessor for GraphTriple);
        *(v37 + 16) = v48 + 1;
        sub_1C449F338(v67, v37 + v59 + v48 * v61);
        v68 = v37;
        v40 = v64;
      }

      sub_1C4420C3C(v43, &unk_1EC0BC900, &unk_1C4F142D0);
      if (*(v37 + 16))
      {
        v51 = objc_autoreleasePoolPush();
        v52 = v65;
        sub_1C44C9764(v63, v42, &v68, v65);
        v53 = v60;
        v54 = v56;
        objc_autoreleasePoolPop(v51);

        sub_1C447E868(v54, type metadata accessor for GraphTriple);
      }

      else
      {
        sub_1C447E868(v56, type metadata accessor for GraphTriple);

        v53 = v60;
        v52 = v65;
      }

      (*(v53 + 8))(v52, v40);
    }
  }

  return result;
}

void sub_1C44F1798()
{
  sub_1C4413F18();
  sub_1C44002F4();
  v2 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  sub_1C442C998(&unk_1EDDFCD28, &qword_1EC0BC910, &qword_1C4F29AD8);
  if (sub_1C440C4B0())
  {
    type metadata accessor for GraphTriple(0);
    v6 = sub_1C440310C();
LABEL_8:
    sub_1C440BAA8(v6, v7, v8, v9);
    goto LABEL_9;
  }

  sub_1C4406CA4(&qword_1EDDFCD38, &qword_1EC0BC910, &qword_1C4F29AD8);
  sub_1C444FD58();
  v10 = sub_1C43FBE94();
  type metadata accessor for GraphTriple(v10);
  sub_1C443E304();
  sub_1C43FEF44();
  sub_1C4460A3C();

  if (!v0)
  {
    sub_1C44130E8();
    if (v11)
    {
      sub_1C4420C3C(v1, &unk_1EC0BC900, &unk_1C4F142D0);
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

uint64_t sub_1C44F1994()
{

  return sub_1C447E868(v1, v0);
}

uint64_t sub_1C44F19C0()
{
  result = 0;
  v3 = *(*(v1 + 48) + v0);
  return result;
}

void sub_1C44F19D0()
{
}

void sub_1C44F1A3C()
{
  *(v0 - 280) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
}

void sub_1C44F1B74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(*a1 + 16);
  v7 = sub_1C4428DA0(v6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v10 = 0;
      goto LABEL_17;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6940F90](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = [v9 deviceIdentifier];
    v12 = sub_1C4F01138();
    v14 = v13;

    if (v12 == a2 && v14 == a3)
    {

LABEL_16:

LABEL_17:
      *a4 = v10;
      return;
    }

    v16 = sub_1C4F02938();

    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1C44F1CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  *(*a1 + 16) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44F1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, double *a6, uint64_t *a7, uint64_t *a8, double a9, double a10)
{
  v11 = v10;
  v92 = a8;
  v85 = a7;
  v86 = a6;
  v87 = a5;
  v83 = a4;
  v90 = a3;
  v94 = a1;
  v82 = sub_1C4EFF0C8();
  v84 = *(v82 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v91 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0;
  v19 = a2 + 56;
  v93 = MEMORY[0x1E69E7CC0];
  v98 = MEMORY[0x1E69E7CC0];
  v88 = "expired_stable_graph";
  v89 = "stable_graph_fts";
  while (1)
  {
    v20 = v17;
    if (*(a2 + 16))
    {
      v21 = *(&unk_1F43D9AF8 + v18 + 32);
      v22 = *(a2 + 40);
      sub_1C4F02AF8();
      v23 = v21 ? 0x617247746E657665 : 0x7247656C62617473;
      v24 = v21 ? 0xEA00000000006870 : 0xEB00000000687061;
      sub_1C4F01298();

      v25 = sub_1C4F02B68();
      v26 = -1 << *(a2 + 32);
      v27 = v25 & ~v26;
      if ((*(v19 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        break;
      }
    }

LABEL_38:
    v17 = 1;
    v18 = 1u;
    if (v20)
    {
      v47 = v93;
      v48 = sub_1C4428DA0();
      v49 = 0;
      v90 = 0;
      v95 = v47 & 0xC000000000000001;
      v96 = v48;
      v94 = v47 & 0xFFFFFFFFFFFFFF8;
      v88 = v84 + 16;
      v89 = v84 + 8;
      v50 = INFINITY;
      v52 = v91;
      v51 = v92;
      while (1)
      {
        while (v96 == v49)
        {
          if (!v90)
          {
            goto LABEL_77;
          }

          v62 = v11;
          v63 = sub_1C44F2860();
          if (v11)
          {
          }

          v64 = v63;

          if (!v64)
          {
            goto LABEL_77;
          }

          if (*(*v83 + 16) >= *(v87 + 32))
          {
            v65 = sub_1C44F28F8(v65);
            if (v66 != *v86)
            {
              v65 = sub_1C44F2AB4(v65);
              if (v65 != *v85)
              {
              }
            }
          }

          v67 = sub_1C44F28F8(v65);
          *v86 = v68;
          v69 = *v85;
          if (v69 == sub_1C44F2AB4(v67))
          {

            v49 = 0;
            v90 = 0;
            v50 = INFINITY;
            v11 = v62;
          }

          else
          {
            v70 = sub_1C44F2E34(v64);
            v11 = v62;
            if (v70)
            {
              sub_1C44F28F8(v70);
              if (v71 >= a10 || (v72 = *(*v51 + 16), sub_1C44F920C(), v73 = static NSUserDefaults.maxSubjectIdSetSize.getter(), v31 = v72 == v73, v11 = 0, v31))
              {
                v74 = *v51;

                *v51 = MEMORY[0x1E69E7CD0];
              }

              sub_1C44F2AB4(v73);
              sub_1C4EFF0B8();
              v75 = sub_1C4EFF0A8();
              v76 = sub_1C483BD0C(v97, v75);
              if (v76)
              {
                v77 = v83;
                sub_1C4588EAC();
                v78 = *(*v77 + 16);
                sub_1C4589A94();
                v79 = *v77;
                *(v79 + 16) = v78 + 1;
                v76 = (*(v84 + 16))(v79 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v78, v52, v82);
              }

              v80 = sub_1C44F2AB4(v76);
              (*v89)(v52, v82);
              *v85 = v80;
            }

            v49 = 0;
            v90 = 0;
            v50 = INFINITY;
          }
        }

        if (v95)
        {
          v53 = MEMORY[0x1C6940F90](v49, v47);
        }

        else
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);

            goto LABEL_77;
          }

          if (v49 >= *(v94 + 16))
          {
            goto LABEL_81;
          }

          v53 = *(v47 + 8 * v49 + 32);
        }

        if (__OFADD__(v49, 1))
        {
          goto LABEL_80;
        }

        v54 = sub_1C44F27CC();
        if (v11)
        {
        }

        if (!v54)
        {
          goto LABEL_55;
        }

        v55 = *(v54 + 16);
        if (!v55)
        {

          goto LABEL_55;
        }

        v56 = *(v54 + 16);

        sub_1C4EFBBA8();
        v57 = sub_1C4EFBBE8();
        if (v57)
        {
          v58 = MEMORY[0x1EEE9AC00](v57);
          *(&v82 - 2) = v55;
          *(&v82 - 1) = 0;
          v59 = sqlite3_column_type(v58, 0);
          if (v59 == 5)
          {
            MEMORY[0x1EEE9AC00](v59);
            *(&v82 - 2) = sub_1C487BF24;
            *(&v82 - 1) = (&v82 - 4);
            sub_1C4EFB968();
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          sub_1C4F01A08();
          v61 = v60;

          v52 = v91;
          v51 = v92;
        }

        else
        {
          sub_1C4EFBB98();
          v52 = v91;
          v51 = v92;

          v61 = *v97;
        }

        v47 = v93;
        if (v61 < v50)
        {

          ++v49;
          v90 = v53;
          v50 = v61;
        }

        else
        {
LABEL_55:

          ++v49;
        }
      }
    }
  }

  LODWORD(v95) = v20;
  v96 = v11;
  v28 = ~v26;
  while (1)
  {
    v29 = *(*(a2 + 48) + v27) ? 0x617247746E657665 : 0x7247656C62617473;
    v30 = *(*(a2 + 48) + v27) ? 0xEA00000000006870 : 0xEB00000000687061;
    v31 = v29 == v23 && v30 == v24;
    if (v31)
    {
      break;
    }

    v32 = sub_1C4F02938();

    if (v32)
    {
      goto LABEL_25;
    }

    v27 = (v27 + 1) & v28;
    if (((*(v19 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      v11 = v96;
      goto LABEL_37;
    }
  }

LABEL_25:
  v33 = *(v90 + 16);
  _s15RawTripleCursorCMa();
  swift_allocObject();
  if (v21)
  {
    v34 = v94;
    sub_1C487BE08(v94, v97);

    v36 = v96;
    sub_1C4878ABC(a9, v35, 0x72675F746E657665, 0xEB00000000687061, v34, 0, 0);
    v11 = v36;
    if (v36)
    {
      goto LABEL_77;
    }

    MEMORY[0x1C6940330]();
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    swift_allocObject();
    v37 = v94;
    sub_1C487BE08(v94, v97);

    v39 = v88 | 0x8000000000000000;
    v40 = 0xD000000000000013;
    v41 = v37;
    v42 = a9;
    v43 = 0;
    goto LABEL_34;
  }

  v44 = v94;
  sub_1C487BE08(v94, v97);
  v45 = v96;
  sub_1C4878ABC(a9, v33, 0x675F656C62617473, 0xEC00000068706172, v44, 1, 0);
  v11 = v45;
  if (!v45)
  {
    MEMORY[0x1C6940330]();
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    swift_allocObject();

    v46 = v94;
    sub_1C487BE08(v94, v97);
    v40 = 0xD000000000000014;
    v39 = v89 | 0x8000000000000000;
    v38 = v33;
    v41 = v46;
    v42 = a9;
    v43 = 1;
LABEL_34:
    sub_1C4878ABC(v42, v38, v40, v39, v41, v43, 1);
    MEMORY[0x1C6940330]();
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v93 = v98;
LABEL_37:
    LOBYTE(v20) = v95;
    goto LABEL_38;
  }

LABEL_77:
}

uint64_t sub_1C44F27CC()
{
  if (*(v0 + 32) == 1)
  {
    v2 = *(v0 + 24);

    v3 = sub_1C44F34C4();
    if (v1)
    {
    }

    v5 = *(v2 + 16);
    *(v2 + 16) = v3;

    *(v0 + 32) = 0;
  }

  if (*(*(v0 + 24) + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C44F2860()
{
  if (*(v0 + 32) == 1)
  {
    v2 = *(v0 + 24);

    v3 = sub_1C44F34C4();
    if (v1)
    {
    }

    v5 = *(v2 + 16);
    *(v2 + 16) = v3;
  }

  *(v0 + 32) = 1;
  if (*(*(v0 + 24) + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C44F28F8(uint64_t result)
{
  if (*(v1 + 40) == 1)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
LABEL_9:
      MEMORY[0x1EEE9AC00](result);
      sub_1C4EFB968();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    sub_1C4EFBBA8();
    v2 = sub_1C4EFBBE8();
    if (v2)
    {
      v3 = MEMORY[0x1EEE9AC00](v2);
      result = sqlite3_column_type(v3, 0);
      if (result != 5)
      {
        sub_1C4F01A08();
      }

      goto LABEL_9;
    }

    sub_1C4EFBB98();
  }

  return result;
}

uint64_t sub_1C44F2AB4(uint64_t a1)
{
  v2 = 0;
  if (*(v1 + 32) != 1)
  {
    return v2;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_13;
  }

  v3 = *(v1 + 64);

  sub_1C4EFBBA8();
  a1 = sub_1C4EFBBE8();
  v4 = a1;
  if (!a1)
  {
    sub_1C4EFBB98();

    return v6;
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](a1);
  a1 = sqlite3_column_type(v4, v3);
  if (a1 != 5)
  {
    v2 = sub_1C4F02AA8();

    return v2;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](a1);
  sub_1C4EFB968();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C44F2C8C(uint64_t a1)
{
  v3 = _s28ResolvedKnowledgeGraphFilterVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 24);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  do
  {
    v12 = v10 != v11;
    if (v10 == v11)
    {
      break;
    }

    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1C44F2DD0(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11++, v8);
    v13 = sub_1C44F2F70(a1, v8);
    result = sub_1C447E918(v8, _s28ResolvedKnowledgeGraphFilterVMa);
  }

  while (!v13);
  return v12;
}

uint64_t sub_1C44F2DD0(uint64_t a1, uint64_t a2)
{
  v4 = _s28ResolvedKnowledgeGraphFilterVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1C44F2E34(uint64_t a1)
{
  v4 = sub_1C44F2C8C(a1);
  if (!v2)
  {
    v5 = 0;
    if (v4)
    {
      if (*(a1 + 137) != 1)
      {
        return 1;
      }

      if (*(a1 + 136) == 1)
      {
        v6 = 0x675F656C62617473;
        v7 = 0xEC00000068706172;
      }

      else
      {
        v6 = 0x72675F746E657665;
        v7 = 0xEB00000000687061;
      }

      if ((v8 = sub_1C48778D4(*(v1 + 16), v6, v7)) == 0)
      {
        return 1;
      }

      v9 = sub_1C44F2C8C(v8);

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return v5;
}

uint64_t _s28ResolvedKnowledgeGraphFilterVMa()
{
  result = qword_1EDDFCC58;
  if (!qword_1EDDFCC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1C44F2F70(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&qword_1EC0BE570, &qword_1C4F40030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_1C456902C(&qword_1EC0BE560, &qword_1C4F37468);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  if ((sub_1C44F3204(a2) & 1) == 0 || (sub_1C487B3F0(a2) & 1) == 0)
  {
    return 0;
  }

  v16 = _s28ResolvedKnowledgeGraphFilterVMa();
  sub_1C487BD34(a2 + *(v16 + 32), v10);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    v17 = sub_1C4420C3C(v10, &qword_1EC0BE560, &qword_1C4F37468);
    goto LABEL_7;
  }

  v18 = (*(v12 + 32))(v15, v10, v11);
  sub_1C4878190(v18);
  sub_1C4C67368();

  (*(v12 + 8))(v15, v11);
  v19 = sub_1C456902C(&qword_1EC0BE578, qword_1C4F374B0);
  v20 = sub_1C44157D4(v6, 1, v19);
  v17 = sub_1C4420C3C(v6, &qword_1EC0BE570, &qword_1C4F40030);
  if (v20 == 1)
  {
    return 0;
  }

LABEL_7:
  if (*(a2 + 40))
  {
    return 1;
  }

  v22 = *(a2 + 32);
  return (sub_1C4878418(v17) & v22) != 0;
}

uint64_t sub_1C44F3204(uint64_t *a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1C4EFF0C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFD548();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  if (v17 == 1 && !a1[2])
  {
    goto LABEL_10;
  }

  v24 = *a1;
  sub_1C44F2AB4(v14);
  sub_1C4EFF0B8();
  sub_1C4EFF038();
  (*(v7 + 8))(v10, v6);
  if (sub_1C44157D4(v5, 1, v11) != 1)
  {
    (*(v12 + 32))(v16, v5, v11);
    if ((v17 & 1) == 0)
    {
      v21 = sub_1C4EFD508();
      (*(v12 + 8))(v16, v11);
      v18 = v24 == v21;
      return v18 & 1;
    }

    v19 = a1[2];
    if (v19)
    {
      v20 = sub_1C4EFD508();
      v18 = sub_1C4445828(v20, v19);
      (*(v12 + 8))(v16, v11);
      return v18 & 1;
    }

    (*(v12 + 8))(v16, v11);
LABEL_10:
    v18 = 1;
    return v18 & 1;
  }

  sub_1C4420C3C(v5, &qword_1EC0B8568, &unk_1C4F319B0);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C44F34C4()
{
  v3 = *(v0 + 16);
  v4 = sub_1C4458EE8();
  if (!v1)
  {
    v2 = v4;
    if (v4)
    {

      sub_1C4EFBBA8();
      v6 = sub_1C4EFBBE8();
      if (v6)
      {
        if (sqlite3_column_type(v6, 0) != 5)
        {
          sub_1C4F01A08();

          return v2;
        }
      }

      else
      {
        sub_1C4EFBBF8();

        if ((v11 & 1) == 0)
        {
          return v2;
        }
      }

      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v7 = sub_1C4F00978();
      sub_1C442B738(v7, qword_1EDE2DF70);
      v8 = sub_1C4F00968();
      v9 = sub_1C4F01CD8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C43F8000, v8, v9, "ViewUpdate: RawTripleCursor: Unexpectently found row with NULL values", v10, 2u);
        MEMORY[0x1C6942830](v10, -1, -1);
      }

      return 0;
    }
  }

  return v2;
}

void sub_1C44F36C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t))
{
  sub_1C43FBD3C();
  v157 = v23;
  v160 = v24;
  v161 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v168 = v21;
  v33 = v32;
  v35 = v34;
  v36 = sub_1C4EFF0C8();
  v37 = sub_1C43FCDF8(v36);
  v155 = v38;
  v156 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v152 = v42 - v41;
  v153 = v31;
  v154 = v29;
  v43 = sub_1C456902C(v31, v29);
  sub_1C43FBD18(v43);
  v45 = *(v44 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v162 = v47;
  sub_1C43FBE44();
  v48 = sub_1C4EFC928();
  v49 = sub_1C43FCDF8(v48);
  v158 = v50;
  v159 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v151 - v54;
  v56 = sub_1C4EFCA68();
  v57 = sub_1C43FCDF8(v56);
  v165 = v58;
  v166 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBD08();
  v63 = v61 - v62;
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v151 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v151 - v69;
  sub_1C44F40EC();
  sub_1C44F4254();

  v163 = v33;
  (v27)(v33);
  sub_1C44F4254();

  v167 = sub_1C44FE288(v35);
  v164 = v67;
  if (v71)
  {
    v72 = v71;
    v73 = HIBYTE(v71) & 0xF;
    v74 = v167 & 0xFFFFFFFFFFFFLL;
    if ((v72 & 0x2000000000000000) != 0)
    {
      v75 = v73;
    }

    else
    {
      v75 = v167 & 0xFFFFFFFFFFFFLL;
    }

    if (!v75)
    {
      v129 = 0;
      v27 = 1;
      v77 = v162;
      v78 = v163;
      goto LABEL_78;
    }

    if ((v72 & 0x1000000000000000) != 0)
    {
      v80 = sub_1C4AA1330(v167, v72, 10);
      v27 = v150;
      v77 = v162;
      v78 = v163;
LABEL_75:
      if (v27)
      {
        v129 = 0;
      }

      else
      {
        v129 = v80;
      }

LABEL_78:
      v160(v78);
      v130 = v161(0);
      if (sub_1C44157D4(v77, 1, v130) == 1)
      {
        sub_1C4420C3C(v77, v153, v154);
        if ((v27 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v136 = v155;
        v137 = v152;
        v138 = v72;
        v139 = v156;
        (*(v155 + 16))(v152, v77, v156);
        sub_1C44DBDB4(v77, v157);
        v77 = sub_1C4EFF0A8();
        v140 = v139;
        v72 = v138;
        (*(v136 + 8))(v137, v140);
        if (v27 & 1 | (v129 != v77))
        {
LABEL_80:
          v77 = v168;
          v131 = a21(v78);
          if (v132)
          {
            v27 = v132;
            v133 = v131 == v167 && v132 == v72;
            if (!v133)
            {
              sub_1C4F02938();

              v134 = *(v165 + 8);
              v135 = v166;
              v134(v164, v166);
              v134(v70, v135);
              goto LABEL_92;
            }
          }
        }
      }

      v141 = sub_1C442C190();
      (v27)(v141);
      v142 = v70;
LABEL_91:
      (v27)(v142, v77);
      goto LABEL_92;
    }

    if ((v72 & 0x2000000000000000) != 0)
    {
      v169 = v167;
      v170 = v72 & 0xFFFFFFFFFFFFFFLL;
      if (v167 == 43)
      {
        v77 = v162;
        v78 = v163;
        if (v73)
        {
          if (v73 != 1)
          {
            sub_1C4458858();
            while (1)
            {
              sub_1C4401E84();
              if (!v133 & v112)
              {
                break;
              }

              sub_1C440DBD8();
              if (!v133)
              {
                break;
              }

              v80 = v123 + v122;
              if (__OFADD__(v123, v122))
              {
                break;
              }

              v76 = (v121 - 1);
              if (!v76)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_104:
        __break(1u);
        JUMPOUT(0x1C44F4028);
      }

      v77 = v162;
      v78 = v163;
      if (v167 != 45)
      {
        if (v73)
        {
          while (1)
          {
            sub_1C4401E84();
            if (!v133 & v112)
            {
              break;
            }

            sub_1C440DBD8();
            if (!v133)
            {
              break;
            }

            v80 = v128 + v127;
            if (__OFADD__(v128, v127))
            {
              break;
            }

            v76 = (v126 - 1);
            if (!v76)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

      if (v73)
      {
        if (v73 != 1)
        {
          sub_1C4458858();
          while (1)
          {
            sub_1C4401E84();
            if (!v133 & v112)
            {
              break;
            }

            sub_1C440DBD8();
            if (!v133)
            {
              break;
            }

            v80 = v115 - v114;
            if (__OFSUB__(v115, v114))
            {
              break;
            }

            v76 = (v113 - 1);
            if (!v76)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      if ((v167 & 0x1000000000000000) != 0)
      {
        v76 = ((v72 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v76 = sub_1C4F022F8();
      }

      v77 = v162;
      v78 = v163;
      v79 = *v76;
      if (v79 == 43)
      {
        if (v74 >= 1)
        {
          if (v74 != 1)
          {
            v80 = 0;
            if (v76)
            {
              v116 = v76 + 1;
              while (*v116 - 48 <= 9)
              {
                sub_1C440DBD8();
                if (!v133)
                {
                  break;
                }

                v80 = v120 + v119;
                if (__OFADD__(v120, v119))
                {
                  break;
                }

                v116 = (v117 + 1);
                if (v118 == 1)
                {
LABEL_65:
                  LOBYTE(v76) = 0;
                  goto LABEL_74;
                }
              }

              goto LABEL_73;
            }

            goto LABEL_74;
          }

          goto LABEL_73;
        }

        goto LABEL_103;
      }

      if (v79 != 45)
      {
        if (v74)
        {
          v80 = 0;
          if (v76)
          {
            while (1)
            {
              v124 = *v76 - 48;
              if (v124 > 9)
              {
                goto LABEL_73;
              }

              v125 = 10 * v80;
              if ((v80 * 10) >> 64 != (10 * v80) >> 63)
              {
                goto LABEL_73;
              }

              v80 = v125 + v124;
              if (__OFADD__(v125, v124))
              {
                goto LABEL_73;
              }

              ++v76;
              if (!--v74)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_73:
        v80 = 0;
        LOBYTE(v76) = 1;
        goto LABEL_74;
      }

      if (v74 >= 1)
      {
        if (v74 != 1)
        {
          v80 = 0;
          if (v76)
          {
            v81 = v76 + 1;
            while (*v81 - 48 <= 9)
            {
              sub_1C440DBD8();
              if (!v133)
              {
                break;
              }

              v80 = v85 - v84;
              if (__OFSUB__(v85, v84))
              {
                break;
              }

              v81 = (v82 + 1);
              if (v83 == 1)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_73;
          }

LABEL_74:
          v171 = v76;
          v27 = v76;
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      __break(1u);
    }

    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v162 = v63;
  v86 = sub_1C4EFC8D8();
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  sub_1C4EFC8C8();
  v167 = v70;
  sub_1C4EFC8A8();
  v89 = sub_1C4EFC918();
  v91 = v158;
  v90 = v159;
  if ((v89 & 1) == 0 && (sub_1C4EFC908() & 0x17FFFFFFFLL) != 0)
  {
    sub_1C44F40EC();
    sub_1C45024A0(v167, v92, v93, v94, v95, v96, v97, v98, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);

    v99 = (v27)(v163);
    sub_1C45024A0(v164, v99, v100, v101, v102, v103, v104, v105, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);

    sub_1C43FD7E0();
    sub_1C4EFC8B8();
    v106 = v166;
    v27 = v165 + 8;
    v107 = *(v165 + 8);
    v108 = sub_1C4405814();
    v107(v108);
    (v107)(v22, v106);
    (*(v91 + 8))(v55, v90);
    v109 = *(v91 + 32);
    v110 = sub_1C43FD258();
    v111(v110);
  }

  v77 = v55;
  if ((sub_1C4EFC918() & 1) == 0)
  {
LABEL_97:

    v147 = sub_1C4403128();
    v148(v147);
    v149 = sub_1C442C190();
    (v27)(v149);
    v142 = v167;
    goto LABEL_91;
  }

  v27 = 0xE700000000000000;
  switch(*(v168 + *(type metadata accessor for WalletOrderMatcher() + 24)))
  {
    case 1:
      v27 = 0xE400000000000000;
      goto LABEL_95;
    case 2:

      goto LABEL_96;
    case 3:
      v27 = 0xEA0000000000676ELL;
      sub_1C44133C0();
      goto LABEL_95;
    default:
LABEL_95:
      v77 = sub_1C4F02938();

      if ((v77 & 1) == 0)
      {
        goto LABEL_97;
      }

LABEL_96:
      sub_1C4EFC908();

      v143 = sub_1C4403128();
      v144(v143);
      v145 = *(v165 + 8);
      v146 = v166;
      v145(v164, v166);
      v145(v167, v146);
      break;
  }

LABEL_92:
  sub_1C43FE9F0();
}

uint64_t type metadata accessor for WalletOrderMatcher()
{
  result = qword_1EDDE58E8;
  if (!qword_1EDDE58E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C44F40EC()
{
  sub_1C43FBD3C();
  v2 = sub_1C441AEC8();
  v3 = type metadata accessor for EntityTriple(v2);
  v4 = sub_1C4403200(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C44131C8();
  if (v1)
  {
    sub_1C44031E8();
    sub_1C44F4214();
    sub_1C4411D48();
    do
    {
      v7 = sub_1C44057DC();
      sub_1C4471874(v7, v8);
      sub_1C440D464();
      if (v9)
      {
        sub_1C4404F04();
        sub_1C44F4214();
      }

      sub_1C4433CF0();
      v11 = sub_1C445E5E8(&unk_1EDDF8DB8, v10);
      sub_1C4414204(v11);
      sub_1C444B150();
      sub_1C4471874(v0, v12);
      sub_1C4410CC8();
      sub_1C44358E4();
    }

    while (!v13);
  }

  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C44F4214()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

uint64_t sub_1C44F4254()
{
  v0 = sub_1C4EFEEF8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C4EFCA58();
  sub_1C4EFE458();
  sub_1C43FD024();
  sub_1C44F4394();
  v6 = *(v3 + 8);
  v7 = sub_1C4405814();
  v6(v7);
  sub_1C44FDF08();
  sub_1C4EFC9C8();
  sub_1C4EFE708();
  sub_1C43FD024();
  sub_1C44F4394();
  v8 = sub_1C4405814();
  v6(v8);
  sub_1C44FDF08();
  sub_1C4EFCA08();
  sub_1C4EFE598();
  sub_1C43FD024();
  sub_1C44F4394();
  v9 = sub_1C4405814();
  v6(v9);
  sub_1C44FDF08();
  return sub_1C4EFC9E8();
}

void sub_1C44F4394()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EFC808();
  v5 = sub_1C43FCDF8(v4);
  v39 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A89C();
  v38 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C43FCDF8(v38);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v41 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44F46C0(sub_1C44FDC04, v40, v1, v16, v17, v18, v19, v20, v33, v34, v35, *(&v35 + 1), v36, v37, v38, v39, v40[0], v40[1], v41, v42);
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C44FDE1C();
    v24 = v46;
    v34 = v22;
    v25 = v22 + 32;
    v37 = v10 + 32;
    v35 = xmmword_1C4F0D130;
    do
    {
      sub_1C442E860(v25, v45);
      sub_1C4409678(v45, v45[3]);
      sub_1C440BB4C();
      v43 = sub_1C4EFF7D8();
      v44 = v26;
      sub_1C456902C(&qword_1EC0C6948, "8d\a");
      v27 = *(v39 + 72);
      v28 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v35;
      sub_1C4EFC7F8();
      v42 = v29;
      sub_1C444018C();
      sub_1C44FDE5C(&qword_1EC0C2318, v30);
      sub_1C456902C(&qword_1EC0C6920, ">d\a");
      sub_1C44FDEA4();
      sub_1C4F020C8();
      sub_1C4EFC818();
      sub_1C440962C(v45);
      v46 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C43FCFE8(v31);
        sub_1C44FDE1C();
        v24 = v46;
      }

      *(v24 + 16) = v32 + 1;
      (*(v10 + 32))(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, v15, v38);
      v25 += 40;
      --v23;
    }

    while (v23);
  }

  sub_1C43FE9F0();
}

void sub_1C44F46C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  sub_1C4413774();
  v25 = v24;
  v26 = 0;
  v28 = *(v27 + 16);
  v29 = v27 + 32;
  v30 = MEMORY[0x1E69E7CC0];
  v45 = v24;
  v46 = v27;
  v44 = v28;
  while (1)
  {
    if (v28 == v26)
    {
      goto LABEL_14;
    }

    if (v26 >= *(v21 + 16))
    {
      break;
    }

    sub_1C442E860(v29, v50);
    v31 = v25(v50);
    if (v20)
    {
      sub_1C440962C(v50);

LABEL_14:

      sub_1C43FBC80();
      return;
    }

    if (v31)
    {
      sub_1C441D670(v50, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v30 + 16);
        sub_1C440FB9C();
        sub_1C44F4214();
        v30 = a10;
      }

      v34 = *(v30 + 16);
      if (v34 >= *(v30 + 24) >> 1)
      {
        sub_1C44F4214();
      }

      v35 = v48;
      v36 = v49;
      sub_1C4418280(v47, v48);
      sub_1C43FCE64();
      v38 = *(v37 + 64);
      MEMORY[0x1EEE9AC00](v39);
      sub_1C43FBCC4();
      v42 = v41 - v40;
      (*(v43 + 16))(v41 - v40);
      sub_1C44FDC24(v34, v42, &a10, v35, v36);
      sub_1C440962C(v47);
      v30 = a10;
      v25 = v45;
      v21 = v46;
      v28 = v44;
    }

    else
    {
      sub_1C440962C(v50);
    }

    v29 += 40;
    ++v26;
  }

  __break(1u);
}

uint64_t sub_1C44F48B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C44F4930(a1, a2);
  if (!v2)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_1C44F4930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = a1;
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v55 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4EFF0C8();
  v13 = sub_1C43FCDF8(v12);
  v56 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v51 - v22;
  v24 = type metadata accessor for EntityTriple(0);
  v25 = sub_1C43FBCE0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  result = sub_1C44AB444();
  if (!v3)
  {
    v51 = v12;
    v52 = v11;
    v53 = v4;
    v54 = v2;
    v33 = v56;
    v32 = v57;
    sub_1C44D0BD8(v58, v23);
    if (sub_1C44157D4(v23, 1, v24) == 1)
    {
      sub_1C4420C3C(v23, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v34 = sub_1C4F00978();
      sub_1C442B738(v34, qword_1EDE2DE10);
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CD8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1C43F8000, v35, v36, "Pass through Matcher: skipping entityTriples are empty", v37, 2u);
        MEMORY[0x1C6942830](v37, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v38 = 0;
      return swift_willThrow();
    }

    else
    {
      sub_1C4471EF8(v23, v30);
      v39 = v19;
      sub_1C4EFF008();
      v58 = type metadata accessor for PassthroughMatcher();
      v40 = *(v58 + 28);
      v41 = sub_1C4EFD548();
      sub_1C43FBCE0(v41);
      (*(v42 + 16))(v32, v54 + v40);
      v43 = type metadata accessor for EntityMatch(0);
      v44 = v33;
      v45 = *(v33 + 16);
      v46 = v51;
      v45(v32 + v43[5], v30, v51);
      v45(v32 + v43[6], v39, v46);
      v47 = v52;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v49 = v48;
      (*(v55 + 8))(v47, v53);
      (*(v44 + 8))(v39, v46);
      result = sub_1C44F587C(v30);
      v50 = *(v54 + *(v58 + 20));
      *(v32 + v43[7]) = 1056964608;
      *(v32 + v43[8]) = v49;
      *(v32 + v43[9]) = v50;
      *(v32 + v43[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C44F4D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), int a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v73 = a8;
  v72 = a7;
  LODWORD(v79) = a6;
  v80 = a2;
  v81 = a5;
  v11 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
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
  v62[1] = type metadata accessor for GraphTriple(0);
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
      sub_1C44AC538(&qword_1EDDFE210, type metadata accessor for GraphTriple);
      v58 = v64;
      sub_1C4EFAE28();
      sub_1C440962C(&v91);
      sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
      sub_1C44AC538(&qword_1EDDFE208, type metadata accessor for GraphTriple);
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

uint64_t sub_1C44F587C(uint64_t a1)
{
  v2 = type metadata accessor for EntityTriple(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C44F58DC(uint64_t a1)
{
  v102[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v94 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v94 - v14;
  v16 = *(a1 + *(type metadata accessor for Configuration() + 20));
  if (qword_1EDDFEC10 != -1)
  {
    v100 = v16;
    swift_once();
    v16 = v100;
  }

  v17 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEC18, v16), xmmword_1EDDFEC18));
  if ((v17.i32[0] & v17.i32[1] & 1) == 0)
  {
    goto LABEL_9;
  }

  v102[3] = &_s24SiriInferenceFeatureFlagON;
  v102[4] = sub_1C4C5A97C();
  LOBYTE(v102[0]) = 1;
  v18 = sub_1C4EFA738();
  sub_1C440962C(v102);
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  v100.i64[0] = v3;
  v19 = [objc_allocWithZone(MEMORY[0x1E698F360]) init];
  v102[0] = 0;
  v20 = [v19 remoteDevicesWithError_];

  v21 = v102[0];
  sub_1C4461BB8(0, &qword_1EDDFA448, 0x1E698F358);
  v22 = sub_1C4F01678();
  v23 = v21;

  if (!v23)
  {
    v33 = sub_1C4428DA0(v22);
    if (qword_1EDDFC440 != -1)
    {
      swift_once();
    }

    v34 = qword_1EDE2DDA8;
    if (qword_1EDE2DDA8 >= v33)
    {
      sub_1C4F00178();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v38 = sub_1C4F00968();
      v39 = sub_1C4F01CF8();

      if (os_log_type_enabled(v38, v39))
      {
        LODWORD(v99) = v39;
        v40 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v102[0] = v96;
        v97 = v40;
        LODWORD(v40->isa) = 136315138;
        v41 = MEMORY[0x1E69E7CC0];
        if (v33)
        {
          v95 = v38;
          v98 = v2;
          v101 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0();
          if (v33 < 0)
          {
            __break(1u);
            goto LABEL_67;
          }

          v42 = 0;
          v41 = v101;
          do
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x1C6940F90](v42, v22);
            }

            else
            {
              v43 = *(v22 + 8 * v42 + 32);
            }

            v44 = v43;
            v45 = [v43 deviceIdentifier];
            v46 = sub_1C4F01138();
            v48 = v47;

            v101 = v41;
            v49 = *(v41 + 16);
            if (v49 >= *(v41 + 24) >> 1)
            {
              sub_1C44CD9C0();
              v41 = v101;
            }

            ++v42;
            *(v41 + 16) = v49 + 1;
            v50 = v41 + 16 * v49;
            *(v50 + 32) = v46;
            *(v50 + 40) = v48;
          }

          while (v33 != v42);
          v2 = v98;
          v38 = v95;
        }

        v77 = MEMORY[0x1C6940380](v41, MEMORY[0x1E69E6158]);
        v79 = v78;

        v80 = sub_1C441D828(v77, v79, v102);

        v81 = v97;
        *(v97 + 4) = v80;
        _os_log_impl(&dword_1C43F8000, v38, v99, "Retrieved remote devices: %s", v81, 0xCu);
        v82 = v96;
        sub_1C440962C(v96);
        MEMORY[0x1C6942830](v82, -1, -1);
        MEMORY[0x1C6942830](v81, -1, -1);
      }

      (*(v100.i64[0] + 8))(v15, v2);
      goto LABEL_10;
    }

    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CD8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134218240;
      *(v37 + 4) = sub_1C4428DA0(v22);

      *(v37 + 12) = 2048;
      *(v37 + 14) = v34;
      _os_log_impl(&dword_1C43F8000, v35, v36, "SyncDeviceRetriever - Too many remote devices: %ld - pruning to: %ld", v37, 0x16u);
      MEMORY[0x1C6942830](v37, -1, -1);
    }

    else
    {
    }

    v51 = *(v100.i64[0] + 8);
    v100.i64[0] += 8;
    v51(v13, v2);
    v52 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v102[0] = sub_1C4BCFAFC(v52);
    sub_1C4CE48C4(v102);

    if (v34 < 0)
    {
      __break(1u);
    }

    else
    {
      v99 = v51;
      v53 = v102[0];
      sub_1C4C5ACB0(0, v102[0]);
      sub_1C4C5ACB0(v34, v53);
      if ((v53 & 0xC000000000000001) != 0)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v34)
        {
          v54 = 0;
          do
          {
            v55 = v54 + 1;
            sub_1C4F02288();
            v54 = v55;
          }

          while (v34 != v55);
        }
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      if ((v53 & 0x8000000000000000) == 0 && (v53 & 0x4000000000000000) == 0)
      {
        v56 = 0;
        v57 = v53 + 32;
        v58 = (2 * v34) | 1;
        goto LABEL_38;
      }
    }

    v90 = sub_1C4F02528();
    v57 = v91;
    v56 = v92;
    v58 = v93;

    v53 = v90;
LABEL_38:
    if (v58)
    {
      sub_1C4F02998();
      swift_unknownObjectRetain_n();
      v60 = swift_dynamicCastClass();
      if (!v60)
      {
        swift_unknownObjectRelease();
        v60 = MEMORY[0x1E69E7CC0];
      }

      v61 = *(v60 + 16);

      if (__OFSUB__(v58 >> 1, v56))
      {
        __break(1u);
      }

      else if (v61 == (v58 >> 1) - v56)
      {
        v22 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v22)
        {
LABEL_47:
          sub_1C4F00178();

          v62 = sub_1C4F00968();
          v63 = sub_1C4F01CF8();

          if (!os_log_type_enabled(v62, v63))
          {

            v99(v10, v2);
            goto LABEL_10;
          }

          v97 = v62;
          v64 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v102[0] = v94;
          v95 = v64;
          LODWORD(v64->isa) = 136315138;
          v65 = sub_1C4428DA0(v22);
          v66 = MEMORY[0x1E69E7CC0];
          LODWORD(v96) = v63;
          if (!v65)
          {
LABEL_61:
            v83 = MEMORY[0x1C6940380](v66, MEMORY[0x1E69E6158]);
            v85 = v84;

            v86 = sub_1C441D828(v83, v85, v102);

            v87 = v95;
            *(&v95->isa + 4) = v86;
            v88 = v97;
            _os_log_impl(&dword_1C43F8000, v97, v96, "Retrieved remote devices: %s", v87, 0xCu);
            v89 = v94;
            sub_1C440962C(v94);
            MEMORY[0x1C6942830](v89, -1, -1);
            MEMORY[0x1C6942830](v87, -1, -1);

            v99(v10, v2);
            goto LABEL_10;
          }

          v67 = v65;
          v98 = v2;
          v101 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0();
          if ((v67 & 0x8000000000000000) == 0)
          {
            v68 = 0;
            v66 = v101;
            do
            {
              if ((v22 & 0xC000000000000001) != 0)
              {
                v69 = MEMORY[0x1C6940F90](v68, v22);
              }

              else
              {
                v69 = *(v22 + 8 * v68 + 32);
              }

              v70 = v69;
              v71 = [v69 deviceIdentifier];
              v72 = sub_1C4F01138();
              v74 = v73;

              v101 = v66;
              v75 = *(v66 + 16);
              if (v75 >= *(v66 + 24) >> 1)
              {
                sub_1C44CD9C0();
                v66 = v101;
              }

              ++v68;
              *(v66 + 16) = v75 + 1;
              v76 = v66 + 16 * v75;
              *(v76 + 32) = v72;
              *(v76 + 40) = v74;
            }

            while (v67 != v68);
            v2 = v98;
            goto LABEL_61;
          }

LABEL_67:
          __break(1u);
        }

        v22 = MEMORY[0x1E69E7CC0];
LABEL_46:
        swift_unknownObjectRelease();
        goto LABEL_47;
      }

      swift_unknownObjectRelease_n();
    }

    sub_1C4618A54(v53, v57, v56, v58);
    v22 = v59;
    goto LABEL_46;
  }

  swift_willThrow();

  sub_1C4F00178();
  v24 = v23;
  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CE8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v24;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_1C43F8000, v25, v26, "Could not retrieve list of sync devices: %@", v27, 0xCu);
    sub_1C4420C3C(v28, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v28, -1, -1);
    MEMORY[0x1C6942830](v27, -1, -1);
  }

  (*(v100.i64[0] + 8))(v7, v2);
LABEL_9:
  v22 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t sub_1C44F638C()
{
  sub_1C44366B4();
  sub_1C44F58DC(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_config);
  v1 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
  os_unfair_lock_lock(v1 + 6);
  sub_1C44F1B58(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1C44F642C()
{
  v2 = v1;
  v58 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox;
  v59 = *(v0 + 120);
  v3 = *(v59 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(*(v3 + 16) + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  os_unfair_lock_unlock((v3 + 24));
  v5 = sub_1C4428DA0(v4);
  if (v5)
  {
    v6 = v5;
    sub_1C445C280();
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v7 = 0;
    v8 = v61;
    v60 = v4 & 0xC000000000000001;
    v9 = v4;
    v10 = v6;
    do
    {
      if (v60)
      {
        v11 = MEMORY[0x1C6940F90](v7, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = [v11 deviceIdentifier];
      v14 = sub_1C4F01138();
      v16 = v15;

      v61 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C43FCFE8(v17);
        sub_1C44CD9C0();
        v8 = v61;
      }

      ++v7;
      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v4 = v9;
    }

    while (v10 != v7);

    v2 = v1;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v61 = v8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44ECB2C(&v61);
  if (v2)
  {

    __break(1u);
    return;
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
  v57 = sub_1C4F01048();
  v21 = v20;

  sub_1C44F638C();
  v22 = *(v59 + v58);
  os_unfair_lock_lock((v22 + 24));
  v23 = *(*(v22 + 16) + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  os_unfair_lock_unlock((v22 + 24));
  v24 = sub_1C4428DA0(v23);
  if (!v24)
  {

    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v25 = v24;
  sub_1C445C280();
  if (v25 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v55 = v21;
  v26 = 0;
  v27 = v61;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1C6940F90](v26, v23);
    }

    else
    {
      v28 = *(v23 + 8 * v26 + 32);
    }

    v29 = v28;
    v30 = [v28 deviceIdentifier];
    v31 = sub_1C4F01138();
    v33 = v32;

    v61 = v27;
    v35 = *(v27 + 16);
    v34 = *(v27 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1C43FCFE8(v34);
      sub_1C44CD9C0();
      v27 = v61;
    }

    ++v26;
    *(v27 + 16) = v35 + 1;
    v36 = v27 + 16 * v35;
    *(v36 + 32) = v31;
    *(v36 + 40) = v33;
  }

  while (v25 != v26);

  v21 = v55;
LABEL_24:
  v61 = v27;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44ECB2C(&v61);

  v37 = sub_1C4F01048();
  v39 = v38;

  if (v57 == v37 && v21 == v39)
  {
  }

  else
  {
    v41 = sub_1C4F02938();

    if ((v41 & 1) == 0)
    {
      if (qword_1EDDFECB0 == -1)
      {
LABEL_30:
        v42 = sub_1C4F00978();
        sub_1C43FCEE8(v42, qword_1EDDFECB8);
        v43 = sub_1C4F00968();
        v44 = sub_1C4F01CF8();
        if (os_log_type_enabled(v43, v44))
        {
          sub_1C43FD1A8();
          *swift_slowAlloc() = 0;
          sub_1C44011B0(&dword_1C43F8000, v45, v46, "ViewUpdate.Manager: Migrating views");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        v47 = *(v56 + 16);
        v48 = *(v59 + v58);
        os_unfair_lock_lock((v48 + 24));
        v49 = *(*(v48 + 16) + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        os_unfair_lock_unlock((v48 + 24));
        sub_1C4C3FC7C(v47, v49, v56 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_config);

        return;
      }

LABEL_41:
      sub_1C43FFB88();
      goto LABEL_30;
    }
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v50 = sub_1C4F00978();
  sub_1C43FCEE8(v50, qword_1EDDFECB8);
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CD8();
  if (os_log_type_enabled(v51, v52))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C44011B0(&dword_1C43F8000, v53, v54, "ViewUpdate.Manager: Detected a new device but there was no change loading new devices");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

const char *sub_1C44F6A14(char a1)
{
  if (a1)
  {
    return "siri_remembers_private_device_sync";
  }

  else
  {
    return "siri_remembers_use_intelligence_platform";
  }
}

uint64_t sub_1C44F6A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C44F6AAC();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C44F6AAC()
{
  result = qword_1EDDFF1E0;
  if (!qword_1EDDFF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1E0);
  }

  return result;
}

void sub_1C44F6B00()
{
  sub_1C43FE96C();
  v22 = v3;
  v5 = v4;
  v8 = sub_1C440BE78(v4, v6, v7);
  sub_1C43FCDF8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4402A68();
  v14 = v0[1];
  v20 = v0[2];
  v21 = *v0;
  v18 = v0[4];
  v19 = v0[3];
  v17 = v0[5];
  v15 = v5[4];
  v16 = sub_1C4417F50(v5, v5[3]);
  v22(v16);
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v1)
  {
    sub_1C4409F78();
    sub_1C4411090();
    sub_1C4F02798();
    sub_1C4401670();
    sub_1C4411090();
    sub_1C4F02798();
  }

  (*(v10 + 8))(v2, v8);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C44F6CC0()
{
  result = qword_1EDDFD898;
  if (!qword_1EDDFD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD898);
  }

  return result;
}

uint64_t sub_1C44F6D1C(char a1)
{
  if (!a1)
  {
    return 0x656D614E656C6966;
  }

  if (a1 == 1)
  {
    return 0x4E6E6F6973726576;
  }

  return 0x62697461706D6F63;
}

uint64_t sub_1C44F6D84(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 16) + 1;
  v9 = (a2 + 72);
  do
  {
    if (!--v8)
    {
      break;
    }

    v10 = v9 + 6;
    v11 = *(v9 - 5);
    v12 = *(v9 - 4);
    v13 = *(v9 - 3);
    v14 = *(v9 - 2);
    v15 = *(v9 - 1);
    v16 = *v9;
    a3(result, a2, a3, a4, a5, a6);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB6A8();

    v9 = v10;
  }

  while (!v6);
  return result;
}

unint64_t sub_1C44F6E70()
{
  result = qword_1EDDFF1F0;
  if (!qword_1EDDFF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1F0);
  }

  return result;
}

uint64_t sub_1C44F6EC4()
{
  v1 = v0;
  v2 = sub_1C4A631E8();
  if (qword_1EDDFECA0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DF58);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v51 = v7;
    *v6 = 136315138;
    v8 = sub_1C4F01198();
    v10 = sub_1C441D828(v8, v9, &v51);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "OntologyParser: updateOntology: version check results: %s", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if ((v2 & 3) != 0)
  {
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v12))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B90(&dword_1C43F8000, v13, v14, "OntologyParser: updateOntology: updating classes");
      sub_1C43FBE2C();
    }

    v15 = *(v1 + 16);
    v16 = sub_1C4A55054();
    sub_1C442D05C(v16);
    sub_1C4A57AE8();
    v17 = sub_1C443279C();
    sub_1C4A63A70(v17, v18, sub_1C4A65CB8);
    if ((v2 & 0xD) == 0)
    {
LABEL_14:
      if ((v2 & 0x11) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_11:
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v20))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4402B90(&dword_1C43F8000, v21, v22, "OntologyParser: updateOntology: updating predicates and inheritance");
      sub_1C43FBE2C();
    }

    v23 = *(v1 + 16);
    v24 = sub_1C4A51E90();
    sub_1C442D05C(v24);
    sub_1C4A52228();
    sub_1C4A63748();
    v25 = sub_1C4A55968();
    sub_1C442D05C(v25);
    v26 = sub_1C4A566D4();
    sub_1C442D05C(v26);
    v27 = sub_1C4A56120();
    sub_1C442D05C(v27);
    sub_1C4A57BF0();
    sub_1C4A57CB0();
    sub_1C4A57C50();
    sub_1C4A63974();
    goto LABEL_14;
  }

  if ((v2 & 0xC) != 0)
  {
    goto LABEL_11;
  }

  if ((v2 & 0x10) == 0)
  {
    v45 = *(v1 + 16);
    v46 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions);
    v47 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44076BC(v47);

    goto LABEL_26;
  }

LABEL_15:
  v28 = sub_1C4F00968();
  v29 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v29))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4402B90(&dword_1C43F8000, v30, v31, "OntologyParser: updateOntology: updating relationships");
    sub_1C43FBE2C();
  }

  v32 = *(v1 + 16);
  v33 = sub_1C4A558F4();
  sub_1C442D05C(v33);
  sub_1C4A57B90();
  v34 = sub_1C4413570();
  sub_1C4A63A70(v34, v35, sub_1C4A65DF0);
LABEL_18:
  v36 = *(v1 + 16);
  v37 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions);
  v38 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44076BC(v38);

  if (v2)
  {
LABEL_26:
    v39 = sub_1C4F00968();
    v48 = sub_1C4F01CF8();
    if (!sub_1C43FEB2C(v48))
    {
      v43 = 0;
      goto LABEL_31;
    }

    *sub_1C43FCED0() = 0;
    sub_1C440E5F8(&dword_1C43F8000, v49, v48, "OntologyParser: updateOntology: no updates needed");
    v43 = 0;
    goto LABEL_28;
  }

  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CF8();
  v41 = sub_1C43FEB2C(v40);
  if ((v2 & 0x20) == 0)
  {
    if (!v41)
    {
      v43 = 1;
      goto LABEL_31;
    }

    *sub_1C43FCED0() = 0;
    sub_1C440E5F8(&dword_1C43F8000, v42, v40, "OntologyParser: updateOntology: ontology has been modified");
    v43 = 1;
    goto LABEL_28;
  }

  v43 = 2;
  if (v41)
  {
    *sub_1C43FCED0() = 0;
    sub_1C440E5F8(&dword_1C43F8000, v44, v40, "OntologyParser: updateOntology: ontology has been modified and requires a rebuild");
LABEL_28:
    sub_1C43FBE2C();
  }

LABEL_31:

  return v43;
}

uint64_t sub_1C44F7334(uint64_t a1, int a2)
{
  v3 = v2;
  v80 = a2;
  v82 = *v3;
  v78 = sub_1C4EFB1E8();
  v5 = sub_1C43FCDF8(v78);
  v76 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v77 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v74 - v11;
  v12 = sub_1C4EF98F8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v74 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v74 - v23;
  sub_1C4432740();
  sub_1C4EF9888();
  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url;
  v26 = *(v15 + 32);
  v79 = v24;
  v26(&v3[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url], v24, v12);
  v81 = OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_config;
  sub_1C44098F0(a1, &v3[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_config]);
  v27 = *(type metadata accessor for Configuration() + 20);
  v86 = a1;
  v28 = (a1 + v27);
  v29 = *v28;
  v30 = v28[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  v87 = v12;
  sub_1C4406FD4(&xmmword_1EDDFEC78);
  v32 = 2 * (v31 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C4406FD4(&xmmword_1EDDFFAE0);
  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = v32 | 4;
  }

  v84 = v34;
  sub_1C44F920C();
  v35 = static NSUserDefaults.ontologyDatabaseLoggingEnabled.getter() & 1;
  v36 = *(v15 + 16);
  v37 = v87;
  v36(v22, &v3[v25], v87);
  v38 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v83 = v25;
  v39 = v3;
  v40 = v38;
  v41 = *(v38 + 48);
  v42 = *(v38 + 52);
  swift_allocObject();
  v43 = v85;
  v44 = sub_1C44F999C(v22, v84 | v35);
  if (v43)
  {
    sub_1C4467948(v86);
    (*(v15 + 8))(&v39[v83], v37);
    sub_1C4467948(&v39[v81]);
    v45 = *(*v39 + 48);
    v46 = *(*v39 + 52);
    swift_deallocPartialClassInstance();
    return v39;
  }

  v48 = v83;
  v84 = v40;
  v85 = v15 + 16;
  v49 = v15;
  *&v39[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool] = v44;
  sub_1C4A52458();
  v47 = v39;
  v53 = type metadata accessor for OntologyParser();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();

  if (sub_1C4A628B8(v56))
  {
    if ((v80 & 1) != 0 || sub_1C44F6EC4() != 2)
    {
      sub_1C4467948(v86);
      goto LABEL_18;
    }

    v57 = &v39[v48];
    v58 = v79;
    v59 = v87;
    v36(v79, v57, v87);
    sub_1C4B6E134(v58, 1);
    (*(v49 + 8))(v58, v59);
    sub_1C4778114();
    v60 = swift_allocError();
    *v61 = 4;
    swift_willThrow();

    v88 = v60;
    v50 = v60;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    if (swift_dynamicCast())
    {

      v51 = v90;
      sub_1C4778114();
      swift_allocError();
      *v52 = v51;
      swift_willThrow();
      sub_1C4467948(v86);

LABEL_18:

      return v47;
    }

    v88 = v60;
    v63 = v60;
    if (!swift_dynamicCast())
    {

      v88 = 0;
      v89 = 0xE000000000000000;

      sub_1C4F02248();
      v69 = OntologyDatabase.description.getter();
      v71 = v70;

      v88 = v69;
      v89 = v71;
      MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FAB6E0);
      v90 = v60;
      v72 = v60;
      v73 = sub_1C4F01198();
      MEMORY[0x1C6940010](v73);

      goto LABEL_24;
    }

    v64 = v77;
    (*(v76 + 32))(v77, v75, v78);
    v65 = v74;
    v36(v74, &v39[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url], v87);
    sub_1C4774554(v65, v64);
    __break(1u);
  }

  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1C4F02248();
  v66 = OntologyDatabase.description.getter();
  v68 = v67;

  v88 = v66;
  v89 = v68;
  MEMORY[0x1C6940010](0xD000000000000021, 0x80000001C4FAE350);
LABEL_24:
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C44F7A2C()
{
  sub_1C44F7A84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C44F7A84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classJSON;
  v4 = sub_1C4EF98F8();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = sub_1C4412B9C(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritanceJSON);
  (v5)(v6);
  v7 = sub_1C4412B9C(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateJSON);
  (v5)(v7);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypeJSON);
  (v5)(v8);
  v9 = sub_1C4412B9C(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_versionJSON);
  (v5)(v9);
  v10 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder);

  v11 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict);

  v12 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship);

  v13 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_unfoldedRelationship);

  v14 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairs);

  v15 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairs);

  v16 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairs);

  v17 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairs);

  v18 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairs);

  v19 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions);

  v20 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairsBackup);

  v21 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairsBackup);

  v22 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritancePairsBackup);

  v23 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairsBackup);

  v24 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairsBackup);

  v25 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairsBackup);

  return v0;
}

void sub_1C44F7C68()
{
  sub_1C43FBD3C();
  sub_1C4434074(v5, v6, v7, v8, v9, v10);
  v28 = sub_1C4EF98F8();
  v11 = sub_1C43FCDF8(v28);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C440593C();
  sub_1C43FE83C();
  sub_1C442C5D8(v16, v17);
  if (v18)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443EEC4();
  sub_1C456902C(v1, v0);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C447F8EC();
    sub_1C43FE83C();
    sub_1C447EF98();
    if (!v20)
    {
      goto LABEL_12;
    }

    v3 = v19;
  }

  if (v4)
  {
    v21 = *(*v2 + 56);
    v22 = *(v21 + 8 * v3);
    *(v21 + 8 * v3) = v30;
    sub_1C43FE9F0();
  }

  else
  {
    v24 = *(v13 + 16);
    v25 = sub_1C44158DC();
    v26(v25);
    v27 = sub_1C43FD018();
    v29(v27);
    sub_1C43FE9F0();
  }
}