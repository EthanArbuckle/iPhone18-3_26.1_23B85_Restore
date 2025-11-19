uint64_t sub_1C481C88C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *(v2 + 40);
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = sub_1C481C9BC;
  }

  else
  {
    v8 = *(v3 + 32);

    v7 = sub_1C481C998;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C481C998()
{
  v1 = *(v0 + 16);
  sub_1C43FBCF0();
  return v2();
}

uint64_t sub_1C481C9BC()
{
  v1 = *(v0 + 32);

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v3, v4, "geoMapItems is not an array of GEOMapItem", v7, 2u);
    sub_1C43FBE2C();
  }

  sub_1C43FBCF0();

  return v8(0);
}

void sub_1C481CAD0(uint64_t a1, void *a2)
{
  v18 = a2;
  v16 = a1;
  v3 = sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *(v4 + 16);
  v8(&v15 - v6, a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v11 = *(v4 + 32);
  v11(v10 + v9, v7, v3);
  v23 = sub_1C481DBBC;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1C481CFD4;
  v22 = &unk_1F43EDBC8;
  v17 = _Block_copy(&aBlock);

  v8(v7, v16, v3);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v3);
  v23 = sub_1C481DCDC;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1C481D184;
  v22 = &unk_1F43EDC18;
  v13 = _Block_copy(&aBlock);

  v14 = v17;
  [v18 submitWithHandler:v17 networkActivity:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1C481CD48(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a2;
    sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
    sub_1C4F01808();
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = a2;
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CD8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1C43F8000, v7, v8, "Encountered an error when fetching geoMapItems %@", v9, 0xCu);
      sub_1C45B4B90(v10);
      MEMORY[0x1C6942830](v10, -1, -1);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (a1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v13 = sub_1C4F00978();
      sub_1C442B738(v13, qword_1EDDFECB8);
      v14 = sub_1C4F00968();
      v15 = sub_1C4F01CF8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C43F8000, v14, v15, "geoMapItems is not an array of GEOMapItem", v16, 2u);
        MEMORY[0x1C6942830](v16, -1, -1);
      }
    }

    sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
    sub_1C4F01818();
  }
}

uint64_t sub_1C481CFD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1C456902C(&qword_1EC0BDC80, &qword_1C4F317A0);
    v4 = sub_1C4F01678();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1C481D074(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDDFECB8);
    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CF8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v3, "No network activity when retrieving GEOMapItem", v4, 2u);
      MEMORY[0x1C6942830](v4, -1, -1);
    }
  }

  sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
  return sub_1C4F01818();
}

uint64_t sub_1C481D184(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1C481D1D8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1C43FEB04();
}

uint64_t sub_1C481D1EC()
{
  v1 = v0[4];
  v2 = sub_1C4811608(v0[3]);
  v3 = [v1 defaultTraits];
  v4 = sub_1C481DB3C(v2, v3, v1);
  v0[5] = v4;

  if (v4)
  {
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_1C481D300;

    return sub_1C481C770(v4);
  }

  else
  {
    sub_1C43FBCF0();

    return v7(0);
  }
}

uint64_t sub_1C481D300()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1;
  v3 = *(v1 + 48);
  v6 = *v0;
  *(v2 + 56) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C481D3F8, 0, 0);
}

uint64_t sub_1C481D3F8()
{
  v45 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = sub_1C4428DA0();
    v4 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v5 = &off_1E81F1000;
    v42 = v0;
    while (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C6940F90](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v6 = *(v1 + 8 * v4 + 32);
        swift_unknownObjectRetain();
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        sub_1C44064A8();
        swift_once();
        goto LABEL_23;
      }

      v8 = [v6 v5[422]];
      if (v8)
      {
        v9 = v8;
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v10 = sub_1C4F00978();
        sub_1C442B738(v10, qword_1EDDFECB8);
        v11 = v9;
        v12 = sub_1C4F00968();
        v13 = sub_1C4F01CF8();
        v41 = v11;

        v40 = v13;
        if (os_log_type_enabled(v12, v13))
        {
          log = v12;
          v14 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v44 = v38;
          *v14 = 136315138;
          v15 = sub_1C4F01138();
          v17 = sub_1C441D828(v15, v16, &v44);

          *(v14 + 4) = v17;
          v18 = v42;
          _os_log_impl(&dword_1C43F8000, log, v40, "Merchant POI = %s", v14, 0xCu);
          sub_1C440962C(v38);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {

          v18 = v42;
        }

        *(v18 + 16) = [v6 _muid];
        v19 = sub_1C4F02858();
        v21 = v20;
        swift_unknownObjectRelease();
        v22 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = *(v43 + 16);
          sub_1C458A708();
          v22 = v26;
        }

        v23 = *(v22 + 16);
        if (v23 >= *(v22 + 24) >> 1)
        {
          sub_1C458A708();
          v22 = v27;
        }

        *(v22 + 16) = v23 + 1;
        v43 = v22;
        v24 = (v22 + 24 * v23);
        v24[4] = v19;
        v24[5] = v21;
        v0 = v42;
        v24[6] = v41;
        v4 = v7;
        v5 = &off_1E81F1000;
      }

      else
      {
        swift_unknownObjectRelease();
        ++v4;
      }
    }

    v3 = sub_1C481C6D8(v43);
    v28 = *(v3 + 16);
    v29 = sub_1C4428DA0();

    if (v28 >= v29)
    {
      goto LABEL_26;
    }

    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_33;
    }

LABEL_23:
    v30 = sub_1C4F00978();
    sub_1C442B738(v30, qword_1EDDFECB8);
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CF8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C43F8000, v31, v32, "GEOMapService.poisForMUIDs: detected duplicate muid to poi category mapping.", v33, 2u);
      v0 = v42;
      sub_1C43FBE2C();
    }

LABEL_26:
    v34 = *(v0 + 40);
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = *(v0 + 40);
    swift_unknownObjectRelease();
    v3 = 0;
  }

  sub_1C43FBCF0();

  return v36(v3);
}

uint64_t sub_1C481D7F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C481D890;

  return sub_1C481D1D8(a1);
}

uint64_t sub_1C481D890()
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

uint64_t sub_1C481D978(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v36 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v36 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = v8;
    v18 = sub_1C445FAA8(v7, v6);
    v19 = v9[2];
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_17;
    }

    v22 = v11;
    if (v9[3] >= v21)
    {
      if ((a2 & 1) == 0)
      {
        sub_1C456902C(&qword_1EC0BDC68, &unk_1C4F31780);
        sub_1C4F02468();
      }
    }

    else
    {
      sub_1C4679474(v21, a2 & 1, v12, v13, v14, v15, v16, v17, v34, v35, v36, SBYTE4(v36));
      v23 = *a3;
      v24 = sub_1C445FAA8(v7, v6);
      if ((v22 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v18 = v24;
    }

    v26 = *a3;
    if (v22)
    {

      v27 = v26[7];
      v28 = *(v27 + 8 * v18);
      *(v27 + 8 * v18) = v10;
    }

    else
    {
      v26[(v18 >> 6) + 8] |= 1 << v18;
      v29 = (v26[6] + 16 * v18);
      *v29 = v7;
      v29[1] = v6;
      *(v26[7] + 8 * v18) = v10;
      v30 = v26[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_18;
      }

      v26[2] = v32;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

id sub_1C481DB3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C4F01658();

  v6 = [a3 ticketForMUIDs:v5 traits:a2];

  return v6;
}

void sub_1C481DBBC(uint64_t a1, void *a2)
{
  v4 = *(*(sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798) - 8) + 80);

  sub_1C481CD48(a1, a2);
}

uint64_t sub_1C481DC48()
{
  v1 = sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C481DCDC(char a1)
{
  v2 = *(*(sub_1C456902C(&qword_1EC0BDC78, &qword_1C4F31798) - 8) + 80);

  return sub_1C481D074(a1);
}

uint64_t sub_1C481DD60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v28 = a4;
  v25 = a3;
  v24 = sub_1C4EFFC28();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v23[1] = v8 + 32;
  for (i = (a1 + 40); v12; --v12)
  {
    v15 = *(i - 1);
    v14 = *i;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFFBB8();
    v16 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458DA58(0, *(v16 + 16) + 1, 1, v16);
      v16 = v20;
      *a2 = v20;
    }

    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1C458DA58(v18 > 1, v19 + 1, 1, v16);
      v16 = v21;
      *a2 = v21;
    }

    *(v16 + 16) = v19 + 1;
    (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v11, v24);

    i += 2;
  }
}

uint64_t sub_1C481DF78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a4;
  v28 = a3;
  v27 = sub_1C4EFEEF8();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C4EFFC28();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v31 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = (v5 + 8);
  v25[2] = v9 + 32;
  for (i = (a1 + 40); v12; --v12)
  {
    v16 = *(i - 1);
    v15 = *i;
    swift_bridgeObjectRetain_n();
    sub_1C4EFECB8();
    sub_1C4EFEB68();
    (*v13)(v8, v27);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFFBB8();
    v17 = v29;
    v18 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458DA58(0, *(v18 + 16) + 1, 1, v18);
      v18 = v22;
      *v29 = v22;
    }

    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1C458DA58(v20 > 1, v21 + 1, 1, v18);
      v18 = v23;
      *v29 = v23;
    }

    *(v18 + 16) = v21 + 1;
    (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v31, v26);

    i += 2;
  }
}

uint64_t sub_1C481E22C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x737465737361 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C481E2B4(void *a1)
{
  v2 = sub_1C456902C(&qword_1EC0BDC98, &unk_1C4F31960);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4826968();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0BDC90, &qword_1C4F31958);
  sub_1C48269BC(&qword_1EC0BDCA0, &qword_1EC0BDCA8);
  sub_1C4F027E8();
  v9 = *(v4 + 8);
  v10 = sub_1C43FE99C();
  return v11(v10);
}

void *sub_1C481E434(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BDC88, &qword_1C4F31950);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = sub_1C4409678(a1, a1[3]);
  sub_1C4826968();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C456902C(&qword_1EC0BDC90, &qword_1C4F31958);
    sub_1C48269BC(&qword_1EDDDBC38, &qword_1EDDDC430);
    sub_1C4F026C8();
    (*(v5 + 8))(v10, v3);
    v12 = v14[1];
    sub_1C440962C(a1);
  }

  return v12;
}

uint64_t sub_1C481E5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C481E22C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C481E610(uint64_t a1)
{
  v2 = sub_1C4826968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C481E64C(uint64_t a1)
{
  v2 = sub_1C4826968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C481E688@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C481E434(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GlobalKnowledgeDatabase.checkAndLoadAssets()()
{
  sub_1C43FE96C();
  v191 = v2;
  v192 = v3;
  v183 = v1;
  v4 = *v0;
  v171 = v0;
  v177 = v4;
  v172 = sub_1C4F00978();
  v5 = sub_1C43FCDF8(v172);
  v180 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v178 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  sub_1C43FCE30(v11);
  v12 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FCE30(v17);
  v18 = type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  v19 = sub_1C43FCF7C(v18);
  v179 = v20;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v173 = (&v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  sub_1C43FCE30(v25);
  *&v164 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD230();
  v170 = v28;
  sub_1C43FBE44();
  v169 = sub_1C4EF98F8();
  v29 = sub_1C43FCDF8(v169);
  v168 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  sub_1C43FCE30(v34 - v33);
  v35 = sub_1C456902C(&qword_1EC0BBC78, &unk_1C4F228F0);
  sub_1C43FBD18(v35);
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBC74();
  v181 = v39;
  sub_1C43FBE44();
  v174 = sub_1C4EFCD88();
  v40 = sub_1C43FCDF8(v174);
  v176 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBCC4();
  v175 = v45 - v44;
  sub_1C43FBE44();
  v182 = sub_1C4EFF288();
  v46 = sub_1C43FCDF8(v182);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v53 = v52 - v51;
  v54 = sub_1C4EFDED8();
  v55 = sub_1C43FCDF8(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBCC4();
  v62 = v61 - v60;
  v63 = sub_1C4EFF968();
  v64 = sub_1C43FCDF8(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBCC4();
  v71 = v70 - v69;
  os_transaction_create();
  sub_1C4EFDF58();
  sub_1C4EFF908();
  (*(v66 + 104))(v71, *MEMORY[0x1E69A9A20], v63);
  (*(v48 + 104))(v53, *MEMORY[0x1E69A9888], v182);
  sub_1C4EFDEC8();
  (*(v57 + 104))(v62, *MEMORY[0x1E69A95D8], v54);
  v72 = v183;
  v73 = sub_1C4EFDEE8();
  if (v72)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v74 = v73;
  v75 = v179;
  v76 = v180;
  sub_1C4EFDEB8();
  v77 = sub_1C4EFCD98();
  if (sub_1C44157D4(v181, 1, v77) == 1)
  {
    sub_1C4420C3C(v181, &qword_1EC0BBC78, &unk_1C4F228F0);
LABEL_8:
    v188 = 0;
    v189 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000064, 0x80000001C4F9C490);
    MEMORY[0x1C6940010](0x74736566696E616DLL, 0xE800000000000000);
    MEMORY[0x1C6940010](0x203A6E69202CLL, 0xE600000000000000);
    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4F8F660);
    MEMORY[0x1C6940010](41, 0xE100000000000000);
    v81 = v188;
    v82 = v189;
    sub_1C4826750();
    sub_1C43FFB2C();
    *v83 = v81;
    *(v83 + 8) = v82;
    *(v83 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_9;
  }

  v78 = *(v77 - 8);
  if ((*(v78 + 88))(v181, v77) != *MEMORY[0x1E69A9198])
  {
    (*(v78 + 8))(v181, v77);
    goto LABEL_8;
  }

  v182 = v74;
  v79 = v181;
  (*(v78 + 96))(v181, v77);
  (*(v176 + 32))(v175, v79, v174);
  sub_1C4EFCD38();
  v80 = objc_autoreleasePoolPush();
  sub_1C4EF9938();
  v183 = v80;
  v84 = sub_1C4EF96B8();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  sub_1C4EF96A8();
  sub_1C48267A4();
  sub_1C4EF9698();
  v160 = 0;
  v89 = sub_1C4402E08();
  sub_1C4434000(v89, v90);

  v91 = v188;
  objc_autoreleasePoolPop(v183);
  v93 = *(v91 + 16);
  if (!v93)
  {
    v136 = v175;
    v135 = v176;
LABEL_35:
    swift_unknownObjectRelease();

    sub_1C43FFB20(&v190);
    v155(v167, v169);
    (*(v135 + 8))(v136, v174);
    goto LABEL_9;
  }

  v94 = 0;
  v95 = v171;
  v162 = *(v171 + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  v159 = *(v75 + 80);
  v156 = v91;
  v161 = (v76 + 8);
  v158 = (v159 + 32) & ~v159;
  v180 = v75[9];
  v157 = (v164 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
  *&v92 = 136315394;
  v164 = v92;
  v96 = v172;
  v97 = v177;
  v98 = v170;
  v99 = v160;
  do
  {
    sub_1C44131E4();
    v183 = v100;
    v101 = sub_1C4826A58();
    v188 = 0;
    v189 = 0;
    MEMORY[0x1EEE9AC00](v101);
    *(&v156 - 6) = v182;
    *(&v156 - 5) = v98;
    *(&v156 - 4) = &v188;
    *(&v156 - 3) = v95;
    *(&v156 - 2) = v97;
    v102 = v99;
    sub_1C445C448();
    if (v99)
    {
      v181 = v93;

      sub_1C4F00148();
      sub_1C44131E4();
      v104 = v173;
      sub_1C4826A58();
      v105 = v102;
      v106 = sub_1C4F00968();
      v107 = sub_1C4F01CD8();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = sub_1C440F274();
        swift_slowAlloc();
        sub_1C440D148();
        v179 = swift_slowAlloc();
        v188 = v179;
        *v108 = v164;
        v109 = *v104;
        v110 = v104[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C442CAD8();
        sub_1C4826CC8(v104, v111);
        v112 = sub_1C441D828(v109, v110, &v188);
        v98 = v170;

        *(v108 + 4) = v112;
        v95 = v171;
        *(v108 + 12) = 2112;
        v113 = v102;
        v114 = _swift_stdlib_bridgeErrorToNSError();
        *(v108 + 14) = v114;
        *v96 = v114;
        _os_log_impl(&dword_1C43F8000, v106, v107, "GlobalKnowledgeDatabase: checkAndLoadAssets: %s failed to load: %@", v108, 0x16u);
        sub_1C4420C3C(v96, &qword_1EC0BDA00, &qword_1C4F10D30);
        v96 = v172;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C440962C(v179);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        sub_1C442CAD8();
        sub_1C4826CC8(v104, v124);
      }

      (*v161)(v178, v96);
      v94 = v102;
      v99 = 0;
      v97 = v177;
      v93 = v181;
    }

    else
    {
      v115 = v189;
      if ((v103 & 1) != 0 && v189)
      {
        v181 = v93;
        v160 = 0;
        v116 = v188;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v117 = v166;
        sub_1C4F01898();
        v118 = sub_1C4F018C8();
        sub_1C440BAA8(v117, 0, 1, v118);
        sub_1C4826A58();
        v119 = v157;
        v120 = swift_allocObject();
        *(v120 + 16) = 0;
        *(v120 + 24) = 0;
        sub_1C4826B04();
        v121 = (v120 + v119);
        *v121 = v116;
        v121[1] = v115;
        v122 = v165;
        sub_1C44DDE2C();
        v123 = sub_1C44157D4(v122, 1, v118);

        if (v123 == 1)
        {
          sub_1C4420C3C(v122, &qword_1EC0BC660, &qword_1C4F29150);
        }

        else
        {
          sub_1C4F018B8();
          v125 = *(*(v118 - 8) + 8);
          v126 = sub_1C43FE99C();
          v127(v126);
        }

        v129 = *(v120 + 16);
        v128 = *(v120 + 24);
        swift_unknownObjectRetain();

        v98 = v170;
        v99 = v160;
        v96 = v172;
        if (v129)
        {
          swift_getObjectType();
          v130 = sub_1C4F017F8();
          v132 = v131;
          swift_unknownObjectRelease();
        }

        else
        {
          v130 = 0;
          v132 = 0;
        }

        v95 = v171;
        sub_1C4420C3C(v166, &qword_1EC0BC660, &qword_1C4F29150);
        v133 = swift_allocObject();
        *(v133 + 16) = &unk_1C4F317C0;
        *(v133 + 24) = v120;
        if (v132 | v130)
        {
          v184 = 0;
          v185 = 0;
          v186 = v130;
          v187 = v132;
        }

        v93 = v181;
        swift_task_create();

        v97 = v177;
      }
    }

    sub_1C442CAD8();
    sub_1C4826CC8(v98, v134);
    --v93;
  }

  while (v93);
  v136 = v175;
  v135 = v176;
  if (!v94)
  {
    goto LABEL_35;
  }

  v137 = v163;
  sub_1C4F00148();
  v138 = v94;
  v139 = sub_1C4F00968();
  v140 = sub_1C4F01CD8();

  v141 = os_log_type_enabled(v139, v140);
  v142 = v167;
  if (v141)
  {
    sub_1C43FECF0();
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *v143 = 138412290;
    v145 = v94;
    v146 = _swift_stdlib_bridgeErrorToNSError();
    *(v143 + 4) = v146;
    *v144 = v146;
    sub_1C4414B20();
    _os_log_impl(v147, v148, v149, v150, v151, 0xCu);
    sub_1C4420C3C(v144, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*v161)(v137, v96);
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1C43FFB20(&v190);
  v152(v142, v169);
  v153 = *(v176 + 8);
  v154 = sub_1C43FE99C();
  v88(v154, v87);
LABEL_9:
  sub_1C43FBC80();
}

uint64_t sub_1C481F660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v62 = a4;
  v63 = a5;
  v60 = a3;
  v61 = a1;
  v56 = a6;
  v58 = type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  v7 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v66 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v9 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v59 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C4EF98F8();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&qword_1EC0BBC78, &unk_1C4F228F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v51 - v17;
  v19 = sub_1C4EFCD88();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v24 = a2[1];
  v26 = v69;
  result = sub_1C4EFDEB8();
  if (!v26)
  {
    v69 = v24;
    v52 = 0;
    v53 = v23;
    v28 = v66;
    v54 = v20;
    v55 = v19;
    v29 = sub_1C4EFCD98();
    if (sub_1C44157D4(v18, 1, v29) == 1)
    {
      sub_1C4420C3C(v18, &qword_1EC0BBC78, &unk_1C4F228F0);
LABEL_8:
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000004DLL, 0x80000001C4F9C500);
      MEMORY[0x1C6940010](v25, v69);
      v37 = v67;
      v38 = v68;
      sub_1C4826750();
      swift_allocError();
      *v39 = v37;
      *(v39 + 8) = v38;
      *(v39 + 16) = 0;
      return swift_willThrow();
    }

    v30 = *(v29 - 8);
    if ((*(v30 + 88))(v18, v29) != *MEMORY[0x1E69A9198])
    {
      (*(v30 + 8))(v18, v29);
      goto LABEL_8;
    }

    (*(v30 + 96))(v18, v29);
    v32 = v53;
    v31 = v54;
    v33 = v55;
    (*(v54 + 32))(v53, v18, v55);
    v34 = v14;
    sub_1C4EFCD38();
    v35 = v52;
    v36 = sub_1C481FC48();
    if (v35)
    {
      (*(v64 + 8))(v14, v65);
      return (*(v31 + 8))(v32, v33);
    }

    else
    {
      v40 = v36;
      sub_1C4826A58();
      v41 = v59;
      *v59 = 0;
      *(v41 + 8) = 1;
      v42 = *v28;
      v43 = *(v28 + 8);
      *(v41 + 16) = *v28;
      *(v41 + 24) = v43;
      *(v41 + 40) = *(v28 + 16);
      v44 = *(v58 + 24);
      v45 = *(v57 + 32);
      sub_1C44DDE2C();
      swift_bridgeObjectRetain_n();
      sub_1C4826CC8(v28, type metadata accessor for StaticKnowledgeAssetMetadataInManifest);
      *(v41 + 32) = v40;
      v46 = v60;
      v47 = v60[1];
      *v60 = v42;
      v46[1] = v43;

      sub_1C48202DC();
      v49 = v64;
      v48 = v65;
      LOBYTE(v42) = v50;
      sub_1C4826CC8(v41, type metadata accessor for StaticKnowledgeAssetMetadata);
      (*(v49 + 8))(v34, v48);
      result = (*(v54 + 8))(v53, v55);
      *v56 = v42 & 1;
    }
  }

  return result;
}

uint64_t sub_1C481FC48()
{
  v0 = sub_1C4EFCD58();
  v54 = *(v0 - 8);
  v55 = v0;
  v1 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v53 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4EFCD68();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFCDD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFCD28();
  v12 = sub_1C4EFCDC8();
  (*(v8 + 8))(v11, v7);
  if (!v12)
  {
    goto LABEL_66;
  }

  v13 = sub_1C44735D4(0x6E6F6973726576, 0xE700000000000000, v12);
  v15 = v14;

  if (!v15)
  {
    goto LABEL_66;
  }

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_65:

LABEL_66:
    sub_1C4826D68();
    swift_allocError();
    swift_willThrow();
    return v12;
  }

  if ((v15 & 0x1000000000000000) == 0)
  {
    if ((v15 & 0x2000000000000000) != 0)
    {
      v57[0] = v13;
      v57[1] = v15 & 0xFFFFFFFFFFFFFFLL;
      if (v13 == 43)
      {
        if (v16)
        {
          if (--v16)
          {
            v12 = 0;
            v30 = v57 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v30;
              if (!--v16)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v13 != 45)
      {
        if (v16)
        {
          v12 = 0;
          v35 = v57;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v16)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v16)
      {
        if (--v16)
        {
          v12 = 0;
          v24 = v57 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v16)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v19 = sub_1C4F022F8();
      }

      v20 = *v19;
      if (v20 == 43)
      {
        if (v17 >= 1)
        {
          v16 = v17 - 1;
          if (v17 != 1)
          {
            v12 = 0;
            if (v19)
            {
              v27 = v19 + 1;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  goto LABEL_63;
                }

                v29 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_63;
                }

                v12 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_63;
                }

                ++v27;
                if (!--v16)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_80;
      }

      if (v20 != 45)
      {
        if (v17)
        {
          v12 = 0;
          if (v19)
          {
            while (1)
            {
              v33 = *v19 - 48;
              if (v33 > 9)
              {
                goto LABEL_63;
              }

              v34 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_63;
              }

              v12 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                goto LABEL_63;
              }

              ++v19;
              if (!--v17)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v12 = 0;
        LOBYTE(v16) = 1;
LABEL_64:
        v58 = v16;
        if (v16)
        {
          goto LABEL_65;
        }

        goto LABEL_69;
      }

      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v12 = 0;
          if (v19)
          {
            v21 = v19 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_63;
              }

              v23 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_63;
              }

              v12 = v23 - v22;
              if (__OFSUB__(v23, v22))
              {
                goto LABEL_63;
              }

              ++v21;
              if (!--v16)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v16) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4AA1330(v13, v15, 10);
  v40 = v39;

  if (v40)
  {
    goto LABEL_65;
  }

LABEL_69:
  sub_1C4EFCD78();
  v41 = v56;
  v42 = (*(v56 + 88))(v6, v3);
  if (v42 == *MEMORY[0x1E69A9190])
  {

    (*(v41 + 96))(v6, v3);
    v44 = v53;
    v43 = v54;
    v45 = v55;
    (*(v54 + 32))(v53, v6, v55);
    v46 = sub_1C4EFCD48();
    v47 = sub_1C44735D4(0x6E6F6973726576, 0xE700000000000000, v46);
    v49 = v48;

    if (v49)
    {
      v50 = sub_1C4AA1304(v47, v49);
      v52 = v51;
      (*(v43 + 8))(v44, v45);
      if ((v52 & 1) == 0)
      {
        return v50;
      }
    }

    else
    {
      (*(v43 + 8))(v44, v45);
    }

    return v12;
  }

  if (v42 == *MEMORY[0x1E69A9188])
  {

    return v12;
  }

LABEL_82:
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

void sub_1C48202DC()
{
  sub_1C43FE96C();
  v2 = v1;
  v196 = v0;
  v4 = v3;
  v182 = v5;
  v202 = v6;
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v179 - v11;
  v188 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  sub_1C43FCDF8(v188);
  v187 = v13;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  sub_1C43FCE30(v17);
  v18 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  sub_1C43FCE30(v22);
  v206 = sub_1C456902C(&qword_1EC0BDCC0, &unk_1C4F32020);
  sub_1C43FCDF8(v206);
  v198 = v23;
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v203 = v27;
  v28 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  sub_1C43FBD18(v28);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  sub_1C43FCE30(v32);
  v33 = sub_1C4F001E8();
  v34 = sub_1C43FCDF8(v33);
  v204 = v35;
  v205 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  sub_1C43FCE30(v39);
  v221 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v40 = sub_1C43FBCE0(v221);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v179 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v179 - v52;
  v54 = sub_1C4F00978();
  v55 = sub_1C43FCDF8(v54);
  v207 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v179 - v63;
  sub_1C4F00148();
  sub_1C4826A58();
  v208 = v4;
  sub_1C4826A58();
  v65 = sub_1C4F00968();
  v66 = sub_1C4F01CF8();
  v67 = os_log_type_enabled(v65, v66);
  v201 = v54;
  v181 = v12;
  if (v67)
  {
    sub_1C440F274();
    v193 = v1;
    sub_1C440D148();
    v180 = swift_slowAlloc();
    v217 = v180;
    *v1 = 136315394;
    v69 = *(v53 + 2);
    v68 = *(v53 + 3);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440F70C();
    sub_1C4826CC8(v53, v70);
    v71 = sub_1C441D828(v69, v68, &v217);

    *(v1 + 4) = v71;
    *(v1 + 12) = 2048;
    v72 = *(v51 + 4);
    v73 = sub_1C4402E08();
    sub_1C4826CC8(v73, v74);
    *(v1 + 14) = v72;
    _os_log_impl(&dword_1C43F8000, v65, v66, "GlobalKnowledgeDatabase: checkAndLoadAssets: checking %s (manifestAsset.version %ld)", v1, 0x16u);
    sub_1C440962C(v180);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v2 = v193;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v75 = *(v207 + 8);
    sub_1C443F1F0();
  }

  else
  {
    sub_1C440F70C();
    sub_1C4826CC8(v51, v78);

    v79 = sub_1C442BB94();
    sub_1C4826CC8(v79, v80);
    v75 = *(v207 + 8);
    v76 = v64;
    v77 = v54;
  }

  (v75)(v76, v77);
  v81 = v208;
  v82 = v208 + *(v221 + 32);
  v83 = v199;
  sub_1C44DDE2C();
  v84 = v205;
  v85 = sub_1C44157D4(v83, 1, v205);
  v86 = v202;
  if (v85 == 1)
  {
    sub_1C4420C3C(v83, &qword_1EC0BDCB0, &unk_1C4F54830);
    goto LABEL_9;
  }

  v87 = v2;
  v193 = v75;
  v88 = v202;
  v89 = v204;
  v90 = v83;
  v91 = v200;
  (*(v204 + 32))(v200, v90, v84);
  v92 = OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_config;
  v93 = v195;
  (*(v89 + 16))(v195, v91, v84);
  v94 = (v196 + *(type metadata accessor for Configuration() + 20) + v92);
  v95 = v84;
  v97 = *v94;
  v96 = v94[1];
  Features.FeatureFlag.asOption()();
  v98 = *(v89 + 8);
  v204 = v89 + 8;
  v98(v93, v95);
  if ((v217 & ~v97) == 0 && (v218 & v96) == v218)
  {
    v98(v200, v205);
    v81 = v208;
    v86 = v88;
    v75 = v193;
    v2 = v87;
LABEL_9:
    v215 = &type metadata for StaticKnowledgeAssetMetadataColumn;
    v216 = sub_1C4826AB0();
    LOBYTE(v214[0]) = 1;
    v99 = *(v81 + 16);
    v100 = *(v81 + 24);
    v212 = MEMORY[0x1E69E6158];
    v213 = MEMORY[0x1E69A0130];
    v209 = v99;
    v210 = v100;
    v101 = sub_1C4EFB298();
    v219 = v101;
    v220 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v217);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4420C3C(&v209, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v214);
    sub_1C4826D20(&qword_1EDDFAA88, type metadata accessor for StaticKnowledgeAssetMetadata);
    sub_1C4EFAE28();
    sub_1C440962C(&v217);
    sub_1C4401CBC(&qword_1EDDFCCF8, &qword_1EC0BDCC0, &unk_1C4F32020);
    sub_1C4826D20(&qword_1EDDFAA80, type metadata accessor for StaticKnowledgeAssetMetadata);
    v102 = v197;
    sub_1C4EFAFF8();
    if (!v2)
    {
      if (sub_1C44157D4(v102, 1, v221) == 1)
      {
        sub_1C4420C3C(v102, &qword_1EC0BD2F8, &qword_1C4F31970);
        sub_1C4F00148();
        v103 = sub_1C4F00968();
        v104 = sub_1C4F01CF8();
        if (os_log_type_enabled(v103, v104))
        {
          *swift_slowAlloc() = 0;
          sub_1C4414B20();
          _os_log_impl(v105, v106, v107, v108, v109, 2u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C441B974();
        sub_1C443F1F0();
        v75();
        sub_1C4406F48();
        v110 = v191;
        sub_1C4826A58();
        sub_1C4826D20(&qword_1EDDDFB18, type metadata accessor for StaticKnowledgeAssetMetadata);
        sub_1C43FE99C();
        sub_1C4EFBAB8();
        v149 = v86;
        v150 = v182;
        goto LABEL_23;
      }

      v193 = 0;
      sub_1C4406F48();
      v125 = v194;
      sub_1C4826B04();
      if (*(v125 + 32) == *(v208 + 32))
      {
        sub_1C4F00148();
        sub_1C4406F48();
        v126 = v184;
        sub_1C4826A58();
        v127 = sub_1C4F00968();
        v128 = sub_1C4F01CF8();
        v129 = os_log_type_enabled(v127, v128);
        v130 = v201;
        if (v129)
        {
          sub_1C43FECF0();
          v131 = swift_slowAlloc();
          *v131 = 134217984;
          v132 = *(v126 + 32);
          sub_1C44197C8();
          sub_1C4826CC8(v126, v133);
          *(v131 + 4) = v132;
          sub_1C4414B20();
          _os_log_impl(v134, v135, v136, v137, v138, 0xCu);
          v125 = v194;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44197C8();
          sub_1C4826CC8(v126, v154);
        }

        sub_1C441B974();
        (v75)(v190, v130);
        sub_1C44197C8();
        sub_1C4826CC8(v125, v155);
        v156 = sub_1C4403238();
        v157(v156);
        goto LABEL_34;
      }

      v223 = *(v208 + 32);
      sub_1C4F00148();
      v140 = v183;
      sub_1C4826A58();
      v141 = v185;
      sub_1C4826A58();
      v142 = sub_1C4F00968();
      v143 = sub_1C4F01CF8();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = sub_1C440F274();
        *v144 = 134218240;
        v145 = *(v140 + 32);
        sub_1C4826CC8(v140, type metadata accessor for StaticKnowledgeAssetMetadata);
        *(v144 + 4) = v145;
        *(v144 + 12) = 2048;
        v146 = *(v141 + 32);
        v147 = sub_1C43FE990();
        sub_1C4826CC8(v147, v148);
        *(v144 + 14) = v146;
        _os_log_impl(&dword_1C43F8000, v142, v143, "GlobalKnowledgeDatabase: checkAndLoadAssets: replacing version %ld with %ld", v144, 0x16u);
        v86 = v202;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
        sub_1C4826CC8(v141, type metadata accessor for StaticKnowledgeAssetMetadata);
        sub_1C4826CC8(v140, type metadata accessor for StaticKnowledgeAssetMetadata);
      }

      v158 = MEMORY[0x1E699FE60];

      sub_1C441B974();
      sub_1C443F1F0();
      v75();
      v215 = &type metadata for StaticGlobalKnowledgeTripleColumn;
      v216 = sub_1C4826B5C();
      LOBYTE(v214[0]) = 0;
      if (v194[1])
      {
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v210 = 0;
        v211 = 0;
      }

      else
      {
        v159 = *v194;
        v161 = MEMORY[0x1E69A01C8];
        v160 = MEMORY[0x1E69E7360];
      }

      v209 = v159;
      v212 = v160;
      v213 = v161;
      type metadata accessor for StaticKnowledgeTriple();
      v219 = v101;
      v220 = v158;
      sub_1C4422F90(&v217);
      sub_1C4EFBB28();
      sub_1C4420C3C(&v209, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v214);
      sub_1C440E2E8();
      sub_1C4826D20(v162, v163);
      sub_1C4EFAE28();
      sub_1C440962C(&v217);
      v164 = v193;
      sub_1C4EFB898();
      if (!v164)
      {
        sub_1C43FFB20(&v215);
        v167 = sub_1C442BB94();
        v168(v167);
        v169 = sub_1C4EFBF38();
        v170 = v181;
        sub_1C440BAA8(v181, 1, 1, v169);
        sub_1C456902C(&qword_1EC0BDCC8, &qword_1C4F31978);
        v171 = sub_1C4EFB4E8();
        sub_1C43FCF7C(v171);
        v173 = *(v172 + 72);
        v175 = (*(v174 + 80) + 32) & ~*(v174 + 80);
        *(swift_allocObject() + 16) = xmmword_1C4F0D130;
        LOBYTE(v214[0]) = 2;
        v219 = MEMORY[0x1E69E6530];
        v220 = MEMORY[0x1E69A0178];
        v217 = v223;
        sub_1C4826BB0();
        sub_1C4EFB568();
        sub_1C4420C3C(&v217, &qword_1EC0C5040, &qword_1C4F0F950);
        sub_1C4EFB8A8();
        sub_1C4420C3C(v170, &unk_1EC0BCAB0, &unk_1C4F111A0);

        v149 = v86;
        v150 = v182;
        v110 = v194;
LABEL_23:
        sub_1C48218E4(v149, v150, v110, v111, v112, v113, v114, v115, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190);
        sub_1C44197C8();
        sub_1C4826CC8(v110, v151);
        v152 = sub_1C4403238();
        v153(v152);
        goto LABEL_34;
      }

      sub_1C43FFB20(&v215);
      v165 = sub_1C442BB94();
      v166(v165);
      sub_1C44197C8();
      sub_1C4826CC8(v194, v176);
    }

    v177 = sub_1C4403238();
    v178(v177);
    goto LABEL_34;
  }

  v222 = v98;
  sub_1C4F00148();
  sub_1C4406F48();
  v116 = v192;
  sub_1C4826A58();
  v117 = sub_1C4F00968();
  v118 = sub_1C4F01CB8();
  if (os_log_type_enabled(v117, v118))
  {
    sub_1C43FECF0();
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v217 = v120;
    *v119 = 136315138;
    v121 = *(v116 + 16);
    v122 = *(v116 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44197C8();
    sub_1C4826CC8(v116, v123);
    v124 = sub_1C441D828(v121, v122, &v217);

    *(v119 + 4) = v124;
    _os_log_impl(&dword_1C43F8000, v117, v118, "GlobalKnowledgeDatabase: checkAndLoadAssets: skipping %s due to feature flag being disabled.", v119, 0xCu);
    sub_1C440962C(v120);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    sub_1C44197C8();
    sub_1C4826CC8(v116, v139);
  }

  sub_1C441B974();
  sub_1C443F1F0();
  v193();
  v222(v200, v205);
LABEL_34:
  sub_1C43FBC80();
}

uint64_t sub_1C4821434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = *(*(type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = sub_1C4F00978();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C4821550, 0, 0);
}

uint64_t sub_1C4821550()
{
  v41 = v0;
  v40[1] = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  sub_1C4F00148();
  sub_1C44131E4();
  sub_1C4826A58();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CC8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v8 = v0[9];
  v9 = &unk_1C4F0C000;
  v11 = v0[6];
  v10 = v0[7];
  if (v6)
  {
    sub_1C43FECF0();
    v39 = v8;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v12 = 136315138;
    v14 = *v11;
    v15 = *(v11 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C442CAD8();
    sub_1C4826CC8(v11, v16);
    v17 = v14;
    v9 = &unk_1C4F0C000;
    v11 = sub_1C441D828(v17, v15, v40);

    *(v12 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v4, v5, "GlobalKnowledgeDatabase: checkAndLoadAssets: Calling sourceUpdated for %s", v12, 0xCu);
    sub_1C440962C(v13);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    (*(v7 + 8))(v39, v10);
  }

  else
  {

    sub_1C442CAD8();
    sub_1C4826CC8(v11, v18);
    (*(v7 + 8))(v8, v10);
  }

  v19 = v0[4];
  v20 = v0[5];
  v21 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  v22 = sub_1C4F01108();
  sub_1C43FBC98();
  v23 = sub_1C4F01108();
  v0[2] = 0;
  LODWORD(v19) = [v21 sourceUpdatedWithSourceType:v22 sourceIdentifier:v23 error:v0 + 2];

  v24 = v0[2];
  if (v19)
  {
    v25 = v24;
  }

  else
  {
    v26 = v24;
    v27 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v28 = v0[5];
    sub_1C442B738(v0[7], qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CE8();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = v0[4];
      v31 = v0[5];
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440D148();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v11 = v9[458];
      *(v11 + 4) = sub_1C441D828(v32, v31, v40);
      _os_log_impl(&dword_1C43F8000, v29, v30, "GlobalKnowledgeDatabase: checkAndLoadAssets: Could not update state in view database for global Knowledge graph: %s", v11, 0xCu);
      sub_1C440962C(v33);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  v34 = v0[9];
  v35 = v0[6];

  sub_1C43FBDA0();
  v37 = *MEMORY[0x1E69E9840];

  return v36();
}

void sub_1C48218E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v104 = v20;
  v25 = v24;
  v101 = v26;
  v27 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v28 = sub_1C43FBCE0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v97 = sub_1C4EFFC28();
  v31 = sub_1C43FCDF8(v97);
  v102 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v37 = v36 - v35;
  v38 = sub_1C4EFF548();
  v39 = sub_1C43FCDF8(v38);
  v99 = v40;
  v100 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  v103 = (v44 - v43);
  v45 = sub_1C456902C(&qword_1EC0BDCD0, &qword_1C4F31980);
  v46 = sub_1C43FBD18(v45);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v94 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v94 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v94 - v56;
  MEMORY[0x1EEE9AC00](v55);
  if ((*(v25 + 8) & 1) != 0 || *v25 < 1)
  {
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4F9C550);
    sub_1C4406F48();
    sub_1C4826A58();
    v66 = sub_1C4F01198();
    MEMORY[0x1C6940010](v66);

    v67 = v106;
    v68 = v107;
    sub_1C4826750();
    sub_1C43FFB2C();
    *v69 = v67;
    *(v69 + 8) = v68;
    *(v69 + 16) = 0;
    swift_willThrow();
LABEL_11:
    sub_1C43FBC80();
    return;
  }

  v98 = *v25;
  v96 = &v94 - v58;
  v59 = v100;
  sub_1C440BAA8(&v94 - v58, 1, 1, v100);
  v95 = objc_autoreleasePoolPush();
  sub_1C4EF9938();
  if (v21)
  {
    objc_autoreleasePoolPop(v95);
LABEL_9:
    v75 = &qword_1EC0BDCD0;
    v76 = v96;
    goto LABEL_10;
  }

  v94 = v60;
  if (*(v25 + 40))
  {
    v61 = sub_1C4EF96B8();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    sub_1C4EF96A8();
    sub_1C4408AA8();
    sub_1C4826D20(v64, v65);
    sub_1C4405C4C();
    sub_1C4EF9698();
    v57 = v54;
  }

  else
  {
    v70 = sub_1C4EF9348();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    sub_1C4EF9338();
    sub_1C4408AA8();
    sub_1C4826D20(v73, v74);
    sub_1C4405C4C();
    sub_1C4EF9328();
  }

  v77 = sub_1C442BB94();
  sub_1C4434000(v77, v78);

  sub_1C440BAA8(v57, 0, 1, v59);
  sub_1C4826C04(v57, v96);
  objc_autoreleasePoolPop(v95);
  sub_1C44DDE2C();
  if (sub_1C44157D4(v51, 1, v59) == 1)
  {
    sub_1C4420C3C(v51, &qword_1EC0BDCD0, &qword_1C4F31980);
    sub_1C4826750();
    sub_1C43FFB2C();
    *v79 = 0xD000000000000043;
    *(v79 + 8) = 0x80000001C4F9C5B0;
    *(v79 + 16) = 0;
    swift_willThrow();
    v76 = sub_1C4402E08();
LABEL_10:
    sub_1C4420C3C(v76, v75, &qword_1C4F31980);
    goto LABEL_11;
  }

  (*(v99 + 32))(v103, v51, v59);
  v105 = MEMORY[0x1E69E7CC8];
  v106 = MEMORY[0x1E69E7CC8];
  a10 = MEMORY[0x1E69E7CC8];
  v80 = sub_1C4EFF538();
  v81 = sub_1C4EFF4F8();
  v82 = sub_1C4821FAC(v80, v81);

  v83 = 0;
  v84 = *(v82 + 16);
  v85 = (v102 + 8);
  for (i = v97; ; (*v85)(v37, i))
  {
    if (v84 == v83)
    {

      v89 = v106;
      v90 = v101;
      v91 = v98;
      sub_1C4822EC4(v105, v101, v98, v106, a10);

      sub_1C482377C(v90, v89, v91);
      v92 = sub_1C4404388();
      v93(v92);

      goto LABEL_9;
    }

    if (v83 >= *(v82 + 16))
    {
      break;
    }

    sub_1C441C290();
    (*(v88 + 16))(v37, v82 + v87 + *(v88 + 72) * v83, i);
    sub_1C48220F8(v101, v103, v98, v37, &v106, &a10, &v105);
    ++v83;
  }

  __break(1u);
}

uint64_t sub_1C4821FAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v18 = v2;
  if (a2)
  {
    v4 = a2 + 64;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; v7; result = )
    {
      v11 = i;
LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(a2 + 56) + 8 * v13);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C48242D0(v15, v16, v17, &v18);
    }

    while (1)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return v18;
      }

      v7 = *(v4 + 8 * v11);
      ++i;
      if (v7)
      {
        i = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return v2;
  }

  return result;
}

uint64_t sub_1C48220F8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v160 = a5;
  v153 = a7;
  v158 = a6;
  v144 = a1;
  v145 = a3;
  v157 = sub_1C4EFFC28();
  v154 = *(v157 - 8);
  v9 = *(v154 + 64);
  v10 = MEMORY[0x1EEE9AC00](v157);
  v156 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v150 = &v129 - v12;
  v147 = sub_1C4EFF548();
  v140 = *(v147 - 8);
  v13 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v139 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4F00978();
  v142 = *(v15 - 8);
  v143 = v15;
  v16 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1C4EFF8A8();
  v149 = *(v151 - 1);
  v18 = *(v149 + 64);
  v19 = MEMORY[0x1EEE9AC00](v151);
  v141 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v148 = &v129 - v21;
  v155 = sub_1C4EFF0C8();
  v152 = *(v155 - 8);
  v22 = *(v152 + 64);
  v23 = MEMORY[0x1EEE9AC00](v155);
  v25 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v129 - v26;
  v28 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = (&v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v129 - v33;
  v35 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v39 = (&v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v129 - v40;
  v159 = a2;
  v42 = v161;
  result = sub_1C4824A20(a2, a4, v160, &v129 - v40);
  if (v42)
  {
    return result;
  }

  v160 = v39;
  v136 = v32;
  v137 = v25;
  v138 = v27;
  v161 = v41;
  v44 = sub_1C4EFFC08();
  v46 = v45;
  v47 = sub_1C4EFFBD8();
  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  sub_1C4825258(v159, a4, v44, v46, v49, v50, v158, v34);
  v135 = v49;
  v158 = v44;
  v51 = v160;
  sub_1C44DDE2C();
  v52 = v155;
  v53 = sub_1C44157D4(v51, 1, v155);
  v134 = v34;
  v133 = 0;
  if (v53 == 1)
  {
    v54 = v50;
    v55 = v46;
    sub_1C4420C3C(v51, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v131 = a4;
    v132 = v50;
    v56 = v152;
    v57 = v138;
    (*(v152 + 32))(v138, v51, v52);
    v58 = v136;
    sub_1C44DDE2C();
    v34 = v151;
    v59 = sub_1C44157D4(v58, 1, v151);
    v60 = v52;
    if (v59 != 1)
    {
      v160 = v46;
      v82 = v148;
      v83 = v149;
      v84 = v60;
      (*(v149 + 32))(v148, v58, v34);
      v85 = v146;
      sub_1C4F00148();
      v86 = v140;
      v87 = v139;
      (*(v140 + 16))(v139, v159, v147);
      (*(v56 + 16))(v137, v57, v84);
      v88 = v141;
      (*(v83 + 16))(v141, v82, v34);
      v89 = sub_1C4F00968();
      v90 = sub_1C4F01CC8();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v162 = v156;
        *v91 = 136315650;
        v136 = v89;
        HIDWORD(v130) = v90;
        v92 = sub_1C4EFF528();
        v93 = v87;
        v95 = v94;
        (*(v86 + 8))(v93, v147);
        v96 = v34;
        v97 = sub_1C441D828(v92, v95, &v162);

        *(v91 + 4) = v97;
        *(v91 + 12) = 2080;
        sub_1C4826D20(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
        v98 = v137;
        v99 = v155;
        v100 = sub_1C4F02858();
        v102 = v101;
        v159 = *(v152 + 8);
        v159(v98, v99);
        v103 = sub_1C441D828(v100, v102, &v162);

        *(v91 + 14) = v103;
        *(v91 + 22) = 2080;
        sub_1C4826D20(&qword_1EC0BDAB8, MEMORY[0x1E69A99E8]);
        v104 = sub_1C4F02858();
        v106 = v105;
        v51 = *(v83 + 8);
        (v51)(v88, v96);
        v107 = sub_1C441D828(v104, v106, &v162);

        *(v91 + 24) = v107;
        v108 = v136;
        _os_log_impl(&dword_1C43F8000, v136, BYTE4(v130), "GlobalKnowledgeDatabase %s: flushing triples for %s : %s to database", v91, 0x20u);
        v109 = v156;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v109, -1, -1);
        MEMORY[0x1C6942830](v91, -1, -1);

        (*(v142 + 8))(v146, v143);
        v69 = v157;
        v55 = v99;
      }

      else
      {

        v110 = v87;
        v51 = *(v83 + 8);
        (v51)(v88, v34);
        v55 = v155;
        v159 = *(v152 + 8);
        v159(v137, v155);
        (*(v86 + 8))(v110, v147);
        (*(v142 + 8))(v85, v143);
        v69 = v157;
      }

      v61 = v158;
      v54 = v154;
      v111 = *v153;
      v112 = v131;
      if (*(*v153 + 16) && (v113 = sub_1C457EB3C(v158), (v114 & 1) != 0))
      {
        v34 = *(*(v111 + 56) + 8 * v113);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      (*(v54 + 16))(v150, v112, v69);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    v54 = v132;
    v55 = v46;
    (*(v56 + 8))(v57, v60);
    sub_1C4420C3C(v58, &qword_1EC0B9A10, &qword_1C4F107C0);
    a4 = v131;
  }

  v61 = v154;
  (*(v154 + 16))(v156, a4, v157);
  v62 = v153;
  v63 = *v153;
  swift_isUniquelyReferenced_nonNull_native();
  v162 = *v62;
  v64 = v162;
  v65 = sub_1C457EB3C(v158);
  v67 = *(v64 + 16);
  v68 = (v66 & 1) == 0;
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
    __break(1u);
LABEL_36:
    sub_1C458DA58(0, *(v34 + 2) + 1, 1, v34);
    v34 = v127;
LABEL_29:
    v116 = *(v34 + 2);
    v115 = *(v34 + 3);
    if (v116 >= v115 >> 1)
    {
      sub_1C458DA58(v115 > 1, v116 + 1, 1, v34);
      v34 = v128;
    }

    *(v34 + 2) = v116 + 1;
    (*(v54 + 32))(&v34[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v116], v150, v69);
    v117 = v138;
    v118 = v148;
    v119 = v133;
    sub_1C4825E78(v144, v145, v138, v148, v34, v120, v121, v122, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    if (!v119)
    {

      sub_1C45926FC(v61, v160, v135, v132, v123, v124, v125, v126, v129, v130);
    }

    (v51)(v118, v151);
    v159(v117, v55);
    sub_1C4420C3C(v134, &qword_1EC0B9A10, &qword_1C4F107C0);
    return sub_1C4420C3C(v161, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v70 = v65;
  v71 = v66;
  sub_1C456902C(&qword_1EC0B8DC0, &qword_1C4F0E358);
  if (sub_1C4F02458())
  {
    v72 = v135;
    v73 = sub_1C457EB3C(v158);
    if ((v71 & 1) != (v74 & 1))
    {
      result = sub_1C4F029F8();
      __break(1u);
      return result;
    }

    v70 = v73;
  }

  else
  {
    v72 = v135;
  }

  v75 = v162;
  *v62 = v162;
  if (v71)
  {
  }

  else
  {
    sub_1C457E444(v70, v158, v55, v72, v54, MEMORY[0x1E69E7CC0], v75);
  }

  v76 = v161;
  v77 = v156;
  v78 = v157;
  v79 = *(v75 + 56) + 8 * v70;
  sub_1C4589324();
  v80 = *(*v79 + 16);
  sub_1C4589EBC();
  sub_1C4420C3C(v134, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v76, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v81 = *v79;
  *(v81 + 16) = v80 + 1;
  return (v61[4])(v81 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + v61[9] * v80, v77, v78);
}

uint64_t sub_1C4822EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v86 = a4;
  v78 = a3;
  v77 = a2;
  v6 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v72 - v8;
  v79 = sub_1C4EFF8A8();
  v9 = *(v79 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v85 = &v72 - v15;
  v16 = sub_1C4EFF0C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C456902C(&qword_1EC0BDCF8, &qword_1C4F319A8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v83 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v72 - v25;
  v26 = (a1 + 64);
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 64);
  v87 = (v27 + 63) >> 6;
  v82 = (v17 + 32);
  v74 = (v9 + 32);
  v75 = (v9 + 8);
  v84 = (v17 + 8);
  v89 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = 0;
  v73 = (a1 + 64);
  v94 = v20;
  v95 = v16;
  v76 = v12;
  while (v29)
  {
    v32 = v31;
    v33 = v88;
LABEL_10:
    v34 = __clz(__rbit64(v29)) | (v32 << 6);
    v35 = *(v89 + 48) + 32 * v34;
    v36 = *(v35 + 8);
    v37 = *(v35 + 24);
    v38 = *(*(v89 + 56) + 8 * v34);
    sub_1C48685BC(v38, v33);
    v39 = sub_1C4EFFC28();
    v40 = sub_1C44157D4(v33, 1, v39);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v40 == 1)
    {
      sub_1C4420C3C(v33, &qword_1EC0BDCF8, &qword_1C4F319A8);
      sub_1C4826750();
      swift_allocError();
      *v63 = 0xD000000000000040;
      *(v63 + 8) = 0x80000001C4F9C600;
      *(v63 + 16) = 0;
      swift_willThrow();

      goto LABEL_23;
    }

    v91 = v36;
    v41 = v33;
    v99 = v38;
    v93 = v37;
    v42 = sub_1C4EFFC08();
    v44 = v43;
    v45 = *(*(v39 - 8) + 8);
    v45(v41, v39);
    v46 = v85;
    v90 = v42;
    v92 = v44;
    v47 = v44;
    v48 = v95;
    sub_1C465C294(v42, v47, v86);
    if (sub_1C44157D4(v46, 1, v48) == 1)
    {
      sub_1C4420C3C(v46, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v97 = 0;
      v98 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000040, 0x80000001C4F9C650);
      MEMORY[0x1C6940010](v90, v92);

      v64 = v97;
      v65 = v98;
      sub_1C4826750();
      swift_allocError();
      *v66 = v64;
      *(v66 + 8) = v65;
      *(v66 + 16) = 0;
      swift_willThrow();
      goto LABEL_27;
    }

    (*v82)(v94, v46, v48);
    v49 = v83;
    sub_1C48685BC(v99, v83);
    if (sub_1C44157D4(v49, 1, v39) == 1)
    {

      sub_1C4420C3C(v49, &qword_1EC0BDCF8, &qword_1C4F319A8);
      v67 = v94;
LABEL_22:
      sub_1C4826750();
      swift_allocError();
      *v68 = 0xD000000000000048;
      *(v68 + 8) = 0x80000001C4F9C6A0;
      *(v68 + 16) = 0;
      swift_willThrow();
      (*v84)(v67, v48);

LABEL_23:

      goto LABEL_28;
    }

    v50 = v96;
    sub_1C4EFFBD8();
    v52 = v51;
    v45(v49, v39);
    if (!v52)
    {

      v67 = v94;
      v48 = v95;
      goto LABEL_22;
    }

    v53 = v92;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v54 = v80;
    v55 = v90;
    sub_1C465C8A8(v81, v80);

    v56 = v79;
    v57 = sub_1C44157D4(v54, 1, v79);
    v58 = v94;
    if (v57 == 1)
    {
      sub_1C4420C3C(v54, &qword_1EC0B9A10, &qword_1C4F107C0);
      v97 = 0;
      v98 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000045, 0x80000001C4F9C6F0);
      MEMORY[0x1C6940010](v55, v53);

      v69 = v97;
      v70 = v98;
      sub_1C4826750();
      swift_allocError();
      *v71 = v69;
      *(v71 + 8) = v70;
      *(v71 + 16) = 0;
      swift_willThrow();
      (*v84)(v58, v95);
LABEL_27:

LABEL_28:
    }

    v59 = v76;
    (*v74)(v76, v54, v56);
    sub_1C4825E78(v77, v78, v58, v59, v99, v60, v61, v62, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    if (v50)
    {
      (*v75)(v59, v56);
      (*v84)(v58, v95);
      goto LABEL_27;
    }

    v96 = 0;
    v29 &= v29 - 1;
    (*v75)(v59, v56);
    (*v84)(v58, v95);

    v31 = v32;
    v26 = v73;
  }

  v33 = v88;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v87)
    {
    }

    v29 = v26[v32];
    ++v31;
    if (v29)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C482377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v80 = a1;
  v4 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v90 = v71 - v6;
  v104 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v7 = *(v104 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v104);
  v79 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v92 = v71 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v88 = v71 - v13;
  v14 = sub_1C4EFF0C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v91 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = v71 - v19;
  v20 = sub_1C456902C(&qword_1EC0BDCD8, &qword_1C4F31988);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v83 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = v71 - v24;
  v25 = a2 + 64;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a2 + 64);
  v71[0] = (v26 + 63) >> 6;
  v71[1] = v15 + 16;
  v84 = (v15 + 32);
  v87 = (v7 + 8);
  v73 = v15;
  v78 = (v15 + 8);
  v74 = a2;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = 0;
  v77 = xmmword_1C4F0CE60;
  v76 = xmmword_1C4F0D130;
  v89 = v14;
  v75 = a2 + 64;
  if (v28)
  {
    while (1)
    {
      v31 = v30;
LABEL_10:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = v33 | (v31 << 6);
      v35 = (*(v74 + 48) + 16 * v34);
      v36 = *v35;
      v37 = v35[1];
      v38 = v73;
      v39 = v72;
      (*(v73 + 16))(v72, *(v74 + 56) + *(v73 + 72) * v34, v14);
      v40 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
      v41 = v14;
      v42 = v40;
      v43 = *(v40 + 48);
      v44 = v83;
      *v83 = v36;
      *(v44 + 1) = v37;
      v45 = v44;
      (*(v38 + 32))(&v44[v43], v39, v41);
      sub_1C440BAA8(v45, 0, 1, v42);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_11:
      v46 = v82;
      sub_1C44CDA7C();
      v47 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
      if (sub_1C44157D4(v46, 1, v47) == 1)
      {
      }

      v48 = *(v46 + 1);
      v94 = *v46;
      v86 = v48;
      (*v84)(v91, &v46[*(v47 + 48)], v89);
      type metadata accessor for StaticKnowledgeTriple();
      v99 = &type metadata for StaticGlobalKnowledgeTripleColumn;
      v49 = sub_1C4826B5C();
      v100 = v49;
      LOBYTE(v98) = 0;
      v97 = MEMORY[0x1E69A01C8];
      v96 = MEMORY[0x1E69E7360];
      v95[0] = v81;
      v50 = sub_1C4EFB298();
      v102 = v50;
      v85 = v50;
      v51 = MEMORY[0x1E699FE60];
      v103 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v101);
      sub_1C4EFBB28();
      sub_1C4420C3C(v95, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(&v98);
      sub_1C4826D20(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple);
      v52 = v79;
      sub_1C4EFAE28();
      sub_1C440962C(v101);
      v99 = &type metadata for StaticGlobalKnowledgeTripleColumn;
      v100 = v49;
      LOBYTE(v98) = 5;
      v96 = MEMORY[0x1E69E6158];
      v97 = MEMORY[0x1E69A0130];
      v95[0] = v94;
      v95[1] = v86;
      v102 = v50;
      v103 = v51;
      sub_1C4422F90(v101);
      sub_1C4EFBB28();
      sub_1C4420C3C(v95, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(&v98);
      v86 = sub_1C4401CBC(&qword_1EC0BDCE8, &qword_1EC0BDCB8, &qword_1C4F3F1C0);
      v53 = v104;
      sub_1C4EFB438();
      v94 = *v87;
      v94(v52, v53);
      sub_1C440962C(v101);
      sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v54 = *(sub_1C4EFEEF8() - 8);
      v55 = *(v54 + 72);
      v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v77;
      sub_1C4EFEBF8();
      sub_1C4EFECB8();
      v95[0] = v57;
      v102 = &type metadata for StaticGlobalKnowledgeTripleColumn;
      v103 = v49;
      LOBYTE(v101[0]) = 2;
      v58 = v85;
      v99 = v85;
      v100 = MEMORY[0x1E699FE60];
      sub_1C4422F90(&v98);
      sub_1C456902C(&qword_1EC0BDCF0, &qword_1C4F319A0);
      sub_1C4401CBC(&qword_1EDDDBD48, &qword_1EC0BDCF0, &qword_1C4F319A0);
      sub_1C4826D20(&unk_1EDDFA1D8, MEMORY[0x1E69A9748]);
      v59 = v90;
      sub_1C4F01458();
      v60 = v104;

      sub_1C440962C(v101);
      v102 = v58;
      v103 = MEMORY[0x1E699FE60];
      sub_1C4422F90(v101);
      sub_1C4EFB828();
      sub_1C440962C(&v98);
      v61 = v92;
      sub_1C4EFB438();
      v94(v61, v60);
      sub_1C440962C(v101);
      v62 = sub_1C4EFBF38();
      sub_1C440BAA8(v59, 1, 1, v62);
      sub_1C456902C(&qword_1EC0BDCC8, &qword_1C4F31978);
      v63 = *(sub_1C4EFB4E8() - 8);
      v64 = *(v63 + 72);
      v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v66 = v91;
      *(swift_allocObject() + 16) = v76;
      LOBYTE(v98) = 5;
      v67 = sub_1C4EFF048();
      v102 = MEMORY[0x1E69E6158];
      v103 = MEMORY[0x1E69A0130];
      v101[0] = v67;
      v101[1] = v68;
      sub_1C4826C74();
      sub_1C4EFB568();
      sub_1C4420C3C(v101, &qword_1EC0C5040, &qword_1C4F0F950);
      v69 = v93;
      sub_1C4EFB8A8();
      v93 = v69;
      if (v69)
      {
        break;
      }

      sub_1C4420C3C(v90, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v94(v88, v104);
      v14 = v89;
      result = (*v78)(v66, v89);
      v25 = v75;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    sub_1C4420C3C(v90, &unk_1EC0BCAB0, &unk_1C4F111A0);
    v94(v88, v104);
    return (*v78)(v66, v89);
  }

  else
  {
LABEL_5:
    v32 = v83;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v71[0])
      {
        v70 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
        sub_1C440BAA8(v32, 1, 1, v70);
        v28 = 0;
        goto LABEL_11;
      }

      v28 = *(v25 + 8 * v31);
      ++v30;
      if (v28)
      {
        v30 = v31;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C48242D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(a3 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(a3 + 56) + 8 * v14);
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C481DD60(v19, a4, v16, v17, a1, a2);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C48244D0();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    sub_1C443D664();
    inited = v25;
    v25[2] = 2;
    v25[6] = v23;
    v25[7] = v24;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C481DF78(inited, a4, a1, a2);

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C48244D0()
{
  v0 = sub_1C4F00DD8();
  v45 = *(v0 - 8);
  v1 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4F00DC8();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = sub_1C4F01188();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F01178();
  v15 = sub_1C4F01148();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  if (v17 >> 60 != 15)
  {
    sub_1C4826D20(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    sub_1C4F00DB8();
    sub_1C44344B8(v15, v17);
    sub_1C4498FD8(v15, v17);
    v39 = v17;
    v40 = v15;
    sub_1C441DFEC(v15, v17);
    sub_1C4F00DA8();
    (*(v45 + 8))(v3, v0);
    v18 = v41;
    (*(v41 + 16))(v44, v9, v4);
    sub_1C4826D20(&qword_1EC0BDD00, MEMORY[0x1E69663E0]);
    sub_1C4F01478();
    v19 = v47;
    v45 = v46;
    v44 = *(v46 + 16);
    v20 = v4;
    v21 = v18;
    v22 = v9;
    v23 = MEMORY[0x1E69E7CC0];
    if (v47 == v44)
    {
LABEL_3:
      (*(v21 + 8))(v22, v20);

      v46 = v23;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
      v24 = sub_1C4F01048();
      v26 = v25;

      v46 = 3826291;
      v47 = 0xE300000000000000;
      MEMORY[0x1C6940010](v24, v26);

      sub_1C441DFEC(v40, v39);
    }

    else
    {
      v43 = v45 + 32;
      v42 = xmmword_1C4F0D130;
      v27 = v47;
      while ((v19 & 0x8000000000000000) == 0)
      {
        if (v27 >= *(v45 + 16))
        {
          goto LABEL_15;
        }

        v28 = v27[v43];
        sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
        v29 = swift_allocObject();
        *(v29 + 16) = v42;
        *(v29 + 56) = MEMORY[0x1E69E7508];
        *(v29 + 64) = MEMORY[0x1E69E7558];
        *(v29 + 32) = v28;
        v30 = sub_1C4F01168();
        v32 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = *(v23 + 16);
          sub_1C443D664();
          v23 = v36;
        }

        v33 = *(v23 + 16);
        if (v33 >= *(v23 + 24) >> 1)
        {
          sub_1C443D664();
          v23 = v37;
        }

        ++v27;
        *(v23 + 16) = v33 + 1;
        v34 = v23 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v32;
        if (v44 == v27)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }
}

uint64_t sub_1C4824A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v80 = a1;
  v6 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v75 - v8;
  v88 = sub_1C4EFD548();
  v81 = *(v88 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v79 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFFC28();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4F00978();
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v75 - v19;
  v21 = sub_1C4EFEEF8();
  v92 = *(v21 - 8);
  v22 = *(v92 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v90 = (&v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v75 - v25;
  v26 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v75 - v31;
  v33 = sub_1C4EFF0C8();
  v34 = a4;
  sub_1C440BAA8(a4, 1, 1, v33);
  v35 = a2;
  v36 = sub_1C4EFFC08();
  v37 = *v93;
  sub_1C465C294(v36, v38, *v93);

  LODWORD(a4) = sub_1C44157D4(v32, 1, v33);
  sub_1C4420C3C(v32, &unk_1EC0BA0E0, &qword_1C4F105A0);
  if (a4 == 1)
  {
    v77 = v34;
    v78 = v30;
    v39 = sub_1C4EFFC18();
    MEMORY[0x1C693D840](v39);
    if (sub_1C44157D4(v20, 1, v21) == 1)
    {
      return sub_1C4420C3C(v20, &qword_1EC0B9A08, &unk_1C4F107B0);
    }

    else
    {
      v43 = v35;
      v45 = v91;
      v44 = v92;
      (*(v92 + 32))(v91, v20, v21);
      v46 = v90;
      sub_1C4EFEBB8();
      v47 = sub_1C44DBB50(v45, v46);
      v50 = *(v44 + 8);
      v48 = v44 + 8;
      v49 = v50;
      (v50)(v46, v21);
      if (v47)
      {
        v90 = v49;
        v51 = v89;
        sub_1C4F00148();
        v53 = v82;
        v52 = v83;
        v54 = v84;
        (*(v83 + 16))(v82, v43, v84);
        v55 = sub_1C4F00968();
        v56 = sub_1C4F01CC8();
        v57 = os_log_type_enabled(v55, v56);
        v76 = v21;
        v92 = v48;
        if (v57)
        {
          v58 = v54;
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v94 = v60;
          *v59 = 136315138;
          v61 = sub_1C4EFFC08();
          v62 = v52;
          v64 = v63;
          (*(v62 + 8))(v53, v58);
          v65 = sub_1C441D828(v61, v64, &v94);

          *(v59 + 4) = v65;
          _os_log_impl(&dword_1C43F8000, v55, v56, "GlobalKnowledgeDatabase: found isA triple for %s", v59, 0xCu);
          sub_1C440962C(v60);
          MEMORY[0x1C6942830](v60, -1, -1);
          MEMORY[0x1C6942830](v59, -1, -1);

          (*(v85 + 8))(v89, v86);
        }

        else
        {

          (*(v52 + 8))(v53, v54);
          (*(v85 + 8))(v51, v86);
        }

        v66 = v77;
        sub_1C4EFFBF8();
        v67 = v87;
        sub_1C4EFD2E8();
        v68 = v88;
        if (sub_1C44157D4(v67, 1, v88) == 1)
        {
          sub_1C4420C3C(v67, &qword_1EC0B8568, &unk_1C4F319B0);
          v69 = sub_1C4EFFBF8();
          v71 = v70;
          sub_1C4826750();
          swift_allocError();
          *v72 = v69;
          *(v72 + 8) = v71;
          *(v72 + 16) = 2;
          swift_willThrow();
          v90(v91, v76);
          return sub_1C4420C3C(v66, &unk_1EC0BA0E0, &qword_1C4F105A0);
        }

        else
        {
          v73 = v81;
          v74 = v79;
          (*(v81 + 32))(v79, v67, v68);
          sub_1C4EFFC08();
          sub_1C4EFF508();

          sub_1C4420C3C(v66, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C44CDA7C();
          sub_1C4EFFC08();
          sub_1C44DDE2C();
          sub_1C4C80730();
          (*(v73 + 8))(v74, v68);
          return (v90)(v91, v76);
        }
      }

      else
      {
        return (v49)(v45, v21);
      }
    }
  }

  else
  {
    v41 = sub_1C4EFFC08();
    sub_1C465C294(v41, v42, v37);

    sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return sub_1C44CDA7C();
  }
}

uint64_t sub_1C4825258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v135 = a5;
  v136 = a6;
  v133 = a2;
  v113 = a1;
  v12 = sub_1C4EFF8A8();
  v130 = *(v12 - 8);
  v13 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v118 = &v107 - v17;
  v119 = sub_1C4EFD548();
  v112 = *(v119 - 8);
  v18 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v111 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1C4EFFC28();
  v116 = *(v117 - 8);
  v20 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v123 = (&v107 - v24);
  v25 = sub_1C4EFEEF8();
  v124 = *(v25 - 8);
  v125 = v25;
  v26 = *(v124 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v122 = &v107 - v29;
  v30 = sub_1C4F00978();
  v127 = *(v30 - 8);
  v128 = v30;
  v31 = *(v127 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v121 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v126 = &v107 - v34;
  v35 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v132 = &v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v107 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v107 - v42;
  v44 = a8;
  sub_1C440BAA8(a8, 1, 1, v12);
  v131 = a7;
  v45 = *a7;
  v46 = a3;
  v47 = a4;
  v48 = v135;
  v49 = v136;
  sub_1C465C8A8(v45, v43);
  v134 = v12;
  LODWORD(v12) = sub_1C44157D4(v43, 1, v12);
  sub_1C4420C3C(v43, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (v12 != 1)
  {
    sub_1C465C8A8(v45, v41);
    sub_1C4420C3C(v44, &qword_1EC0B9A10, &qword_1C4F107C0);
    return sub_1C44CDA7C();
  }

  v109 = v41;
  v114 = v46;
  v110 = v47;
  v50 = v49;
  v51 = v44;
  sub_1C4EFFBD8();
  if (v52)
  {

    v53 = sub_1C4EFFBD8();
    v55 = v48;
    v56 = v110;
    v57 = v114;
    if (v54)
    {
      v58 = v53;
      v59 = v54;
      v60 = sub_1C4EFFBE8();
      if (v61)
      {
        v126 = v59;
        v62 = v123;
        MEMORY[0x1C693D840](v60);
        v63 = v125;
        if (sub_1C44157D4(v62, 1, v125) == 1)
        {

          sub_1C4420C3C(v62, &qword_1EC0B9A08, &unk_1C4F107B0);
        }

        else
        {
          v108 = v58;
          v70 = v124;
          v71 = v122;
          (*(v124 + 32))(v122, v62, v63);
          v72 = v120;
          sub_1C4EFEBB8();
          v73 = v63;
          v74 = sub_1C44DBB50(v71, v72);
          v77 = *(v70 + 8);
          v76 = v70 + 8;
          v75 = v77;
          (v77)(v72, v73);
          if (v74)
          {
            v123 = v75;
            v124 = v76;
            sub_1C4F00148();
            v78 = v116;
            v79 = v115;
            v80 = v117;
            (*(v116 + 16))(v115, v133, v117);
            v81 = v126;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v82 = sub_1C4F00968();
            v83 = sub_1C4F01CC8();

            LODWORD(v120) = v83;
            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v137 = v85;
              *v84 = 136315394;
              v107 = v82;
              v86 = sub_1C4EFFC08();
              v88 = v87;
              (*(v78 + 8))(v79, v80);
              v89 = sub_1C441D828(v86, v88, &v137);

              *(v84 + 4) = v89;
              *(v84 + 12) = 2080;
              *(v84 + 14) = sub_1C441D828(v108, v81, &v137);
              v90 = v107;
              _os_log_impl(&dword_1C43F8000, v107, v120, "GlobalKnowledgeDatabase: found relationship isA triple for %s : %s", v84, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1C6942830](v85, -1, -1);
              v91 = v84;
              v56 = v110;
              MEMORY[0x1C6942830](v91, -1, -1);
            }

            else
            {

              (*(v78 + 8))(v79, v80);
            }

            (*(v127 + 8))(v121, v128);
            v50 = v136;
            sub_1C4EFFBF8();
            v92 = v118;
            sub_1C4EFD2E8();
            v93 = v119;
            v94 = sub_1C44157D4(v92, 1, v119);
            v57 = v114;
            if (v94 == 1)
            {

              sub_1C4420C3C(v92, &qword_1EC0B8568, &unk_1C4F319B0);
              v95 = sub_1C4EFFBF8();
              v97 = v96;
              sub_1C4826750();
              swift_allocError();
              *v98 = v95;
              *(v98 + 8) = v97;
              *(v98 + 16) = 2;
              swift_willThrow();
              v123(v122, v125);
              return sub_1C4420C3C(v51, &qword_1EC0B9A10, &qword_1C4F107C0);
            }

            v99 = v92;
            v100 = v112;
            v101 = v111;
            (*(v112 + 32))(v111, v99, v93);
            sub_1C4EFFC08();
            sub_1C4EFF518();

            (*(v100 + 8))(v101, v119);
            v123(v122, v125);
            sub_1C4420C3C(v51, &qword_1EC0B9A10, &qword_1C4F107C0);
            sub_1C44CDA7C();
            v55 = v135;
          }

          else
          {
            (v75)(v71, v73);

            v55 = v135;
            v50 = v136;
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v65 = v126;
    sub_1C4F00148();
    v66 = sub_1C4F00968();
    v67 = sub_1C4F01CC8();
    v55 = v48;
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1C43F8000, v66, v67, "GlobalKnowledgeDatabase: relationship identifier is null", v68, 2u);
      MEMORY[0x1C6942830](v68, -1, -1);
    }

    (*(v127 + 8))(v65, v128);
    v69 = v109;
    sub_1C4EFF888();
    sub_1C4420C3C(v51, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C440BAA8(v69, 0, 1, v134);
    sub_1C44CDA7C();
    v56 = v110;
    v57 = v114;
  }

  v102 = v132;
  sub_1C44DDE2C();
  v103 = v134;
  if (sub_1C44157D4(v102, 1, v134) == 1)
  {
    return sub_1C4420C3C(v102, &qword_1EC0B9A10, &qword_1C4F107C0);
  }

  v105 = v129;
  v104 = v130;
  (*(v130 + 32))(v129, v102, v103);
  v106 = v109;
  (*(v104 + 16))(v109, v105, v103);
  sub_1C440BAA8(v106, 0, 1, v103);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C80EAC(v106, v57, v56, v55, v50);
  return (*(v104 + 8))(v105, v103);
}

void sub_1C4825E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v138 = v23;
  v130 = v24;
  v26 = v25;
  v128 = v27;
  v127 = type metadata accessor for StaticKnowledgeTriple();
  v28 = sub_1C43FBCE0(v127);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v142 = (v32 - v31);
  v33 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v34 = sub_1C43FBD18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v133 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  v135 = v39;
  sub_1C43FBE44();
  v40 = sub_1C4EFEEF8();
  v41 = sub_1C43FCDF8(v40);
  v139 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  v126 = v45;
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD230();
  sub_1C43FCE30(v47);
  v141 = sub_1C4EFFC28();
  v48 = sub_1C43FCDF8(v141);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBCC4();
  v53 = v52 - v51;
  v54 = sub_1C4EFF0C8();
  v55 = sub_1C43FCDF8(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBCC4();
  v62 = v61 - v60;
  v136 = sub_1C4F00978();
  v63 = sub_1C43FCDF8(v136);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBCC4();
  v70 = v69 - v68;
  sub_1C4F00148();
  v71 = v62;
  v129 = v26;
  v125 = *(v57 + 16);
  v125(v62, v26, v54);
  v72 = v138;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v134 = v70;
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CC8();
  if (os_log_type_enabled(v73, v74))
  {
    sub_1C440F274();
    sub_1C440D148();
    v131 = swift_slowAlloc();
    a10 = v131;
    *v74 = 134218243;
    *(v74 + 4) = *(v138 + 16);

    *(v74 + 12) = 2081;
    sub_1C4826D20(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
    v123 = v73;
    v121 = sub_1C4F02858();
    v76 = v75;
    (*(v57 + 8))(v71, v54);
    v77 = sub_1C441D828(v121, v76, &a10);

    *(v74 + 14) = v77;
    _os_log_impl(&dword_1C43F8000, v123, v74, "GlobalKnowledgeDatabase: insertTriples: %ld triples for %{private}s", v74, 0x16u);
    sub_1C440962C(v131);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    (*(v57 + 8))(v71, v54);
  }

  (*(v65 + 8))(v134, v136);
  v78 = 0;
  v137 = *(v138 + 16);
  v79 = (v139 + 32);
  v124 = (v139 + 16);
  v132 = (v139 + 8);
  v122 = (v139 + 32);
  while (v137 != v78)
  {
    sub_1C441C290();
    (*(v81 + 16))(v53, v72 + v80 + *(v81 + 72) * v78, v141);
    v82 = sub_1C4EFFC18();
    MEMORY[0x1C693D840](v82);
    if (sub_1C44157D4(v135, 1, v40) == 1)
    {
      sub_1C4420C3C(v135, &qword_1EC0B9A08, &unk_1C4F107B0);
      v102 = sub_1C4EFFC18();
      v104 = v103;
      sub_1C4826750();
      v105 = sub_1C43FFB2C();
      *v106 = v102;
      v106[1] = v104;
      sub_1C447F0D0(v105, v106);
LABEL_21:
      v118 = sub_1C4426B60();
      v119(v118);
      break;
    }

    v140 = v78;
    v83 = *v79;
    v84 = sub_1C442BB94();
    v83(v84);
    v85 = sub_1C4EFFBE8();
    if (!v86)
    {
      v85 = 0;
      v86 = 0xE000000000000000;
    }

    MEMORY[0x1C693D840](v85, v86);
    if (sub_1C44157D4(v133, 1, v40) == 1)
    {
      sub_1C4420C3C(v133, &qword_1EC0B9A08, &unk_1C4F107B0);
      v107 = sub_1C4EFFBE8();
      if (v108)
      {
        v109 = v107;
      }

      else
      {
        v109 = 0;
      }

      if (v108)
      {
        v110 = v108;
      }

      else
      {
        v110 = 0xE000000000000000;
      }

      sub_1C4826750();
      v111 = sub_1C43FFB2C();
      *v112 = v109;
      v112[1] = v110;
      sub_1C447F0D0(v111, v112);
      v113 = *v132;
      v114 = sub_1C43FE990();
      v115(v114);
      goto LABEL_21;
    }

    v87 = sub_1C442BB94();
    v83(v87);
    v125(&v142[v127[5]], v129, v54);
    v88 = *v124;
    (*v124)(&v142[v127[6]], v120, v40);
    v89 = v127[7];
    v90 = sub_1C4EFF8A8();
    sub_1C43FBCE0(v90);
    (*(v91 + 16))(&v142[v89], v130);
    v88(&v142[v127[8]], v126, v40);
    v92 = sub_1C4EFFBF8();
    v94 = v93;
    sub_1C4EFFBC8();
    *v142 = v128;
    v95 = &v142[v127[9]];
    *v95 = v92;
    v95[1] = v94;
    *&v142[v127[10]] = v96;
    sub_1C440E2E8();
    sub_1C4826D20(&qword_1EDDE3258, v97);
    sub_1C4EFB6C8();
    if (v20)
    {
      sub_1C43FF03C();
      v116 = *v132;
      (*v132)(v126, v40);
      v117 = sub_1C43FE990();
      v116(v117);
      goto LABEL_21;
    }

    sub_1C43FF03C();
    v98 = *v132;
    (*v132)(v126, v40);
    v99 = sub_1C43FE990();
    v98(v99);
    v100 = sub_1C4426B60();
    v101(v100);
    v78 = v140 + 1;
    v72 = v138;
    v79 = v122;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4826670(uint64_t a1)
{
  v2 = sub_1C4EFF288();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF2A8();
  (*(v3 + 16))(v6, a1, v2);
  return sub_1C4EFF298();
}

unint64_t sub_1C4826750()
{
  result = qword_1EDDE2028[0];
  if (!qword_1EDDE2028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE2028);
  }

  return result;
}

unint64_t sub_1C48267A4()
{
  result = qword_1EDDE2008;
  if (!qword_1EDDE2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2008);
  }

  return result;
}

uint64_t sub_1C482681C(uint64_t a1)
{
  v3 = type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  sub_1C43FCF7C(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v13 = sub_1C43FCF54(v12);
  *v13 = v14;
  v13[1] = sub_1C46A1150;

  return sub_1C4821434(a1, v7, v8, v1 + v5, v10, v11);
}

unint64_t sub_1C4826968()
{
  result = qword_1EDDE2020;
  if (!qword_1EDDE2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2020);
  }

  return result;
}

uint64_t sub_1C48269BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BDC90, &qword_1C4F31958);
    sub_1C4826D20(a2, type metadata accessor for StaticKnowledgeAssetMetadataInManifest);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4826A58()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

unint64_t sub_1C4826AB0()
{
  result = qword_1EDDFA9A8;
  if (!qword_1EDDFA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9A8);
  }

  return result;
}

uint64_t sub_1C4826B04()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

unint64_t sub_1C4826B5C()
{
  result = qword_1EDDF1430;
  if (!qword_1EDDF1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1430);
  }

  return result;
}

unint64_t sub_1C4826BB0()
{
  result = qword_1EDDFA9C8;
  if (!qword_1EDDFA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9C8);
  }

  return result;
}

uint64_t sub_1C4826C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDCD0, &qword_1C4F31980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4826C74()
{
  result = qword_1EDDF1450;
  if (!qword_1EDDF1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1450);
  }

  return result;
}

uint64_t sub_1C4826CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4826D20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4826D68()
{
  result = qword_1EC0BDD08;
  if (!qword_1EC0BDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD08);
  }

  return result;
}

_BYTE *sub_1C4826DD8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C4826E88()
{
  result = qword_1EC0BDD10;
  if (!qword_1EC0BDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD10);
  }

  return result;
}

unint64_t sub_1C4826EE0()
{
  result = qword_1EC0BDD18;
  if (!qword_1EC0BDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD18);
  }

  return result;
}

unint64_t sub_1C4826F38()
{
  result = qword_1EDDE1FF8;
  if (!qword_1EDDE1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1FF8);
  }

  return result;
}

unint64_t sub_1C4826F90()
{
  result = qword_1EDDE2010;
  if (!qword_1EDDE2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2010);
  }

  return result;
}

unint64_t sub_1C4826FE8()
{
  result = qword_1EDDE2018;
  if (!qword_1EDDE2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2018);
  }

  return result;
}

uint64_t sub_1C482707C(void *a1, uint64_t a2, void *a3)
{
  v17 = 0;
  v7 = *(v3 + *a1);
  v16[2] = &v17;
  v16[3] = &v18;

  sub_1C4418704(a2, v16, v8, v9, v10, v11, v12, v13, v16[0], v16[1]);

  if (!v4 && v17 == 1)
  {
    sub_1C4B6E134((v3 + *a3), 1);
    sub_1C4778114();
    swift_allocError();
    *v15 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C4827160()
{
  sub_1C456902C(&qword_1EC0BDD20, qword_1C4F31D00);
  swift_allocObject();
  result = sub_1C4CE5338();
  qword_1EDE2DFB0 = result;
  return result;
}

unint64_t GlobalKnowledgeDatabase.description.getter()
{
  sub_1C4F02248();

  v0 = sub_1C4EF98E8();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t GlobalKnowledgeDatabase.__allocating_init(config:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  GlobalKnowledgeDatabase.init(config:)();
  return v3;
}

void GlobalKnowledgeDatabase.init(config:)()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v55 = *v2;
  v56 = v1;
  v5 = sub_1C4F00978();
  v6 = sub_1C43FCDF8(v5);
  v50 = v7;
  v51 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v52 = v11 - v10;
  v12 = sub_1C4EF98F8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  sub_1C4EF9888();
  v23 = OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_url;
  (*(v15 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_url, v22, v12);
  v54 = OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_config;
  sub_1C44098F0(v4, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_config);
  v57 = v4;
  v24 = (v4 + *(type metadata accessor for Configuration() + 20));
  v26 = *v24;
  v25 = v24[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C43FF064(&xmmword_1EDDFEC78);
  v28 = 2 * (v27 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C43FF064(&xmmword_1EDDFFAE0);
  v53 = v25;
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 | 4;
  }

  sub_1C44F920C();
  v31 = static NSUserDefaults.globalKnowledgeDatabaseLoggingEnabled.getter() & 1;
  (*(v15 + 16))(v20, v2 + v23, v12);
  v32 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = v56;
  v36 = sub_1C44F999C(v20, v30 | v31);
  if (v35)
  {
    sub_1C4467948(v57);
    (*(v15 + 8))(v2 + v23, v12);
    sub_1C4467948(v2 + v54);
    v37 = *(*v2 + 48);
    v38 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v26;
    v40 = v53;
    *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool) = v36;
    sub_1C482707C(&OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool, sub_1C4829C34, &OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_url);
    if (qword_1EDDFEBB8 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEBC0 & ~v39) == 0 && (*(&xmmword_1EDDFEBC0 + 1) & v40) == *(&xmmword_1EDDFEBC0 + 1) && (GlobalKnowledgeDatabase.checkAndLoadAssets()(), v41))
    {
      sub_1C4F00148();
      v42 = v41;
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CE8();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = sub_1C43FD084();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v41;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_1C43F8000, v43, v44, "GlobalKnowledgeDatabase: one or more assets failed to be processed: %@", v45, 0xCu);
        sub_1C446F170(v46, &qword_1EC0BDA00, &qword_1C4F10D30);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      sub_1C4467948(v57);
      (*(v50 + 8))(v52, v51);
    }

    else
    {
      sub_1C4467948(v57);
    }
  }

  sub_1C43FBC80();
}

uint64_t GlobalKnowledgeDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_url;
  v2 = sub_1C4EF98F8();
  sub_1C43FD3F8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_config);
  return v0;
}

uint64_t GlobalKnowledgeDatabase.__deallocating_deinit()
{
  GlobalKnowledgeDatabase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C48278BC()
{
  if (qword_1EDDFEE20 != -1)
  {
    swift_once();
  }
}

void sub_1C4827954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v51 = *v23;
  v27 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v28 = sub_1C43FBD18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v51 - v31;
  v33 = sub_1C4EFAD98();
  v34 = sub_1C43FBD18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  sub_1C4827CC0();
  if (v20)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128();
    }

    v38 = sub_1C4F00978();
    sub_1C43FCEE8(v38, qword_1EDE2E088);

    v39 = v20;
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CE8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v42 = 136315394;
      v52 = v24;

      v43 = sub_1C4F01198();
      v45 = sub_1C441D828(v43, v44, &a10);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v52 = v20;
      v46 = v20;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v47 = sub_1C4F01198();
      v49 = sub_1C441D828(v47, v48, &a10);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_1C43F8000, v40, v41, "StaticSchemaDatabaseProtocol<%s>: check schema error. Database is considered corrupt. Error: %s", v42, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C4EFA878();
    v50 = sub_1C4EFB768();
    sub_1C440BAA8(v32, 1, 1, v50);
    sub_1C4EFB1E8();
    sub_1C4829B88(&qword_1EC0BC530, MEMORY[0x1E699FE10]);
    swift_allocError();
    sub_1C4EFB158();
    swift_willThrow();
  }

  else
  {
    *v26 = v37 & 1;
  }

  sub_1C43FBC80();
}

void sub_1C4827CC0()
{
  sub_1C43FE96C();
  v83 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v11 = v10;
  v76 = *v9;
  v12 = sub_1C4EFB768();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  sub_1C440ABA0();
  v21 = sub_1C4EFBE58();
  if (v1)
  {
    goto LABEL_2;
  }

  v72 = v12;
  v73 = v15;
  v74 = v4;
  v75 = v11;
  if (v21)
  {
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C4F0D130;
    sub_1C441FB00(v22, MEMORY[0x1E69E6158]);
    sub_1C4EFB728();
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    sub_1C4EFB998();
    sub_1C446F170(&v77, &unk_1EC0BC770, &qword_1C4F10DC0);
    v36 = (*(v15 + 8))(v20, v12);
    if (v82 >> 60 != 15)
    {
      (v8)(v36);
      v38 = v37;
      v39 = sub_1C43FE990();
      sub_1C4431E64(v39, v40);
      if (v38 >> 60 == 15)
      {
        v41 = sub_1C43FE990();
        sub_1C441DFEC(v41, v42);
        v43 = sub_1C44333A0();
        sub_1C441DFEC(v43, v44);
      }

      else
      {
        v45 = sub_1C44333A0();
        sub_1C4431E64(v45, v46);
        v47 = sub_1C43FE990();
        v8 = MEMORY[0x1C6938740](v47);
        v48 = sub_1C44333A0();
        sub_1C441DFEC(v48, v49);
        v50 = sub_1C44333A0();
        sub_1C441DFEC(v50, v51);
        v52 = sub_1C43FE990();
        sub_1C441DFEC(v52, v53);
        if (v8)
        {
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C43FFB88();
          }

          v54 = sub_1C4F00978();
          sub_1C43FCEE8(v54, qword_1EDDFECB8);

          v55 = sub_1C4F00968();
          v56 = sub_1C4F01CF8();

          if (sub_1C442FAFC())
          {
            sub_1C43FD084();
            v57 = sub_1C4432358();
            *&v77 = v57;
            *v8 = 136315138;
            v81 = v9;

            v58 = sub_1C4F01198();
            v60 = sub_1C441D828(v58, v59, &v77);

            *(v8 + 4) = v60;
            sub_1C4417228(&dword_1C43F8000, v61, v56, "StaticSchemaDatabaseProtocol<%s>: checkSchema: schema is okay");
            sub_1C440962C(v57);
            sub_1C43FBE2C();
            sub_1C43FBE2C();
          }

          goto LABEL_26;
        }
      }
    }

    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128();
    }

    v62 = sub_1C4F00978();
    sub_1C43FCEE8(v62, qword_1EDE2E088);

    v55 = sub_1C4F00968();
    v63 = sub_1C4F01CF8();

    if (sub_1C442FAFC())
    {
      sub_1C43FD084();
      v64 = sub_1C4432358();
      *&v77 = v64;
      *v8 = 136315138;
      v81 = v9;

      v65 = sub_1C4F01198();
      v67 = sub_1C441D828(v65, v66, &v77);

      *(v8 + 4) = v67;
      sub_1C4417228(&dword_1C43F8000, v68, v63, "StaticSchemaDatabaseProtocol<%s>: checkSchema: schema mismatch, need to reset");
      sub_1C440962C(v64);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

LABEL_26:
    v69 = sub_1C43FE990();
    sub_1C441DFEC(v69, v70);

    goto LABEL_2;
  }

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v23 = sub_1C4F00978();
  sub_1C43FCEE8(v23, qword_1EDE2E088);

  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v26 = sub_1C43FD084();
    v27 = swift_slowAlloc();
    *&v77 = v27;
    *v26 = 136315138;
    v81 = v9;

    v28 = sub_1C4F01198();
    v30 = sub_1C441D828(v28, v29, &v77);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1C43F8000, v24, v25, "StaticSchemaDatabaseProtocol<%s>: checkSchema: metadata table is missing", v26, 0xCu);
    sub_1C440962C(v27);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (!sub_1C48282A0(v75))
  {
    sub_1C4828758(v75, v6, v74, v83, v32, v33, v34, v35, v71, v72, v73, v74, v75, v76, v77, *(&v77 + 1), v78, *(&v78 + 1), v79, v80);
  }

LABEL_2:
  sub_1C43FBC80();
}

BOOL sub_1C48282A0(_BOOL8 a1)
{
  v6 = *v1;
  v7 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
  if (v2)
  {
    return a1;
  }

  v8 = v7;
  v9 = 0;
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v15 = v9;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v16 = (*(v8 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v13)))));
    v3 = *v16;
    v4 = v16[1];
    v13 &= v13 - 1;
    v46[0] = *v16;
    v46[1] = v4;
    sub_1C4415EA8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (sub_1C4F02048())
    {
    }

    else
    {
      v17 = v44;
      v47 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v44 + 16);
        sub_1C44CD9C0();
        v17 = v47;
      }

      v19 = *(v17 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v17 + 24) >> 1)
      {
        v45 = v19 + 1;
        v43 = *(v17 + 16);
        sub_1C44CD9C0();
        v20 = v45;
        v19 = v43;
        v17 = v47;
      }

      *(v17 + 16) = v20;
      v44 = v17;
      v21 = v17 + 16 * v19;
      *(v21 + 32) = v3;
      *(v21 + 40) = v4;
    }
  }

  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_36:
      v40 = *(v44 + 16);
      sub_1C443D664();
      v44 = v41;
      goto LABEL_20;
    }

    if (v9 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v9);
    ++v15;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  v3 = 0xEF736E6F69746172;
  v4 = 0x67696D5F62647267;

  v22 = sub_1C4EFBE58();
  if ((v22 & 1) == 0)
  {
    a1 = *(v44 + 16) != 0;
    goto LABEL_24;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  v24 = v44;
  v25 = *(v44 + 16);
  if (v25 >= *(v44 + 24) >> 1)
  {
    sub_1C443D664();
    v24 = v42;
  }

  *(v24 + 16) = v25 + 1;
  v26 = v24 + 16 * v25;
  *(v26 + 32) = v4;
  *(v26 + 40) = v3;
  a1 = 1;
LABEL_24:

  if (a1)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128();
    }

    v27 = sub_1C4F00978();
    sub_1C43FCEE8(v27, qword_1EDE2E088);

    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();

    if (os_log_type_enabled(v28, v29))
    {
      sub_1C43FD084();
      v30 = sub_1C4432358();
      v46[0] = v30;
      *v10 = 136315138;

      v31 = sub_1C4F01198();
      v33 = sub_1C441D828(v31, v32, v46);

      *(v10 + 4) = v33;
      v35 = "StaticSchemaDatabaseProtocol<%s>: _performExistingSchemaCheck: need to reset";
      goto LABEL_33;
    }
  }

  else
  {
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C4400128();
    }

    v36 = sub_1C4F00978();
    sub_1C43FCEE8(v36, qword_1EDE2E088);

    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();

    if (os_log_type_enabled(v28, v29))
    {
      sub_1C43FD084();
      v30 = sub_1C4432358();
      v46[0] = v30;
      *v10 = 136315138;

      v37 = sub_1C4F01198();
      v39 = sub_1C441D828(v37, v38, v46);

      *(v10 + 4) = v39;
      v35 = "StaticSchemaDatabaseProtocol<%s>: _performExistingSchemaCheck: no existing schema";
LABEL_33:
      sub_1C4417228(&dword_1C43F8000, v34, v29, v35);
      sub_1C440962C(v30);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  return a1;
}

void sub_1C4828758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v65 = v26;
  v28 = v27;
  v29 = *v20;
  v30 = sub_1C4EFB768();
  v31 = sub_1C43FCDF8(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  v39 = sub_1C4EFB0B8();
  v66 = sub_1C43FCDF8(v39);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBCC4();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v42 = sub_1C4F00978();
  sub_1C43FCEE8(v42, qword_1EDDFECB8);

  v43 = sub_1C4F00968();
  v44 = sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v64 = v30;
    v45 = sub_1C43FD084();
    v63 = swift_slowAlloc();
    a10 = v63;
    *v45 = 136315138;

    v46 = sub_1C4F01198();
    v48 = v25;
    v49 = v38;
    v50 = v28;
    v51 = v33;
    v52 = sub_1C441D828(v46, v47, &a10);

    *(v45 + 4) = v52;
    v33 = v51;
    v28 = v50;
    v38 = v49;
    v25 = v48;
    _os_log_impl(&dword_1C43F8000, v43, v44, "StaticSchemaDatabaseProtocol<%s>: creating schema", v45, 0xCu);
    sub_1C440962C(v63);
    sub_1C43FBE2C();
    v30 = v64;
    sub_1C43FBE2C();
  }

  a10 = MEMORY[0x1E69E7CC0];
  sub_1C4829B88(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4829BD0();
  sub_1C4F020C8();
  sub_1C440ABA0();
  sub_1C4EFBFC8();
  if (v21)
  {
    v53 = sub_1C440D478();
    v54(v53);
  }

  else
  {
    v55 = sub_1C440D478();
    v56(v55);
    v65(v28);
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1C4F0CE60;
    v58 = sub_1C441FB00(v57, MEMORY[0x1E69E6158]);
    v59 = v25(v58);
    if (v60 >> 60 == 15)
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      *(v57 + 88) = 0;
    }

    else
    {
      v62 = MEMORY[0x1E699FD70];
      v61 = MEMORY[0x1E6969080];
    }

    *(v57 + 72) = v59;
    *(v57 + 80) = v60;
    *(v57 + 96) = v61;
    *(v57 + 104) = v62;
    sub_1C4EFB728();
    sub_1C4EFBFF8();
    (*(v33 + 8))(v38, v30);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4828B7C()
{
  v0 = sub_1C4F00DD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C4F00DC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C4F01188();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4F01178();
  v14 = sub_1C4F01148();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 != 15)
  {
    sub_1C4829B88(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    sub_1C4F00DB8();
    sub_1C44344B8(v14, v16);
    sub_1C4498FD8(v14, v16);
    sub_1C441DFEC(v14, v16);
    sub_1C4F00DA8();
    (*(v1 + 8))(v4, v0);
    v17 = sub_1C44D5F88(v8);
    sub_1C441DFEC(v14, v16);
    return v17;
  }

  return v14;
}

uint64_t sub_1C4828E1C()
{
  v0 = sub_1C4F00DD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C4F00DC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C4F01188();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4F01178();
  v14 = sub_1C4F01148();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 != 15)
  {
    sub_1C4829B88(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    sub_1C4F00DB8();
    sub_1C44344B8(v14, v16);
    sub_1C4498FD8(v14, v16);
    sub_1C441DFEC(v14, v16);
    sub_1C4F00DA8();
    (*(v1 + 8))(v4, v0);
    v17 = sub_1C44D5F88(v8);
    sub_1C441DFEC(v14, v16);
    return v17;
  }

  return v14;
}

void sub_1C48290BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v23 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v24 = sub_1C43FBD18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &a9 - v27;
  v29 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v30 = sub_1C43FBD18(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &a9 - v33;
  sub_1C4EFBDD8();
  sub_1C4EFBE38();
  sub_1C4425BA4();
  sub_1C4EFB498();
  sub_1C446F170(v34, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v35 = sub_1C4EFBF38();
  sub_1C43FC3D8(v28, 1);
  sub_1C4EFB538();

  sub_1C4403250();
  (*(*(v35 - 8) + 104))(v28, *MEMORY[0x1E69A00D0], v35);
  sub_1C43FC3D8(v28, 0);
  sub_1C4EFB4F8();

  sub_1C4403250();
  sub_1C4EFBDB8();
  sub_1C4425BA4();
  sub_1C4EFB498();
  sub_1C446F170(v34, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C43FC3D8(v28, 1);
  sub_1C4EFB538();

  sub_1C4403250();
  sub_1C43FBC80();
}

void sub_1C48292D0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v36 = a1;
  v5 = *v1;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  v11 = sub_1C442B738(v10, qword_1EDE2E088);

  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CC8();

  v14 = os_log_type_enabled(v12, v13);
  v34 = v5;
  v35 = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v32[1] = v11;
    v16 = v15;
    v17 = swift_slowAlloc();
    v33 = v2;
    v18 = v17;
    v39 = v17;
    *v16 = 136315138;
    v38 = v4;

    v19 = sub_1C4F01198();
    v21 = sub_1C441D828(v19, v20, &v39);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1C43F8000, v12, v13, "StaticSchemaDatabaseProtocol<%s>: executeSchemaSQL: starting.", v16, 0xCu);
    sub_1C440962C(v18);
    v22 = v18;
    v3 = v33;
    MEMORY[0x1C6942830](v22, -1, -1);
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  v23 = v37;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v3)
  {
    (*(v7 + 8))(v23, v6);
  }

  else
  {
    (*(v7 + 8))(v23, v6);
    v24 = v35;

    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CC8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136315138;
      v38 = v24;

      v29 = sub_1C4F01198();
      v31 = sub_1C441D828(v29, v30, &v39);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1C43F8000, v25, v26, "StaticSchemaDatabaseProtocol<%s>: executeSchemaSQL: completed.", v27, 0xCu);
      sub_1C440962C(v28);
      MEMORY[0x1C6942830](v28, -1, -1);
      MEMORY[0x1C6942830](v27, -1, -1);
    }
  }
}

void sub_1C482967C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v36 = a1;
  v5 = *v1;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  v11 = sub_1C442B738(v10, qword_1EDE2E088);

  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CC8();

  v14 = os_log_type_enabled(v12, v13);
  v34 = v5;
  v35 = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v32[1] = v11;
    v16 = v15;
    v17 = swift_slowAlloc();
    v33 = v2;
    v18 = v17;
    v39 = v17;
    *v16 = 136315138;
    v38 = v4;

    v19 = sub_1C4F01198();
    v21 = sub_1C441D828(v19, v20, &v39);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1C43F8000, v12, v13, "StaticSchemaDatabaseProtocol<%s>: executeSchemaSQL: starting.", v16, 0xCu);
    sub_1C440962C(v18);
    v22 = v18;
    v3 = v33;
    MEMORY[0x1C6942830](v22, -1, -1);
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  v23 = v37;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v3)
  {
    (*(v7 + 8))(v23, v6);
  }

  else
  {
    (*(v7 + 8))(v23, v6);
    v24 = v35;

    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CC8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136315138;
      v38 = v24;

      v29 = sub_1C4F01198();
      v31 = sub_1C441D828(v29, v30, &v39);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1C43F8000, v25, v26, "StaticSchemaDatabaseProtocol<%s>: executeSchemaSQL: completed.", v27, 0xCu);
      sub_1C440962C(v28);
      MEMORY[0x1C6942830](v28, -1, -1);
      MEMORY[0x1C6942830](v27, -1, -1);
    }
  }
}

uint64_t type metadata accessor for GlobalKnowledgeDatabase()
{
  result = qword_1EDDFEE08;
  if (!qword_1EDDFEE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4829B88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4829BD0()
{
  result = qword_1EDDFA5B8;
  if (!qword_1EDDFA5B8)
  {
    sub_1C4572308(&unk_1EC0BCA80, &unk_1C4F111B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5B8);
  }

  return result;
}

uint64_t sub_1C4829C68(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C4829CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C4829D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v198 = a2;
  v181 = sub_1C4EFF3B8();
  v7 = sub_1C43FCDF8(v181);
  v180 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v179 = v11;
  v12 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v191 = &v174 - v14;
  sub_1C43FBE44();
  v15 = sub_1C4EFDE98();
  v16 = sub_1C43FCDF8(v15);
  v193 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v190 = v20;
  sub_1C43FBE44();
  v21 = sub_1C4EFD648();
  v22 = sub_1C43FCDF8(v21);
  v187 = v23;
  v188 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v186 = v26;
  v27 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v189 = &v174 - v29;
  sub_1C43FBE44();
  v30 = sub_1C4EFF8F8();
  v31 = sub_1C43FCDF8(v30);
  v192 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD08();
  v182 = v35 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v183 = &v174 - v38;
  sub_1C43FBE44();
  v39 = sub_1C4EFCE78();
  v40 = sub_1C43FCDF8(v39);
  v196 = v41;
  v197 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBD08();
  v184 = v44 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v195 = &v174 - v47;
  sub_1C43FBE44();
  v200 = sub_1C4EFCE88();
  v48 = sub_1C43FCDF8(v200);
  v203 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBD08();
  v54 = v52 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v174 - v56;
  v58 = sub_1C4EFEFB8();
  v59 = sub_1C43FCDF8(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBD08();
  v65 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v174 - v67;
  if (!a3)
  {
    sub_1C4EFCE58();
    sub_1C44197E0();
    sub_1C482AD80(v88, v89);
    sub_1C43FFC70();
    *v90 = 0xD000000000000025;
    v90[1] = 0x80000001C4FA2AA0;
    v91 = *MEMORY[0x1E69A9238];
    sub_1C4402A78();
    (*(v92 + 104))();
    return swift_willThrow();
  }

  v178 = v15;
  v185 = v66;
  v69 = v65;

  v199 = a3;
  sub_1C4EFDB18();
  LODWORD(v70) = (*(v61 + 88))(v68, v69);
  if (v70 == *MEMORY[0x1E69A97C8] || v70 == *MEMORY[0x1E69A9798] || v70 == *MEMORY[0x1E69A97B0] || v70 == *MEMORY[0x1E69A9788] || v70 == *MEMORY[0x1E69A97C0] || v70 == *MEMORY[0x1E69A97B8] || v70 == *MEMORY[0x1E69A9790])
  {
    sub_1C4EFCE58();
    sub_1C44197E0();
    sub_1C482AD80(v77, v78);
    sub_1C43FFC70();
    v80 = v79;
    sub_1C441FB2C();
    sub_1C440D48C();
    sub_1C4432374();
    sub_1C4417244();
    sub_1C4406F60();
    sub_1C482AD80(v81, v82);
    v83 = sub_1C4F02858();
    MEMORY[0x1C6940010](v83);

    (*(v61 + 8))(v57, v69);
    v84 = v202;
    *v80 = v201;
    v80[1] = v84;
    v85 = *MEMORY[0x1E69A9238];
    sub_1C4402A78();
    (*(v86 + 104))(v80);
    swift_willThrow();
  }

  v175 = v61;
  v176 = v69;
  v177 = a1;
  if (v70 == *MEMORY[0x1E69A97A8])
  {
    sub_1C4EFCE98();
    v93 = v203;
    v94 = v200;
    if ((*(v203 + 88))(v57, v200) != *MEMORY[0x1E69A9258])
    {
LABEL_35:
      v103 = *MEMORY[0x1E69A9250];
      sub_1C4EFCE58();
      sub_1C44197E0();
      sub_1C482AD80(v104, v105);
      sub_1C43FFC70();
      v107 = v106;
      v108 = (v175 + 8);
      sub_1C441FB2C();
      sub_1C440D48C();
      MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4FA2B10);
      v109 = v185;
      sub_1C4EFDB18();
      sub_1C4406F60();
      sub_1C482AD80(v110, v111);
      v112 = v176;
      v113 = sub_1C4F02858();
      MEMORY[0x1C6940010](v113);

      (*v108)(v109, v112);
      v114 = v202;
      *v107 = v201;
      v107[1] = v114;
      v115 = *MEMORY[0x1E69A9238];
      sub_1C4402A78();
      (*(v116 + 104))(v107);
      swift_willThrow();

      return (*(v203 + 8))(v57, v200);
    }

    v174 = a4;
    v95 = *(v93 + 96);
    v54 = v93 + 96;
    v95(v57, v94);
    (*(v196 + 32))(v195, v57, v197);
    v68 = sub_1C4EFDB08();
    if (v68 < 0 || (v70 = sub_1C4EFDB08(), a4 = v194, (v70 & 0x8000000000000000) == 0))
    {
      sub_1C456902C(&qword_1EC0BDD38, qword_1C4F31D80);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_1C4F0CE60;
      *(v132 + 56) = &type metadata for FusedTripleColumn;
      v133 = sub_1C4505DC4();
      *(v132 + 64) = v133;
      *(v132 + 32) = 6;
      *(v132 + 96) = &type metadata for FusedTripleColumn;
      *(v132 + 104) = v133;
      *(v132 + 72) = 0;
      (*(v187 + 104))(v186, *MEMORY[0x1E69A9338], v188);
      sub_1C4EFD668();
      sub_1C4EFD678();
      sub_1C43FBD94();
      sub_1C440BAA8(v134, v135, v136, v137);
      v138 = v183;
      sub_1C4EFF8C8();
      v139 = v190;
      sub_1C4EFCE68();
      v141 = v191;
      v140 = v192;
      (*(v192 + 16))(v191, v138, v30);
      sub_1C43FBD94();
      sub_1C440BAA8(v142, v143, v144, v30);
      sub_1C498DB4C(v139, v141);
      sub_1C482ADC8(v141);
      (*(v193 + 8))(v139, v178);
      sub_1C48124D4();
      v146 = v145;

      sub_1C4B87460(v146);

      sub_1C4EFD5B8();

      (*(v140 + 8))(v138, v30);
      return (*(v196 + 8))(v195, v197);
    }

    __break(1u);
  }

  v96 = v177;
  if (v70 != *MEMORY[0x1E69A97A0])
  {
    v117 = sub_1C4EFCE58();
    sub_1C44197E0();
    sub_1C482AD80(v118, v119);
    swift_allocError();
    v121 = v120;
    sub_1C441FB2C();
    sub_1C440D48C();
    sub_1C4432374();
    sub_1C4417244();
    sub_1C4406F60();
    sub_1C482AD80(v122, v123);
    v124 = sub_1C440326C();
    MEMORY[0x1C6940010](v124);

    v125 = *(v175 + 8);
    v125(v57, v96);
    v126 = v202;
    *v121 = v201;
    v121[1] = v126;
    (*(*(v117 - 8) + 104))(v121, *MEMORY[0x1E69A9238], v117);
    swift_willThrow();

    return (v125)(v68, v96);
  }

  v97 = a4;
  v98 = v30;
  sub_1C4EFCE98();
  v99 = v203;
  v100 = v200;
  v101 = (*(v203 + 88))(v54, v200);
  if (v101 != *MEMORY[0x1E69A9258])
  {
    if (v101 != *MEMORY[0x1E69A9250])
    {
      sub_1C4EFCE58();
      sub_1C44197E0();
      sub_1C482AD80(v147, v148);
      sub_1C43FFC70();
      v150 = v149;
      sub_1C441FB2C();
      sub_1C440D48C();
      sub_1C4432374();
      sub_1C4417244();
      sub_1C4406F60();
      sub_1C482AD80(v151, v152);
      v153 = sub_1C440326C();
      MEMORY[0x1C6940010](v153);

      (*(v175 + 8))(v57, v96);
      v154 = v202;
      *v150 = v201;
      v150[1] = v154;
      v155 = *MEMORY[0x1E69A9238];
      sub_1C4402A78();
      (*(v156 + 104))(v150);
      swift_willThrow();

      return (*(v203 + 8))(v54, v100);
    }

    (*(v203 + 96))(v54, v100);
    v127 = v180;
    v128 = v179;
    v129 = v54;
    v130 = v181;
    (*(v180 + 32))(v179, v129, v181);
    v131 = v194;
    GlobalKnowledgeStore.liveApiIdSearch(request:updateCache:lookupCache:serverTimeoutMs:)(v128, 1, 1, 700);
    if (!v131)
    {
      sub_1C4812624();
      v173 = v172;

      sub_1C4B87460(v173);

      sub_1C4EFD5B8();

      return (*(v127 + 8))(v128, v130);
    }

    (*(v127 + 8))(v128, v130);
  }

  (*(v99 + 96))(v54, v100);
  (*(v196 + 32))(v184, v54, v197);
  v102 = sub_1C4EFDB08();
  v174 = v97;
  if ((v102 & 0x8000000000000000) == 0 && sub_1C4EFDB08() < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_1C456902C(&qword_1EC0BDD38, qword_1C4F31D80);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1C4F0D130;
  *(v157 + 56) = &type metadata for FusedTripleColumn;
  *(v157 + 64) = sub_1C4505DC4();
  *(v157 + 32) = 0;
  (*(v187 + 104))(v186, *MEMORY[0x1E69A9338], v188);
  sub_1C4EFD668();
  sub_1C4EFD678();
  sub_1C43FBD94();
  sub_1C440BAA8(v158, v159, v160, v161);
  v162 = v182;
  sub_1C4EFF8C8();
  v163 = v190;
  v164 = v184;
  sub_1C4EFCE68();
  v166 = v191;
  v165 = v192;
  (*(v192 + 16))(v191, v162, v98);
  sub_1C43FBD94();
  sub_1C440BAA8(v167, v168, v169, v98);
  sub_1C498DBB4(v163, v166);
  sub_1C482ADC8(v166);
  (*(v193 + 8))(v163, v178);
  sub_1C4812624();
  v171 = v170;

  sub_1C4B87460(v171);

  sub_1C4EFD5B8();

  (*(v165 + 8))(v162, v98);
  return (*(v196 + 8))(v164, v197);
}

uint64_t sub_1C482AD80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C482ADC8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C482AE40(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1C4EF98F8();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = type metadata accessor for Configuration();
  v2[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C482AF30, 0, 0);
}

uint64_t sub_1C482AF30()
{
  v35 = v0;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34[0] = v6;
    *v5 = 136315138;
    v7 = sub_1C4852274();
    v9 = sub_1C441D828(v7, v8, v34);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v3, v4, "Pipeline: %s: triggering check and load global asset...", v5, 0xCu);
    sub_1C440962C(v6);
    MEMORY[0x1C6942830](v6, -1, -1);
    MEMORY[0x1C6942830](v5, -1, -1);
  }

  if (qword_1EDDFFA78 != -1)
  {
    swift_once();
  }

  v33[0] = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    swift_once();
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v33[1] = xmmword_1EDDFFA48;
  do
  {
    v14 = v12;
    v15 = &v33[v13];
    v17 = *v15;
    v16 = v15[1];
    if ((v17 & ~v10) != 0 || (v16 & v11) != v16)
    {
      v10 |= v17;
      v11 |= v16;
    }

    v12 = 1;
    v13 = 1;
  }

  while ((v14 & 1) == 0);
  v20 = v0[6];
  v19 = v0[7];
  v22 = v0[4];
  v21 = v0[5];
  v23 = v0[3];
  sub_1C4F001A8();
  (*(v22 + 16))(v19, v21, v23);
  static Features.optionsForEnabledFeatures.getter(v34);
  (*(v22 + 8))(v21, v23);
  v24 = v34[1] | v11;
  v25 = (v19 + *(v20 + 20));
  *v25 = v34[0] | v10;
  v25[1] = v24;
  v26 = type metadata accessor for GlobalKnowledgeDatabase();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  GlobalKnowledgeDatabase.init(config:)();
  GlobalKnowledgeDatabase.checkAndLoadAssets()();

  v29 = v0[7];
  v30 = v0[5];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1C482B270()
{
  v2 = *(v0 + 8);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C44A7DA0;

  return sub_1C482AE40(v3, v2);
}

unint64_t sub_1C482B308(uint64_t a1)
{
  result = sub_1C482B330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C482B330()
{
  result = qword_1EC0BDD40;
  if (!qword_1EC0BDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD40);
  }

  return result;
}

uint64_t sub_1C482B384()
{
  v0 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4830FF0(0x6C6542726F697250, 0xEC00000073666569);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    sub_1C4420C3C(v3, &qword_1EC0BD2F8, &qword_1C4F31970);
    return 0;
  }

  else
  {
    sub_1C482B9A4(v3, v9, type metadata accessor for StaticKnowledgeAssetMetadata);
    v10 = *v9;
    v11 = v9[8];
    sub_1C482BA04(v9, type metadata accessor for StaticKnowledgeAssetMetadata);
  }

  return v10;
}

uint64_t sub_1C482B4DC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-1] - v8;
  type metadata accessor for StaticKnowledgeTriple();
  v14[3] = &type metadata for StaticGlobalKnowledgeTripleColumn;
  v14[4] = sub_1C4826B5C();
  LOBYTE(v14[0]) = 0;
  v13[3] = MEMORY[0x1E69E7360];
  v13[4] = MEMORY[0x1E69A01C8];
  v13[0] = a1;
  v15[3] = sub_1C4EFB298();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v15);
  sub_1C4EFBB28();
  sub_1C4420C3C(v13, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v14);
  sub_1C482B95C(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v15);
  sub_1C482B8F8();
  sub_1C482B95C(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple);
  v10 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v9, v5);
  if (!v2)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1C482B6F8(uint64_t a1, void *a2)
{
  v3 = (a1 + *(type metadata accessor for StaticKnowledgeTriple() + 36));
  if (*v3 == *a2 && v3[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

_BYTE *sub_1C482B764@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_1C482B7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C482B898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C482B8F8()
{
  result = qword_1EDDFA2A0;
  if (!qword_1EDDFA2A0)
  {
    sub_1C4572308(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA2A0);
  }

  return result;
}

uint64_t sub_1C482B95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C482B9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C482BA04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C482BA74@<X0>(uint64_t a1@<X8>)
{
  v250 = a1;
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v249 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BDD60, &qword_1C4F31E40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v249 - v12;
  v14 = sub_1C456902C(&qword_1EC0BDD68, &qword_1C4F31E48);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v282 = v20;
  v295 = sub_1C4EFF8A8();
  v21 = sub_1C43FCDF8(v295);
  v276 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v289 = v25 - v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  v259 = v29;
  v30 = sub_1C456902C(&qword_1EC0BDD70, &qword_1C4F31E50);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  v258 = v33;
  v268 = sub_1C4EFF0C8();
  v34 = sub_1C43FCDF8(v268);
  v265 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v288 = v40;
  v269 = sub_1C4EFEEF8();
  v41 = sub_1C43FCDF8(v269);
  v287 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBD08();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v292 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v249 - v51;
  v293 = type metadata accessor for StaticKnowledgeTriple();
  v53 = sub_1C43FCDF8(v293);
  v291 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  v285 = v58;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  v294 = v60;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  v286 = v63;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v249 - v65;
  v67 = sub_1C482B384();
  if (v68)
  {
    sub_1C4F00148();
    v69 = sub_1C4F00968();
    v70 = sub_1C4F01CD8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_1C43F8000, v69, v70, "ConfidenceTrie: Prior Beliefs unavailable", v71, 2u);
      MEMORY[0x1C6942830](v71, -1, -1);
    }

    (*(v5 + 8))(v9, v2);
    v72 = 1;
    v73 = v250;
    goto LABEL_5;
  }

  v281 = v18;
  v278 = v13;
  v290 = 0;
  v76 = *(*(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  v248 = MEMORY[0x1EEE9AC00](v67);

  v77 = sub_1C49A52B4(sub_1C482D644, (&v249 - 4));

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C482D660();
  v284 = MEMORY[0x1E69E7CC0];
  v283 = sub_1C4F00F28();
  v78 = 0;
  v79 = *(v77 + 16);
  ++v287;
  v272 = v47;
  v267 = v77;
  while (v79 != v78)
  {
    if (v78 >= *(v77 + 16))
    {
      goto LABEL_123;
    }

    v80 = (*(v291 + 80) + 32) & ~*(v291 + 80);
    v81 = *(v291 + 72);
    sub_1C482D6DC(v77 + v80 + v81 * v78, v66);
    v82 = v293[6];
    sub_1C4EFEBF8();
    sub_1C441FB64();
    v84 = sub_1C482D8A8(&off_1EDDFCCA8, v83);
    sub_1C4F01578();
    sub_1C4F01578();
    sub_1C4411D68();
    v85 = v85 && v84 == v52;
    if (v85)
    {
      v89 = sub_1C43FF0AC();
      v90(v89);
    }

    else
    {
      v86 = sub_1C43FF090();
      v87 = sub_1C43FF0AC();
      v88(v87);

      if ((v86 & 1) == 0)
      {
        sub_1C482D740(v66);
        ++v78;
        goto LABEL_15;
      }
    }

    sub_1C482D79C(v66, v280);
    v91 = v284;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v299 = v91;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C4417260();
      v91 = v299;
    }

    v93 = *(v91 + 16);
    if (v93 >= *(v91 + 24) >> 1)
    {
      sub_1C43FD810();
      v91 = v299;
    }

    ++v78;
    *(v91 + 16) = v93 + 1;
    v284 = v91;
    sub_1C482D79C(v280, v91 + v80 + v93 * v81);
LABEL_15:
    v77 = v267;
  }

  v280 = *(v284 + 16);
  if (!v280)
  {
    v98 = MEMORY[0x1E69E7CC8];
    v122 = v269;
LABEL_36:

    v123 = 0;
    v125 = v98 + 64;
    v124 = *(v98 + 64);
    v126 = *(v98 + 32);
    sub_1C44131FC();
    v129 = v128 & v127;
    v131 = (v130 + 63) >> 6;
    v252 = v265 + 16;
    v262 = v265 + 32;
    v275 = (v276 + 16);
    v279 = v276 + 8;
    v286 = (v276 + 32);
    v253 = v265 + 8;
    v251 = xmmword_1C4F0D130;
    v270 = xmmword_1C4F0CE60;
    v132 = v266;
    v256 = v98;
    v255 = v98 + 64;
    v254 = v131;
    if (!v129)
    {
      goto LABEL_38;
    }

LABEL_37:
    v261 = v123;
    v133 = v123;
LABEL_42:
    v260 = (v129 - 1) & v129;
    v134 = __clz(__rbit64(v129)) | (v133 << 6);
    v135 = v265;
    v136 = *(v98 + 48) + *(v265 + 72) * v134;
    v137 = v257;
    v138 = v98;
    v139 = v268;
    (*(v265 + 16))(v257, v136, v268);
    v140 = (*(v138 + 56) + 16 * v134);
    v141 = *v140;
    v142 = v140[1];
    v143 = sub_1C456902C(&qword_1EC0BDD78, &qword_1C4F31E58);
    v144 = (v266 + *(v143 + 48));
    (*(v135 + 32))(v266, v137, v139);
    *v144 = v141;
    v144[1] = v142;
    v132 = v266;
    sub_1C440BAA8(v266, 0, 1, v143);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_43:
    v145 = v132;
    v146 = v258;
    sub_1C482D820(v145, v258, &qword_1EC0BDD70, &qword_1C4F31E50);
    v147 = sub_1C456902C(&qword_1EC0BDD78, &qword_1C4F31E58);
    if (sub_1C44157D4(v146, 1, v147) == 1)
    {
LABEL_118:

      v248 = MEMORY[0x1E69E63E0];
      v73 = v250;
      sub_1C4EFC7A8();
      v72 = 0;
LABEL_5:
      v74 = sub_1C456902C(&qword_1EC0BACC8, &unk_1C4F17078);
      return sub_1C440BAA8(v73, v72, 1, v74);
    }

    v148 = (v146 + *(v147 + 48));
    v150 = *v148;
    v149 = v148[1];
    v271 = v150;
    v273 = v149;
    sub_1C4402C08(&v293);
    v152 = v151(v264, v146, v268);
    MEMORY[0x1EEE9AC00](v152);
    sub_1C4408AE0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v153 = v290;
    sub_1C4B347B8();
    v155 = v154;
    v290 = v153;
    v156 = 0;
    v284 = *(v154 + 2);
    v280 = MEMORY[0x1E69E7CC0];
    v288 = v154;
    while (1)
    {
      while (1)
      {
        if (v284 == v156)
        {
          v172 = *(v280 + 16);
          if (!v172)
          {
            v179 = MEMORY[0x1E69E7CC8];
            v174 = v293;
LABEL_96:

            v284 = 0;
            v209 = 0;
            v277 = v179;
            v210 = *(v179 + 64);
            v211 = *(v179 + 32);
            sub_1C44131FC();
            v215 = v214 & v213;
            v217 = (v216 + 63) >> 6;
            v218 = 0.0;
            v280 = v212;
            if ((v214 & v213) == 0)
            {
              goto LABEL_98;
            }

            while (1)
            {
              v219 = v209;
LABEL_102:
              v220 = __clz(__rbit64(v215));
              v215 &= v215 - 1;
              v221 = v220 | (v219 << 6);
              v222 = v277;
              v223 = v276;
              v224 = v274;
              v225 = v295;
              (*(v276 + 16))(v274, *(v277 + 6) + *(v276 + 72) * v221, v295);
              v226 = *(*(v222 + 7) + 8 * v221);
              v227 = sub_1C456902C(&qword_1EC0BDD80, &qword_1C4F31E60);
              v228 = *(v227 + 48);
              v229 = *(v223 + 32);
              v230 = v281;
              v229(v281, v224, v225);
              *(v230 + v228) = v226;
              sub_1C440BAA8(v230, 0, 1, v227);
              v174 = v293;
LABEL_103:
              v231 = v282;
              sub_1C482D820(v230, v282, &qword_1EC0BDD68, &qword_1C4F31E48);
              v232 = sub_1C456902C(&qword_1EC0BDD80, &qword_1C4F31E60);
              if (sub_1C44157D4(v231, 1, v232) == 1)
              {
                break;
              }

              v233 = *(v231 + *(v232 + 48));
              v234 = (*v286)(v289, v231, v295);
              MEMORY[0x1EEE9AC00](v234);
              sub_1C4408AE0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v235 = v290;
              sub_1C4B347B8();
              v290 = v235;
              v236 = v278;
              sub_1C4868578(v237, v278);

              if (sub_1C44157D4(v236, 1, v174) == 1)
              {
                sub_1C4423A0C(v236, &qword_1EC0BDD60, &qword_1C4F31E40);
              }

              else
              {
                v238 = (v236 + v174[9]);
                v239 = *v238;
                v240 = v238[1];
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C482D740(v236);
                v120 = __OFADD__(v284++, 1);
                if (v120)
                {
                  goto LABEL_121;
                }

                v218 = v218 + v233;
                sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
                v241 = swift_allocObject();
                *(v241 + 16) = v270;
                *(v241 + 32) = v271;
                *(v241 + 40) = v273;
                *(v241 + 48) = v239;
                *(v241 + 56) = v240;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                swift_isUniquelyReferenced_nonNull_native();
                sub_1C440E310();

                v283 = v297;
              }

              sub_1C4402C08(&v301);
              v242(v289, v295);
              v212 = v280;
              if (!v215)
              {
LABEL_98:
                while (1)
                {
                  v219 = v209 + 1;
                  if (__OFADD__(v209, 1))
                  {
                    break;
                  }

                  if (v219 >= v217)
                  {
                    v243 = sub_1C456902C(&qword_1EC0BDD80, &qword_1C4F31E60);
                    v230 = v281;
                    sub_1C440BAA8(v281, 1, 1, v243);
                    v215 = 0;
                    goto LABEL_103;
                  }

                  v215 = *(v212 + 8 * v219);
                  ++v209;
                  if (v215)
                  {
                    v209 = v219;
                    goto LABEL_102;
                  }
                }

                __break(1u);
                goto LABEL_118;
              }
            }

            v122 = v269;
            if (v284 < 1)
            {
            }

            else
            {
              sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
              v244 = swift_allocObject();
              *(v244 + 16) = v251;
              v245 = v273;
              *(v244 + 32) = v271;
              *(v244 + 40) = v245;
              swift_isUniquelyReferenced_nonNull_native();
              sub_1C440E310();

              v283 = v297;
            }

            v132 = v266;
            v98 = v256;
            v125 = v255;
            v123 = v261;
            v129 = v260;
            sub_1C4402C08(&v284);
            v246(v264, v268);
            v131 = v254;
            if (v129)
            {
              goto LABEL_37;
            }

LABEL_38:
            while (1)
            {
              v133 = v123 + 1;
              if (__OFADD__(v123, 1))
              {
                goto LABEL_122;
              }

              if (v133 >= v131)
              {
                v261 = v123;
                v247 = sub_1C456902C(&qword_1EC0BDD78, &qword_1C4F31E58);
                sub_1C440BAA8(v132, 1, 1, v247);
                v260 = 0;
                goto LABEL_43;
              }

              v129 = *(v125 + 8 * v133);
              ++v123;
              if (v129)
              {
                v261 = v133;
                goto LABEL_42;
              }
            }
          }

          v173 = 0;
          v174 = v293;
          v175 = (v285 + v293[9]);
          sub_1C4410D14();
          v178 = v177 + v176;
          v179 = MEMORY[0x1E69E7CC8];
          while (2)
          {
            if (v173 >= *(v280 + 16))
            {
              goto LABEL_120;
            }

            v180 = sub_1C482D6DC(v178 + *(v291 + 72) * v173, v285);
            v181 = *v175;
            v182 = v175[1];
            v296 = 0;
            MEMORY[0x1EEE9AC00](v180);
            v248 = &v296;
            if ((v184 & 0x1000000000000000) != 0)
            {
              goto LABEL_93;
            }

            if ((v184 & 0x2000000000000000) != 0)
            {
              v297 = v183;
              v298 = v184 & 0xFFFFFFFFFFFFFFLL;
              if (v183 <= 0x20u && ((1 << v183) & 0x100003E01) != 0)
              {
                goto LABEL_80;
              }

              goto LABEL_82;
            }

            if ((v183 & 0x1000000000000000) == 0)
            {
LABEL_93:
              v208 = v290;
              sub_1C4F02218();
              v290 = v208;
              if ((v299 & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v185 = *((v184 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v186 = v185 > 0x20;
              v187 = (1 << v185) & 0x100003E01;
              if (!v186 && v187 != 0)
              {
LABEL_80:
                ++v173;
                sub_1C482D740(v285);
                if (v172 == v173)
                {
                  goto LABEL_96;
                }

                continue;
              }

LABEL_82:
              v189 = _swift_stdlib_strtod_clocale();
              if (!v189 || *v189)
              {
                goto LABEL_80;
              }
            }

            break;
          }

          v190 = v296;
          v191 = *v275;
          (*v275)(v259, v285 + v174[7], v295);
          swift_isUniquelyReferenced_nonNull_native();
          v297 = v179;
          sub_1C457AC78();
          if (__OFADD__(*(v179 + 16), (v193 & 1) == 0))
          {
            goto LABEL_127;
          }

          v194 = v193;
          v284 = v192;
          sub_1C456902C(&qword_1EC0BDD58, &qword_1C4F31E38);
          if (sub_1C4F02458())
          {
            sub_1C457AC78();
            if ((v194 & 1) != (v196 & 1))
            {
              goto LABEL_129;
            }
          }

          else
          {
            v195 = v284;
          }

          v197 = v194;
          v179 = v297;
          if (v197)
          {
            *(*(v297 + 56) + 8 * v195) = v190;
            sub_1C4402C08(&v301);
            v198(v259, v295);
          }

          else
          {
            *(v297 + 8 * (v195 >> 6) + 64) |= 1 << v195;
            v199 = v195;
            v200 = *(v179 + 48) + *(v276 + 72) * v195;
            v201 = v191;
            v202 = v179;
            v203 = v259;
            v204 = v295;
            v201(v200, v259, v295);
            *(*(v202 + 56) + 8 * v199) = v190;
            v205 = v203;
            v179 = v202;
            (*(v276 + 8))(v205, v204);
            v206 = *(v202 + 16);
            v120 = __OFADD__(v206, 1);
            v207 = v206 + 1;
            if (v120)
            {
              goto LABEL_128;
            }

            *(v202 + 16) = v207;
          }

          goto LABEL_80;
        }

        if (v156 >= *(v155 + 2))
        {
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

        v157 = (*(v291 + 80) + 32) & ~*(v291 + 80);
        v158 = *(v291 + 72);
        sub_1C482D6DC(&v155[v157 + v158 * v156], v294);
        v159 = v292;
        v160 = v293[6];
        sub_1C4EFE5C8();
        sub_1C441FB64();
        sub_1C482D8A8(&off_1EDDFCCA8, v161);
        sub_1C440D498();
        sub_1C440D498();
        sub_1C4411D68();
        v162 = v85;
        v163 = v162 ? 1 : sub_1C43FF090();
        v164 = *v287;
        (*v287)(v292, v122);

        if (v163)
        {
          break;
        }

LABEL_59:
        sub_1C482D740(v294);
        ++v156;
        v155 = v288;
      }

      v165 = v293[8];
      v166 = v272;
      sub_1C4EFE2A8();
      sub_1C440D498();
      sub_1C440D498();
      sub_1C4411D68();
      if (v85 && v159 == v166)
      {
        v164(v166, v122);
      }

      else
      {
        v168 = sub_1C43FF090();
        v164(v166, v122);

        if ((v168 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      sub_1C482D79C(v294, v263);
      v169 = v280;
      v170 = swift_isUniquelyReferenced_nonNull_native();
      v299 = v169;
      if ((v170 & 1) == 0)
      {
        sub_1C4417260();
        v169 = v299;
      }

      v155 = v288;
      v171 = *(v169 + 16);
      if (v171 >= *(v169 + 24) >> 1)
      {
        sub_1C43FD810();
        v169 = v299;
      }

      ++v156;
      *(v169 + 16) = v171 + 1;
      v280 = v169;
      sub_1C482D79C(v263, v169 + v157 + v171 * v158);
    }
  }

  v94 = 0;
  v279 = v293[5];
  v277 = &v286[v293[9]];
  sub_1C4410D14();
  v275 = (v95 + v96);
  v97 = (v265 + 16);
  v98 = MEMORY[0x1E69E7CC8];
  v273 = v265 + 8;
  while (1)
  {
    if (v94 >= *(v95 + 16))
    {
      goto LABEL_124;
    }

    v99 = v286;
    sub_1C482D6DC(v275 + *(v291 + 72) * v94, v286);
    v100 = *v97;
    (*v97)(v288, &v99[v279], v268);
    v101 = *v277;
    v102 = *(v277 + 1);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v297 = v98;
    sub_1C44E3664();
    if (__OFADD__(*(v98 + 16), (v104 & 1) == 0))
    {
      break;
    }

    v105 = v103;
    v106 = v104;
    sub_1C456902C(&qword_1EC0BDD48, &qword_1C4F31E28);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      if ((v106 & 1) != (v108 & 1))
      {
        goto LABEL_129;
      }

      v105 = v107;
    }

    v98 = v297;
    if (v106)
    {
      v109 = (*(v297 + 56) + 16 * v105);
      v110 = v109[1];
      *v109 = v101;
      v109[1] = v102;

      sub_1C4402C08(&v300);
      v111(v288, v268);
      sub_1C482D740(v286);
    }

    else
    {
      *(v297 + 8 * (v105 >> 6) + 64) |= 1 << v105;
      v112 = *(v98 + 48);
      v113 = v98;
      v114 = v265;
      v115 = v288;
      v116 = v268;
      v100(v112 + *(v265 + 72) * v105, v288, v268);
      v117 = (*(v113 + 56) + 16 * v105);
      *v117 = v101;
      v117[1] = v102;
      v118 = *(v114 + 8);
      v98 = v113;
      v118(v115, v116);
      sub_1C482D740(v286);
      v119 = *(v113 + 16);
      v120 = __OFADD__(v119, 1);
      v121 = v119 + 1;
      if (v120)
      {
        goto LABEL_126;
      }

      *(v113 + 16) = v121;
    }

    ++v94;
    v122 = v269;
    v95 = v284;
    if (v280 == v94)
    {
      goto LABEL_36;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C482D27C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-1] - v8;
  type metadata accessor for StaticKnowledgeTriple();
  v14[3] = &type metadata for StaticGlobalKnowledgeTripleColumn;
  v14[4] = sub_1C4826B5C();
  LOBYTE(v14[0]) = 0;
  v13[3] = MEMORY[0x1E69E7360];
  v13[4] = MEMORY[0x1E69A01C8];
  v13[0] = a1;
  v15[3] = sub_1C4EFB298();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v15);
  sub_1C4EFBB28();
  sub_1C4423A0C(v13, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v14);
  sub_1C482D8A8(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v15);
  sub_1C482B8F8();
  sub_1C482D8A8(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple);
  v10 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v9, v5);
  if (!v2)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1C482D4E8(uint64_t a1)
{
  v2 = sub_1C4EFEEF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticKnowledgeTriple();
  v8 = v7[6];
  sub_1C4EFE5C8();
  LOBYTE(v8) = sub_1C44DBB50(a1 + v8, v6);
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (v8 & 1) != 0 && (v10 = v7[8], sub_1C4EFED88(), LOBYTE(v10) = sub_1C44DBB50(a1 + v10, v6), v9(v6, v2), (v10))
  {
    v11 = v7[7];
    v12 = sub_1C4EFF878();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1C482D660()
{
  result = qword_1EDDDBC18;
  if (!qword_1EDDDBC18)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBC18);
  }

  return result;
}

uint64_t sub_1C482D6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticKnowledgeTriple();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C482D740(uint64_t a1)
{
  v2 = type metadata accessor for StaticKnowledgeTriple();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C482D79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticKnowledgeTriple();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C482D820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C482D8A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C482D8F0()
{
  v0 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4830FF0(0xD00000000000001BLL, 0x80000001C4FA2B50);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    sub_1C4420C3C(v3, &qword_1EC0BD2F8, &qword_1C4F31970);
    return 0;
  }

  else
  {
    sub_1C482E538(v3, v7, type metadata accessor for StaticKnowledgeAssetMetadata);
    v8 = *v7;
    v9 = v7[8];
    sub_1C482E598(v7, type metadata accessor for StaticKnowledgeAssetMetadata);
  }

  return v8;
}

uint64_t sub_1C482DA4C()
{
  v1 = sub_1C4F00978();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = type metadata accessor for StaticKnowledgeTriple();
  v16 = sub_1C43FCDF8(v15);
  v92 = v17;
  v93 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v82 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v82 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - v27;
  v29 = sub_1C482D8F0();
  if (v30)
  {
    sub_1C4F00148();
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CD8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C43F8000, v31, v32, "LocalizedRelationshipTopicMap: LocalizedRelationshipTopics not available", v33, 2u);
      MEMORY[0x1C6942830](v33, -1, -1);
    }

    (*(v4 + 8))(v8, v1);
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    return sub_1C4F00F28();
  }

  v89 = v9;
  v35 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  MEMORY[0x1EEE9AC00](v29);
  *(&v82 - 2) = v36;

  v37 = sub_1C49A52B4(sub_1C482E4FC, (&v82 - 4));

  v39 = 0;
  v90 = *(v37 + 16);
  v88 = v12 + 8;
  v87 = MEMORY[0x1E69E7CC0];
  v91 = v37;
  while (v90 != v39)
  {
    if (v39 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_1C482D6DC(v37 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v39, v28);
    v40 = *(v93 + 24);
    sub_1C4EFEBC8();
    sub_1C482D8A8(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v97 == v95 && v98 == v96)
    {
      v46 = sub_1C44004A8();
      v47(v46);

LABEL_15:
      sub_1C4406F90();
      sub_1C482E538(v28, v86, v48);
      v49 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = *(v49 + 16);
        sub_1C459DB00();
        v49 = v99;
      }

      v52 = *(v49 + 16);
      if (v52 >= *(v49 + 24) >> 1)
      {
        sub_1C459DB00();
        v49 = v99;
      }

      ++v39;
      *(v49 + 16) = v52 + 1;
      v87 = v49;
      sub_1C4406F90();
      result = sub_1C482E538(v86, v53, v54);
      v37 = v91;
    }

    else
    {
      v42 = sub_1C4F02938();
      v43 = sub_1C44004A8();
      v44(v43);

      if (v42)
      {
        goto LABEL_15;
      }

      sub_1C4419810();
      result = sub_1C482E598(v28, v45);
      ++v39;
      v37 = v91;
    }
  }

  v86 = *(v87 + 16);
  if (!v86)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v55 = 0;
  v56 = 0;
  v57 = v83;
  v85 = &v83[*(v93 + 36)];
  v82 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v84 = v87 + v82;
  v34 = MEMORY[0x1E69E7CC8];
  while (v55 < *(v87 + 16))
  {
    v89 = v34;
    v90 = v55;
    v58 = *(v92 + 72);
    v59 = sub_1C482D6DC(v84 + v58 * v55, v57);
    MEMORY[0x1EEE9AC00](v59);
    *(&v82 - 2) = v57;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4B347B8();
    v61 = v60;
    v62 = *(v60 + 16);
    if (v62)
    {
      v88 = v56;
      v97 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      v63 = v97;
      v64 = v61 + v82;
      do
      {
        sub_1C482D6DC(v64, v21);
        v65 = &v21[*(v93 + 36)];
        v67 = *v65;
        v66 = *(v65 + 1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4419810();
        sub_1C482E598(v21, v68);
        v97 = v63;
        v69 = *(v63 + 16);
        if (v69 >= *(v63 + 24) >> 1)
        {
          sub_1C44CD9C0();
          v63 = v97;
        }

        *(v63 + 16) = v69 + 1;
        v70 = v63 + 16 * v69;
        *(v70 + 32) = v67;
        *(v70 + 40) = v66;
        v64 += v58;
        --v62;
      }

      while (v62);

      v57 = v83;
      v56 = v88;
    }

    else
    {

      v63 = MEMORY[0x1E69E7CC0];
    }

    v55 = v90 + 1;
    v78 = *v85;
    v79 = *(v85 + 1);
    sub_1C4499940(v63, v71, v72, v73, v74, v75, v76, v77, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    v80 = v89;
    swift_isUniquelyReferenced_nonNull_native();
    v97 = v80;
    sub_1C4486BA8();
    v34 = v97;
    sub_1C4419810();
    result = sub_1C482E598(v57, v81);
    if (v55 == v86)
    {

      return v34;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C482E1C0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-1] - v8;
  type metadata accessor for StaticKnowledgeTriple();
  v14[3] = &type metadata for StaticGlobalKnowledgeTripleColumn;
  v14[4] = sub_1C4826B5C();
  LOBYTE(v14[0]) = 0;
  v13[3] = MEMORY[0x1E69E7360];
  v13[4] = MEMORY[0x1E69A01C8];
  v13[0] = a1;
  v15[3] = sub_1C4EFB298();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v15);
  sub_1C4EFBB28();
  sub_1C4420C3C(v13, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v14);
  sub_1C482D8A8(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v15);
  sub_1C482B8F8();
  sub_1C482D8A8(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple);
  v10 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v9, v5);
  if (!v2)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1C482E3DC(uint64_t a1)
{
  v2 = sub_1C4EFEEF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticKnowledgeTriple();
  v8 = *(v7 + 32);
  sub_1C4EFEBF8();
  LOBYTE(v8) = sub_1C44DBB50(a1 + v8, v6);
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v9 = *(v7 + 20);
    v10 = sub_1C4EFF088();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1C482E538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C482E598(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C482E5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v225 = a4;
  v216 = a3;
  v221 = sub_1C4F00978();
  v6 = sub_1C43FCDF8(v221);
  v220 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2C8(&v208[-v11]);
  v211 = sub_1C4EFF8A8();
  v12 = sub_1C43FCDF8(v211);
  v247 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v16);
  v252 = type metadata accessor for StaticKnowledgeTriple();
  v17 = sub_1C43FCDF8(v252);
  v222 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2C8(&v208[-v23]);
  v224 = sub_1C4EFF0C8();
  v24 = sub_1C43FCDF8(v224);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD2D8();
  v223 = v29;
  v30 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  sub_1C43FD2C8(&v208[-v32]);
  v33 = sub_1C4EFDE88();
  v34 = sub_1C43FCDF8(v33);
  v36 = v35;
  v245 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v208[-v43];
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v208[-v45];
  v239 = sub_1C4EFDE98();
  v47 = sub_1C43FCDF8(v239);
  v238 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  v244 = &v208[-v54];
  v55 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v56 = *(sub_1C4EFEEF8() - 8);
  v57 = *(v56 + 80);
  v58 = (v57 + 32) & ~v57;
  v227 = *(v56 + 72);
  v228 = v57;
  v230 = v55;
  v59 = swift_allocObject();
  v246 = xmmword_1C4F0D130;
  *(v59 + 16) = xmmword_1C4F0D130;
  v229 = v58;
  sub_1C4EFEBF8();
  sub_1C4D504A4();
  v251 = v60;
  v214 = sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  sub_1C442CB08(inited);
  v213 = a1;
  *(v62 + 32) = a1;
  *(v62 + 40) = a2;
  v219 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DE08(inited);
  v237 = v63;
  LODWORD(a1) = *MEMORY[0x1E69A95C0];
  v64 = v36 + 104;
  v65 = *(v36 + 104);
  sub_1C440F724();
  v65();
  v66 = v44;
  sub_1C440F724();
  v65();
  v67 = v242;
  sub_1C440F724();
  v65();
  v68 = v241;
  sub_1C440F724();
  v65();
  v69 = v240;
  v231 = a1;
  sub_1C440F724();
  v233 = v64;
  v232 = v65;
  v65();
  v70 = v67;
  v71 = v68;
  sub_1C4EFDCD8();

  v73 = v245 + 8;
  v72 = *(v245 + 8);
  v72(v69, v33);
  v72(v71, v33);
  v72(v70, v33);
  v235 = v66;
  v72(v66, v33);
  v236 = v46;
  v74 = v46;
  v237 = v33;
  v75 = v244;
  v245 = v73;
  v234 = v72;
  v72(v74, v33);
  v76 = sub_1C4EFF8F8();
  v77 = sub_1C440ABDC();
  sub_1C440BAA8(v77, v78, v79, v76);
  v80 = sub_1C43FF0C0(v75);
  sub_1C482ADC8(v72);
  v81 = *(v80 + 16);
  if (!v81)
  {
    v119 = v75;
    v120 = v238;
    v121 = v239;

    sub_1C4F00148();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v122 = sub_1C4F00968();
    v123 = sub_1C4F01CD8();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v254 = v125;
      *v124 = 136315138;
      *(v124 + 4) = sub_1C44043A4();
      _os_log_impl(&dword_1C43F8000, v122, v123, "ConfidenceQuery: Confidence Source <%s> unavailable", v124, 0xCu);
      sub_1C440962C(v125);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v126 = sub_1C440E334();
    v127(v126);
    (*(v120 + 8))(v119, v121);
    return 0;
  }

  v218 = v76;
  v254 = MEMORY[0x1E69E7CC0];
  sub_1C459D178();
  v82 = v254;
  sub_1C4409B30(&v252);
  v209 = v83;
  v212 = v80;
  v84 = v80 + v83;
  v251 = *(v85 + 72);
  v86 = v224;
  v87 = v223;
  do
  {
    sub_1C441EC60();
    (*(v26 + 16))(v87, v76 + *(v252 + 20), v86);
    sub_1C482D740(v76);
    v254 = v82;
    v89 = *(v82 + 16);
    v88 = *(v82 + 24);
    v76 = v89 + 1;
    if (v89 >= v88 >> 1)
    {
      sub_1C441FB7C(v88);
      sub_1C459D178();
      v82 = v254;
    }

    *(v82 + 16) = v76;
    (*(v26 + 32))(v82 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v89, v87, v86);
    v84 += v251;
    --v81;
  }

  while (v81);

  sub_1C45972E0();
  v224 = v90;
  v91 = v225;
  if (!v225)
  {
    v156 = swift_allocObject();
    sub_1C442CB08(v156);
    sub_1C4EFE5C8();
    sub_1C4D504A4();
    v250 = v157;
    v158 = swift_allocObject();
    sub_1C442CB08(v158);
    sub_1C4EFE2A8();
    sub_1C4D504A4();
    v160 = v159;
    v161 = v236;
    v162 = v237;
    v163 = v232;
    (v232)(v236, v231, v237);
    v164 = v235;
    sub_1C442BBB8();
    v163();
    v165 = v242;
    sub_1C442BBB8();
    v163();
    sub_1C4435094(&v258);
    sub_1C442BBB8();
    v163();
    sub_1C442BBB8();
    v163();
    v166 = v217;
    v167 = v224;
    sub_1C4EFDCD8();

    sub_1C4411D78();
    v160();
    (v160)(v84, v162);
    (v160)(v165, v162);
    (v160)(v164, v162);
    (v160)(v161, v162);
    v168 = sub_1C440ABDC();
    sub_1C440BAA8(v168, v169, v170, v218);
    v171 = sub_1C43FF0C0(v166);
    sub_1C482ADC8(v167);
    if (!*(v171 + 16))
    {

      v167 = MEMORY[0x1E69E7CC0];
LABEL_70:
      v199 = *(v167 + 16);
      v200 = v238;
      if (v199)
      {
        v201 = (v167 + 32);
        v202 = MEMORY[0x1E69E7CC0];
        do
        {
          v203 = *v201;
          if (*v201 > 0.0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254 = v202;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C440D4B0();
              v202 = v254;
            }

            v206 = *(v202 + 16);
            v205 = *(v202 + 24);
            if (v206 >= v205 >> 1)
            {
              sub_1C441FB7C(v205);
              sub_1C459D100();
              v202 = v254;
            }

            *(v202 + 16) = v206 + 1;
            *(v202 + 8 * v206 + 32) = v203;
          }

          ++v201;
          --v199;
        }

        while (v199);
      }

      else
      {
        v202 = MEMORY[0x1E69E7CC0];
      }

      v187 = sub_1C45DC2E4(v202);

      v196 = *(v200 + 8);
      v198 = v217;
      v197 = v239;
LABEL_82:
      v196(v198, v197);
      v196(v244, v197);
      return v187;
    }

    sub_1C4410D28(MEMORY[0x1E69E7CC0]);
    sub_1C4403290();
    while (1)
    {
      sub_1C482D6DC(v84, v248);
      sub_1C4432394();
      MEMORY[0x1EEE9AC00](v172);
      sub_1C43FC408();
      if ((v176 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v176 & 0x2000000000000000) != 0)
      {
        sub_1C4405C74(v173, v174, v175, v176);
        if (v153 || ((0x100003E01uLL >> v178) & 1) == 0)
        {
LABEL_44:
          v179 = _swift_stdlib_strtod_clocale();
          if (v179)
          {
            v155 = *v179 == 0;
          }
        }
      }

      else
      {
        if ((v175 & 0x1000000000000000) == 0)
        {
          break;
        }

        v177 = *((v176 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if (v177 >= 0x21 || ((0x100003E01uLL >> v177) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

LABEL_46:
      sub_1C482D740(v248);
      sub_1C43FD834();
      if (v153)
      {
        sub_1C4433434();
        v167 = v255;
      }

      sub_1C4417284();
      if (v155)
      {

        goto LABEL_70;
      }
    }

    sub_1C4F02218();
    goto LABEL_46;
  }

  v92 = v228;
  v93 = swift_allocObject();
  sub_1C442CB08(v93);
  sub_1C4EFE5C8();
  sub_1C4D504A4();
  v248 = v94;
  v95 = swift_initStackObject();
  sub_1C442CB08(v95);
  *(v96 + 32) = v216;
  *(v96 + 40) = v91;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DE08(v95);
  v223 = v97;
  v98 = swift_allocObject();
  sub_1C442CB08(v98);
  sub_1C4EFED88();
  sub_1C4D504A4();
  v99 = sub_1C4435094(v257);
  v100 = v237;
  v101 = v232;
  (v232)(v99, v231, v237);
  v102 = v235;
  sub_1C442DF78();
  v101();
  v103 = v242;
  sub_1C442DF78();
  v101();
  v104 = v241;
  sub_1C442DF78();
  v101();
  sub_1C442DF78();
  v101();
  v105 = v226;
  v106 = v248;
  sub_1C4EFDCD8();

  sub_1C4411D78();
  v106();
  (v106)(v104, v100);
  (v106)(v103, v100);
  (v106)(v102, v100);
  (v106)(v92, v100);
  v107 = v243;
  sub_1C440BAA8(v243, 1, 1, v218);
  v108 = sub_1C498DB4C(v105, v107);
  sub_1C482ADC8(v107);
  v109 = *(v108 + 16);
  if (v109)
  {
    v254 = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v110 = v254;
    v111 = v108 + v209;
    v112 = (v247 + 16);
    v113 = v211;
    v114 = v210;
    do
    {
      sub_1C441EC60();
      (*v112)(v114, v107 + *(v252 + 28), v113);
      sub_1C482D740(v107);
      v254 = v110;
      v116 = *(v110 + 16);
      v115 = *(v110 + 24);
      v107 = v116 + 1;
      if (v116 >= v115 >> 1)
      {
        sub_1C441FB7C(v115);
        sub_1C459D120();
        v110 = v254;
      }

      *(v110 + 16) = v107;
      sub_1C4409B30(&v259);
      (*(v118 + 32))(v110 + v117 + *(v118 + 72) * v116, v114, v113);
      v111 += v251;
      --v109;
    }

    while (v109);

    sub_1C459740C();
    v250 = v128;
    v129 = swift_allocObject();
    sub_1C442CB08(v129);
    sub_1C4EFE5C8();
    sub_1C4D504A4();
    v248 = v130;
    v131 = swift_allocObject();
    sub_1C442CB08(v131);
    sub_1C4EFE2A8();
    sub_1C4D504A4();
    v247 = v132;
    v133 = v236;
    v134 = v237;
    v135 = v232;
    (v232)(v236, v231, v237);
    sub_1C4435094(v256);
    sub_1C43FE9A8();
    v135();
    v136 = v242;
    sub_1C43FE9A8();
    v135();
    v137 = v241;
    sub_1C43FE9A8();
    v135();
    sub_1C43FE9A8();
    v135();
    v138 = v215;
    v139 = v224;
    v140 = v250;
    sub_1C4EFDCD8();

    v141 = v138;
    sub_1C4411D78();
    v140();
    (v140)(v137, v134);
    (v140)(v136, v134);
    (v140)(v111, v134);
    (v140)(v133, v134);
    v142 = sub_1C440ABDC();
    sub_1C440BAA8(v142, v143, v144, v218);
    v145 = sub_1C43FF0C0(v138);
    sub_1C482ADC8(v139);
    if (*(v145 + 16))
    {
      sub_1C4410D28(MEMORY[0x1E69E7CC0]);
      sub_1C4403290();
      while (1)
      {
        sub_1C482D6DC(v111, v249);
        sub_1C4432394();
        MEMORY[0x1EEE9AC00](v146);
        sub_1C43FC408();
        if ((v150 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v150 & 0x2000000000000000) != 0)
        {
          sub_1C4405C74(v147, v148, v149, v150);
          if (v153 || ((0x100003E01uLL >> v152) & 1) == 0)
          {
LABEL_26:
            v154 = _swift_stdlib_strtod_clocale();
            if (v154)
            {
              v155 = *v154 == 0;
            }
          }
        }

        else
        {
          if ((v149 & 0x1000000000000000) == 0)
          {
            break;
          }

          v151 = *((v150 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v151 >= 0x21 || ((0x100003E01uLL >> v151) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_28:
        sub_1C482D740(v249);
        sub_1C43FD834();
        if (v153)
        {
          sub_1C4433434();
          v139 = v255;
        }

        sub_1C4417284();
        if (v155)
        {

          v141 = v215;
          goto LABEL_57;
        }
      }

      sub_1C4F02218();
      goto LABEL_28;
    }

    v139 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v188 = *(v139 + 16);
    v189 = v238;
    if (v188)
    {
      v190 = (v139 + 32);
      v191 = MEMORY[0x1E69E7CC0];
      do
      {
        v192 = *v190;
        if (*v190 > 0.0)
        {
          v193 = swift_isUniquelyReferenced_nonNull_native();
          v254 = v191;
          if ((v193 & 1) == 0)
          {
            sub_1C440D4B0();
            v191 = v254;
          }

          v195 = *(v191 + 16);
          v194 = *(v191 + 24);
          if (v195 >= v194 >> 1)
          {
            sub_1C441FB7C(v194);
            sub_1C459D100();
            v191 = v254;
          }

          *(v191 + 16) = v195 + 1;
          *(v191 + 8 * v195 + 32) = v192;
        }

        ++v190;
        --v188;
      }

      while (v188);
    }

    else
    {
      v191 = MEMORY[0x1E69E7CC0];
    }

    v187 = sub_1C45DC2E4(v191);

    v196 = *(v189 + 8);
    v197 = v239;
    v196(v141, v239);
    v198 = v226;
    goto LABEL_82;
  }

  sub_1C4F00148();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4435094(v253);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v180 = sub_1C4F00968();
  v181 = sub_1C4F01CD8();

  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    *v182 = 136315394;
    *(v182 + 4) = sub_1C441D828(v216, v92, &v254);
    *(v182 + 12) = 2080;
    *(v182 + 14) = sub_1C44043A4();
    _os_log_impl(&dword_1C43F8000, v180, v181, "ConfidenceQuery: Signal Type <%s> for Confidence Source <%s> unavailable", v182, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v183 = sub_1C440E334();
  v184(v183);
  v185 = *(v238 + 8);
  v186 = v239;
  v185(v226, v239);
  v185(v244, v186);
  return 0;
}

size_t sub_1C482FCF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1C497F41C(*(a1 + 16), 0);
  v3 = sub_1C4EFF318();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 80);
  sub_1C440D4D4(v4, v7, v8, v9, v10, v11, v12, v13, v24, v26);
  sub_1C461A3C0();
  v15 = v14;
  sub_1C44323B4(v14, v16, v17, v18, v19, v20, v21, v22, v25, v27);
  sub_1C449BB0C();
  if (v15 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1C482FF48(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v7 = a2(*(a1 + 16), 0);
  v8 = a3(0);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 80);
  v19 = sub_1C440D4D4(v9, v12, v13, v14, v15, v16, v17, v18, v29, v31);
  v20 = a4(v19);
  sub_1C44323B4(v20, v21, v22, v23, v24, v25, v26, v27, v30, v32);
  sub_1C449BB0C();
  if (v20 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1C4830014(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(v17, v6 + 32, v4, a1);
  sub_1C44323B4(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
  sub_1C449BB0C();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void *sub_1C48300AC(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C440ABF4();
  sub_1C4834AF0(a1, v9);
  v10 = *(v1 + 48);
  v11 = *(v1 + 52);
  swift_allocObject();
  v12 = sub_1C48310D0(v9);
  sub_1C442CB18();
  sub_1C4453E44(a1, v13);
  return v12;
}

uint64_t GlobalKnowledgeStore.liveApiIdSearch(request:updateCache:lookupCache:serverTimeoutMs:)(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v186 = a4;
  LODWORD(v188) = a3;
  v182 = a2;
  v187 = sub_1C4F00978();
  v5 = sub_1C43FCDF8(v187);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v163 - v14;
  v174 = sub_1C4F00D58();
  v15 = sub_1C43FCDF8(v174);
  v173 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v20 - v19);
  v168 = sub_1C4F01D98();
  v21 = sub_1C43FCDF8(v168);
  v167 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v26 - v25);
  v164 = sub_1C4F01D58();
  v27 = sub_1C43FBCE0(v164);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v31 - v30);
  v171 = sub_1C4F00D88();
  v32 = sub_1C43FCDF8(v171);
  v170 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v37 - v36);
  v38 = type metadata accessor for LiveGlobalKnowledgeTriple();
  sub_1C43FBD18(v38);
  v181 = v39;
  v180 = sub_1C4EFF458();
  v40 = sub_1C43FCDF8(v180);
  v179 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v45 - v44);
  v177 = sub_1C4EF9CD8();
  v46 = sub_1C43FCDF8(v177);
  v176 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v52 = v51 - v50;
  v53 = sub_1C4EFF3B8();
  v54 = sub_1C43FCDF8(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBD08();
  v61 = v59 - v60;
  v63 = MEMORY[0x1EEE9AC00](v62);
  v65 = &v163 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v163 - v66;
  v68 = swift_allocObject();
  v191 = v56;
  v192 = v68;
  *(v68 + 16) = MEMORY[0x1E69E7CC0];
  (*(v56 + 16))(v67, a1, v53);
  v185 = a1;
  v69 = *(sub_1C4EFF388() + 16);

  if (!v69)
  {
    sub_1C4830F9C();
    swift_allocError();
    *v114 = 0xD000000000000022;
    *(v114 + 8) = 0x80000001C4FA2BA0;
    *(v114 + 16) = 1;
    swift_willThrow();
LABEL_10:
    (*(v191 + 8))(v67, v53);

    return v12;
  }

  v184 = v53;
  v175 = v7;
  if (v188)
  {
    v188 = v12;
    v70 = *(*(v190 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);

    v71 = v185;
    sub_1C492C830(v185, v70, v72, v73, v74, v75, v76, v77, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174);
    v12 = v78;
    sub_1C492D568(v71, v78, v79, v80, v81, v82, v83, v84, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174);
    sub_1C492DE94(v61, v70, v85, v86, v87, v88, v89, v90, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174);
    v91 = v191;
    v92 = *(v191 + 8);
    v93 = v61;
    v94 = v184;
    v92(v93, v184);
    v92(v67, v94);
    (*(v91 + 32))(v67, v65, v94);
    v95 = sub_1C4EFF388();

    v96 = *(v95 + 16);

    if (!v96)
    {
      v92(v67, v94);

      return v12;
    }

    v12 = v188;
  }

  v97 = *(v190 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi + 24);
  v98 = *(v190 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi + 32);
  sub_1C4409678((v190 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi), v97);
  v99 = v189;
  v100 = (*(v98 + 8))(v67, v186, v97, v98);
  if (v99)
  {

    sub_1C4F00168();
    v102 = v99;
    v103 = sub_1C4F00968();
    v104 = sub_1C4F01CD8();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v105 = 138412290;
      v107 = v99;
      v108 = _swift_stdlib_bridgeErrorToNSError();
      *(v105 + 4) = v108;
      *v106 = v108;
      _os_log_impl(&dword_1C43F8000, v103, v104, "GlobalKnowledgeStore error while querying global kg API: %@", v105, 0xCu);
      sub_1C4420C3C(v106, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FFB20(&v202);
    v109(v12, v187);
    swift_getErrorValue();
    v110 = sub_1C4F02A38();
    v112 = v111;
    sub_1C4830F9C();
    swift_allocError();
    *v113 = v110;
    *(v113 + 8) = v112;
    *(v113 + 16) = 0;
    swift_willThrow();

    v53 = v184;
    goto LABEL_10;
  }

  LODWORD(v189) = v101;
  v115 = v67;
  v116 = v192;
  v117 = *(v192 + 16);
  *(v192 + 16) = v100;

  v118 = swift_allocObject();
  v119 = *(v116 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v188 = v115;
  sub_1C492BFFC();
  v121 = v120;

  *(v118 + 16) = v121;
  sub_1C4EF9CC8();
  sub_1C4EF9C58();
  v123 = v122;
  sub_1C43FFB20(&v203);
  v124(v52, v177);
  v125 = *(v116 + 16);
  v126 = *(v118 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v127 = v178;
  sub_1C4EFF3A8();
  sub_1C48331B4(v125, v126, v127, v123);
  v129 = v128;
  v131 = v130;

  sub_1C43FFB20(&v204);
  v132(v127, v180);
  v133 = *(v116 + 16);
  *(v116 + 16) = v129;

  v134 = *(v118 + 16);
  v186 = v118;
  *(v118 + 16) = v131;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4597D1C();
  v135 = *(v116 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4597D1C();
  sub_1C465ECF0();
  v12 = sub_1C482FF48(v136, sub_1C497ECF8, type metadata accessor for LiveGlobalKnowledgeTriple, sub_1C4619D14);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C483484C(v12);
    v12 = v162;
  }

  v137 = v182;
  v138 = *(v12 + 16);
  aBlock = (v12 + ((*(v181 + 80) + 32) & ~*(v181 + 80)));
  v195 = v138;
  sub_1C483496C(&aBlock);

  v139 = v188;
  if (v137)
  {
    if (!*(*(v192 + 16) + 16))
    {
      if ((*(v131 + 16) == 0) | v189 & 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ((v189 & 1) == 0)
    {
LABEL_16:
      sub_1C4665684();
      v140 = v169;
      sub_1C4F00D78();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1C4834AA8(&qword_1EDDF0418, MEMORY[0x1E69E8030]);
      sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
      v185 = v12;
      sub_1C4401CBC(&qword_1EDDF0608, &qword_1EC0B8498, &qword_1C4F0CD40);
      sub_1C4F020C8();
      (*(v167 + 104))(v166, *MEMORY[0x1E69E8090], v168);
      v141 = sub_1C4F01DC8();
      v142 = swift_allocObject();
      v143 = v192;
      v142[2] = v190;
      v142[3] = v143;
      v142[4] = v186;
      v198 = sub_1C4834A9C;
      v199 = v142;
      aBlock = MEMORY[0x1E69E9820];
      v195 = 1107296256;
      v196 = sub_1C4833DD0;
      v197 = &unk_1F43EE108;
      v144 = _Block_copy(&aBlock);

      sub_1C4F00D78();
      v193 = MEMORY[0x1E69E7CC0];
      sub_1C4834AA8(&qword_1EDDFCF08, MEMORY[0x1E69E7F60]);
      sub_1C456902C(&qword_1EC0BC9C0, &qword_1C4F29B30);
      sub_1C4401CBC(&qword_1EDDFCED8, &qword_1EC0BC9C0, &qword_1C4F29B30);
      v145 = v172;
      v139 = v188;
      v146 = v174;
      sub_1C4F020C8();
      MEMORY[0x1C6940AA0](0, v140, v145, v144);
      _Block_release(v144);

      sub_1C43FFB20(&v201);
      v147 = v145;
      v12 = v185;
      v148(v147, v146);
      sub_1C43FFB20(&v200);
      v149(v140, v171);
    }
  }

LABEL_17:
  sub_1C4F00168();
  v150 = sub_1C4F00968();
  v151 = sub_1C4F01CC8();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    aBlock = v153;
    *v152 = 136315138;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    Array<A>.toIdString.getter();
    v155 = v154;
    v156 = v12;
    v158 = v157;

    v159 = sub_1C441D828(v155, v158, &aBlock);
    v12 = v156;

    *(v152 + 4) = v159;
    _os_log_impl(&dword_1C43F8000, v150, v151, "GlobalKnowledgeStore results: %s", v152, 0xCu);
    sub_1C440962C(v153);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C43FFB20(&v202);
  v160(v183, v187);
  (*(v191 + 8))(v139, v184);

  return v12;
}

unint64_t sub_1C4830F9C()
{
  result = qword_1EC0BDD88;
  if (!qword_1EC0BDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDD88);
  }

  return result;
}

uint64_t sub_1C4830FF0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  v5[2] = a1;
  v5[3] = a2;

  sub_1C49A54B0(sub_1C4834D04, v5);
}

uint64_t GlobalKnowledgeStore.__allocating_init<A>(config:liveApi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  GlobalKnowledgeStore.init<A>(config:liveApi:)(a1, a2, a3, a4);
  return v11;
}

void *sub_1C48310D0(uint64_t a1)
{
  v4 = *v1;
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C4834AF0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config);
  if (qword_1EDDFEE20 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4ABF8B0();
  if (v2)
  {
    sub_1C4453E44(a1, type metadata accessor for Configuration);
    sub_1C4453E44(v1 + v5, type metadata accessor for Configuration);
    v7 = *(*v1 + 48);
    v8 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = v6;
    v11 = &type metadata for LiveGlobalKnowledgeApi;
    v12 = &protocol witness table for LiveGlobalKnowledgeApi;
    sub_1C4453E44(a1, type metadata accessor for Configuration);
    sub_1C441D670(&v10, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi);
  }

  return v1;
}

void *GlobalKnowledgeStore.init<A>(config:liveApi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C440ABF4();
  sub_1C4834AF0(v12, v4 + v11);
  if (qword_1EDDFEE20 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4ABF8B0();
  if (v5)
  {
    (*(*(a3 - 8) + 8))(a2, a3);
    sub_1C4453E44(a1, type metadata accessor for Configuration);
    sub_1C4453E44(v4 + v11, type metadata accessor for Configuration);
    v14 = *(*v4 + 48);
    v15 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = v13;
    v20 = a3;
    v21 = a4;
    v16 = sub_1C4422F90(&v19);
    (*(*(a3 - 8) + 32))(v16, a2, a3);
    sub_1C442CB18();
    sub_1C4453E44(a1, v17);
    sub_1C441D670(&v19, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi);
  }

  return v4;
}

BOOL static GlobalKnowledgeStore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  v3 = a2 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  if ((sub_1C4EF98B8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Configuration() + 20);
  v6 = *(v2 + v4);
  v5 = *(v2 + v4 + 8);
  v7 = (v3 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t GlobalKnowledgeStore.hash(into:)()
{
  v1 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C4EF98F8();
  sub_1C4411D8C();
  sub_1C4834AA8(v2, v3);
  sub_1C4F00FE8();
  v4 = (v1 + *(type metadata accessor for Configuration() + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  return MEMORY[0x1C69417F0](v5);
}

uint64_t GlobalKnowledgeStore.deinit()
{
  v1 = *(v0 + 16);

  sub_1C442CB18();
  sub_1C4453E44(v0 + v2, v3);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_liveApi));
  return v0;
}

uint64_t GlobalKnowledgeStore.__deallocating_deinit()
{
  GlobalKnowledgeStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t GlobalKnowledgeStore.hashValue.getter()
{
  sub_1C4F02AF8();
  v1 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C4EF98F8();
  sub_1C4411D8C();
  sub_1C4834AA8(v2, v3);
  sub_1C4F00FE8();
  v4 = (v1 + *(type metadata accessor for Configuration() + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  MEMORY[0x1C69417F0](v5);
  return sub_1C4F02B68();
}

void sub_1C4831690()
{
  v30 = type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus(0);
  v1 = sub_1C43FCDF8(v30);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = (v7 - v6);
  v9 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);

  v10 = sub_1C49A5598(sub_1C4832104, 0);

  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  v12 = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001C4FA2C20;
  v13 = *(v10 + 16);
  if (v13)
  {
    v26 = inited;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C459E5F0();
    v14 = 0;
    v15 = v33;
    v27 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v29 = v10;
    v28 = v3;
    while (v14 < *(v10 + 16))
    {
      sub_1C4834AF0(v27 + *(v3 + 72) * v14, v8);
      sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_1C4F0CE60;
      *(v16 + 32) = 0x73656C70697274;
      *(v16 + 40) = 0xE700000000000000;
      v31 = *(v8 + *(v30 + 20));
      *(v16 + 48) = sub_1C4F02858();
      *(v16 + 56) = v17;
      *(v16 + 64) = 0x6E6F6973726576;
      *(v16 + 72) = 0xE700000000000000;
      v32 = v8[4];
      *(v16 + 80) = sub_1C4F02858();
      *(v16 + 88) = v18;
      v19 = sub_1C4F00F28();
      v21 = v8[2];
      v20 = v8[3];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4453E44(v8, type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus);
      v23 = *(v33 + 16);
      v22 = *(v33 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C43FCFE8(v22);
        sub_1C459E5F0();
      }

      ++v14;
      *(v33 + 16) = v23 + 1;
      v24 = (v33 + 24 * v23);
      v24[4] = v21;
      v24[5] = v20;
      v24[6] = v19;
      v3 = v28;
      v10 = v29;
      if (v13 == v14)
      {

        v12 = v26;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v25 = sub_1C4BA044C(v15);
    *(v12 + 72) = sub_1C456902C(&qword_1EC0BDD98, &qword_1C4F32040);
    *(v12 + 48) = v25;
    sub_1C4F00F28();
  }
}

uint64_t sub_1C4831A88()
{
  v1 = *v0;
  sub_1C4F02AF8();
  v2 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore20GlobalKnowledgeStore_config;
  sub_1C4EF98F8();
  sub_1C4834AA8(&qword_1EDDFFA00, MEMORY[0x1E6968FB0]);
  sub_1C4F00FE8();
  v3 = (v2 + *(type metadata accessor for Configuration() + 20));
  v4 = v3[1];
  MEMORY[0x1C69417F0](*v3);
  MEMORY[0x1C69417F0](v4);
  return sub_1C4F02B68();
}

uint64_t sub_1C4831B44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C46BC360();
  *a1 = result;
  return result;
}

uint64_t sub_1C4831B70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4373656C70697274 && a2 == 0xEC000000746E756FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4831C3C(char a1)
{
  if (a1)
  {
    return 0x4373656C70697274;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1C4831C7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C456902C(&qword_1EC0BDDD8, &qword_1C4F32100);
  v22 = *(v25 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v22 - v8;
  v10 = type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4836068();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v15 = v13;
  v16 = v22;
  v17 = v23;
  v27 = 0;
  sub_1C4834AA8(&qword_1EDDFAA78, type metadata accessor for StaticKnowledgeAssetMetadata);
  sub_1C4F026C8();
  v18 = v15;
  sub_1C48360BC(v24, v15);
  v26 = 1;
  v19 = v25;
  v20 = sub_1C4F026B8();
  (*(v16 + 8))(v9, v19);
  *(v18 + *(v10 + 20)) = v20;
  sub_1C4834AF0(v18, v17);
  sub_1C440962C(a1);
  return sub_1C4453E44(v18, type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus);
}

uint64_t sub_1C4831FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4831B70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4831FE0(uint64_t a1)
{
  v2 = sub_1C4836068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C483201C(uint64_t a1)
{
  v2 = sub_1C4836068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4832070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4834AA8(&qword_1EDDE44E8, type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4832104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v20[0] = a2;
  v21 = sub_1C456902C(&qword_1EC0BDDA0, &qword_1C4F32048);
  v2 = *(v21 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v6 = v20 - v5;
  v7 = sub_1C456902C(&qword_1EC0BDCC0, &unk_1C4F32020);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v20[1] = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  sub_1C456902C(&qword_1EC0BDDA8, &qword_1C4F32050);
  v11 = *(v2 + 72);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDDFB30 != -1)
  {
    swift_once();
  }

  v14 = sub_1C456902C(&qword_1EC0BDDB0, &qword_1C4F32058);
  sub_1C442B738(v14, qword_1EDE2CA20);
  sub_1C4401CBC(&qword_1EDDF0130, &qword_1EC0BDDB0, &qword_1C4F32058);
  sub_1C4EFB698();
  v15 = v21;
  sub_1C4EFB838();
  (*(v3 + 8))(v6, v15);
  sub_1C4834AA8(&qword_1EDDFAA88, type metadata accessor for StaticKnowledgeAssetMetadata);
  MEMORY[0x1C6939B50](v13);

  type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus(0);
  sub_1C4834AA8(&qword_1EDDE44F0, type metadata accessor for GlobalKnowledgeStore.StaticKnowledgeAssetStatus);
  sub_1C4401CBC(&qword_1EDDFCCF8, &qword_1EC0BDCC0, &unk_1C4F32020);
  v16 = v23;
  v17 = v25;
  v18 = sub_1C4EFB3F8();
  result = (*(v22 + 8))(v10, v16);
  if (!v17)
  {
    *v20[0] = v18;
  }

  return result;
}

uint64_t GlobalKnowledgeStore.liveGKSCacheSize.getter()
{
  v1 = v0;
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C4425BD8();
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CC8();
  if (sub_1C4433458(v7))
  {
    *sub_1C43FCED0() = 0;
    sub_1C44172A0(&dword_1C43F8000, v8, v9, "GlobalKnowledgeStore: Fetching Live GKS cache size");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v10 = sub_1C440F730();
  v12 = v11(v10);
  v15 = MEMORY[0x1E69E7CC0];
  v13 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4410D4C();
  sub_1C4465390(sub_1C4834B4C, v1);

  return v15;
}

void sub_1C4832604(uint64_t a1, uint64_t *a2)
{
  sub_1C4F02248();

  sub_1C4835EB4();
  sub_1C4EFADD8();
  if (!v2)
  {
    v4 = sub_1C4F02858();
    MEMORY[0x1C6940010](v4);

    sub_1C4588BAC();
    v5 = *(*a2 + 16);
    sub_1C45897E8();
    v6 = *a2;
    *(v6 + 16) = v5 + 1;
    v7 = v6 + 16 * v5;
    *(v7 + 32) = 0xD000000000000028;
    *(v7 + 40) = 0x80000001C4FA2C60;
    sub_1C4F02248();

    type metadata accessor for LiveGlobalKnowledgeTriple();
    sub_1C4834AA8(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple);
    sub_1C4EFADD8();
    v8 = sub_1C4F02858();
    MEMORY[0x1C6940010](v8);

    sub_1C4588BAC();
    v9 = *(*a2 + 16);
    sub_1C45897E8();
    v10 = *a2;
    *(v10 + 16) = v9 + 1;
    v11 = v10 + 16 * v9;
    *(v11 + 32) = 0xD000000000000020;
    *(v11 + 40) = 0x80000001C4FA2C90;
  }
}

uint64_t GlobalKnowledgeStore.liveGKSCacheContents.getter()
{
  v1 = v0;
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C4425BD8();
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CC8();
  if (sub_1C4433458(v7))
  {
    *sub_1C43FCED0() = 0;
    sub_1C44172A0(&dword_1C43F8000, v8, v9, "GlobalKnowledgeStore: Fetching Live GKS cache contents");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v10 = sub_1C440F730();
  v11(v10);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v14 = sub_1C4F00F28();
  v12 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4410D4C();
  sub_1C4465390(sub_1C4834B68, v1);

  return v14;
}

uint64_t sub_1C483298C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4834AA8(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple);
  sub_1C4834AA8(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple);
  result = sub_1C4EFB388();
  if (!v2)
  {
    v77 = *(result + 16);
    v78 = a2;
    if (v77)
    {
      v72 = a1;
      v73 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *(v7 + 80);
      v75 = v7;
      v76 = result + ((v14 + 32) & ~v14);
      v74 = result;
      while (v13 < *(result + 16))
      {
        sub_1C4834AF0(v76 + *(v7 + 72) * v13, v10);
        v15 = LiveGlobalKnowledgeTriple.description.getter();
        v17 = v16;
        sub_1C4453E44(v10, type metadata accessor for LiveGlobalKnowledgeTriple);
        sub_1C44239FC(v12);
        v18 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        v84 = *a2;
        v19 = v84;
        *a2 = 0x8000000000000000;
        v20 = sub_1C445FAA8(0x6172675F6576696CLL, 0xEA00000000006870);
        if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
        {
          goto LABEL_36;
        }

        v22 = v20;
        v23 = v21;
        sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
        v24 = sub_1C4F02458();
        v25 = v84;
        if (v24)
        {
          v26 = sub_1C445FAA8(0x6172675F6576696CLL, 0xEA00000000006870);
          a2 = v78;
          if ((v23 & 1) != (v27 & 1))
          {
            goto LABEL_40;
          }

          v22 = v26;
        }

        else
        {
          a2 = v78;
        }

        v28 = *a2;
        *a2 = v25;

        v29 = *a2;
        if ((v23 & 1) == 0)
        {
          sub_1C44686DC(v22, 0x6172675F6576696CLL, 0xEA00000000006870, MEMORY[0x1E69E7CC0], *a2);
        }

        ++v13;
        v30 = *(v29 + 56) + 8 * v22;
        sub_1C4588BAC();
        v31 = *(*v30 + 16);
        sub_1C45897E8();
        v32 = *v30;
        *(v32 + 16) = v31 + 1;
        v33 = v32 + 16 * v31;
        *(v33 + 32) = v15;
        *(v33 + 40) = v17;
        v12 = sub_1C48362FC;
        result = v74;
        v7 = v75;
        if (v77 == v13)
        {

          v34 = sub_1C48362FC;
          v3 = v73;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {

      v34 = 0;
LABEL_15:
      sub_1C4835F08();
      sub_1C4835EB4();
      v35 = sub_1C4EFB388();
      if (v3)
      {
        return sub_1C44239FC(v34);
      }

      v72 = v34;
      v73 = 0;
      v76 = *(v35 + 16);
      v36 = 0;
      if (!v76)
      {
LABEL_33:

        sub_1C44239FC(v72);
        return sub_1C44239FC(v36);
      }

      v37 = 0;
      v38 = 0x80000001C4FA2C40;
      v39 = (v35 + 64);
      v74 = v35;
      v75 = 0x80000001C4FA2C40;
      while (v37 < *(v35 + 16))
      {
        v40 = *(v39 - 3);
        v41 = *(v39 - 2);
        v42 = *(v39 - 1);
        v43 = *v39;
        v79 = *(v39 - 4);
        v80 = v40;
        v81 = v41;
        v82 = v42;
        v83 = v43;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v44 = sub_1C492BEEC();
        v77 = v45;

        sub_1C44239FC(v36);
        v46 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        v84 = *a2;
        v47 = v84;
        *a2 = 0x8000000000000000;
        v48 = sub_1C445FAA8(0xD000000000000012, v38);
        if (__OFADD__(*(v47 + 16), (v49 & 1) == 0))
        {
          goto LABEL_38;
        }

        v50 = v48;
        v51 = v49;
        sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
        v52 = sub_1C4F02458();
        v53 = v84;
        if (v52)
        {
          v54 = sub_1C445FAA8(0xD000000000000012, v38);
          v56 = v78;
          if ((v51 & 1) != (v55 & 1))
          {
            goto LABEL_40;
          }

          v50 = v54;
        }

        else
        {
          v56 = v78;
        }

        v57 = *v56;
        *v56 = v53;

        v58 = *v56;
        v38 = v75;
        if ((v51 & 1) == 0)
        {
          v58[(v50 >> 6) + 8] |= 1 << v50;
          v59 = (v58[6] + 16 * v50);
          *v59 = 0xD000000000000012;
          v59[1] = v38;
          *(v58[7] + 8 * v50) = MEMORY[0x1E69E7CC0];
          v60 = v58[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_39;
          }

          v58[2] = v62;
        }

        v63 = v58[7];
        v64 = *(v63 + 8 * v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v63 + 8 * v50) = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = *(v64 + 16);
          sub_1C443D664();
          v64 = v70;
          *(v63 + 8 * v50) = v70;
        }

        v66 = *(v64 + 16);
        if (v66 >= *(v64 + 24) >> 1)
        {
          sub_1C443D664();
          v64 = v71;
          *(v63 + 8 * v50) = v71;
        }

        ++v37;
        *(v64 + 16) = v66 + 1;
        v67 = v64 + 16 * v66;
        v68 = v77;
        a2 = v78;
        *(v67 + 32) = v44;
        *(v67 + 40) = v68;
        v39 += 5;
        v36 = sub_1C48362FC;
        v35 = v74;
        if (v76 == v37)
        {
          goto LABEL_33;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_1C4F029F8();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall GlobalKnowledgeStore.liveGKSEraseCache()()
{
  v1 = sub_1C4F00978();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C4425BD8();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();
  if (sub_1C4433458(v6))
  {
    *sub_1C43FCED0() = 0;
    sub_1C44172A0(&dword_1C43F8000, v7, v8, "GlobalKnowledgeStore: Erasing live GKS cache");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v9 = sub_1C440F730();
  v10(v9);
  v11 = *(*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);

  sub_1C446C37C(sub_1C4833104, 0);
}

uint64_t sub_1C4833104()
{
  type metadata accessor for LiveGlobalKnowledgeTriple();
  sub_1C4834AA8(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple);
  result = sub_1C4EFAE88();
  if (!v0)
  {
    sub_1C4835EB4();
    return sub_1C4EFAE88();
  }

  return result;
}

void sub_1C48331B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v102 = a2;
  v109 = a1;
  v6 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v7 = sub_1C43FCDF8(v6);
  v105 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v111 = v11 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v101 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v101 - v17;
  v19 = sub_1C4F00978();
  v20 = sub_1C43FCDF8(v19);
  v106 = v21;
  v107 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = sub_1C4EFF458();
  v28 = sub_1C43FCDF8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v101 - v37;
  v39 = *(v30 + 16);
  v110 = a3;
  v108 = v39;
  v39(v101 - v37, a3, v27);
  v40 = (*(v30 + 88))(v38, v27);
  if (v40 == *MEMORY[0x1E69A9900])
  {
    v41 = 1800.0;
    v42 = v109;
  }

  else
  {
    v42 = v109;
    if (v40 == *MEMORY[0x1E69A98F0])
    {
      v41 = 86400.0;
    }

    else
    {
      v41 = 0.0;
      if (v40 != *MEMORY[0x1E69A98F8])
      {
        sub_1C4F00168();
        v104 = sub_1C4F00968();
        LODWORD(v103) = sub_1C4F01CD8();
        if (os_log_type_enabled(v104, v103))
        {
          v43 = sub_1C43FCED0();
          v101[1] = v43;
          *v43 = 0;
          _os_log_impl(&dword_1C43F8000, v104, v103, "Request is from unknown client. Server response will not be cached", v43, 2u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        (*(v106 + 8))(v26, v107);
        (*(v30 + 8))(v38, v27);
      }
    }
  }

  v108(v35, v110, v27);
  sub_1C49E3938(v35, &v112);
  v44 = *(v42 + 16);
  if (v44)
  {
    sub_1C43FF0DC();
    if (!(v47 ^ v48 | v46))
    {
      goto LABEL_47;
    }

    v49 = *(v45 + 3168);
    if (a4 <= v49)
    {
LABEL_48:
      __break(1u);
    }

    else if (a4 < 9.22337204e18)
    {
      LODWORD(v108) = v113;
      v107 = a4;
      v106 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v50 = v42 + v106;
      v51 = *(v105 + 72);
      v104 = v112;
      v105 = v51;
      v52 = v41 + a4;
      v103 = (v41 + a4);
      v53 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4413214();
        sub_1C4834AF0(v50, v18);
        v54 = *&v18[v6[11]];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((v108 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = *(v54 + 16);
            sub_1C43FCEC0();
            sub_1C458BBB8();
            v54 = v84;
          }

          v56 = *(v54 + 16);
          v55 = *(v54 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_1C43FCFE8(v55);
            sub_1C458BBB8();
            v54 = v85;
          }

          *(v54 + 16) = v56 + 1;
          *(v54 + 8 * v56 + 32) = v104;
        }

        if (*&v18[v6[9]])
        {
          v57 = *&v18[v6[10]];
        }

        else
        {
          sub_1C43FF0DC();
          if (!(v47 ^ v48 | v46))
          {
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (v52 <= v49)
          {
            goto LABEL_45;
          }

          v57 = v103;
          if (v52 >= 9.22337204e18)
          {
            goto LABEL_46;
          }
        }

        v109 = v50;
        v110 = v44;
        v58 = sub_1C4EFF0C8();
        sub_1C43FBCE0(v58);
        (*(v59 + 16))(v16, v18);
        v60 = v6[5];
        v61 = sub_1C4EFEEF8();
        v62 = v53;
        v63 = *(*(v61 - 8) + 16);
        v63(&v16[v60], &v18[v60], v61);
        v64 = v6[6];
        v65 = sub_1C4EFF8A8();
        sub_1C43FBCE0(v65);
        (*(v66 + 16))(&v16[v64], &v18[v64]);
        v63(&v16[v6[7]], &v18[v6[7]], v61);
        v53 = v62;
        v67 = v6[8];
        v68 = *&v18[v67];
        v69 = *&v18[v67 + 8];
        v70 = &v16[v67];
        *v70 = v68;
        *(v70 + 1) = v69;
        *&v16[v6[9]] = v57;
        *&v16[v6[10]] = v107;
        *&v16[v6[11]] = v54;
        sub_1C4413214();
        sub_1C4834AF0(v16, v111);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = *(v62 + 16);
          v77 = sub_1C43FCEC0();
          sub_1C458BB48(v77, v78, v79, v62);
          v53 = v80;
        }

        v72 = v109;
        v71 = v110;
        v74 = *(v53 + 16);
        v73 = *(v53 + 24);
        if (v74 >= v73 >> 1)
        {
          v81 = sub_1C43FCFE8(v73);
          sub_1C458BB48(v81, v74 + 1, 1, v53);
          v53 = v82;
        }

        sub_1C4453E44(v16, type metadata accessor for LiveGlobalKnowledgeTriple);
        sub_1C4453E44(v18, type metadata accessor for LiveGlobalKnowledgeTriple);
        *(v53 + 16) = v74 + 1;
        v75 = v105;
        sub_1C48360BC(v111, v53 + v106 + v74 * v105);
        v50 = v72 + v75;
        v44 = v71 - 1;
        if (!v44)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  v86 = *(v102 + 16);
  if (v86)
  {
    sub_1C43FF0DC();
    if (!(v47 ^ v48 | v46))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v88 <= -9.22337204e18)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v88 >= 9.22337204e18)
    {
LABEL_52:
      __break(1u);
      return;
    }

    v111 = v88;
    v89 = (v87 + 56);
    v90 = MEMORY[0x1E69E7CC0];
    do
    {
      v92 = *(v89 - 3);
      v91 = *(v89 - 2);
      v94 = *(v89 - 1);
      v93 = *v89;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = *(v90 + 16);
        sub_1C43FCEC0();
        sub_1C458BB88();
        v90 = v99;
      }

      v96 = *(v90 + 16);
      v95 = *(v90 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1C43FCFE8(v95);
        sub_1C458BB88();
        v90 = v100;
      }

      *(v90 + 16) = v96 + 1;
      v97 = (v90 + 40 * v96);
      v97[4] = v92;
      v97[5] = v91;
      v97[6] = v94;
      v97[7] = v93;
      v97[8] = v111;
      v89 += 5;
      --v86;
    }

    while (v86);
  }
}

uint64_t sub_1C483395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  swift_beginAccess();
  v6 = *(a3 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C48339F4(v5, v6);
}

uint64_t sub_1C48339F4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  sub_1C4F00168();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CC8();
  v14 = os_log_type_enabled(v12, v13);
  v40 = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v15 = 134218242;
    *(v15 + 4) = a1[2];

    *(v15 + 12) = 2080;
    v16 = type metadata accessor for LiveGlobalKnowledgeTriple();
    v17 = MEMORY[0x1C6940380](a1, v16);
    v19 = v9;
    v20 = a1;
    v21 = a2;
    v22 = v5;
    v23 = sub_1C441D828(v17, v18, &v42);

    *(v15 + 14) = v23;
    v5 = v22;
    a2 = v21;
    a1 = v20;
    v9 = v19;
    _os_log_impl(&dword_1C43F8000, v12, v13, "Storing %ld triples in LiveGlobalKnowledgeGraph cache: %s", v15, 0x16u);
    v24 = v39;
    sub_1C440962C(v39);
    v25 = v24;
    v4 = v40;
    MEMORY[0x1C6942830](v25, -1, -1);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  else
  {
  }

  v26 = *(v5 + 8);
  v26(v11, v4);
  sub_1C4F00168();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CC8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 134218242;
    *(v29 + 4) = a2[2];

    *(v29 + 12) = 2080;
    v31 = MEMORY[0x1C6940380](a2, &type metadata for IDSearchNoResultRecord);
    v39 = a2;
    v33 = sub_1C441D828(v31, v32, &v42);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_1C43F8000, v27, v28, "Storing %ld NoResultRecords in LiveGlobalKnowledgeGraph cache: %s", v29, 0x16u);
    sub_1C440962C(v30);
    MEMORY[0x1C6942830](v30, -1, -1);
    MEMORY[0x1C6942830](v29, -1, -1);

    a2 = v39;
    v34 = v40;
    v35 = v9;
  }

  else
  {

    v35 = v9;
    v34 = v4;
  }

  v36 = (v26)(v35, v34);
  v37 = *(*(v41 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore23GlobalKnowledgeDatabase_pool);
  MEMORY[0x1EEE9AC00](v36);
  *(&v39 - 2) = a1;
  *(&v39 - 1) = a2;

  sub_1C446C37C(sub_1C4835F5C, (&v39 - 4));
}